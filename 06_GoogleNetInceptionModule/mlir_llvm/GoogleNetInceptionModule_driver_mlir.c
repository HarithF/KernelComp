#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* Auto-generated driver for `GoogleNetInceptionModule` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from sibling .mlir (./06_GoogleNetInceptionModule/mlir_llvm/GoogleNetInceptionModule_mlir.mlir),
 * matched positionally:
 * x: shape [10, 480, 224, 224] (input)
 * w1: shape [192, 480, 1, 1] (weight)
 * b1: shape [192] (bias)
 * w2: shape [96, 480, 1, 1] (weight)
 * b2: shape [96] (bias)
 * w3: shape [208, 96, 3, 3] (weight)
 * b3: shape [208] (bias)
 * w4: shape [16, 480, 1, 1] (weight)
 * b4: shape [16] (bias)
 * w5: shape [48, 16, 5, 5] (weight)
 * b5: shape [48] (bias)
 * w6: shape [64, 480, 1, 1] (weight)
 * b6: shape [64] (bias)
 * output: shape [10, 512, 224, 224]
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
  int64_t sizes[4];
  int64_t strides[4];
} memref4d;

extern memref4d GoogleNetInceptionModule(
    float *x_a,
    float *x_al,
    int64_t x_off,
    int64_t x_s0,
    int64_t x_s1,
    int64_t x_s2,
    int64_t x_s3,
    int64_t x_st0,
    int64_t x_st1,
    int64_t x_st2,
    int64_t x_st3,
    float *w1_a,
    float *w1_al,
    int64_t w1_off,
    int64_t w1_s0,
    int64_t w1_s1,
    int64_t w1_s2,
    int64_t w1_s3,
    int64_t w1_st0,
    int64_t w1_st1,
    int64_t w1_st2,
    int64_t w1_st3,
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
    int64_t w2_s2,
    int64_t w2_s3,
    int64_t w2_st0,
    int64_t w2_st1,
    int64_t w2_st2,
    int64_t w2_st3,
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
    int64_t w3_s2,
    int64_t w3_s3,
    int64_t w3_st0,
    int64_t w3_st1,
    int64_t w3_st2,
    int64_t w3_st3,
    float *b3_a,
    float *b3_al,
    int64_t b3_off,
    int64_t b3_s0,
    int64_t b3_st0,
    float *w4_a,
    float *w4_al,
    int64_t w4_off,
    int64_t w4_s0,
    int64_t w4_s1,
    int64_t w4_s2,
    int64_t w4_s3,
    int64_t w4_st0,
    int64_t w4_st1,
    int64_t w4_st2,
    int64_t w4_st3,
    float *b4_a,
    float *b4_al,
    int64_t b4_off,
    int64_t b4_s0,
    int64_t b4_st0,
    float *w5_a,
    float *w5_al,
    int64_t w5_off,
    int64_t w5_s0,
    int64_t w5_s1,
    int64_t w5_s2,
    int64_t w5_s3,
    int64_t w5_st0,
    int64_t w5_st1,
    int64_t w5_st2,
    int64_t w5_st3,
    float *b5_a,
    float *b5_al,
    int64_t b5_off,
    int64_t b5_s0,
    int64_t b5_st0,
    float *w6_a,
    float *w6_al,
    int64_t w6_off,
    int64_t w6_s0,
    int64_t w6_s1,
    int64_t w6_s2,
    int64_t w6_s3,
    int64_t w6_st0,
    int64_t w6_st1,
    int64_t w6_st2,
    int64_t w6_st3,
    float *b6_a,
    float *b6_al,
    int64_t b6_off,
    int64_t b6_s0,
    int64_t b6_st0);

static const size_t x_count = 240844800;
static const size_t w1_count = 92160;
static const size_t b1_count = 192;
static const size_t w2_count = 46080;
static const size_t b2_count = 96;
static const size_t w3_count = 179712;
static const size_t b3_count = 208;
static const size_t w4_count = 7680;
static const size_t b4_count = 16;
static const size_t w5_count = 19200;
static const size_t b5_count = 48;
static const size_t w6_count = 30720;
static const size_t b6_count = 64;

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

static void write_result(memref4d out, const char *output_path) {
  printf("writing output to %s...\n", output_path);
  fflush(stdout);
  FILE *of = fopen(output_path, "wb");
  if (!of) {
    fprintf(stderr, "failed to open output file '%s': ", output_path);
    perror(NULL);
    exit(1);
  }
  size_t n_out = 1;
  for (int i = 0; i < 4; i++)
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
  float *w4 = read_floats(wf, w4_count, "w4");
  float *b4 = read_floats(wf, b4_count, "b4");
  float *w5 = read_floats(wf, w5_count, "w5");
  float *b5 = read_floats(wf, b5_count, "b5");
  float *w6 = read_floats(wf, w6_count, "w6");
  float *b6 = read_floats(wf, b6_count, "b6");
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
    memref4d out = GoogleNetInceptionModule(
        x, x, 0,
        10, 480, 224, 224,
        24084480, 50176, 224, 1,
        w1, w1, 0,
        192, 480, 1, 1,
        480, 1, 1, 1,
        b1, b1, 0,
        192,
        1,
        w2, w2, 0,
        96, 480, 1, 1,
        480, 1, 1, 1,
        b2, b2, 0,
        96,
        1,
        w3, w3, 0,
        208, 96, 3, 3,
        864, 9, 3, 1,
        b3, b3, 0,
        208,
        1,
        w4, w4, 0,
        16, 480, 1, 1,
        480, 1, 1, 1,
        b4, b4, 0,
        16,
        1,
        w5, w5, 0,
        48, 16, 5, 5,
        400, 25, 5, 1,
        b5, b5, 0,
        48,
        1,
        w6, w6, 0,
        64, 480, 1, 1,
        480, 1, 1, 1,
        b6, b6, 0,
        64,
        1);
    free(out.alloc);
  }
  printf("warm-up done.\n");
  fflush(stdout);
  printf("start timed reps...\n");
  fflush(stdout);
  int keep_out = 0;
  memref4d out;
  for (int i = 0; i < reps; i++) {
    struct timespec t0, t1;
    clock_gettime(CLOCK_MONOTONIC, &t0);
    memref4d cur = GoogleNetInceptionModule(
        x, x, 0,
        10, 480, 224, 224,
        24084480, 50176, 224, 1,
        w1, w1, 0,
        192, 480, 1, 1,
        480, 1, 1, 1,
        b1, b1, 0,
        192,
        1,
        w2, w2, 0,
        96, 480, 1, 1,
        480, 1, 1, 1,
        b2, b2, 0,
        96,
        1,
        w3, w3, 0,
        208, 96, 3, 3,
        864, 9, 3, 1,
        b3, b3, 0,
        208,
        1,
        w4, w4, 0,
        16, 480, 1, 1,
        480, 1, 1, 1,
        b4, b4, 0,
        16,
        1,
        w5, w5, 0,
        48, 16, 5, 5,
        400, 25, 5, 1,
        b5, b5, 0,
        48,
        1,
        w6, w6, 0,
        64, 480, 1, 1,
        480, 1, 1, 1,
        b6, b6, 0,
        64,
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
