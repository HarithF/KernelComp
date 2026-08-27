#!/usr/bin/env bash
#
# rename_by_parent.sh
#
# Renames files based on their grandparent (model) directory and parent
# (variant) directory, e.g.:
#
#   01_MLP/mim_llvm/mimir_graph_20fbf93cda5c0496.ll   -> 01_MLP/mim_llvm/MLP_mim.ll
#   01_MLP/mim_mlir_llvm/mimir_graph_...mlir          -> 01_MLP/mim_mlir_llvm/MLP_mim_mlir.mlir
#   01_MLP/mlir_llvm/1_MLP_torch.mlir                 -> 01_MLP/mlir_llvm/MLP_mlir.mlir
#   01_MLP/mlir_mim_llvm/...                          -> 01_MLP/mlir_mim_llvm/MLP_mlir_mim.<ext>
#
# Logic:
#   - model name  = grandparent dir name with a leading "NN_" prefix stripped
#   - suffix      = parent dir name with a trailing "_llvm" removed
#   - extension   = kept from the original file
#
# Usage:
#   ./rename_by_parent.sh [ROOT_DIR] [--dry-run]
#
# Examples:
#   ./rename_by_parent.sh .            # actually rename, starting at .
#   ./rename_by_parent.sh . --dry-run  # just print what would happen

set -euo pipefail

ROOT_DIR="."
DRY_RUN=0

for arg in "$@"; do
  case "$arg" in
  --dry-run) DRY_RUN=1 ;;
  *) ROOT_DIR="$arg" ;;
  esac
done

# Iterate over every regular file two levels below ROOT_DIR:
#   ROOT_DIR/<model_dir>/<variant_dir>/<file>
find "$ROOT_DIR" -mindepth 3 -maxdepth 3 -type f | while IFS= read -r filepath; do
  variant_dir=$(dirname "$filepath")  # .../01_MLP/mim_llvm
  model_dir=$(dirname "$variant_dir") # .../01_MLP

  variant_name=$(basename "$variant_dir") # mim_llvm
  model_name=$(basename "$model_dir")     # 01_MLP

  # Strip a leading numeric prefix like "01_" or "1_"
  model_clean="${model_name#*_}"
  # If there was no underscore (unlikely), fall back to the raw name
  if [[ "$model_clean" == "$model_name" ]]; then
    model_clean="$model_name"
  fi

  # Strip trailing "_llvm" from the variant/subdirectory name
  suffix="${variant_name%_llvm}"

  filename=$(basename "$filepath")
  ext="${filename##*.}"

  new_name="${model_clean}_${suffix}.${ext}"
  new_path="${variant_dir}/${new_name}"

  if [[ "$filepath" == "$new_path" ]]; then
    continue
  fi

  if [[ -e "$new_path" ]]; then
    echo "WARNING: target already exists, skipping: $new_path" >&2
    continue
  fi

  if [[ "$DRY_RUN" -eq 1 ]]; then
    echo "[dry-run] $filepath -> $new_path"
  else
    mv -v -- "$filepath" "$new_path"
  fi
done
