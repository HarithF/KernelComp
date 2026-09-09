#!/usr/bin/env python3
"""
gen_random_data.py

Scan a directory tree for model variant folders like:

    01_MLP/
    ├── mim_llvm/
    │   └── MLP_mim.ll
    ├── mim_mlir_llvm/
    ├── mlir_llvm/
    └── mlir_mim_llvm/

For every `mim_llvm/<Name>_mim.ll` found, parse the LLVM function signature
to figure out the shapes of every argument and the return value, decide
which argument is the "input" tensor (the one whose leading dimension
matches the batch size of the return value) and treat every other argument
as a "weight" tensor (this also naturally covers bias vectors).

Then write two random binary files into the *parent* directory of
`mim_llvm` (i.e. the model root, `01_MLP/`, NOT the `mim_llvm/` subdir):

    01_MLP/MLP_weights.bin   <- all non-input params, concatenated in
                                 signature order, as raw float32
    01_MLP/MLP_input.bin     <- the input tensor, as raw float32

Usage:
    python gen_random_data.py /path/to/models_root
    python gen_random_data.py /path/to/models_root --seed 42
    python gen_random_data.py /path/to/models_root --dry-run
    python gen_random_data.py /path/to/models_root --force
"""

import argparse
import os
import re
import sys
import zlib

import numpy as np

import param_manifest

# ---------------------------------------------------------------------------
# LLVM type parsing
# ---------------------------------------------------------------------------

# Maps LLVM base type names -> (numpy dtype, size in bytes)
TYPE_SIZES = {
    "float": (np.float32, 4),
    "double": (np.float64, 8),
    "half": (np.float16, 2),
    "i8": (np.int8, 1),
    "i16": (np.int16, 2),
    "i32": (np.int32, 4),
    "i64": (np.int64, 8),
}

# Matches: define <ret_type> @<Name>(<args>) {
DEFINE_RE = re.compile(
    r"define\s+.*?@(?P<name>[A-Za-z_][\w.]*)\s*\((?P<args>.*?)\)\s*\{",
    re.DOTALL,
)

# Type qualifiers / parameter attributes that can decorate a type but carry no
# shape information, e.g. '[128 x [8192 x float]] addrspace(0)* nonnull'.
QUALIFIER_RE = re.compile(
    r"\s*\b(?:addrspace|dereferenceable(?:_or_null)?|align)\s*\(?\s*\d+\s*\)?"
)
BARE_ATTRS = ("nonnull", "noalias", "nocapture", "readonly", "writeonly", "readnone")


def clean_type(type_str):
    """Reduce an LLVM type string to its bare (possibly array) type.

    Strips pointer '*'s, `addrspace(N)` / `align N` / `dereferenceable(N)`
    qualifiers and bare parameter attributes, in any order:
        '[128 x [8192 x float]] addrspace(0)*' -> '[128 x [8192 x float]]'
    """
    s = type_str.strip()
    prev = None
    while prev != s:
        prev = s
        s = QUALIFIER_RE.sub("", s).strip()
        s = s.rstrip("*").strip()
        for attr in BARE_ATTRS:
            if s.endswith(attr):
                s = s[: -len(attr)].strip()
    return s


def split_top_level(s, sep=","):
    """Split a string on `sep`, but only at bracket-depth 0."""
    parts = []
    depth = 0
    cur = []
    for ch in s:
        if ch in "[(":
            depth += 1
        elif ch in "])":
            depth -= 1
        if ch == sep and depth == 0:
            parts.append("".join(cur))
            cur = []
        else:
            cur.append(ch)
    if cur:
        parts.append("".join(cur))
    return [p.strip() for p in parts if p.strip()]


def parse_array_type(type_str):
    """Parse an LLVM (possibly nested) array type string, e.g.
    '[128 x [16384 x float]]' -> ([128, 16384], 'float').

    A plain scalar type like 'float' -> ([], 'float').
    """
    s = type_str.strip()
    if s.startswith("["):
        if not s.endswith("]"):
            raise ValueError(f"Malformed array type: {type_str!r}")
        inner = s[1:-1].strip()
        depth = 0
        split_at = None
        i = 0
        while i < len(inner):
            c = inner[i]
            if c == "[":
                depth += 1
            elif c == "]":
                depth -= 1
            elif depth == 0 and inner[i : i + 3] == " x ":
                split_at = i
                break
            i += 1
        if split_at is None:
            raise ValueError(f"Could not find ' x ' separator in: {type_str!r}")
        n = int(inner[:split_at].strip())
        rest = inner[split_at + 3 :].strip()
        dims, base = parse_array_type(rest)
        return [n] + dims, base
    else:
        return [], s


