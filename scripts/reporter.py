#!/usr/bin/env python3
"""
reporter.py

Compare the outputs of every compiled pipeline for one or more models
against a reference output, and write a timestamped correctness report per
model.

Works on either:
  - a single model directory (e.g. .../11_VGG16), or
  - a models root containing many model directories (e.g. .../models, which
    holds 01_MLP, 02_ShallowWideMLP, ..., 11_VGG16, 12_VGG19, ...)

A directory is recognized as a "model directory" the same way the rest of
this pipeline already marks it: it directly contains a "<Name>_weights.bin"
and "<Name>_input.bin" (written by gen_random_data.py) and a "bin/"
directory of compiled pipeline binaries (written by build_all.sh, one per
lowering variant -- mim_llvm, mim_mlir_llvm, mlir_llvm, ...). Nothing about
the set of variants is hardcoded: whatever executables exist under a
model's bin/ are treated as the pipelines to compare, however many there
are and whatever they're named.

Reference output, in order of preference:
  1. If <model_dir>/torch_ref/*.py defines a `Model` class, it's loaded,
     its parameters are bound (in named_parameters() order) from
     <Name>_weights.bin, and a forward pass over <Name>_input.bin is used
     as ground truth. The input is reshaped using the input tensor's shape
     recovered from a self-contained raw-pointer .ll for the same model
     (see below), so this isn't hardcoded to any one model's input shape.
  2. Otherwise, one compiled pipeline is used as the baseline (all
     pipelines are supposed to compute the exact same function from the
     exact same weights/input, just lowered differently -- so pairwise
     agreement across them is itself a meaningful correctness signal even
     without an independent reference implementation). "mim_llvm" is
     preferred as the baseline when present (it's the most direct/least
     transformed lowering), else the first pipeline found alphabetically.

Output shape (for a nicer top-1-argmax report on classifier-style models,
and for sanity-checking output sizes) is recovered on a best-effort basis
by parsing a self-contained raw-pointer .ll belonging to the same model
(same technique as gen_random_data.py / gen_drivers.py). If none can be
found or parsed, the comparison still runs -- just as flat arrays, and
without the top-1 metric.

Comparison metric: PASS requires max|pred-ref| / mean|ref| <= rtol, i.e. the
error is judged against the tensor's own scale. Neither an absolute tolerance
nor a pointwise relative one works on this data -- unnormalised random weights
push VGG16's outputs to ~5e24 (so no atol is meetable), and pointwise
diff/|ref| explodes wherever ref is near zero (VGG16: pointwise max 0.105,
median 3.7e-06). Different lowerings sum in different orders and are not
expected to be bit-identical, only faithful.

Timing: each driver writes its own JSON timing report (median/mean/min/max
over `reps`, see gen_drivers.py); reporter.py passes the path in and reads it
back after the process exits rather than scraping stdout. Those land in the
report per pipeline under `pipelines.<variant>.timing`, and are also collapsed
into a top-level `timing_summary` with `median_ms` and `rel_median` (ratio to
the fastest pipeline for that model) plus `fastest_pipeline`.

Each model gets one JSON report written as:
    <out_dir>/<model_dir_basename>_<YYYYmmdd_HHMMSS>.json
(<out_dir> defaults to the model's own directory.)

Usage:
    python3 reporter.py [ROOT] [--reps 1] [--atol 1e-2] [--rtol 1e-3]
                         [--out-dir DIR] [--timeout 600]

Examples:
    python3 reporter.py ./models/11_VGG16          # just VGG16
    python3 reporter.py ./models                    # every model found
    python3 reporter.py ./models --reps 5 --timeout 1200
"""

import argparse
import importlib.util
import json
import os
import re
import shutil
import subprocess
import sys
import time

import numpy as np

# ---------------------------------------------------------------------------
# LLVM signature parsing (trimmed copy of the raw-pointer-style parser from
# gen_random_data.py / gen_drivers.py) -- only what's needed to recover
# input/output tensor shapes for a model on a best-effort basis.
# ---------------------------------------------------------------------------

DEFINE_RE = re.compile(
    r"define\s+.*?@(?P<name>[A-Za-z_][\w.]*)\s*\((?P<args>.*?)\)\s*\{",
    re.DOTALL,
)
ADDRSPACE_RE = re.compile(r"\baddrspace\(\d+\)\s*")


def strip_addrspace(s):
    return ADDRSPACE_RE.sub("", s)


