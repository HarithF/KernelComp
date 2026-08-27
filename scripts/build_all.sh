#!/usr/bin/env bash
#
# build_all.sh - discover every <model>/<variant>/ directory produced by
#                gen_drivers.py (one .ll + one <Name>_driver_{mim,mlir}.c
#                each) under a models root, compile each with llc + clang,
#                and place the resulting executables in ./bin as
#                <Model>_<variant> (e.g. bin/VGG16_mim_llvm,
#                bin/AlexNet_mlir_llvm, bin/MLP_mim_mlir_llvm, ...).
#
# Usage:
#   ./build_all.sh [MODELS_ROOT] [OPT_LEVEL] [LLVM_LIB_DIR] [-native]
#
# Examples:
#   ./build_all.sh                          # scan ./ , -O2
#   ./build_all.sh ./models                 # scan ./models , -O2
#   ./build_all.sh ./models O3
#   ./build_all.sh ./models O2 /path/to/llvm-project/build/lib -native
#
# MODELS_ROOT is expected to look like:
#   models/
#   ├── 01_MLP/
#   │   ├── mim_llvm/         MLP_mim.ll               MLP_driver_mim.c
#   │   ├── mim_mlir_llvm/    MLP_mim_mlir_llvm.ll     MLP_driver_mlir.c
#   │   ├── mlir_llvm/        MLP_mlir_llvm.ll         MLP_driver_mlir.c
#   │   └── mlir_mim_llvm/    MLP_mlir_mim.mim          (no .ll -- skipped)
#   ├── 05_AlexNet/
#   │   └── ...
#   └── ...
#
# Any <model>/<variant>/ directory containing a .ll file but no matching
# driver .c is reported as a failure (run gen_drivers.py first). Directories
# with no .ll at all (e.g. the raw .mim variant) are skipped silently, since
# they're not an LLVM build target.
#
set -euo pipefail

# ----------------------------------------------------------------------------
# Config / arg parsing
# ----------------------------------------------------------------------------

OPT_LEVEL="O2"
LLVM_LIB_DIR="${LLVM_LIB_DIR:-/home/harithf/repos/complete/llvm-project/build/lib}"
NATIVE=false
MODELS_ROOT="."
root_explicitly_set=false

for arg in "$@"; do
  case "$arg" in
  O0 | O1 | O2 | O3 | Os | Oz)
    OPT_LEVEL="$arg"
    ;;
  -native)
    NATIVE=true
    ;;
  *)
    if [[ -d "$arg" ]]; then
      # First directory-looking argument is the models root; a second one
      # (if given) is the LLVM lib dir -- mirrors the original script's
      # positional convention.
      if [[ "$root_explicitly_set" == false ]]; then
        MODELS_ROOT="$arg"
        root_explicitly_set=true
      fi
    else
      echo "error: unknown argument '$arg'" >&2
      echo "usage: $0 [MODELS_ROOT] [OPT_LEVEL] [-native]" >&2
      exit 1
    fi
    ;;
  esac
done

MODELS_ROOT="$(cd "$MODELS_ROOT" && pwd)"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${SCRIPT_DIR}/bin"

mkdir -p "$BIN_DIR"

LLC_ARGS=("-${OPT_LEVEL}")
CLANG_ARGS=("-${OPT_LEVEL}")

if [[ "$NATIVE" == true ]]; then
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

for cmd in llc clang; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "error: required tool '$cmd' not found in PATH" >&2
    exit 1
  fi
done

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
  model_dir="$(basename "$(dirname "$dir_path")")"
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

  bin_name="${model_name}_${variant_name}"
  obj_file="${ll_file%.ll}.o"

  echo "--> [${model_dir}/${variant_name}] (${model_name})"
  echo "    llc:   $(basename "$ll_file") -> $(basename "$obj_file")"
  if ! llc "${LLC_ARGS[@]}" -filetype=obj "$ll_file" -o "$obj_file"; then
    echo "!! llc failed for ${rel_dir}"
    FAILED+=("$rel_dir (llc)")
    continue
  fi

  echo "    clang: $(basename "$c_file") + $(basename "$obj_file") -> bin/${bin_name}"
  if ! clang "${CLANG_ARGS[@]}" "$c_file" "$obj_file" -o "${BIN_DIR}/${bin_name}" \
    -L"${LLVM_LIB_DIR}" \
    -lmlir_c_runner_utils -lmlir_runner_utils \
    -Wl,-rpath,"${LLVM_LIB_DIR}" \
    -lm; then
    echo "!! clang failed for ${rel_dir}"
    FAILED+=("$rel_dir (clang)")
    continue
  fi

  echo "    OK"
  echo
  BUILT=$((BUILT + 1))
done < <(find "$MODELS_ROOT" -mindepth 2 -maxdepth 2 -type d | sort)

# ----------------------------------------------------------------------------
# Summary
# ----------------------------------------------------------------------------

echo "==> Done. ${BUILT} binaries built into ${BIN_DIR}/"
if [[ ${#FAILED[@]} -eq 0 ]]; then
  echo "All discovered variants built successfully."
else
  echo "Some variants failed:"
  for f in "${FAILED[@]}"; do
    echo "  - $f"
  done
  exit 1
fi
