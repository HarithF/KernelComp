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

import numpy as np

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
    '[16384 x [16384 x float]]* %_96446' -> (dims, base_type).
    Handles params with or without a trailing '%name'.
    """
    s = param_str.strip()
    m = re.match(r"^(.*?)\s+%\S+$", s)
    type_part = m.group(1).strip() if m else s
    type_part = type_part.rstrip("*").strip()
    dims, base = parse_array_type(type_part)
    return dims, base


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
    ret_type_str = ret_m.group(1).strip().rstrip("*").strip()
    ret_dims, ret_base = parse_array_type(ret_type_str)

    params = []
    for p in split_top_level(args_str):
        dims, base = parse_param(p)
        params.append({"dims": dims, "base": base, "raw": p})

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


def identify_input_index(sig):
    """Return the index into sig['params'] that best represents the model's
    input tensor: the parameter whose leading dimension matches the batch
    size (the return type's leading dimension), preferring multi-dimensional
    tensors over flat bias-like vectors, and the largest one among ties.
    """
    batch = sig["return_dims"][0] if sig["return_dims"] else None
    params = sig["params"]

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

    return max(candidates, key=lambda i: total_elems(params[i]["dims"]))


# ---------------------------------------------------------------------------
# Random data generation
# ---------------------------------------------------------------------------


def dtype_for(base):
    if base not in TYPE_SIZES:
        raise ValueError(f"Unsupported/unrecognized base type: {base!r}")
    return TYPE_SIZES[base][0]


def gen_random_array(dims, base, rng):
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


def process_file(ll_path, model_root, rng, dry_run=False, force=False):
    with open(ll_path, "r") as f:
        text = f.read()

    sig = parse_signature(text, filename_hint=ll_path)
    name = sig["name"]
    input_idx = identify_input_index(sig)

    weights_path = os.path.join(model_root, f"{name}_weights.bin")
    input_path = os.path.join(model_root, f"{name}_input.bin")

    print(f"[{name}] {ll_path}")
    print(f"    return shape : {sig['return_dims']} x {sig['return_base']}")
    for i, p in enumerate(sig["params"]):
        role = "INPUT" if i == input_idx else "weight"
        print(f"    param {i:>2} [{role:>6}] : {p['dims']} x {p['base']}")

    if not force and not dry_run:
        if os.path.exists(weights_path) or os.path.exists(input_path):
            print(f"    -> SKIP (already exists; use --force to overwrite)")
            return

    if dry_run:
        print(f"    -> (dry-run) would write {weights_path}")
        print(f"    -> (dry-run) would write {input_path}")
        return

    # Input tensor
    input_param = sig["params"][input_idx]
    input_arr = gen_random_array(input_param["dims"], input_param["base"], rng)
    input_arr.tofile(input_path)

    # Weights: every other param, concatenated in signature order.
    with open(weights_path, "wb") as wf:
        for i, p in enumerate(sig["params"]):
            if i == input_idx:
                continue
            arr = gen_random_array(p["dims"], p["base"], rng)
            wf.write(arr.tobytes())

    w_size = os.path.getsize(weights_path)
    i_size = os.path.getsize(input_path)
    print(f"    -> wrote {weights_path} ({w_size:,} bytes)")
    print(f"    -> wrote {input_path} ({i_size:,} bytes)")


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

    rng = np.random.default_rng(args.seed)

    found_any = False
    for ll_path, model_root in find_mim_llvm_ll_files(args.root):
        found_any = True
        try:
            process_file(
                ll_path, model_root, rng, dry_run=args.dry_run, force=args.force
            )
        except Exception as e:
            print(f"[ERROR] {ll_path}: {e}", file=sys.stderr)

    if not found_any:
        print(f"No mim_llvm/*.ll files found under {args.root}", file=sys.stderr)


if __name__ == "__main__":
    main()
