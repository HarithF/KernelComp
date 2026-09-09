#!/usr/bin/env bash
#
# compile_all.sh - discover every <model>/<variant>/ directory produced by
#                gen_drivers.py (one .ll + one <Name>_driver_{mim,mlir}.c
#                each) under a models root, compile each with llc + clang,
#                and place the resulting executable in that MODEL's own
#                bin/ directory (e.g. 11_VGG16/bin/mim_llvm,
#                11_VGG16/bin/mlir_llvm, 01_MLP/bin/mim_mlir_llvm, ...),
#                right next to that model's <Name>_weights.bin /
#                <Name>_input.bin -- so a later script only has to look in
#                one place per model to find both the binaries and their
#                weights/input.
#
# Usage:
#   ./compile_all.sh [MODELS_ROOT] [OPT_LEVEL] [LLVM_LIB_DIR] [-portable] [-no-opt]
#
# Examples:
#   ./compile_all.sh                          # scan ./ , -O3, host CPU
#   ./compile_all.sh ./models                 # scan ./models , -O3, host CPU
#   ./compile_all.sh ./models O2
#   ./compile_all.sh ./models O3 /path/to/llvm-project/build/lib
#   ./compile_all.sh ./models -no-opt         # reproduce the OLD behaviour (A/B)
#
# Defaults are -O3 and host-CPU codegen. Both used to be off; see below.
#
# ---------------------------------------------------------------------------
# THE `opt` STEP IS NOT OPTIONAL
#
# This script used to go straight .ll -> llc -> .o. That silently discarded
# essentially all of the optimisation done upstream, because **llc does not run
# LLVM's IR-level loop vectorizer**. llc is codegen: instruction selection,
# scheduling, register allocation. The loop vectorizer, SLP vectorizer, LICM
# and friends live in the middle-end, which only runs under `opt` (or a clang
# driver invocation). No llc -O level substitutes for it.
#
# The lowered convolutions coming out of lower.sh are shaped precisely so that
# LLVM's loop vectorizer can take them (the innermost loop is unit-stride and
# reduction-free by construction). Skipping `opt` means nothing ever looks.
#
# Measured on one isolated VGG16 conv layer (10x256x28x28, 256x256x3x3,
# 9.25 GFLOP x 3 reps), all four builds producing bit-identical output:
#
#   llc -O2                       (old default)   4.28 s   0 packed FP ops
#   llc -O3 -mcpu=native          (old -native)   6.07 s   0 packed FP ops
#   opt -O3 + llc -O3             (generic CPU)   0.502 s  278 packed (SSE, 4-wide)
#   opt -O3 + llc -O3 -mcpu=native (new default)  0.392 s  166 packed (AVX2, 8-wide)
#
# So: ~11x from adding `opt` at all, and a further ~1.28x from targeting the
# host CPU rather than generic x86-64 (AVX2's 8-wide ymm instead of SSE's
# 4-wide xmm). Note the old -native flag made things *worse* without `opt`,
# which is why "we passed -native" was never evidence that codegen was fine.
#
# A second, separate fix: opt also needs an explicit -mtriple, without which
# -mcpu is silently ignored and matmul never vectorizes (4.5x on 512^3). See
# the block above OPT_ARGS below -- that one is invisible on convolutions and
# only shows up on reduction-inner loops, so it is easy to miss.
#
# `-no-opt` reproduces the old .ll -> llc path if you need to A/B against it.
#
# Two things deliberately NOT enabled:
#   * llc --fp-contract=fast. It does form FMAs (36 vfmaddps on the layer
#     above) but measured no speedup at all -- the vectorised loop is
#     load/store-port bound, not FLOP bound. It would also change numerics,
#     which the drivers check.
#   * -flto. The model function is called once per rep from the driver, so
#     there is nothing worth inlining across that boundary.
#
# `opt` must come from the same LLVM as the mlir-translate that wrote the .ll
# (textual IR is not stable across major versions). Both are checked below.
# ---------------------------------------------------------------------------
#
# MODELS_ROOT is expected to look like:
#   models/
#   ├── 01_MLP/
#   │   ├── mim_llvm/         MLP_mim.ll               MLP_driver_mim.c
#   │   ├── mim_mlir_llvm/    MLP_mim_mlir_llvm.ll     MLP_driver_mlir.c
#   │   ├── mlir_llvm/        MLP_mlir_llvm.ll         MLP_driver_mlir.c
#   │   ├── mlir_mim_llvm/    MLP_mlir_mim.mim          (no .ll -- skipped)
#   │   ├── MLP_weights.bin
#   │   ├── MLP_input.bin
#   │   └── bin/              mim_llvm  mim_mlir_llvm  mlir_llvm  <- written here
#   ├── 05_AlexNet/
#   │   └── ...
#   └── ...
#
# Any <model>/<variant>/ directory containing a .ll file but no matching
# driver .c is reported as a failure (run gen_drivers.py first). Directories
# with no .ll at all (e.g. the raw .mim variant) are skipped silently, since
# they're not an LLVM build target.
#
# Intermediate .opt.bc and .o files are deleted once each variant's build
# attempt finishes (success or failure) -- only the .ll/.c sources and the
# final binary are left behind.
#
set -euo pipefail