def split_top_level(s, sep=","):
    parts, depth, cur = [], 0, []
    for ch in s:
        if ch in "[{(":
            depth += 1
        elif ch in "]})":
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
    s = type_str.strip()
    if s.startswith("["):
        if not s.endswith("]"):
            raise ValueError(f"Malformed array type: {type_str!r}")
        inner = s[1:-1].strip()
        depth, split_at, i = 0, None, 0
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
    return [], s


def strip_name_suffix(param_str):
    s = param_str.strip()
    m = re.match(r"^(.*?)\s+%\S+$", s)
    return m.group(1).strip() if m else s


def parse_pointee_array(type_with_ptr):
    t = strip_addrspace(type_with_ptr).strip().rstrip("*").strip()
    return parse_array_type(t)


def parse_struct_fields(struct_type_str):
    s = struct_type_str.strip()
    assert s.startswith("{") and s.endswith("}"), f"Not a struct type: {s!r}"
    return split_top_level(s[1:-1].strip(), sep=",")


def classify_arg_types(arg_type_strs):
    cleaned = [strip_addrspace(t).strip() for t in arg_type_strs]
    if len(cleaned) == 1 and cleaned[0].startswith("{"):
        return "raw_struct"
    if cleaned and all(t.startswith("[") for t in cleaned):
        return "raw_flat"
    return "unknown"


def parse_raw_signature(text):
    """Returns (name, params:[(dims,base),...], return_dims, return_base) for
    a self-contained raw-pointer .ll signature, or None if this .ll doesn't
    use that calling convention (e.g. it's an mlir-memref-scalarized one)."""
    m = DEFINE_RE.search(text)
    if not m:
        return None
    name = m.group("name")
    args_str = m.group("args")
    ret_m = re.search(
        r"define\s+(.*?)\s+@" + re.escape(name) + r"\s*\(", text, re.DOTALL
    )
    ret_type_str = strip_addrspace(ret_m.group(1).strip()).rstrip("*").strip()

    raw_params = split_top_level(args_str)
    arg_type_strs = [strip_name_suffix(p) for p in raw_params]
    style = classify_arg_types(arg_type_strs)
    if style == "unknown":
        return None

    try:
        if style == "raw_struct":
            fields = parse_struct_fields(strip_addrspace(arg_type_strs[0]).strip())
        else:
            fields = arg_type_strs
        params = [parse_pointee_array(f) for f in fields]
        return_dims, return_base = parse_array_type(ret_type_str)
    except Exception:
        return None
    return name, params, return_dims, return_base


def total_elems(dims):
    n = 1
    for d in dims:
        n *= d
    return n


def identify_input_index(params, return_dims):
    """Same batch-dim heuristic used by gen_random_data.py / gen_drivers.py:
    the input is the param whose leading dim matches the output's leading
    dim (batch size), preferring multi-dim tensors, largest on ties."""
    batch = return_dims[0] if return_dims else None
    candidates = [
        i
        for i, (dims, _base) in enumerate(params)
        if dims and batch is not None and dims[0] == batch and len(dims) > 1
    ]
    if not candidates:
        candidates = [
            i
            for i, (dims, _base) in enumerate(params)
            if dims and batch is not None and dims[0] == batch
        ]
    if not candidates:
        candidates = list(range(len(params)))
    return max(candidates, key=lambda i: total_elems(params[i][0]))


class ModelShape:
    __slots__ = ("name", "input_dims", "output_dims")

    def __init__(self, name, input_dims, output_dims):
        self.name = name
        self.input_dims = input_dims
        self.output_dims = output_dims


def find_shape_source(model_dir, expected_name=None):
    """Search model_dir recursively for a self-contained raw-pointer .ll and
    return a ModelShape, or None if none is found/parseable. Prefers
    '<Name>_mim.ll' inside a 'mim_llvm' directory."""
    candidates = []
    for dirpath, _dirs, filenames in os.walk(model_dir):
        for fn in filenames:
            if fn.endswith(".ll"):
                candidates.append(os.path.join(dirpath, fn))

    def sort_key(path):
        is_canonical = os.path.basename(
            os.path.dirname(path)
        ) == "mim_llvm" and os.path.basename(path).endswith("_mim.ll")
        return (0 if is_canonical else 1, path)

    for path in sorted(candidates, key=sort_key):
        try:
            with open(path) as f:
                text = f.read()
        except OSError:
            continue
        parsed = parse_raw_signature(text)
        if parsed is None:
            continue
        name, params, return_dims, _return_base = parsed
        if expected_name is not None and name != expected_name:
            continue
        if None in return_dims or any(None in d for d, _b in params):
            continue
        input_idx = identify_input_index(params, return_dims)
        input_dims = params[input_idx][0]
        return ModelShape(name, input_dims, return_dims)
    return None


