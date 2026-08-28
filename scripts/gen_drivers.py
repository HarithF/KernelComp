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
    """Return (name, params[list of (dims, base)], return_dims, return_base)
    for the first matching func.func in `text`. If expected_name is given,
    only a func.func with that exact name is considered."""
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
            type_str = parts[1].strip()
            dims, base = parse_mlir_shaped_type(type_str)
            params.append((dims, MLIR_BASE_TO_LLVM_BASE.get(base, base)))

        if not ret_str:
            return_dims, return_base = [], None
        else:
            # Possibly multiple comma-separated return types; we only
            # support a single tensor/memref return (matches every model
            # seen so far).
            ret_parts = split_top_level_generic(ret_str, sep=",")
            if len(ret_parts) != 1:
                raise ValueError(f"Multiple return values not supported: {ret_str!r}")
            return_dims, return_base = parse_mlir_shaped_type(ret_parts[0])
            return_base = MLIR_BASE_TO_LLVM_BASE.get(return_base, return_base)

        return name, params, return_dims, return_base

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

    for fn in candidates:
        path = os.path.join(dirpath, fn)
        try:
            with open(path) as f:
                text = f.read()
            name, raw_params, ret_dims, ret_base = parse_mlir_func_signature(
                text, expected_name=expected_name
            )
        except Exception:
            continue
        params = [Param(dims, base) for dims, base in raw_params]
        sig = Signature(name, params, ret_dims, ret_base, style="mlir_source")
        sig.source_file = path
        return sig
    return None


# ---------------------------------------------------------------------------
# Top-level signature parsing / classification
# ---------------------------------------------------------------------------


class Param:
    __slots__ = ("dims", "base", "role", "cname")

    def __init__(self, dims, base):
        self.dims = dims
        self.base = base
        self.role = None  # 'input' | 'weight' | 'bias'
        self.cname = None  # e.g. 'x', 'w3', 'b3'


class Signature:
    def __init__(self, name, params, return_dims, return_base, style, mlir_groups=None):
        self.name = name
        self.params = params  # list[Param], in declaration order
        self.return_dims = return_dims
        self.return_base = return_base
        self.style = style  # 'raw_flat' | 'raw_struct' | 'mlir_memref' | 'unknown'
        self.mlir_groups = (
            mlir_groups  # list of (start, end, rank) for mlir_memref style
        )


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


def parse_signature(text, filename_hint=None):
    name, ret_str, args_str = extract_define(text, filename_hint)
    raw_params = split_top_level(args_str)

    # Get each param's *type* (name stripped) for classification.
    arg_type_strs = [strip_name_suffix(p) for p in raw_params]
    style = classify_arg_types(arg_type_strs)

    return_dims, return_base = [], None
    mlir_groups = None
    params = []

    if style == "raw_flat":
        for t in arg_type_strs:
            dims, base = parse_pointee_array(t)
            params.append(Param(dims, base))
        return_dims, return_base = parse_pointee_array(ret_str)

    elif style == "raw_struct":
        fields = parse_struct_fields(arg_type_strs[0])
        for f in fields:
            dims, base = parse_pointee_array(f)
            params.append(Param(dims, base))
        return_dims, return_base = parse_pointee_array(ret_str)

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

        # Return type: '{ ptr, ptr, i64, [R x i64], [R x i64] }'
        ret_sizes = re.findall(r"\[(\d+)\s*x\s*i64\]", ret_str)
        if not ret_sizes:
            raise ValueError(f"Could not parse mlir return type: {ret_str!r}")
        ret_rank = int(ret_sizes[0])
        return_dims = [None] * ret_rank
        return_base = "float"

    else:
        pass  # unknown -- leave params empty, caller will skip

    return Signature(name, params, return_dims, return_base, style, mlir_groups)


# ---------------------------------------------------------------------------
# Input/weight role assignment (shared heuristic)
# ---------------------------------------------------------------------------


def assign_roles(params, return_dims):
    """Mutates params in place: sets .role and .cname."""
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

    input_idx = max(
        candidates,
        key=lambda i: total_elems(params[i].dims) if None not in params[i].dims else -1,
    )

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
# C code generation -- "mim" style (raw_flat / raw_struct)
# ---------------------------------------------------------------------------


def row_major_strides(dims):
    strides = [1] * len(dims)
    for i in range(len(dims) - 2, -1, -1):
        strides[i] = strides[i + 1] * dims[i + 1]
    return strides


