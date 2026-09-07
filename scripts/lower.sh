#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat >&2 <<EOF
Usage: $0 [--baseline] <dir> [<dir> ...]

Each <dir> can be either:
  - a leaf directory such as <model_dir>/mlir_llvm or
    <model_dir>/mim_mlir_llvm, i.e. one level below a per-model directory
    (e.g. 01_MLP, 02_ShallowWideMLP, ...), or
  - a models root containing many such per-model directories (e.g. the
    directory holding 01_MLP, 02_ShallowWideMLP, 05_AlexNet, ...).

Either way, <dir> is searched recursively (at any depth) for every
directory that directly contains a single *.mlir file that is NOT already
named *_lowered.mlir -- that file is treated as the lowering source, and
lowered to <found_dir>/<model>_lowered.mlir. Directories with no such file
(raw mim_llvm dirs, which only have a .ll; .mim-only mlir_mim_llvm dirs;
bin/ output dirs; etc.) are simply not matched, so passing a models root
is safe and only touches the mlir_llvm / mim_mlir_llvm-style directories.

The model name used in output filenames is each matched directory's parent
directory name with any leading "<digits>_" prefix stripped (01_MLP -> MLP).

Modes:
  (default)    Per-op-class schedule: convolutions get their output-width
               iterator interchanged to innermost, matmuls get tiled 32^3.
               Measured 13.5x on VGG16 over --baseline, on BOTH frontends,
               numerics bit-identical. See "WHY THIS PIPELINE" below.

  --baseline   The previous default pipeline (global --affine-loop-tile plus
               --affine-loop-fusion), kept only so a change can be A/B'd
               against it. Do not ship numbers from this mode.

Env:
  LOWER_SH_DEBUG_PRINT_PASSES=1   print the exact mlir-opt pass list per dir
  LOWER_SH_FUSE=1                 add --linalg-fuse-elementwise-ops to the
                                  default mode. OFF by default because it is
                                  MEASURED SLOWER -- see the comment on that
                                  pass below before reaching for it

Expect 16/16 successes on a full run of this tree.

