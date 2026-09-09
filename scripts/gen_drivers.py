#!/usr/bin/env python3
"""
gen_drivers.py

Scan a directory tree for model variant folders (mim_llvm, mim_mlir_llvm,
mlir_llvm, mlir_mim_llvm, ...) containing LLVM IR (.ll) files, and generate
a matching C driver for each one that reads `<Name>_weights.bin` /
`<Name>_input.bin` (as produced by gen_random_data.py) in exactly the order
and layout that function's calling convention expects.

Two calling conventions are recognized:

  * "mim" style -- raw pointer arguments, either as a flat list of typed
    pointers to nested LLVM array types (e.g. MLP/AlexNet), or as a single
    struct-of-pointers argument (e.g. vgg16_mim.ll). Either way, the LLVM
    ABI flattens this into a sequence of plain pointer arguments, so the C
    driver declares the extern function with flat `float *` parameters
    (see the worked example in driver_mim.c) and shapes are read directly
    from the .ll's own (fully static) signature.

  * "mlir" style -- MLIR's convert-func-to-llvm output, where every memref
    argument is scalarized into (alloc ptr, aligned ptr, offset, sizes[R],
    strides[R]) and the top-level LLVM signature only contains generic
    `ptr`/`i64` types -- the compile-time shapes are NOT recoverable from
    this file alone. For these, the script locates a sibling "mim" style
    .ll for the *same model* (elsewhere in the model's directory tree) and
    borrows its shapes, matching parameters positionally (verified to hold
    for VGG16: both variants list x, w1, b1, ..., fc3w, fc3b in the same
    order). Strides are then computed as standard row-major contiguous
    strides, matching what MLIR itself would generate for freshly
    allocated tensors (see driver_torch_mlir.c).

Usage:
    python gen_drivers.py /path/to/models_root
    python gen_drivers.py /path/to/models_root --dry-run
    python gen_drivers.py /path/to/models_root --force
"""

import argparse
import os
import re
import sys

import param_manifest

# ---------------------------------------------------------------------------
# Shared LLVM type parsing (see also gen_random_data.py)
# ---------------------------------------------------------------------------

DEFINE_RE = re.compile(
    r"define\s+(?P<ret>.*?)\s+@(?P<name>[A-Za-z_][\w.]*)\s*\((?P<args>.*?)\)\s*\{",
    re.DOTALL,
)

ADDRSPACE_RE = re.compile(r"\baddrspace\(\d+\)\s*")


def strip_addrspace(s):
    return ADDRSPACE_RE.sub("", s)


def split_top_level(s, sep=","):
    """Split a string on `sep`, but only at bracket/brace depth 0."""
    parts = []
    depth = 0
    cur = []
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
    """Parse a (possibly nested) LLVM array type, e.g.
    '[128 x [16384 x float]]' -> ([128, 16384], 'float').
    A plain scalar type like 'float' -> ([], 'float')."""
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


def total_elems(dims):
    n = 1
    for d in dims:
        n *= d
    return n


def strip_name_suffix(param_str):
    """'[16384 x [16384 x float]]* %_96446' -> '[16384 x [16384 x float]]*'"""
    s = param_str.strip()
    m = re.match(r"^(.*?)\s+%\S+$", s)
    return m.group(1).strip() if m else s


def param_ssa_name(param_str):
    """'[64 x float]* %l_self_modules_bn1_buffers_running_mean__353946'
    -> 'l_self_modules_bn1_buffers_running_mean__353946', or None."""
    m = re.match(r"^.*?\s+%(\S+)$", param_str.strip())
    return m.group(1) if m else None


def parse_pointee_array(type_with_ptr):
    """Given a type string like '[16384 x [16384 x float]] addrspace(0)*'
    (trailing '%name' already stripped), strip addrspace/pointer and parse
    the pointee's array shape."""
    t = strip_addrspace(type_with_ptr).strip()
    t = t.rstrip("*").strip()
    return parse_array_type(t)


# ---------------------------------------------------------------------------
# MLIR (tensor/memref dialect) signature parsing
#
# Each `_llvm.ll` produced by mlir-translate from convert-func-to-llvm has a
# sibling ".mlir" file in the SAME directory (e.g. mlir_llvm/Foo_mlir.mlir,
# or mim_mlir_llvm/Foo_mim_mlir.mlir) holding the pre-lowering func.func with
# full static tensor/memref shapes, in the exact same argument order that
# convert-func-to-llvm preserves when it scalarizes each argument into its
# memref descriptor fields. Parsing that sibling file -- rather than
# borrowing shapes from an unrelated pipeline's raw .ll -- guarantees the
# shapes/order are correct for THIS specific .ll.
# ---------------------------------------------------------------------------

FUNC_FUNC_RE = re.compile(
    r"func\.func\s+(?:public\s+)?@(?P<name>[A-Za-z_][\w.$]*)\s*"
    r"\((?P<args>.*?)\)\s*(?:->\s*(?P<ret>[^\{]*?))?\s*\{",
    re.DOTALL,
)


def find_balanced(s, open_idx, open_ch="<", close_ch=">"):
    """s[open_idx] == open_ch; return index of the matching close_ch."""
    depth = 0
    i = open_idx
    while i < len(s):
        if s[i] == open_ch:
            depth += 1
        elif s[i] == close_ch:
            depth -= 1
            if depth == 0:
                return i
        i += 1
    raise ValueError(
        f"Unbalanced '{open_ch}{close_ch}' starting at {open_idx} in {s!r}"
    )


def split_top_level_generic(s, sep=","):
    """Split on `sep` at depth 0, tracking all of ()[]{}<> as nesting."""
    opens, closes = "([{<", ")]}>"
    parts = []
    depth = 0
    cur = []
    for ch in s:
        if ch in opens:
            depth += 1
        elif ch in closes:
            depth -= 1
        if ch == sep and depth == 0:
            parts.append("".join(cur))
            cur = []
        else:
            cur.append(ch)
    if cur:
        parts.append("".join(cur))
    return [p.strip() for p in parts if p.strip()]


def parse_mlir_shaped_type(type_str):
    """'tensor<96x3x11x11xf32>' or 'memref<96x3x11x11xf32, strided<...>>'
    -> ([96, 3, 11, 11], 'f32'). Raises if any dimension is dynamic ('?')."""
    s = type_str.strip()
    m = re.match(r"^(tensor|memref)\s*<", s)
    if not m:
        raise ValueError(f"Not a tensor/memref type: {s!r}")
    open_idx = m.end() - 1
    close_idx = find_balanced(s, open_idx, "<", ">")
    inner = s[open_idx + 1 : close_idx]
    # inner may be 'NxNx...xTYPE' optionally followed by ', strided<...>' etc.
    shape_and_type = split_top_level_generic(inner, sep=",")[0]
    tokens = shape_and_type.split("x")
    base = tokens[-1].strip()
    dims = []
    for t in tokens[:-1]:
        t = t.strip()
        if t == "?" or not t:
            raise ValueError(f"Dynamic/unknown dimension in type: {type_str!r}")
        dims.append(int(t))
    return dims, base


MLIR_BASE_TO_LLVM_BASE = {
    "f32": "float",
    "f64": "double",
    "f16": "half",
    "i8": "i8",
    "i16": "i16",
    "i32": "i32",
    "i64": "i64",
}


def parse_mlir_func_signature(text, expected_name=None):
    """Return (name, params, results) for the first matching func.func in
    `text`, where `params` and `results` are both lists of (dims, base) in
    declaration order. If expected_name is given, only a func.func with that
    exact name is considered.

    Each entry of `params` is (dims, base, arg_name). The name matters: the
    mim frontend's .mlir keeps the traced attribute path
    ('%l_self_modules_bn1_buffers_running_mean_'), which demangles straight
    to a canonical torch parameter name, whereas torch-mlir emits %arg0,
    %arg1, ... and needs its sibling .params.txt to recover the same
    information. See param_manifest.py.

    `results` has one entry per returned value. MLIR spells a single result
    bare (`-> tensor<...>`) and several results parenthesised
    (`-> (tensor<...>, tensor<...>)`); both forms are accepted. 33_VanillaRNN
    is the only model in this tree that returns more than one value -- an RNN
    handing back (hidden_state, output) -- and convert-func-to-llvm lowers
    that to a function returning a struct of one memref descriptor per
    result."""
    for m in FUNC_FUNC_RE.finditer(text):
        name = m.group("name")
        if expected_name is not None and name != expected_name:
            continue
        args_str = m.group("args") or ""
        ret_str = (m.group("ret") or "").strip()

        params = []
        for arg in split_top_level_generic(args_str, sep=","):
            # 'ARGNAME: TYPE' -- split on the first top-level ':'
            parts = arg.split(":", 1)
            if len(parts) != 2:
                raise ValueError(f"Could not parse mlir arg: {arg!r}")
            arg_name = parts[0].strip().lstrip("%")
            type_str = parts[1].strip()
            dims, base = parse_mlir_shaped_type(type_str)
            params.append(
                (dims, MLIR_BASE_TO_LLVM_BASE.get(base, base), arg_name)
            )

        # MLIR parenthesises a multi-result list and leaves a single result
        # bare, so strip one balanced outer paren pair to bring both
        # spellings to the same splitter.
        if ret_str.startswith("(") and find_balanced(
            ret_str, 0, "(", ")"
        ) == len(ret_str) - 1:
            ret_str = ret_str[1:-1].strip()

        results = []
        for ret_part in split_top_level_generic(ret_str, sep=","):
            dims, base = parse_mlir_shaped_type(ret_part)
            results.append((dims, MLIR_BASE_TO_LLVM_BASE.get(base, base)))

        return name, params, results

    raise ValueError(
        f"No matching func.func found"
        + (f" for @{expected_name}" if expected_name else "")
    )