def c_read_floats_helper():
    return """static float *read_floats(FILE *f, size_t n, const char *what) {
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
            f'  float *{p.cname} = read_floats(wf, {p.cname}_count, "{p.cname}");'
        )
    read_weights_block = "\n".join(read_calls)

    shape_comment_lines = "\n".join(
        f" * {p.cname}: shape {p.dims} ({p.role})" for p in params
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

    out_dims = shape_sig.return_dims
    out_rank = len(out_dims)
    if sig.return_dims and len(sig.return_dims) != out_rank:
        raise ValueError(
            f"{name}: return rank mismatch (mlir {len(sig.return_dims)} vs "
            f"shape source {out_rank})"
        )
    out_count = total_elems(out_dims)

    input_p = next(p for p in sig.params if p.role == "input")

    # Distinct ranks needing a memrefRd typedef (params + output).
    ranks_needed = sorted({len(p.dims) for p in sig.params} | {out_rank})
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
        f'  float *{p.cname} = read_floats(wf, {p.cname}_count, "{p.cname}");'
        for p in sig.params
        if p.role != "input"
    )

    shape_comment_lines = "\n".join(
        f" * {p.cname}: shape {p.dims} ({p.role})" for p in sig.params
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
 * signature, so they were borrowed from {source_desc or shape_sig.name},
 * matched positionally:
{shape_comment_lines}
 * output: shape {out_dims}
 *
 * Usage: {name}_driver_mlir <weights> <input> <reps> <output> [run_id] [json_report]
 * run_id/json_report default to a generated UTC timestamp / a filename
 * derived from it if omitted -- pass the same run_id across every model
 * and pipeline in one batch (e.g. from reporter.py) to correlate their
 * timing reports.
 */

{typedefs}

extern memref{out_rank}d {name}(
    {extern_args});

{count_decls}

{c_read_floats_helper()}
{c_timing_report_helper()}
{c_fork_helpers()}
static void write_result(memref{out_rank}d out, const char *output_path) {{
  printf("writing output to %s...\\n", output_path);
  fflush(stdout);
  FILE *of = fopen(output_path, "wb");
  if (!of) {{
    fprintf(stderr, "failed to open output file '%s': ", output_path);
    perror(NULL);
    exit(1);
  }}
  size_t n_out = 1;
  for (int i = 0; i < {out_rank}; i++)
    n_out *= (size_t)out.sizes[i];
  size_t wrote = fwrite(out.aligned, sizeof(float), n_out, of);
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
      memref{out_rank}d out = {name}(
          {call_args});
      free(out.alloc);
      _exit(0);
    }}
    await_child(p, "warm-up");
  }} else {{
    memref{out_rank}d out = {name}(
        {call_args});
    free(out.alloc);
  }}
  printf("warm-up done.\\n");
  fflush(stdout);
  printf("start timed reps...\\n");
  fflush(stdout);
  int keep_out = 0;
  memref{out_rank}d out;
  for (int i = 0; i < reps; i++) {{
    const int is_last = (i == reps - 1);
    if (use_fork) {{
      fflush(NULL);
      pid_t p = fork();
      if (p < 0) {{ perror("fork"); return 1; }}
      if (p == 0) {{
        struct timespec t0, t1;
        clock_gettime(CLOCK_MONOTONIC, &t0);
        memref{out_rank}d cur = {name}(
            {call_args});
        clock_gettime(CLOCK_MONOTONIC, &t1);
        times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                   (double)(t1.tv_nsec - t0.tv_nsec);
        /* The last rep's child owns writing the result, so the output
           buffer never has to cross the process boundary. */
        if (is_last) {{
          write_result(cur, output_path);
          free(cur.alloc);
        }}
        _exit(0);
      }}
      await_child(p, "timed rep");
    }} else {{
      struct timespec t0, t1;
      clock_gettime(CLOCK_MONOTONIC, &t0);
      memref{out_rank}d cur = {name}(
          {call_args});
      clock_gettime(CLOCK_MONOTONIC, &t1);
      times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                 (double)(t1.tv_nsec - t0.tv_nsec);
      if (keep_out)
        free(out.alloc);
      out = cur;
      keep_out = 1;
    }}
  }}
  printf("finish timed reps...\\n");
  fflush(stdout);

  if (!use_fork) {{
    write_result(out, output_path);
    free(out.alloc);
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
        for p in sig.params:
            print(f"    {p.cname:>5} [{p.role:>6}] : {p.dims}")
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
        if dry_run:
            for p, sp in zip(sig.params, shape_sig.params):
                print(f"    {sp.cname:>5} [{sp.role:>6}] : {sp.dims}")
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