# ---------------------------------------------------------------------------
# Model / pipeline discovery
# ---------------------------------------------------------------------------


def looks_like_model_dir(d):
    """A model dir directly contains '<Name>_weights.bin' (written by
    gen_random_data.py)."""
    if not os.path.isdir(d):
        return False
    try:
        return any(fn.endswith("_weights.bin") for fn in os.listdir(d))
    except OSError:
        return False


def find_model_dirs(root):
    if looks_like_model_dir(root):
        return [root]
    found = []
    for dirpath, dirnames, _filenames in os.walk(root):
        # Don't descend into a model's own bin/outputs/torch_ref dirs looking
        # for nested "models" -- they won't match anyway, but skip for speed.
        dirnames[:] = [d for d in dirnames if d not in ("bin", "outputs", "torch_ref")]
        if looks_like_model_dir(dirpath):
            found.append(dirpath)
            dirnames[:] = []  # don't look for models nested inside a model dir
    return sorted(found)


def find_weights_and_input(model_dir):
    """Returns (name, weights_path, input_path) or None. 'name' is the
    <Name> prefix shared by <Name>_weights.bin / <Name>_input.bin."""
    weights_candidates = sorted(
        f for f in os.listdir(model_dir) if f.endswith("_weights.bin")
    )
    if not weights_candidates:
        return None
    if len(weights_candidates) > 1:
        print(
            f"warn: multiple *_weights.bin in {model_dir}, using {weights_candidates[0]}",
            file=sys.stderr,
        )
    weights_file = weights_candidates[0]
    name = weights_file[: -len("_weights.bin")]
    weights_path = os.path.join(model_dir, weights_file)
    input_path = os.path.join(model_dir, f"{name}_input.bin")
    if not os.path.isfile(input_path):
        print(
            f"warn: found {weights_file} but no {name}_input.bin in {model_dir}",
            file=sys.stderr,
        )
        return None
    return name, weights_path, input_path


def find_pipeline_binaries(model_dir):
    """Returns {variant_name: path} for every executable file directly under
    model_dir/bin/, discovered dynamically -- not a hardcoded variant list."""
    bin_dir = os.path.join(model_dir, "bin")
    if not os.path.isdir(bin_dir):
        return {}
    pipelines = {}
    for fn in sorted(os.listdir(bin_dir)):
        path = os.path.join(bin_dir, fn)
        if os.path.isfile(path) and os.access(path, os.X_OK):
            pipelines[fn] = path
    return pipelines


def find_iree_driver(model_dir, name):
    """The IREE VM pipeline, kept deliberately outside bin/ so that the rest
    of this tree is unaffected by it: scripts/gen_vm_driver.py writes
    <model_dir>/iree/<Name>_driver_iree.py alongside the .vmfb it drives.
    Only consulted when --with-iree is passed; returns a path or None."""
    driver = os.path.join(model_dir, "iree", f"{name}_driver_iree.py")
    if os.path.isfile(driver) and os.access(driver, os.X_OK):
        return driver
    return None


def find_torch_ref_module(model_dir, name):
    """Look for model_dir/torch_ref/*.py. Prefers '<Name>_param.py'; if
    exactly one .py file exists, uses that; otherwise warns and gives up."""
    ref_dir = os.path.join(model_dir, "torch_ref")
    if not os.path.isdir(ref_dir):
        return None
    py_files = sorted(f for f in os.listdir(ref_dir) if f.endswith(".py"))
    if not py_files:
        return None
    preferred = f"{name}_param.py"
    if preferred in py_files:
        return os.path.join(ref_dir, preferred)
    if len(py_files) == 1:
        return os.path.join(ref_dir, py_files[0])
    print(
        f"warn: multiple candidate torch reference files in {ref_dir} and "
        f"none named {preferred!r} -- skipping torch reference for {name}",
        file=sys.stderr,
    )
    return None


# ---------------------------------------------------------------------------
# Reference computation
# ---------------------------------------------------------------------------


