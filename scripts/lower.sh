#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat >&2 <<EOF
Usage: $0 [--max] <dir> [<dir> ...]

For each <dir>, finds the single *.mlir file that is NOT already named
*_lowered.mlir, treats it as the source, and lowers it to
<dir>/<model>_lowered.mlir.

<dir> is expected to be a leaf directory such as
<model_dir>/mlir_llvm or <model_dir>/mim_mlir_llvm, i.e. one level below
a per-model directory (e.g. 01_MLP, 02_ShallowWideMLP, ...). The model
name used in output filenames is the parent directory's name with any
leading "<digits>_" prefix stripped (01_MLP -> MLP).

  --max   Variant: transform-dialect tiling + vectorization of matmul/conv
          at the linalg level, and enable-x86'd LLVM vector lowering. No
          multi-core threading -- an OpenMP lowering attempt conflicted
          with memref.alloca_scope from --buffer-deallocation-pipeline
          (region ends up multi-block after outlining) with no clean
          workaround found; thread at the driver level instead if you
          need that.
EOF
  exit 1
}

# MODE: "tile" (default) | "max" (--max)
MODE="tile"
dirs=()
while [[ $# -gt 0 ]]; do
  case "$1" in
  --max)
    MODE="max"
    shift
    ;;
  -h | --help) usage ;;
  --)
    shift
    break
    ;;
  -*)
    echo "unknown flag: $1" >&2
    usage
    ;;
  *)
    dirs+=("$1")
    shift
    ;;
  esac
done
dirs+=("$@")
[[ ${#dirs[@]} -gt 0 ]] || usage

BUF='allow-return-allocs-from-loops bufferize-function-boundaries function-boundary-type-conversion=identity-layout-map'

# ---------------------------------------------------------------------------
# --max transform-dialect script: tile + vectorize matmul/conv only.
# Written once to a temp file, reused across all dirs, cleaned up on exit.
#
# NOTE: the tile sizes below were tuned against one specific model's layer
# shapes (10/8/64 for matmul, 1/14/14/32 for conv). Since this script now
# runs across multiple, differently-shaped models, these sizes are NOT
# guaranteed to divide every layer evenly for every model -- a boundary
# tile can come out dynamically shaped, which transform.structured.vectorize
# cannot vectorize ("Attempted to vectorize, but failed"). If --max fails
# on a given model, this is the first thing to revisit: either compute
# per-model tile sizes, or drop to sizes that are safe/common (e.g. 1 for
# any dim that has no known common divisor across your model set).
#
# Deliberately does NOT match pooling ops -- vectorizing the stride-2 pool
# subscript is a known miscompile risk; scoping the transform to matmul/conv
# by op name is what keeps that failure mode out of this variant.
#
# KNOWN GAP: this only matches named linalg.matmul / linalg.conv_2d_nhwc_hwcf
# ops. If a source .mlir already lowers convs/matmuls straight to
# linalg.generic (some frontend paths do), this transform silently matches
# zero ops -- no error, just fmul/vecs staying at baseline. Fix is to either
# specialize generics back to named ops first (if your mlir-opt build has
# -linalg-specialize-generic-ops -- check before assuming, and see the
# --linalg-specialize-generic-ops step below) or match on linalg.generic
# here with an indexing-map/iterator-type filter instead of by name.
# ---------------------------------------------------------------------------
TRANSFORM_FILE=""
if [[ "$MODE" == "max" ]]; then
  TRANSFORM_FILE="$(mktemp --suffix=.mlir)"
  trap 'rm -f "$TRANSFORM_FILE"' EXIT
  cat >"$TRANSFORM_FILE" <<'EOF'
module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%module: !transform.any_op) {
    %matmuls = transform.structured.match ops{["linalg.matmul"]} in %module
        : (!transform.any_op) -> !transform.any_op
    %convs = transform.structured.match ops{["linalg.conv_2d_nhwc_hwcf"]} in %module
        : (!transform.any_op) -> !transform.any_op

    // See the tile-size caveat above this heredoc: these sizes were
    // validated against one model's shapes, not the full model set this
    // script now runs against.
    %tiled_matmul, %ml0, %ml1, %ml2 = transform.structured.tile_using_for %matmuls
        tile_sizes [10, 8, 64]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op)
    %tiled_conv, %cl0, %cl1, %cl2, %cl3 = transform.structured.tile_using_for %convs
        tile_sizes [1, 14, 14, 32]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op)

    transform.structured.vectorize %tiled_matmul : !transform.any_op
    transform.structured.vectorize %tiled_conv : !transform.any_op

    transform.yield
  }
}
EOF
  # NOTE: on this build (confirmed via `mlir-opt --help-hidden`), the single
  # `--transform-interpreter="transform-file-name=..."` form does not exist.
  # The library is loaded via a separate --transform-preload-library pass
  # with a `transform-library-paths=` option, and --transform-interpreter
  # itself only takes `entry-point=` (defaulting to @__transform_main, but
  # passed explicitly below for clarity). Both passes are required together.
