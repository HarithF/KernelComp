#!/usr/bin/env python3
"""
param_manifest.py

The single source of truth for how `<Name>_weights.bin` is laid out.

Why this file exists
--------------------
Every pipeline in this tree reads the same `<Name>_weights.bin`, but the
frontends do NOT agree on what a model's argument list looks like:

    mim:         (conv1.weight, x, bn1.running_mean, bn1.running_var,
                  bn1.weight, bn1.bias, conv2.weight, ...)
    torch-mlir:  (x, conv1.weight, bn1.weight, bn1.bias, conv2.weight, ...)

They differ in the position of the input, and -- before `export_mlir.py`
started promoting module state unconditionally -- in whether BatchNorm's
`running_mean`/`running_var` are arguments at all or frozen into the graph as
constants.

`gen_data.py`, `gen_drivers.py` and `reporter.py` used to each re-derive the
blob layout by parsing the mim `.ll` and matching every other pipeline to it
*positionally*. That silently mis-bound every model with BatchNorm: the
torch-mlir driver read `bn1.running_mean` into `bn1.weight`, and from the
first BN onward its view of the blob was offset from what was written (128
floats, for 08_ResNetBasicBlock), so every downstream weight was garbage.
`reporter.py` meanwhile bound only `named_parameters()`, so
`load_state_dict(strict=True)` failed on the missing buffer keys and the
torch reference was silently dropped in favour of `baseline:mim_llvm` --
making the more-broken pipeline the arbiter of truth.

The fix is to stop inferring. `gen_data.py` writes a manifest next to the
blob naming every slot with its **canonical torch parameter name** (the key
`model.state_dict()` uses) and its byte offset; everything else binds *by
name* against that manifest and fails loudly when a name cannot be resolved.

Canonical names are the join key across all four consumers:

    gen_data.py     writes them (demangled from the mim .ll arg names)
    gen_drivers.py  resolves each driver arg to an offset through them
    reporter.py     feeds the torch reference through them
    export_mlir.py  already emits them in its `<stem>.params.txt` manifest,
                    which is what gives the torch-mlir variant -- whose own
                    .mlir args are just %arg0, %arg1, ... -- its names back
"""

import json
import os
import re

MANIFEST_VERSION = 1

# A note on 33_VanillaRNN, which several comments below and in
# gen_drivers.py cite as the awkward case that motivated a check:
# it has been REMOVED from this tree. It was the only model that took two
# `forward()` inputs (x, initial_hidden) and returned two values, and the
# harness is built around one <Name>_input.bin and one output blob. The
# guards that model provoked -- name-based input identification, binding an
# unnamed slot by index, refusing a multi-input graph outright -- are all
# still here on purpose: they are what turn "silently read the wrong
# weights" into "say what is wrong and stop", for whatever awkward model
# shows up next. Don't go looking for the directory.

# --------------------------------------------------------------------------
# mim argument-name demangling
# --------------------------------------------------------------------------
#
# The mim frontend names each traced argument after the Python attribute path
# it came from, flattened with the accessor kind spelled out:
#
#   l_self_modules_conv1_parameters_weight__353262      -> conv1.weight
#   l_self_modules_bn1_buffers_running_mean__353946     -> bn1.running_mean
#   l_self_modules_features_modules_3_modules_0_parameters_weight__387142
#                                                       -> features.3.0.weight
#   l_self_dict_modules_i2h_parameters_weight__353249   -> i2h.weight
#
# So every path component sits between two of the accessor keywords
# `modules_` / `parameters_` / `buffers_`, and the component after the last
# keyword is the attribute itself. Splitting on the keywords recovers the
# path exactly -- which matters, because component names can themselves
# contain underscores (`running_mean`).
#
# Validated against every model in this tree that has a torch reference: the
# demangled set equals `named_parameters()` + the floating-point entries of
# `named_buffers()` for all of them.

_ACCESSOR_RE = re.compile(r"(?:^|_)(modules|parameters|buffers)_")