def find_sibling_mlir_shape_source(ll_path, expected_name):
    """Look in the same directory as `ll_path` for a '*.mlir' file with a
    func.func @expected_name(...) and return a Signature built from it, or
    None if no such file / no parseable match is found. Prefers files that
    don't look like intermediate '*_lowered.mlir' dumps."""
    dirpath = os.path.dirname(ll_path)
    try:
        candidates = sorted(fn for fn in os.listdir(dirpath) if fn.endswith(".mlir"))
    except OSError:
        return None
    # Try non-"_lowered" files first (cleaner tensor-dialect signatures),
    # then fall back to "_lowered" ones.
    candidates.sort(key=lambda fn: ("_lowered" in fn, fn))

    decl_re = re.compile(
        r"func\.func\s+(?:public\s+)?@" + re.escape(expected_name) + r"\s*\("
    )
    for fn in candidates:
        path = os.path.join(dirpath, fn)
        try:
            with open(path) as f:
                text = f.read()
        except OSError:
            continue
        try:
            name, raw_params, results = parse_mlir_func_signature(
                text, expected_name=expected_name
            )
        except Exception as e:
            # A .mlir file that simply doesn't declare this function is not
            # interesting -- keep looking. One that DOES declare it but whose
            # signature we cannot parse is a gap in this script, and silently
            # dropping to the cross-pipeline fallback turns it into a
            # confusing rank mismatch much further downstream. That is exactly
            # how 33_VanillaRNN's multi-result signature presented: as
            # "param rank mismatch (mlir group rank 1 vs shape source rank 2)"
            # against an unrelated pipeline's argument order.
            if decl_re.search(text):
                print(
                    f"    WARNING: {path} declares @{expected_name} but its "
                    f"signature could not be parsed: {e}"
                )
            continue
        params = [
            Param(dims, base, arg_name=arg_name)
            for dims, base, arg_name in raw_params
        ]
        sig = Signature(name, params, results, style="mlir_source")
        sig.source_file = path
        sig.name_source, sig.unsupported = attach_canonical_names(params, path)
        return sig
    return None


def attach_canonical_names(params, mlir_path):
    """Fill in `param.canonical` for a .mlir-sourced signature.

    Two spellings have to be handled:

      * the mim frontend's .mlir keeps the traced attribute path as the
        argument name, so demangling it is enough;
      * torch-mlir names everything %arg0, %arg1, ... and carries the real
        names in the `.params.txt` manifest that export_mlir.py wrote and
        import_torch_mlir.sh copied in beside the graph.

    Returns (name_source, unsupported_reason). `name_source` is a short
    string describing where the names came from, for the generated driver's
    header comment. `unsupported_reason` is non-None when the artifact
    describes something this harness cannot bind at all -- and the caller
    must then REFUSE, not fall back to positional binding: a positional
    guess is exactly how the wrong weights got read in the first place.
    """
    for p in params:
        if param_manifest.is_mim_forward_arg(p.arg_name):
            p.role = "input"
    demangled = sum(1 for p in params if p.canonical)
    if demangled:
        return f"argument names in {os.path.basename(mlir_path)}", None

    ptxt = param_manifest.find_params_txt(mlir_path)
    if ptxt is None:
        return None, None
    try:
        args = param_manifest.parse_params_txt(ptxt)
    except Exception as e:
        print(f"    WARNING: could not parse {ptxt}: {e}")
        return None, None
    n_inputs = sum(1 for a in args if a is None)
    if n_inputs > 1:
        # The whole harness assumes one input tensor: gen_data.py writes a
        # single <Name>_input.bin and every driver passes a single `x`.
        # 33_VanillaRNN's forward() was (x, initial_hidden), so torch-mlir
        # declared two -- and the mim frontend exposed a third anonymous
        # tensor besides. Nothing here can bind that correctly, and guessing
        # is how it produced a driver that read one input out of weights.bin.
        # That model has been removed, but the check stays: it is what makes
        # the next multi-input model an error instead of wrong numbers.
        return None, (
            f"{os.path.basename(ptxt)} declares {n_inputs} model inputs, but "
            f"the harness supports exactly one (<Name>_input.bin). This model "
            f"needs multi-input support in gen_data.py and the driver "
            f"templates"
        )
    if len(args) != len(params):
        print(
            f"    WARNING: {os.path.basename(ptxt)} describes {len(args)} "
            f"arguments but {os.path.basename(mlir_path)} declares "
            f"{len(params)} -- ignoring the manifest"
        )
        return None, None
    for p, a in zip(params, args):
        if a is None:
            # export_mlir.py writes '<model input N>' for these. They come
            # from input.bin, not the blob, and this is the authoritative
            # statement of which argument that is.
            p.role = "input"
            continue
        n = 1
        for d in a["dims"]:
            n *= d
        if n != total_elems(p.dims):
            print(
                f"    WARNING: {os.path.basename(ptxt)} says arg for "
                f"'{a['name']}' holds {n} elements but the graph declares "
                f"{total_elems(p.dims)} -- ignoring the manifest"
            )
            return None, None
        p.canonical = a["name"]
    return os.path.basename(ptxt), None


# ---------------------------------------------------------------------------
# Top-level signature parsing / classification
# ---------------------------------------------------------------------------


class Param:
    __slots__ = (
        "dims",
        "base",
        "role",
        "cname",
        "arg_name",
        "canonical",
        "byte_offset",
    )

    def __init__(self, dims, base, arg_name=None):
        self.dims = dims
        self.base = base
        self.role = None  # 'input' | 'weight' | 'bias'
        self.cname = None  # e.g. 'x', 'w3', 'b3'
        # The argument's name in the source artifact, and the canonical torch
        # parameter name it demangles to. `canonical` is the join key against
        # <Name>_params.json; see param_manifest.py.
        self.arg_name = arg_name
        self.canonical = param_manifest.demangle_mim_name(arg_name)
        # Byte offset of this parameter inside weights.bin, from the
        # manifest. None means "not resolved by name" -- the driver then has
        # to read sequentially and hope, which is what this whole mechanism
        # exists to avoid.
        self.byte_offset = None


class Signature:
    def __init__(self, name, params, results, style, mlir_groups=None):
        self.name = name
        # Set on .mlir-sourced signatures: where the argument names that
        # `param.canonical` was derived from came from (the .mlir's own
        # argument names, or a sibling .params.txt).
        self.name_source = None
        # Non-None when the artifact describes something this harness cannot
        # bind at all (e.g. more than one model input). A refusal, never a
        # reason to guess positionally.
        self.unsupported = None
        self.params = params  # list[Param], in declaration order
        self.results = results  # list[(dims, base)], one per returned value
        self.style = style  # 'raw_flat' | 'raw_struct' | 'mlir_memref' | 'unknown'
        self.mlir_groups = (
            mlir_groups  # list of (start, end, rank) for mlir_memref style
        )

    # Every model in the tree returns exactly one value (33_VanillaRNN, whose
    # torch-mlir variant returned two, has been removed), so the
    # single-result view stays the convenient one: it is what assign_roles'
    # batch heuristic and the mim driver template both want. The
    # multi-result paths below are kept -- they are the only thing standing
    # between a two-output model and a driver that silently writes one.
    @property
    def return_dims(self):
        return self.results[0][0] if self.results else []

    @property
    def return_base(self):
        return self.results[0][1] if self.results else None


def extract_define(text, filename_hint=None):
    m = DEFINE_RE.search(text)
    if not m:
        raise ValueError(
            "Could not find a `define ... @Name(...) {` line"
            + (f" in {filename_hint}" if filename_hint else "")
        )
    return m.group("name"), m.group("ret").strip(), m.group("args")