def run_torch_reference(module_path, weights_path, input_path, shape):
    """Best-effort: returns a flat float32 np.ndarray, or None (with a
    printed warning) if a torch reference can't be produced."""
    try:
        import torch
    except ImportError:
        print("warn: torch not installed -- skipping torch reference", file=sys.stderr)
        return None

    spec = importlib.util.spec_from_file_location("torch_ref_module", module_path)
    mod = importlib.util.module_from_spec(spec)
    try:
        spec.loader.exec_module(mod)
    except Exception as e:
        print(f"warn: failed to import {module_path}: {e}", file=sys.stderr)
        return None

    if not hasattr(mod, "Model"):
        print(f"warn: {module_path} has no `Model` class -- skipping", file=sys.stderr)
        return None

    # Construct via get_init_inputs() when the reference file provides it.
    # Every file in this repo follows that convention, and guessing instead
    # (no-arg, then num_classes=) silently failed for 5 of 8 models: MLP,
    # ShallowWideMLP and DeepNarrowMLP take (input_size, layer_sizes,
    # output_size), and GoogleNetInceptionModule takes channel counts -- none
    # of which a no-arg or num_classes= call can supply.
    model = None
    ctor_attempts = []
    if hasattr(mod, "get_init_inputs"):
        try:
            init = mod.get_init_inputs()
            init = list(init) if isinstance(init, (list, tuple)) else [init]
            ctor_attempts.append((tuple(init), {}))
        except Exception as e:
            print(
                f"warn: {module_path}'s get_init_inputs() raised: {e}", file=sys.stderr
            )
    # Fallbacks, for reference files that predate the convention.
    ctor_attempts.append(((), {}))
    if shape is not None and shape.output_dims:
        ctor_attempts.append(((), {"num_classes": shape.output_dims[-1]}))

    last_err = None
    for a, kw in ctor_attempts:
        try:
            model = mod.Model(*a, **kw)
            break
        except TypeError as e:
            last_err = e
            continue
    if model is None:
        print(
            f"warn: could not construct {module_path}'s Model() -- tried "
            f"get_init_inputs(), no-arg and num_classes=; last error: {last_err} "
            f"-- skipping torch reference",
            file=sys.stderr,
        )
        return None
    model.eval()

    raw = np.fromfile(weights_path, dtype=np.float32)
    offset = 0
    state = {}
    try:
        for pname, p in model.named_parameters():
            n = p.numel()
            chunk = raw[offset : offset + n]
            if chunk.size != n:
                raise RuntimeError(
                    f"weights.bin ran out of data at '{pname}': needed {n}, "
                    f"only {chunk.size} left"
                )
            state[pname] = torch.from_numpy(chunk.reshape(tuple(p.shape)).copy())
            offset += n
    except Exception as e:
        print(
            f"warn: failed to bind weights.bin to {module_path}'s Model: {e}",
            file=sys.stderr,
        )
        return None

    if offset != raw.size:
        print(
            f"warning: weights.bin has {raw.size - offset} leftover floats "
            f"after binding all parameters",
            file=sys.stderr,
        )

    try:
        model.load_state_dict(state, strict=True)
    except Exception as e:
        print(f"warn: load_state_dict failed for {module_path}: {e}", file=sys.stderr)
        return None

    x = np.fromfile(input_path, dtype=np.float32)

    # Input shape, in order of trustworthiness:
    #   1. the reference file's own get_inputs() -- authoritative
    #   2. the shape recovered from a raw-pointer .ll
    # (2) is not reliable on its own because the mim frontend COLLAPSES UNIT
    # DIMENSIONS in its .ll signatures: LeNet5's input is declared
    # [4096 x [32 x [32 x float]]], i.e. NCHW with C=1 dropped, so the
    # recovered shape is (4096, 32, 32) and torch reads it as N=1, C=4096 --
    # "expected input[1, 4096, 32, 32] to have 1 channels, but got 4096".
    # get_inputs() says (4096, 1, 32, 32) and is right.
    candidate_dims = []
    if hasattr(mod, "get_inputs"):
        try:
            gi = mod.get_inputs()
            gi = list(gi) if isinstance(gi, (list, tuple)) else [gi]
            for t in gi:
                if hasattr(t, "shape"):
                    candidate_dims.append(list(t.shape))
        except Exception as e:
            print(f"warn: {module_path}'s get_inputs() raised: {e}", file=sys.stderr)
    if shape is not None and shape.input_dims:
        candidate_dims.append(list(shape.input_dims))

    x_t = None
    for dims in candidate_dims:
        if total_elems(dims) == x.size:
            x_t = torch.from_numpy(x.reshape(tuple(dims)).copy())
            break
    if x_t is None:
        if candidate_dims:
            print(
                f"warn: input.bin has {x.size} floats, matching none of the "
                f"candidate shapes {candidate_dims} -- skipping torch reference",
                file=sys.stderr,
            )
            return None
        x_t = torch.from_numpy(x.copy())

    try:
        with torch.no_grad():
            out = model(x_t)
    except Exception as e:
        print(f"warn: forward pass failed for {module_path}: {e}", file=sys.stderr)
        return None

    return out.numpy().astype(np.float32).reshape(-1)


# ---------------------------------------------------------------------------
# Running compiled pipelines
# ---------------------------------------------------------------------------


