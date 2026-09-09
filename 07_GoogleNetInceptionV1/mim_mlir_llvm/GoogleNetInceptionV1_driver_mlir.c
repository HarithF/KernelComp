#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

/* Auto-generated driver for `GoogleNetInceptionV1` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from sibling .mlir (./07_GoogleNetInceptionV1/mim_mlir_llvm/GoogleNetInceptionV1_mim_mlir.mlir)
 * -- which is a file for THIS pipeline, so its argument order matches
 * one-for-one what convert-func-to-llvm scalarized. Each weight's location
 * in weights.bin is its byte offset from GoogleNetInceptionV1_params.json,
 * looked up by canonical torch parameter name:
 * w1: shape [64, 3, 7, 7] (weight) <- conv1.weight @ byte 0
 * b1: shape [64] (bias) <- conv1.bias @ byte 37632
 * x: shape [10, 3, 224, 224] (input)
 * w2: shape [64, 64] (weight) <- conv2.weight @ byte 37888
 * b2: shape [64] (bias) <- conv2.bias @ byte 54272
 * w3: shape [192, 64, 3, 3] (weight) <- conv3.weight @ byte 54528
 * b3: shape [192] (bias) <- conv3.bias @ byte 496896
 * w4: shape [64, 192] (weight) <- inception3a.branch1x1.weight @ byte 497664
 * b4: shape [64] (bias) <- inception3a.branch1x1.bias @ byte 546816
 * w5: shape [96, 192] (weight) <- inception3a.branch3x3.0.weight @ byte 547072
 * b5: shape [96] (bias) <- inception3a.branch3x3.0.bias @ byte 620800
 * w6: shape [128, 96, 3, 3] (weight) <- inception3a.branch3x3.1.weight @ byte 621184
 * b6: shape [128] (bias) <- inception3a.branch3x3.1.bias @ byte 1063552
 * w7: shape [16, 192] (weight) <- inception3a.branch5x5.0.weight @ byte 1064064
 * b7: shape [16] (bias) <- inception3a.branch5x5.0.bias @ byte 1076352
 * w8: shape [32, 16, 5, 5] (weight) <- inception3a.branch5x5.1.weight @ byte 1076416
 * b8: shape [32] (bias) <- inception3a.branch5x5.1.bias @ byte 1127616
 * w9: shape [32, 192] (weight) <- inception3a.branch_pool.1.weight @ byte 1127744
 * b9: shape [32] (bias) <- inception3a.branch_pool.1.bias @ byte 1152320
 * w10: shape [128, 256] (weight) <- inception3b.branch1x1.weight @ byte 1152448
 * b10: shape [128] (bias) <- inception3b.branch1x1.bias @ byte 1283520
 * w11: shape [128, 256] (weight) <- inception3b.branch3x3.0.weight @ byte 1284032
 * b11: shape [128] (bias) <- inception3b.branch3x3.0.bias @ byte 1415104
 * w12: shape [192, 128, 3, 3] (weight) <- inception3b.branch3x3.1.weight @ byte 1415616
 * b12: shape [192] (bias) <- inception3b.branch3x3.1.bias @ byte 2300352
 * w13: shape [32, 256] (weight) <- inception3b.branch5x5.0.weight @ byte 2301120
 * b13: shape [32] (bias) <- inception3b.branch5x5.0.bias @ byte 2333888
 * w14: shape [96, 32, 5, 5] (weight) <- inception3b.branch5x5.1.weight @ byte 2334016
 * b14: shape [96] (bias) <- inception3b.branch5x5.1.bias @ byte 2641216
 * w15: shape [64, 256] (weight) <- inception3b.branch_pool.1.weight @ byte 2641600
 * b15: shape [64] (bias) <- inception3b.branch_pool.1.bias @ byte 2707136
 * w16: shape [192, 480] (weight) <- inception4a.branch1x1.weight @ byte 2707392
 * b16: shape [192] (bias) <- inception4a.branch1x1.bias @ byte 3076032
 * w17: shape [96, 480] (weight) <- inception4a.branch3x3.0.weight @ byte 3076800
 * b17: shape [96] (bias) <- inception4a.branch3x3.0.bias @ byte 3261120
 * w18: shape [208, 96, 3, 3] (weight) <- inception4a.branch3x3.1.weight @ byte 3261504
 * b18: shape [208] (bias) <- inception4a.branch3x3.1.bias @ byte 3980352
 * w19: shape [16, 480] (weight) <- inception4a.branch5x5.0.weight @ byte 3981184
 * b19: shape [16] (bias) <- inception4a.branch5x5.0.bias @ byte 4011904
 * w20: shape [48, 16, 5, 5] (weight) <- inception4a.branch5x5.1.weight @ byte 4011968
 * b20: shape [48] (bias) <- inception4a.branch5x5.1.bias @ byte 4088768
 * w21: shape [64, 480] (weight) <- inception4a.branch_pool.1.weight @ byte 4088960
 * b21: shape [64] (bias) <- inception4a.branch_pool.1.bias @ byte 4211840
 * w22: shape [160, 512] (weight) <- inception4b.branch1x1.weight @ byte 4212096
 * b22: shape [160] (bias) <- inception4b.branch1x1.bias @ byte 4539776
 * w23: shape [112, 512] (weight) <- inception4b.branch3x3.0.weight @ byte 4540416
 * b23: shape [112] (bias) <- inception4b.branch3x3.0.bias @ byte 4769792
 * w24: shape [224, 112, 3, 3] (weight) <- inception4b.branch3x3.1.weight @ byte 4770240
 * b24: shape [224] (bias) <- inception4b.branch3x3.1.bias @ byte 5673408
 * w25: shape [24, 512] (weight) <- inception4b.branch5x5.0.weight @ byte 5674304
 * b25: shape [24] (bias) <- inception4b.branch5x5.0.bias @ byte 5723456
 * w26: shape [64, 24, 5, 5] (weight) <- inception4b.branch5x5.1.weight @ byte 5723552
 * b26: shape [64] (bias) <- inception4b.branch5x5.1.bias @ byte 5877152
 * w27: shape [64, 512] (weight) <- inception4b.branch_pool.1.weight @ byte 5877408
 * b27: shape [64] (bias) <- inception4b.branch_pool.1.bias @ byte 6008480
 * w28: shape [128, 512] (weight) <- inception4c.branch1x1.weight @ byte 6008736
 * b28: shape [128] (bias) <- inception4c.branch1x1.bias @ byte 6270880
 * w29: shape [128, 512] (weight) <- inception4c.branch3x3.0.weight @ byte 6271392
 * b29: shape [128] (bias) <- inception4c.branch3x3.0.bias @ byte 6533536
 * w30: shape [256, 128, 3, 3] (weight) <- inception4c.branch3x3.1.weight @ byte 6534048
 * b30: shape [256] (bias) <- inception4c.branch3x3.1.bias @ byte 7713696
 * w31: shape [24, 512] (weight) <- inception4c.branch5x5.0.weight @ byte 7714720
 * b31: shape [24] (bias) <- inception4c.branch5x5.0.bias @ byte 7763872
 * w32: shape [64, 24, 5, 5] (weight) <- inception4c.branch5x5.1.weight @ byte 7763968
 * b32: shape [64] (bias) <- inception4c.branch5x5.1.bias @ byte 7917568
 * w33: shape [64, 512] (weight) <- inception4c.branch_pool.1.weight @ byte 7917824
 * b33: shape [64] (bias) <- inception4c.branch_pool.1.bias @ byte 8048896
 * w34: shape [112, 512] (weight) <- inception4d.branch1x1.weight @ byte 8049152
 * b34: shape [112] (bias) <- inception4d.branch1x1.bias @ byte 8278528
 * w35: shape [144, 512] (weight) <- inception4d.branch3x3.0.weight @ byte 8278976
 * b35: shape [144] (bias) <- inception4d.branch3x3.0.bias @ byte 8573888
 * w36: shape [288, 144, 3, 3] (weight) <- inception4d.branch3x3.1.weight @ byte 8574464
 * b36: shape [288] (bias) <- inception4d.branch3x3.1.bias @ byte 10067456
 * w37: shape [32, 512] (weight) <- inception4d.branch5x5.0.weight @ byte 10068608
 * b37: shape [32] (bias) <- inception4d.branch5x5.0.bias @ byte 10134144
 * w38: shape [64, 32, 5, 5] (weight) <- inception4d.branch5x5.1.weight @ byte 10134272
 * b38: shape [64] (bias) <- inception4d.branch5x5.1.bias @ byte 10339072
 * w39: shape [64, 512] (weight) <- inception4d.branch_pool.1.weight @ byte 10339328
 * b39: shape [64] (bias) <- inception4d.branch_pool.1.bias @ byte 10470400
 * w40: shape [256, 528] (weight) <- inception4e.branch1x1.weight @ byte 10470656
 * b40: shape [256] (bias) <- inception4e.branch1x1.bias @ byte 11011328
 * w41: shape [160, 528] (weight) <- inception4e.branch3x3.0.weight @ byte 11012352
 * b41: shape [160] (bias) <- inception4e.branch3x3.0.bias @ byte 11350272
 * w42: shape [320, 160, 3, 3] (weight) <- inception4e.branch3x3.1.weight @ byte 11350912
 * b42: shape [320] (bias) <- inception4e.branch3x3.1.bias @ byte 13194112
 * w43: shape [32, 528] (weight) <- inception4e.branch5x5.0.weight @ byte 13195392
 * b43: shape [32] (bias) <- inception4e.branch5x5.0.bias @ byte 13262976
 * w44: shape [128, 32, 5, 5] (weight) <- inception4e.branch5x5.1.weight @ byte 13263104
 * b44: shape [128] (bias) <- inception4e.branch5x5.1.bias @ byte 13672704
 * w45: shape [128, 528] (weight) <- inception4e.branch_pool.1.weight @ byte 13673216
 * b45: shape [128] (bias) <- inception4e.branch_pool.1.bias @ byte 13943552
 * w46: shape [256, 832] (weight) <- inception5a.branch1x1.weight @ byte 13944064
 * b46: shape [256] (bias) <- inception5a.branch1x1.bias @ byte 14796032
 * w47: shape [160, 832] (weight) <- inception5a.branch3x3.0.weight @ byte 14797056
 * b47: shape [160] (bias) <- inception5a.branch3x3.0.bias @ byte 15329536
 * w48: shape [320, 160, 3, 3] (weight) <- inception5a.branch3x3.1.weight @ byte 15330176
 * b48: shape [320] (bias) <- inception5a.branch3x3.1.bias @ byte 17173376
 * w49: shape [32, 832] (weight) <- inception5a.branch5x5.0.weight @ byte 17174656
 * b49: shape [32] (bias) <- inception5a.branch5x5.0.bias @ byte 17281152
 * w50: shape [128, 32, 5, 5] (weight) <- inception5a.branch5x5.1.weight @ byte 17281280
 * b50: shape [128] (bias) <- inception5a.branch5x5.1.bias @ byte 17690880
 * w51: shape [128, 832] (weight) <- inception5a.branch_pool.1.weight @ byte 17691392
 * b51: shape [128] (bias) <- inception5a.branch_pool.1.bias @ byte 18117376
 * w52: shape [384, 832] (weight) <- inception5b.branch1x1.weight @ byte 18117888
 * b52: shape [384] (bias) <- inception5b.branch1x1.bias @ byte 19395840
 * w53: shape [192, 832] (weight) <- inception5b.branch3x3.0.weight @ byte 19397376
 * b53: shape [192] (bias) <- inception5b.branch3x3.0.bias @ byte 20036352
 * w54: shape [384, 192, 3, 3] (weight) <- inception5b.branch3x3.1.weight @ byte 20037120
 * b54: shape [384] (bias) <- inception5b.branch3x3.1.bias @ byte 22691328
 * w55: shape [48, 832] (weight) <- inception5b.branch5x5.0.weight @ byte 22692864
 * b55: shape [48] (bias) <- inception5b.branch5x5.0.bias @ byte 22852608
 * w56: shape [128, 48, 5, 5] (weight) <- inception5b.branch5x5.1.weight @ byte 22852800
 * b56: shape [128] (bias) <- inception5b.branch5x5.1.bias @ byte 23467200
 * w57: shape [128, 832] (weight) <- inception5b.branch_pool.1.weight @ byte 23467712
 * b57: shape [128] (bias) <- inception5b.branch_pool.1.bias @ byte 23893696
 * w58: shape [1000, 1024] (weight) <- fc.weight @ byte 23894208
 * b58: shape [1000] (bias) <- fc.bias @ byte 27990208
 * output: shape [10, 1000]
 *
 * Usage: GoogleNetInceptionV1_driver_mlir <weights> <input> <reps> <output> [run_id] [json_report]
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
  int64_t sizes[2];
  int64_t strides[2];
} memref2d;
typedef struct {
  float *alloc, *aligned;
  int64_t offset;
  int64_t sizes[4];
  int64_t strides[4];
} memref4d;

extern memref2d GoogleNetInceptionV1(
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
    int64_t w4_st0,
    int64_t w4_st1,
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
    int64_t w5_st0,
    int64_t w5_st1,
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
    int64_t w7_st0,
    int64_t w7_st1,
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
    int64_t w9_st0,
    int64_t w9_st1,
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
    int64_t w10_st0,
    int64_t w10_st1,
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
    int64_t w11_st0,
    int64_t w11_st1,
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
    int64_t w13_st0,
    int64_t w13_st1,
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
    int64_t w15_st0,
    int64_t w15_st1,
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
    int64_t w16_st0,
    int64_t w16_st1,
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
    int64_t w18_s2,
    int64_t w18_s3,
    int64_t w18_st0,
    int64_t w18_st1,
    int64_t w18_st2,
    int64_t w18_st3,
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
    int64_t b19_st0,
    float *w20_a,
    float *w20_al,
    int64_t w20_off,
    int64_t w20_s0,
    int64_t w20_s1,
    int64_t w20_s2,
    int64_t w20_s3,
    int64_t w20_st0,
    int64_t w20_st1,
    int64_t w20_st2,
    int64_t w20_st3,
    float *b20_a,
    float *b20_al,
    int64_t b20_off,
    int64_t b20_s0,
    int64_t b20_st0,
    float *w21_a,
    float *w21_al,
    int64_t w21_off,
    int64_t w21_s0,
    int64_t w21_s1,
    int64_t w21_st0,
    int64_t w21_st1,
    float *b21_a,
    float *b21_al,
    int64_t b21_off,
    int64_t b21_s0,
    int64_t b21_st0,
    float *w22_a,
    float *w22_al,
    int64_t w22_off,
    int64_t w22_s0,
    int64_t w22_s1,
    int64_t w22_st0,
    int64_t w22_st1,
    float *b22_a,
    float *b22_al,
    int64_t b22_off,
    int64_t b22_s0,
    int64_t b22_st0,
    float *w23_a,
    float *w23_al,
    int64_t w23_off,
    int64_t w23_s0,
    int64_t w23_s1,
    int64_t w23_st0,
    int64_t w23_st1,
    float *b23_a,
    float *b23_al,
    int64_t b23_off,
    int64_t b23_s0,
    int64_t b23_st0,
    float *w24_a,
    float *w24_al,
    int64_t w24_off,
    int64_t w24_s0,
    int64_t w24_s1,
    int64_t w24_s2,
    int64_t w24_s3,
    int64_t w24_st0,
    int64_t w24_st1,
    int64_t w24_st2,
    int64_t w24_st3,
    float *b24_a,
    float *b24_al,
    int64_t b24_off,
    int64_t b24_s0,
    int64_t b24_st0,
    float *w25_a,
    float *w25_al,
    int64_t w25_off,
    int64_t w25_s0,
    int64_t w25_s1,
    int64_t w25_st0,
    int64_t w25_st1,
    float *b25_a,
    float *b25_al,
    int64_t b25_off,
    int64_t b25_s0,
    int64_t b25_st0,
    float *w26_a,
    float *w26_al,
    int64_t w26_off,
    int64_t w26_s0,
    int64_t w26_s1,
    int64_t w26_s2,
    int64_t w26_s3,
    int64_t w26_st0,
    int64_t w26_st1,
    int64_t w26_st2,
    int64_t w26_st3,
    float *b26_a,
    float *b26_al,
    int64_t b26_off,
    int64_t b26_s0,
    int64_t b26_st0,
    float *w27_a,
    float *w27_al,
    int64_t w27_off,
    int64_t w27_s0,
    int64_t w27_s1,
    int64_t w27_st0,
    int64_t w27_st1,
    float *b27_a,
    float *b27_al,
    int64_t b27_off,
    int64_t b27_s0,
    int64_t b27_st0,
    float *w28_a,
    float *w28_al,
    int64_t w28_off,
    int64_t w28_s0,
    int64_t w28_s1,
    int64_t w28_st0,
    int64_t w28_st1,
    float *b28_a,
    float *b28_al,
    int64_t b28_off,
    int64_t b28_s0,
    int64_t b28_st0,
    float *w29_a,
    float *w29_al,
    int64_t w29_off,
    int64_t w29_s0,
    int64_t w29_s1,
    int64_t w29_st0,
    int64_t w29_st1,
    float *b29_a,
    float *b29_al,
    int64_t b29_off,
    int64_t b29_s0,
    int64_t b29_st0,
    float *w30_a,
    float *w30_al,
    int64_t w30_off,
    int64_t w30_s0,
    int64_t w30_s1,
    int64_t w30_s2,
    int64_t w30_s3,
    int64_t w30_st0,
    int64_t w30_st1,
    int64_t w30_st2,
    int64_t w30_st3,
    float *b30_a,
    float *b30_al,
    int64_t b30_off,
    int64_t b30_s0,
    int64_t b30_st0,
    float *w31_a,
    float *w31_al,
    int64_t w31_off,
    int64_t w31_s0,
    int64_t w31_s1,
    int64_t w31_st0,
    int64_t w31_st1,
    float *b31_a,
    float *b31_al,
    int64_t b31_off,
    int64_t b31_s0,
    int64_t b31_st0,
    float *w32_a,
    float *w32_al,
    int64_t w32_off,
    int64_t w32_s0,
    int64_t w32_s1,
    int64_t w32_s2,
    int64_t w32_s3,
    int64_t w32_st0,
    int64_t w32_st1,
    int64_t w32_st2,
    int64_t w32_st3,
    float *b32_a,
    float *b32_al,
    int64_t b32_off,
    int64_t b32_s0,
    int64_t b32_st0,
    float *w33_a,
    float *w33_al,
    int64_t w33_off,
    int64_t w33_s0,
    int64_t w33_s1,
    int64_t w33_st0,
    int64_t w33_st1,
    float *b33_a,
    float *b33_al,
    int64_t b33_off,
    int64_t b33_s0,
    int64_t b33_st0,
    float *w34_a,
    float *w34_al,
    int64_t w34_off,
    int64_t w34_s0,
    int64_t w34_s1,
    int64_t w34_st0,
    int64_t w34_st1,
    float *b34_a,
    float *b34_al,
    int64_t b34_off,
    int64_t b34_s0,
    int64_t b34_st0,
    float *w35_a,
    float *w35_al,
    int64_t w35_off,
    int64_t w35_s0,
    int64_t w35_s1,
    int64_t w35_st0,
    int64_t w35_st1,
    float *b35_a,
    float *b35_al,
    int64_t b35_off,
    int64_t b35_s0,
    int64_t b35_st0,
    float *w36_a,
    float *w36_al,
    int64_t w36_off,
    int64_t w36_s0,
    int64_t w36_s1,
    int64_t w36_s2,
    int64_t w36_s3,
    int64_t w36_st0,
    int64_t w36_st1,
    int64_t w36_st2,
    int64_t w36_st3,
    float *b36_a,
    float *b36_al,
    int64_t b36_off,
    int64_t b36_s0,
    int64_t b36_st0,
    float *w37_a,
    float *w37_al,
    int64_t w37_off,
    int64_t w37_s0,
    int64_t w37_s1,
    int64_t w37_st0,
    int64_t w37_st1,
    float *b37_a,
    float *b37_al,
    int64_t b37_off,
    int64_t b37_s0,
    int64_t b37_st0,
    float *w38_a,
    float *w38_al,
    int64_t w38_off,
    int64_t w38_s0,
    int64_t w38_s1,
    int64_t w38_s2,
    int64_t w38_s3,
    int64_t w38_st0,
    int64_t w38_st1,
    int64_t w38_st2,
    int64_t w38_st3,
    float *b38_a,
    float *b38_al,
    int64_t b38_off,
    int64_t b38_s0,
    int64_t b38_st0,
    float *w39_a,
    float *w39_al,
    int64_t w39_off,
    int64_t w39_s0,
    int64_t w39_s1,
    int64_t w39_st0,
    int64_t w39_st1,
    float *b39_a,
    float *b39_al,
    int64_t b39_off,
    int64_t b39_s0,
    int64_t b39_st0,
    float *w40_a,
    float *w40_al,
    int64_t w40_off,
    int64_t w40_s0,
    int64_t w40_s1,
    int64_t w40_st0,
    int64_t w40_st1,
    float *b40_a,
    float *b40_al,
    int64_t b40_off,
    int64_t b40_s0,
    int64_t b40_st0,
    float *w41_a,
    float *w41_al,
    int64_t w41_off,
    int64_t w41_s0,
    int64_t w41_s1,
    int64_t w41_st0,
    int64_t w41_st1,
    float *b41_a,
    float *b41_al,
    int64_t b41_off,
    int64_t b41_s0,
    int64_t b41_st0,
    float *w42_a,
    float *w42_al,
    int64_t w42_off,
    int64_t w42_s0,
    int64_t w42_s1,
    int64_t w42_s2,
    int64_t w42_s3,
    int64_t w42_st0,
    int64_t w42_st1,
    int64_t w42_st2,
    int64_t w42_st3,
    float *b42_a,
    float *b42_al,
    int64_t b42_off,
    int64_t b42_s0,
    int64_t b42_st0,
    float *w43_a,
    float *w43_al,
    int64_t w43_off,
    int64_t w43_s0,
    int64_t w43_s1,
    int64_t w43_st0,
    int64_t w43_st1,
    float *b43_a,
    float *b43_al,
    int64_t b43_off,
    int64_t b43_s0,
    int64_t b43_st0,
    float *w44_a,
    float *w44_al,
    int64_t w44_off,
    int64_t w44_s0,
    int64_t w44_s1,
    int64_t w44_s2,
    int64_t w44_s3,
    int64_t w44_st0,
    int64_t w44_st1,
    int64_t w44_st2,
    int64_t w44_st3,
    float *b44_a,
    float *b44_al,
    int64_t b44_off,
    int64_t b44_s0,
    int64_t b44_st0,
    float *w45_a,
    float *w45_al,
    int64_t w45_off,
    int64_t w45_s0,
    int64_t w45_s1,
    int64_t w45_st0,
    int64_t w45_st1,
    float *b45_a,
    float *b45_al,
    int64_t b45_off,
    int64_t b45_s0,
    int64_t b45_st0,
    float *w46_a,
    float *w46_al,
    int64_t w46_off,
    int64_t w46_s0,
    int64_t w46_s1,
    int64_t w46_st0,
    int64_t w46_st1,
    float *b46_a,
    float *b46_al,
    int64_t b46_off,
    int64_t b46_s0,
    int64_t b46_st0,
    float *w47_a,
    float *w47_al,
    int64_t w47_off,
    int64_t w47_s0,
    int64_t w47_s1,
    int64_t w47_st0,
    int64_t w47_st1,
    float *b47_a,
    float *b47_al,
    int64_t b47_off,
    int64_t b47_s0,
    int64_t b47_st0,
    float *w48_a,
    float *w48_al,
    int64_t w48_off,
    int64_t w48_s0,
    int64_t w48_s1,
    int64_t w48_s2,
    int64_t w48_s3,
    int64_t w48_st0,
    int64_t w48_st1,
    int64_t w48_st2,
    int64_t w48_st3,
    float *b48_a,
    float *b48_al,
    int64_t b48_off,
    int64_t b48_s0,
    int64_t b48_st0,
    float *w49_a,
    float *w49_al,
    int64_t w49_off,
    int64_t w49_s0,
    int64_t w49_s1,
    int64_t w49_st0,
    int64_t w49_st1,
    float *b49_a,
    float *b49_al,
    int64_t b49_off,
    int64_t b49_s0,
    int64_t b49_st0,
    float *w50_a,
    float *w50_al,
    int64_t w50_off,
    int64_t w50_s0,
    int64_t w50_s1,
    int64_t w50_s2,
    int64_t w50_s3,
    int64_t w50_st0,
    int64_t w50_st1,
    int64_t w50_st2,
    int64_t w50_st3,
    float *b50_a,
    float *b50_al,
    int64_t b50_off,
    int64_t b50_s0,
    int64_t b50_st0,
    float *w51_a,
    float *w51_al,
    int64_t w51_off,
    int64_t w51_s0,
    int64_t w51_s1,
    int64_t w51_st0,
    int64_t w51_st1,
    float *b51_a,
    float *b51_al,
    int64_t b51_off,
    int64_t b51_s0,
    int64_t b51_st0,
    float *w52_a,
    float *w52_al,
    int64_t w52_off,
    int64_t w52_s0,
    int64_t w52_s1,
    int64_t w52_st0,
    int64_t w52_st1,
    float *b52_a,
    float *b52_al,
    int64_t b52_off,
    int64_t b52_s0,
    int64_t b52_st0,
    float *w53_a,
    float *w53_al,
    int64_t w53_off,
    int64_t w53_s0,
    int64_t w53_s1,
    int64_t w53_st0,
    int64_t w53_st1,
    float *b53_a,
    float *b53_al,
    int64_t b53_off,
    int64_t b53_s0,
    int64_t b53_st0,
    float *w54_a,
    float *w54_al,
    int64_t w54_off,
    int64_t w54_s0,
    int64_t w54_s1,
    int64_t w54_s2,
    int64_t w54_s3,
    int64_t w54_st0,
    int64_t w54_st1,
    int64_t w54_st2,
    int64_t w54_st3,
    float *b54_a,
    float *b54_al,
    int64_t b54_off,
    int64_t b54_s0,
    int64_t b54_st0,
    float *w55_a,
    float *w55_al,
    int64_t w55_off,
    int64_t w55_s0,
    int64_t w55_s1,
    int64_t w55_st0,
    int64_t w55_st1,
    float *b55_a,
    float *b55_al,
    int64_t b55_off,
    int64_t b55_s0,
    int64_t b55_st0,
    float *w56_a,
    float *w56_al,
    int64_t w56_off,
    int64_t w56_s0,
    int64_t w56_s1,
    int64_t w56_s2,
    int64_t w56_s3,
    int64_t w56_st0,
    int64_t w56_st1,
    int64_t w56_st2,
    int64_t w56_st3,
    float *b56_a,
    float *b56_al,
    int64_t b56_off,
    int64_t b56_s0,
    int64_t b56_st0,
    float *w57_a,
    float *w57_al,
    int64_t w57_off,
    int64_t w57_s0,
    int64_t w57_s1,
    int64_t w57_st0,
    int64_t w57_st1,
    float *b57_a,
    float *b57_al,
    int64_t b57_off,
    int64_t b57_s0,
    int64_t b57_st0,
    float *w58_a,
    float *w58_al,
    int64_t w58_off,
    int64_t w58_s0,
    int64_t w58_s1,
    int64_t w58_st0,
    int64_t w58_st1,
    float *b58_a,
    float *b58_al,
    int64_t b58_off,
    int64_t b58_s0,
    int64_t b58_st0);

static const size_t w1_count = 9408;
static const size_t b1_count = 64;
static const size_t x_count = 1505280;
static const size_t w2_count = 4096;
static const size_t b2_count = 64;
static const size_t w3_count = 110592;
static const size_t b3_count = 192;
static const size_t w4_count = 12288;
static const size_t b4_count = 64;
static const size_t w5_count = 18432;
static const size_t b5_count = 96;
static const size_t w6_count = 110592;
static const size_t b6_count = 128;
static const size_t w7_count = 3072;
static const size_t b7_count = 16;
static const size_t w8_count = 12800;
static const size_t b8_count = 32;
static const size_t w9_count = 6144;
static const size_t b9_count = 32;
static const size_t w10_count = 32768;
static const size_t b10_count = 128;
static const size_t w11_count = 32768;
static const size_t b11_count = 128;
static const size_t w12_count = 221184;
static const size_t b12_count = 192;
static const size_t w13_count = 8192;
static const size_t b13_count = 32;
static const size_t w14_count = 76800;
static const size_t b14_count = 96;
static const size_t w15_count = 16384;
static const size_t b15_count = 64;
static const size_t w16_count = 92160;
static const size_t b16_count = 192;
static const size_t w17_count = 46080;
static const size_t b17_count = 96;
static const size_t w18_count = 179712;
static const size_t b18_count = 208;
static const size_t w19_count = 7680;
static const size_t b19_count = 16;
static const size_t w20_count = 19200;
static const size_t b20_count = 48;
static const size_t w21_count = 30720;
static const size_t b21_count = 64;
static const size_t w22_count = 81920;
static const size_t b22_count = 160;
static const size_t w23_count = 57344;
static const size_t b23_count = 112;
static const size_t w24_count = 225792;
static const size_t b24_count = 224;
static const size_t w25_count = 12288;
static const size_t b25_count = 24;
static const size_t w26_count = 38400;
static const size_t b26_count = 64;
static const size_t w27_count = 32768;
static const size_t b27_count = 64;
static const size_t w28_count = 65536;
static const size_t b28_count = 128;
static const size_t w29_count = 65536;
static const size_t b29_count = 128;
static const size_t w30_count = 294912;
static const size_t b30_count = 256;
static const size_t w31_count = 12288;
static const size_t b31_count = 24;
static const size_t w32_count = 38400;
static const size_t b32_count = 64;
static const size_t w33_count = 32768;
static const size_t b33_count = 64;
static const size_t w34_count = 57344;
static const size_t b34_count = 112;
static const size_t w35_count = 73728;
static const size_t b35_count = 144;
static const size_t w36_count = 373248;
static const size_t b36_count = 288;
static const size_t w37_count = 16384;
static const size_t b37_count = 32;
static const size_t w38_count = 51200;
static const size_t b38_count = 64;
static const size_t w39_count = 32768;
static const size_t b39_count = 64;
static const size_t w40_count = 135168;
static const size_t b40_count = 256;
static const size_t w41_count = 84480;
static const size_t b41_count = 160;
static const size_t w42_count = 460800;
static const size_t b42_count = 320;
static const size_t w43_count = 16896;
static const size_t b43_count = 32;
static const size_t w44_count = 102400;
static const size_t b44_count = 128;
static const size_t w45_count = 67584;
static const size_t b45_count = 128;
static const size_t w46_count = 212992;
static const size_t b46_count = 256;
static const size_t w47_count = 133120;
static const size_t b47_count = 160;
static const size_t w48_count = 460800;
static const size_t b48_count = 320;
static const size_t w49_count = 26624;
static const size_t b49_count = 32;
static const size_t w50_count = 102400;
static const size_t b50_count = 128;
static const size_t w51_count = 106496;
static const size_t b51_count = 128;
static const size_t w52_count = 319488;
static const size_t b52_count = 384;
static const size_t w53_count = 159744;
static const size_t b53_count = 192;
static const size_t w54_count = 663552;
static const size_t b54_count = 384;
static const size_t w55_count = 39936;
static const size_t b55_count = 48;
static const size_t w56_count = 153600;
static const size_t b56_count = 128;
static const size_t w57_count = 106496;
static const size_t b57_count = 128;
static const size_t w58_count = 1024000;
static const size_t b58_count = 1000;

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

  char run_id_buf[64];
  resolve_run_id(argc, argv, run_id_buf, sizeof(run_id_buf));
  const char *run_id = run_id_buf;

  char json_path_buf[512];
  const char *json_report_path;
  if (argc > 6) {
    json_report_path = argv[6];
  } else {
    snprintf(json_path_buf, sizeof(json_path_buf), "GoogleNetInceptionV1_mim_mlir_llvm_%s_timing.json", run_id);
    json_report_path = json_path_buf;
  }

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }

  float *w1 = read_floats_at(wf, 0, w1_count, "w1");
  float *b1 = read_floats_at(wf, 37632, b1_count, "b1");
  float *w2 = read_floats_at(wf, 37888, w2_count, "w2");
  float *b2 = read_floats_at(wf, 54272, b2_count, "b2");
  float *w3 = read_floats_at(wf, 54528, w3_count, "w3");
  float *b3 = read_floats_at(wf, 496896, b3_count, "b3");
  float *w4 = read_floats_at(wf, 497664, w4_count, "w4");
  float *b4 = read_floats_at(wf, 546816, b4_count, "b4");
  float *w5 = read_floats_at(wf, 547072, w5_count, "w5");
  float *b5 = read_floats_at(wf, 620800, b5_count, "b5");
  float *w6 = read_floats_at(wf, 621184, w6_count, "w6");
  float *b6 = read_floats_at(wf, 1063552, b6_count, "b6");
  float *w7 = read_floats_at(wf, 1064064, w7_count, "w7");
  float *b7 = read_floats_at(wf, 1076352, b7_count, "b7");
  float *w8 = read_floats_at(wf, 1076416, w8_count, "w8");
  float *b8 = read_floats_at(wf, 1127616, b8_count, "b8");
  float *w9 = read_floats_at(wf, 1127744, w9_count, "w9");
  float *b9 = read_floats_at(wf, 1152320, b9_count, "b9");
  float *w10 = read_floats_at(wf, 1152448, w10_count, "w10");
  float *b10 = read_floats_at(wf, 1283520, b10_count, "b10");
  float *w11 = read_floats_at(wf, 1284032, w11_count, "w11");
  float *b11 = read_floats_at(wf, 1415104, b11_count, "b11");
  float *w12 = read_floats_at(wf, 1415616, w12_count, "w12");
  float *b12 = read_floats_at(wf, 2300352, b12_count, "b12");
  float *w13 = read_floats_at(wf, 2301120, w13_count, "w13");
  float *b13 = read_floats_at(wf, 2333888, b13_count, "b13");
  float *w14 = read_floats_at(wf, 2334016, w14_count, "w14");
  float *b14 = read_floats_at(wf, 2641216, b14_count, "b14");
  float *w15 = read_floats_at(wf, 2641600, w15_count, "w15");
  float *b15 = read_floats_at(wf, 2707136, b15_count, "b15");
  float *w16 = read_floats_at(wf, 2707392, w16_count, "w16");
  float *b16 = read_floats_at(wf, 3076032, b16_count, "b16");
  float *w17 = read_floats_at(wf, 3076800, w17_count, "w17");
  float *b17 = read_floats_at(wf, 3261120, b17_count, "b17");
  float *w18 = read_floats_at(wf, 3261504, w18_count, "w18");
  float *b18 = read_floats_at(wf, 3980352, b18_count, "b18");
  float *w19 = read_floats_at(wf, 3981184, w19_count, "w19");
  float *b19 = read_floats_at(wf, 4011904, b19_count, "b19");
  float *w20 = read_floats_at(wf, 4011968, w20_count, "w20");
  float *b20 = read_floats_at(wf, 4088768, b20_count, "b20");
  float *w21 = read_floats_at(wf, 4088960, w21_count, "w21");
  float *b21 = read_floats_at(wf, 4211840, b21_count, "b21");
  float *w22 = read_floats_at(wf, 4212096, w22_count, "w22");
  float *b22 = read_floats_at(wf, 4539776, b22_count, "b22");
  float *w23 = read_floats_at(wf, 4540416, w23_count, "w23");
  float *b23 = read_floats_at(wf, 4769792, b23_count, "b23");
  float *w24 = read_floats_at(wf, 4770240, w24_count, "w24");
  float *b24 = read_floats_at(wf, 5673408, b24_count, "b24");
  float *w25 = read_floats_at(wf, 5674304, w25_count, "w25");
  float *b25 = read_floats_at(wf, 5723456, b25_count, "b25");
  float *w26 = read_floats_at(wf, 5723552, w26_count, "w26");
  float *b26 = read_floats_at(wf, 5877152, b26_count, "b26");
  float *w27 = read_floats_at(wf, 5877408, w27_count, "w27");
  float *b27 = read_floats_at(wf, 6008480, b27_count, "b27");
  float *w28 = read_floats_at(wf, 6008736, w28_count, "w28");
  float *b28 = read_floats_at(wf, 6270880, b28_count, "b28");
  float *w29 = read_floats_at(wf, 6271392, w29_count, "w29");
  float *b29 = read_floats_at(wf, 6533536, b29_count, "b29");
  float *w30 = read_floats_at(wf, 6534048, w30_count, "w30");
  float *b30 = read_floats_at(wf, 7713696, b30_count, "b30");
  float *w31 = read_floats_at(wf, 7714720, w31_count, "w31");
  float *b31 = read_floats_at(wf, 7763872, b31_count, "b31");
  float *w32 = read_floats_at(wf, 7763968, w32_count, "w32");
  float *b32 = read_floats_at(wf, 7917568, b32_count, "b32");
  float *w33 = read_floats_at(wf, 7917824, w33_count, "w33");
  float *b33 = read_floats_at(wf, 8048896, b33_count, "b33");
  float *w34 = read_floats_at(wf, 8049152, w34_count, "w34");
  float *b34 = read_floats_at(wf, 8278528, b34_count, "b34");
  float *w35 = read_floats_at(wf, 8278976, w35_count, "w35");
  float *b35 = read_floats_at(wf, 8573888, b35_count, "b35");
  float *w36 = read_floats_at(wf, 8574464, w36_count, "w36");
  float *b36 = read_floats_at(wf, 10067456, b36_count, "b36");
  float *w37 = read_floats_at(wf, 10068608, w37_count, "w37");
  float *b37 = read_floats_at(wf, 10134144, b37_count, "b37");
  float *w38 = read_floats_at(wf, 10134272, w38_count, "w38");
  float *b38 = read_floats_at(wf, 10339072, b38_count, "b38");
  float *w39 = read_floats_at(wf, 10339328, w39_count, "w39");
  float *b39 = read_floats_at(wf, 10470400, b39_count, "b39");
  float *w40 = read_floats_at(wf, 10470656, w40_count, "w40");
  float *b40 = read_floats_at(wf, 11011328, b40_count, "b40");
  float *w41 = read_floats_at(wf, 11012352, w41_count, "w41");
  float *b41 = read_floats_at(wf, 11350272, b41_count, "b41");
  float *w42 = read_floats_at(wf, 11350912, w42_count, "w42");
  float *b42 = read_floats_at(wf, 13194112, b42_count, "b42");
  float *w43 = read_floats_at(wf, 13195392, w43_count, "w43");
  float *b43 = read_floats_at(wf, 13262976, b43_count, "b43");
  float *w44 = read_floats_at(wf, 13263104, w44_count, "w44");
  float *b44 = read_floats_at(wf, 13672704, b44_count, "b44");
  float *w45 = read_floats_at(wf, 13673216, w45_count, "w45");
  float *b45 = read_floats_at(wf, 13943552, b45_count, "b45");
  float *w46 = read_floats_at(wf, 13944064, w46_count, "w46");
  float *b46 = read_floats_at(wf, 14796032, b46_count, "b46");
  float *w47 = read_floats_at(wf, 14797056, w47_count, "w47");
  float *b47 = read_floats_at(wf, 15329536, b47_count, "b47");
  float *w48 = read_floats_at(wf, 15330176, w48_count, "w48");
  float *b48 = read_floats_at(wf, 17173376, b48_count, "b48");
  float *w49 = read_floats_at(wf, 17174656, w49_count, "w49");
  float *b49 = read_floats_at(wf, 17281152, b49_count, "b49");
  float *w50 = read_floats_at(wf, 17281280, w50_count, "w50");
  float *b50 = read_floats_at(wf, 17690880, b50_count, "b50");
  float *w51 = read_floats_at(wf, 17691392, w51_count, "w51");
  float *b51 = read_floats_at(wf, 18117376, b51_count, "b51");
  float *w52 = read_floats_at(wf, 18117888, w52_count, "w52");
  float *b52 = read_floats_at(wf, 19395840, b52_count, "b52");
  float *w53 = read_floats_at(wf, 19397376, w53_count, "w53");
  float *b53 = read_floats_at(wf, 20036352, b53_count, "b53");
  float *w54 = read_floats_at(wf, 20037120, w54_count, "w54");
  float *b54 = read_floats_at(wf, 22691328, b54_count, "b54");
  float *w55 = read_floats_at(wf, 22692864, w55_count, "w55");
  float *b55 = read_floats_at(wf, 22852608, b55_count, "b55");
  float *w56 = read_floats_at(wf, 22852800, w56_count, "w56");
  float *b56 = read_floats_at(wf, 23467200, b56_count, "b56");
  float *w57 = read_floats_at(wf, 23467712, w57_count, "w57");
  float *b57 = read_floats_at(wf, 23893696, b57_count, "b57");
  float *w58 = read_floats_at(wf, 23894208, w58_count, "w58");
  float *b58 = read_floats_at(wf, 27990208, b58_count, "b58");
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
      memref2d out = GoogleNetInceptionV1(
          w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w2, w2, 0,
        64, 64,
        64, 1,
        b2, b2, 0,
        64,
        1,
        w3, w3, 0,
        192, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        192,
        1,
        w4, w4, 0,
        64, 192,
        192, 1,
        b4, b4, 0,
        64,
        1,
        w5, w5, 0,
        96, 192,
        192, 1,
        b5, b5, 0,
        96,
        1,
        w6, w6, 0,
        128, 96, 3, 3,
        864, 9, 3, 1,
        b6, b6, 0,
        128,
        1,
        w7, w7, 0,
        16, 192,
        192, 1,
        b7, b7, 0,
        16,
        1,
        w8, w8, 0,
        32, 16, 5, 5,
        400, 25, 5, 1,
        b8, b8, 0,
        32,
        1,
        w9, w9, 0,
        32, 192,
        192, 1,
        b9, b9, 0,
        32,
        1,
        w10, w10, 0,
        128, 256,
        256, 1,
        b10, b10, 0,
        128,
        1,
        w11, w11, 0,
        128, 256,
        256, 1,
        b11, b11, 0,
        128,
        1,
        w12, w12, 0,
        192, 128, 3, 3,
        1152, 9, 3, 1,
        b12, b12, 0,
        192,
        1,
        w13, w13, 0,
        32, 256,
        256, 1,
        b13, b13, 0,
        32,
        1,
        w14, w14, 0,
        96, 32, 5, 5,
        800, 25, 5, 1,
        b14, b14, 0,
        96,
        1,
        w15, w15, 0,
        64, 256,
        256, 1,
        b15, b15, 0,
        64,
        1,
        w16, w16, 0,
        192, 480,
        480, 1,
        b16, b16, 0,
        192,
        1,
        w17, w17, 0,
        96, 480,
        480, 1,
        b17, b17, 0,
        96,
        1,
        w18, w18, 0,
        208, 96, 3, 3,
        864, 9, 3, 1,
        b18, b18, 0,
        208,
        1,
        w19, w19, 0,
        16, 480,
        480, 1,
        b19, b19, 0,
        16,
        1,
        w20, w20, 0,
        48, 16, 5, 5,
        400, 25, 5, 1,
        b20, b20, 0,
        48,
        1,
        w21, w21, 0,
        64, 480,
        480, 1,
        b21, b21, 0,
        64,
        1,
        w22, w22, 0,
        160, 512,
        512, 1,
        b22, b22, 0,
        160,
        1,
        w23, w23, 0,
        112, 512,
        512, 1,
        b23, b23, 0,
        112,
        1,
        w24, w24, 0,
        224, 112, 3, 3,
        1008, 9, 3, 1,
        b24, b24, 0,
        224,
        1,
        w25, w25, 0,
        24, 512,
        512, 1,
        b25, b25, 0,
        24,
        1,
        w26, w26, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b26, b26, 0,
        64,
        1,
        w27, w27, 0,
        64, 512,
        512, 1,
        b27, b27, 0,
        64,
        1,
        w28, w28, 0,
        128, 512,
        512, 1,
        b28, b28, 0,
        128,
        1,
        w29, w29, 0,
        128, 512,
        512, 1,
        b29, b29, 0,
        128,
        1,
        w30, w30, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b30, b30, 0,
        256,
        1,
        w31, w31, 0,
        24, 512,
        512, 1,
        b31, b31, 0,
        24,
        1,
        w32, w32, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b32, b32, 0,
        64,
        1,
        w33, w33, 0,
        64, 512,
        512, 1,
        b33, b33, 0,
        64,
        1,
        w34, w34, 0,
        112, 512,
        512, 1,
        b34, b34, 0,
        112,
        1,
        w35, w35, 0,
        144, 512,
        512, 1,
        b35, b35, 0,
        144,
        1,
        w36, w36, 0,
        288, 144, 3, 3,
        1296, 9, 3, 1,
        b36, b36, 0,
        288,
        1,
        w37, w37, 0,
        32, 512,
        512, 1,
        b37, b37, 0,
        32,
        1,
        w38, w38, 0,
        64, 32, 5, 5,
        800, 25, 5, 1,
        b38, b38, 0,
        64,
        1,
        w39, w39, 0,
        64, 512,
        512, 1,
        b39, b39, 0,
        64,
        1,
        w40, w40, 0,
        256, 528,
        528, 1,
        b40, b40, 0,
        256,
        1,
        w41, w41, 0,
        160, 528,
        528, 1,
        b41, b41, 0,
        160,
        1,
        w42, w42, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b42, b42, 0,
        320,
        1,
        w43, w43, 0,
        32, 528,
        528, 1,
        b43, b43, 0,
        32,
        1,
        w44, w44, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b44, b44, 0,
        128,
        1,
        w45, w45, 0,
        128, 528,
        528, 1,
        b45, b45, 0,
        128,
        1,
        w46, w46, 0,
        256, 832,
        832, 1,
        b46, b46, 0,
        256,
        1,
        w47, w47, 0,
        160, 832,
        832, 1,
        b47, b47, 0,
        160,
        1,
        w48, w48, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b48, b48, 0,
        320,
        1,
        w49, w49, 0,
        32, 832,
        832, 1,
        b49, b49, 0,
        32,
        1,
        w50, w50, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b50, b50, 0,
        128,
        1,
        w51, w51, 0,
        128, 832,
        832, 1,
        b51, b51, 0,
        128,
        1,
        w52, w52, 0,
        384, 832,
        832, 1,
        b52, b52, 0,
        384,
        1,
        w53, w53, 0,
        192, 832,
        832, 1,
        b53, b53, 0,
        192,
        1,
        w54, w54, 0,
        384, 192, 3, 3,
        1728, 9, 3, 1,
        b54, b54, 0,
        384,
        1,
        w55, w55, 0,
        48, 832,
        832, 1,
        b55, b55, 0,
        48,
        1,
        w56, w56, 0,
        128, 48, 5, 5,
        1200, 25, 5, 1,
        b56, b56, 0,
        128,
        1,
        w57, w57, 0,
        128, 832,
        832, 1,
        b57, b57, 0,
        128,
        1,
        w58, w58, 0,
        1000, 1024,
        1024, 1,
        b58, b58, 0,
        1000,
        1);
      free(out.alloc);
      _exit(0);
    }
    await_child(p, "warm-up");
  } else {
    memref2d out = GoogleNetInceptionV1(
        w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w2, w2, 0,
        64, 64,
        64, 1,
        b2, b2, 0,
        64,
        1,
        w3, w3, 0,
        192, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        192,
        1,
        w4, w4, 0,
        64, 192,
        192, 1,
        b4, b4, 0,
        64,
        1,
        w5, w5, 0,
        96, 192,
        192, 1,
        b5, b5, 0,
        96,
        1,
        w6, w6, 0,
        128, 96, 3, 3,
        864, 9, 3, 1,
        b6, b6, 0,
        128,
        1,
        w7, w7, 0,
        16, 192,
        192, 1,
        b7, b7, 0,
        16,
        1,
        w8, w8, 0,
        32, 16, 5, 5,
        400, 25, 5, 1,
        b8, b8, 0,
        32,
        1,
        w9, w9, 0,
        32, 192,
        192, 1,
        b9, b9, 0,
        32,
        1,
        w10, w10, 0,
        128, 256,
        256, 1,
        b10, b10, 0,
        128,
        1,
        w11, w11, 0,
        128, 256,
        256, 1,
        b11, b11, 0,
        128,
        1,
        w12, w12, 0,
        192, 128, 3, 3,
        1152, 9, 3, 1,
        b12, b12, 0,
        192,
        1,
        w13, w13, 0,
        32, 256,
        256, 1,
        b13, b13, 0,
        32,
        1,
        w14, w14, 0,
        96, 32, 5, 5,
        800, 25, 5, 1,
        b14, b14, 0,
        96,
        1,
        w15, w15, 0,
        64, 256,
        256, 1,
        b15, b15, 0,
        64,
        1,
        w16, w16, 0,
        192, 480,
        480, 1,
        b16, b16, 0,
        192,
        1,
        w17, w17, 0,
        96, 480,
        480, 1,
        b17, b17, 0,
        96,
        1,
        w18, w18, 0,
        208, 96, 3, 3,
        864, 9, 3, 1,
        b18, b18, 0,
        208,
        1,
        w19, w19, 0,
        16, 480,
        480, 1,
        b19, b19, 0,
        16,
        1,
        w20, w20, 0,
        48, 16, 5, 5,
        400, 25, 5, 1,
        b20, b20, 0,
        48,
        1,
        w21, w21, 0,
        64, 480,
        480, 1,
        b21, b21, 0,
        64,
        1,
        w22, w22, 0,
        160, 512,
        512, 1,
        b22, b22, 0,
        160,
        1,
        w23, w23, 0,
        112, 512,
        512, 1,
        b23, b23, 0,
        112,
        1,
        w24, w24, 0,
        224, 112, 3, 3,
        1008, 9, 3, 1,
        b24, b24, 0,
        224,
        1,
        w25, w25, 0,
        24, 512,
        512, 1,
        b25, b25, 0,
        24,
        1,
        w26, w26, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b26, b26, 0,
        64,
        1,
        w27, w27, 0,
        64, 512,
        512, 1,
        b27, b27, 0,
        64,
        1,
        w28, w28, 0,
        128, 512,
        512, 1,
        b28, b28, 0,
        128,
        1,
        w29, w29, 0,
        128, 512,
        512, 1,
        b29, b29, 0,
        128,
        1,
        w30, w30, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b30, b30, 0,
        256,
        1,
        w31, w31, 0,
        24, 512,
        512, 1,
        b31, b31, 0,
        24,
        1,
        w32, w32, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b32, b32, 0,
        64,
        1,
        w33, w33, 0,
        64, 512,
        512, 1,
        b33, b33, 0,
        64,
        1,
        w34, w34, 0,
        112, 512,
        512, 1,
        b34, b34, 0,
        112,
        1,
        w35, w35, 0,
        144, 512,
        512, 1,
        b35, b35, 0,
        144,
        1,
        w36, w36, 0,
        288, 144, 3, 3,
        1296, 9, 3, 1,
        b36, b36, 0,
        288,
        1,
        w37, w37, 0,
        32, 512,
        512, 1,
        b37, b37, 0,
        32,
        1,
        w38, w38, 0,
        64, 32, 5, 5,
        800, 25, 5, 1,
        b38, b38, 0,
        64,
        1,
        w39, w39, 0,
        64, 512,
        512, 1,
        b39, b39, 0,
        64,
        1,
        w40, w40, 0,
        256, 528,
        528, 1,
        b40, b40, 0,
        256,
        1,
        w41, w41, 0,
        160, 528,
        528, 1,
        b41, b41, 0,
        160,
        1,
        w42, w42, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b42, b42, 0,
        320,
        1,
        w43, w43, 0,
        32, 528,
        528, 1,
        b43, b43, 0,
        32,
        1,
        w44, w44, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b44, b44, 0,
        128,
        1,
        w45, w45, 0,
        128, 528,
        528, 1,
        b45, b45, 0,
        128,
        1,
        w46, w46, 0,
        256, 832,
        832, 1,
        b46, b46, 0,
        256,
        1,
        w47, w47, 0,
        160, 832,
        832, 1,
        b47, b47, 0,
        160,
        1,
        w48, w48, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b48, b48, 0,
        320,
        1,
        w49, w49, 0,
        32, 832,
        832, 1,
        b49, b49, 0,
        32,
        1,
        w50, w50, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b50, b50, 0,
        128,
        1,
        w51, w51, 0,
        128, 832,
        832, 1,
        b51, b51, 0,
        128,
        1,
        w52, w52, 0,
        384, 832,
        832, 1,
        b52, b52, 0,
        384,
        1,
        w53, w53, 0,
        192, 832,
        832, 1,
        b53, b53, 0,
        192,
        1,
        w54, w54, 0,
        384, 192, 3, 3,
        1728, 9, 3, 1,
        b54, b54, 0,
        384,
        1,
        w55, w55, 0,
        48, 832,
        832, 1,
        b55, b55, 0,
        48,
        1,
        w56, w56, 0,
        128, 48, 5, 5,
        1200, 25, 5, 1,
        b56, b56, 0,
        128,
        1,
        w57, w57, 0,
        128, 832,
        832, 1,
        b57, b57, 0,
        128,
        1,
        w58, w58, 0,
        1000, 1024,
        1024, 1,
        b58, b58, 0,
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
    const int is_last = (i == reps - 1);
    if (use_fork) {
      fflush(NULL);
      pid_t p = fork();
      if (p < 0) { perror("fork"); return 1; }
      if (p == 0) {
        struct timespec t0, t1;
        clock_gettime(CLOCK_MONOTONIC, &t0);
        memref2d cur = GoogleNetInceptionV1(
            w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w2, w2, 0,
        64, 64,
        64, 1,
        b2, b2, 0,
        64,
        1,
        w3, w3, 0,
        192, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        192,
        1,
        w4, w4, 0,
        64, 192,
        192, 1,
        b4, b4, 0,
        64,
        1,
        w5, w5, 0,
        96, 192,
        192, 1,
        b5, b5, 0,
        96,
        1,
        w6, w6, 0,
        128, 96, 3, 3,
        864, 9, 3, 1,
        b6, b6, 0,
        128,
        1,
        w7, w7, 0,
        16, 192,
        192, 1,
        b7, b7, 0,
        16,
        1,
        w8, w8, 0,
        32, 16, 5, 5,
        400, 25, 5, 1,
        b8, b8, 0,
        32,
        1,
        w9, w9, 0,
        32, 192,
        192, 1,
        b9, b9, 0,
        32,
        1,
        w10, w10, 0,
        128, 256,
        256, 1,
        b10, b10, 0,
        128,
        1,
        w11, w11, 0,
        128, 256,
        256, 1,
        b11, b11, 0,
        128,
        1,
        w12, w12, 0,
        192, 128, 3, 3,
        1152, 9, 3, 1,
        b12, b12, 0,
        192,
        1,
        w13, w13, 0,
        32, 256,
        256, 1,
        b13, b13, 0,
        32,
        1,
        w14, w14, 0,
        96, 32, 5, 5,
        800, 25, 5, 1,
        b14, b14, 0,
        96,
        1,
        w15, w15, 0,
        64, 256,
        256, 1,
        b15, b15, 0,
        64,
        1,
        w16, w16, 0,
        192, 480,
        480, 1,
        b16, b16, 0,
        192,
        1,
        w17, w17, 0,
        96, 480,
        480, 1,
        b17, b17, 0,
        96,
        1,
        w18, w18, 0,
        208, 96, 3, 3,
        864, 9, 3, 1,
        b18, b18, 0,
        208,
        1,
        w19, w19, 0,
        16, 480,
        480, 1,
        b19, b19, 0,
        16,
        1,
        w20, w20, 0,
        48, 16, 5, 5,
        400, 25, 5, 1,
        b20, b20, 0,
        48,
        1,
        w21, w21, 0,
        64, 480,
        480, 1,
        b21, b21, 0,
        64,
        1,
        w22, w22, 0,
        160, 512,
        512, 1,
        b22, b22, 0,
        160,
        1,
        w23, w23, 0,
        112, 512,
        512, 1,
        b23, b23, 0,
        112,
        1,
        w24, w24, 0,
        224, 112, 3, 3,
        1008, 9, 3, 1,
        b24, b24, 0,
        224,
        1,
        w25, w25, 0,
        24, 512,
        512, 1,
        b25, b25, 0,
        24,
        1,
        w26, w26, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b26, b26, 0,
        64,
        1,
        w27, w27, 0,
        64, 512,
        512, 1,
        b27, b27, 0,
        64,
        1,
        w28, w28, 0,
        128, 512,
        512, 1,
        b28, b28, 0,
        128,
        1,
        w29, w29, 0,
        128, 512,
        512, 1,
        b29, b29, 0,
        128,
        1,
        w30, w30, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b30, b30, 0,
        256,
        1,
        w31, w31, 0,
        24, 512,
        512, 1,
        b31, b31, 0,
        24,
        1,
        w32, w32, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b32, b32, 0,
        64,
        1,
        w33, w33, 0,
        64, 512,
        512, 1,
        b33, b33, 0,
        64,
        1,
        w34, w34, 0,
        112, 512,
        512, 1,
        b34, b34, 0,
        112,
        1,
        w35, w35, 0,
        144, 512,
        512, 1,
        b35, b35, 0,
        144,
        1,
        w36, w36, 0,
        288, 144, 3, 3,
        1296, 9, 3, 1,
        b36, b36, 0,
        288,
        1,
        w37, w37, 0,
        32, 512,
        512, 1,
        b37, b37, 0,
        32,
        1,
        w38, w38, 0,
        64, 32, 5, 5,
        800, 25, 5, 1,
        b38, b38, 0,
        64,
        1,
        w39, w39, 0,
        64, 512,
        512, 1,
        b39, b39, 0,
        64,
        1,
        w40, w40, 0,
        256, 528,
        528, 1,
        b40, b40, 0,
        256,
        1,
        w41, w41, 0,
        160, 528,
        528, 1,
        b41, b41, 0,
        160,
        1,
        w42, w42, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b42, b42, 0,
        320,
        1,
        w43, w43, 0,
        32, 528,
        528, 1,
        b43, b43, 0,
        32,
        1,
        w44, w44, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b44, b44, 0,
        128,
        1,
        w45, w45, 0,
        128, 528,
        528, 1,
        b45, b45, 0,
        128,
        1,
        w46, w46, 0,
        256, 832,
        832, 1,
        b46, b46, 0,
        256,
        1,
        w47, w47, 0,
        160, 832,
        832, 1,
        b47, b47, 0,
        160,
        1,
        w48, w48, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b48, b48, 0,
        320,
        1,
        w49, w49, 0,
        32, 832,
        832, 1,
        b49, b49, 0,
        32,
        1,
        w50, w50, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b50, b50, 0,
        128,
        1,
        w51, w51, 0,
        128, 832,
        832, 1,
        b51, b51, 0,
        128,
        1,
        w52, w52, 0,
        384, 832,
        832, 1,
        b52, b52, 0,
        384,
        1,
        w53, w53, 0,
        192, 832,
        832, 1,
        b53, b53, 0,
        192,
        1,
        w54, w54, 0,
        384, 192, 3, 3,
        1728, 9, 3, 1,
        b54, b54, 0,
        384,
        1,
        w55, w55, 0,
        48, 832,
        832, 1,
        b55, b55, 0,
        48,
        1,
        w56, w56, 0,
        128, 48, 5, 5,
        1200, 25, 5, 1,
        b56, b56, 0,
        128,
        1,
        w57, w57, 0,
        128, 832,
        832, 1,
        b57, b57, 0,
        128,
        1,
        w58, w58, 0,
        1000, 1024,
        1024, 1,
        b58, b58, 0,
        1000,
        1);
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
      memref2d cur = GoogleNetInceptionV1(
          w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w2, w2, 0,
        64, 64,
        64, 1,
        b2, b2, 0,
        64,
        1,
        w3, w3, 0,
        192, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        192,
        1,
        w4, w4, 0,
        64, 192,
        192, 1,
        b4, b4, 0,
        64,
        1,
        w5, w5, 0,
        96, 192,
        192, 1,
        b5, b5, 0,
        96,
        1,
        w6, w6, 0,
        128, 96, 3, 3,
        864, 9, 3, 1,
        b6, b6, 0,
        128,
        1,
        w7, w7, 0,
        16, 192,
        192, 1,
        b7, b7, 0,
        16,
        1,
        w8, w8, 0,
        32, 16, 5, 5,
        400, 25, 5, 1,
        b8, b8, 0,
        32,
        1,
        w9, w9, 0,
        32, 192,
        192, 1,
        b9, b9, 0,
        32,
        1,
        w10, w10, 0,
        128, 256,
        256, 1,
        b10, b10, 0,
        128,
        1,
        w11, w11, 0,
        128, 256,
        256, 1,
        b11, b11, 0,
        128,
        1,
        w12, w12, 0,
        192, 128, 3, 3,
        1152, 9, 3, 1,
        b12, b12, 0,
        192,
        1,
        w13, w13, 0,
        32, 256,
        256, 1,
        b13, b13, 0,
        32,
        1,
        w14, w14, 0,
        96, 32, 5, 5,
        800, 25, 5, 1,
        b14, b14, 0,
        96,
        1,
        w15, w15, 0,
        64, 256,
        256, 1,
        b15, b15, 0,
        64,
        1,
        w16, w16, 0,
        192, 480,
        480, 1,
        b16, b16, 0,
        192,
        1,
        w17, w17, 0,
        96, 480,
        480, 1,
        b17, b17, 0,
        96,
        1,
        w18, w18, 0,
        208, 96, 3, 3,
        864, 9, 3, 1,
        b18, b18, 0,
        208,
        1,
        w19, w19, 0,
        16, 480,
        480, 1,
        b19, b19, 0,
        16,
        1,
        w20, w20, 0,
        48, 16, 5, 5,
        400, 25, 5, 1,
        b20, b20, 0,
        48,
        1,
        w21, w21, 0,
        64, 480,
        480, 1,
        b21, b21, 0,
        64,
        1,
        w22, w22, 0,
        160, 512,
        512, 1,
        b22, b22, 0,
        160,
        1,
        w23, w23, 0,
        112, 512,
        512, 1,
        b23, b23, 0,
        112,
        1,
        w24, w24, 0,
        224, 112, 3, 3,
        1008, 9, 3, 1,
        b24, b24, 0,
        224,
        1,
        w25, w25, 0,
        24, 512,
        512, 1,
        b25, b25, 0,
        24,
        1,
        w26, w26, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b26, b26, 0,
        64,
        1,
        w27, w27, 0,
        64, 512,
        512, 1,
        b27, b27, 0,
        64,
        1,
        w28, w28, 0,
        128, 512,
        512, 1,
        b28, b28, 0,
        128,
        1,
        w29, w29, 0,
        128, 512,
        512, 1,
        b29, b29, 0,
        128,
        1,
        w30, w30, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b30, b30, 0,
        256,
        1,
        w31, w31, 0,
        24, 512,
        512, 1,
        b31, b31, 0,
        24,
        1,
        w32, w32, 0,
        64, 24, 5, 5,
        600, 25, 5, 1,
        b32, b32, 0,
        64,
        1,
        w33, w33, 0,
        64, 512,
        512, 1,
        b33, b33, 0,
        64,
        1,
        w34, w34, 0,
        112, 512,
        512, 1,
        b34, b34, 0,
        112,
        1,
        w35, w35, 0,
        144, 512,
        512, 1,
        b35, b35, 0,
        144,
        1,
        w36, w36, 0,
        288, 144, 3, 3,
        1296, 9, 3, 1,
        b36, b36, 0,
        288,
        1,
        w37, w37, 0,
        32, 512,
        512, 1,
        b37, b37, 0,
        32,
        1,
        w38, w38, 0,
        64, 32, 5, 5,
        800, 25, 5, 1,
        b38, b38, 0,
        64,
        1,
        w39, w39, 0,
        64, 512,
        512, 1,
        b39, b39, 0,
        64,
        1,
        w40, w40, 0,
        256, 528,
        528, 1,
        b40, b40, 0,
        256,
        1,
        w41, w41, 0,
        160, 528,
        528, 1,
        b41, b41, 0,
        160,
        1,
        w42, w42, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b42, b42, 0,
        320,
        1,
        w43, w43, 0,
        32, 528,
        528, 1,
        b43, b43, 0,
        32,
        1,
        w44, w44, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b44, b44, 0,
        128,
        1,
        w45, w45, 0,
        128, 528,
        528, 1,
        b45, b45, 0,
        128,
        1,
        w46, w46, 0,
        256, 832,
        832, 1,
        b46, b46, 0,
        256,
        1,
        w47, w47, 0,
        160, 832,
        832, 1,
        b47, b47, 0,
        160,
        1,
        w48, w48, 0,
        320, 160, 3, 3,
        1440, 9, 3, 1,
        b48, b48, 0,
        320,
        1,
        w49, w49, 0,
        32, 832,
        832, 1,
        b49, b49, 0,
        32,
        1,
        w50, w50, 0,
        128, 32, 5, 5,
        800, 25, 5, 1,
        b50, b50, 0,
        128,
        1,
        w51, w51, 0,
        128, 832,
        832, 1,
        b51, b51, 0,
        128,
        1,
        w52, w52, 0,
        384, 832,
        832, 1,
        b52, b52, 0,
        384,
        1,
        w53, w53, 0,
        192, 832,
        832, 1,
        b53, b53, 0,
        192,
        1,
        w54, w54, 0,
        384, 192, 3, 3,
        1728, 9, 3, 1,
        b54, b54, 0,
        384,
        1,
        w55, w55, 0,
        48, 832,
        832, 1,
        b55, b55, 0,
        48,
        1,
        w56, w56, 0,
        128, 48, 5, 5,
        1200, 25, 5, 1,
        b56, b56, 0,
        128,
        1,
        w57, w57, 0,
        128, 832,
        832, 1,
        b57, b57, 0,
        128,
        1,
        w58, w58, 0,
        1000, 1024,
        1024, 1,
        b58, b58, 0,
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

  write_timing_report(json_report_path, "GoogleNetInceptionV1", "mim_mlir_llvm", run_id,
                       weights_path, input_path, output_path, reps,
                       times[reps / 2], sum / reps, times[0], times[reps - 1]);

  free(x);
  release_times(times, reps, use_fork);
  return 0;
}