def classify_arg_types(arg_type_strs):
    cleaned = [strip_addrspace(t).strip() for t in arg_type_strs]
    if len(cleaned) == 1 and cleaned[0].startswith("{"):
        return "raw_struct"
    if cleaned and all(t.startswith("[") for t in cleaned):
        return "raw_flat"
    if cleaned and all(t == "ptr" or re.match(r"^i\d+$", t) for t in cleaned):
        return "mlir_memref"
    return "unknown"


def parse_struct_fields(struct_type_str):
    """'{ TYPE, TYPE, ... }' -> list of field type strings (raw, untouched)."""
    s = struct_type_str.strip()
    assert s.startswith("{") and s.endswith("}"), f"Not a struct type: {s!r}"
    inner = s[1:-1].strip()
    return split_top_level(inner, sep=",")


def parse_memref_descriptor_rank(desc_str, filename_hint=None):
    """Rank of one convert-func-to-llvm memref descriptor, which looks like
    `{ ptr, ptr, i64, [R x i64], [R x i64] }` (sizes then strides)."""
    sizes = re.findall(r"\[(\d+)\s*x\s*i64\]", desc_str)
    if not sizes:
        return 0  # rank-0 memref: '{ ptr, ptr, i64 }'
    if len(sizes) != 2 or sizes[0] != sizes[1]:
        raise ValueError(
            f"Expected one sizes[] and one strides[] array of equal rank in "
            f"memref descriptor {desc_str!r} in {filename_hint}"
        )
    return int(sizes[0])


def parse_mlir_memref_return_ranks(ret_str, filename_hint=None):
    """Ranks of the memref descriptors in a convert-func-to-llvm return type.

    A single result comes back as a bare descriptor; several results come back
    as a struct OF descriptors, `{ {...}, {...} }`. This used to grab the
    first `[R x i64]` it could find anywhere in the type, which reads a
    2-result function as a single rank-R one -- silently, and that is how
    33_VanillaRNN's second output went unnoticed.
    """
    s = ret_str.strip()
    if not s.startswith("{"):
        raise ValueError(f"Could not parse mlir return type: {ret_str!r}")
    inner = s[1 : find_balanced(s, 0, "{", "}")]
    fields = split_top_level_generic(inner, sep=",")
    if fields and all(f.startswith("{") for f in fields):
        return [parse_memref_descriptor_rank(f, filename_hint) for f in fields]
    return [parse_memref_descriptor_rank(s, filename_hint)]


def parse_signature(text, filename_hint=None):
    name, ret_str, args_str = extract_define(text, filename_hint)
    raw_params = split_top_level(args_str)

    # Get each param's *type* (name stripped) for classification.
    arg_type_strs = [strip_name_suffix(p) for p in raw_params]
    style = classify_arg_types(arg_type_strs)

    results = []
    mlir_groups = None
    params = []

    if style == "raw_flat":
        for t, raw in zip(arg_type_strs, raw_params):
            dims, base = parse_pointee_array(t)
            p = Param(dims, base, arg_name=param_ssa_name(raw))
            # An argument mim named after a forward() parameter rather than
            # after module state is the model input. Saying so here means
            # assign_roles never has to guess -- and never has to guess
            # differently from gen_data.py, which is what put 33_VanillaRNN's
            # recurrent state in input.bin and its input in weights.bin.
            if param_manifest.is_mim_forward_arg(p.arg_name):
                p.role = "input"
            params.append(p)
        results = [parse_pointee_array(ret_str)]

    elif style == "raw_struct":
        # A struct-of-pointers argument carries no per-field names, so these
        # params cannot be identified by name and have to fall back to
        # positional binding against the manifest.
        fields = parse_struct_fields(arg_type_strs[0])
        for f in fields:
            dims, base = parse_pointee_array(f)
            params.append(Param(dims, base))
        results = [parse_pointee_array(ret_str)]

    elif style == "mlir_memref":
        types = arg_type_strs  # 'ptr' or 'iN', one per scalarized field
        groups = []
        i = 0
        n = len(types)
        while i < n:
            if types[i] != "ptr" or i + 1 >= n or types[i + 1] != "ptr":
                raise ValueError(
                    f"Unexpected mlir_memref layout at arg {i} in {filename_hint}"
                )
            j = i + 2
            if j >= n or types[j] != "i64":
                raise ValueError(f"Expected offset i64 at arg {j} in {filename_hint}")
            j += 1
            start = j
            while j < n and types[j] == "i64":
                j += 1
            total_i64 = j - start
            if total_i64 % 2 != 0:
                raise ValueError(
                    f"Odd number of size/stride i64 fields ({total_i64}) at "
                    f"arg {start} in {filename_hint}"
                )
            rank = total_i64 // 2
            groups.append((i, j, rank))
            params.append(
                Param(dims=[None] * rank, base="float")
            )  # dims filled in later
            i = j
        mlir_groups = groups

        # Return type: one memref descriptor per result -- see
        # parse_mlir_memref_return_ranks. Dims are not recoverable from the
        # scalarized .ll; they get filled in from the shape source later.
        results = [
            ([None] * rank, "float")
            for rank in parse_mlir_memref_return_ranks(ret_str, filename_hint)
        ]

    else:
        pass  # unknown -- leave params empty, caller will skip

    return Signature(name, params, results, style, mlir_groups)


# ---------------------------------------------------------------------------
# Input/weight role assignment (shared heuristic)
# ---------------------------------------------------------------------------


def drop_weight_bias_pairs(params, candidates):
    """Remove candidates that are provably a Linear/Conv WEIGHT, not the input.

    A multi-dimensional parameter immediately followed by a 1-D parameter whose
    length equals the multi-dim one's leading dimension is a (weight, bias)
    pair. The model input is never followed by its own bias, so any parameter
    in that shape can be ruled out.

    This exists because the size-based tie-break below cannot separate the
    input from a weight when they happen to have the SAME shape, and the two
    frontends order their arguments differently:

        torch-mlir:  (x, w1, b1, w2, b2, ...)      -- input first
        mim:         (w1, b1, x, w2, b2, ...)      -- input THIRD

    03_DeepNarrowMLP is configured with batch_size == hidden width == 1024 and
    input_size 8192, so `network.0.weight` is [1024, 8192] -- byte-for-byte the
    same shape as the input [1024, 8192]. Both tie on element count, `max()`
    returns the first, and on mim's ordering that is the WEIGHT at arg0 rather
    than the input at arg2. The generated driver then passed input.bin as
    network.0.weight and read weights.bin one slot out of phase from the very
    first layer, which is why mim_llvm and mim_mlir_llvm both produced garbage
    (max_diff/scale 2.83, top1 390/1024) while mlir_llvm passed at 1.8e-05.

    Ruling out weight/bias pairs leaves exactly the input on both orderings.
    Applied only when it leaves something behind, so it can never empty the
    candidate set.
    """
    kept = []
    for i in candidates:
        nxt = params[i + 1] if i + 1 < len(params) else None
        is_weight_of_pair = (
            len(params[i].dims) > 1
            and nxt is not None
            and len(nxt.dims) == 1
            and nxt.dims[0] == params[i].dims[0]
        )
        if not is_weight_of_pair:
            kept.append(i)
    return kept or candidates


def assign_roles(params, return_dims):
    """Mutates params in place: sets .role and .cname.

    A parameter already marked role=='input' by the signature parser -- mim
    named it after a forward() argument, or export_mlir.py's .params.txt
    said so outright -- is taken at its word. The shape heuristic below only
    runs when nothing in the artifact identifies the input, and it is not
    reliable on its own: 03_DeepNarrowMLP has a weight with exactly the
    input's shape, and 33_VanillaRNN passes three identically shaped
    tensors.
    """
    preset = [i for i, p in enumerate(params) if p.role == "input"]
    if preset:
        input_idx = max(preset, key=lambda i: total_elems(params[i].dims))
        return _finish_roles(params, input_idx)

    batch = return_dims[0] if return_dims else None

    candidates = [
        i
        for i, p in enumerate(params)
        if p.dims and p.dims[0] == batch and len(p.dims) > 1 and None not in p.dims
    ]
    if not candidates:
        candidates = [
            i
            for i, p in enumerate(params)
            if p.dims and p.dims[0] == batch and None not in p.dims
        ]
    if not candidates:
        candidates = [i for i in range(len(params)) if None not in params[i].dims]
    if not candidates:
        candidates = list(range(len(params)))

    candidates = drop_weight_bias_pairs(params, candidates)

    input_idx = max(
        candidates,
        key=lambda i: total_elems(params[i].dims) if None not in params[i].dims else -1,
    )
    return _finish_roles(params, input_idx)


def _finish_roles(params, input_idx):
    wc = 0
    bc = 0
    for i, p in enumerate(params):
        if i == input_idx:
            p.role = "input"
            p.cname = "x"
        elif len(p.dims) > 1:
            wc += 1
            p.role = "weight"
            p.cname = f"w{wc}"
        else:
            bc += 1
            p.role = "bias"
            p.cname = f"b{bc}"
    return input_idx


