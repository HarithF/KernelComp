#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

/* Auto-generated driver for `ResNet18` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from sibling .mlir (./09_ResNet18/mlir_llvm/ResNet18_mlir.mlir)
 * -- which is a file for THIS pipeline, so its argument order matches
 * one-for-one what convert-func-to-llvm scalarized. Each weight's location
 * in weights.bin is its byte offset from ResNet18_params.json,
 * looked up by canonical torch parameter name:
 * x: shape [2, 3, 224, 224] (input)
 * w1: shape [64, 3, 7, 7] (weight) <- conv1.weight @ byte 0
 * b1: shape [64] (bias) <- bn1.weight @ byte 38144
 * b2: shape [64] (bias) <- bn1.bias @ byte 38400
 * w2: shape [64, 64, 3, 3] (weight) <- layer1.0.conv1.weight @ byte 38656
 * b3: shape [64] (bias) <- layer1.0.bn1.weight @ byte 186624
 * b4: shape [64] (bias) <- layer1.0.bn1.bias @ byte 186880
 * w3: shape [64, 64, 3, 3] (weight) <- layer1.0.conv2.weight @ byte 187136
 * b5: shape [64] (bias) <- layer1.0.bn2.weight @ byte 335104
 * b6: shape [64] (bias) <- layer1.0.bn2.bias @ byte 335360
 * w4: shape [64, 64, 3, 3] (weight) <- layer1.1.conv1.weight @ byte 335616
 * b7: shape [64] (bias) <- layer1.1.bn1.weight @ byte 483584
 * b8: shape [64] (bias) <- layer1.1.bn1.bias @ byte 483840
 * w5: shape [64, 64, 3, 3] (weight) <- layer1.1.conv2.weight @ byte 484096
 * b9: shape [64] (bias) <- layer1.1.bn2.weight @ byte 632064
 * b10: shape [64] (bias) <- layer1.1.bn2.bias @ byte 632320
 * w6: shape [128, 64, 3, 3] (weight) <- layer2.0.conv1.weight @ byte 632576
 * b11: shape [128] (bias) <- layer2.0.bn1.weight @ byte 928512
 * b12: shape [128] (bias) <- layer2.0.bn1.bias @ byte 929024
 * w7: shape [128, 128, 3, 3] (weight) <- layer2.0.conv2.weight @ byte 929536
 * b13: shape [128] (bias) <- layer2.0.bn2.weight @ byte 1520384
 * b14: shape [128] (bias) <- layer2.0.bn2.bias @ byte 1520896
 * w8: shape [128, 64, 1, 1] (weight) <- layer2.0.downsample.0.weight @ byte 1521408
 * b15: shape [128] (bias) <- layer2.0.downsample.1.weight @ byte 1555200
 * b16: shape [128] (bias) <- layer2.0.downsample.1.bias @ byte 1555712
 * w9: shape [128, 128, 3, 3] (weight) <- layer2.1.conv1.weight @ byte 1556224
 * b17: shape [128] (bias) <- layer2.1.bn1.weight @ byte 2147072
 * b18: shape [128] (bias) <- layer2.1.bn1.bias @ byte 2147584
 * w10: shape [128, 128, 3, 3] (weight) <- layer2.1.conv2.weight @ byte 2148096
 * b19: shape [128] (bias) <- layer2.1.bn2.weight @ byte 2738944
 * b20: shape [128] (bias) <- layer2.1.bn2.bias @ byte 2739456
 * w11: shape [256, 128, 3, 3] (weight) <- layer3.0.conv1.weight @ byte 2739968
 * b21: shape [256] (bias) <- layer3.0.bn1.weight @ byte 3921664
 * b22: shape [256] (bias) <- layer3.0.bn1.bias @ byte 3922688
 * w12: shape [256, 256, 3, 3] (weight) <- layer3.0.conv2.weight @ byte 3923712
 * b23: shape [256] (bias) <- layer3.0.bn2.weight @ byte 6285056
 * b24: shape [256] (bias) <- layer3.0.bn2.bias @ byte 6286080
 * w13: shape [256, 128, 1, 1] (weight) <- layer3.0.downsample.0.weight @ byte 6287104
 * b25: shape [256] (bias) <- layer3.0.downsample.1.weight @ byte 6420224
 * b26: shape [256] (bias) <- layer3.0.downsample.1.bias @ byte 6421248
 * w14: shape [256, 256, 3, 3] (weight) <- layer3.1.conv1.weight @ byte 6422272
 * b27: shape [256] (bias) <- layer3.1.bn1.weight @ byte 8783616
 * b28: shape [256] (bias) <- layer3.1.bn1.bias @ byte 8784640
 * w15: shape [256, 256, 3, 3] (weight) <- layer3.1.conv2.weight @ byte 8785664
 * b29: shape [256] (bias) <- layer3.1.bn2.weight @ byte 11147008
 * b30: shape [256] (bias) <- layer3.1.bn2.bias @ byte 11148032
 * w16: shape [512, 256, 3, 3] (weight) <- layer4.0.conv1.weight @ byte 11149056
 * b31: shape [512] (bias) <- layer4.0.bn1.weight @ byte 15871744
 * b32: shape [512] (bias) <- layer4.0.bn1.bias @ byte 15873792
 * w17: shape [512, 512, 3, 3] (weight) <- layer4.0.conv2.weight @ byte 15875840
 * b33: shape [512] (bias) <- layer4.0.bn2.weight @ byte 25317120
 * b34: shape [512] (bias) <- layer4.0.bn2.bias @ byte 25319168
 * w18: shape [512, 256, 1, 1] (weight) <- layer4.0.downsample.0.weight @ byte 25321216
 * b35: shape [512] (bias) <- layer4.0.downsample.1.weight @ byte 25849600
 * b36: shape [512] (bias) <- layer4.0.downsample.1.bias @ byte 25851648
 * w19: shape [512, 512, 3, 3] (weight) <- layer4.1.conv1.weight @ byte 25853696
 * b37: shape [512] (bias) <- layer4.1.bn1.weight @ byte 35294976
 * b38: shape [512] (bias) <- layer4.1.bn1.bias @ byte 35297024
 * w20: shape [512, 512, 3, 3] (weight) <- layer4.1.conv2.weight @ byte 35299072
 * b39: shape [512] (bias) <- layer4.1.bn2.weight @ byte 44740352
 * b40: shape [512] (bias) <- layer4.1.bn2.bias @ byte 44742400
 * w21: shape [1000, 512] (weight) <- fc.weight @ byte 44744448
 * b41: shape [1000] (bias) <- fc.bias @ byte 46792448
 * b42: shape [64] (bias) <- bn1.running_mean @ byte 37632
 * b43: shape [64] (bias) <- bn1.running_var @ byte 37888
 * b44: shape [64] (bias) <- layer1.0.bn1.running_mean @ byte 186112
 * b45: shape [64] (bias) <- layer1.0.bn1.running_var @ byte 186368
 * b46: shape [64] (bias) <- layer1.0.bn2.running_mean @ byte 334592
 * b47: shape [64] (bias) <- layer1.0.bn2.running_var @ byte 334848
 * b48: shape [64] (bias) <- layer1.1.bn1.running_mean @ byte 483072
 * b49: shape [64] (bias) <- layer1.1.bn1.running_var @ byte 483328
 * b50: shape [64] (bias) <- layer1.1.bn2.running_mean @ byte 631552
 * b51: shape [64] (bias) <- layer1.1.bn2.running_var @ byte 631808
 * b52: shape [128] (bias) <- layer2.0.bn1.running_mean @ byte 927488
 * b53: shape [128] (bias) <- layer2.0.bn1.running_var @ byte 928000
 * b54: shape [128] (bias) <- layer2.0.bn2.running_mean @ byte 1519360
 * b55: shape [128] (bias) <- layer2.0.bn2.running_var @ byte 1519872
 * b56: shape [128] (bias) <- layer2.0.downsample.1.running_mean @ byte 1554176
 * b57: shape [128] (bias) <- layer2.0.downsample.1.running_var @ byte 1554688
 * b58: shape [128] (bias) <- layer2.1.bn1.running_mean @ byte 2146048
 * b59: shape [128] (bias) <- layer2.1.bn1.running_var @ byte 2146560
 * b60: shape [128] (bias) <- layer2.1.bn2.running_mean @ byte 2737920
 * b61: shape [128] (bias) <- layer2.1.bn2.running_var @ byte 2738432
 * b62: shape [256] (bias) <- layer3.0.bn1.running_mean @ byte 3919616
 * b63: shape [256] (bias) <- layer3.0.bn1.running_var @ byte 3920640
 * b64: shape [256] (bias) <- layer3.0.bn2.running_mean @ byte 6283008
 * b65: shape [256] (bias) <- layer3.0.bn2.running_var @ byte 6284032
 * b66: shape [256] (bias) <- layer3.0.downsample.1.running_mean @ byte 6418176
 * b67: shape [256] (bias) <- layer3.0.downsample.1.running_var @ byte 6419200
 * b68: shape [256] (bias) <- layer3.1.bn1.running_mean @ byte 8781568
 * b69: shape [256] (bias) <- layer3.1.bn1.running_var @ byte 8782592
 * b70: shape [256] (bias) <- layer3.1.bn2.running_mean @ byte 11144960
 * b71: shape [256] (bias) <- layer3.1.bn2.running_var @ byte 11145984
 * b72: shape [512] (bias) <- layer4.0.bn1.running_mean @ byte 15867648
 * b73: shape [512] (bias) <- layer4.0.bn1.running_var @ byte 15869696
 * b74: shape [512] (bias) <- layer4.0.bn2.running_mean @ byte 25313024
 * b75: shape [512] (bias) <- layer4.0.bn2.running_var @ byte 25315072
 * b76: shape [512] (bias) <- layer4.0.downsample.1.running_mean @ byte 25845504
 * b77: shape [512] (bias) <- layer4.0.downsample.1.running_var @ byte 25847552
 * b78: shape [512] (bias) <- layer4.1.bn1.running_mean @ byte 35290880
 * b79: shape [512] (bias) <- layer4.1.bn1.running_var @ byte 35292928
 * b80: shape [512] (bias) <- layer4.1.bn2.running_mean @ byte 44736256
 * b81: shape [512] (bias) <- layer4.1.bn2.running_var @ byte 44738304
 * output: shape [2, 1000]
 *
 * Usage: ResNet18_driver_mlir <weights> <input> <reps> <output> [run_id] [json_report]
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

extern memref2d ResNet18(
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
    float *b2_a,
    float *b2_al,
    int64_t b2_off,
    int64_t b2_s0,
    int64_t b2_st0,
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
    float *b25_a,
    float *b25_al,
    int64_t b25_off,
    int64_t b25_s0,
    int64_t b25_st0,
    float *b26_a,
    float *b26_al,
    int64_t b26_off,
    int64_t b26_s0,
    int64_t b26_st0,
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
    float *b27_a,
    float *b27_al,
    int64_t b27_off,
    int64_t b27_s0,
    int64_t b27_st0,
    float *b28_a,
    float *b28_al,
    int64_t b28_off,
    int64_t b28_s0,
    int64_t b28_st0,
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
    float *b29_a,
    float *b29_al,
    int64_t b29_off,
    int64_t b29_s0,
    int64_t b29_st0,
    float *b30_a,
    float *b30_al,
    int64_t b30_off,
    int64_t b30_s0,
    int64_t b30_st0,
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
    float *b31_a,
    float *b31_al,
    int64_t b31_off,
    int64_t b31_s0,
    int64_t b31_st0,
    float *b32_a,
    float *b32_al,
    int64_t b32_off,
    int64_t b32_s0,
    int64_t b32_st0,
    float *w17_a,
    float *w17_al,
    int64_t w17_off,
    int64_t w17_s0,
    int64_t w17_s1,
    int64_t w17_s2,
    int64_t w17_s3,
    int64_t w17_st0,
    int64_t w17_st1,
    int64_t w17_st2,
    int64_t w17_st3,
    float *b33_a,
    float *b33_al,
    int64_t b33_off,
    int64_t b33_s0,
    int64_t b33_st0,
    float *b34_a,
    float *b34_al,
    int64_t b34_off,
    int64_t b34_s0,
    int64_t b34_st0,
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
    float *b35_a,
    float *b35_al,
    int64_t b35_off,
    int64_t b35_s0,
    int64_t b35_st0,
    float *b36_a,
    float *b36_al,
    int64_t b36_off,
    int64_t b36_s0,
    int64_t b36_st0,
    float *w19_a,
    float *w19_al,
    int64_t w19_off,
    int64_t w19_s0,
    int64_t w19_s1,
    int64_t w19_s2,
    int64_t w19_s3,
    int64_t w19_st0,
    int64_t w19_st1,
    int64_t w19_st2,
    int64_t w19_st3,
    float *b37_a,
    float *b37_al,
    int64_t b37_off,
    int64_t b37_s0,
    int64_t b37_st0,
    float *b38_a,
    float *b38_al,
    int64_t b38_off,
    int64_t b38_s0,
    int64_t b38_st0,
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
    float *b39_a,
    float *b39_al,
    int64_t b39_off,
    int64_t b39_s0,
    int64_t b39_st0,
    float *b40_a,
    float *b40_al,
    int64_t b40_off,
    int64_t b40_s0,
    int64_t b40_st0,
    float *w21_a,
    float *w21_al,
    int64_t w21_off,
    int64_t w21_s0,
    int64_t w21_s1,
    int64_t w21_st0,
    int64_t w21_st1,
    float *b41_a,
    float *b41_al,
    int64_t b41_off,
    int64_t b41_s0,
    int64_t b41_st0,
    float *b42_a,
    float *b42_al,
    int64_t b42_off,
    int64_t b42_s0,
    int64_t b42_st0,
    float *b43_a,
    float *b43_al,
    int64_t b43_off,
    int64_t b43_s0,
    int64_t b43_st0,
    float *b44_a,
    float *b44_al,
    int64_t b44_off,
    int64_t b44_s0,
    int64_t b44_st0,
    float *b45_a,
    float *b45_al,
    int64_t b45_off,
    int64_t b45_s0,
    int64_t b45_st0,
    float *b46_a,
    float *b46_al,
    int64_t b46_off,
    int64_t b46_s0,
    int64_t b46_st0,
    float *b47_a,
    float *b47_al,
    int64_t b47_off,
    int64_t b47_s0,
    int64_t b47_st0,
    float *b48_a,
    float *b48_al,
    int64_t b48_off,
    int64_t b48_s0,
    int64_t b48_st0,
    float *b49_a,
    float *b49_al,
    int64_t b49_off,
    int64_t b49_s0,
    int64_t b49_st0,
    float *b50_a,
    float *b50_al,
    int64_t b50_off,
    int64_t b50_s0,
    int64_t b50_st0,
    float *b51_a,
    float *b51_al,
    int64_t b51_off,
    int64_t b51_s0,
    int64_t b51_st0,
    float *b52_a,
    float *b52_al,
    int64_t b52_off,
    int64_t b52_s0,
    int64_t b52_st0,
    float *b53_a,
    float *b53_al,
    int64_t b53_off,
    int64_t b53_s0,
    int64_t b53_st0,
    float *b54_a,
    float *b54_al,
    int64_t b54_off,
    int64_t b54_s0,
    int64_t b54_st0,
    float *b55_a,
    float *b55_al,
    int64_t b55_off,
    int64_t b55_s0,
    int64_t b55_st0,
    float *b56_a,
    float *b56_al,
    int64_t b56_off,
    int64_t b56_s0,
    int64_t b56_st0,
    float *b57_a,
    float *b57_al,
    int64_t b57_off,
    int64_t b57_s0,
    int64_t b57_st0,
    float *b58_a,
    float *b58_al,
    int64_t b58_off,
    int64_t b58_s0,
    int64_t b58_st0,
    float *b59_a,
    float *b59_al,
    int64_t b59_off,
    int64_t b59_s0,
    int64_t b59_st0,
    float *b60_a,
    float *b60_al,
    int64_t b60_off,
    int64_t b60_s0,
    int64_t b60_st0,
    float *b61_a,
    float *b61_al,
    int64_t b61_off,
    int64_t b61_s0,
    int64_t b61_st0,
    float *b62_a,
    float *b62_al,
    int64_t b62_off,
    int64_t b62_s0,
    int64_t b62_st0,
    float *b63_a,
    float *b63_al,
    int64_t b63_off,
    int64_t b63_s0,
    int64_t b63_st0,
    float *b64_a,
    float *b64_al,
    int64_t b64_off,
    int64_t b64_s0,
    int64_t b64_st0,
    float *b65_a,
    float *b65_al,
    int64_t b65_off,
    int64_t b65_s0,
    int64_t b65_st0,
    float *b66_a,
    float *b66_al,
    int64_t b66_off,
    int64_t b66_s0,
    int64_t b66_st0,
    float *b67_a,
    float *b67_al,
    int64_t b67_off,
    int64_t b67_s0,
    int64_t b67_st0,
    float *b68_a,
    float *b68_al,
    int64_t b68_off,
    int64_t b68_s0,
    int64_t b68_st0,
    float *b69_a,
    float *b69_al,
    int64_t b69_off,
    int64_t b69_s0,
    int64_t b69_st0,
    float *b70_a,
    float *b70_al,
    int64_t b70_off,
    int64_t b70_s0,
    int64_t b70_st0,
    float *b71_a,
    float *b71_al,
    int64_t b71_off,
    int64_t b71_s0,
    int64_t b71_st0,
    float *b72_a,
    float *b72_al,
    int64_t b72_off,
    int64_t b72_s0,
    int64_t b72_st0,
    float *b73_a,
    float *b73_al,
    int64_t b73_off,
    int64_t b73_s0,
    int64_t b73_st0,
    float *b74_a,
    float *b74_al,
    int64_t b74_off,
    int64_t b74_s0,
    int64_t b74_st0,
    float *b75_a,
    float *b75_al,
    int64_t b75_off,
    int64_t b75_s0,
    int64_t b75_st0,
    float *b76_a,
    float *b76_al,
    int64_t b76_off,
    int64_t b76_s0,
    int64_t b76_st0,
    float *b77_a,
    float *b77_al,
    int64_t b77_off,
    int64_t b77_s0,
    int64_t b77_st0,
    float *b78_a,
    float *b78_al,
    int64_t b78_off,
    int64_t b78_s0,
    int64_t b78_st0,
    float *b79_a,
    float *b79_al,
    int64_t b79_off,
    int64_t b79_s0,
    int64_t b79_st0,
    float *b80_a,
    float *b80_al,
    int64_t b80_off,
    int64_t b80_s0,
    int64_t b80_st0,
    float *b81_a,
    float *b81_al,
    int64_t b81_off,
    int64_t b81_s0,
    int64_t b81_st0);

static const size_t x_count = 301056;
static const size_t w1_count = 9408;
static const size_t b1_count = 64;
static const size_t b2_count = 64;
static const size_t w2_count = 36864;
static const size_t b3_count = 64;
static const size_t b4_count = 64;
static const size_t w3_count = 36864;
static const size_t b5_count = 64;
static const size_t b6_count = 64;
static const size_t w4_count = 36864;
static const size_t b7_count = 64;
static const size_t b8_count = 64;
static const size_t w5_count = 36864;
static const size_t b9_count = 64;
static const size_t b10_count = 64;
static const size_t w6_count = 73728;
static const size_t b11_count = 128;
static const size_t b12_count = 128;
static const size_t w7_count = 147456;
static const size_t b13_count = 128;
static const size_t b14_count = 128;
static const size_t w8_count = 8192;
static const size_t b15_count = 128;
static const size_t b16_count = 128;
static const size_t w9_count = 147456;
static const size_t b17_count = 128;
static const size_t b18_count = 128;
static const size_t w10_count = 147456;
static const size_t b19_count = 128;
static const size_t b20_count = 128;
static const size_t w11_count = 294912;
static const size_t b21_count = 256;
static const size_t b22_count = 256;
static const size_t w12_count = 589824;
static const size_t b23_count = 256;
static const size_t b24_count = 256;
static const size_t w13_count = 32768;
static const size_t b25_count = 256;
static const size_t b26_count = 256;
static const size_t w14_count = 589824;
static const size_t b27_count = 256;
static const size_t b28_count = 256;
static const size_t w15_count = 589824;
static const size_t b29_count = 256;
static const size_t b30_count = 256;
static const size_t w16_count = 1179648;
static const size_t b31_count = 512;
static const size_t b32_count = 512;
static const size_t w17_count = 2359296;
static const size_t b33_count = 512;
static const size_t b34_count = 512;
static const size_t w18_count = 131072;
static const size_t b35_count = 512;
static const size_t b36_count = 512;
static const size_t w19_count = 2359296;
static const size_t b37_count = 512;
static const size_t b38_count = 512;
static const size_t w20_count = 2359296;
static const size_t b39_count = 512;
static const size_t b40_count = 512;
static const size_t w21_count = 512000;
static const size_t b41_count = 1000;
static const size_t b42_count = 64;
static const size_t b43_count = 64;
static const size_t b44_count = 64;
static const size_t b45_count = 64;
static const size_t b46_count = 64;
static const size_t b47_count = 64;
static const size_t b48_count = 64;
static const size_t b49_count = 64;
static const size_t b50_count = 64;
static const size_t b51_count = 64;
static const size_t b52_count = 128;
static const size_t b53_count = 128;
static const size_t b54_count = 128;
static const size_t b55_count = 128;
static const size_t b56_count = 128;
static const size_t b57_count = 128;
static const size_t b58_count = 128;
static const size_t b59_count = 128;
static const size_t b60_count = 128;
static const size_t b61_count = 128;
static const size_t b62_count = 256;
static const size_t b63_count = 256;
static const size_t b64_count = 256;
static const size_t b65_count = 256;
static const size_t b66_count = 256;
static const size_t b67_count = 256;
static const size_t b68_count = 256;
static const size_t b69_count = 256;
static const size_t b70_count = 256;
static const size_t b71_count = 256;
static const size_t b72_count = 512;
static const size_t b73_count = 512;
static const size_t b74_count = 512;
static const size_t b75_count = 512;
static const size_t b76_count = 512;
static const size_t b77_count = 512;
static const size_t b78_count = 512;
static const size_t b79_count = 512;
static const size_t b80_count = 512;
static const size_t b81_count = 512;

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
    snprintf(json_path_buf, sizeof(json_path_buf), "ResNet18_mlir_llvm_%s_timing.json", run_id);
    json_report_path = json_path_buf;
  }

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }

  float *w1 = read_floats_at(wf, 0, w1_count, "w1");
  float *b1 = read_floats_at(wf, 38144, b1_count, "b1");
  float *b2 = read_floats_at(wf, 38400, b2_count, "b2");
  float *w2 = read_floats_at(wf, 38656, w2_count, "w2");
  float *b3 = read_floats_at(wf, 186624, b3_count, "b3");
  float *b4 = read_floats_at(wf, 186880, b4_count, "b4");
  float *w3 = read_floats_at(wf, 187136, w3_count, "w3");
  float *b5 = read_floats_at(wf, 335104, b5_count, "b5");
  float *b6 = read_floats_at(wf, 335360, b6_count, "b6");
  float *w4 = read_floats_at(wf, 335616, w4_count, "w4");
  float *b7 = read_floats_at(wf, 483584, b7_count, "b7");
  float *b8 = read_floats_at(wf, 483840, b8_count, "b8");
  float *w5 = read_floats_at(wf, 484096, w5_count, "w5");
  float *b9 = read_floats_at(wf, 632064, b9_count, "b9");
  float *b10 = read_floats_at(wf, 632320, b10_count, "b10");
  float *w6 = read_floats_at(wf, 632576, w6_count, "w6");
  float *b11 = read_floats_at(wf, 928512, b11_count, "b11");
  float *b12 = read_floats_at(wf, 929024, b12_count, "b12");
  float *w7 = read_floats_at(wf, 929536, w7_count, "w7");
  float *b13 = read_floats_at(wf, 1520384, b13_count, "b13");
  float *b14 = read_floats_at(wf, 1520896, b14_count, "b14");
  float *w8 = read_floats_at(wf, 1521408, w8_count, "w8");
  float *b15 = read_floats_at(wf, 1555200, b15_count, "b15");
  float *b16 = read_floats_at(wf, 1555712, b16_count, "b16");
  float *w9 = read_floats_at(wf, 1556224, w9_count, "w9");
  float *b17 = read_floats_at(wf, 2147072, b17_count, "b17");
  float *b18 = read_floats_at(wf, 2147584, b18_count, "b18");
  float *w10 = read_floats_at(wf, 2148096, w10_count, "w10");
  float *b19 = read_floats_at(wf, 2738944, b19_count, "b19");
  float *b20 = read_floats_at(wf, 2739456, b20_count, "b20");
  float *w11 = read_floats_at(wf, 2739968, w11_count, "w11");
  float *b21 = read_floats_at(wf, 3921664, b21_count, "b21");
  float *b22 = read_floats_at(wf, 3922688, b22_count, "b22");
  float *w12 = read_floats_at(wf, 3923712, w12_count, "w12");
  float *b23 = read_floats_at(wf, 6285056, b23_count, "b23");
  float *b24 = read_floats_at(wf, 6286080, b24_count, "b24");
  float *w13 = read_floats_at(wf, 6287104, w13_count, "w13");
  float *b25 = read_floats_at(wf, 6420224, b25_count, "b25");
  float *b26 = read_floats_at(wf, 6421248, b26_count, "b26");
  float *w14 = read_floats_at(wf, 6422272, w14_count, "w14");
  float *b27 = read_floats_at(wf, 8783616, b27_count, "b27");
  float *b28 = read_floats_at(wf, 8784640, b28_count, "b28");
  float *w15 = read_floats_at(wf, 8785664, w15_count, "w15");
  float *b29 = read_floats_at(wf, 11147008, b29_count, "b29");
  float *b30 = read_floats_at(wf, 11148032, b30_count, "b30");
  float *w16 = read_floats_at(wf, 11149056, w16_count, "w16");
  float *b31 = read_floats_at(wf, 15871744, b31_count, "b31");
  float *b32 = read_floats_at(wf, 15873792, b32_count, "b32");
  float *w17 = read_floats_at(wf, 15875840, w17_count, "w17");
  float *b33 = read_floats_at(wf, 25317120, b33_count, "b33");
  float *b34 = read_floats_at(wf, 25319168, b34_count, "b34");
  float *w18 = read_floats_at(wf, 25321216, w18_count, "w18");
  float *b35 = read_floats_at(wf, 25849600, b35_count, "b35");
  float *b36 = read_floats_at(wf, 25851648, b36_count, "b36");
  float *w19 = read_floats_at(wf, 25853696, w19_count, "w19");
  float *b37 = read_floats_at(wf, 35294976, b37_count, "b37");
  float *b38 = read_floats_at(wf, 35297024, b38_count, "b38");
  float *w20 = read_floats_at(wf, 35299072, w20_count, "w20");
  float *b39 = read_floats_at(wf, 44740352, b39_count, "b39");
  float *b40 = read_floats_at(wf, 44742400, b40_count, "b40");
  float *w21 = read_floats_at(wf, 44744448, w21_count, "w21");
  float *b41 = read_floats_at(wf, 46792448, b41_count, "b41");
  float *b42 = read_floats_at(wf, 37632, b42_count, "b42");
  float *b43 = read_floats_at(wf, 37888, b43_count, "b43");
  float *b44 = read_floats_at(wf, 186112, b44_count, "b44");
  float *b45 = read_floats_at(wf, 186368, b45_count, "b45");
  float *b46 = read_floats_at(wf, 334592, b46_count, "b46");
  float *b47 = read_floats_at(wf, 334848, b47_count, "b47");
  float *b48 = read_floats_at(wf, 483072, b48_count, "b48");
  float *b49 = read_floats_at(wf, 483328, b49_count, "b49");
  float *b50 = read_floats_at(wf, 631552, b50_count, "b50");
  float *b51 = read_floats_at(wf, 631808, b51_count, "b51");
  float *b52 = read_floats_at(wf, 927488, b52_count, "b52");
  float *b53 = read_floats_at(wf, 928000, b53_count, "b53");
  float *b54 = read_floats_at(wf, 1519360, b54_count, "b54");
  float *b55 = read_floats_at(wf, 1519872, b55_count, "b55");
  float *b56 = read_floats_at(wf, 1554176, b56_count, "b56");
  float *b57 = read_floats_at(wf, 1554688, b57_count, "b57");
  float *b58 = read_floats_at(wf, 2146048, b58_count, "b58");
  float *b59 = read_floats_at(wf, 2146560, b59_count, "b59");
  float *b60 = read_floats_at(wf, 2737920, b60_count, "b60");
  float *b61 = read_floats_at(wf, 2738432, b61_count, "b61");
  float *b62 = read_floats_at(wf, 3919616, b62_count, "b62");
  float *b63 = read_floats_at(wf, 3920640, b63_count, "b63");
  float *b64 = read_floats_at(wf, 6283008, b64_count, "b64");
  float *b65 = read_floats_at(wf, 6284032, b65_count, "b65");
  float *b66 = read_floats_at(wf, 6418176, b66_count, "b66");
  float *b67 = read_floats_at(wf, 6419200, b67_count, "b67");
  float *b68 = read_floats_at(wf, 8781568, b68_count, "b68");
  float *b69 = read_floats_at(wf, 8782592, b69_count, "b69");
  float *b70 = read_floats_at(wf, 11144960, b70_count, "b70");
  float *b71 = read_floats_at(wf, 11145984, b71_count, "b71");
  float *b72 = read_floats_at(wf, 15867648, b72_count, "b72");
  float *b73 = read_floats_at(wf, 15869696, b73_count, "b73");
  float *b74 = read_floats_at(wf, 25313024, b74_count, "b74");
  float *b75 = read_floats_at(wf, 25315072, b75_count, "b75");
  float *b76 = read_floats_at(wf, 25845504, b76_count, "b76");
  float *b77 = read_floats_at(wf, 25847552, b77_count, "b77");
  float *b78 = read_floats_at(wf, 35290880, b78_count, "b78");
  float *b79 = read_floats_at(wf, 35292928, b79_count, "b79");
  float *b80 = read_floats_at(wf, 44736256, b80_count, "b80");
  float *b81 = read_floats_at(wf, 44738304, b81_count, "b81");
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
      memref2d out = ResNet18(
          x, x, 0,
        2, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        b2, b2, 0,
        64,
        1,
        w2, w2, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        64,
        1,
        b4, b4, 0,
        64,
        1,
        w3, w3, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        w4, w4, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w5, w5, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        64,
        1,
        b10, b10, 0,
        64,
        1,
        w6, w6, 0,
        128, 64, 3, 3,
        576, 9, 3, 1,
        b11, b11, 0,
        128,
        1,
        b12, b12, 0,
        128,
        1,
        w7, w7, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        w8, w8, 0,
        128, 64, 1, 1,
        64, 1, 1, 1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w9, w9, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        128,
        1,
        b18, b18, 0,
        128,
        1,
        w10, w10, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b19, b19, 0,
        128,
        1,
        b20, b20, 0,
        128,
        1,
        w11, w11, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b21, b21, 0,
        256,
        1,
        b22, b22, 0,
        256,
        1,
        w12, w12, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b23, b23, 0,
        256,
        1,
        b24, b24, 0,
        256,
        1,
        w13, w13, 0,
        256, 128, 1, 1,
        128, 1, 1, 1,
        b25, b25, 0,
        256,
        1,
        b26, b26, 0,
        256,
        1,
        w14, w14, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b27, b27, 0,
        256,
        1,
        b28, b28, 0,
        256,
        1,
        w15, w15, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b29, b29, 0,
        256,
        1,
        b30, b30, 0,
        256,
        1,
        w16, w16, 0,
        512, 256, 3, 3,
        2304, 9, 3, 1,
        b31, b31, 0,
        512,
        1,
        b32, b32, 0,
        512,
        1,
        w17, w17, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b33, b33, 0,
        512,
        1,
        b34, b34, 0,
        512,
        1,
        w18, w18, 0,
        512, 256, 1, 1,
        256, 1, 1, 1,
        b35, b35, 0,
        512,
        1,
        b36, b36, 0,
        512,
        1,
        w19, w19, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b37, b37, 0,
        512,
        1,
        b38, b38, 0,
        512,
        1,
        w20, w20, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b39, b39, 0,
        512,
        1,
        b40, b40, 0,
        512,
        1,
        w21, w21, 0,
        1000, 512,
        512, 1,
        b41, b41, 0,
        1000,
        1,
        b42, b42, 0,
        64,
        1,
        b43, b43, 0,
        64,
        1,
        b44, b44, 0,
        64,
        1,
        b45, b45, 0,
        64,
        1,
        b46, b46, 0,
        64,
        1,
        b47, b47, 0,
        64,
        1,
        b48, b48, 0,
        64,
        1,
        b49, b49, 0,
        64,
        1,
        b50, b50, 0,
        64,
        1,
        b51, b51, 0,
        64,
        1,
        b52, b52, 0,
        128,
        1,
        b53, b53, 0,
        128,
        1,
        b54, b54, 0,
        128,
        1,
        b55, b55, 0,
        128,
        1,
        b56, b56, 0,
        128,
        1,
        b57, b57, 0,
        128,
        1,
        b58, b58, 0,
        128,
        1,
        b59, b59, 0,
        128,
        1,
        b60, b60, 0,
        128,
        1,
        b61, b61, 0,
        128,
        1,
        b62, b62, 0,
        256,
        1,
        b63, b63, 0,
        256,
        1,
        b64, b64, 0,
        256,
        1,
        b65, b65, 0,
        256,
        1,
        b66, b66, 0,
        256,
        1,
        b67, b67, 0,
        256,
        1,
        b68, b68, 0,
        256,
        1,
        b69, b69, 0,
        256,
        1,
        b70, b70, 0,
        256,
        1,
        b71, b71, 0,
        256,
        1,
        b72, b72, 0,
        512,
        1,
        b73, b73, 0,
        512,
        1,
        b74, b74, 0,
        512,
        1,
        b75, b75, 0,
        512,
        1,
        b76, b76, 0,
        512,
        1,
        b77, b77, 0,
        512,
        1,
        b78, b78, 0,
        512,
        1,
        b79, b79, 0,
        512,
        1,
        b80, b80, 0,
        512,
        1,
        b81, b81, 0,
        512,
        1);
      free(out.alloc);
      _exit(0);
    }
    await_child(p, "warm-up");
  } else {
    memref2d out = ResNet18(
        x, x, 0,
        2, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        b2, b2, 0,
        64,
        1,
        w2, w2, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        64,
        1,
        b4, b4, 0,
        64,
        1,
        w3, w3, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        w4, w4, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w5, w5, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        64,
        1,
        b10, b10, 0,
        64,
        1,
        w6, w6, 0,
        128, 64, 3, 3,
        576, 9, 3, 1,
        b11, b11, 0,
        128,
        1,
        b12, b12, 0,
        128,
        1,
        w7, w7, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        w8, w8, 0,
        128, 64, 1, 1,
        64, 1, 1, 1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w9, w9, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        128,
        1,
        b18, b18, 0,
        128,
        1,
        w10, w10, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b19, b19, 0,
        128,
        1,
        b20, b20, 0,
        128,
        1,
        w11, w11, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b21, b21, 0,
        256,
        1,
        b22, b22, 0,
        256,
        1,
        w12, w12, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b23, b23, 0,
        256,
        1,
        b24, b24, 0,
        256,
        1,
        w13, w13, 0,
        256, 128, 1, 1,
        128, 1, 1, 1,
        b25, b25, 0,
        256,
        1,
        b26, b26, 0,
        256,
        1,
        w14, w14, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b27, b27, 0,
        256,
        1,
        b28, b28, 0,
        256,
        1,
        w15, w15, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b29, b29, 0,
        256,
        1,
        b30, b30, 0,
        256,
        1,
        w16, w16, 0,
        512, 256, 3, 3,
        2304, 9, 3, 1,
        b31, b31, 0,
        512,
        1,
        b32, b32, 0,
        512,
        1,
        w17, w17, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b33, b33, 0,
        512,
        1,
        b34, b34, 0,
        512,
        1,
        w18, w18, 0,
        512, 256, 1, 1,
        256, 1, 1, 1,
        b35, b35, 0,
        512,
        1,
        b36, b36, 0,
        512,
        1,
        w19, w19, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b37, b37, 0,
        512,
        1,
        b38, b38, 0,
        512,
        1,
        w20, w20, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b39, b39, 0,
        512,
        1,
        b40, b40, 0,
        512,
        1,
        w21, w21, 0,
        1000, 512,
        512, 1,
        b41, b41, 0,
        1000,
        1,
        b42, b42, 0,
        64,
        1,
        b43, b43, 0,
        64,
        1,
        b44, b44, 0,
        64,
        1,
        b45, b45, 0,
        64,
        1,
        b46, b46, 0,
        64,
        1,
        b47, b47, 0,
        64,
        1,
        b48, b48, 0,
        64,
        1,
        b49, b49, 0,
        64,
        1,
        b50, b50, 0,
        64,
        1,
        b51, b51, 0,
        64,
        1,
        b52, b52, 0,
        128,
        1,
        b53, b53, 0,
        128,
        1,
        b54, b54, 0,
        128,
        1,
        b55, b55, 0,
        128,
        1,
        b56, b56, 0,
        128,
        1,
        b57, b57, 0,
        128,
        1,
        b58, b58, 0,
        128,
        1,
        b59, b59, 0,
        128,
        1,
        b60, b60, 0,
        128,
        1,
        b61, b61, 0,
        128,
        1,
        b62, b62, 0,
        256,
        1,
        b63, b63, 0,
        256,
        1,
        b64, b64, 0,
        256,
        1,
        b65, b65, 0,
        256,
        1,
        b66, b66, 0,
        256,
        1,
        b67, b67, 0,
        256,
        1,
        b68, b68, 0,
        256,
        1,
        b69, b69, 0,
        256,
        1,
        b70, b70, 0,
        256,
        1,
        b71, b71, 0,
        256,
        1,
        b72, b72, 0,
        512,
        1,
        b73, b73, 0,
        512,
        1,
        b74, b74, 0,
        512,
        1,
        b75, b75, 0,
        512,
        1,
        b76, b76, 0,
        512,
        1,
        b77, b77, 0,
        512,
        1,
        b78, b78, 0,
        512,
        1,
        b79, b79, 0,
        512,
        1,
        b80, b80, 0,
        512,
        1,
        b81, b81, 0,
        512,
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
        memref2d cur = ResNet18(
            x, x, 0,
        2, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        b2, b2, 0,
        64,
        1,
        w2, w2, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        64,
        1,
        b4, b4, 0,
        64,
        1,
        w3, w3, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        w4, w4, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w5, w5, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        64,
        1,
        b10, b10, 0,
        64,
        1,
        w6, w6, 0,
        128, 64, 3, 3,
        576, 9, 3, 1,
        b11, b11, 0,
        128,
        1,
        b12, b12, 0,
        128,
        1,
        w7, w7, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        w8, w8, 0,
        128, 64, 1, 1,
        64, 1, 1, 1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w9, w9, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        128,
        1,
        b18, b18, 0,
        128,
        1,
        w10, w10, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b19, b19, 0,
        128,
        1,
        b20, b20, 0,
        128,
        1,
        w11, w11, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b21, b21, 0,
        256,
        1,
        b22, b22, 0,
        256,
        1,
        w12, w12, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b23, b23, 0,
        256,
        1,
        b24, b24, 0,
        256,
        1,
        w13, w13, 0,
        256, 128, 1, 1,
        128, 1, 1, 1,
        b25, b25, 0,
        256,
        1,
        b26, b26, 0,
        256,
        1,
        w14, w14, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b27, b27, 0,
        256,
        1,
        b28, b28, 0,
        256,
        1,
        w15, w15, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b29, b29, 0,
        256,
        1,
        b30, b30, 0,
        256,
        1,
        w16, w16, 0,
        512, 256, 3, 3,
        2304, 9, 3, 1,
        b31, b31, 0,
        512,
        1,
        b32, b32, 0,
        512,
        1,
        w17, w17, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b33, b33, 0,
        512,
        1,
        b34, b34, 0,
        512,
        1,
        w18, w18, 0,
        512, 256, 1, 1,
        256, 1, 1, 1,
        b35, b35, 0,
        512,
        1,
        b36, b36, 0,
        512,
        1,
        w19, w19, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b37, b37, 0,
        512,
        1,
        b38, b38, 0,
        512,
        1,
        w20, w20, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b39, b39, 0,
        512,
        1,
        b40, b40, 0,
        512,
        1,
        w21, w21, 0,
        1000, 512,
        512, 1,
        b41, b41, 0,
        1000,
        1,
        b42, b42, 0,
        64,
        1,
        b43, b43, 0,
        64,
        1,
        b44, b44, 0,
        64,
        1,
        b45, b45, 0,
        64,
        1,
        b46, b46, 0,
        64,
        1,
        b47, b47, 0,
        64,
        1,
        b48, b48, 0,
        64,
        1,
        b49, b49, 0,
        64,
        1,
        b50, b50, 0,
        64,
        1,
        b51, b51, 0,
        64,
        1,
        b52, b52, 0,
        128,
        1,
        b53, b53, 0,
        128,
        1,
        b54, b54, 0,
        128,
        1,
        b55, b55, 0,
        128,
        1,
        b56, b56, 0,
        128,
        1,
        b57, b57, 0,
        128,
        1,
        b58, b58, 0,
        128,
        1,
        b59, b59, 0,
        128,
        1,
        b60, b60, 0,
        128,
        1,
        b61, b61, 0,
        128,
        1,
        b62, b62, 0,
        256,
        1,
        b63, b63, 0,
        256,
        1,
        b64, b64, 0,
        256,
        1,
        b65, b65, 0,
        256,
        1,
        b66, b66, 0,
        256,
        1,
        b67, b67, 0,
        256,
        1,
        b68, b68, 0,
        256,
        1,
        b69, b69, 0,
        256,
        1,
        b70, b70, 0,
        256,
        1,
        b71, b71, 0,
        256,
        1,
        b72, b72, 0,
        512,
        1,
        b73, b73, 0,
        512,
        1,
        b74, b74, 0,
        512,
        1,
        b75, b75, 0,
        512,
        1,
        b76, b76, 0,
        512,
        1,
        b77, b77, 0,
        512,
        1,
        b78, b78, 0,
        512,
        1,
        b79, b79, 0,
        512,
        1,
        b80, b80, 0,
        512,
        1,
        b81, b81, 0,
        512,
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
      memref2d cur = ResNet18(
          x, x, 0,
        2, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        64, 3, 7, 7,
        147, 49, 7, 1,
        b1, b1, 0,
        64,
        1,
        b2, b2, 0,
        64,
        1,
        w2, w2, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b3, b3, 0,
        64,
        1,
        b4, b4, 0,
        64,
        1,
        w3, w3, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b5, b5, 0,
        64,
        1,
        b6, b6, 0,
        64,
        1,
        w4, w4, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b7, b7, 0,
        64,
        1,
        b8, b8, 0,
        64,
        1,
        w5, w5, 0,
        64, 64, 3, 3,
        576, 9, 3, 1,
        b9, b9, 0,
        64,
        1,
        b10, b10, 0,
        64,
        1,
        w6, w6, 0,
        128, 64, 3, 3,
        576, 9, 3, 1,
        b11, b11, 0,
        128,
        1,
        b12, b12, 0,
        128,
        1,
        w7, w7, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b13, b13, 0,
        128,
        1,
        b14, b14, 0,
        128,
        1,
        w8, w8, 0,
        128, 64, 1, 1,
        64, 1, 1, 1,
        b15, b15, 0,
        128,
        1,
        b16, b16, 0,
        128,
        1,
        w9, w9, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b17, b17, 0,
        128,
        1,
        b18, b18, 0,
        128,
        1,
        w10, w10, 0,
        128, 128, 3, 3,
        1152, 9, 3, 1,
        b19, b19, 0,
        128,
        1,
        b20, b20, 0,
        128,
        1,
        w11, w11, 0,
        256, 128, 3, 3,
        1152, 9, 3, 1,
        b21, b21, 0,
        256,
        1,
        b22, b22, 0,
        256,
        1,
        w12, w12, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b23, b23, 0,
        256,
        1,
        b24, b24, 0,
        256,
        1,
        w13, w13, 0,
        256, 128, 1, 1,
        128, 1, 1, 1,
        b25, b25, 0,
        256,
        1,
        b26, b26, 0,
        256,
        1,
        w14, w14, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b27, b27, 0,
        256,
        1,
        b28, b28, 0,
        256,
        1,
        w15, w15, 0,
        256, 256, 3, 3,
        2304, 9, 3, 1,
        b29, b29, 0,
        256,
        1,
        b30, b30, 0,
        256,
        1,
        w16, w16, 0,
        512, 256, 3, 3,
        2304, 9, 3, 1,
        b31, b31, 0,
        512,
        1,
        b32, b32, 0,
        512,
        1,
        w17, w17, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b33, b33, 0,
        512,
        1,
        b34, b34, 0,
        512,
        1,
        w18, w18, 0,
        512, 256, 1, 1,
        256, 1, 1, 1,
        b35, b35, 0,
        512,
        1,
        b36, b36, 0,
        512,
        1,
        w19, w19, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b37, b37, 0,
        512,
        1,
        b38, b38, 0,
        512,
        1,
        w20, w20, 0,
        512, 512, 3, 3,
        4608, 9, 3, 1,
        b39, b39, 0,
        512,
        1,
        b40, b40, 0,
        512,
        1,
        w21, w21, 0,
        1000, 512,
        512, 1,
        b41, b41, 0,
        1000,
        1,
        b42, b42, 0,
        64,
        1,
        b43, b43, 0,
        64,
        1,
        b44, b44, 0,
        64,
        1,
        b45, b45, 0,
        64,
        1,
        b46, b46, 0,
        64,
        1,
        b47, b47, 0,
        64,
        1,
        b48, b48, 0,
        64,
        1,
        b49, b49, 0,
        64,
        1,
        b50, b50, 0,
        64,
        1,
        b51, b51, 0,
        64,
        1,
        b52, b52, 0,
        128,
        1,
        b53, b53, 0,
        128,
        1,
        b54, b54, 0,
        128,
        1,
        b55, b55, 0,
        128,
        1,
        b56, b56, 0,
        128,
        1,
        b57, b57, 0,
        128,
        1,
        b58, b58, 0,
        128,
        1,
        b59, b59, 0,
        128,
        1,
        b60, b60, 0,
        128,
        1,
        b61, b61, 0,
        128,
        1,
        b62, b62, 0,
        256,
        1,
        b63, b63, 0,
        256,
        1,
        b64, b64, 0,
        256,
        1,
        b65, b65, 0,
        256,
        1,
        b66, b66, 0,
        256,
        1,
        b67, b67, 0,
        256,
        1,
        b68, b68, 0,
        256,
        1,
        b69, b69, 0,
        256,
        1,
        b70, b70, 0,
        256,
        1,
        b71, b71, 0,
        256,
        1,
        b72, b72, 0,
        512,
        1,
        b73, b73, 0,
        512,
        1,
        b74, b74, 0,
        512,
        1,
        b75, b75, 0,
        512,
        1,
        b76, b76, 0,
        512,
        1,
        b77, b77, 0,
        512,
        1,
        b78, b78, 0,
        512,
        1,
        b79, b79, 0,
        512,
        1,
        b80, b80, 0,
        512,
        1,
        b81, b81, 0,
        512,
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

  write_timing_report(json_report_path, "ResNet18", "mlir_llvm", run_id,
                       weights_path, input_path, output_path, reps,
                       times[reps / 2], sum / reps, times[0], times[reps - 1]);

  free(x);
  release_times(times, reps, use_fork);
  return 0;
}