fi

for dir in "${dirs[@]}"; do
  dir=${dir%/}

  if [[ ! -d "$dir" ]]; then
    echo "error: '$dir' is not a directory, skipping" >&2
    continue
  fi

  # Source = any top-level *.mlir that isn't itself a lowered output.
  # -maxdepth 1 so nested dirs don't get pulled in.
  candidates=()
  while IFS= read -r -d '' f; do
    candidates+=("$f")
  done < <(find "$dir" -maxdepth 1 -name '*.mlir' ! -name '*_lowered.mlir' -print0)

  if [[ ${#candidates[@]} -eq 0 ]]; then
    echo "warn: no source .mlir found in '$dir', skipping" >&2
    continue
  fi
  if [[ ${#candidates[@]} -gt 1 ]]; then
    echo "error: multiple candidate source .mlir files in '$dir':" >&2
    printf '  %s\n' "${candidates[@]}" >&2
    echo "  refusing to guess -- rename/remove extras so only one remains" >&2
    exit 1
  fi

  IN="${candidates[0]}"

  # Model name derived from the parent directory of $dir, e.g.
  # 01_MLP/mlir_llvm -> model "MLP". Falls back to the raw parent dir name
  # if there's no leading "<digits>_" prefix to strip.
  model_dir="$(basename "$(dirname "$dir")")"
  model="${model_dir#*_}"
  [[ "$model" == "$model_dir" ]] && model="$model_dir"

  OUT="$dir/${model}_lowered.mlir"

  PASSES=()

  if [[ "$MODE" == "max" ]]; then
    # Specialize any already-generic matmul/conv back to named ops first --
    # some frontend paths lower straight to linalg.generic, which
    # transform.structured.match ops{["linalg.matmul" /
    # "linalg.conv_2d_nhwc_hwcf"]} cannot see by name. Confirmed present via
    # `mlir-opt --help-hidden | grep -i specialize`; if a future build drops
    # it, this step becomes a silent no-op again.
    PASSES+=(--linalg-specialize-generic-ops --canonicalize --cse)

    # Tile + vectorize matmul/conv while still on tensors, before
    # bufferization -- tiling/vectorization info is much better preserved
    # on named linalg ops than after they've been generalized/bufferized.
    #
    # Two passes, in this order: --transform-preload-library merges the
    # external file's named sequences into the module so --transform-
    # interpreter can find @__transform_main by entry-point= name.
    PASSES+=(
      --transform-preload-library="transform-library-paths=$TRANSFORM_FILE"
      --transform-interpreter="entry-point=__transform_main"
      --canonicalize --cse
    )
  fi

  PASSES+=(
    --one-shot-bufferize="$BUF"
    --buffer-deallocation-pipeline
  )

  # --affine-loop-fusion is only sound AFTER tiling. On un-tiled nests its
  # greedy producer-consumer fusion can merge a pool's reduction with a
  # conv's reduction into a single nest, silently corrupting the result.
  # Tiling first fragments the nests so fusion finds far fewer candidates,
  # which is why the post-tile position is safe. Keep them coupled.
  #
  # Threading (--convert-linalg-to-parallel-loops / --convert-scf-to-openmp)
  # is dropped from --max: OpenMP's region outlining conflicts with
  # memref.alloca_scope inserted by --buffer-deallocation-pipeline above
  # (its region ends up multi-block after outlining touches it), and no
  # sub-option was found on either pass to avoid it. If you want multi-core
  # threading later, the lower-risk path is parallelizing at the C driver
  # level (e.g. splitting the batch across pthreads calling the compiled
  # single-threaded function), not fighting this conflict further inside
  # the MLIR pipeline.
  PASSES+=(--convert-linalg-to-affine-loops)

  if [[ "$MODE" == "tile" ]]; then
    PASSES+=(--affine-loop-tile=tile-size=32 --affine-loop-fusion)
  fi
  # Under --max, tiling already happened at the linalg level via the
  # transform script above, so --affine-loop-tile is redundant here. We
  # deliberately still skip --affine-loop-fusion in this mode too: it
  # hasn't been re-validated against pre-tiled nests.

  PASSES+=(
    --affine-scalrep
    --affine-loop-invariant-code-motion
    --lower-affine
    --convert-scf-to-cf
    --expand-strided-metadata
  )

  if [[ "$MODE" == "max" ]]; then
    # --expand-strided-metadata decomposes the strided memref.subviews that
    # transform-dialect tiling's tensor.extract_slice ops turn into after
    # bufferization, and does so via affine.apply -- generated *after* the
    # --lower-affine above already ran, so those never get caught. The
    # baseline pipeline never hits this because it has no such subviews to
    # expand. A second --lower-affine here is a no-op if nothing needs it;
    # cheap insurance rather than reordering the whole pipeline for one
    # mode.
    PASSES+=(--lower-affine)
  fi

  if [[ "$MODE" == "max" ]]; then
    # transform.structured.vectorize on a matmul contraction produces
    # vector.multi_reduction, which --convert-vector-to-llvm cannot lower
    # directly -- it needs decomposing into vector.transpose +
    # vector.shape_cast + a 1D vector.reduction first, which IS directly
    # LLVM-lowerable. Confirmed present via `mlir-opt --help-hidden | grep
    # -B2 -A10 -i multi-reduction` before adding. inner-reduction matches
    # the innermost (K) dim being the one actually reduced here.
    PASSES+=(--lower-vector-multi-reduction="lowering-strategy=inner-reduction")

    # transform.structured.vectorize on a tiled matmul can produce
    # vector.transfer_read/write ops with non-trivial permutation maps
    # (e.g. broadcasting a K-tile across the N-tile when an operand doesn't
    # vary along every tiled dim). --convert-vector-to-llvm's direct
    # lowering only handles the simple identity/minor-identity transfer
    # case; non-trivial permutation maps need --convert-vector-to-scf first.
    # Confirmed present via `mlir-opt --help-hidden | grep -A15 -i
    # vector-to-scf` before adding.
    #
    # full-unroll=true deliberately: the default lowering emits scf.for
    # loops, but --convert-scf-to-cf already ran earlier in this pipeline --
    # any new scf ops from here would never get flattened. Tile shapes are
    # bounded, so full unrolling avoids introducing scf entirely rather than
    # chasing pass order again. A trailing --convert-scf-to-cf is added
    # anyway as a cheap safety net in case some transfer still needed a
    # loop.
    PASSES+=(--convert-vector-to-scf="full-unroll=true" --convert-scf-to-cf)
  fi

  if [[ "$MODE" == "max" ]]; then
    PASSES+=(--convert-vector-to-llvm="enable-x86")
  else
    PASSES+=(--convert-vector-to-llvm)
  fi

  PASSES+=(
    --convert-ub-to-llvm --convert-cf-to-llvm
    --convert-arith-to-llvm --finalize-memref-to-llvm --convert-func-to-llvm
    --convert-index-to-llvm --convert-math-to-llvm
    --reconcile-unrealized-casts
  )

  variant_note=""
  [[ "$MODE" == "max" ]] && variant_note=" (--max: tile+vectorize)"
  echo "==> [$dir] $(basename "$IN") -> $(basename "$OUT")$variant_note"

  if [[ -n "${LOWER_SH_DEBUG_PRINT_PASSES:-}" ]]; then
    echo "---- exact PASSES array for $dir (MODE=$MODE) ----" >&2
    printf '%q ' "${PASSES[@]}" >&2
    echo >&2
    echo "----------------------------------------------------" >&2
  fi

  mlir-opt "$IN" "${PASSES[@]}" -o "$OUT"

  # .ll name derived from the model name and the directory's own basename,
  # e.g. 01_MLP/mlir_llvm -> 01_MLP/mlir_llvm/MLP_mlir_llvm.ll
  base="$(basename "$dir")"
  LL="$dir/${model}_${base}.ll"
  echo "==> [$dir] $(basename "$OUT") -> $(basename "$LL")"
  mlir-translate --mlir-to-llvmir "$OUT" -o "$LL"

  if [[ "$MODE" == "max" ]]; then
    echo "    reminder: compile this .ll with -O3 -march=native, and diff" >&2
    echo "    the driver's output against the expected result before" >&2
    echo "    benchmarking." >&2
  fi
done

echo "done."