def parse_param(param_str):
    """Parse a single function parameter, e.g.
    '[16384 x [16384 x float]]* %_96446' -> (dims, base_type, ssa_name).
    Handles params with or without a trailing '%name'.
    """
    s = param_str.strip()
    m = re.match(r"^(.*?)\s+%(\S+)$", s)
    type_part = m.group(1).strip() if m else s
    ssa_name = m.group(2) if m else None
    type_part = clean_type(type_part)
    dims, base = parse_array_type(type_part)
    return dims, base, ssa_name


def parse_signature(ll_text, filename_hint=None):
    m = DEFINE_RE.search(ll_text)
    if not m:
        raise ValueError(
            f"Could not find a `define ... @Name(...)` line"
            + (f" in {filename_hint}" if filename_hint else "")
        )
    name = m.group("name")
    args_str = m.group("args")

    ret_m = re.search(
        r"define\s+(.*?)\s+@" + re.escape(name) + r"\s*\(", ll_text, re.DOTALL
    )
    ret_type_str = clean_type(ret_m.group(1))
    ret_dims, ret_base = parse_array_type(ret_type_str)

    params = []
    for p in split_top_level(args_str):
        dims, base, ssa_name = parse_param(p)
        params.append(
            {
                "dims": dims,
                "base": base,
                "raw": p,
                "ssa_name": ssa_name,
                "canonical": param_manifest.demangle_mim_name(ssa_name),
            }
        )

    return {
        "name": name,
        "return_dims": ret_dims,
        "return_base": ret_base,
        "params": params,
    }


# ---------------------------------------------------------------------------
# Input/weight classification
# ---------------------------------------------------------------------------


def total_elems(dims):
    n = 1
    for d in dims:
        n *= d
    return n


def drop_weight_bias_pairs(params, candidates):
    """Remove candidates that are provably a Linear/Conv WEIGHT, not the input.

    A multi-dimensional parameter immediately followed by a 1-D parameter
    whose length equals the multi-dim one's leading dimension is a
    (weight, bias) pair. The model input is never followed by its own bias,
    so any parameter in that shape can be ruled out.
    """
    kept = []
    for i in candidates:
        nxt = params[i + 1] if i + 1 < len(params) else None
        is_weight_of_pair = (
            len(params[i]["dims"]) > 1
            and nxt is not None
            and len(nxt["dims"]) == 1
            and nxt["dims"][0] == params[i]["dims"][0]
        )
        if not is_weight_of_pair:
            kept.append(i)
    return kept or candidates


def identify_input_index(sig):
    """Return the index into sig['params'] that best represents the model's
    input tensor.

    First choice is the argument mim named after a `forward()` parameter
    (`l_x_`) rather than after module state (`l_self_...`) -- see
    param_manifest.is_mim_forward_arg. That is exact, and it is what the
    manifest then records so gen_drivers.py and reporter.py never have to
    re-run this guess at all.
    """
    params = sig["params"]

    by_name = [
        i
        for i, p in enumerate(params)
        if param_manifest.is_mim_forward_arg(p.get("ssa_name"))
    ]
    if by_name:
        return max(by_name, key=lambda i: total_elems(params[i]["dims"]))

    batch = sig["return_dims"][0] if sig["return_dims"] else None

    candidates = [
        i
        for i, p in enumerate(params)
        if p["dims"]
        and batch is not None
        and p["dims"][0] == batch
        and len(p["dims"]) > 1
    ]
    if not candidates:
        # Fall back: any param whose leading dim matches batch, at all.
        candidates = [
            i
            for i, p in enumerate(params)
            if p["dims"] and batch is not None and p["dims"][0] == batch
        ]
    if not candidates:
        # Last resort: assume the largest tensor is the input.
        candidates = list(range(len(params)))

    candidates = drop_weight_bias_pairs(params, candidates)

    return max(candidates, key=lambda i: total_elems(params[i]["dims"]))