def run_pipeline(
    pname,
    binary,
    weights_path,
    input_path,
    out_dir,
    reps,
    timeout,
    run_id,
    expected_size=None,
    pin_cpu=None,
):
    """Returns (array_or_None, timing_dict_or_None). timing_dict is read back
    from the JSON report the driver itself writes (see gen_drivers.py) --
    this is how reporter.py gets timing numbers without having to scrape
    stdout, and how every pipeline/model run in this invocation ends up
    tagged with the same run_id for correlation."""
    out_path = os.path.join(out_dir, f"output_{pname}.bin")
    json_path = os.path.join(out_dir, f"timing_{pname}_{run_id}.json")
    cmd = [binary, weights_path, input_path, str(reps), out_path, run_id, json_path]
    # CPU pinning (--pin-cpu / PIN_CPU). One taskset prefix is enough for the
    # whole run: the driver forks a child per rep (see c_fork_helpers() in
    # gen_drivers.py) and affinity is inherited across fork() and exec(), so
    # every rep stays on the CPU chosen here.
    #
    # This matters more than it looks on a hybrid CPU. On this machine
    # `lscpu -e=CPU,CORE,MAXMHZ` shows three tiers -- CPUs 0-5 at 6600 MHz
    # (P-cores), 6-13 at 6300 (E-cores), 14-15 at 2500 (LP E-cores) -- and an
    # unpinned rep can land on any of them. That is the source of the
    # bimodality in the earlier reports: 01_MLP/mim_mlir_llvm measured
    # min 41.2 s / max 76.9 s across the 10 reps of ONE run, and 78.6 s then
    # 41.9 s as the median of two consecutive runs of a byte-identical input.
    # Pinned to one P-core the same binary reproduced within 0.08%.
    #
    # Pin every pipeline of a model to the SAME cpu, or the cross-pipeline
    # ratios the report is built on stop meaning anything.
    if pin_cpu:
        cmd = ["taskset", "-c", str(pin_cpu)] + cmd
    print(f"[{pname}] running: {' '.join(cmd)}")
    try:
        proc = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        print(f"[{pname}] FAILED: timed out after {timeout}s", file=sys.stderr)
        return None, None
    if proc.stdout:
        print(f"[{pname}] stdout:\n{proc.stdout.strip()}")
    if proc.returncode != 0:
        print(
            f"[{pname}] FAILED (exit {proc.returncode}):\n{proc.stderr}",
            file=sys.stderr,
        )
        return None, None
    if not os.path.isfile(out_path):
        print(f"[{pname}] FAILED: no output file written", file=sys.stderr)
        return None, None
    arr = np.fromfile(out_path, dtype=np.float32)
    if expected_size is not None and arr.size != expected_size:
        print(
            f"[{pname}] FAILED: output has {arr.size} floats, expected {expected_size}",
            file=sys.stderr,
        )
        return None, None

    timing = None
    if os.path.isfile(json_path):
        try:
            with open(json_path) as f:
                timing = json.load(f)
        except (OSError, json.JSONDecodeError) as e:
            print(
                f"[{pname}] warn: could not read timing report {json_path}: {e}",
                file=sys.stderr,
            )
    else:
        print(
            f"[{pname}] warn: driver did not write expected timing report {json_path}",
            file=sys.stderr,
        )

    return arr, timing


# ---------------------------------------------------------------------------
# Comparison / reporting
# ---------------------------------------------------------------------------