# ----------------------------------------------------------------------------
# Config / arg parsing
# ----------------------------------------------------------------------------

OPT_LEVEL="O3"
LLVM_LIB_DIR="${LLVM_LIB_DIR:-/home/harithf/repos/complete/llvm-project/build/lib}"
NATIVE=true
RUN_OPT=true
MODELS_ROOT="."
root_explicitly_set=false

for arg in "$@"; do
  case "$arg" in
  O0 | O1 | O2 | O3 | Os | Oz)
    OPT_LEVEL="$arg"
    ;;
  -native)
    # Now the default; still accepted so existing invocations keep working.
    NATIVE=true
    ;;
  -portable | -generic)
    # Generic x86-64 codegen: SSE2 only, so 4-wide instead of AVX2's 8-wide.
    # Measured ~1.28x slower. Use only if the binaries must run elsewhere.
    NATIVE=false
    ;;
  -no-opt)
    # Skip the middle-end entirely -- reproduces this script's old behaviour.
    # Expect ~11x slower; see the header. For A/B only.
    RUN_OPT=false
    ;;
  *)
    if [[ -d "$arg" ]]; then
      # First directory-looking argument is the models root; a second one
      # (if given) is the LLVM lib dir -- mirrors the original script's
      # positional convention.
      if [[ "$root_explicitly_set" == false ]]; then
        MODELS_ROOT="$arg"
        root_explicitly_set=true
      else
        LLVM_LIB_DIR="$arg"
      fi
    else
      echo "error: unknown argument '$arg'" >&2
      echo "usage: $0 [MODELS_ROOT] [OPT_LEVEL] [LLVM_LIB_DIR] [-portable] [-no-opt]" >&2
      exit 1
    fi
    ;;
  esac
done

MODELS_ROOT="$(cd "$MODELS_ROOT" && pwd)"

OPT_ARGS=("-${OPT_LEVEL}")
LLC_ARGS=("-${OPT_LEVEL}")
CLANG_ARGS=("-${OPT_LEVEL}")

# ---------------------------------------------------------------------------
# -no-pie IS REQUIRED, and it is a link-time-only change.
#
# mlir-translate emits no "PIC Level" module flag, so llc defaults to the
# `static` relocation model and is free to address a global with an absolute
# 32-bit displacement. It takes that freedom whenever a vectorised loop reads
# a constant global through an index register
# ---------------------------------------------------------------------------
CLANG_ARGS+=("-no-pie")