# ---------------------------------------------------------------------------
# Locating a "shape source" for mlir_memref-style signatures
# ---------------------------------------------------------------------------


def find_all_ll_files(root):
    for dirpath, _, filenames in os.walk(root):
        for fn in sorted(filenames):
            if fn.endswith(".ll"):
                yield os.path.join(dirpath, fn)


def build_shape_sources(root):
    """Return {model_name: Signature} for every model whose *some* .ll file
    has a self-contained (raw_flat / raw_struct) signature. Prefers files
    named '<Name>_mim.ll' living in a 'mim_llvm' directory."""
    sources = {}
    fallbacks = {}
    for ll_path in find_all_ll_files(root):
        try:
            with open(ll_path) as f:
                text = f.read()
            sig = parse_signature(text, filename_hint=ll_path)
        except Exception:
            continue
        if sig.style not in ("raw_flat", "raw_struct"):
            continue
        if None in [d for p in sig.params for d in p.dims]:
            continue
        is_canonical = (
            os.path.basename(os.path.dirname(ll_path)) == "mim_llvm"
            and os.path.basename(ll_path) == f"{sig.name}_mim.ll"
        )
        if is_canonical or sig.name not in sources:
            if is_canonical or sig.name not in fallbacks:
                fallbacks[sig.name] = sig
        if is_canonical:
            sources[sig.name] = sig
    for name, sig in fallbacks.items():
        sources.setdefault(name, sig)
    return sources


# ---------------------------------------------------------------------------
# Binding driver arguments to offsets in weights.bin
# ---------------------------------------------------------------------------


def find_model_root(ll_path):
    """The model directory a variant directory lives in: `.../08_X/mlir_llvm/
    Foo.ll` -> `.../08_X`. That is where gen_data.py puts the blob and its
    manifest."""
    return os.path.dirname(os.path.dirname(os.path.abspath(ll_path)))


def bind_to_manifest(params, manifest, model_name):
    """Give every non-input parameter its byte offset in weights.bin.

    Returns (mode, message):
      'by_name'    every slot was matched to a manifest entry by canonical
                   torch parameter name -- the only mode that is correct
                   regardless of how this frontend happens to order its
                   arguments.
      'by_name+index'
                   as above, except a few arguments that never had a name
                   were placed by declaration index, having first confirmed
                   this signature is the one the manifest was built from.
      'positional' no names were available, so offsets were assigned in
                   declaration order. Only accepted when the parameter count
                   and total element count agree with the manifest exactly,
                   which makes it plausible but still unverified.
      'error'      the two disagree in a way that would silently produce
                   garbage; the caller must not emit a driver.
    """
    weights = [p for p in params if p.role != "input"]
    entries = manifest["entries"]
    elem_size = manifest.get("weight_elem_size", 4)

    named = [p for p in weights if p.canonical]
    if named:
        by_index = {e["mim_index"]: e for e in entries}
        unnamed = [p for p in weights if not p.canonical]
        if unnamed:
            # Some artifacts mix the two: 33_VanillaRNN's mim signature
            # carries four demangleable parameter paths plus an anonymous
            # SSA argument (`%_353524`) that never had one. An unnamed slot
            # can still be placed -- but only by position, and only if this
            # signature really is the one the manifest was built from. That
            # holds exactly when every NAMED parameter already sits at the
            # declaration index the manifest recorded for it, so check that
            # before trusting position for the rest.
            in_mim_order = all(
                p.canonical is None
                or (
                    by_index.get(i) is not None
                    and by_index[i]["name"] == p.canonical
                )
                for i, p in enumerate(params)
            )
            if not in_mim_order:
                return (
                    "error",
                    f"{len(unnamed)} of {len(weights)} parameters have no "
                    f"recoverable name ({', '.join(p.cname for p in unnamed[:6])}) "
                    f"and this artifact's argument order is not the one "
                    f"{model_name}_params.json was built from, so they cannot "
                    f"be placed by position either",
                )
        by_name = param_manifest.entries_by_name(manifest)
        unknown = [
            p.canonical for p in weights if p.canonical and p.canonical not in by_name
        ]
        if unknown:
            return (
                "error",
                f"{len(unknown)} parameter(s) are not in "
                f"{model_name}_params.json ({', '.join(unknown[:6])}) -- the "
                f"blob and this artifact describe different models; re-run "
                f"gen_data.py --force after re-importing",
            )
        resolved = []
        for i, p in enumerate(params):
            if p.role == "input":
                continue
            e = by_name[p.canonical] if p.canonical else by_index.get(i)
            if e is None:
                return (
                    "error",
                    f"parameter {p.cname} (index {i}) has no name and no "
                    f"manifest slot at that index",
                )
            if e["count"] != total_elems(p.dims):
                return (
                    "error",
                    f"'{e['name']}' holds {total_elems(p.dims)} elements "
                    f"here but {e['count']} in the manifest",
                )
            p.canonical = p.canonical or e["name"]
            p.byte_offset = e["byte_offset"]
            resolved.append(e["name"])
        # Two arguments resolving to one slot would read the same weights
        # twice and leave another slot unread.
        if len(set(resolved)) != len(resolved):
            dup = sorted({n for n in resolved if resolved.count(n) > 1})
            return ("error", f"duplicate parameter name(s): {', '.join(dup)}")
        if len(resolved) != len(entries):
            return (
                "error",
                f"{len(resolved)} of {len(entries)} slots in "
                f"{model_name}_params.json were bound -- "
                f"{len(entries) - len(resolved)} would go unread",
            )
        mode = "by_name" if not unnamed else "by_name+index"
        return (mode, f"matched by name against {model_name}_params.json")

    # No names anywhere (a struct-of-pointers .ll, or a torch-mlir graph
    # imported without its .params.txt).
    if len(weights) != len(entries):
        return (
            "error",
            f"no argument names available, and positional binding is not "
            f"possible either: {len(weights)} weight parameters here vs "
            f"{len(entries)} slots in {model_name}_params.json",
        )
    total_here = sum(total_elems(p.dims) for p in weights)
    if total_here != manifest["total_floats"]:
        return (
            "error",
            f"no argument names available, and positional binding disagrees "
            f"on size: {total_here} elements here vs "
            f"{manifest['total_floats']} in {model_name}_params.json",
        )
    offset = 0
    for p in weights:
        p.byte_offset = offset * elem_size
        offset += total_elems(p.dims)
    return (
        "positional",
        f"NO argument names available -- offsets assigned in declaration "
        f"order. Counts and total size agree with {model_name}_params.json, "
        f"but the ORDER is unverified",
    )


def validate_input_against_manifest(params, manifest, model_name):
    """Check the parameter we think is the model input against the one
    gen_data.py actually wrote input.bin from.

    All three scripts have to agree on this, and they used to each re-derive
    it from shapes: 03_DeepNarrowMLP has a weight with exactly the input's
    shape, and 33_VanillaRNN passes three identically shaped tensors. Now
    gen_data.py records its decision and this just verifies it.
    """
    inp = [p for p in params if p.role == "input"]
    if len(inp) != 1:
        return f"expected exactly one input parameter, found {len(inp)}"
    want = manifest.get("input", {}).get("count")
    if want is None:
        return None
    got = total_elems(inp[0].dims)
    if got != want:
        return (
            f"the parameter picked as the input holds {got} elements but "
            f"{model_name}_input.bin holds {want} -- the input was "
            f"misidentified for this artifact"
        )
    return None


# ---------------------------------------------------------------------------
# C code generation -- "mim" style (raw_flat / raw_struct)
# ---------------------------------------------------------------------------


def row_major_strides(dims):
    strides = [1] * len(dims)
    for i in range(len(dims) - 2, -1, -1):
        strides[i] = strides[i + 1] * dims[i + 1]
    return strides


def c_read_floats_helper():
    """Weights are read at an explicit byte offset, never sequentially.

    The offsets come from <Name>_params.json, which names every slot in
    weights.bin. Sequential reads only work if this pipeline's argument
    order happens to equal the order gen_data.py wrote -- and it does not:
    the mim frontend takes BatchNorm's running_mean/running_var as arguments
    and puts the input third, torch-mlir puts the input first. Reading in
    declaration order made the torch-mlir drivers read `bn1.running_mean`
    into `bn1.weight` and slide 128 floats out of phase from the first
    BatchNorm onward. Seeking by name cannot drift.
    """
    return """static float *read_floats_at(FILE *f, long byte_offset, size_t n,
                             const char *what) {
  float *p = (float *)malloc(n * sizeof(float));
  if (!p) {
    fprintf(stderr, "out of memory reading %s (%zu floats)\\n", what, n);
    exit(1);
  }
  if (fseek(f, byte_offset, SEEK_SET) != 0) {
    fprintf(stderr, "seek to offset %ld for %s failed\\n", byte_offset, what);
    exit(1);
  }
  size_t got = fread(p, sizeof(float), n, f);
  if (got != n) {
    fprintf(stderr, "short read on %s at offset %ld: wanted %zu floats, got "
                    "%zu\\n", what, byte_offset, n, got);
    exit(1);
  }
  return p;
}

static float *read_floats(FILE *f, size_t n, const char *what) {
  float *p = (float *)malloc(n * sizeof(float));
  if (!p) {
    fprintf(stderr, "out of memory reading %s (%zu floats)\\n", what, n);
    exit(1);
  }
  size_t got = fread(p, sizeof(float), n, f);
  if (got != n) {
    fprintf(stderr, "short read on %s: wanted %zu floats, got %zu\\n", what, n,
            got);
    exit(1);
  }
  return p;
}

static int cmp_double(const void *a, const void *b) {
  double x = *(const double *)a, y = *(const double *)b;
  return (x > y) - (x < y);
}
"""