def compare(pname, pred, ref, output_dims, atol, rtol):
    if pred.size != ref.size:
        return {
            "status": "FAIL",
            "error": f"size mismatch: pred={pred.size} ref={ref.size}",
        }

    diff = np.abs(pred - ref)
    max_abs = float(diff.max())
    mean_abs = float(diff.mean())
    denom = np.abs(ref).copy()
    denom[denom == 0] = 1e-12
    max_rel = float((diff / denom).max())

    # ---------------------------------------------------------------------
    # PASS/FAIL is decided on error relative to the TENSOR's scale, not on
    # pointwise relative error and not on an absolute tolerance.
    #
    # Both of the obvious metrics are useless on this data:
    #
    #  * absolute: gen_random_data.py uses unnormalised random weights, so
    #    activations amplify layer over layer -- VGG16's outputs come out at
    #    ~5e24. An atol of 1e-2 against 1e24 can never be met by anything.
    #
    #  * pointwise relative (diff/|ref|): explodes wherever ref happens to
    #    sit near zero. On VGG16 the pointwise max is 0.105 while the median
    #    is 3.7e-06 -- that 0.105 comes from ~0.3% of elements whose own
    #    value is near zero, and says nothing about the pipeline.
    #
    # Scaling by mean|ref| gives the honest number. On VGG16 the two
    # frontends differ by 2.1e-05 of typical output magnitude, which is the
    # fp32 round-off floor for this many accumulations -- and top-1 agrees
    # 100%. Different lowerings sum in different orders; they are not
    # supposed to be bit-identical, only faithful.
    # ---------------------------------------------------------------------
    scale = float(np.abs(ref).mean())
    if scale == 0.0:
        scale = 1.0
    scaled = diff / scale
    max_scaled = float(scaled.max())
    rms_scaled = float(np.sqrt(np.mean((diff / scale) ** 2)))
    close = bool(max_scaled <= rtol + atol / scale)

    result = {
        "ref_mean_abs": scale,
        "max_abs_diff": max_abs,
        "mean_abs_diff": mean_abs,
        "max_rel_diff": max_rel,
        "max_diff_over_scale": max_scaled,
        "rms_diff_over_scale": rms_scaled,
        "frac_pointwise_rel_gt_1e3": float((diff / denom > 1e-3).mean()),
        "allclose": close,
    }

    top1_ok = True
    if output_dims is not None and len(output_dims) == 2:
        batch, _ = output_dims
        if pred.size == batch * output_dims[1]:
            pred2 = pred.reshape(output_dims)
            ref2 = ref.reshape(output_dims)
            pred_top1 = pred2.argmax(axis=1)
            ref_top1 = ref2.argmax(axis=1)
            match = int((pred_top1 == ref_top1).sum())
            top1_ok = match == batch
            result["top1_match"] = f"{match}/{batch}"
            mismatches = [
                {
                    "row": i,
                    "ref_argmax": int(ref_top1[i]),
                    "ref_value": float(ref2[i, ref_top1[i]]),
                    "pred_argmax": int(pred_top1[i]),
                    "pred_value": float(pred2[i, pred_top1[i]]),
                }
                for i in range(batch)
                if pred_top1[i] != ref_top1[i]
            ]
            if mismatches:
                result["top1_mismatches"] = mismatches

    ok = close and top1_ok
    result["status"] = "PASS" if ok else "FAIL"

    line = (
        f"[{pname}] {result['status']}  max_diff/scale={max_scaled:.3g}  "
        f"rms_diff/scale={rms_scaled:.3g}  (scale={scale:.3g}  "
        f"max_abs={max_abs:.3g}  pointwise_max_rel={max_rel:.3g})"
    )
    if "top1_match" in result:
        line += f"  top1_match={result['top1_match']}"
    print(line)
    for m in result.get("top1_mismatches", []):
        print(
            f"    row {m['row']}: ref argmax={m['ref_argmax']} "
            f"({m['ref_value']:.4f}) vs pred argmax={m['pred_argmax']} "
            f"({m['pred_value']:.4f})"
        )
    return result


TIMING_KEYS = ("reps", "median_ns", "mean_ns", "min_ns", "max_ns")


def summarize_timings(timings):
    """Build the report's top-level `timing_summary` from the per-pipeline
    JSON reports the drivers wrote.

    Keeps only the stats -- model/run_id/paths already appear at the top level
    of the report, so repeating them per pipeline is noise. Adds `median_ms`
    for readability and `rel_median` (ratio to the fastest pipeline's median),
    which is the number this whole tree exists to produce.
    """
    stats = {}
    for pname, t in timings.items():
        if not t or t.get("median_ns") is None:
            continue
        stats[pname] = {k: t[k] for k in TIMING_KEYS if k in t}

    medians = [
        s["median_ns"] for s in stats.values() if (s.get("median_ns") or 0) > 0
    ]
    fastest = min(medians) if medians else None

    for s in stats.values():
        m = s.get("median_ns")
        if m is not None:
            s["median_ms"] = round(m / 1e6, 3)
        if fastest and m:
            s["rel_median"] = round(m / fastest, 3)
    return stats


def print_timing_table(name, stats, reps):
    """One block per model, fastest first."""
    if not stats:
        print(f"[{name}] no timing reports collected")
        return
    print(f"[{name}] timings (median of {reps} rep(s), fastest first):")
    order = sorted(stats.items(), key=lambda kv: kv[1].get("median_ns", float("inf")))
    width = max(len(p) for p, _ in order)
    for pname, s in order:
        med = s.get("median_ns")
        if med is None:
            print(f"    {pname:<{width}}  (no timing)")
            continue
        rel = s.get("rel_median")
        rel_s = f"{rel:>6.2f}x" if rel is not None else "     -"
        print(
            f"    {pname:<{width}}  {med / 1e6:10.2f} ms  {rel_s}   "
            f"(min {s.get('min_ns', 0) / 1e6:.2f}  "
            f"max {s.get('max_ns', 0) / 1e6:.2f}  "
            f"mean {s.get('mean_ns', 0) / 1e6:.2f})"
        )