# ---------------------------------------------------------------------------
# Random data generation
# ---------------------------------------------------------------------------


def dtype_for(base):
    if base not in TYPE_SIZES:
        raise ValueError(f"Unsupported/unrecognized base type: {base!r}")
    return TYPE_SIZES[base][0]


def gen_input_array(dims, base, rng):
    """The model input: standard normal, i.e. already unit-variance, which is
    what the weight initialization in param_manifest.init_array assumes when
    it keeps activations O(1) through the stack."""
    dtype = dtype_for(base)
    n = total_elems(dims)
    if np.issubdtype(dtype, np.floating):
        arr = rng.standard_normal(n).astype(dtype)
    else:
        info = np.iinfo(dtype)
        lo, hi = max(info.min, -128), min(info.max, 127)
        arr = rng.integers(low=lo, high=hi + 1, size=n, dtype=dtype)
    return arr


# ---------------------------------------------------------------------------
# Main driver
# ---------------------------------------------------------------------------


def find_mim_llvm_ll_files(root):
    """Yield (ll_path, model_root_dir) for every .ll file found inside a
    directory named 'mim_llvm' anywhere under root."""
    for dirpath, dirnames, filenames in os.walk(root):
        if os.path.basename(dirpath) == "mim_llvm":
            model_root = os.path.dirname(dirpath)
            for fn in sorted(filenames):
                if fn.endswith(".ll"):
                    yield os.path.join(dirpath, fn), model_root


def build_manifest(sig, input_idx, name, seed):
    """Describe the blob layout: one entry per weight slot, in the order it is
    written, each carrying its canonical torch name and byte offset.
    """
    params = sig["params"]

    # `offset` is in elements, which is only meaningful if every weight slot
    # shares one element type -- as they all do in this tree. Rather than
    # silently emitting offsets that mean two different things, refuse.
    weight_bases = {p["base"] for i, p in enumerate(params) if i != input_idx}
    if len(weight_bases) > 1:
        raise ValueError(
            f"{name}: weights.bin mixes element types {sorted(weight_bases)}; "
            f"the manifest's element offsets would be ambiguous"
        )
    weight_base = next(iter(weight_bases)) if weight_bases else sig["return_base"]
    dtype_size = TYPE_SIZES[weight_base][1]

    entries = []
    offset = 0
    for i, p in enumerate(params):
        if i == input_idx:
            continue
        canonical = p["canonical"]
        named = canonical is not None
        count = total_elems(p["dims"])
        role = param_manifest.classify_role(canonical, p["dims"])
        entries.append(
            {
                "name": canonical if named else f"arg{i}",
                "named": named,
                "mim_arg": p["ssa_name"],
                "mim_index": i,
                "dims": p["dims"],
                "base": p["base"],
                "count": count,
                "offset": offset,
                "byte_offset": offset * dtype_size,
                "role": role,
            }
        )
        offset += count

    input_p = params[input_idx]
    return {
        "version": param_manifest.MANIFEST_VERSION,
        "model": name,
        "seed": seed,
        "source_ll": None,  # filled in by the caller, which knows the path
        "weights_file": f"{name}_weights.bin",
        "input_file": f"{name}_input.bin",
        "input": {
            "mim_arg": input_p["ssa_name"],
            "mim_index": input_idx,
            "dims": input_p["dims"],
            "base": input_p["base"],
            "count": total_elems(input_p["dims"]),
        },
        "output": {"dims": sig["return_dims"], "base": sig["return_base"]},
        "weight_base": weight_base,
        "weight_elem_size": dtype_size,
        "total_floats": offset,
        "entries": entries,
    }


