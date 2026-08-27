#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* Auto-generated driver for `VGG19` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from a sibling raw-pointer .ll for the
 * same model ('VGG19'), matched positionally:
 * w1: shape [64, 3, 3, 3] (weight)
 * b1: shape [64] (bias)
 * x: shape [10, 3, 224, 224] (input)
 * w2: shape [64, 64, 3, 3] (weight)
 * b2: shape [64] (bias)
 * w3: shape [128, 64, 3, 3] (weight)
 * b3: shape [128] (bias)
 * w4: shape [128, 128, 3, 3] (weight)
 * b4: shape [128] (bias)
 * w5: shape [256, 128, 3, 3] (weight)
 * b5: shape [256] (bias)
 * w6: shape [256, 256, 3, 3] (weight)
 * b6: shape [256] (bias)
 * w7: shape [256, 256, 3, 3] (weight)
 * b7: shape [256] (bias)
 * w8: shape [256, 256, 3, 3] (weight)
 * b8: shape [256] (bias)
 * w9: shape [512, 256, 3, 3] (weight)
 * b9: shape [512] (bias)
 * w10: shape [512, 512, 3, 3] (weight)
 * b10: shape [512] (bias)
 * w11: shape [512, 512, 3, 3] (weight)
 * b11: shape [512] (bias)
 * w12: shape [512, 512, 3, 3] (weight)
 * b12: shape [512] (bias)
 * w13: shape [512, 512, 3, 3] (weight)
 * b13: shape [512] (bias)
 * w14: shape [512, 512, 3, 3] (weight)
 * b14: shape [512] (bias)
 * w15: shape [512, 512, 3, 3] (weight)
 * b15: shape [512] (bias)
 * w16: shape [512, 512, 3, 3] (weight)
 * b16: shape [512] (bias)
 * w17: shape [4096, 25088] (weight)
 * b17: shape [4096] (bias)
 * w18: shape [4096, 4096] (weight)
 * b18: shape [4096] (bias)
 * w19: shape [1000, 4096] (weight)
 * b19: shape [1000] (bias)
 * output: shape [10, 1000]
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
typedef struct {
  float *alloc, *aligned;
  int64_t offset;
  int64_t sizes[4];
  int64_t strides[4];
} memref4d;

