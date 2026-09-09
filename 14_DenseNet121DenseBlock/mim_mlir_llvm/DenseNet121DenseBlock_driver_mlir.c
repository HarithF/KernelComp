#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

/* Auto-generated driver for `DenseNet121DenseBlock` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from sibling .mlir (./14_DenseNet121DenseBlock/mim_mlir_llvm/DenseNet121DenseBlock_mim_mlir.mlir)
 * -- which is a file for THIS pipeline, so its argument order matches
 * one-for-one what convert-func-to-llvm scalarized. Each weight's location
 * in weights.bin is its byte offset from DenseNet121DenseBlock_params.json,
 * looked up by canonical torch parameter name:
 * x: shape [10, 32, 224, 224] (input)
 * b1: shape [32] (bias) <- layers.0.0.running_mean @ byte 0
 * b2: shape [32] (bias) <- layers.0.0.running_var @ byte 128
 * b3: shape [32] (bias) <- layers.0.0.weight @ byte 256
 * b4: shape [32] (bias) <- layers.0.0.bias @ byte 384
 * w1: shape [32, 32, 3, 3] (weight) <- layers.0.2.weight @ byte 512
 * b5: shape [64] (bias) <- layers.1.0.running_mean @ byte 37376
 * b6: shape [64] (bias) <- layers.1.0.running_var @ byte 37632
 * b7: shape [64] (bias) <- layers.1.0.weight @ byte 37888
 * b8: shape [64] (bias) <- layers.1.0.bias @ byte 38144
 * w2: shape [32, 64, 3, 3] (weight) <- layers.1.2.weight @ byte 38400
 * b9: shape [96] (bias) <- layers.2.0.running_mean @ byte 112128
 * b10: shape [96] (bias) <- layers.2.0.running_var @ byte 112512
 * b11: shape [96] (bias) <- layers.2.0.weight @ byte 112896
 * b12: shape [96] (bias) <- layers.2.0.bias @ byte 113280
 * w3: shape [32, 96, 3, 3] (weight) <- layers.2.2.weight @ byte 113664
 * b13: shape [128] (bias) <- layers.3.0.running_mean @ byte 224256
 * b14: shape [128] (bias) <- layers.3.0.running_var @ byte 224768
 * b15: shape [128] (bias) <- layers.3.0.weight @ byte 225280
 * b16: shape [128] (bias) <- layers.3.0.bias @ byte 225792
 * w4: shape [32, 128, 3, 3] (weight) <- layers.3.2.weight @ byte 226304
 * b17: shape [160] (bias) <- layers.4.0.running_mean @ byte 373760
 * b18: shape [160] (bias) <- layers.4.0.running_var @ byte 374400
 * b19: shape [160] (bias) <- layers.4.0.weight @ byte 375040
 * b20: shape [160] (bias) <- layers.4.0.bias @ byte 375680
 * w5: shape [32, 160, 3, 3] (weight) <- layers.4.2.weight @ byte 376320
 * b21: shape [192] (bias) <- layers.5.0.running_mean @ byte 560640
 * b22: shape [192] (bias) <- layers.5.0.running_var @ byte 561408
 * b23: shape [192] (bias) <- layers.5.0.weight @ byte 562176
 * b24: shape [192] (bias) <- layers.5.0.bias @ byte 562944
 * w6: shape [32, 192, 3, 3] (weight) <- layers.5.2.weight @ byte 563712
 * output: shape [10, 224, 224, 224]
 *
 * Usage: DenseNet121DenseBlock_driver_mlir <weights> <input> <reps> <output> [run_id] [json_report]
 * run_id/json_report default to a generated UTC timestamp / a filename
 * derived from it if omitted -- pass the same run_id across every model
 * and pipeline in one batch (e.g. from reporter.py) to correlate their
 * timing reports.
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

extern memref4d DenseNet121DenseBlock(
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
    float *b1_a,
    float *b1_al,
    int64_t b1_off,
    int64_t b1_s0,
    int64_t b1_st0,
    float *b2_a,
    float *b2_al,
    int64_t b2_off,
    int64_t b2_s0,
    int64_t b2_st0,
    float *b3_a,
    float *b3_al,
    int64_t b3_off,
    int64_t b3_s0,
    int64_t b3_st0,
    float *b4_a,
    float *b4_al,
    int64_t b4_off,
    int64_t b4_s0,
    int64_t b4_st0,
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
    float *b5_a,
    float *b5_al,
    int64_t b5_off,
    int64_t b5_s0,
    int64_t b5_st0,
    float *b6_a,
    float *b6_al,
    int64_t b6_off,
    int64_t b6_s0,
    int64_t b6_st0,
    float *b7_a,
    float *b7_al,
    int64_t b7_off,
    int64_t b7_s0,
    int64_t b7_st0,
    float *b8_a,
    float *b8_al,
    int64_t b8_off,
    int64_t b8_s0,
    int64_t b8_st0,
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
    float *b9_a,
    float *b9_al,
    int64_t b9_off,
    int64_t b9_s0,
    int64_t b9_st0,
    float *b10_a,
    float *b10_al,
    int64_t b10_off,
    int64_t b10_s0,
    int64_t b10_st0,
    float *b11_a,
    float *b11_al,
    int64_t b11_off,
    int64_t b11_s0,
    int64_t b11_st0,
    float *b12_a,
    float *b12_al,
    int64_t b12_off,
    int64_t b12_s0,
    int64_t b12_st0,
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
    float *b13_a,
    float *b13_al,
    int64_t b13_off,
    int64_t b13_s0,
    int64_t b13_st0,
    float *b14_a,
    float *b14_al,
    int64_t b14_off,
    int64_t b14_s0,
    int64_t b14_st0,
    float *b15_a,
    float *b15_al,
    int64_t b15_off,
    int64_t b15_s0,
    int64_t b15_st0,
    float *b16_a,
    float *b16_al,
    int64_t b16_off,
    int64_t b16_s0,
    int64_t b16_st0,
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
    float *b17_a,
    float *b17_al,
    int64_t b17_off,
    int64_t b17_s0,
    int64_t b17_st0,
    float *b18_a,
    float *b18_al,
    int64_t b18_off,
    int64_t b18_s0,
    int64_t b18_st0,
    float *b19_a,
    float *b19_al,
    int64_t b19_off,
    int64_t b19_s0,
    int64_t b19_st0,
    float *b20_a,
    float *b20_al,
    int64_t b20_off,
    int64_t b20_s0,
    int64_t b20_st0,
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
    float *b21_a,
    float *b21_al,
    int64_t b21_off,
    int64_t b21_s0,
    int64_t b21_st0,
    float *b22_a,
    float *b22_al,
    int64_t b22_off,
    int64_t b22_s0,
    int64_t b22_st0,
    float *b23_a,
    float *b23_al,
    int64_t b23_off,
    int64_t b23_s0,
    int64_t b23_st0,
    float *b24_a,
    float *b24_al,
    int64_t b24_off,
    int64_t b24_s0,
    int64_t b24_st0,
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
    int64_t w6_st3);

static const size_t x_count = 16056320;
static const size_t b1_count = 32;
static const size_t b2_count = 32;
static const size_t b3_count = 32;
static const size_t b4_count = 32;
static const size_t w1_count = 9216;
static const size_t b5_count = 64;
static const size_t b6_count = 64;
static const size_t b7_count = 64;
static const size_t b8_count = 64;
static const size_t w2_count = 18432;
static const size_t b9_count = 96;
static const size_t b10_count = 96;
static const size_t b11_count = 96;
static const size_t b12_count = 96;
static const size_t w3_count = 27648;
static const size_t b13_count = 128;
static const size_t b14_count = 128;
static const size_t b15_count = 128;
static const size_t b16_count = 128;
static const size_t w4_count = 36864;
static const size_t b17_count = 160;
static const size_t b18_count = 160;
static const size_t b19_count = 160;
static const size_t b20_count = 160;
static const size_t w5_count = 46080;
static const size_t b21_count = 192;
static const size_t b22_count = 192;
static const size_t b23_count = 192;
static const size_t b24_count = 192;
static const size_t w6_count = 55296;

static float *read_floats_at(FILE *f, long byte_offset, size_t n,
                             const char *what) {
  float *p = (float *)malloc(n * sizeof(float));
  if (!p) {
    fprintf(stderr, "out of memory reading %s (%zu floats)\n", what, n);
    exit(1);
  }
  if (fseek(f, byte_offset, SEEK_SET) != 0) {
    fprintf(stderr, "seek to offset %ld for %s failed\n", byte_offset, what);
    exit(1);
  }
  size_t got = fread(p, sizeof(float), n, f);
  if (got != n) {
    fprintf(stderr, "short read on %s at offset %ld: wanted %zu floats, got "
                    "%zu\n", what, byte_offset, n, got);
    exit(1);
  }
  return p;
}

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

static void resolve_run_id(int argc, char **argv, char *buf, size_t buflen) {
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
    if (*p == '"' || *p == '\\')
      fputc('\\', f);
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
  fprintf(jf, "{\n  \"model\": ");
  print_json_string(jf, model);
  fprintf(jf, ",\n  \"pipeline\": ");
  print_json_string(jf, pipeline);
  fprintf(jf, ",\n  \"run_id\": ");
  print_json_string(jf, run_id);
  fprintf(jf, ",\n  \"weights_path\": ");
  print_json_string(jf, weights_path);
  fprintf(jf, ",\n  \"input_path\": ");
  print_json_string(jf, input_path);
  fprintf(jf, ",\n  \"output_path\": ");
  print_json_string(jf, output_path);
  fprintf(jf, ",\n  \"reps\": %d", reps);
  fprintf(jf, ",\n  \"median_ns\": %.1f", median_ns);
  fprintf(jf, ",\n  \"mean_ns\": %.1f", mean_ns);
  fprintf(jf, ",\n  \"min_ns\": %.1f", min_ns);
  fprintf(jf, ",\n  \"max_ns\": %.1f", max_ns);
  fprintf(jf, "\n}\n");
  fclose(jf);
  printf("wrote timing report to %s\n", json_path);
  fflush(stdout);
}

/* --- per-call process isolation; see c_fork_helpers() in gen_drivers.py ---
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
    fprintf(stderr, "%s: child killed by signal %d\n", what, s);
    if (s == SIGKILL)
      fprintf(stderr,
              "  SIGKILL almost always means the OOM killer. This model "
              "leaks several GiB\n  per call inside the generated code; a "
              "single call already exceeds free RAM.\n  Forking bounds the "
              "leak to one call, so it cannot help beyond that.\n");
    exit(1);
  }
  if (!WIFEXITED(st) || WEXITSTATUS(st) != 0) {
    fprintf(stderr, "%s: child exited with status %d\n", what,
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

  char run_id_buf[64];
  resolve_run_id(argc, argv, run_id_buf, sizeof(run_id_buf));
  const char *run_id = run_id_buf;

  char json_path_buf[512];
  const char *json_report_path;
  if (argc > 6) {
    json_report_path = argv[6];
  } else {
    snprintf(json_path_buf, sizeof(json_path_buf), "DenseNet121DenseBlock_mim_mlir_llvm_%s_timing.json", run_id);
    json_report_path = json_path_buf;
  }

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }

  float *b1 = read_floats_at(wf, 0, b1_count, "b1");
  float *b2 = read_floats_at(wf, 128, b2_count, "b2");
  float *b3 = read_floats_at(wf, 256, b3_count, "b3");
  float *b4 = read_floats_at(wf, 384, b4_count, "b4");
  float *w1 = read_floats_at(wf, 512, w1_count, "w1");
  float *b5 = read_floats_at(wf, 37376, b5_count, "b5");
  float *b6 = read_floats_at(wf, 37632, b6_count, "b6");
  float *b7 = read_floats_at(wf, 37888, b7_count, "b7");
  float *b8 = read_floats_at(wf, 38144, b8_count, "b8");
  float *w2 = read_floats_at(wf, 38400, w2_count, "w2");
  float *b9 = read_floats_at(wf, 112128, b9_count, "b9");
  float *b10 = read_floats_at(wf, 112512, b10_count, "b10");
  float *b11 = read_floats_at(wf, 112896, b11_count, "b11");
  float *b12 = read_floats_at(wf, 113280, b12_count, "b12");
  float *w3 = read_floats_at(wf, 113664, w3_count, "w3");
  float *b13 = read_floats_at(wf, 224256, b13_count, "b13");
  float *b14 = read_floats_at(wf, 224768, b14_count, "b14");
  float *b15 = read_floats_at(wf, 225280, b15_count, "b15");
  float *b16 = read_floats_at(wf, 225792, b16_count, "b16");
  float *w4 = read_floats_at(wf, 226304, w4_count, "w4");
  float *b17 = read_floats_at(wf, 373760, b17_count, "b17");
  float *b18 = read_floats_at(wf, 374400, b18_count, "b18");
  float *b19 = read_floats_at(wf, 375040, b19_count, "b19");
  float *b20 = read_floats_at(wf, 375680, b20_count, "b20");
  float *w5 = read_floats_at(wf, 376320, w5_count, "w5");
  float *b21 = read_floats_at(wf, 560640, b21_count, "b21");
  float *b22 = read_floats_at(wf, 561408, b22_count, "b22");
  float *b23 = read_floats_at(wf, 562176, b23_count, "b23");
  float *b24 = read_floats_at(wf, 562944, b24_count, "b24");
  float *w6 = read_floats_at(wf, 563712, w6_count, "w6");
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
  const int use_fork = driver_fork_enabled();
  double *times = use_fork ? alloc_shared_times(reps)
                           : (double *)malloc(reps * sizeof(double));
  printf("call isolation: %s\n", use_fork ? "fork per call" : "in-process (DRIVER_NO_FORK)");

  printf("start warm-up (1 call)...\n");
  fflush(stdout);
  if (use_fork) {
    fflush(NULL);
    pid_t p = fork();
    if (p < 0) { perror("fork"); return 1; }
    if (p == 0) {
      memref4d out = DenseNet121DenseBlock(
          x, x, 0,
        10, 32, 224, 224,
        1605632, 50176, 224, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w1, w1, 0,
        32, 32, 3, 3,
        288, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w2, w2, 0,
        32, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        b11, b11, 0,
        96,
        1,
        b12, b12, 0,
        96,
        1,
        w3, w3, 0,
        32, 96, 3, 3,
        864, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w4, w4, 0,
        32, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        160,
        1,
        b18, b18, 0,
        160,
        1,
        b19, b19, 0,
        160,
        1,
        b20, b20, 0,
        160,
        1,
        w5, w5, 0,
        32, 160, 3, 3,
        1440, 9, 3, 1,
        b21, b21, 0,
        192,
        1,
        b22, b22, 0,
        192,
        1,
        b23, b23, 0,
        192,
        1,
        b24, b24, 0,
        192,
        1,
        w6, w6, 0,
        32, 192, 3, 3,
        1728, 9, 3, 1);
      free(out.alloc);
      _exit(0);
    }
    await_child(p, "warm-up");
  } else {
    memref4d out = DenseNet121DenseBlock(
        x, x, 0,
        10, 32, 224, 224,
        1605632, 50176, 224, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w1, w1, 0,
        32, 32, 3, 3,
        288, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w2, w2, 0,
        32, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        b11, b11, 0,
        96,
        1,
        b12, b12, 0,
        96,
        1,
        w3, w3, 0,
        32, 96, 3, 3,
        864, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w4, w4, 0,
        32, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        160,
        1,
        b18, b18, 0,
        160,
        1,
        b19, b19, 0,
        160,
        1,
        b20, b20, 0,
        160,
        1,
        w5, w5, 0,
        32, 160, 3, 3,
        1440, 9, 3, 1,
        b21, b21, 0,
        192,
        1,
        b22, b22, 0,
        192,
        1,
        b23, b23, 0,
        192,
        1,
        b24, b24, 0,
        192,
        1,
        w6, w6, 0,
        32, 192, 3, 3,
        1728, 9, 3, 1);
    free(out.alloc);
  }
  printf("warm-up done.\n");
  fflush(stdout);
  printf("start timed reps...\n");
  fflush(stdout);
  int keep_out = 0;
  memref4d out;
  for (int i = 0; i < reps; i++) {
    const int is_last = (i == reps - 1);
    if (use_fork) {
      fflush(NULL);
      pid_t p = fork();
      if (p < 0) { perror("fork"); return 1; }
      if (p == 0) {
        struct timespec t0, t1;
        clock_gettime(CLOCK_MONOTONIC, &t0);
        memref4d cur = DenseNet121DenseBlock(
            x, x, 0,
        10, 32, 224, 224,
        1605632, 50176, 224, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w1, w1, 0,
        32, 32, 3, 3,
        288, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w2, w2, 0,
        32, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        b11, b11, 0,
        96,
        1,
        b12, b12, 0,
        96,
        1,
        w3, w3, 0,
        32, 96, 3, 3,
        864, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w4, w4, 0,
        32, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        160,
        1,
        b18, b18, 0,
        160,
        1,
        b19, b19, 0,
        160,
        1,
        b20, b20, 0,
        160,
        1,
        w5, w5, 0,
        32, 160, 3, 3,
        1440, 9, 3, 1,
        b21, b21, 0,
        192,
        1,
        b22, b22, 0,
        192,
        1,
        b23, b23, 0,
        192,
        1,
        b24, b24, 0,
        192,
        1,
        w6, w6, 0,
        32, 192, 3, 3,
        1728, 9, 3, 1);
        clock_gettime(CLOCK_MONOTONIC, &t1);
        times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                   (double)(t1.tv_nsec - t0.tv_nsec);
        /* The last rep's child owns writing the result, so the output
           buffer never has to cross the process boundary. */
        if (is_last) {
          write_result(cur, output_path);
          free(cur.alloc);
        }
        _exit(0);
      }
      await_child(p, "timed rep");
    } else {
      struct timespec t0, t1;
      clock_gettime(CLOCK_MONOTONIC, &t0);
      memref4d cur = DenseNet121DenseBlock(
          x, x, 0,
        10, 32, 224, 224,
        1605632, 50176, 224, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w1, w1, 0,
        32, 32, 3, 3,
        288, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w2, w2, 0,
        32, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        b11, b11, 0,
        96,
        1,
        b12, b12, 0,
        96,
        1,
        w3, w3, 0,
        32, 96, 3, 3,
        864, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w4, w4, 0,
        32, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        160,
        1,
        b18, b18, 0,
        160,
        1,
        b19, b19, 0,
        160,
        1,
        b20, b20, 0,
        160,
        1,
        w5, w5, 0,
        32, 160, 3, 3,
        1440, 9, 3, 1,
        b21, b21, 0,
        192,
        1,
        b22, b22, 0,
        192,
        1,
        b23, b23, 0,
        192,
        1,
        b24, b24, 0,
        192,
        1,
        w6, w6, 0,
        32, 192, 3, 3,
        1728, 9, 3, 1);
      clock_gettime(CLOCK_MONOTONIC, &t1);
      times[i] = (double)(t1.tv_sec - t0.tv_sec) * 1e9 +
                 (double)(t1.tv_nsec - t0.tv_nsec);
      if (keep_out)
        free(out.alloc);
      out = cur;
      keep_out = 1;
    }
  }
  printf("finish timed reps...\n");
  fflush(stdout);

  if (!use_fork) {
    write_result(out, output_path);
    free(out.alloc);
  }

  qsort(times, reps, sizeof(double), cmp_double);
  double sum = 0;
  for (int i = 0; i < reps; i++)
    sum += times[i];

  printf("pipeline=mlir->llvm weights=%s input=%s reps=%d median_ns=%.1f "
         "mean_ns=%.1f min_ns=%.1f max_ns=%.1f\n",
         weights_path, input_path, reps, times[reps / 2], sum / reps, times[0],
         times[reps - 1]);

  write_timing_report(json_report_path, "DenseNet121DenseBlock", "mim_mlir_llvm", run_id,
                       weights_path, input_path, output_path, reps,
                       times[reps / 2], sum / reps, times[0], times[reps - 1]);

  free(x);
  release_times(times, reps, use_fork);
  return 0;
}
