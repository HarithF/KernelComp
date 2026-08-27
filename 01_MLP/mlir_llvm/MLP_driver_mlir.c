#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* Auto-generated driver for `MLP` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from sibling .mlir (./01_MLP/mlir_llvm/MLP_mlir.mlir),
 * matched positionally:
 * x: shape [128, 16384] (input)
 * w1: shape [16384, 16384] (weight)
 * b1: shape [16384] (bias)
 * w2: shape [16384, 16384] (weight)
 * b2: shape [16384] (bias)
 * w3: shape [8192, 16384] (weight)
 * b3: shape [8192] (bias)
 * output: shape [128, 8192]
 */

typedef struct {
  float *alloc, *aligned;
  int64_t offset;
  int64_t sizes[1];
  int64_t strides[1];
} memref1d;
typedef struct {
  float *alloc, *aligned;
  int64_t offset;
  int64_t sizes[2];
  int64_t strides[2];
} memref2d;

extern memref2d MLP(
    float *x_a,
    float *x_al,
    int64_t x_off,
    int64_t x_s0,
    int64_t x_s1,
    int64_t x_st0,
    int64_t x_st1,
    float *w1_a,
    float *w1_al,
    int64_t w1_off,
    int64_t w1_s0,
    int64_t w1_s1,
    int64_t w1_st0,
    int64_t w1_st1,
    float *b1_a,
    float *b1_al,
    int64_t b1_off,
    int64_t b1_s0,
    int64_t b1_st0,
    float *w2_a,
    float *w2_al,
    int64_t w2_off,
    int64_t w2_s0,
    int64_t w2_s1,
    int64_t w2_st0,
    int64_t w2_st1,
    float *b2_a,
    float *b2_al,
    int64_t b2_off,
    int64_t b2_s0,
    int64_t b2_st0,
    float *w3_a,
    float *w3_al,
    int64_t w3_off,
    int64_t w3_s0,
    int64_t w3_s1,
    int64_t w3_st0,
    int64_t w3_st1,
    float *b3_a,
    float *b3_al,
    int64_t b3_off,
    int64_t b3_s0,
    int64_t b3_st0);

static const size_t x_count = 2097152;
static const size_t w1_count = 268435456;
static const size_t b1_count = 16384;
static const size_t w2_count = 268435456;
static const size_t b2_count = 16384;
static const size_t w3_count = 134217728;
static const size_t b3_count = 8192;

static float *read_floats(FILE *f, size_t n, const char *what) {
  float *p = (float *)malloc(n * sizeof(float));
  if (!p) {
    fprintf(stderr, "out of memory reading %s (%zu floats)\n", what, n);
    exit(1);
  }
  size_t got = fread(p, sizeof(float), n, f);
  if (got != n) {
    fprintf(stderr, "short read on %s: wanted %zu floats, got %zu\n", what, n,
            got);
    exit(1);
  }
  return p;
}

static int cmp_double(const void *a, const void *b) {
  double x = *(const double *)a, y = *(const double *)b;
  return (x > y) - (x < y);
}

static void write_result(memref2d out, const char *output_path) {
  printf("writing output to %s...\n", output_path);
  fflush(stdout);
  FILE *of = fopen(output_path, "wb");
  if (!of) {
    fprintf(stderr, "failed to open output file '%s': ", output_path);
    perror(NULL);
    exit(1);
  }
  size_t n_out = 1;
  for (int i = 0; i < 2; i++)
    n_out *= (size_t)out.sizes[i];
  size_t wrote = fwrite(out.aligned, sizeof(float), n_out, of);
  fclose(of);
  if (wrote != n_out) {
    fprintf(stderr, "short write on output: wanted %zu floats, wrote %zu\n",
            n_out, wrote);
    exit(1);
  }
}

int main(int argc, char **argv) {
  printf("reading weights...\n");
  fflush(stdout);
  const char *weights_path = argc > 1 ? argv[1] : "weights.bin";
  const char *input_path = argc > 2 ? argv[2] : "input.bin";
  int reps = argc > 3 ? atoi(argv[3]) : 5;
  const char *output_path = argc > 4 ? argv[4] : "output_torchmlir.bin";

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }

  float *w1 = read_floats(wf, w1_count, "w1");
  float *b1 = read_floats(wf, b1_count, "b1");
  float *w2 = read_floats(wf, w2_count, "w2");
  float *b2 = read_floats(wf, b2_count, "b2");
  float *w3 = read_floats(wf, w3_count, "w3");
  float *b3 = read_floats(wf, b3_count, "b3");
  fclose(wf);

  printf("weights loaded.\n");
  fflush(stdout);

  printf("reading input...\n");
  fflush(stdout);
  FILE *xf = fopen(input_path, "rb");
  if (!xf) {
    fprintf(stderr, "failed to open input file '%s': ", input_path);
    perror(NULL);
    return 1;
  }
  float *x = read_floats(xf, x_count, "x");
  fclose(xf);

  printf("input loaded.\n");
  fflush(stdout);
  double *times = (double *)malloc(reps * sizeof(double));

  printf("start warm-up (1 call)...\n");
  fflush(stdout);
  for (int i = 0; i < 1; i++) {
    memref2d out = MLP(
        x, x, 0,
        128, 16384,
        16384, 1,
        w1, w1, 0,
        16384, 16384,
        16384, 1,
        b1, b1, 0,
        16384,
        1,
        w2, w2, 0,
        16384, 16384,
        16384, 1,
        b2, b2, 0,
        16384,
        1,
        w3, w3, 0,
        8192, 16384,
        16384, 1,
        b3, b3, 0,
        8192,
        1);
    free(out.alloc);
  }
  printf("warm-up done.\n");
  fflush(stdout);
  printf("start timed reps...\n");
  fflush(stdout);
  int keep_out = 0;
  memref2d out;
  for (int i = 0; i < reps; i++) {
    struct timespec t0, t1;
    clock_gettime(CLOCK_MONOTONIC, &t0);
    memref2d cur = MLP(
        x, x, 0,
        128, 16384,
        16384, 1,
        w1, w1, 0,
        16384, 16384,
        16384, 1,
        b1, b1, 0,
        16384,
        1,
        w2, w2, 0,
        16384, 16384,
        16384, 1,
        b2, b2, 0,
        16384,
        1,
        w3, w3, 0,
        8192, 16384,
        16384, 1,
        b3, b3, 0,
        8192,
        1);
    clock_gettime(CLOCK_MONOTONIC, &t1);
    times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
               (double)(t1.tv_nsec - t0.tv_nsec);
    if (keep_out)
      free(out.alloc);
    out = cur;
    keep_out = 1;
  }
  printf("finish timed reps...\n");
  fflush(stdout);

  write_result(out, output_path);
  free(out.alloc);

  qsort(times, reps, sizeof(double), cmp_double);
  double sum = 0;
  for (int i = 0; i < reps; i++)
    sum += times[i];

  printf("pipeline=mlir->llvm weights=%s input=%s reps=%d median_ns=%.1f "
         "mean_ns=%.1f min_ns=%.1f max_ns=%.1f\n",
         weights_path, input_path, reps, times[reps / 2], sum / reps, times[0],
         times[reps - 1]);

  free(x);
  free(times);
  return 0;
}