extern memref2d VGG19(
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
    int64_t b6_st0,
    float *w7_a,
    float *w7_al,
    int64_t w7_off,
    int64_t w7_s0,
    int64_t w7_s1,
    int64_t w7_s2,
    int64_t w7_s3,
    int64_t w7_st0,
    int64_t w7_st1,
    int64_t w7_st2,
    int64_t w7_st3,
    float *b7_a,
    float *b7_al,
    int64_t b7_off,
    int64_t b7_s0,
    int64_t b7_st0,
    float *w8_a,
    float *w8_al,
    int64_t w8_off,
    int64_t w8_s0,
    int64_t w8_s1,
    int64_t w8_s2,
    int64_t w8_s3,
    int64_t w8_st0,
    int64_t w8_st1,
    int64_t w8_st2,
    int64_t w8_st3,
    float *b8_a,
    float *b8_al,
    int64_t b8_off,
    int64_t b8_s0,
    int64_t b8_st0,
    float *w9_a,
    float *w9_al,
    int64_t w9_off,
    int64_t w9_s0,
    int64_t w9_s1,
    int64_t w9_s2,
    int64_t w9_s3,
    int64_t w9_st0,
    int64_t w9_st1,
    int64_t w9_st2,
    int64_t w9_st3,
    float *b9_a,
    float *b9_al,
    int64_t b9_off,
    int64_t b9_s0,
    int64_t b9_st0,
    float *w10_a,
    float *w10_al,
    int64_t w10_off,
    int64_t w10_s0,
    int64_t w10_s1,
    int64_t w10_s2,
    int64_t w10_s3,
    int64_t w10_st0,
    int64_t w10_st1,
    int64_t w10_st2,
    int64_t w10_st3,
    float *b10_a,
    float *b10_al,
    int64_t b10_off,
    int64_t b10_s0,
    int64_t b10_st0,
    float *w11_a,
    float *w11_al,
    int64_t w11_off,
    int64_t w11_s0,
    int64_t w11_s1,
    int64_t w11_s2,
    int64_t w11_s3,
    int64_t w11_st0,
    int64_t w11_st1,
    int64_t w11_st2,
    int64_t w11_st3,
    float *b11_a,
    float *b11_al,
    int64_t b11_off,
    int64_t b11_s0,
    int64_t b11_st0,
    float *w12_a,
    float *w12_al,
    int64_t w12_off,
    int64_t w12_s0,
    int64_t w12_s1,
    int64_t w12_s2,
    int64_t w12_s3,
    int64_t w12_st0,
    int64_t w12_st1,
    int64_t w12_st2,
    int64_t w12_st3,
    float *b12_a,
    float *b12_al,
    int64_t b12_off,
    int64_t b12_s0,
    int64_t b12_st0,
    float *w13_a,
    float *w13_al,
    int64_t w13_off,
    int64_t w13_s0,
    int64_t w13_s1,
    int64_t w13_s2,
    int64_t w13_s3,
    int64_t w13_st0,
    int64_t w13_st1,
    int64_t w13_st2,
    int64_t w13_st3,
    float *b13_a,
    float *b13_al,
    int64_t b13_off,
    int64_t b13_s0,
    int64_t b13_st0,
    float *w14_a,
    float *w14_al,
    int64_t w14_off,
    int64_t w14_s0,
    int64_t w14_s1,
    int64_t w14_s2,
    int64_t w14_s3,
    int64_t w14_st0,
    int64_t w14_st1,
    int64_t w14_st2,
    int64_t w14_st3,
    float *b14_a,
    float *b14_al,
    int64_t b14_off,
    int64_t b14_s0,
    int64_t b14_st0,
    float *w15_a,
    float *w15_al,
    int64_t w15_off,
    int64_t w15_s0,
    int64_t w15_s1,
    int64_t w15_s2,
    int64_t w15_s3,
    int64_t w15_st0,
    int64_t w15_st1,
    int64_t w15_st2,
    int64_t w15_st3,
    float *b15_a,
    float *b15_al,
    int64_t b15_off,
    int64_t b15_s0,
    int64_t b15_st0,
    float *w16_a,
    float *w16_al,
    int64_t w16_off,
    int64_t w16_s0,
    int64_t w16_s1,
    int64_t w16_s2,
    int64_t w16_s3,
    int64_t w16_st0,
    int64_t w16_st1,
    int64_t w16_st2,
    int64_t w16_st3,
    float *b16_a,
    float *b16_al,
    int64_t b16_off,
    int64_t b16_s0,
    int64_t b16_st0,
    float *w17_a,
    float *w17_al,
    int64_t w17_off,
    int64_t w17_s0,
    int64_t w17_s1,
    int64_t w17_st0,
    int64_t w17_st1,
    float *b17_a,
    float *b17_al,
    int64_t b17_off,
    int64_t b17_s0,
    int64_t b17_st0,
    float *w18_a,
    float *w18_al,
    int64_t w18_off,
    int64_t w18_s0,
    int64_t w18_s1,
    int64_t w18_st0,
    int64_t w18_st1,
    float *b18_a,
    float *b18_al,
    int64_t b18_off,
    int64_t b18_s0,
    int64_t b18_st0,
    float *w19_a,
    float *w19_al,
    int64_t w19_off,
    int64_t w19_s0,
    int64_t w19_s1,
    int64_t w19_st0,
    int64_t w19_st1,
    float *b19_a,
    float *b19_al,
    int64_t b19_off,
    int64_t b19_s0,
    int64_t b19_st0);