# ---------------------------------------------------------------------------
# opt needs an explicit -mtriple, and -mcpu is USELESS WITHOUT IT.
#
# mlir-translate emits no `target triple` line, so opt cannot build a
# TargetMachine and its TargetTransformInfo has no vector width and no cost
# model. `opt -mcpu=native` alone is silently ignored for the same reason --
# there is no target for the CPU to apply to.
#
# Convolutions survive this (their innermost loop is trivially vectorizable,
# so it happens either way), which is what makes the bug easy to miss. Matmul
# does not: its innermost loop is a reduction, and with no cost model the
# vectorizer declines. Measured on 512^3 matmul x 20 reps, AOT:
#
#   opt -O3                               0.644 s    0 packed
#   opt -O3 -mcpu=native                  0.621 s    0 packed  <- flag ignored
#   opt -O3 -mtriple=<host> -mcpu=native  0.143 s   32 packed  <- 4.5x
#
# For reference the mlir-runner JIT reaches 0.103 s on the same IR because it
# always configures a host TargetMachine. A JIT-beats-AOT gap of this shape is
# the signature of a missing triple, not of a bad pass pipeline.
#
# The triple is passed even in -portable mode: without one the vectorizer is
# blind regardless of CPU. Only -mcpu is conditional.
# ---------------------------------------------------------------------------
HOST_TRIPLE="$(llvm-config --host-target 2>/dev/null ||
  clang -dumpmachine 2>/dev/null ||
  echo x86_64-unknown-linux-gnu)"
OPT_ARGS+=("-mtriple=${HOST_TRIPLE}")

if [[ "$NATIVE" == true ]]; then
  OPT_ARGS+=("-mcpu=native")
  LLC_ARGS+=("-mcpu=native")
  CLANG_ARGS+=("-march=native")
fi

# ----------------------------------------------------------------------------
# Sanity checks
# ----------------------------------------------------------------------------

if [[ ! -d "$LLVM_LIB_DIR" ]]; then
  echo "error: LLVM lib dir not found: $LLVM_LIB_DIR" >&2
  echo "       pass it as an argument or set LLVM_LIB_DIR env var" >&2
  exit 1
fi

required=(llc clang)
[[ "$RUN_OPT" == true ]] && required+=(opt)
for cmd in "${required[@]}"; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "error: required tool '$cmd' not found in PATH" >&2
    exit 1
  fi
done

# opt and llc must be the same LLVM that wrote the .ll files, since textual
# LLVM IR is not stable across major versions. A mismatch shows up as a parse
# error on a construct the older tool does not know (e.g. `store float -inf`).
if [[ "$RUN_OPT" == true ]]; then
  opt_ver="$(opt --version 2>/dev/null | sed -n 's/.*LLVM version \([0-9]*\).*/\1/p' | head -1)"
  llc_ver="$(llc --version 2>/dev/null | sed -n 's/.*LLVM version \([0-9]*\).*/\1/p' | head -1)"
  if [[ -n "$opt_ver" && -n "$llc_ver" && "$opt_ver" != "$llc_ver" ]]; then
    echo "error: opt (LLVM $opt_ver) and llc (LLVM $llc_ver) are different versions" >&2
    echo "       both must match the mlir-translate that produced the .ll files" >&2
    echo "       opt: $(command -v opt)" >&2
    echo "       llc: $(command -v llc)" >&2
    exit 1
  fi
fi

# ----------------------------------------------------------------------------
# Discover <model>/<variant>/ directories
# ----------------------------------------------------------------------------

echo "==> Scanning ${MODELS_ROOT} for model/variant directories"
echo "==> Building with -${OPT_LEVEL} (LLVM libs: ${LLVM_LIB_DIR})"
echo

FAILED=()
BUILT=0