def c_timing_report_helper():
    """Shared helpers for both driver styles: a run-id (argv[5], or a
    UTC-timestamp generated if omitted -- this is what lets a driver be run
    standalone and still get a sensible, sortable id) and a JSON timing
    report (argv[6], or derived from the run-id if omitted) that a caller
    like reporter.py can read back after the process exits, rather than
    having to scrape stdout for timing numbers."""
    return """static void resolve_run_id(int argc, char **argv, char *buf, size_t buflen) {
  if (argc > 5) {
    snprintf(buf, buflen, "%s", argv[5]);
    return;
  }
  time_t now = time(NULL);
  struct tm tm_utc;
  gmtime_r(&now, &tm_utc);
  strftime(buf, buflen, "%Y%m%d_%H%M%S", &tm_utc);
}

static void print_json_string(FILE *f, const char *s) {
  fputc('"', f);
  for (const char *p = s; *p; p++) {
    if (*p == '"' || *p == '\\\\')
      fputc('\\\\', f);
    fputc(*p, f);
  }
  fputc('"', f);
}

static void write_timing_report(const char *json_path, const char *model,
                                 const char *pipeline, const char *run_id,
                                 const char *weights_path, const char *input_path,
                                 const char *output_path, int reps,
                                 double median_ns, double mean_ns, double min_ns,
                                 double max_ns) {
  FILE *jf = fopen(json_path, "w");
  if (!jf) {
    fprintf(stderr, "warning: failed to write timing report '%s': ", json_path);
    perror(NULL);
    return;
  }
  fprintf(jf, "{\\n  \\"model\\": ");
  print_json_string(jf, model);
  fprintf(jf, ",\\n  \\"pipeline\\": ");
  print_json_string(jf, pipeline);
  fprintf(jf, ",\\n  \\"run_id\\": ");
  print_json_string(jf, run_id);
  fprintf(jf, ",\\n  \\"weights_path\\": ");
  print_json_string(jf, weights_path);
  fprintf(jf, ",\\n  \\"input_path\\": ");
  print_json_string(jf, input_path);
  fprintf(jf, ",\\n  \\"output_path\\": ");
  print_json_string(jf, output_path);
  fprintf(jf, ",\\n  \\"reps\\": %d", reps);
  fprintf(jf, ",\\n  \\"median_ns\\": %.1f", median_ns);
  fprintf(jf, ",\\n  \\"mean_ns\\": %.1f", mean_ns);
  fprintf(jf, ",\\n  \\"min_ns\\": %.1f", min_ns);
  fprintf(jf, ",\\n  \\"max_ns\\": %.1f", max_ns);
  fprintf(jf, "\\n}\\n");
  fclose(jf);
  printf("wrote timing report to %s\\n", json_path);
  fflush(stdout);
}
"""


def c_fork_helpers():
    """Helpers that let each call to the model run in a forked child.

    Why: the mim frontend's generated code allocates every intermediate
    buffer and never frees one -- 0 `free` calls in *_mim.ll, against 28 in
    the MLIR path, which gets them from --buffer-deallocation-pipeline.
    Those buffers are internal temporaries; the driver holds no pointer to
    them, so no amount of `free` here can reach them. Measured per call:
    GoogleNetInceptionModule 5.52 GiB, AlexNet 7.79 GiB. At --reps 10 (11
    calls, counting warm-up) GoogleNet needed ~71 GiB and was killed by the
    OOM killer at 32.4 GiB; AlexNet died the same way.

    Forking bounds peak memory at ONE call's worth regardless of reps,
    because the kernel reclaims the child's whole address space on _exit.
    """
    return """/* --- per-call process isolation; see c_fork_helpers() in gen_drivers.py ---
 * Each call to the model runs in a forked child, so the leak of its
 * internal intermediates cannot accumulate across reps. Weights and input
 * are inherited copy-on-write and are NOT duplicated. Elapsed times come
 * back through a shared anonymous mapping, and the final rep's child writes
 * the output file itself so the result never has to cross the process
 * boundary.
 *
 * Set DRIVER_NO_FORK=1 to run every call in-process instead -- the previous
 * behaviour, for A/B or for profilers that dislike fork.
 */
static int driver_fork_enabled(void) {
  const char *e = getenv("DRIVER_NO_FORK");
  return !(e && e[0] && e[0] != '0');
}

static double *alloc_shared_times(int reps) {
  size_t n = (size_t)reps * sizeof(double);
  void *p = mmap(NULL, n, PROT_READ | PROT_WRITE,
                 MAP_SHARED | MAP_ANONYMOUS, -1, 0);
  if (p == MAP_FAILED) {
    perror("mmap for shared timing buffer");
    exit(1);
  }
  return (double *)p;
}

static void await_child(pid_t pid, const char *what) {
  int st = 0;
  if (waitpid(pid, &st, 0) < 0) {
    perror("waitpid");
    exit(1);
  }
  if (WIFSIGNALED(st)) {
    int s = WTERMSIG(st);
    fprintf(stderr, "%s: child killed by signal %d\\n", what, s);
    if (s == SIGKILL)
      fprintf(stderr,
              "  SIGKILL almost always means the OOM killer. This model "
              "leaks several GiB\\n  per call inside the generated code; a "
              "single call already exceeds free RAM.\\n  Forking bounds the "
              "leak to one call, so it cannot help beyond that.\\n");
    exit(1);
  }
  if (!WIFEXITED(st) || WEXITSTATUS(st) != 0) {
    fprintf(stderr, "%s: child exited with status %d\\n", what,
            WIFEXITED(st) ? WEXITSTATUS(st) : -1);
    exit(1);
  }
}

static void release_times(double *times, int reps, int forked) {
  if (forked)
    munmap(times, (size_t)reps * sizeof(double));
  else
    free(times);
}
"""