# ---------------------------------------------------------------------------
# Per-model driver
# ---------------------------------------------------------------------------


def process_model(model_dir, args):
    dir_basename = os.path.basename(os.path.normpath(model_dir))
    print(f"\n{'=' * 70}\n=== model: {dir_basename} ({model_dir}) ===\n{'=' * 70}")

    wi = find_weights_and_input(model_dir)
    if wi is None:
        print(
            f"[{dir_basename}] SKIP: no <Name>_weights.bin/_input.bin found",
            file=sys.stderr,
        )
        return None
    name, weights_path, input_path = wi

    pipelines = find_pipeline_binaries(model_dir)
    if args.with_iree:
        iree_driver = find_iree_driver(model_dir, name)
        if iree_driver:
            pipelines["iree"] = iree_driver
        else:
            print(
                f"[{name}] note: --with-iree given but no executable "
                f"iree/{name}_driver_iree.py (run scripts/gen_vm_driver.py)"
            )
    if not pipelines:
        print(
            f"[{dir_basename}] SKIP: no executables found under {model_dir}/bin "
            f"(did you run build_all.sh?)",
            file=sys.stderr,
        )
        return None

    shape = find_shape_source(model_dir, expected_name=name)
    if shape is None:
        print(
            f"[{name}] note: could not recover input/output shapes from any .ll "
            f"-- comparisons will run on flat arrays (no top-1 report)"
        )

    out_dir = args.out_dir_per_model or os.path.join(model_dir, "outputs")
    os.makedirs(out_dir, exist_ok=True)

    expected_out_size = total_elems(shape.output_dims) if shape else None

    ref_module = find_torch_ref_module(model_dir, name)
    ref = None
    ref_source = None
    if ref_module is not None:
        print(f"[{name}] found torch reference: {ref_module}")
        ref = run_torch_reference(ref_module, weights_path, input_path, shape)
        if ref is not None:
            ref_source = f"torch:{os.path.relpath(ref_module, model_dir)}"

    print(f"[{name}] pipelines found: {', '.join(sorted(pipelines))}")

    outputs = {}
    timings = {}
    for pname, binary in sorted(pipelines.items()):
        arr, timing = run_pipeline(
            pname,
            binary,
            weights_path,
            input_path,
            out_dir,
            args.reps,
            args.timeout,
            args.run_id,
            expected_out_size,
            pin_cpu=args.pin_cpu,
        )
        outputs[pname] = arr
        timings[pname] = timing

    baseline_name = None
    if ref is None:
        # Fall back to cross-pipeline consistency: use one successful
        # pipeline's own output as the baseline everything else is compared
        # against. Prefer "mim_llvm" if present (most direct lowering).
        available = [p for p, arr in outputs.items() if arr is not None]
        if not available:
            print(
                f"[{name}] SKIP: no reference available and no pipeline produced output",
                file=sys.stderr,
            )
            return None
        baseline_name = "mim_llvm" if "mim_llvm" in available else sorted(available)[0]
        ref = outputs[baseline_name]
        ref_source = f"baseline:{baseline_name}"
        print(
            f"[{name}] no torch reference -- using pipeline '{baseline_name}' as baseline"
        )

    results = {}
    all_ok = True
    for pname, pred in sorted(outputs.items()):
        if pname == baseline_name:
            results[pname] = {"status": "REFERENCE"}
        elif pred is None:
            results[pname] = {"status": "SKIPPED"}
            all_ok = False
        else:
            r = compare(
                pname,
                pred,
                ref,
                shape.output_dims if shape else None,
                args.atol,
                args.rtol,
            )
            results[pname] = r
            all_ok = all_ok and (r["status"] == "PASS")
        if timings.get(pname) is not None:
            results[pname]["timing"] = timings[pname]

    timing_summary = summarize_timings(timings)
    print_timing_table(name, timing_summary, args.reps)

    report = {
        "model_dir": dir_basename,
        "model_name": name,
        "run_id": args.run_id,
        "generated_at": time.strftime("%Y-%m-%dT%H:%M:%S"),
        "reference_source": ref_source,
        "reps": args.reps,
        "pinned_cpu": args.pin_cpu,
        "with_iree": args.with_iree,
        "atol": args.atol,
        "rtol": args.rtol,
        "output_shape": shape.output_dims if shape else None,
        "timing_summary": timing_summary,
        "fastest_pipeline": (
            min(timing_summary, key=lambda p: timing_summary[p]["median_ns"])
            if timing_summary
            else None
        ),
        "pipelines": results,
        "all_pass": all_ok,
    }

    report_dir = args.out_dir_reports or model_dir
    os.makedirs(report_dir, exist_ok=True)
    report_path = os.path.join(report_dir, f"{dir_basename}_{args.run_id}.json")
    with open(report_path, "w") as f:
        json.dump(report, f, indent=2)
    print(f"[{name}] report written: {report_path}")
    print(f"[{name}] " + ("ALL PASS" if all_ok else "SOME COMPARISONS FAILED/SKIPPED"))

    return all_ok