# `self.i2h` on a module that also carries a plain dict shows up as
# `l_self_dict_modules_i2h_...`; `dict` is an artifact of how the attribute
# was reached, not a real path component (33_VanillaRNN).
_NOISE_COMPONENTS = ("dict",)


def demangle_mim_name(raw):
    """mim `.ll` / `.mlir` argument name -> canonical torch state_dict name.

    Returns None for names that carry no attribute path (the model input
    `l_x_`, or genuinely anonymous SSA names like `%_353524`), which callers
    must treat as "not resolvable by name" rather than as an error.
    """
    if not raw:
        return None
    s = raw.lstrip("%")
    # The same argument is spelled two ways. The mim .ll uniques each name
    # with a numeric suffix ('..._parameters_weight__353262'); the mim .mlir
    # drops it and leaves the bare mangled name ('..._parameters_weight_').
    # Strip an optional '_<digits>' and then any trailing underscores, so
    # both spellings land on the same canonical name -- and so an attribute
    # that legitimately ends in a digit ('weight2') survives, which a
    # blanket '_*\d+$' strip would have mangled.
    s = re.sub(r"_\d+$", "", s)
    s = s.rstrip("_")
    if not s.startswith("l_self"):
        return None
    s = s[len("l_self") :].lstrip("_")
    if not s:
        return None

    matches = list(_ACCESSOR_RE.finditer(s))
    if not matches:
        # A plain tensor attribute reached directly off self, e.g.
        # `l_self_hidden` -> `hidden` (33_VanillaRNN's recurrent state).
        return s or None

    comps = []
    if matches[0].start() > 0:
        comps.append(s[: matches[0].start()])
    for i, m in enumerate(matches):
        end = matches[i + 1].start() if i + 1 < len(matches) else len(s)
        piece = s[m.end() : end]
        if piece:
            comps.append(piece)

    while comps and comps[0] in _NOISE_COMPONENTS:
        comps.pop(0)
    return ".".join(comps) if comps else None


def is_mim_forward_arg(raw):
    """True if a mim argument name is a `forward()` parameter rather than a
    piece of module state.

    mim names traced arguments after where they came from: module state is
    reached through `self` and so is always `l_self_...`, while a forward()
    parameter keeps its own name (`x` -> `l_x_`). That distinction is what
    identifies the model input, and it is far more reliable than guessing by
    shape: 33_VanillaRNN passes three [256, 16384] tensors -- an anonymous
    one, `self.hidden` and `x` -- so a shape-and-batch-size heuristic has no
    way to tell the input from the recurrent state, and picked wrong.
    """
    if not raw:
        return False
    s = raw.lstrip("%")
    return s.startswith("l_") and not s.startswith("l_self")


# --------------------------------------------------------------------------
# Roles and initialization
# --------------------------------------------------------------------------
#
# Random data is not free of semantics. `running_var` fed from
# `standard_normal` is negative about half the time, and eval-mode BatchNorm
# then evaluates sqrt() of a negative number: the model is mathematically
# undefined before any compiler sees it. What each pipeline reports after
# that is an accident of how its lowering happens to treat NaN -- the mim
# frontend lowers ReLU to `arith.maxnumf`, and `maxnumf(0, NaN)` returns 0,
# so mim quietly turns the NaN into a plausible-looking number while torch
# propagates it. Three models in this tree reported outright `nan`, and the
# rest disagreed for the same underlying reason.
#
# Unnormalized `standard_normal` weights are the second half of that problem:
# through a deep stack the activations grow without bound (11_VGG16 reached
# 1e19, 12_VGG19 1e24, 07_GoogleNetInceptionV1 1e29), which passes only
# because the tolerance is scale-relative and makes the comparison
# meaningless.
#
# So each slot is initialized according to what it *is*, chosen to keep
# activations O(1) through an arbitrarily deep stack while leaving every op
# non-degenerate (a pipeline that dropped a BN scale, a bias add or a
# normalization must still fail):
#
#   conv/linear weight  Kaiming-normal, std = sqrt(2 / fan_in) -- the
#                       variance-preserving choice for a ReLU stack
#   norm scale (gamma)  U(0.8, 1.2)   -- near 1, where training keeps it,
#                       but not exactly 1, so the multiply is observable
#   bias / beta         N(0, 0.1)     -- small, and observable
#   running_mean        N(0, 0.5)     -- plausible for unit-variance inputs
#   running_var         U(0.5, 1.5)   -- STRICTLY POSITIVE; this is the one
#                       that has to hold for BatchNorm to be defined at all