static const size_t w1_count = 1728;
static const size_t b1_count = 64;
static const size_t x_count = 1505280;
static const size_t w2_count = 36864;
static const size_t b2_count = 64;
static const size_t w3_count = 73728;
static const size_t b3_count = 128;
static const size_t w4_count = 147456;
static const size_t b4_count = 128;
static const size_t w5_count = 294912;
static const size_t b5_count = 256;
static const size_t w6_count = 589824;
static const size_t b6_count = 256;
static const size_t w7_count = 589824;
static const size_t b7_count = 256;
static const size_t w8_count = 589824;
static const size_t b8_count = 256;
static const size_t w9_count = 1179648;
static const size_t b9_count = 512;
static const size_t w10_count = 2359296;
static const size_t b10_count = 512;
static const size_t w11_count = 2359296;
static const size_t b11_count = 512;
static const size_t w12_count = 2359296;
static const size_t b12_count = 512;
static const size_t w13_count = 2359296;
static const size_t b13_count = 512;
static const size_t w14_count = 2359296;
static const size_t b14_count = 512;
static const size_t w15_count = 2359296;
static const size_t b15_count = 512;
static const size_t w16_count = 2359296;
static const size_t b16_count = 512;
static const size_t w17_count = 102760448;
static const size_t b17_count = 4096;
static const size_t w18_count = 16777216;
static const size_t b18_count = 4096;
static const size_t w19_count = 4096000;
static const size_t b19_count = 1000;

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
  float *w4 = read_floats(wf, w4_count, "w4");
  float *b4 = read_floats(wf, b4_count, "b4");
  float *w5 = read_floats(wf, w5_count, "w5");
  float *b5 = read_floats(wf, b5_count, "b5");
  float *w6 = read_floats(wf, w6_count, "w6");
  float *b6 = read_floats(wf, b6_count, "b6");
  float *w7 = read_floats(wf, w7_count, "w7");
  float *b7 = read_floats(wf, b7_count, "b7");
  float *w8 = read_floats(wf, w8_count, "w8");
  float *b8 = read_floats(wf, b8_count, "b8");
  float *w9 = read_floats(wf, w9_count, "w9");
  float *b9 = read_floats(wf, b9_count, "b9");
  float *w10 = read_floats(wf, w10_count, "w10");
  float *b10 = read_floats(wf, b10_count, "b10");
  float *w11 = read_floats(wf, w11_count, "w11");
  float *b11 = read_floats(wf, b11_count, "b11");
  float *w12 = read_floats(wf, w12_count, "w12");
  float *b12 = read_floats(wf, b12_count, "b12");
  float *w13 = read_floats(wf, w13_count, "w13");
  float *b13 = read_floats(wf, b13_count, "b13");
  float *w14 = read_floats(wf, w14_count, "w14");
  float *b14 = read_floats(wf, b14_count, "b14");
  float *w15 = read_floats(wf, w15_count, "w15");
  float *b15 = read_floats(wf, b15_count, "b15");
  float *w16 = read_floats(wf, w16_count, "w16");
  float *b16 = read_floats(wf, b16_count, "b16");
  float *w17 = read_floats(wf, w17_count, "w17");
  float *b17 = read_floats(wf, b17_count, "b17");
  float *w18 = read_floats(wf, w18_count, "w18");
  float *b18 = read_floats(wf, b18_count, "b18");
  float *w19 = read_floats(wf, w19_count, "w19");
  float *b19 = read_floats(wf, b19_count, "b19");
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
    memref2d out = VGG19(
        w1, w1, 0,
        64, 3, 3, 3,
        27, 9, 3, 1,
        b1, b1, 0,
        64,
        1,
        x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w2, w2, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b2, b2, 0,
        64,
        1,
        w3, w3, 0,
        128, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        128,
        1,
        w4, w4, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b4, b4, 0,
        128,
        1,
        w5, w5, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b5, b5, 0,
        256,
        1,
        w6, w6, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b6, b6, 0,
        256,
        1,
        w7, w7, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b7, b7, 0,
        256,
        1,
        w8, w8, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b8, b8, 0,
        256,
        1,
        w9, w9, 0,
        512, 256, 3, 3,
        2304, 9, 3, 1,
        b9, b9, 0,
        512,
        1,
        w10, w10, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b10, b10, 0,
        512,
        1,
        w11, w11, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b11, b11, 0,
        512,
        1,
        w12, w12, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b12, b12, 0,
        512,
        1,
        w13, w13, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b13, b13, 0,
        512,
        1,
        w14, w14, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b14, b14, 0,
        512,
        1,
        w15, w15, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b15, b15, 0,
        512,
        1,
        w16, w16, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b16, b16, 0,
        512,
        1,
        w17, w17, 0,
        4096, 25088,
        25088, 1,
        b17, b17, 0,
        4096,
        1,
        w18, w18, 0,
        4096, 4096,
        4096, 1,
        b18, b18, 0,
        4096,
        1,
        w19, w19, 0,
        1000, 4096,
        4096, 1,
        b19, b19, 0,
        1000,
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
    memref2d cur = VGG19(
        w1, w1, 0,
        64, 3, 3, 3,
        27, 9, 3, 1,
        b1, b1, 0,
        64,
        1,
        x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w2, w2, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b2, b2, 0,
        64,
        1,
        w3, w3, 0,
        128, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        128,
        1,
        w4, w4, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b4, b4, 0,
        128,
        1,
        w5, w5, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b5, b5, 0,
        256,
        1,
        w6, w6, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b6, b6, 0,
        256,
        1,
        w7, w7, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b7, b7, 0,
        256,
        1,
        w8, w8, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b8, b8, 0,
        256,
        1,
        w9, w9, 0,
        512, 256, 3, 3,
        2304, 9, 3, 1,
        b9, b9, 0,
        512,
        1,
        w10, w10, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b10, b10, 0,
        512,
        1,
        w11, w11, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b11, b11, 0,
        512,
        1,
        w12, w12, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b12, b12, 0,
        512,
        1,
        w13, w13, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b13, b13, 0,
        512,
        1,
        w14, w14, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b14, b14, 0,
        512,
        1,
        w15, w15, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b15, b15, 0,
        512,
        1,
        w16, w16, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b16, b16, 0,
        512,
        1,
        w17, w17, 0,
        4096, 25088,
        25088, 1,
        b17, b17, 0,
        4096,
        1,
        w18, w18, 0,
        4096, 4096,
        4096, 1,
        b18, b18, 0,
        4096,
        1,
        w19, w19, 0,
        1000, 4096,
        4096, 1,
        b19, b19, 0,
        1000,
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