# mindepth/maxdepth 2 -> MODELS_ROOT/<model>/<variant>
while IFS= read -r dir_path; do
  variant_name="$(basename "$dir_path")"
  model_root_dir="$(dirname "$dir_path")"
  model_dir="$(basename "$model_root_dir")"
  rel_dir="${dir_path#"$MODELS_ROOT"/}"

  # Find .ll file(s) in this variant dir (not recursing further).
  mapfile -t ll_files < <(find "$dir_path" -maxdepth 1 -name '*.ll' | sort)
  if [[ ${#ll_files[@]} -eq 0 ]]; then
    # No LLVM IR here (e.g. the raw .mim variant) -- not a build target.
    continue
  fi
  if [[ ${#ll_files[@]} -gt 1 ]]; then
    echo "!! ${rel_dir}: expected exactly one .ll file, found ${#ll_files[@]} -- using the first"
  fi
  ll_file="${ll_files[0]}"

  # Find the matching gen_drivers.py-generated driver: <Name>_driver_mim.c
  # or <Name>_driver_mlir.c.
  mapfile -t c_files < <(find "$dir_path" -maxdepth 1 \
    \( -name '*_driver_mim.c' -o -name '*_driver_mlir.c' \) | sort)

  if [[ ${#c_files[@]} -eq 0 ]]; then
    echo "!! skipping ${rel_dir}: found .ll but no generated driver .c"
    echo "   (run gen_drivers.py against ${MODELS_ROOT} first)"
    FAILED+=("$rel_dir (missing driver)")
    continue
  fi
  if [[ ${#c_files[@]} -gt 1 ]]; then
    echo "!! ${rel_dir}: expected exactly one driver .c file, found ${#c_files[@]} -- using the first"
  fi
  c_file="${c_files[0]}"

  # Model name comes straight from the driver filename gen_drivers.py wrote:
  # "<Name>_driver_mim.c" / "<Name>_driver_mlir.c" -> "<Name>"
  c_base="$(basename "$c_file")"
  model_name="${c_base%_driver_mim.c}"
  model_name="${model_name%_driver_mlir.c}"

  # Each model gets its own bin/ dir, alongside its <Name>_weights.bin /
  # <Name>_input.bin, so a later script only needs to look in one place.
  model_bin_dir="${model_root_dir}/bin"
  mkdir -p "$model_bin_dir"
  bin_name="${variant_name}"
  obj_file="${ll_file%.ll}.o"
  bc_file="${ll_file%.ll}.opt.bc"

  echo "--> [${model_dir}/${variant_name}] (${model_name})"

  # Middle-end. This is where the loop vectorizer runs; llc will not do it.
  # See the header block for the measured cost of skipping this.
  codegen_input="$ll_file"
  if [[ "$RUN_OPT" == true ]]; then
    echo "    opt:   $(basename "$ll_file") -> $(basename "$bc_file")"
    if ! opt "${OPT_ARGS[@]}" "$ll_file" -o "$bc_file"; then
      echo "!! opt failed for ${rel_dir}"
      FAILED+=("$rel_dir (opt)")
      rm -f "$bc_file"
      continue
    fi
    codegen_input="$bc_file"
  fi

  echo "    llc:   $(basename "$codegen_input") -> $(basename "$obj_file")"
  if ! llc "${LLC_ARGS[@]}" -filetype=obj "$codegen_input" -o "$obj_file"; then
    echo "!! llc failed for ${rel_dir}"
    FAILED+=("$rel_dir (llc)")
    rm -f "$obj_file" "$bc_file"
    continue
  fi

  echo "    clang: $(basename "$c_file") + $(basename "$obj_file") -> ${model_dir}/bin/${bin_name}"
  if ! clang "${CLANG_ARGS[@]}" "$c_file" "$obj_file" -o "${model_bin_dir}/${bin_name}" \
    -L"${LLVM_LIB_DIR}" \
    -lmlir_c_runner_utils -lmlir_runner_utils \
    -Wl,-rpath,"${LLVM_LIB_DIR}" \
    -lm; then
    echo "!! clang failed for ${rel_dir}"
    FAILED+=("$rel_dir (clang)")
    rm -f "$obj_file" "$bc_file"
    continue
  fi

  rm -f "$obj_file" "$bc_file"
  echo "    OK"
  echo
  BUILT=$((BUILT + 1))
done < <(find "$MODELS_ROOT" -mindepth 2 -maxdepth 2 -type d | sort)

# ----------------------------------------------------------------------------
# Summary
# ----------------------------------------------------------------------------

echo "==> Done. ${BUILT} binaries built (one bin/ dir per model under ${MODELS_ROOT})."
if [[ ${#FAILED[@]} -eq 0 ]]; then
  echo "All discovered variants built successfully."
else
  echo "Some variants failed:"
  for f in "${FAILED[@]}"; do
    echo "  - $f"
  done
  exit 1
fi