(04_LeNet5/mim_mlir_llvm used to be the one known-bad input -- an invalid conv
linalg.generic with rank-4 indexing maps over a rank-3 operand, which failed
plain \`mlir-opt <file>\` with no passes at all. The mim frontend has since
been fixed; that file now parses, verifies and lowers.)
EOF
  exit 1
}

# ---------------------------------------------------------------------------
# WHY THIS PIPELINE
#
# The old default left every convolution as scalar code, and that -- not the
# frontend, and not parametric weights -- was where the performance went.
#
# linalg.conv_2d_nchw_fchw has domain (n, f, oh, ow, c, kh, kw): the three
# reduction dimensions sit innermost. Lowered straight through
# --convert-linalg-to-affine-loops, the innermost loop body becomes
#
#     acc = out[n,f,oh,ow];  out[n,f,oh,ow] = acc + in[...] * w[...]
#
# a scalar accumulator living in memory -- one load and one store per MAC, and
# a loop-carried memory dependence LLVM cannot break. Measured output for a
# whole conv layer: 1 scalar vmulss, 0 vaddps. No SIMD at all.
#
# Interchanging the output-width iterator `ow` to innermost turns the same loop
# into  out[..,ow] += in[..,ow+kw] * w[f,c,kh,kw]  -- `w` loop-invariant, both
# tensors unit-stride in `ow`, and no reduction along the innermost loop at
# all. LLVM's loop vectorizer then handles it as an ordinary elementwise loop.
#
# Mid-stack VGG16 layer (10x256x28x28, 256x256x3x3, 9.25 GFLOP), single thread:
#
#     old default      1929 ms    4.8 GFLOP/s    1 vmulss,  0 vaddps
#     ow innermost      153 ms   60.6 GFLOP/s   36 vmulps, 36 vaddps
#     PyTorch 1-thread   75 ms  122.6 GFLOP/s   oneDNN micro-kernel
#
# Whole models, this tree, one rep after warm-up, JIT -O3, single-threaded.
# Each row is a BACK-TO-BACK pair -- see the note on variance below.
#
#     11_VGG16/mlir_llvm       (torch-mlir)  131.58 s -> 7.39 s   17.8x
#     11_VGG16/mim_mlir_llvm   (mim)         100.30 s -> 7.93 s   12.7x
#     11_VGG16 cleanest pair                 100.88 s -> 7.48 s   13.5x
#                                            1.9 -> 41 GFLOP/s (309.4 GFLOP)
#
# From the sibling torch/ tree, same pipeline:
#     ResNet18 b=2          2.989 s -> 0.399 s   7.5x
#     LeNet5 b=4096         0.816 s -> 0.253 s   3.2x
#     AlexNet b=1024        >1200 s -> 110.5 s  >10.9x
#
# On variance: the OLD pipeline's VGG16 time ranged 100-163 s across runs on
# this machine while the new one stayed within 7.2-7.9 s. That asymmetry is
# itself a symptom -- the old code's inner loop is a serialised
# store-to-load-forward chain, so it is far more sensitive to whatever else
# is competing for the core. Trust back-to-back A/B pairs, not absolute times
# taken minutes apart.
#
# Both frontends land within 7% of each other after this change (7.39 vs
# 7.93 s) with near-identical SIMD counts (166 vmulps / 162 vaddps vs
# 166 / 171). That convergence is the point: the earlier finding that all
# frontends scored the same 0.91 GFLOP/s was measuring the backend, not the
# frontends, and they converge again now -- just 20x higher up.
#
# Interchange never changes results: the reduction dimensions keep their
# relative order, so each accumulator's summation sequence is untouched. Every
# model measured came out bit-identical to the old pipeline and to PyTorch.
#
# Three further changes, each for a specific reason:
#
#   * The global --affine-loop-tile=tile-size=32 is gone. It is ~13x GOOD for
#     matmul (2.7 -> 35 GFLOP/s on 512^3: a 32^3 nest is small enough for LLVM
#     to register-promote the accumulator) and ~2.5x BAD for an interchanged
#     conv, where re-tiling all seven dimensions rebuilds a 14-deep nest. The
#     two op classes need opposite treatment, so tiling now happens inside the
#     transform schedule and reaches only contractions.
#
#   * --affine-loop-fusion is gone. Besides the correctness hazard the old
#     comments already described (merging a pool's 2x2 reduction into a conv's
#     3x3 reduction on un-tiled nests), it is superlinear on depthwise-conv
#     nests: one model's lowering ran past nine minutes before being killed,
#     against 0.63 s for this whole pipeline.
#
#   * --convert-linalg-to-loops replaces --convert-linalg-to-affine-loops.
#     Transform-dialect tiling leaves min()-bounded loops the affine lowering
#     rejects ("'affine.for' op operand cannot be used as a dimension id").
#     Nothing downstream needs the affine form -- the affine passes below are
#     no-ops on the conv nests once `ow` is innermost.
#
# Not fixed here, in rough order of remaining value:
#   * Threading. 16 cores idle. --convert-scf-to-openmp emits __kmpc_*, the
#     LLVM OpenMP runtime ABI, and only GNU libgomp is installed here so it
#     cannot link. The libmlir_async_runtime route compiles and runs with
#     identical numerics but is currently SLOWER, because
#     --convert-linalg-to-parallel-loops also marks the innermost `ow` loop
#     scf.parallel -- destroying the vectorizable inner loop and creating async
#     tasks of 28 iterations. The fix is to parallelise at the linalg level
#     (transform.structured.tile_using_forall over n/f/oh, then
#     --scf-forall-to-parallel), not to convert every parallel iterator.
#   * Register blocking. The interchanged inner loop does two vector loads and
#     one vector store per vector FMA, so it is load/store-port bound -- the
#     whole of the remaining 2x against PyTorch on an isolated conv layer.
#     transform.structured.vectorize cannot help: after interchange the input
#     indexing map is (.., oh+kh, ow+kw), not a projected permutation, and
#     linalg vectorization refuses it at every tile size tried (4, 8, 14, 28).
#   * FMA is NOT the answer, and was measured: MLIR emits fmul+fadd with no
#     `contract` fast-math flag, and llc --fp-contract=fast does produce 36
#     vfmaddps -- with no speedup at all (0.436 s vs 0.455 s), consistent with
#     the loop being memory-bound.
# ---------------------------------------------------------------------------

# MODE: "fast" (default) | "baseline" (--baseline)
MODE="fast"
dirs=()
while [[ $# -gt 0 ]]; do
  case "$1" in
  --baseline | --tile)
    MODE="baseline"
    shift
    ;;
  --max)
    # --max used to be the "optimized" variant. It never optimized a
    # convolution: its transform script matched linalg.conv_2d_nhwc_hwcf, and
    # across every model in this tree there are 42 linalg.conv_2d_nchw_fchw
    # and zero nhwc_hwcf -- so only its matmul half ever ran, silently. The
    # default mode now does what --max was trying to do, matching by op
    # STRUCTURE rather than by op name so it also works on the mim frontend
    # (whose convs are linalg.generic and were likewise never matched).
    echo "note: --max is obsolete and is now the default; ignoring the flag." >&2
    echo "      (its conv matcher never matched an op -- see the comment in" >&2
    echo "      this script for why. Use --baseline for the old pipeline.)" >&2
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

# ---------------------------------------------------------------------------
# Expand each given path into every directory (at any depth) that directly
# contains a source .mlir file (a *.mlir that is not itself already a
# *_lowered.mlir output). This is what lets a single invocation work on
# either an explicit leaf dir (which just matches itself) or an entire
# models root (which matches every model's mlir_llvm / mim_mlir_llvm-style
# directory underneath it, however many models there are).
# ---------------------------------------------------------------------------
input_args=("${dirs[@]}")
expanded_dirs=()
for d in "${input_args[@]}"; do
  d=${d%/}
  if [[ ! -d "$d" ]]; then
    echo "error: '$d' is not a directory, skipping" >&2
    continue
  fi
  while IFS= read -r -d '' sub; do
    match="$(find "$sub" -maxdepth 1 -name '*.mlir' ! -name '*_lowered.mlir' -print -quit)"
    if [[ -n "$match" ]]; then
      expanded_dirs+=("$sub")
    fi
  done < <(find "$d" -type d -print0)
done

# Deduplicate while preserving discovery order (in case overlapping paths
# were passed, or a leaf dir was reachable from more than one input arg).
dirs=()
declare -A seen=()
for d in "${expanded_dirs[@]}"; do
  if [[ -z "${seen[$d]:-}" ]]; then
    seen["$d"]=1
    dirs+=("$d")
  fi
done

if [[ ${#dirs[@]} -eq 0 ]]; then
  echo "error: no directory containing a source .mlir file found under: ${input_args[*]}" >&2
  exit 1
fi

echo "==> found ${#dirs[@]} director$([[ ${#dirs[@]} -eq 1 ]] && echo y || echo ies) to lower:" >&2
printf '      %s\n' "${dirs[@]}" >&2
echo >&2

BUF='allow-return-allocs-from-loops bufferize-function-boundaries function-boundary-type-conversion=identity-layout-map'

# ---------------------------------------------------------------------------
# Transform-dialect schedule for the default mode. Written once to a temp
# file, reused across all dirs, cleaned up on exit.
#
# Matched by STRUCTURE, never by op name. That is the whole point: this tree
# holds two frontends per model, and they do not agree on op names.
#
#   */mlir_llvm/*_mlir.mlir          torch-mlir: named linalg.conv_2d_nchw_fchw
#                                    (42 across this tree) and linalg.matmul (35)
#   */mim_mlir_llvm/*_mim_mlir.mlir  mim: every single op is a linalg.generic
#                                    (385 across this tree), zero named ops
#
# The old --max matched op names, so it matched nothing at all on the mim side
# and nothing conv-shaped on either side. Matching on rank plus a mulf/addf
# contraction body catches the convolutions in both frontends, because both
# use the same domain (n, f, oh, ow, c, kh, kw) -- verified by inspecting the
# indexing maps of both.
#
# --linalg-generalize-named-ops runs before this so torch-mlir's named ops and
# mim's generics arrive here in the same shape; the actions below then only
# ever see linalg.generic. (transform.structured.interchange requires a
# GenericOp; tile_using_for is happy with either.)
#
# On tile sizes: unlike the old --max, nothing here is tuned to one model's
# layer shapes. The conv action is a pure loop interchange, which has no sizes
# to get wrong, and 32^3 matmul tiling uses min()-bounded boundary tiles rather
# than requiring the dims to divide evenly -- so no model can hit the old
# "Attempted to vectorize, but failed" boundary-tile failure.
#
# Pooling is deliberately untouched. The contraction-body filter is what
# excludes it: pooling_nchw_max reduces with arith.maximumf and
# pooling_nchw_sum with addf alone, so neither matches
# ["arith.mulf", "arith.addf"]. That matters -- vectorizing a stride-2 pool
# subscript is a known miscompile, and this is what keeps it out by
# construction rather than by remembering not to name the op.
# ---------------------------------------------------------------------------
TRANSFORM_FILE=""
if [[ "$MODE" == "fast" ]]; then
  TRANSFORM_FILE="$(mktemp --suffix=.mlir)"
  trap 'rm -f "$TRANSFORM_FILE"' EXIT
  cat >"$TRANSFORM_FILE" <<'EOF'
module attributes {transform.with_named_sequence} {

  // ---- actions ---------------------------------------------------------

  // NCHW convolution, rank 7: (n, f, oh, ow, c, kh, kw)
  //                        -> (n, f, oh, c, kh, kw, ow)
  // Moves output-width innermost. Reduction dims keep their relative order,
  // so the result is bit-identical.
  transform.named_sequence @conv_nchw_ow_innermost(%op: !transform.any_op {transform.consumed}) {
    transform.structured.interchange %op iterator_interchange = [0, 1, 2, 4, 5, 6, 3]
        : (!transform.any_op) -> !transform.any_op
    transform.yield
  }

  // Grouped NCHW convolution, rank 8: (n, g, fg, oh, ow, c, kh, kw)
  // Same idea; `ow` is at position 4 here.
  transform.named_sequence @conv_ngchw_ow_innermost(%op: !transform.any_op {transform.consumed}) {
    transform.structured.interchange %op iterator_interchange = [0, 1, 2, 3, 5, 6, 7, 4]
        : (!transform.any_op) -> !transform.any_op
    transform.yield
  }

  // Depthwise NCHW convolution, rank 6: (n, oh, ow, c, kh, kw)
  // `ow` is at position 2.
  transform.named_sequence @conv_depthwise_ow_innermost(%op: !transform.any_op {transform.consumed}) {
    transform.structured.interchange %op iterator_interchange = [0, 1, 3, 4, 5, 2]
        : (!transform.any_op) -> !transform.any_op
    transform.yield
  }

  // Matmul, rank 3: (m, n, k). 32^3 is what the old global
  // --affine-loop-tile=tile-size=32 was doing well; this keeps that benefit
  // while no longer touching the conv nests.
  transform.named_sequence @tile_matmul(%op: !transform.any_op {transform.consumed}) {
    %t, %l0, %l1, %l2 = transform.structured.tile_using_for %op tile_sizes [32, 32, 32]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op)
    transform.yield
  }

  // mim's blocked FC contraction, rank 5: (m_outer, n_outer, m_inner, n_inner, k)
  //
  // The map_reduce_post axiom made mim emit every fully-connected layer in a
  // blocked, transposed layout -- output map (d0, d2, d1, d3) over a
  // tensor<M/2 x 2 x N/4 x 4>, B always (d1 * 4 + d3, d4) -- instead of the
  // rank-3 (m, n, k) contraction it used to emit. Shape verified identical
  // across all 8 models in this tree; only the A operand varies, picking up
  // floordiv/mod when the producer's blocking differs from this op's.
  //
  // Rank 5 matched NO matcher below, so foreach_match silently skipped every
  // FC layer -- straight to --convert-linalg-to-loops as an untiled nest with
  // the accumulator in memory, i.e. exactly the scalar case this whole file
  // exists to avoid. Measured on 01_MLP mim (216 packed FP ops before the
  // axiom, 64 packed + 384 scalar after).
  //
  // d2 x d3 = 2 x 4 is the register block mim already chose, so leave those
  // two whole and tile the rest: 16 x 8 x 32 is 32 x 32 x 32 in M x N x K --
  // the same effective tile as @tile_matmul, and for the same reason (small
  // enough for LLVM to register-promote the accumulator).
  //
  // Measured, same P-core, back-to-back, output bit-identical:
  //     03_DeepNarrowMLP/mim_mlir_llvm   15.49 s -> 5.97 s   2.6x
  //     01_MLP/mim_mlir_llvm             80.37 s -> 17.68 s  4.5x
  // With 01_MLP/mlir_llvm at 36.32 s on the same core, that turns the mim
  // MLIR path from 2.2x slower than torch-mlir into 2.1x faster.
  //
  // Tile sizes were screened on 03_DeepNarrowMLP, all bit-identical:
  //     [16,8,0,0,32]  5.97 s   <- this one
  //     [32,16,0,0,32] 6.18 s
  //     [16,8,0,0,16]  6.23 s
  //     [8,8,0,0,32]   6.64 s
  //     [8,8,0,0,64]   7.36 s
  //     [16,16,0,0,32] 8.18 s
  //     [16,8,0,0,128] 9.63 s
  //     [32,8,0,0,32] 12.74 s
  transform.named_sequence @tile_blocked_matmul(%op: !transform.any_op {transform.consumed}) {
    %t, %l0, %l1, %l2 = transform.structured.tile_using_for %op tile_sizes [16, 8, 0, 0, 32]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op)
    transform.yield
  }

  // Batch matmul, rank 4: (b, m, n, k). Batch left whole.
  transform.named_sequence @tile_batch_matmul(%op: !transform.any_op {transform.consumed}) {
    %t, %l0, %l1, %l2, %l3 = transform.structured.tile_using_for %op tile_sizes [1, 32, 32, 32]
        : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op)
    transform.yield
  }

  // ---- matchers --------------------------------------------------------
  // Every matcher is (rank == N) AND (body is a mulf/addf contraction).
  // The body filter is doing real work: it is what separates a rank-6
  // depthwise convolution from a rank-6 pooling op, and what keeps every
  // elementwise generic out of all of these.

  transform.named_sequence @match_rank3(%c0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.structured %c0 : !transform.any_op {
    ^bb0(%c: !transform.any_op):
      %rank = transform.match.structured.rank %c : (!transform.any_op) -> !transform.param<i64>
      %n = transform.param.constant 3 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %rank, %n : !transform.param<i64>
      transform.match.structured.body %c { contraction = ["arith.mulf", "arith.addf"] } : !transform.any_op
      transform.match.structured.yield
    }
    transform.yield %c0 : !transform.any_op
  }

  transform.named_sequence @match_rank4(%c0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.structured %c0 : !transform.any_op {
    ^bb0(%c: !transform.any_op):
      %rank = transform.match.structured.rank %c : (!transform.any_op) -> !transform.param<i64>
      %n = transform.param.constant 4 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %rank, %n : !transform.param<i64>
      transform.match.structured.body %c { contraction = ["arith.mulf", "arith.addf"] } : !transform.any_op
      transform.match.structured.yield
    }
    transform.yield %c0 : !transform.any_op
  }

  // Rank 5 is mim's blocked FC contraction (see @tile_blocked_matmul). The
  // body filter is load-bearing here: this tree also has 5 rank-5 ops in
  // 04_LeNet5, 8 in 05_AlexNet, 6 in 06_GoogleNet, 16 in 11_VGG16 and 19 in
  // 12_VGG19 that are elementwise post-ops (addf/maxnumf) or reductions with
  // no multiply, and tiling those as contractions would be wrong.
  transform.named_sequence @match_rank5(%c0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.structured %c0 : !transform.any_op {
    ^bb0(%c: !transform.any_op):
      %rank = transform.match.structured.rank %c : (!transform.any_op) -> !transform.param<i64>
      %n = transform.param.constant 5 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %rank, %n : !transform.param<i64>
      transform.match.structured.body %c { contraction = ["arith.mulf", "arith.addf"] } : !transform.any_op
      transform.match.structured.yield
    }
    transform.yield %c0 : !transform.any_op
  }

  transform.named_sequence @match_rank6(%c0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.structured %c0 : !transform.any_op {
    ^bb0(%c: !transform.any_op):
      %rank = transform.match.structured.rank %c : (!transform.any_op) -> !transform.param<i64>
      %n = transform.param.constant 6 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %rank, %n : !transform.param<i64>
      transform.match.structured.body %c { contraction = ["arith.mulf", "arith.addf"] } : !transform.any_op
      transform.match.structured.yield
    }
    transform.yield %c0 : !transform.any_op
  }

  transform.named_sequence @match_rank7(%c0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.structured %c0 : !transform.any_op {
    ^bb0(%c: !transform.any_op):
      %rank = transform.match.structured.rank %c : (!transform.any_op) -> !transform.param<i64>
      %n = transform.param.constant 7 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %rank, %n : !transform.param<i64>
      transform.match.structured.body %c { contraction = ["arith.mulf", "arith.addf"] } : !transform.any_op
      transform.match.structured.yield
    }
    transform.yield %c0 : !transform.any_op
  }

  transform.named_sequence @match_rank8(%c0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.structured %c0 : !transform.any_op {
    ^bb0(%c: !transform.any_op):
      %rank = transform.match.structured.rank %c : (!transform.any_op) -> !transform.param<i64>
      %n = transform.param.constant 8 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %rank, %n : !transform.param<i64>
      transform.match.structured.body %c { contraction = ["arith.mulf", "arith.addf"] } : !transform.any_op
      transform.match.structured.yield
    }
    transform.yield %c0 : !transform.any_op
  }

  // mim's split-output-height convolution: rank 8, but THREE inputs. The
  // third is a dummy `tensor.empty()` mapped (d2, d3) whose only job is to
  // bound the two split height dims -- nothing else in the op does, which is
  // why it cannot simply be erased (erase_unnecessary_inputs correctly leaves
  // it alone). Its bbarg is unused in the body, so the block has 4 arguments
  // and @match_rank8's body filter rejects the op outright:
  //
  //     matcher match_rank8 failed: contraction: expected block with 3 arguments
  //
  // That is a silent miss -- foreach_match just moves on -- and it cost every
  // mim convolution its interchange: 0/5 on AlexNet, 0/6 on GoogleNet, 3/13 on
  // VGG16, 4/16 on VGG19, 1/2 on LeNet5, all of them left as scalar
  // accumulator loops at ~1.9 GFLOP/s while the torch-mlir side of the same
  // model got 5/5, 6/6, 13/13, 16/16, 2/2. On AlexNet at batch 1024 that is
  // ~2.2 TFLOP of convolution running unvectorised, which is what pushed
  // 05_AlexNet/mim_mlir_llvm past the 8000 s reporter timeout. Older mim
  // output (commit cf66237) emitted these convs at rank 7 with 3 block args
  // and they all matched, so this is a regression from the newer frontend
  // shape, not from this pipeline.
  //
  // So match these on structure that survives the extra operand: rank 8 plus
  // three inputs. Pooling stays excluded by construction, as before -- mim
  // pooling is rank 6 with 2 inputs, so it cannot reach this matcher. The
  // action is the existing rank-8 one unchanged: mim's domain is
  // (n, f, oh_outer, oh_inner, ow, c, kh, kw), so `ow` sits at position 4,
  // exactly where @conv_ngchw_ow_innermost expects it.
  transform.named_sequence @match_rank8_3in(%c0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.structured %c0 : !transform.any_op {
    ^bb0(%c: !transform.any_op):
      %rank = transform.match.structured.rank %c : (!transform.any_op) -> !transform.param<i64>
      %n = transform.param.constant 8 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %rank, %n : !transform.param<i64>
      %nin = transform.match.structured.num_inputs %c : (!transform.any_op) -> !transform.param<i64>
      %three = transform.param.constant 3 : i64 -> !transform.param<i64>
      transform.match.param.cmpi eq %nin, %three : !transform.param<i64>
      transform.match.structured.yield
    }
    transform.yield %c0 : !transform.any_op
  }

  transform.named_sequence @__transform_main(%root: !transform.any_op) {
    transform.foreach_match in %root
      @match_rank7 -> @conv_nchw_ow_innermost,
      @match_rank8 -> @conv_ngchw_ow_innermost,
      @match_rank8_3in -> @conv_ngchw_ow_innermost,
      @match_rank6 -> @conv_depthwise_ow_innermost,
      @match_rank3 -> @tile_matmul,
      @match_rank5 -> @tile_blocked_matmul,
      @match_rank4 -> @tile_batch_matmul
      : (!transform.any_op) -> !transform.any_op
    transform.yield
  }
}
EOF
  # NOTE: on this build (confirmed via `mlir-opt --help-hidden`), the single
  # `--transform-interpreter="transform-file-name=..."` form does not exist.
  # The library is loaded via a separate --transform-preload-library pass
  # with a `transform-library-paths=` option, and --transform-interpreter
  # itself only takes `entry-point=`. Both passes are required together.
fi

FAILED=()
LOWERED=0

for dir in "${dirs[@]}"; do
  dir=${dir%/}

  if [[ ! -d "$dir" ]]; then
    echo "error: '$dir' is not a directory, skipping" >&2
    FAILED+=("$dir (not a directory)")
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
    FAILED+=("$dir (multiple source .mlir candidates)")
    continue
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

  if [[ "$MODE" == "fast" ]]; then
    # Put both frontends into the same shape before the schedule runs: after
    # this, every contraction is a linalg.generic regardless of whether the
    # frontend emitted a named op. See the schedule heredoc above.
    PASSES+=(--linalg-generalize-named-ops --canonicalize --cse)

    # Interchange / tile while still on tensors, before bufferization -- loop
    # structure survives far better on linalg ops than on memref loop nests.
    PASSES+=(
      --transform-preload-library="transform-library-paths=$TRANSFORM_FILE"
      --transform-interpreter="entry-point=__transform_main"
      --canonicalize --cse
    )

    # --linalg-fuse-elementwise-ops: OFF by default, and this is why.
    #
    # It looks like an obvious win -- it deletes 6-19 elementwise generics per
    # model, each one a full-size intermediate buffer plus its store and
    # reload (AlexNet mim 31 -> 23 generics, VGG16 mim 58 -> 42). It is not.
    # Measured, one rep, back-to-back, batch as shipped:
    #
    #     05_AlexNet/mim_mlir_llvm       89.45 s -> 148.35 s   1.66x SLOWER
    #     03_DeepNarrowMLP/mim_mlir_llvm 15.92 s ->  16.82 s   1.06x SLOWER
    #
    # (outputs bit-identical either way, so this is purely a speed question.)
    #
    # The reason is that the pass only requires the PRODUCER to be
    # all-parallel; it is happy to fuse into a consumer that has reduction
    # loops. So mim's bias+relu, which is one elementwise pass over the conv
    # result, gets pulled inside the NEXT op's reduction nest and recomputed
    # once per iteration of it: ~2.2x for a 3x3/stride-2 max-pool consumer,
    # but 4096x for an FC consumer, where the relu lands inside the k loop.
    # Trading one streaming pass over a buffer for thousands of recomputes is
    # a bad trade even when the buffer is a gigabyte.
    #
    # If you do enable it: it MUST stay after --transform-interpreter. Ahead of
    # the interpreter it silently destroys the matmul tiling, because a
    # consumer whose body is no longer a bare mulf/addf contraction stops
    # matching @match_rank3 and foreach_match just moves on. Measured on the
    # linalg stage, scf.for nests from tiling with fusion moved before the
    # interpreter: DeepNarrowMLP 51 -> 3, AlexNet 9 -> 0, VGG16 6 -> 0,
    # VGG19 6 -> 0. In the position below it is inert to every matcher --
    # interchange and tiling counts unchanged on all 16 model/frontend pairs.
    if [[ -n "${LOWER_SH_FUSE:-}" ]]; then
      PASSES+=(--linalg-fuse-elementwise-ops --canonicalize --cse)
    fi
  fi

  PASSES+=(
    --one-shot-bufferize="$BUF"
    --buffer-deallocation-pipeline
    # Without this, bufferization.clone survives all the way to
    # mlir-translate ("Dialect `bufferization' not found for custom op").
    --convert-bufferization-to-memref
  )

  if [[ "$MODE" == "baseline" ]]; then
    PASSES+=(
      --convert-linalg-to-affine-loops
      --affine-loop-tile=tile-size=32 --affine-loop-fusion
    )
  else
    # scf, not affine: transform-dialect tiling leaves min()-bounded loops
    # that --convert-linalg-to-affine-loops rejects.
    PASSES+=(--convert-linalg-to-loops)
  fi

  PASSES+=(
    --affine-scalrep
    --affine-loop-invariant-code-motion
    --lower-affine
    --convert-scf-to-cf
    --expand-strided-metadata
    # Second --lower-affine / --convert-scf-to-cf: --expand-strided-metadata
    # emits affine.apply for the strided memref.subviews that tiling's
    # tensor.extract_slice ops bufferize into, and does so AFTER the first
    # --lower-affine has already run. Harmless no-ops when there is nothing
    # left to lower, so they are unconditional rather than mode-specific.
    --lower-affine
    --convert-scf-to-cf
    --convert-vector-to-llvm
    --convert-ub-to-llvm --convert-cf-to-llvm
    --convert-arith-to-llvm
    # use-aligned-alloc: the default lowering emits malloc followed by
    # ptrtoint/inttoptr pointer alignment arithmetic, and an inttoptr-derived
    # pointer is opaque to LLVM's alias analysis. Worth ~19% on one model and
    # neutral on VGG16, so kept on principle rather than as a measured win.
    --finalize-memref-to-llvm=use-aligned-alloc
    --convert-func-to-llvm
    --convert-index-to-llvm --convert-math-to-llvm
    --reconcile-unrealized-casts
  )

  variant_note=""
  [[ "$MODE" == "baseline" ]] && variant_note=" (--baseline: OLD pipeline, for A/B only)"
  echo "==> [$dir] $(basename "$IN") -> $(basename "$OUT")$variant_note"

  if [[ -n "${LOWER_SH_DEBUG_PRINT_PASSES:-}" ]]; then
    echo "---- exact PASSES array for $dir (MODE=$MODE) ----" >&2
    printf '%q ' "${PASSES[@]}" >&2
    echo >&2
    echo "----------------------------------------------------" >&2
  fi

  if ! mlir-opt "$IN" "${PASSES[@]}" -o "$OUT"; then
    echo "!! mlir-opt failed for '$dir' -- skipping (leaving other directories to run)" >&2
    FAILED+=("$dir (mlir-opt)")
    rm -f "$OUT"
    continue
  fi

  # .ll name derived from the model name and the directory's own basename,
  # e.g. 01_MLP/mlir_llvm -> 01_MLP/mlir_llvm/MLP_mlir_llvm.ll
  base="$(basename "$dir")"
  LL="$dir/${model}_${base}.ll"
  echo "==> [$dir] $(basename "$OUT") -> $(basename "$LL")"
  if ! mlir-translate --mlir-to-llvmir "$OUT" -o "$LL"; then
    echo "!! mlir-translate failed for '$dir' -- skipping (leaving other directories to run)" >&2
    FAILED+=("$dir (mlir-translate)")
    rm -f "$LL"
    continue
  fi

  LOWERED=$((LOWERED + 1))
done

echo
echo "==> done. ${LOWERED}/${#dirs[@]} lowered successfully."
if [[ "$MODE" == "fast" ]]; then
  echo "    Compile the .ll with -O3 -march=native. LLVM's loop vectorizer is"
  echo "    what does the SIMD work here, so opt-level matters: llc alone will"
  echo "    not vectorize these loops."
fi
if [[ ${#FAILED[@]} -eq 0 ]]; then
  echo "All discovered directories lowered successfully."
else
  echo "Some directories failed:"
  for f in "${FAILED[@]}"; do
    echo "  - $f"
  done
  exit 1
fi