ROLE_WEIGHT = "weight"  # conv / linear weight, rank >= 2
ROLE_NORM_SCALE = "norm_scale"  # BatchNorm/LayerNorm gamma, rank 1
ROLE_BIAS = "bias"  # conv / linear bias, norm beta
ROLE_RUNNING_MEAN = "running_mean"
ROLE_RUNNING_VAR = "running_var"
ROLE_OTHER = "other"  # anything we cannot name; classified by rank alone

# Buffers torch keeps but no eval-mode graph reads, and which are integral so
# a float32 blob could not feed them anyway. They must never become a
# function argument or a blob slot.
NON_TENSOR_BUFFER_SUFFIXES = ("num_batches_tracked",)


def classify_role(canonical_name, dims):
    """Role of one blob slot, from its canonical name and shape."""
    rank = len(dims)
    leaf = canonical_name.rsplit(".", 1)[-1] if canonical_name else None

    if leaf == "running_mean":
        return ROLE_RUNNING_MEAN
    if leaf == "running_var":
        return ROLE_RUNNING_VAR
    if leaf == "weight":
        return ROLE_WEIGHT if rank >= 2 else ROLE_NORM_SCALE
    if leaf == "bias":
        return ROLE_BIAS
    # Unnamed or unrecognised: fall back to rank. A rank>=2 tensor is
    # weight-shaped and wants variance-preserving scaling; anything flatter
    # is bias-shaped and wants to stay small.
    return ROLE_OTHER


def init_array(role, dims, base, rng, np):
    """Draw one slot's values. `np` is passed in so this module stays
    importable without numpy (gen_drivers.py does not need it)."""
    dtype = {
        "float": np.float32,
        "double": np.float64,
        "half": np.float16,
        "i8": np.int8,
        "i16": np.int16,
        "i32": np.int32,
        "i64": np.int64,
    }[base]
    n = 1
    for d in dims:
        n *= d

    if not np.issubdtype(dtype, np.floating):
        info = np.iinfo(dtype)
        lo, hi = max(info.min, -128), min(info.max, 127)
        return rng.integers(low=lo, high=hi + 1, size=n, dtype=dtype), "integers"

    if role == ROLE_RUNNING_VAR:
        return rng.uniform(0.5, 1.5, size=n).astype(dtype), "uniform(0.5,1.5)"
    if role == ROLE_RUNNING_MEAN:
        return (rng.standard_normal(n) * 0.5).astype(dtype), "normal(0,0.5)"
    if role == ROLE_NORM_SCALE:
        return rng.uniform(0.8, 1.2, size=n).astype(dtype), "uniform(0.8,1.2)"
    if role == ROLE_BIAS:
        return (rng.standard_normal(n) * 0.1).astype(dtype), "normal(0,0.1)"

    # ROLE_WEIGHT, and ROLE_OTHER classified by rank.
    if role == ROLE_WEIGHT or (role == ROLE_OTHER and len(dims) >= 2):
        fan_in = 1
        for d in dims[1:]:
            fan_in *= d
        std = (2.0 / fan_in) ** 0.5 if fan_in > 0 else 1.0
        return (rng.standard_normal(n) * std).astype(dtype), (
            f"kaiming_normal(fan_in={fan_in},std={std:.4g})"
        )
    return (rng.standard_normal(n) * 0.1).astype(dtype), "normal(0,0.1)"