def generate_mim_driver(sig, input_idx, variant_name):
    name = sig.name
    params = sig.params
    out_dims = sig.return_dims
    out_count = total_elems(out_dims)

    extern_args = ", ".join(f"float *{p.cname}" for p in params)
    call_args = ", ".join(p.cname for p in params)

    count_decls = "\n".join(
        f"static const size_t {p.cname}_count = {total_elems(p.dims)};" for p in params
    )

    read_calls = []
    for p in params:
        if p.role == "input":
            continue
        read_calls.append(
            f'  float *{p.cname} = read_floats_at(wf, {p.byte_offset}, '
            f'{p.cname}_count, "{p.cname}");'
        )
    read_weights_block = "\n".join(read_calls)

    shape_comment_lines = "\n".join(
        f" * {p.cname}: shape {p.dims} ({p.role})"
        + (
            ""
            if p.role == "input"
            else f" <- {p.canonical or '?'} @ byte {p.byte_offset}"
        )
        for p in params
    )

    src = f"""#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

/* Auto-generated driver for `{name}` ("mim" raw-pointer calling convention).
 * Generated by gen_drivers.py -- do not hand-edit.
 *
 * Parameter shapes (in declaration order):
{shape_comment_lines}
 * output: shape {out_dims}
 *
 * The LLVM signature may declare this as a single struct-of-pointers
 * argument or as separate pointer arguments -- either way the SysV x86-64
 * ABI (for a non-`byval` aggregate, or for separate scalar pointer args)
 * flattens it into one pointer per calling-convention slot in order, so a
 * flat `float *` extern declaration reproduces the real calling convention
 * with no translation layer.
 *
 * Usage: {name}_driver_mim <weights> <input> <reps> <output> [run_id] [json_report]
 * run_id/json_report default to a generated UTC timestamp / a filename
 * derived from it if omitted -- pass the same run_id across every model
 * and pipeline in one batch (e.g. from reporter.py) to correlate their
 * timing reports.
 */
extern float *{name}({extern_args});

{count_decls}
static const size_t OUT_COUNT = {out_count};

{c_read_floats_helper()}
{c_timing_report_helper()}
{c_fork_helpers()}
static void write_result(float *out, const char *output_path) {{
  printf("writing output to %s...\\n", output_path);
  fflush(stdout);
  FILE *of = fopen(output_path, "wb");
  if (!of) {{
    fprintf(stderr, "failed to open output file '%s': ", output_path);
    perror(NULL);
    exit(1);
  }}
  size_t wrote = fwrite(out, sizeof(float), OUT_COUNT, of);
  fclose(of);
  if (wrote != OUT_COUNT) {{
    fprintf(stderr, "short write on output: wanted %zu floats, wrote %zu\\n",
            OUT_COUNT, wrote);
    exit(1);
  }}
  free(out);
}}

int main(int argc, char **argv) {{
  printf("reading weights...\\n");
  fflush(stdout);
  const char *weights_path = argc > 1 ? argv[1] : "weights.bin";
  const char *input_path = argc > 2 ? argv[2] : "input.bin";
  int reps = argc > 3 ? atoi(argv[3]) : 5;
  const char *output_path = argc > 4 ? argv[4] : "output_mim.bin";

  char run_id_buf[64];
  resolve_run_id(argc, argv, run_id_buf, sizeof(run_id_buf));
  const char *run_id = run_id_buf;

  char json_path_buf[512];
  const char *json_report_path;
  if (argc > 6) {{
    json_report_path = argv[6];
  }} else {{
    snprintf(json_path_buf, sizeof(json_path_buf), "{name}_{variant_name}_%s_timing.json", run_id);
    json_report_path = json_path_buf;
  }}

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {{
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }}

{read_weights_block}
  fclose(wf);

  printf("weights loaded.\\n");
  fflush(stdout);

  printf("reading input...\\n");
  fflush(stdout);
  FILE *xf = fopen(input_path, "rb");
  if (!xf) {{
    fprintf(stderr, "failed to open input file '%s': ", input_path);
    perror(NULL);
    return 1;
  }}
  float *x = read_floats(xf, x_count, "x");
  fclose(xf);

  printf("input loaded.\\n");
  fflush(stdout);
  const int use_fork = driver_fork_enabled();
  double *times = use_fork ? alloc_shared_times(reps)
                           : (double *)malloc(reps * sizeof(double));
  printf("call isolation: %s\\n", use_fork ? "fork per call" : "in-process (DRIVER_NO_FORK)");

  printf("start warm-up (1 call)...\\n");
  fflush(stdout);
  if (use_fork) {{
    fflush(NULL);
    pid_t p = fork();
    if (p < 0) {{ perror("fork"); return 1; }}
    if (p == 0) {{
      float *out = {name}({call_args});
      free(out);
      _exit(0);
    }}
    await_child(p, "warm-up");
  }} else {{
    float *out = {name}({call_args});
    free(out);
  }}
  printf("warm-up done.\\n");
  fflush(stdout);
  printf("start timed reps...\\n");
  fflush(stdout);
  float *out = NULL;
  for (int i = 0; i < reps; i++) {{
    const int is_last = (i == reps - 1);
    if (use_fork) {{
      fflush(NULL);
      pid_t p = fork();
      if (p < 0) {{ perror("fork"); return 1; }}
      if (p == 0) {{
        struct timespec t0, t1;
        clock_gettime(CLOCK_MONOTONIC, &t0);
        float *cur = {name}({call_args});
        clock_gettime(CLOCK_MONOTONIC, &t1);
        times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                   (double)(t1.tv_nsec - t0.tv_nsec);
        /* The last rep's child owns writing the result -- that keeps the
           output buffer from having to cross the process boundary.
           write_result() frees `cur`. */
        if (is_last)
          write_result(cur, output_path);
        _exit(0);
      }}
      await_child(p, "timed rep");
    }} else {{
      struct timespec t0, t1;
      clock_gettime(CLOCK_MONOTONIC, &t0);
      float *cur = {name}({call_args});
      clock_gettime(CLOCK_MONOTONIC, &t1);
      times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                 (double)(t1.tv_nsec - t0.tv_nsec);
      if (out)
        free(out);
      out = cur;
    }}
  }}
  printf("finish timed reps...\\n");
  fflush(stdout);

  if (!use_fork)
    write_result(out, output_path);

  qsort(times, reps, sizeof(double), cmp_double);
  double sum = 0;
  for (int i = 0; i < reps; i++)
    sum += times[i];

  printf("pipeline=mim->llvm weights=%s input=%s reps=%d median_ns=%.1f "
         "mean_ns=%.1f min_ns=%.1f max_ns=%.1f\\n",
         weights_path, input_path, reps, times[reps / 2], sum / reps, times[0],
         times[reps - 1]);

  write_timing_report(json_report_path, "{name}", "{variant_name}", run_id,
                       weights_path, input_path, output_path, reps,
                       times[reps / 2], sum / reps, times[0], times[reps - 1]);

  free(x);
  release_times(times, reps, use_fork);
  return 0;
}}
"""
    return src


# ---------------------------------------------------------------------------
# C code generation -- "mlir" style (scalarized memref descriptors)
# ---------------------------------------------------------------------------


