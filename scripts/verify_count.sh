#!/usr/bin/env bash
#
# verify_count.sh
#
# Checks every model directory under a models root for a complete set of
# lowering variants, so an eval run compares the same pipelines across every
# model. A model is complete when each required variant directory holds the
# source artifact its importer writes:
#
#   mim_llvm/<Model>_mim.ll             <- import_mimir.sh
#   mim_mlir_llvm/<Model>_mim_mlir.mlir <- import_mimir.sh
#   mlir_llvm/<Model>_mlir.mlir         <- import_torch_mlir.sh
#
# Model directories are those named "<NN>_<Model>"; <Model> is the name after
# the numeric prefix.
#
# WHY THIS SCRIPT EXISTS: neither compile_all.sh nor reporter.py enforces a
# variant set. compile_all.sh silently skips a variant directory with no .ll,
# and reporter.py discovers pipelines dynamically from <model>/bin/ ("not a
# hardcoded variant list"), then computes `rel_median` and `fastest_pipeline`
# against the fastest pipeline *for that model*. So a model missing a variant
# still produces a full-looking report, just over a smaller denominator than
# its neighbours -- which is exactly the kind of quiet incomparability this
# script is here to catch.
#
# By default it only REPORTS, and exits 1 if any model is incomplete. Pass
# --delete to remove incomplete model directories.
#
# --delete REFUSES to touch a model directory that holds eval artifacts: a
# timing report (*.json, excluding the <name>_params.json blob manifest),
# weights/input (*_weights.bin / *_input.bin), a non-empty bin/, or outputs/. Those are gitignored or untracked, so deleting
# them is unrecoverable and it invalidates comparisons against past reports
# (regenerated weights are different random data). Pass --force to delete
# those too.
#
# Usage:
#   ./verify_count.sh MODELS_ROOT [--delete] [--force]
#
# Examples:
#   ./verify_count.sh .                     # report only
#   ./verify_count.sh . --delete            # drop incomplete dirs that hold no results
#   ./verify_count.sh . --delete --force    # drop every incomplete dir

set -euo pipefail
shopt -s nullglob

# Variant directory -> suffix of the source artifact that must be present.
# "%s" stands in for the model name.
REQUIRED_VARIANTS=(mim_llvm mim_mlir_llvm mlir_llvm)
declare -A REQUIRED_ARTIFACT=(
  [mim_llvm]="%s_mim.ll"
  [mim_mlir_llvm]="%s_mim_mlir.mlir"
  [mlir_llvm]="%s_mlir.mlir"
)

usage() {
  echo "Usage: $(basename "${BASH_SOURCE[0]}") MODELS_ROOT [--delete] [--force]" >&2
  echo >&2
  echo "  MODELS_ROOT  root holding the NN_<Model> directories" >&2
  echo "  --delete     remove incomplete model directories (default: report only)" >&2
  echo "  --force      with --delete, also remove ones holding eval artifacts" >&2
}

DELETE=0
FORCE=0

positional=()
for arg in "$@"; do
  case "$arg" in
    --delete) DELETE=1 ;;
    --force) FORCE=1 ;;
    -h|--help) usage; exit 0 ;;
    -*) echo "Unknown option: $arg" >&2; usage; exit 1 ;;
    *) positional+=("$arg") ;;
  esac
done

if [[ ${#positional[@]} -lt 1 ]]; then
  echo "MODELS_ROOT is required." >&2
  usage
  exit 1
fi
if [[ ${#positional[@]} -gt 1 ]]; then
  echo "Too many arguments: ${positional[*]}" >&2
  usage
  exit 1
fi
if [[ $FORCE -eq 1 && $DELETE -eq 0 ]]; then
  echo "--force only means something together with --delete." >&2
  usage
  exit 1
fi

MODELS_ROOT="${positional[0]}"
if [[ ! -d "$MODELS_ROOT" ]]; then
  echo "Models root not found: $MODELS_ROOT" >&2
  exit 1
fi
MODELS_ROOT="$(cd "$MODELS_ROOT" && pwd)"

echo "Models root: $MODELS_ROOT"
echo "Required:    ${REQUIRED_VARIANTS[*]}"
if [[ $DELETE -eq 1 ]]; then
  echo "Mode:        DELETE incomplete model directories$([[ $FORCE -eq 1 ]] && echo " (--force: results too)")"
else
  echo "Mode:        report only (pass --delete to remove)"
fi
echo

# Eval artifacts that make a model directory expensive to lose.
held_results() {
  local dir="$1" name="$2"
  local found=()
  # <name>_params.json is the weight-blob manifest gen_data.py writes, not a
  # report -- it would otherwise make every generated model directory look
  # like it holds results, and nothing would ever be deletable.
  local reports=()
  for j in "$dir"/*.json; do
    [[ "$(basename "$j")" == "${name}_params.json" ]] && continue
    reports+=("$j")
  done
  [[ ${#reports[@]} -gt 0 ]] && found+=("timing reports")
  [[ -f "$dir/${name}_weights.bin" || -f "$dir/${name}_input.bin" ]] && found+=("weights/input")
  [[ -d "$dir/bin" && -n "$(ls -A "$dir/bin" 2>/dev/null)" ]] && found+=("bin/")
  [[ -d "$dir/outputs" && -n "$(ls -A "$dir/outputs" 2>/dev/null)" ]] && found+=("outputs/")
  [[ ${#found[@]} -eq 0 ]] && return 1
  printf '%s' "$(IFS=', '; echo "${found[*]}")"
}

n_complete=0
n_incomplete=0
n_deleted=0
n_kept=0
incomplete_names=()

for dir in "$MODELS_ROOT"/*/; do
  dir="${dir%/}"
  base="$(basename "$dir")"

  # Only directories that look like "<number>_<ModelName>".
  if [[ ! "$base" =~ ^([0-9]+)_(.+)$ ]]; then
    continue
  fi
  name="${BASH_REMATCH[2]}"

  missing=()
  for variant in "${REQUIRED_VARIANTS[@]}"; do
    # shellcheck disable=SC2059
    artifact="$(printf "${REQUIRED_ARTIFACT[$variant]}" "$name")"
    [[ -f "$dir/$variant/$artifact" ]] || missing+=("$variant/$artifact")
  done

  if [[ ${#missing[@]} -eq 0 ]]; then
    printf '  %-34s complete\n' "$base"
    n_complete=$((n_complete + 1))
    continue
  fi

  n_incomplete=$((n_incomplete + 1))
  incomplete_names+=("$base")
  printf '  %-34s INCOMPLETE\n' "$base"
  for m in "${missing[@]}"; do
    echo "      missing $m"
  done

  if [[ $DELETE -eq 0 ]]; then
    continue
  fi

  if results="$(held_results "$dir" "$name")" && [[ $FORCE -eq 0 ]]; then
    echo "      KEPT: holds $results (use --force to delete anyway)"
    n_kept=$((n_kept + 1))
    continue
  fi

  echo "      deleting $base"
  rm -rf -- "$dir"
  n_deleted=$((n_deleted + 1))
done

echo
echo "complete: $n_complete  incomplete: $n_incomplete"
if [[ $DELETE -eq 1 ]]; then
  echo "deleted: $n_deleted  kept (hold results): $n_kept"
fi

if [[ $n_incomplete -gt 0 ]]; then
  if [[ $DELETE -eq 0 ]]; then
    echo
    echo "Incomplete: ${incomplete_names[*]}"
    echo "Import the missing route before evaluating, or rerun with --delete."
  fi
  exit 1
fi