def process_file(ll_path, model_root, rng, seed=None, dry_run=False, force=False):
    with open(ll_path, "r") as f:
        text = f.read()

    sig = parse_signature(text, filename_hint=ll_path)
    name = sig["name"]
    input_idx = identify_input_index(sig)

    weights_path = os.path.join(model_root, f"{name}_weights.bin")
    input_path = os.path.join(model_root, f"{name}_input.bin")
    mpath = param_manifest.manifest_path(model_root, name)

    manifest = build_manifest(sig, input_idx, name, seed)
    manifest["source_ll"] = os.path.relpath(ll_path, model_root)

    print(f"[{name}] {ll_path}")
    print(f"    return shape : {sig['return_dims']} x {sig['return_base']}")
    print(
        f"    input        : {sig['params'][input_idx]['dims']} "
        f"x {sig['params'][input_idx]['base']}  (arg {input_idx})"
    )
    unnamed = [e for e in manifest["entries"] if not e["named"]]
    for e in manifest["entries"]:
        print(
            f"    param {e['mim_index']:>3} [{e['role']:>12}] : "
            f"{e['dims']} @ +{e['offset']}  {e['name']}"
        )
    if unnamed:
        # Not fatal: these slots are still written and still read, they just
        # cannot be matched across pipelines or fed to the torch reference by
        # name, so anything consuming them has to fall back to position.
        print(
            f"    NOTE: {len(unnamed)} of {len(manifest['entries'])} slots have "
            f"no recoverable attribute path "
            f"({', '.join(e['mim_arg'] or '<anonymous>' for e in unnamed[:4])}"
            f"{', ...' if len(unnamed) > 4 else ''})"
        )

    if not force and not dry_run:
        if (
            os.path.exists(weights_path)
            or os.path.exists(input_path)
            or os.path.exists(mpath)
        ):
            print(f"    -> SKIP (already exists; use --force to overwrite)")
            return

    if dry_run:
        print(f"    -> (dry-run) would write {weights_path}")
        print(f"    -> (dry-run) would write {input_path}")
        print(f"    -> (dry-run) would write {mpath}")
        return

    # Input tensor
    input_param = sig["params"][input_idx]
    input_arr = gen_input_array(input_param["dims"], input_param["base"], rng)
    input_arr.tofile(input_path)

    # Weights: every non-input param, in manifest order (== signature order).
    with open(weights_path, "wb") as wf:
        for e in manifest["entries"]:
            arr, how = param_manifest.init_array(
                e["role"], e["dims"], e["base"], rng, np
            )
            e["init"] = how
            wf.write(arr.tobytes())

    param_manifest.write_manifest(mpath, manifest)

    w_size = os.path.getsize(weights_path)
    i_size = os.path.getsize(input_path)
    expected = manifest["total_floats"] * manifest["weight_elem_size"]
    if w_size != expected:
        raise RuntimeError(
            f"{weights_path}: wrote {w_size} bytes but the manifest describes "
            f"{expected} -- offsets would be wrong"
        )
    print(f"    -> wrote {weights_path} ({w_size:,} bytes)")
    print(f"    -> wrote {input_path} ({i_size:,} bytes)")
    print(f"    -> wrote {mpath}")


def main():
    ap = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    ap.add_argument("root", help="Root directory to scan for model variant folders")
    ap.add_argument(
        "--seed", type=int, default=None, help="Random seed (for reproducibility)"
    )
    ap.add_argument(
        "--dry-run",
        action="store_true",
        help="Only print parsed shapes, don't write files",
    )
    ap.add_argument(
        "--force", action="store_true", help="Overwrite existing .bin files"
    )
    args = ap.parse_args()

    if not os.path.isdir(args.root):
        print(f"Not a directory: {args.root}", file=sys.stderr)
        sys.exit(1)

    found_any = False
    for ll_path, model_root in find_mim_llvm_ll_files(args.root):
        found_any = True
        try:
            model_name = os.path.splitext(os.path.basename(ll_path))[0]
            rng = np.random.default_rng(
                [
                    args.seed if args.seed is not None else 0,
                    zlib.crc32(model_name.encode()),
                ]
            )
            process_file(
                ll_path,
                model_root,
                rng,
                seed=args.seed,
                dry_run=args.dry_run,
                force=args.force,
            )
        except Exception as e:
            print(f"[ERROR] {ll_path}: {e}", file=sys.stderr)

    if not found_any:
        print(f"No mim_llvm/*.ll files found under {args.root}", file=sys.stderr)


if __name__ == "__main__":
    main()