def generate_mlir_driver(sig, shape_sig, input_idx, variant_name, source_desc=None):
    """sig: Signature parsed from THIS .ll (has correct arg ptr/i64 layout
    and mlir_groups, but no dims). shape_sig: canonical Signature (same
    model) supplying real dims, positionally matched. source_desc: a short
    human-readable description of where shape_sig came from, for the
    generated comment header."""
    name = sig.name
    if len(sig.params) != len(shape_sig.params):
        raise ValueError(
            f"{name}: mlir signature has {len(sig.params)} memref groups but "
            f"shape source has {len(shape_sig.params)} params -- cannot match"
        )

    # Copy dims/role/cname from the canonical shape source onto our params,
    # positionally, and sanity-check the rank agrees.
    for p, sp, (start, end, rank) in zip(sig.params, shape_sig.params, sig.mlir_groups):
        if len(sp.dims) != rank:
            raise ValueError(
                f"{name}: param rank mismatch (mlir group rank {rank} vs "
                f"shape source rank {len(sp.dims)})"
            )
        p.dims = sp.dims
        p.role = sp.role
        p.cname = sp.cname
        p.arg_name = sp.arg_name
        p.canonical = sp.canonical
        p.byte_offset = sp.byte_offset

    if not shape_sig.results:
        raise ValueError(f"{name}: shape source has no return value")
    if sig.results and len(sig.results) != len(shape_sig.results):
        raise ValueError(
            f"{name}: return count mismatch (mlir returns {len(sig.results)} "
            f"value(s) vs shape source {len(shape_sig.results)})"
        )
    for i, ((ll_dims, _), (src_dims, _)) in enumerate(
        zip(sig.results, shape_sig.results)
    ):
        if len(ll_dims) != len(src_dims):
            raise ValueError(
                f"{name}: return {i} rank mismatch (mlir {len(ll_dims)} vs "
                f"shape source {len(src_dims)})"
            )
    out_dims_list = [dims for dims, _ in shape_sig.results]
    out_ranks = [len(d) for d in out_dims_list]
    out_rank = out_ranks[0]
    nres = len(out_ranks)
    multi_out = nres > 1

    # convert-func-to-llvm returns one memref descriptor per result. A single
    # result comes back as that descriptor directly -- so single-result models
    # keep using the bare memrefRd they always did, and their generated
    # drivers are unchanged -- while several results come back packed into a
    # struct, in declaration order, which needs its own C type.
    if multi_out:
        result_t = f"{name}_result"
        result_typedef = (
            "\ntypedef struct {\n"
            + "".join(f"  memref{r}d r{i};\n" for i, r in enumerate(out_ranks))
            + f"}} {result_t};"
        )
    else:
        result_t = f"memref{out_rank}d"
        result_typedef = ""

    def free_results(var, indent):
        """Each result owns its own allocation, so every one has to be freed."""
        if multi_out:
            return "\n".join(f"{indent}free({var}.r{i}.alloc);" for i in range(nres))
        return f"{indent}free({var}.alloc);"

    free_out_4 = free_results("out", " " * 4)
    free_out_6 = free_results("out", " " * 6)
    free_out_8 = free_results("out", " " * 8)
    free_cur_10 = free_results("cur", " " * 10)

    # All results are written to the single <output> file back-to-back in
    # THIS function's own declaration order, which is the only order
    # recoverable from this .ll.
    #
    # Do NOT assume that makes the file comparable with another pipeline's
    # output for the same model. 33_VanillaRNN (since removed from this tree)
    # was the counter-example: the mim frontend flattened its two outputs as
    # [out, new_hidden] while torch-mlir declared them (hidden, out), so the
    # two pipelines' buffers disagreed in both order and content no matter
    # what this driver did. Reconciling that is a model-source problem, not a
    # driver one.
    if multi_out:
        per_result = "\n".join(
            f"  size_t n{i} = 1;\n"
            f"  for (int i = 0; i < {r}; i++)\n"
            f"    n{i} *= (size_t)out.r{i}.sizes[i];\n"
            f"  wrote += fwrite(out.r{i}.aligned, sizeof(float), n{i}, of);\n"
            f"  n_out += n{i};"
            for i, r in enumerate(out_ranks)
        )
        write_body = "  size_t n_out = 0, wrote = 0;\n" + per_result
        totals = " + ".join(str(total_elems(d)) for d in out_dims_list)
        out_comment = (
            "\n".join(
                f" * output {i}: shape {d}" for i, d in enumerate(out_dims_list)
            )
            + f"\n * All {nres} results are written to <output> back-to-back in this"
            + f"\n * function's declaration order ({totals} ="
            + f" {sum(total_elems(d) for d in out_dims_list)} floats). That order"
            + f"\n * comes from this .ll alone -- do not assume another pipeline's"
            + f"\n * output file for this model uses the same layout."
        )
    else:
        write_body = (
            "  size_t n_out = 1;\n"
            f"  for (int i = 0; i < {out_rank}; i++)\n"
            "    n_out *= (size_t)out.sizes[i];\n"
            "  size_t wrote = fwrite(out.aligned, sizeof(float), n_out, of);"
        )
        out_comment = f" * output: shape {out_dims_list[0]}"

    input_p = next(p for p in sig.params if p.role == "input")

    # Distinct ranks needing a memrefRd typedef (params + results).
    ranks_needed = sorted({len(p.dims) for p in sig.params} | set(out_ranks))
    typedefs = "\n".join(
        f"typedef struct {{\n"
        f"  float *alloc, *aligned;\n"
        f"  int64_t offset;\n"
        f"  int64_t sizes[{r}];\n"
        f"  int64_t strides[{r}];\n"
        f"}} memref{r}d;"
        for r in ranks_needed
    )

    # Extern parameter list -- must exactly mirror this .ll's own scalarized
    # signature (types/order), using our derived names for readability.
    extern_parts = []
    for p, (start, end, rank) in zip(sig.params, sig.mlir_groups):
        extern_parts.append(f"float *{p.cname}_a")
        extern_parts.append(f"float *{p.cname}_al")
        extern_parts.append(f"int64_t {p.cname}_off")
        for k in range(rank):
            extern_parts.append(f"int64_t {p.cname}_s{k}")
        for k in range(rank):
            extern_parts.append(f"int64_t {p.cname}_st{k}")
    extern_args = ",\n    ".join(extern_parts)

    # Call-site literal arguments (alloc==aligned==the loaded buffer, offset
    # 0, sizes from the canonical shape, row-major contiguous strides).
    call_parts = []
    for p in sig.params:
        strides = row_major_strides(p.dims)
        call_parts.append(f"{p.cname}, {p.cname}, 0")
        call_parts.append(", ".join(str(d) for d in p.dims))
        call_parts.append(", ".join(str(s) for s in strides))
    call_args = ",\n        ".join(call_parts)

    count_decls = "\n".join(
        f"static const size_t {p.cname}_count = {total_elems(p.dims)};"
        for p in sig.params
    )

    read_calls = "\n".join(
        f'  float *{p.cname} = read_floats_at(wf, {p.byte_offset}, '
        f'{p.cname}_count, "{p.cname}");'
        for p in sig.params
        if p.role != "input"
    )

    shape_comment_lines = "\n".join(
        f" * {p.cname}: shape {p.dims} ({p.role})"
        + (
            ""
            if p.role == "input"
            else f" <- {p.canonical or '?'} @ byte {p.byte_offset}"
        )
        for p in sig.params
    )

    src = f"""#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

/* Auto-generated driver for `{name}` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from {source_desc or shape_sig.name}
 * -- which is a file for THIS pipeline, so its argument order matches
 * one-for-one what convert-func-to-llvm scalarized. Each weight's location
 * in weights.bin is its byte offset from {shape_sig.name}_params.json,
 * looked up by canonical torch parameter name:
{shape_comment_lines}
{out_comment}
 *
 * Usage: {name}_driver_mlir <weights> <input> <reps> <output> [run_id] [json_report]
 * run_id/json_report default to a generated UTC timestamp / a filename
 * derived from it if omitted -- pass the same run_id across every model
 * and pipeline in one batch (e.g. from reporter.py) to correlate their
 * timing reports.
 */

{typedefs}{result_typedef}

extern {result_t} {name}(
    {extern_args});

{count_decls}

{c_read_floats_helper()}
{c_timing_report_helper()}
{c_fork_helpers()}
static void write_result({result_t} out, const char *output_path) {{
  printf("writing output to %s...\\n", output_path);
  fflush(stdout);
  FILE *of = fopen(output_path, "wb");
  if (!of) {{
    fprintf(stderr, "failed to open output file '%s': ", output_path);
    perror(NULL);
    exit(1);
  }}
{write_body}
  fclose(of);
  if (wrote != n_out) {{
    fprintf(stderr, "short write on output: wanted %zu floats, wrote %zu\\n",
            n_out, wrote);
    exit(1);
  }}
}}

int main(int argc, char **argv) {{
  printf("reading weights...\\n");
  fflush(stdout);
  const char *weights_path = argc > 1 ? argv[1] : "weights.bin";
  const char *input_path = argc > 2 ? argv[2] : "input.bin";
  int reps = argc > 3 ? atoi(argv[3]) : 5;
  const char *output_path = argc > 4 ? argv[4] : "output_torchmlir.bin";

  char run_id_buf[64];
  resolve_run_id(argc, argv, run_id_buf, sizeof(run_id_buf));
  const char *run_id = run_id_buf;

  char json_path_buf[512];
  const char *json_report_path;
  if (argc > 6) {{
    json_report_path = argv[6];
  }} else {{
    snprintf(json_path_buf, sizeof(json_path_buf), "{name}_{variant_name}_%s_timing.json", run_id);
    json_report_path = json_path_buf;
  }}

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {{
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }}

{read_calls}
  fclose(wf);

  printf("weights loaded.\\n");
  fflush(stdout);

  printf("reading input...\\n");
  fflush(stdout);
  FILE *xf = fopen(input_path, "rb");
  if (!xf) {{
    fprintf(stderr, "failed to open input file '%s': ", input_path);
    perror(NULL);
    return 1;
  }}
  float *{input_p.cname} = read_floats(xf, {input_p.cname}_count, "{input_p.cname}");
  fclose(xf);

  printf("input loaded.\\n");
  fflush(stdout);
  const int use_fork = driver_fork_enabled();
  double *times = use_fork ? alloc_shared_times(reps)
                           : (double *)malloc(reps * sizeof(double));
  printf("call isolation: %s\\n", use_fork ? "fork per call" : "in-process (DRIVER_NO_FORK)");

  printf("start warm-up (1 call)...\\n");
  fflush(stdout);
  if (use_fork) {{
    fflush(NULL);
    pid_t p = fork();
    if (p < 0) {{ perror("fork"); return 1; }}
    if (p == 0) {{
      {result_t} out = {name}(
          {call_args});
{free_out_6}
      _exit(0);
    }}
    await_child(p, "warm-up");
  }} else {{
    {result_t} out = {name}(
        {call_args});
{free_out_4}
  }}
  printf("warm-up done.\\n");
  fflush(stdout);
  printf("start timed reps...\\n");
  fflush(stdout);
  int keep_out = 0;
  {result_t} out;
  for (int i = 0; i < reps; i++) {{
    const int is_last = (i == reps - 1);
    if (use_fork) {{
      fflush(NULL);
      pid_t p = fork();
      if (p < 0) {{ perror("fork"); return 1; }}
      if (p == 0) {{
        struct timespec t0, t1;
        clock_gettime(CLOCK_MONOTONIC, &t0);
        {result_t} cur = {name}(
            {call_args});
        clock_gettime(CLOCK_MONOTONIC, &t1);
        times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                   (double)(t1.tv_nsec - t0.tv_nsec);
        /* The last rep's child owns writing the result, so the output
           buffer never has to cross the process boundary. */
        if (is_last) {{
          write_result(cur, output_path);
{free_cur_10}
        }}
        _exit(0);
      }}
      await_child(p, "timed rep");
    }} else {{
      struct timespec t0, t1;
      clock_gettime(CLOCK_MONOTONIC, &t0);
      {result_t} cur = {name}(
          {call_args});
      clock_gettime(CLOCK_MONOTONIC, &t1);
      times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                 (double)(t1.tv_nsec - t0.tv_nsec);
      if (keep_out)
{free_out_8}
      out = cur;
      keep_out = 1;
    }}
  }}
  printf("finish timed reps...\\n");
  fflush(stdout);

  if (!use_fork) {{
    write_result(out, output_path);
{free_out_4}
  }}

  qsort(times, reps, sizeof(double), cmp_double);
  double sum = 0;
  for (int i = 0; i < reps; i++)
    sum += times[i];

  printf("pipeline=mlir->llvm weights=%s input=%s reps=%d median_ns=%.1f "
         "mean_ns=%.1f min_ns=%.1f max_ns=%.1f\\n",
         weights_path, input_path, reps, times[reps / 2], sum / reps, times[0],
         times[reps - 1]);

  write_timing_report(json_report_path, "{name}", "{variant_name}", run_id,
                       weights_path, input_path, output_path, reps,
                       times[reps / 2], sum / reps, times[0], times[reps - 1]);

  free({input_p.cname});
  release_times(times, reps, use_fork);
  return 0;
}}
"""
    return src