def main():
    ap = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    ap.add_argument(
        "root",
        nargs="?",
        default=".",
        help="A single model directory, or a root containing many",
    )
    ap.add_argument(
        "--reps", type=int, default=1, help="reps passed to each driver binary"
    )
    # PASS requires max|pred-ref| / mean|ref|  <=  rtol + atol/mean|ref|.
    # rtol is therefore the meaningful knob: it is the allowed error as a
    # fraction of the tensor's own typical magnitude. 1e-3 leaves ~50x margin
    # over the fp32 reduction-order floor measured on these models (2e-5).
    ap.add_argument(
        "--rtol",
        type=float,
        default=1e-3,
        help="allowed max error as a fraction of mean|ref| (default 1e-3)",
    )
    ap.add_argument(
        "--atol",
        type=float,
        default=1e-2,
        help="absolute slack, added as atol/mean|ref|; negligible unless "
        "outputs are tiny (default 1e-2)",
    )
    ap.add_argument(
        "--out-dir",
        dest="out_dir_per_model",
        default=None,
        help="where each pipeline's raw output_<name>.bin goes (default: <model_dir>/outputs)",
    )
    ap.add_argument(
        "--report-dir",
        dest="out_dir_reports",
        default=None,
        help="where each model's JSON report goes (default: the model's own directory)",
    )
    ap.add_argument(
        "--timeout", type=int, default=600, help="per-pipeline run timeout, in seconds"
    )
    ap.add_argument(
        "--run-id",
        default=None,
        help="Shared id passed to every driver invocation and used in every "
        "report/timing filename this run produces (default: a generated "
        "UTC timestamp). Pass one explicitly to tie a reporter.py run to "
        "an id from elsewhere.",
    )

    ap.add_argument(
        "--with-iree",
        action="store_true",
        help="also run the IREE VM pipeline for models that have one "
        "(<model_dir>/iree/<Name>_driver_iree.py, from scripts/gen_vm_driver.py). "
        "Off by default: without it nothing under iree/ is read or run, and "
        "the reports are exactly what they were before IREE was added.",
    )
    ap.add_argument(
        "--pin-cpu",
        default=os.environ.get("PIN_CPU"),
        help="pin every pipeline run to these CPUs via `taskset -c` (e.g. "
        "'2', '0-5', '2,3'); defaults to $PIN_CPU. Strongly recommended on "
        "hybrid P/E-core machines -- see the comment in run_pipeline(). The "
        "value is recorded in each report as \"pinned_cpu\".",
    )

    args = ap.parse_args()

    if args.pin_cpu and shutil.which("taskset") is None:
        print(
            "error: --pin-cpu given but `taskset` is not on PATH "
            "(install util-linux, or drop the flag)",
            file=sys.stderr,
        )
        sys.exit(1)

    if args.run_id is None:
        args.run_id = time.strftime("%Y%m%d_%H%M%S", time.gmtime())

    if not os.path.isdir(args.root):
        print(f"error: not a directory: {args.root}", file=sys.stderr)
        sys.exit(1)

    model_dirs = find_model_dirs(args.root)
    if not model_dirs:
        print(
            f"error: no model directories found under {args.root} "
            f"(looked for a directory directly containing *_weights.bin)",
            file=sys.stderr,
        )
        sys.exit(1)

    print(f"==> run_id: {args.run_id}")
    print(f"==> found {len(model_dirs)} model(s):")
    for d in model_dirs:
        print(f"      {d}")

    overall_ok = True
    any_processed = False
    for model_dir in model_dirs:
        ok = process_model(model_dir, args)
        if ok is None:
            overall_ok = False
            continue
        any_processed = True
        overall_ok = overall_ok and ok

    print(f"\n{'=' * 70}")
    if not any_processed:
        print("No models were fully processed.")
        sys.exit(1)
    print("ALL PASS" if overall_ok else "SOME MODELS FAILED OR WERE SKIPPED")
    sys.exit(0 if overall_ok else 1)


if __name__ == "__main__":
    main()
