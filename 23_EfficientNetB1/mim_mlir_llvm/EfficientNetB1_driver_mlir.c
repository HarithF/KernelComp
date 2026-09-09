#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

/* Auto-generated driver for `EfficientNetB1` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from sibling .mlir (./23_EfficientNetB1/mim_mlir_llvm/EfficientNetB1_mim_mlir.mlir)
 * -- which is a file for THIS pipeline, so its argument order matches
 * one-for-one what convert-func-to-llvm scalarized. Each weight's location
 * in weights.bin is its byte offset from EfficientNetB1_params.json,
 * looked up by canonical torch parameter name:
 * w1: shape [32, 3, 3, 3] (weight) <- conv1.weight @ byte 0
 * x: shape [10, 3, 240, 240] (input)
 * b1: shape [32] (bias) <- bn1.running_mean @ byte 3456
 * b2: shape [32] (bias) <- bn1.running_var @ byte 3584
 * b3: shape [32] (bias) <- bn1.weight @ byte 3712
 * b4: shape [32] (bias) <- bn1.bias @ byte 3840
 * w2: shape [32, 32] (weight) <- mbconv1.0.weight @ byte 3968
 * b5: shape [32] (bias) <- mbconv1.1.running_mean @ byte 8064
 * b6: shape [32] (bias) <- mbconv1.1.running_var @ byte 8192
 * b7: shape [32] (bias) <- mbconv1.1.weight @ byte 8320
 * b8: shape [32] (bias) <- mbconv1.1.bias @ byte 8448
 * w3: shape [32, 3, 3] (weight) <- mbconv1.3.weight @ byte 8576
 * b9: shape [32] (bias) <- mbconv1.4.running_mean @ byte 9728
 * b10: shape [32] (bias) <- mbconv1.4.running_var @ byte 9856
 * b11: shape [32] (bias) <- mbconv1.4.weight @ byte 9984
 * b12: shape [32] (bias) <- mbconv1.4.bias @ byte 10112
 * w4: shape [16, 32] (weight) <- mbconv1.6.weight @ byte 10240
 * b13: shape [16] (bias) <- mbconv1.7.running_mean @ byte 12288
 * b14: shape [16] (bias) <- mbconv1.7.running_var @ byte 12352
 * b15: shape [16] (bias) <- mbconv1.7.weight @ byte 12416
 * b16: shape [16] (bias) <- mbconv1.7.bias @ byte 12480
 * w5: shape [96, 16] (weight) <- mbconv2.0.weight @ byte 12544
 * b17: shape [96] (bias) <- mbconv2.1.running_mean @ byte 18688
 * b18: shape [96] (bias) <- mbconv2.1.running_var @ byte 19072
 * b19: shape [96] (bias) <- mbconv2.1.weight @ byte 19456
 * b20: shape [96] (bias) <- mbconv2.1.bias @ byte 19840
 * w6: shape [96, 3, 3] (weight) <- mbconv2.3.weight @ byte 20224
 * b21: shape [96] (bias) <- mbconv2.4.running_mean @ byte 23680
 * b22: shape [96] (bias) <- mbconv2.4.running_var @ byte 24064
 * b23: shape [96] (bias) <- mbconv2.4.weight @ byte 24448
 * b24: shape [96] (bias) <- mbconv2.4.bias @ byte 24832
 * w7: shape [24, 96] (weight) <- mbconv2.6.weight @ byte 25216
 * b25: shape [24] (bias) <- mbconv2.7.running_mean @ byte 34432
 * b26: shape [24] (bias) <- mbconv2.7.running_var @ byte 34528
 * b27: shape [24] (bias) <- mbconv2.7.weight @ byte 34624
 * b28: shape [24] (bias) <- mbconv2.7.bias @ byte 34720
 * w8: shape [144, 24] (weight) <- mbconv3.0.weight @ byte 34816
 * b29: shape [144] (bias) <- mbconv3.1.running_mean @ byte 48640
 * b30: shape [144] (bias) <- mbconv3.1.running_var @ byte 49216
 * b31: shape [144] (bias) <- mbconv3.1.weight @ byte 49792
 * b32: shape [144] (bias) <- mbconv3.1.bias @ byte 50368
 * w9: shape [144, 3, 3] (weight) <- mbconv3.3.weight @ byte 50944
 * b33: shape [144] (bias) <- mbconv3.4.running_mean @ byte 56128
 * b34: shape [144] (bias) <- mbconv3.4.running_var @ byte 56704
 * b35: shape [144] (bias) <- mbconv3.4.weight @ byte 57280
 * b36: shape [144] (bias) <- mbconv3.4.bias @ byte 57856
 * w10: shape [40, 144] (weight) <- mbconv3.6.weight @ byte 58432
 * b37: shape [40] (bias) <- mbconv3.7.running_mean @ byte 81472
 * b38: shape [40] (bias) <- mbconv3.7.running_var @ byte 81632
 * b39: shape [40] (bias) <- mbconv3.7.weight @ byte 81792
 * b40: shape [40] (bias) <- mbconv3.7.bias @ byte 81952
 * w11: shape [240, 40] (weight) <- mbconv4.0.weight @ byte 82112
 * b41: shape [240] (bias) <- mbconv4.1.running_mean @ byte 120512
 * b42: shape [240] (bias) <- mbconv4.1.running_var @ byte 121472
 * b43: shape [240] (bias) <- mbconv4.1.weight @ byte 122432
 * b44: shape [240] (bias) <- mbconv4.1.bias @ byte 123392
 * w12: shape [240, 3, 3] (weight) <- mbconv4.3.weight @ byte 124352
 * b45: shape [240] (bias) <- mbconv4.4.running_mean @ byte 132992
 * b46: shape [240] (bias) <- mbconv4.4.running_var @ byte 133952
 * b47: shape [240] (bias) <- mbconv4.4.weight @ byte 134912
 * b48: shape [240] (bias) <- mbconv4.4.bias @ byte 135872
 * w13: shape [80, 240] (weight) <- mbconv4.6.weight @ byte 136832
 * b49: shape [80] (bias) <- mbconv4.7.running_mean @ byte 213632
 * b50: shape [80] (bias) <- mbconv4.7.running_var @ byte 213952
 * b51: shape [80] (bias) <- mbconv4.7.weight @ byte 214272
 * b52: shape [80] (bias) <- mbconv4.7.bias @ byte 214592
 * w14: shape [480, 80] (weight) <- mbconv5.0.weight @ byte 214912
 * b53: shape [480] (bias) <- mbconv5.1.running_mean @ byte 368512
 * b54: shape [480] (bias) <- mbconv5.1.running_var @ byte 370432
 * b55: shape [480] (bias) <- mbconv5.1.weight @ byte 372352
 * b56: shape [480] (bias) <- mbconv5.1.bias @ byte 374272
 * w15: shape [480, 3, 3] (weight) <- mbconv5.3.weight @ byte 376192
 * b57: shape [480] (bias) <- mbconv5.4.running_mean @ byte 393472
 * b58: shape [480] (bias) <- mbconv5.4.running_var @ byte 395392
 * b59: shape [480] (bias) <- mbconv5.4.weight @ byte 397312
 * b60: shape [480] (bias) <- mbconv5.4.bias @ byte 399232
 * w16: shape [112, 480] (weight) <- mbconv5.6.weight @ byte 401152
 * b61: shape [112] (bias) <- mbconv5.7.running_mean @ byte 616192
 * b62: shape [112] (bias) <- mbconv5.7.running_var @ byte 616640
 * b63: shape [112] (bias) <- mbconv5.7.weight @ byte 617088
 * b64: shape [112] (bias) <- mbconv5.7.bias @ byte 617536
 * w17: shape [672, 112] (weight) <- mbconv6.0.weight @ byte 617984
 * b65: shape [672] (bias) <- mbconv6.1.running_mean @ byte 919040
 * b66: shape [672] (bias) <- mbconv6.1.running_var @ byte 921728
 * b67: shape [672] (bias) <- mbconv6.1.weight @ byte 924416
 * b68: shape [672] (bias) <- mbconv6.1.bias @ byte 927104
 * w18: shape [672, 3, 3] (weight) <- mbconv6.3.weight @ byte 929792
 * b69: shape [672] (bias) <- mbconv6.4.running_mean @ byte 953984
 * b70: shape [672] (bias) <- mbconv6.4.running_var @ byte 956672
 * b71: shape [672] (bias) <- mbconv6.4.weight @ byte 959360
 * b72: shape [672] (bias) <- mbconv6.4.bias @ byte 962048
 * w19: shape [192, 672] (weight) <- mbconv6.6.weight @ byte 964736
 * b73: shape [192] (bias) <- mbconv6.7.running_mean @ byte 1480832
 * b74: shape [192] (bias) <- mbconv6.7.running_var @ byte 1481600
 * b75: shape [192] (bias) <- mbconv6.7.weight @ byte 1482368
 * b76: shape [192] (bias) <- mbconv6.7.bias @ byte 1483136
 * w20: shape [1152, 192] (weight) <- mbconv7.0.weight @ byte 1483904
 * b77: shape [1152] (bias) <- mbconv7.1.running_mean @ byte 2368640
 * b78: shape [1152] (bias) <- mbconv7.1.running_var @ byte 2373248
 * b79: shape [1152] (bias) <- mbconv7.1.weight @ byte 2377856
 * b80: shape [1152] (bias) <- mbconv7.1.bias @ byte 2382464
 * w21: shape [1152, 3, 3] (weight) <- mbconv7.3.weight @ byte 2387072
 * b81: shape [1152] (bias) <- mbconv7.4.running_mean @ byte 2428544
 * b82: shape [1152] (bias) <- mbconv7.4.running_var @ byte 2433152
 * b83: shape [1152] (bias) <- mbconv7.4.weight @ byte 2437760
 * b84: shape [1152] (bias) <- mbconv7.4.bias @ byte 2442368
 * w22: shape [320, 1152] (weight) <- mbconv7.6.weight @ byte 2446976
 * b85: shape [320] (bias) <- mbconv7.7.running_mean @ byte 3921536
 * b86: shape [320] (bias) <- mbconv7.7.running_var @ byte 3922816
 * b87: shape [320] (bias) <- mbconv7.7.weight @ byte 3924096
 * b88: shape [320] (bias) <- mbconv7.7.bias @ byte 3925376
 * w23: shape [1280, 320] (weight) <- conv2.weight @ byte 3926656
 * b89: shape [1280] (bias) <- bn2.running_mean @ byte 5565056
 * b90: shape [1280] (bias) <- bn2.running_var @ byte 5570176
 * b91: shape [1280] (bias) <- bn2.weight @ byte 5575296
 * b92: shape [1280] (bias) <- bn2.bias @ byte 5580416
 * w24: shape [1000, 1280] (weight) <- fc.weight @ byte 5585536
 * b93: shape [1000] (bias) <- fc.bias @ byte 10705536
 * output: shape [10, 1000]
 *
 * Usage: EfficientNetB1_driver_mlir <weights> <input> <reps> <output> [run_id] [json_report]
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
  int64_t sizes[3];
  int64_t strides[3];
} memref3d;
typedef struct {
  float *alloc, *aligned;
  int64_t offset;
  int64_t sizes[4];
  int64_t strides[4];
} memref4d;

extern memref2d EfficientNetB1(
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
    float *w2_a,
    float *w2_al,
    int64_t w2_off,
    int64_t w2_s0,
    int64_t w2_s1,
    int64_t w2_st0,
    int64_t w2_st1,
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
    float *w3_a,
    float *w3_al,
    int64_t w3_off,
    int64_t w3_s0,
    int64_t w3_s1,
    int64_t w3_s2,
    int64_t w3_st0,
    int64_t w3_st1,
    int64_t w3_st2,
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
    float *w4_a,
    float *w4_al,
    int64_t w4_off,
    int64_t w4_s0,
    int64_t w4_s1,
    int64_t w4_st0,
    int64_t w4_st1,
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
    float *w5_a,
    float *w5_al,
    int64_t w5_off,
    int64_t w5_s0,
    int64_t w5_s1,
    int64_t w5_st0,
    int64_t w5_st1,
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
    float *w6_a,
    float *w6_al,
    int64_t w6_off,
    int64_t w6_s0,
    int64_t w6_s1,
    int64_t w6_s2,
    int64_t w6_st0,
    int64_t w6_st1,
    int64_t w6_st2,
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
    float *w7_a,
    float *w7_al,
    int64_t w7_off,
    int64_t w7_s0,
    int64_t w7_s1,
    int64_t w7_st0,
    int64_t w7_st1,
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
    float *w8_a,
    float *w8_al,
    int64_t w8_off,
    int64_t w8_s0,
    int64_t w8_s1,
    int64_t w8_st0,
    int64_t w8_st1,
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
    float *w9_a,
    float *w9_al,
    int64_t w9_off,
    int64_t w9_s0,
    int64_t w9_s1,
    int64_t w9_s2,
    int64_t w9_st0,
    int64_t w9_st1,
    int64_t w9_st2,
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
    float *w10_a,
    float *w10_al,
    int64_t w10_off,
    int64_t w10_s0,
    int64_t w10_s1,
    int64_t w10_st0,
    int64_t w10_st1,
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
    float *w11_a,
    float *w11_al,
    int64_t w11_off,
    int64_t w11_s0,
    int64_t w11_s1,
    int64_t w11_st0,
    int64_t w11_st1,
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
    float *w12_a,
    float *w12_al,
    int64_t w12_off,
    int64_t w12_s0,
    int64_t w12_s1,
    int64_t w12_s2,
    int64_t w12_st0,
    int64_t w12_st1,
    int64_t w12_st2,
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
    float *w13_a,
    float *w13_al,
    int64_t w13_off,
    int64_t w13_s0,
    int64_t w13_s1,
    int64_t w13_st0,
    int64_t w13_st1,
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
    float *w14_a,
    float *w14_al,
    int64_t w14_off,
    int64_t w14_s0,
    int64_t w14_s1,
    int64_t w14_st0,
    int64_t w14_st1,
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
    float *w15_a,
    float *w15_al,
    int64_t w15_off,
    int64_t w15_s0,
    int64_t w15_s1,
    int64_t w15_s2,
    int64_t w15_st0,
    int64_t w15_st1,
    int64_t w15_st2,
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
    float *w16_a,
    float *w16_al,
    int64_t w16_off,
    int64_t w16_s0,
    int64_t w16_s1,
    int64_t w16_st0,
    int64_t w16_st1,
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
    float *w17_a,
    float *w17_al,
    int64_t w17_off,
    int64_t w17_s0,
    int64_t w17_s1,
    int64_t w17_st0,
    int64_t w17_st1,
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
    float *w18_a,
    float *w18_al,
    int64_t w18_off,
    int64_t w18_s0,
    int64_t w18_s1,
    int64_t w18_s2,
    int64_t w18_st0,
    int64_t w18_st1,
    int64_t w18_st2,
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
    float *w19_a,
    float *w19_al,
    int64_t w19_off,
    int64_t w19_s0,
    int64_t w19_s1,
    int64_t w19_st0,
    int64_t w19_st1,
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
    float *w20_a,
    float *w20_al,
    int64_t w20_off,
    int64_t w20_s0,
    int64_t w20_s1,
    int64_t w20_st0,
    int64_t w20_st1,
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
    float *w21_a,
    float *w21_al,
    int64_t w21_off,
    int64_t w21_s0,
    int64_t w21_s1,
    int64_t w21_s2,
    int64_t w21_st0,
    int64_t w21_st1,
    int64_t w21_st2,
    float *b81_a,
    float *b81_al,
    int64_t b81_off,
    int64_t b81_s0,
    int64_t b81_st0,
    float *b82_a,
    float *b82_al,
    int64_t b82_off,
    int64_t b82_s0,
    int64_t b82_st0,
    float *b83_a,
    float *b83_al,
    int64_t b83_off,
    int64_t b83_s0,
    int64_t b83_st0,
    float *b84_a,
    float *b84_al,
    int64_t b84_off,
    int64_t b84_s0,
    int64_t b84_st0,
    float *w22_a,
    float *w22_al,
    int64_t w22_off,
    int64_t w22_s0,
    int64_t w22_s1,
    int64_t w22_st0,
    int64_t w22_st1,
    float *b85_a,
    float *b85_al,
    int64_t b85_off,
    int64_t b85_s0,
    int64_t b85_st0,
    float *b86_a,
    float *b86_al,
    int64_t b86_off,
    int64_t b86_s0,
    int64_t b86_st0,
    float *b87_a,
    float *b87_al,
    int64_t b87_off,
    int64_t b87_s0,
    int64_t b87_st0,
    float *b88_a,
    float *b88_al,
    int64_t b88_off,
    int64_t b88_s0,
    int64_t b88_st0,
    float *w23_a,
    float *w23_al,
    int64_t w23_off,
    int64_t w23_s0,
    int64_t w23_s1,
    int64_t w23_st0,
    int64_t w23_st1,
    float *b89_a,
    float *b89_al,
    int64_t b89_off,
    int64_t b89_s0,
    int64_t b89_st0,
    float *b90_a,
    float *b90_al,
    int64_t b90_off,
    int64_t b90_s0,
    int64_t b90_st0,
    float *b91_a,
    float *b91_al,
    int64_t b91_off,
    int64_t b91_s0,
    int64_t b91_st0,
    float *b92_a,
    float *b92_al,
    int64_t b92_off,
    int64_t b92_s0,
    int64_t b92_st0,
    float *w24_a,
    float *w24_al,
    int64_t w24_off,
    int64_t w24_s0,
    int64_t w24_s1,
    int64_t w24_st0,
    int64_t w24_st1,
    float *b93_a,
    float *b93_al,
    int64_t b93_off,
    int64_t b93_s0,
    int64_t b93_st0);

static const size_t w1_count = 864;
static const size_t x_count = 1728000;
static const size_t b1_count = 32;
static const size_t b2_count = 32;
static const size_t b3_count = 32;
static const size_t b4_count = 32;
static const size_t w2_count = 1024;
static const size_t b5_count = 32;
static const size_t b6_count = 32;
static const size_t b7_count = 32;
static const size_t b8_count = 32;
static const size_t w3_count = 288;
static const size_t b9_count = 32;
static const size_t b10_count = 32;
static const size_t b11_count = 32;
static const size_t b12_count = 32;
static const size_t w4_count = 512;
static const size_t b13_count = 16;
static const size_t b14_count = 16;
static const size_t b15_count = 16;
static const size_t b16_count = 16;
static const size_t w5_count = 1536;
static const size_t b17_count = 96;
static const size_t b18_count = 96;
static const size_t b19_count = 96;
static const size_t b20_count = 96;
static const size_t w6_count = 864;
static const size_t b21_count = 96;
static const size_t b22_count = 96;
static const size_t b23_count = 96;
static const size_t b24_count = 96;
static const size_t w7_count = 2304;
static const size_t b25_count = 24;
static const size_t b26_count = 24;
static const size_t b27_count = 24;
static const size_t b28_count = 24;
static const size_t w8_count = 3456;
static const size_t b29_count = 144;
static const size_t b30_count = 144;
static const size_t b31_count = 144;
static const size_t b32_count = 144;
static const size_t w9_count = 1296;
static const size_t b33_count = 144;
static const size_t b34_count = 144;
static const size_t b35_count = 144;
static const size_t b36_count = 144;
static const size_t w10_count = 5760;
static const size_t b37_count = 40;
static const size_t b38_count = 40;
static const size_t b39_count = 40;
static const size_t b40_count = 40;
static const size_t w11_count = 9600;
static const size_t b41_count = 240;
static const size_t b42_count = 240;
static const size_t b43_count = 240;
static const size_t b44_count = 240;
static const size_t w12_count = 2160;
static const size_t b45_count = 240;
static const size_t b46_count = 240;
static const size_t b47_count = 240;
static const size_t b48_count = 240;
static const size_t w13_count = 19200;
static const size_t b49_count = 80;
static const size_t b50_count = 80;
static const size_t b51_count = 80;
static const size_t b52_count = 80;
static const size_t w14_count = 38400;
static const size_t b53_count = 480;
static const size_t b54_count = 480;
static const size_t b55_count = 480;
static const size_t b56_count = 480;
static const size_t w15_count = 4320;
static const size_t b57_count = 480;
static const size_t b58_count = 480;
static const size_t b59_count = 480;
static const size_t b60_count = 480;
static const size_t w16_count = 53760;
static const size_t b61_count = 112;
static const size_t b62_count = 112;
static const size_t b63_count = 112;
static const size_t b64_count = 112;
static const size_t w17_count = 75264;
static const size_t b65_count = 672;
static const size_t b66_count = 672;
static const size_t b67_count = 672;
static const size_t b68_count = 672;
static const size_t w18_count = 6048;
static const size_t b69_count = 672;
static const size_t b70_count = 672;
static const size_t b71_count = 672;
static const size_t b72_count = 672;
static const size_t w19_count = 129024;
static const size_t b73_count = 192;
static const size_t b74_count = 192;
static const size_t b75_count = 192;
static const size_t b76_count = 192;
static const size_t w20_count = 221184;
static const size_t b77_count = 1152;
static const size_t b78_count = 1152;
static const size_t b79_count = 1152;
static const size_t b80_count = 1152;
static const size_t w21_count = 10368;
static const size_t b81_count = 1152;
static const size_t b82_count = 1152;
static const size_t b83_count = 1152;
static const size_t b84_count = 1152;
static const size_t w22_count = 368640;
static const size_t b85_count = 320;
static const size_t b86_count = 320;
static const size_t b87_count = 320;
static const size_t b88_count = 320;
static const size_t w23_count = 409600;
static const size_t b89_count = 1280;
static const size_t b90_count = 1280;
static const size_t b91_count = 1280;
static const size_t b92_count = 1280;
static const size_t w24_count = 1280000;
static const size_t b93_count = 1000;

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
    snprintf(json_path_buf, sizeof(json_path_buf), "EfficientNetB1_mim_mlir_llvm_%s_timing.json", run_id);
    json_report_path = json_path_buf;
  }

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }

  float *w1 = read_floats_at(wf, 0, w1_count, "w1");
  float *b1 = read_floats_at(wf, 3456, b1_count, "b1");
  float *b2 = read_floats_at(wf, 3584, b2_count, "b2");
  float *b3 = read_floats_at(wf, 3712, b3_count, "b3");
  float *b4 = read_floats_at(wf, 3840, b4_count, "b4");
  float *w2 = read_floats_at(wf, 3968, w2_count, "w2");
  float *b5 = read_floats_at(wf, 8064, b5_count, "b5");
  float *b6 = read_floats_at(wf, 8192, b6_count, "b6");
  float *b7 = read_floats_at(wf, 8320, b7_count, "b7");
  float *b8 = read_floats_at(wf, 8448, b8_count, "b8");
  float *w3 = read_floats_at(wf, 8576, w3_count, "w3");
  float *b9 = read_floats_at(wf, 9728, b9_count, "b9");
  float *b10 = read_floats_at(wf, 9856, b10_count, "b10");
  float *b11 = read_floats_at(wf, 9984, b11_count, "b11");
  float *b12 = read_floats_at(wf, 10112, b12_count, "b12");
  float *w4 = read_floats_at(wf, 10240, w4_count, "w4");
  float *b13 = read_floats_at(wf, 12288, b13_count, "b13");
  float *b14 = read_floats_at(wf, 12352, b14_count, "b14");
  float *b15 = read_floats_at(wf, 12416, b15_count, "b15");
  float *b16 = read_floats_at(wf, 12480, b16_count, "b16");
  float *w5 = read_floats_at(wf, 12544, w5_count, "w5");
  float *b17 = read_floats_at(wf, 18688, b17_count, "b17");
  float *b18 = read_floats_at(wf, 19072, b18_count, "b18");
  float *b19 = read_floats_at(wf, 19456, b19_count, "b19");
  float *b20 = read_floats_at(wf, 19840, b20_count, "b20");
  float *w6 = read_floats_at(wf, 20224, w6_count, "w6");
  float *b21 = read_floats_at(wf, 23680, b21_count, "b21");
  float *b22 = read_floats_at(wf, 24064, b22_count, "b22");
  float *b23 = read_floats_at(wf, 24448, b23_count, "b23");
  float *b24 = read_floats_at(wf, 24832, b24_count, "b24");
  float *w7 = read_floats_at(wf, 25216, w7_count, "w7");
  float *b25 = read_floats_at(wf, 34432, b25_count, "b25");
  float *b26 = read_floats_at(wf, 34528, b26_count, "b26");
  float *b27 = read_floats_at(wf, 34624, b27_count, "b27");
  float *b28 = read_floats_at(wf, 34720, b28_count, "b28");
  float *w8 = read_floats_at(wf, 34816, w8_count, "w8");
  float *b29 = read_floats_at(wf, 48640, b29_count, "b29");
  float *b30 = read_floats_at(wf, 49216, b30_count, "b30");
  float *b31 = read_floats_at(wf, 49792, b31_count, "b31");
  float *b32 = read_floats_at(wf, 50368, b32_count, "b32");
  float *w9 = read_floats_at(wf, 50944, w9_count, "w9");
  float *b33 = read_floats_at(wf, 56128, b33_count, "b33");
  float *b34 = read_floats_at(wf, 56704, b34_count, "b34");
  float *b35 = read_floats_at(wf, 57280, b35_count, "b35");
  float *b36 = read_floats_at(wf, 57856, b36_count, "b36");
  float *w10 = read_floats_at(wf, 58432, w10_count, "w10");
  float *b37 = read_floats_at(wf, 81472, b37_count, "b37");
  float *b38 = read_floats_at(wf, 81632, b38_count, "b38");
  float *b39 = read_floats_at(wf, 81792, b39_count, "b39");
  float *b40 = read_floats_at(wf, 81952, b40_count, "b40");
  float *w11 = read_floats_at(wf, 82112, w11_count, "w11");
  float *b41 = read_floats_at(wf, 120512, b41_count, "b41");
  float *b42 = read_floats_at(wf, 121472, b42_count, "b42");
  float *b43 = read_floats_at(wf, 122432, b43_count, "b43");
  float *b44 = read_floats_at(wf, 123392, b44_count, "b44");
  float *w12 = read_floats_at(wf, 124352, w12_count, "w12");
  float *b45 = read_floats_at(wf, 132992, b45_count, "b45");
  float *b46 = read_floats_at(wf, 133952, b46_count, "b46");
  float *b47 = read_floats_at(wf, 134912, b47_count, "b47");
  float *b48 = read_floats_at(wf, 135872, b48_count, "b48");
  float *w13 = read_floats_at(wf, 136832, w13_count, "w13");
  float *b49 = read_floats_at(wf, 213632, b49_count, "b49");
  float *b50 = read_floats_at(wf, 213952, b50_count, "b50");
  float *b51 = read_floats_at(wf, 214272, b51_count, "b51");
  float *b52 = read_floats_at(wf, 214592, b52_count, "b52");
  float *w14 = read_floats_at(wf, 214912, w14_count, "w14");
  float *b53 = read_floats_at(wf, 368512, b53_count, "b53");
  float *b54 = read_floats_at(wf, 370432, b54_count, "b54");
  float *b55 = read_floats_at(wf, 372352, b55_count, "b55");
  float *b56 = read_floats_at(wf, 374272, b56_count, "b56");
  float *w15 = read_floats_at(wf, 376192, w15_count, "w15");
  float *b57 = read_floats_at(wf, 393472, b57_count, "b57");
  float *b58 = read_floats_at(wf, 395392, b58_count, "b58");
  float *b59 = read_floats_at(wf, 397312, b59_count, "b59");
  float *b60 = read_floats_at(wf, 399232, b60_count, "b60");
  float *w16 = read_floats_at(wf, 401152, w16_count, "w16");
  float *b61 = read_floats_at(wf, 616192, b61_count, "b61");
  float *b62 = read_floats_at(wf, 616640, b62_count, "b62");
  float *b63 = read_floats_at(wf, 617088, b63_count, "b63");
  float *b64 = read_floats_at(wf, 617536, b64_count, "b64");
  float *w17 = read_floats_at(wf, 617984, w17_count, "w17");
  float *b65 = read_floats_at(wf, 919040, b65_count, "b65");
  float *b66 = read_floats_at(wf, 921728, b66_count, "b66");
  float *b67 = read_floats_at(wf, 924416, b67_count, "b67");
  float *b68 = read_floats_at(wf, 927104, b68_count, "b68");
  float *w18 = read_floats_at(wf, 929792, w18_count, "w18");
  float *b69 = read_floats_at(wf, 953984, b69_count, "b69");
  float *b70 = read_floats_at(wf, 956672, b70_count, "b70");
  float *b71 = read_floats_at(wf, 959360, b71_count, "b71");
  float *b72 = read_floats_at(wf, 962048, b72_count, "b72");
  float *w19 = read_floats_at(wf, 964736, w19_count, "w19");
  float *b73 = read_floats_at(wf, 1480832, b73_count, "b73");
  float *b74 = read_floats_at(wf, 1481600, b74_count, "b74");
  float *b75 = read_floats_at(wf, 1482368, b75_count, "b75");
  float *b76 = read_floats_at(wf, 1483136, b76_count, "b76");
  float *w20 = read_floats_at(wf, 1483904, w20_count, "w20");
  float *b77 = read_floats_at(wf, 2368640, b77_count, "b77");
  float *b78 = read_floats_at(wf, 2373248, b78_count, "b78");
  float *b79 = read_floats_at(wf, 2377856, b79_count, "b79");
  float *b80 = read_floats_at(wf, 2382464, b80_count, "b80");
  float *w21 = read_floats_at(wf, 2387072, w21_count, "w21");
  float *b81 = read_floats_at(wf, 2428544, b81_count, "b81");
  float *b82 = read_floats_at(wf, 2433152, b82_count, "b82");
  float *b83 = read_floats_at(wf, 2437760, b83_count, "b83");
  float *b84 = read_floats_at(wf, 2442368, b84_count, "b84");
  float *w22 = read_floats_at(wf, 2446976, w22_count, "w22");
  float *b85 = read_floats_at(wf, 3921536, b85_count, "b85");
  float *b86 = read_floats_at(wf, 3922816, b86_count, "b86");
  float *b87 = read_floats_at(wf, 3924096, b87_count, "b87");
  float *b88 = read_floats_at(wf, 3925376, b88_count, "b88");
  float *w23 = read_floats_at(wf, 3926656, w23_count, "w23");
  float *b89 = read_floats_at(wf, 5565056, b89_count, "b89");
  float *b90 = read_floats_at(wf, 5570176, b90_count, "b90");
  float *b91 = read_floats_at(wf, 5575296, b91_count, "b91");
  float *b92 = read_floats_at(wf, 5580416, b92_count, "b92");
  float *w24 = read_floats_at(wf, 5585536, w24_count, "w24");
  float *b93 = read_floats_at(wf, 10705536, b93_count, "b93");
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
      memref2d out = EfficientNetB1(
          w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        x, x, 0,
        10, 3, 240, 240,
        172800, 57600, 240, 1,
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
        w2, w2, 0,
        32, 32,
        32, 1,
        b5, b5, 0,
        32,
        1,
        b6, b6, 0,
        32,
        1,
        b7, b7, 0,
        32,
        1,
        b8, b8, 0,
        32,
        1,
        w3, w3, 0,
        32, 3, 3,
        9, 3, 1,
        b9, b9, 0,
        32,
        1,
        b10, b10, 0,
        32,
        1,
        b11, b11, 0,
        32,
        1,
        b12, b12, 0,
        32,
        1,
        w4, w4, 0,
        16, 32,
        32, 1,
        b13, b13, 0,
        16,
        1,
        b14, b14, 0,
        16,
        1,
        b15, b15, 0,
        16,
        1,
        b16, b16, 0,
        16,
        1,
        w5, w5, 0,
        96, 16,
        16, 1,
        b17, b17, 0,
        96,
        1,
        b18, b18, 0,
        96,
        1,
        b19, b19, 0,
        96,
        1,
        b20, b20, 0,
        96,
        1,
        w6, w6, 0,
        96, 3, 3,
        9, 3, 1,
        b21, b21, 0,
        96,
        1,
        b22, b22, 0,
        96,
        1,
        b23, b23, 0,
        96,
        1,
        b24, b24, 0,
        96,
        1,
        w7, w7, 0,
        24, 96,
        96, 1,
        b25, b25, 0,
        24,
        1,
        b26, b26, 0,
        24,
        1,
        b27, b27, 0,
        24,
        1,
        b28, b28, 0,
        24,
        1,
        w8, w8, 0,
        144, 24,
        24, 1,
        b29, b29, 0,
        144,
        1,
        b30, b30, 0,
        144,
        1,
        b31, b31, 0,
        144,
        1,
        b32, b32, 0,
        144,
        1,
        w9, w9, 0,
        144, 3, 3,
        9, 3, 1,
        b33, b33, 0,
        144,
        1,
        b34, b34, 0,
        144,
        1,
        b35, b35, 0,
        144,
        1,
        b36, b36, 0,
        144,
        1,
        w10, w10, 0,
        40, 144,
        144, 1,
        b37, b37, 0,
        40,
        1,
        b38, b38, 0,
        40,
        1,
        b39, b39, 0,
        40,
        1,
        b40, b40, 0,
        40,
        1,
        w11, w11, 0,
        240, 40,
        40, 1,
        b41, b41, 0,
        240,
        1,
        b42, b42, 0,
        240,
        1,
        b43, b43, 0,
        240,
        1,
        b44, b44, 0,
        240,
        1,
        w12, w12, 0,
        240, 3, 3,
        9, 3, 1,
        b45, b45, 0,
        240,
        1,
        b46, b46, 0,
        240,
        1,
        b47, b47, 0,
        240,
        1,
        b48, b48, 0,
        240,
        1,
        w13, w13, 0,
        80, 240,
        240, 1,
        b49, b49, 0,
        80,
        1,
        b50, b50, 0,
        80,
        1,
        b51, b51, 0,
        80,
        1,
        b52, b52, 0,
        80,
        1,
        w14, w14, 0,
        480, 80,
        80, 1,
        b53, b53, 0,
        480,
        1,
        b54, b54, 0,
        480,
        1,
        b55, b55, 0,
        480,
        1,
        b56, b56, 0,
        480,
        1,
        w15, w15, 0,
        480, 3, 3,
        9, 3, 1,
        b57, b57, 0,
        480,
        1,
        b58, b58, 0,
        480,
        1,
        b59, b59, 0,
        480,
        1,
        b60, b60, 0,
        480,
        1,
        w16, w16, 0,
        112, 480,
        480, 1,
        b61, b61, 0,
        112,
        1,
        b62, b62, 0,
        112,
        1,
        b63, b63, 0,
        112,
        1,
        b64, b64, 0,
        112,
        1,
        w17, w17, 0,
        672, 112,
        112, 1,
        b65, b65, 0,
        672,
        1,
        b66, b66, 0,
        672,
        1,
        b67, b67, 0,
        672,
        1,
        b68, b68, 0,
        672,
        1,
        w18, w18, 0,
        672, 3, 3,
        9, 3, 1,
        b69, b69, 0,
        672,
        1,
        b70, b70, 0,
        672,
        1,
        b71, b71, 0,
        672,
        1,
        b72, b72, 0,
        672,
        1,
        w19, w19, 0,
        192, 672,
        672, 1,
        b73, b73, 0,
        192,
        1,
        b74, b74, 0,
        192,
        1,
        b75, b75, 0,
        192,
        1,
        b76, b76, 0,
        192,
        1,
        w20, w20, 0,
        1152, 192,
        192, 1,
        b77, b77, 0,
        1152,
        1,
        b78, b78, 0,
        1152,
        1,
        b79, b79, 0,
        1152,
        1,
        b80, b80, 0,
        1152,
        1,
        w21, w21, 0,
        1152, 3, 3,
        9, 3, 1,
        b81, b81, 0,
        1152,
        1,
        b82, b82, 0,
        1152,
        1,
        b83, b83, 0,
        1152,
        1,
        b84, b84, 0,
        1152,
        1,
        w22, w22, 0,
        320, 1152,
        1152, 1,
        b85, b85, 0,
        320,
        1,
        b86, b86, 0,
        320,
        1,
        b87, b87, 0,
        320,
        1,
        b88, b88, 0,
        320,
        1,
        w23, w23, 0,
        1280, 320,
        320, 1,
        b89, b89, 0,
        1280,
        1,
        b90, b90, 0,
        1280,
        1,
        b91, b91, 0,
        1280,
        1,
        b92, b92, 0,
        1280,
        1,
        w24, w24, 0,
        1000, 1280,
        1280, 1,
        b93, b93, 0,
        1000,
        1);
      free(out.alloc);
      _exit(0);
    }
    await_child(p, "warm-up");
  } else {
    memref2d out = EfficientNetB1(
        w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        x, x, 0,
        10, 3, 240, 240,
        172800, 57600, 240, 1,
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
        w2, w2, 0,
        32, 32,
        32, 1,
        b5, b5, 0,
        32,
        1,
        b6, b6, 0,
        32,
        1,
        b7, b7, 0,
        32,
        1,
        b8, b8, 0,
        32,
        1,
        w3, w3, 0,
        32, 3, 3,
        9, 3, 1,
        b9, b9, 0,
        32,
        1,
        b10, b10, 0,
        32,
        1,
        b11, b11, 0,
        32,
        1,
        b12, b12, 0,
        32,
        1,
        w4, w4, 0,
        16, 32,
        32, 1,
        b13, b13, 0,
        16,
        1,
        b14, b14, 0,
        16,
        1,
        b15, b15, 0,
        16,
        1,
        b16, b16, 0,
        16,
        1,
        w5, w5, 0,
        96, 16,
        16, 1,
        b17, b17, 0,
        96,
        1,
        b18, b18, 0,
        96,
        1,
        b19, b19, 0,
        96,
        1,
        b20, b20, 0,
        96,
        1,
        w6, w6, 0,
        96, 3, 3,
        9, 3, 1,
        b21, b21, 0,
        96,
        1,
        b22, b22, 0,
        96,
        1,
        b23, b23, 0,
        96,
        1,
        b24, b24, 0,
        96,
        1,
        w7, w7, 0,
        24, 96,
        96, 1,
        b25, b25, 0,
        24,
        1,
        b26, b26, 0,
        24,
        1,
        b27, b27, 0,
        24,
        1,
        b28, b28, 0,
        24,
        1,
        w8, w8, 0,
        144, 24,
        24, 1,
        b29, b29, 0,
        144,
        1,
        b30, b30, 0,
        144,
        1,
        b31, b31, 0,
        144,
        1,
        b32, b32, 0,
        144,
        1,
        w9, w9, 0,
        144, 3, 3,
        9, 3, 1,
        b33, b33, 0,
        144,
        1,
        b34, b34, 0,
        144,
        1,
        b35, b35, 0,
        144,
        1,
        b36, b36, 0,
        144,
        1,
        w10, w10, 0,
        40, 144,
        144, 1,
        b37, b37, 0,
        40,
        1,
        b38, b38, 0,
        40,
        1,
        b39, b39, 0,
        40,
        1,
        b40, b40, 0,
        40,
        1,
        w11, w11, 0,
        240, 40,
        40, 1,
        b41, b41, 0,
        240,
        1,
        b42, b42, 0,
        240,
        1,
        b43, b43, 0,
        240,
        1,
        b44, b44, 0,
        240,
        1,
        w12, w12, 0,
        240, 3, 3,
        9, 3, 1,
        b45, b45, 0,
        240,
        1,
        b46, b46, 0,
        240,
        1,
        b47, b47, 0,
        240,
        1,
        b48, b48, 0,
        240,
        1,
        w13, w13, 0,
        80, 240,
        240, 1,
        b49, b49, 0,
        80,
        1,
        b50, b50, 0,
        80,
        1,
        b51, b51, 0,
        80,
        1,
        b52, b52, 0,
        80,
        1,
        w14, w14, 0,
        480, 80,
        80, 1,
        b53, b53, 0,
        480,
        1,
        b54, b54, 0,
        480,
        1,
        b55, b55, 0,
        480,
        1,
        b56, b56, 0,
        480,
        1,
        w15, w15, 0,
        480, 3, 3,
        9, 3, 1,
        b57, b57, 0,
        480,
        1,
        b58, b58, 0,
        480,
        1,
        b59, b59, 0,
        480,
        1,
        b60, b60, 0,
        480,
        1,
        w16, w16, 0,
        112, 480,
        480, 1,
        b61, b61, 0,
        112,
        1,
        b62, b62, 0,
        112,
        1,
        b63, b63, 0,
        112,
        1,
        b64, b64, 0,
        112,
        1,
        w17, w17, 0,
        672, 112,
        112, 1,
        b65, b65, 0,
        672,
        1,
        b66, b66, 0,
        672,
        1,
        b67, b67, 0,
        672,
        1,
        b68, b68, 0,
        672,
        1,
        w18, w18, 0,
        672, 3, 3,
        9, 3, 1,
        b69, b69, 0,
        672,
        1,
        b70, b70, 0,
        672,
        1,
        b71, b71, 0,
        672,
        1,
        b72, b72, 0,
        672,
        1,
        w19, w19, 0,
        192, 672,
        672, 1,
        b73, b73, 0,
        192,
        1,
        b74, b74, 0,
        192,
        1,
        b75, b75, 0,
        192,
        1,
        b76, b76, 0,
        192,
        1,
        w20, w20, 0,
        1152, 192,
        192, 1,
        b77, b77, 0,
        1152,
        1,
        b78, b78, 0,
        1152,
        1,
        b79, b79, 0,
        1152,
        1,
        b80, b80, 0,
        1152,
        1,
        w21, w21, 0,
        1152, 3, 3,
        9, 3, 1,
        b81, b81, 0,
        1152,
        1,
        b82, b82, 0,
        1152,
        1,
        b83, b83, 0,
        1152,
        1,
        b84, b84, 0,
        1152,
        1,
        w22, w22, 0,
        320, 1152,
        1152, 1,
        b85, b85, 0,
        320,
        1,
        b86, b86, 0,
        320,
        1,
        b87, b87, 0,
        320,
        1,
        b88, b88, 0,
        320,
        1,
        w23, w23, 0,
        1280, 320,
        320, 1,
        b89, b89, 0,
        1280,
        1,
        b90, b90, 0,
        1280,
        1,
        b91, b91, 0,
        1280,
        1,
        b92, b92, 0,
        1280,
        1,
        w24, w24, 0,
        1000, 1280,
        1280, 1,
        b93, b93, 0,
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
        memref2d cur = EfficientNetB1(
            w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        x, x, 0,
        10, 3, 240, 240,
        172800, 57600, 240, 1,
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
        w2, w2, 0,
        32, 32,
        32, 1,
        b5, b5, 0,
        32,
        1,
        b6, b6, 0,
        32,
        1,
        b7, b7, 0,
        32,
        1,
        b8, b8, 0,
        32,
        1,
        w3, w3, 0,
        32, 3, 3,
        9, 3, 1,
        b9, b9, 0,
        32,
        1,
        b10, b10, 0,
        32,
        1,
        b11, b11, 0,
        32,
        1,
        b12, b12, 0,
        32,
        1,
        w4, w4, 0,
        16, 32,
        32, 1,
        b13, b13, 0,
        16,
        1,
        b14, b14, 0,
        16,
        1,
        b15, b15, 0,
        16,
        1,
        b16, b16, 0,
        16,
        1,
        w5, w5, 0,
        96, 16,
        16, 1,
        b17, b17, 0,
        96,
        1,
        b18, b18, 0,
        96,
        1,
        b19, b19, 0,
        96,
        1,
        b20, b20, 0,
        96,
        1,
        w6, w6, 0,
        96, 3, 3,
        9, 3, 1,
        b21, b21, 0,
        96,
        1,
        b22, b22, 0,
        96,
        1,
        b23, b23, 0,
        96,
        1,
        b24, b24, 0,
        96,
        1,
        w7, w7, 0,
        24, 96,
        96, 1,
        b25, b25, 0,
        24,
        1,
        b26, b26, 0,
        24,
        1,
        b27, b27, 0,
        24,
        1,
        b28, b28, 0,
        24,
        1,
        w8, w8, 0,
        144, 24,
        24, 1,
        b29, b29, 0,
        144,
        1,
        b30, b30, 0,
        144,
        1,
        b31, b31, 0,
        144,
        1,
        b32, b32, 0,
        144,
        1,
        w9, w9, 0,
        144, 3, 3,
        9, 3, 1,
        b33, b33, 0,
        144,
        1,
        b34, b34, 0,
        144,
        1,
        b35, b35, 0,
        144,
        1,
        b36, b36, 0,
        144,
        1,
        w10, w10, 0,
        40, 144,
        144, 1,
        b37, b37, 0,
        40,
        1,
        b38, b38, 0,
        40,
        1,
        b39, b39, 0,
        40,
        1,
        b40, b40, 0,
        40,
        1,
        w11, w11, 0,
        240, 40,
        40, 1,
        b41, b41, 0,
        240,
        1,
        b42, b42, 0,
        240,
        1,
        b43, b43, 0,
        240,
        1,
        b44, b44, 0,
        240,
        1,
        w12, w12, 0,
        240, 3, 3,
        9, 3, 1,
        b45, b45, 0,
        240,
        1,
        b46, b46, 0,
        240,
        1,
        b47, b47, 0,
        240,
        1,
        b48, b48, 0,
        240,
        1,
        w13, w13, 0,
        80, 240,
        240, 1,
        b49, b49, 0,
        80,
        1,
        b50, b50, 0,
        80,
        1,
        b51, b51, 0,
        80,
        1,
        b52, b52, 0,
        80,
        1,
        w14, w14, 0,
        480, 80,
        80, 1,
        b53, b53, 0,
        480,
        1,
        b54, b54, 0,
        480,
        1,
        b55, b55, 0,
        480,
        1,
        b56, b56, 0,
        480,
        1,
        w15, w15, 0,
        480, 3, 3,
        9, 3, 1,
        b57, b57, 0,
        480,
        1,
        b58, b58, 0,
        480,
        1,
        b59, b59, 0,
        480,
        1,
        b60, b60, 0,
        480,
        1,
        w16, w16, 0,
        112, 480,
        480, 1,
        b61, b61, 0,
        112,
        1,
        b62, b62, 0,
        112,
        1,
        b63, b63, 0,
        112,
        1,
        b64, b64, 0,
        112,
        1,
        w17, w17, 0,
        672, 112,
        112, 1,
        b65, b65, 0,
        672,
        1,
        b66, b66, 0,
        672,
        1,
        b67, b67, 0,
        672,
        1,
        b68, b68, 0,
        672,
        1,
        w18, w18, 0,
        672, 3, 3,
        9, 3, 1,
        b69, b69, 0,
        672,
        1,
        b70, b70, 0,
        672,
        1,
        b71, b71, 0,
        672,
        1,
        b72, b72, 0,
        672,
        1,
        w19, w19, 0,
        192, 672,
        672, 1,
        b73, b73, 0,
        192,
        1,
        b74, b74, 0,
        192,
        1,
        b75, b75, 0,
        192,
        1,
        b76, b76, 0,
        192,
        1,
        w20, w20, 0,
        1152, 192,
        192, 1,
        b77, b77, 0,
        1152,
        1,
        b78, b78, 0,
        1152,
        1,
        b79, b79, 0,
        1152,
        1,
        b80, b80, 0,
        1152,
        1,
        w21, w21, 0,
        1152, 3, 3,
        9, 3, 1,
        b81, b81, 0,
        1152,
        1,
        b82, b82, 0,
        1152,
        1,
        b83, b83, 0,
        1152,
        1,
        b84, b84, 0,
        1152,
        1,
        w22, w22, 0,
        320, 1152,
        1152, 1,
        b85, b85, 0,
        320,
        1,
        b86, b86, 0,
        320,
        1,
        b87, b87, 0,
        320,
        1,
        b88, b88, 0,
        320,
        1,
        w23, w23, 0,
        1280, 320,
        320, 1,
        b89, b89, 0,
        1280,
        1,
        b90, b90, 0,
        1280,
        1,
        b91, b91, 0,
        1280,
        1,
        b92, b92, 0,
        1280,
        1,
        w24, w24, 0,
        1000, 1280,
        1280, 1,
        b93, b93, 0,
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
      memref2d cur = EfficientNetB1(
          w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        x, x, 0,
        10, 3, 240, 240,
        172800, 57600, 240, 1,
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
        w2, w2, 0,
        32, 32,
        32, 1,
        b5, b5, 0,
        32,
        1,
        b6, b6, 0,
        32,
        1,
        b7, b7, 0,
        32,
        1,
        b8, b8, 0,
        32,
        1,
        w3, w3, 0,
        32, 3, 3,
        9, 3, 1,
        b9, b9, 0,
        32,
        1,
        b10, b10, 0,
        32,
        1,
        b11, b11, 0,
        32,
        1,
        b12, b12, 0,
        32,
        1,
        w4, w4, 0,
        16, 32,
        32, 1,
        b13, b13, 0,
        16,
        1,
        b14, b14, 0,
        16,
        1,
        b15, b15, 0,
        16,
        1,
        b16, b16, 0,
        16,
        1,
        w5, w5, 0,
        96, 16,
        16, 1,
        b17, b17, 0,
        96,
        1,
        b18, b18, 0,
        96,
        1,
        b19, b19, 0,
        96,
        1,
        b20, b20, 0,
        96,
        1,
        w6, w6, 0,
        96, 3, 3,
        9, 3, 1,
        b21, b21, 0,
        96,
        1,
        b22, b22, 0,
        96,
        1,
        b23, b23, 0,
        96,
        1,
        b24, b24, 0,
        96,
        1,
        w7, w7, 0,
        24, 96,
        96, 1,
        b25, b25, 0,
        24,
        1,
        b26, b26, 0,
        24,
        1,
        b27, b27, 0,
        24,
        1,
        b28, b28, 0,
        24,
        1,
        w8, w8, 0,
        144, 24,
        24, 1,
        b29, b29, 0,
        144,
        1,
        b30, b30, 0,
        144,
        1,
        b31, b31, 0,
        144,
        1,
        b32, b32, 0,
        144,
        1,
        w9, w9, 0,
        144, 3, 3,
        9, 3, 1,
        b33, b33, 0,
        144,
        1,
        b34, b34, 0,
        144,
        1,
        b35, b35, 0,
        144,
        1,
        b36, b36, 0,
        144,
        1,
        w10, w10, 0,
        40, 144,
        144, 1,
        b37, b37, 0,
        40,
        1,
        b38, b38, 0,
        40,
        1,
        b39, b39, 0,
        40,
        1,
        b40, b40, 0,
        40,
        1,
        w11, w11, 0,
        240, 40,
        40, 1,
        b41, b41, 0,
        240,
        1,
        b42, b42, 0,
        240,
        1,
        b43, b43, 0,
        240,
        1,
        b44, b44, 0,
        240,
        1,
        w12, w12, 0,
        240, 3, 3,
        9, 3, 1,
        b45, b45, 0,
        240,
        1,
        b46, b46, 0,
        240,
        1,
        b47, b47, 0,
        240,
        1,
        b48, b48, 0,
        240,
        1,
        w13, w13, 0,
        80, 240,
        240, 1,
        b49, b49, 0,
        80,
        1,
        b50, b50, 0,
        80,
        1,
        b51, b51, 0,
        80,
        1,
        b52, b52, 0,
        80,
        1,
        w14, w14, 0,
        480, 80,
        80, 1,
        b53, b53, 0,
        480,
        1,
        b54, b54, 0,
        480,
        1,
        b55, b55, 0,
        480,
        1,
        b56, b56, 0,
        480,
        1,
        w15, w15, 0,
        480, 3, 3,
        9, 3, 1,
        b57, b57, 0,
        480,
        1,
        b58, b58, 0,
        480,
        1,
        b59, b59, 0,
        480,
        1,
        b60, b60, 0,
        480,
        1,
        w16, w16, 0,
        112, 480,
        480, 1,
        b61, b61, 0,
        112,
        1,
        b62, b62, 0,
        112,
        1,
        b63, b63, 0,
        112,
        1,
        b64, b64, 0,
        112,
        1,
        w17, w17, 0,
        672, 112,
        112, 1,
        b65, b65, 0,
        672,
        1,
        b66, b66, 0,
        672,
        1,
        b67, b67, 0,
        672,
        1,
        b68, b68, 0,
        672,
        1,
        w18, w18, 0,
        672, 3, 3,
        9, 3, 1,
        b69, b69, 0,
        672,
        1,
        b70, b70, 0,
        672,
        1,
        b71, b71, 0,
        672,
        1,
        b72, b72, 0,
        672,
        1,
        w19, w19, 0,
        192, 672,
        672, 1,
        b73, b73, 0,
        192,
        1,
        b74, b74, 0,
        192,
        1,
        b75, b75, 0,
        192,
        1,
        b76, b76, 0,
        192,
        1,
        w20, w20, 0,
        1152, 192,
        192, 1,
        b77, b77, 0,
        1152,
        1,
        b78, b78, 0,
        1152,
        1,
        b79, b79, 0,
        1152,
        1,
        b80, b80, 0,
        1152,
        1,
        w21, w21, 0,
        1152, 3, 3,
        9, 3, 1,
        b81, b81, 0,
        1152,
        1,
        b82, b82, 0,
        1152,
        1,
        b83, b83, 0,
        1152,
        1,
        b84, b84, 0,
        1152,
        1,
        w22, w22, 0,
        320, 1152,
        1152, 1,
        b85, b85, 0,
        320,
        1,
        b86, b86, 0,
        320,
        1,
        b87, b87, 0,
        320,
        1,
        b88, b88, 0,
        320,
        1,
        w23, w23, 0,
        1280, 320,
        320, 1,
        b89, b89, 0,
        1280,
        1,
        b90, b90, 0,
        1280,
        1,
        b91, b91, 0,
        1280,
        1,
        b92, b92, 0,
        1280,
        1,
        w24, w24, 0,
        1000, 1280,
        1280, 1,
        b93, b93, 0,
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

  write_timing_report(json_report_path, "EfficientNetB1", "mim_mlir_llvm", run_id,
                       weights_path, input_path, output_path, reps,
                       times[reps / 2], sum / reps, times[0], times[reps - 1]);

  free(x);
  release_times(times, reps, use_fork);
  return 0;
}