# ---------------------------------------------------------------------------
# Main driver
# ---------------------------------------------------------------------------


def resolve_blob_layout(ll_path, params, model_name, name_source=None):
    """Load this model's weight manifest and bind `params` to it.

    Returns (ok, note). `ok` False means no driver should be written: the
    artifact and the blob disagree about the model, and a driver built on
    that would read plausible-looking garbage.
    """
    model_root = find_model_root(ll_path)
    try:
        manifest = param_manifest.find_manifest(model_root, model_name)
    except Exception as e:
        print(f"    ERROR: {e}")
        return False, None
    if manifest is None:
        print(
            f"    ERROR: no {model_name}_params.json in {model_root} -- run "
            f"gen_data.py first (it writes the manifest alongside the blob)"
        )
        return False, None

    problem = validate_input_against_manifest(params, manifest, model_name)
    if problem:
        print(f"    ERROR: {problem}")
        return False, None

    mode, message = bind_to_manifest(params, manifest, model_name)
    if mode == "error":
        print(f"    ERROR: {message}")
        return False, None
    if mode == "positional":
        print(f"    WARNING: {message}")
    if name_source:
        message = f"{message} (names from {name_source})"
    return True, message


def warn_stale_driver(out_path):
    """Refusing to regenerate a driver leaves whatever is already on disk,
    and compile_all.sh will happily build that. A driver generated against a
    different blob layout is precisely the silent-garbage failure this
    mechanism exists to prevent, so say so unmistakably."""
    if os.path.exists(out_path):
        print(
            f"    *** STALE DRIVER LEFT IN PLACE: {out_path}\n"
            f"    *** It was generated against a different weights.bin layout "
            f"and will read the wrong weights.\n"
            f"    *** compile_all.sh will still build it -- delete it, or fix "
            f"the cause above and re-run with --force."
        )


def process_file(ll_path, shape_sources, dry_run=False, force=False):
    with open(ll_path) as f:
        text = f.read()

    sig = parse_signature(text, filename_hint=ll_path)
    dirpath = os.path.dirname(ll_path)
    variant_name = os.path.basename(dirpath)

    if sig.style == "unknown":
        print(f"[SKIP] {ll_path}: unrecognized calling convention")
        return

    if sig.style in ("raw_flat", "raw_struct"):
        if None in [d for p in sig.params for d in p.dims]:
            print(f"[SKIP] {ll_path}: could not fully parse parameter shapes")
            return
        input_idx = assign_roles(sig.params, sig.return_dims)
        style_tag = "mim"
        out_path = os.path.join(dirpath, f"{sig.name}_driver_{style_tag}.c")
        print(f"[{sig.name}] {ll_path}  (style={sig.style})")
        ok, note = resolve_blob_layout(ll_path, sig.params, sig.name)
        if not ok:
            warn_stale_driver(out_path)
            print(f"[SKIP] {ll_path}: cannot bind weights.bin")
            return
        print(f"    weights: {note}")
        for p in sig.params:
            loc = "input.bin" if p.role == "input" else f"@{p.byte_offset}"
            print(
                f"    {p.cname:>5} [{p.role:>6}] : {str(p.dims):<22} "
                f"{loc:>12}  {p.canonical or ''}"
            )
        if dry_run:
            print(f"    -> (dry-run) would write {out_path}")
            return
        if not force and os.path.exists(out_path):
            print(f"    -> SKIP (already exists; use --force to overwrite)")
            return
        src = generate_mim_driver(sig, input_idx, variant_name)

    elif sig.style == "mlir_memref":
        shape_sig = find_sibling_mlir_shape_source(ll_path, sig.name)
        source_kind = "sibling .mlir"
        if shape_sig is None:
            # Fall back to a same-model raw-pointer .ll from elsewhere in
            # the tree. This assumes that pipeline's argument order matches
            # this one, which is NOT guaranteed across independent
            # pipelines (e.g. a torch-mlir frontend vs. the mim frontend)
            # -- only use this as a last resort, and say so loudly.
            shape_sig = shape_sources.get(sig.name)
            source_kind = "cross-pipeline raw .ll (unverified order!)"
        if shape_sig is None:
            print(
                f"[SKIP] {ll_path}: mlir-style signature but no sibling .mlir "
                f"and no raw-pointer .ll found to source shapes for '{sig.name}'"
            )
            return
        style_tag = "mlir"
        out_path = os.path.join(dirpath, f"{sig.name}_driver_{style_tag}.c")
        try:
            if any(p.role is None for p in shape_sig.params):
                assign_roles(shape_sig.params, shape_sig.return_dims)
            input_idx = next(
                i for i, p in enumerate(shape_sig.params) if p.role == "input"
            )
        except StopIteration:
            print(f"[SKIP] {ll_path}: could not determine input parameter")
            return
        print(
            f"[{sig.name}] {ll_path}  (style={sig.style}, shapes from {source_kind}: "
            f"{getattr(shape_sig, 'source_file', shape_sig.name)})"
        )
        if source_kind.startswith("cross-pipeline"):
            print(
                f"    WARNING: no sibling .mlir found next to this .ll; "
                f"falling back to a shape source from a different pipeline. "
                f"Verify the argument order actually matches before trusting this driver."
            )
        if getattr(shape_sig, "unsupported", None):
            print(f"    ERROR: {shape_sig.unsupported}")
            warn_stale_driver(out_path)
            print(f"[SKIP] {ll_path}: unsupported model shape")
            return
        # Bind the shape source's params -- generate_mlir_driver copies dims,
        # names and offsets from them onto this .ll's scalarized groups.
        ok, note = resolve_blob_layout(
            ll_path,
            shape_sig.params,
            sig.name,
            name_source=getattr(shape_sig, "name_source", None),
        )
        if not ok:
            warn_stale_driver(out_path)
            print(f"[SKIP] {ll_path}: cannot bind weights.bin")
            return
        print(f"    weights: {note}")
        for sp in shape_sig.params:
            loc = "input.bin" if sp.role == "input" else f"@{sp.byte_offset}"
            print(
                f"    {sp.cname:>5} [{sp.role:>6}] : {str(sp.dims):<22} "
                f"{loc:>12}  {sp.canonical or ''}"
            )
        if dry_run:
            print(f"    -> (dry-run) would write {out_path}")
            return
        if not force and os.path.exists(out_path):
            print(f"    -> SKIP (already exists; use --force to overwrite)")
            return
        try:
            src = generate_mlir_driver(
                sig,
                shape_sig,
                input_idx,
                variant_name,
                source_desc=f"{source_kind} ({getattr(shape_sig, 'source_file', shape_sig.name)})",
            )
        except ValueError as e:
            print(f"[SKIP] {ll_path}: {e}")
            return

    else:
        return

    with open(out_path, "w") as f:
        f.write(src)
    print(f"    -> wrote {out_path}")


def main():
    ap = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    ap.add_argument("root", help="Root directory to scan for model variant folders")
    ap.add_argument(
        "--dry-run", action="store_true", help="Only print what would be generated"
    )
    ap.add_argument(
        "--force", action="store_true", help="Overwrite existing driver .c files"
    )
    args = ap.parse_args()

    if not os.path.isdir(args.root):
        print(f"Not a directory: {args.root}", file=sys.stderr)
        sys.exit(1)

    print("Scanning for shape sources (raw-pointer .ll files with static shapes)...")
    shape_sources = build_shape_sources(args.root)
    for name, sig in shape_sources.items():
        assign_roles(sig.params, sig.return_dims)
    print(f"Found shape sources for: {', '.join(sorted(shape_sources)) or '(none)'}")
    print()

    found_any = False
    for ll_path in find_all_ll_files(args.root):
        found_any = True
        try:
            process_file(ll_path, shape_sources, dry_run=args.dry_run, force=args.force)
        except Exception as e:
            print(f"[ERROR] {ll_path}: {e}", file=sys.stderr)

    if not found_any:
        print(f"No .ll files found under {args.root}", file=sys.stderr)


if __name__ == "__main__":
    main()