# --------------------------------------------------------------------------
# Manifest I/O
# --------------------------------------------------------------------------


def manifest_path(model_root, model_name):
    return os.path.join(model_root, f"{model_name}_params.json")


def write_manifest(path, manifest):
    with open(path, "w") as f:
        json.dump(manifest, f, indent=1)
        f.write("\n")


def load_manifest(path):
    """Read a manifest, or return None if it is absent."""
    if not os.path.exists(path):
        return None
    with open(path) as f:
        m = json.load(f)
    if m.get("version") != MANIFEST_VERSION:
        raise ValueError(
            f"{path}: manifest version {m.get('version')} != expected "
            f"{MANIFEST_VERSION} -- re-run gen_data.py --force"
        )
    return m


def find_manifest(model_root, model_name):
    return load_manifest(manifest_path(model_root, model_name))


def entries_by_name(manifest):
    """{canonical name: entry} for the named slots of a manifest.

    Slots whose name could not be demangled are excluded: they carry a
    synthetic `arg<N>` key that is only meaningful positionally.
    """
    return {
        e["name"]: e
        for e in manifest["entries"]
        if e.get("named", True)
    }


# --------------------------------------------------------------------------
# export_mlir.py's `<stem>.params.txt` manifest
# --------------------------------------------------------------------------
#
# torch-mlir names its arguments %arg0, %arg1, ... so the .mlir alone cannot
# say which blob slot each one wants. `export_mlir.py` writes the mapping
# alongside the graph:
#
#   func_name: m_8_ResNetBasicBlock
#   arg0: <model input 0>  shape=(10, 3, 224, 224)
#   arg1: conv1.weight  shape=(64, 3, 3, 3)  kind=param
#
# `import_torch_mlir.sh` copies it in next to the .mlir as
# `<Name>_mlir.params.txt`.

_PARAMS_TXT_RE = re.compile(
    r"^arg(?P<idx>\d+):\s+(?P<name>.*?)\s+shape=\((?P<shape>[^)]*)\)"
    r"(?:\s+kind=(?P<kind>\w+))?\s*$"
)


def parse_params_txt(path):
    """Parse an export_mlir.py argument manifest.

    Returns a list indexed by argument position, each entry either None (the
    model input) or {'name', 'dims', 'kind'}.
    """
    args = {}
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#") or line.startswith("func_name:"):
                continue
            m = _PARAMS_TXT_RE.match(line)
            if not m:
                continue
            idx = int(m.group("idx"))
            name = m.group("name").strip()
            shape = m.group("shape").strip()
            dims = [int(t.strip()) for t in shape.split(",") if t.strip()]
            if name.startswith("<model input"):
                args[idx] = None
            else:
                args[idx] = {
                    "name": name,
                    "dims": dims,
                    "kind": m.group("kind") or "param",
                }
    if not args:
        raise ValueError(f"{path}: no `argN:` lines found")
    n = max(args) + 1
    if sorted(args) != list(range(n)):
        raise ValueError(f"{path}: argument indices are not contiguous from 0")
    return [args[i] for i in range(n)]


def find_params_txt(mlir_path):
    """Locate the `.params.txt` that belongs to a given `.mlir`.

    Tries `<stem>.params.txt` next to it, then any single `*.params.txt` in
    the same directory (so `Foo_mlir.mlir` finds `Foo_mlir.params.txt`).
    """
    dirpath = os.path.dirname(mlir_path)
    stem = os.path.splitext(os.path.basename(mlir_path))[0]
    direct = os.path.join(dirpath, f"{stem}.params.txt")
    if os.path.exists(direct):
        return direct
    try:
        cands = sorted(
            fn for fn in os.listdir(dirpath) if fn.endswith(".params.txt")
        )
    except OSError:
        return None
    if len(cands) == 1:
        return os.path.join(dirpath, cands[0])
    return None
