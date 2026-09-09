#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

/* Auto-generated driver for `EfficientNetB0` matching MLIR's expanded memref
 * descriptor calling convention (convert-func-to-llvm output). Generated
 * by gen_drivers.py -- do not hand-edit.
 *
 * Shapes are not recoverable from this .ll's own (fully scalarized)
 * signature, so they were borrowed from sibling .mlir (./22_EfficientNetB0/mlir_llvm/EfficientNetB0_mlir.mlir)
 * -- which is a file for THIS pipeline, so its argument order matches
 * one-for-one what convert-func-to-llvm scalarized. Each weight's location
 * in weights.bin is its byte offset from EfficientNetB0_params.json,
 * looked up by canonical torch parameter name:
 * x: shape [10, 3, 224, 224] (input)
 * w1: shape [32, 3, 3, 3] (weight) <- conv1.weight @ byte 0
 * b1: shape [32] (bias) <- bn1.weight @ byte 3712
 * b2: shape [32] (bias) <- bn1.bias @ byte 3840
 * w2: shape [32, 1, 3, 3] (weight) <- blocks.0.depthwise_conv.0.weight @ byte 3968
 * b3: shape [32] (bias) <- blocks.0.depthwise_conv.1.weight @ byte 5376
 * b4: shape [32] (bias) <- blocks.0.depthwise_conv.1.bias @ byte 5504
 * w3: shape [16, 32, 1, 1] (weight) <- blocks.0.project_conv.0.weight @ byte 5632
 * b5: shape [16] (bias) <- blocks.0.project_conv.1.weight @ byte 7808
 * b6: shape [16] (bias) <- blocks.0.project_conv.1.bias @ byte 7872
 * w4: shape [96, 16, 1, 1] (weight) <- blocks.1.expand_conv.0.weight @ byte 7936
 * b7: shape [96] (bias) <- blocks.1.expand_conv.1.weight @ byte 14848
 * b8: shape [96] (bias) <- blocks.1.expand_conv.1.bias @ byte 15232
 * w5: shape [96, 1, 3, 3] (weight) <- blocks.1.depthwise_conv.0.weight @ byte 15616
 * b9: shape [96] (bias) <- blocks.1.depthwise_conv.1.weight @ byte 19840
 * b10: shape [96] (bias) <- blocks.1.depthwise_conv.1.bias @ byte 20224
 * w6: shape [24, 96, 1, 1] (weight) <- blocks.1.project_conv.0.weight @ byte 20608
 * b11: shape [24] (bias) <- blocks.1.project_conv.1.weight @ byte 30016
 * b12: shape [24] (bias) <- blocks.1.project_conv.1.bias @ byte 30112
 * w7: shape [144, 24, 1, 1] (weight) <- blocks.2.expand_conv.0.weight @ byte 30208
 * b13: shape [144] (bias) <- blocks.2.expand_conv.1.weight @ byte 45184
 * b14: shape [144] (bias) <- blocks.2.expand_conv.1.bias @ byte 45760
 * w8: shape [144, 1, 3, 3] (weight) <- blocks.2.depthwise_conv.0.weight @ byte 46336
 * b15: shape [144] (bias) <- blocks.2.depthwise_conv.1.weight @ byte 52672
 * b16: shape [144] (bias) <- blocks.2.depthwise_conv.1.bias @ byte 53248
 * w9: shape [24, 144, 1, 1] (weight) <- blocks.2.project_conv.0.weight @ byte 53824
 * b17: shape [24] (bias) <- blocks.2.project_conv.1.weight @ byte 67840
 * b18: shape [24] (bias) <- blocks.2.project_conv.1.bias @ byte 67936
 * w10: shape [144, 24, 1, 1] (weight) <- blocks.3.expand_conv.0.weight @ byte 68032
 * b19: shape [144] (bias) <- blocks.3.expand_conv.1.weight @ byte 83008
 * b20: shape [144] (bias) <- blocks.3.expand_conv.1.bias @ byte 83584
 * w11: shape [144, 1, 5, 5] (weight) <- blocks.3.depthwise_conv.0.weight @ byte 84160
 * b21: shape [144] (bias) <- blocks.3.depthwise_conv.1.weight @ byte 99712
 * b22: shape [144] (bias) <- blocks.3.depthwise_conv.1.bias @ byte 100288
 * w12: shape [40, 144, 1, 1] (weight) <- blocks.3.project_conv.0.weight @ byte 100864
 * b23: shape [40] (bias) <- blocks.3.project_conv.1.weight @ byte 124224
 * b24: shape [40] (bias) <- blocks.3.project_conv.1.bias @ byte 124384
 * w13: shape [240, 40, 1, 1] (weight) <- blocks.4.expand_conv.0.weight @ byte 124544
 * b25: shape [240] (bias) <- blocks.4.expand_conv.1.weight @ byte 164864
 * b26: shape [240] (bias) <- blocks.4.expand_conv.1.bias @ byte 165824
 * w14: shape [240, 1, 5, 5] (weight) <- blocks.4.depthwise_conv.0.weight @ byte 166784
 * b27: shape [240] (bias) <- blocks.4.depthwise_conv.1.weight @ byte 192704
 * b28: shape [240] (bias) <- blocks.4.depthwise_conv.1.bias @ byte 193664
 * w15: shape [40, 240, 1, 1] (weight) <- blocks.4.project_conv.0.weight @ byte 194624
 * b29: shape [40] (bias) <- blocks.4.project_conv.1.weight @ byte 233344
 * b30: shape [40] (bias) <- blocks.4.project_conv.1.bias @ byte 233504
 * w16: shape [240, 40, 1, 1] (weight) <- blocks.5.expand_conv.0.weight @ byte 233664
 * b31: shape [240] (bias) <- blocks.5.expand_conv.1.weight @ byte 273984
 * b32: shape [240] (bias) <- blocks.5.expand_conv.1.bias @ byte 274944
 * w17: shape [240, 1, 3, 3] (weight) <- blocks.5.depthwise_conv.0.weight @ byte 275904
 * b33: shape [240] (bias) <- blocks.5.depthwise_conv.1.weight @ byte 286464
 * b34: shape [240] (bias) <- blocks.5.depthwise_conv.1.bias @ byte 287424
 * w18: shape [80, 240, 1, 1] (weight) <- blocks.5.project_conv.0.weight @ byte 288384
 * b35: shape [80] (bias) <- blocks.5.project_conv.1.weight @ byte 365824
 * b36: shape [80] (bias) <- blocks.5.project_conv.1.bias @ byte 366144
 * w19: shape [480, 80, 1, 1] (weight) <- blocks.6.expand_conv.0.weight @ byte 366464
 * b37: shape [480] (bias) <- blocks.6.expand_conv.1.weight @ byte 523904
 * b38: shape [480] (bias) <- blocks.6.expand_conv.1.bias @ byte 525824
 * w20: shape [480, 1, 3, 3] (weight) <- blocks.6.depthwise_conv.0.weight @ byte 527744
 * b39: shape [480] (bias) <- blocks.6.depthwise_conv.1.weight @ byte 548864
 * b40: shape [480] (bias) <- blocks.6.depthwise_conv.1.bias @ byte 550784
 * w21: shape [80, 480, 1, 1] (weight) <- blocks.6.project_conv.0.weight @ byte 552704
 * b41: shape [80] (bias) <- blocks.6.project_conv.1.weight @ byte 706944
 * b42: shape [80] (bias) <- blocks.6.project_conv.1.bias @ byte 707264
 * w22: shape [480, 80, 1, 1] (weight) <- blocks.7.expand_conv.0.weight @ byte 707584
 * b43: shape [480] (bias) <- blocks.7.expand_conv.1.weight @ byte 865024
 * b44: shape [480] (bias) <- blocks.7.expand_conv.1.bias @ byte 866944
 * w23: shape [480, 1, 5, 5] (weight) <- blocks.7.depthwise_conv.0.weight @ byte 868864
 * b45: shape [480] (bias) <- blocks.7.depthwise_conv.1.weight @ byte 920704
 * b46: shape [480] (bias) <- blocks.7.depthwise_conv.1.bias @ byte 922624
 * w24: shape [112, 480, 1, 1] (weight) <- blocks.7.project_conv.0.weight @ byte 924544
 * b47: shape [112] (bias) <- blocks.7.project_conv.1.weight @ byte 1140480
 * b48: shape [112] (bias) <- blocks.7.project_conv.1.bias @ byte 1140928
 * w25: shape [672, 112, 1, 1] (weight) <- blocks.8.expand_conv.0.weight @ byte 1141376
 * b49: shape [672] (bias) <- blocks.8.expand_conv.1.weight @ byte 1447808
 * b50: shape [672] (bias) <- blocks.8.expand_conv.1.bias @ byte 1450496
 * w26: shape [672, 1, 5, 5] (weight) <- blocks.8.depthwise_conv.0.weight @ byte 1453184
 * b51: shape [672] (bias) <- blocks.8.depthwise_conv.1.weight @ byte 1525760
 * b52: shape [672] (bias) <- blocks.8.depthwise_conv.1.bias @ byte 1528448
 * w27: shape [112, 672, 1, 1] (weight) <- blocks.8.project_conv.0.weight @ byte 1531136
 * b53: shape [112] (bias) <- blocks.8.project_conv.1.weight @ byte 1833088
 * b54: shape [112] (bias) <- blocks.8.project_conv.1.bias @ byte 1833536
 * w28: shape [672, 112, 1, 1] (weight) <- blocks.9.expand_conv.0.weight @ byte 1833984
 * b55: shape [672] (bias) <- blocks.9.expand_conv.1.weight @ byte 2140416
 * b56: shape [672] (bias) <- blocks.9.expand_conv.1.bias @ byte 2143104
 * w29: shape [672, 1, 5, 5] (weight) <- blocks.9.depthwise_conv.0.weight @ byte 2145792
 * b57: shape [672] (bias) <- blocks.9.depthwise_conv.1.weight @ byte 2218368
 * b58: shape [672] (bias) <- blocks.9.depthwise_conv.1.bias @ byte 2221056
 * w30: shape [192, 672, 1, 1] (weight) <- blocks.9.project_conv.0.weight @ byte 2223744
 * b59: shape [192] (bias) <- blocks.9.project_conv.1.weight @ byte 2741376
 * b60: shape [192] (bias) <- blocks.9.project_conv.1.bias @ byte 2742144
 * w31: shape [1152, 192, 1, 1] (weight) <- blocks.10.expand_conv.0.weight @ byte 2742912
 * b61: shape [1152] (bias) <- blocks.10.expand_conv.1.weight @ byte 3636864
 * b62: shape [1152] (bias) <- blocks.10.expand_conv.1.bias @ byte 3641472
 * w32: shape [1152, 1, 5, 5] (weight) <- blocks.10.depthwise_conv.0.weight @ byte 3646080
 * b63: shape [1152] (bias) <- blocks.10.depthwise_conv.1.weight @ byte 3770496
 * b64: shape [1152] (bias) <- blocks.10.depthwise_conv.1.bias @ byte 3775104
 * w33: shape [192, 1152, 1, 1] (weight) <- blocks.10.project_conv.0.weight @ byte 3779712
 * b65: shape [192] (bias) <- blocks.10.project_conv.1.weight @ byte 4665984
 * b66: shape [192] (bias) <- blocks.10.project_conv.1.bias @ byte 4666752
 * w34: shape [1152, 192, 1, 1] (weight) <- blocks.11.expand_conv.0.weight @ byte 4667520
 * b67: shape [1152] (bias) <- blocks.11.expand_conv.1.weight @ byte 5561472
 * b68: shape [1152] (bias) <- blocks.11.expand_conv.1.bias @ byte 5566080
 * w35: shape [1152, 1, 5, 5] (weight) <- blocks.11.depthwise_conv.0.weight @ byte 5570688
 * b69: shape [1152] (bias) <- blocks.11.depthwise_conv.1.weight @ byte 5695104
 * b70: shape [1152] (bias) <- blocks.11.depthwise_conv.1.bias @ byte 5699712
 * w36: shape [192, 1152, 1, 1] (weight) <- blocks.11.project_conv.0.weight @ byte 5704320
 * b71: shape [192] (bias) <- blocks.11.project_conv.1.weight @ byte 6590592
 * b72: shape [192] (bias) <- blocks.11.project_conv.1.bias @ byte 6591360
 * w37: shape [1152, 192, 1, 1] (weight) <- blocks.12.expand_conv.0.weight @ byte 6592128
 * b73: shape [1152] (bias) <- blocks.12.expand_conv.1.weight @ byte 7486080
 * b74: shape [1152] (bias) <- blocks.12.expand_conv.1.bias @ byte 7490688
 * w38: shape [1152, 1, 3, 3] (weight) <- blocks.12.depthwise_conv.0.weight @ byte 7495296
 * b75: shape [1152] (bias) <- blocks.12.depthwise_conv.1.weight @ byte 7545984
 * b76: shape [1152] (bias) <- blocks.12.depthwise_conv.1.bias @ byte 7550592
 * w39: shape [320, 1152, 1, 1] (weight) <- blocks.12.project_conv.0.weight @ byte 7555200
 * b77: shape [320] (bias) <- blocks.12.project_conv.1.weight @ byte 9032320
 * b78: shape [320] (bias) <- blocks.12.project_conv.1.bias @ byte 9033600
 * w40: shape [1280, 320, 1, 1] (weight) <- conv2.weight @ byte 9034880
 * b79: shape [1280] (bias) <- bn2.weight @ byte 10683520
 * b80: shape [1280] (bias) <- bn2.bias @ byte 10688640
 * w41: shape [1000, 1280] (weight) <- fc.weight @ byte 10693760
 * b81: shape [1000] (bias) <- fc.bias @ byte 15813760
 * b82: shape [32] (bias) <- bn1.running_mean @ byte 3456
 * b83: shape [32] (bias) <- bn1.running_var @ byte 3584
 * b84: shape [32] (bias) <- blocks.0.depthwise_conv.1.running_mean @ byte 5120
 * b85: shape [32] (bias) <- blocks.0.depthwise_conv.1.running_var @ byte 5248
 * b86: shape [16] (bias) <- blocks.0.project_conv.1.running_mean @ byte 7680
 * b87: shape [16] (bias) <- blocks.0.project_conv.1.running_var @ byte 7744
 * b88: shape [96] (bias) <- blocks.1.expand_conv.1.running_mean @ byte 14080
 * b89: shape [96] (bias) <- blocks.1.expand_conv.1.running_var @ byte 14464
 * b90: shape [96] (bias) <- blocks.1.depthwise_conv.1.running_mean @ byte 19072
 * b91: shape [96] (bias) <- blocks.1.depthwise_conv.1.running_var @ byte 19456
 * b92: shape [24] (bias) <- blocks.1.project_conv.1.running_mean @ byte 29824
 * b93: shape [24] (bias) <- blocks.1.project_conv.1.running_var @ byte 29920
 * b94: shape [144] (bias) <- blocks.2.expand_conv.1.running_mean @ byte 44032
 * b95: shape [144] (bias) <- blocks.2.expand_conv.1.running_var @ byte 44608
 * b96: shape [144] (bias) <- blocks.2.depthwise_conv.1.running_mean @ byte 51520
 * b97: shape [144] (bias) <- blocks.2.depthwise_conv.1.running_var @ byte 52096
 * b98: shape [24] (bias) <- blocks.2.project_conv.1.running_mean @ byte 67648
 * b99: shape [24] (bias) <- blocks.2.project_conv.1.running_var @ byte 67744
 * b100: shape [144] (bias) <- blocks.3.expand_conv.1.running_mean @ byte 81856
 * b101: shape [144] (bias) <- blocks.3.expand_conv.1.running_var @ byte 82432
 * b102: shape [144] (bias) <- blocks.3.depthwise_conv.1.running_mean @ byte 98560
 * b103: shape [144] (bias) <- blocks.3.depthwise_conv.1.running_var @ byte 99136
 * b104: shape [40] (bias) <- blocks.3.project_conv.1.running_mean @ byte 123904
 * b105: shape [40] (bias) <- blocks.3.project_conv.1.running_var @ byte 124064
 * b106: shape [240] (bias) <- blocks.4.expand_conv.1.running_mean @ byte 162944
 * b107: shape [240] (bias) <- blocks.4.expand_conv.1.running_var @ byte 163904
 * b108: shape [240] (bias) <- blocks.4.depthwise_conv.1.running_mean @ byte 190784
 * b109: shape [240] (bias) <- blocks.4.depthwise_conv.1.running_var @ byte 191744
 * b110: shape [40] (bias) <- blocks.4.project_conv.1.running_mean @ byte 233024
 * b111: shape [40] (bias) <- blocks.4.project_conv.1.running_var @ byte 233184
 * b112: shape [240] (bias) <- blocks.5.expand_conv.1.running_mean @ byte 272064
 * b113: shape [240] (bias) <- blocks.5.expand_conv.1.running_var @ byte 273024
 * b114: shape [240] (bias) <- blocks.5.depthwise_conv.1.running_mean @ byte 284544
 * b115: shape [240] (bias) <- blocks.5.depthwise_conv.1.running_var @ byte 285504
 * b116: shape [80] (bias) <- blocks.5.project_conv.1.running_mean @ byte 365184
 * b117: shape [80] (bias) <- blocks.5.project_conv.1.running_var @ byte 365504
 * b118: shape [480] (bias) <- blocks.6.expand_conv.1.running_mean @ byte 520064
 * b119: shape [480] (bias) <- blocks.6.expand_conv.1.running_var @ byte 521984
 * b120: shape [480] (bias) <- blocks.6.depthwise_conv.1.running_mean @ byte 545024
 * b121: shape [480] (bias) <- blocks.6.depthwise_conv.1.running_var @ byte 546944
 * b122: shape [80] (bias) <- blocks.6.project_conv.1.running_mean @ byte 706304
 * b123: shape [80] (bias) <- blocks.6.project_conv.1.running_var @ byte 706624
 * b124: shape [480] (bias) <- blocks.7.expand_conv.1.running_mean @ byte 861184
 * b125: shape [480] (bias) <- blocks.7.expand_conv.1.running_var @ byte 863104
 * b126: shape [480] (bias) <- blocks.7.depthwise_conv.1.running_mean @ byte 916864
 * b127: shape [480] (bias) <- blocks.7.depthwise_conv.1.running_var @ byte 918784
 * b128: shape [112] (bias) <- blocks.7.project_conv.1.running_mean @ byte 1139584
 * b129: shape [112] (bias) <- blocks.7.project_conv.1.running_var @ byte 1140032
 * b130: shape [672] (bias) <- blocks.8.expand_conv.1.running_mean @ byte 1442432
 * b131: shape [672] (bias) <- blocks.8.expand_conv.1.running_var @ byte 1445120
 * b132: shape [672] (bias) <- blocks.8.depthwise_conv.1.running_mean @ byte 1520384
 * b133: shape [672] (bias) <- blocks.8.depthwise_conv.1.running_var @ byte 1523072
 * b134: shape [112] (bias) <- blocks.8.project_conv.1.running_mean @ byte 1832192
 * b135: shape [112] (bias) <- blocks.8.project_conv.1.running_var @ byte 1832640
 * b136: shape [672] (bias) <- blocks.9.expand_conv.1.running_mean @ byte 2135040
 * b137: shape [672] (bias) <- blocks.9.expand_conv.1.running_var @ byte 2137728
 * b138: shape [672] (bias) <- blocks.9.depthwise_conv.1.running_mean @ byte 2212992
 * b139: shape [672] (bias) <- blocks.9.depthwise_conv.1.running_var @ byte 2215680
 * b140: shape [192] (bias) <- blocks.9.project_conv.1.running_mean @ byte 2739840
 * b141: shape [192] (bias) <- blocks.9.project_conv.1.running_var @ byte 2740608
 * b142: shape [1152] (bias) <- blocks.10.expand_conv.1.running_mean @ byte 3627648
 * b143: shape [1152] (bias) <- blocks.10.expand_conv.1.running_var @ byte 3632256
 * b144: shape [1152] (bias) <- blocks.10.depthwise_conv.1.running_mean @ byte 3761280
 * b145: shape [1152] (bias) <- blocks.10.depthwise_conv.1.running_var @ byte 3765888
 * b146: shape [192] (bias) <- blocks.10.project_conv.1.running_mean @ byte 4664448
 * b147: shape [192] (bias) <- blocks.10.project_conv.1.running_var @ byte 4665216
 * b148: shape [1152] (bias) <- blocks.11.expand_conv.1.running_mean @ byte 5552256
 * b149: shape [1152] (bias) <- blocks.11.expand_conv.1.running_var @ byte 5556864
 * b150: shape [1152] (bias) <- blocks.11.depthwise_conv.1.running_mean @ byte 5685888
 * b151: shape [1152] (bias) <- blocks.11.depthwise_conv.1.running_var @ byte 5690496
 * b152: shape [192] (bias) <- blocks.11.project_conv.1.running_mean @ byte 6589056
 * b153: shape [192] (bias) <- blocks.11.project_conv.1.running_var @ byte 6589824
 * b154: shape [1152] (bias) <- blocks.12.expand_conv.1.running_mean @ byte 7476864
 * b155: shape [1152] (bias) <- blocks.12.expand_conv.1.running_var @ byte 7481472
 * b156: shape [1152] (bias) <- blocks.12.depthwise_conv.1.running_mean @ byte 7536768
 * b157: shape [1152] (bias) <- blocks.12.depthwise_conv.1.running_var @ byte 7541376
 * b158: shape [320] (bias) <- blocks.12.project_conv.1.running_mean @ byte 9029760
 * b159: shape [320] (bias) <- blocks.12.project_conv.1.running_var @ byte 9031040
 * b160: shape [1280] (bias) <- bn2.running_mean @ byte 10673280
 * b161: shape [1280] (bias) <- bn2.running_var @ byte 10678400
 * output: shape [10, 1000]
 *
 * Usage: EfficientNetB0_driver_mlir <weights> <input> <reps> <output> [run_id] [json_report]
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

extern memref2d EfficientNetB0(
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
    int64_t w21_s2,
    int64_t w21_s3,
    int64_t w21_st0,
    int64_t w21_st1,
    int64_t w21_st2,
    int64_t w21_st3,
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
    float *w22_a,
    float *w22_al,
    int64_t w22_off,
    int64_t w22_s0,
    int64_t w22_s1,
    int64_t w22_s2,
    int64_t w22_s3,
    int64_t w22_st0,
    int64_t w22_st1,
    int64_t w22_st2,
    int64_t w22_st3,
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
    float *w23_a,
    float *w23_al,
    int64_t w23_off,
    int64_t w23_s0,
    int64_t w23_s1,
    int64_t w23_s2,
    int64_t w23_s3,
    int64_t w23_st0,
    int64_t w23_st1,
    int64_t w23_st2,
    int64_t w23_st3,
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
    float *w25_a,
    float *w25_al,
    int64_t w25_off,
    int64_t w25_s0,
    int64_t w25_s1,
    int64_t w25_s2,
    int64_t w25_s3,
    int64_t w25_st0,
    int64_t w25_st1,
    int64_t w25_st2,
    int64_t w25_st3,
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
    float *w27_a,
    float *w27_al,
    int64_t w27_off,
    int64_t w27_s0,
    int64_t w27_s1,
    int64_t w27_s2,
    int64_t w27_s3,
    int64_t w27_st0,
    int64_t w27_st1,
    int64_t w27_st2,
    int64_t w27_st3,
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
    float *w28_a,
    float *w28_al,
    int64_t w28_off,
    int64_t w28_s0,
    int64_t w28_s1,
    int64_t w28_s2,
    int64_t w28_s3,
    int64_t w28_st0,
    int64_t w28_st1,
    int64_t w28_st2,
    int64_t w28_st3,
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
    float *w29_a,
    float *w29_al,
    int64_t w29_off,
    int64_t w29_s0,
    int64_t w29_s1,
    int64_t w29_s2,
    int64_t w29_s3,
    int64_t w29_st0,
    int64_t w29_st1,
    int64_t w29_st2,
    int64_t w29_st3,
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
    float *w31_a,
    float *w31_al,
    int64_t w31_off,
    int64_t w31_s0,
    int64_t w31_s1,
    int64_t w31_s2,
    int64_t w31_s3,
    int64_t w31_st0,
    int64_t w31_st1,
    int64_t w31_st2,
    int64_t w31_st3,
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
    float *w33_a,
    float *w33_al,
    int64_t w33_off,
    int64_t w33_s0,
    int64_t w33_s1,
    int64_t w33_s2,
    int64_t w33_s3,
    int64_t w33_st0,
    int64_t w33_st1,
    int64_t w33_st2,
    int64_t w33_st3,
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
    float *w34_a,
    float *w34_al,
    int64_t w34_off,
    int64_t w34_s0,
    int64_t w34_s1,
    int64_t w34_s2,
    int64_t w34_s3,
    int64_t w34_st0,
    int64_t w34_st1,
    int64_t w34_st2,
    int64_t w34_st3,
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
    float *w35_a,
    float *w35_al,
    int64_t w35_off,
    int64_t w35_s0,
    int64_t w35_s1,
    int64_t w35_s2,
    int64_t w35_s3,
    int64_t w35_st0,
    int64_t w35_st1,
    int64_t w35_st2,
    int64_t w35_st3,
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
    float *w37_a,
    float *w37_al,
    int64_t w37_off,
    int64_t w37_s0,
    int64_t w37_s1,
    int64_t w37_s2,
    int64_t w37_s3,
    int64_t w37_st0,
    int64_t w37_st1,
    int64_t w37_st2,
    int64_t w37_st3,
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
    float *w39_a,
    float *w39_al,
    int64_t w39_off,
    int64_t w39_s0,
    int64_t w39_s1,
    int64_t w39_s2,
    int64_t w39_s3,
    int64_t w39_st0,
    int64_t w39_st1,
    int64_t w39_st2,
    int64_t w39_st3,
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
    float *w40_a,
    float *w40_al,
    int64_t w40_off,
    int64_t w40_s0,
    int64_t w40_s1,
    int64_t w40_s2,
    int64_t w40_s3,
    int64_t w40_st0,
    int64_t w40_st1,
    int64_t w40_st2,
    int64_t w40_st3,
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
    float *w41_a,
    float *w41_al,
    int64_t w41_off,
    int64_t w41_s0,
    int64_t w41_s1,
    int64_t w41_st0,
    int64_t w41_st1,
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
    float *b93_a,
    float *b93_al,
    int64_t b93_off,
    int64_t b93_s0,
    int64_t b93_st0,
    float *b94_a,
    float *b94_al,
    int64_t b94_off,
    int64_t b94_s0,
    int64_t b94_st0,
    float *b95_a,
    float *b95_al,
    int64_t b95_off,
    int64_t b95_s0,
    int64_t b95_st0,
    float *b96_a,
    float *b96_al,
    int64_t b96_off,
    int64_t b96_s0,
    int64_t b96_st0,
    float *b97_a,
    float *b97_al,
    int64_t b97_off,
    int64_t b97_s0,
    int64_t b97_st0,
    float *b98_a,
    float *b98_al,
    int64_t b98_off,
    int64_t b98_s0,
    int64_t b98_st0,
    float *b99_a,
    float *b99_al,
    int64_t b99_off,
    int64_t b99_s0,
    int64_t b99_st0,
    float *b100_a,
    float *b100_al,
    int64_t b100_off,
    int64_t b100_s0,
    int64_t b100_st0,
    float *b101_a,
    float *b101_al,
    int64_t b101_off,
    int64_t b101_s0,
    int64_t b101_st0,
    float *b102_a,
    float *b102_al,
    int64_t b102_off,
    int64_t b102_s0,
    int64_t b102_st0,
    float *b103_a,
    float *b103_al,
    int64_t b103_off,
    int64_t b103_s0,
    int64_t b103_st0,
    float *b104_a,
    float *b104_al,
    int64_t b104_off,
    int64_t b104_s0,
    int64_t b104_st0,
    float *b105_a,
    float *b105_al,
    int64_t b105_off,
    int64_t b105_s0,
    int64_t b105_st0,
    float *b106_a,
    float *b106_al,
    int64_t b106_off,
    int64_t b106_s0,
    int64_t b106_st0,
    float *b107_a,
    float *b107_al,
    int64_t b107_off,
    int64_t b107_s0,
    int64_t b107_st0,
    float *b108_a,
    float *b108_al,
    int64_t b108_off,
    int64_t b108_s0,
    int64_t b108_st0,
    float *b109_a,
    float *b109_al,
    int64_t b109_off,
    int64_t b109_s0,
    int64_t b109_st0,
    float *b110_a,
    float *b110_al,
    int64_t b110_off,
    int64_t b110_s0,
    int64_t b110_st0,
    float *b111_a,
    float *b111_al,
    int64_t b111_off,
    int64_t b111_s0,
    int64_t b111_st0,
    float *b112_a,
    float *b112_al,
    int64_t b112_off,
    int64_t b112_s0,
    int64_t b112_st0,
    float *b113_a,
    float *b113_al,
    int64_t b113_off,
    int64_t b113_s0,
    int64_t b113_st0,
    float *b114_a,
    float *b114_al,
    int64_t b114_off,
    int64_t b114_s0,
    int64_t b114_st0,
    float *b115_a,
    float *b115_al,
    int64_t b115_off,
    int64_t b115_s0,
    int64_t b115_st0,
    float *b116_a,
    float *b116_al,
    int64_t b116_off,
    int64_t b116_s0,
    int64_t b116_st0,
    float *b117_a,
    float *b117_al,
    int64_t b117_off,
    int64_t b117_s0,
    int64_t b117_st0,
    float *b118_a,
    float *b118_al,
    int64_t b118_off,
    int64_t b118_s0,
    int64_t b118_st0,
    float *b119_a,
    float *b119_al,
    int64_t b119_off,
    int64_t b119_s0,
    int64_t b119_st0,
    float *b120_a,
    float *b120_al,
    int64_t b120_off,
    int64_t b120_s0,
    int64_t b120_st0,
    float *b121_a,
    float *b121_al,
    int64_t b121_off,
    int64_t b121_s0,
    int64_t b121_st0,
    float *b122_a,
    float *b122_al,
    int64_t b122_off,
    int64_t b122_s0,
    int64_t b122_st0,
    float *b123_a,
    float *b123_al,
    int64_t b123_off,
    int64_t b123_s0,
    int64_t b123_st0,
    float *b124_a,
    float *b124_al,
    int64_t b124_off,
    int64_t b124_s0,
    int64_t b124_st0,
    float *b125_a,
    float *b125_al,
    int64_t b125_off,
    int64_t b125_s0,
    int64_t b125_st0,
    float *b126_a,
    float *b126_al,
    int64_t b126_off,
    int64_t b126_s0,
    int64_t b126_st0,
    float *b127_a,
    float *b127_al,
    int64_t b127_off,
    int64_t b127_s0,
    int64_t b127_st0,
    float *b128_a,
    float *b128_al,
    int64_t b128_off,
    int64_t b128_s0,
    int64_t b128_st0,
    float *b129_a,
    float *b129_al,
    int64_t b129_off,
    int64_t b129_s0,
    int64_t b129_st0,
    float *b130_a,
    float *b130_al,
    int64_t b130_off,
    int64_t b130_s0,
    int64_t b130_st0,
    float *b131_a,
    float *b131_al,
    int64_t b131_off,
    int64_t b131_s0,
    int64_t b131_st0,
    float *b132_a,
    float *b132_al,
    int64_t b132_off,
    int64_t b132_s0,
    int64_t b132_st0,
    float *b133_a,
    float *b133_al,
    int64_t b133_off,
    int64_t b133_s0,
    int64_t b133_st0,
    float *b134_a,
    float *b134_al,
    int64_t b134_off,
    int64_t b134_s0,
    int64_t b134_st0,
    float *b135_a,
    float *b135_al,
    int64_t b135_off,
    int64_t b135_s0,
    int64_t b135_st0,
    float *b136_a,
    float *b136_al,
    int64_t b136_off,
    int64_t b136_s0,
    int64_t b136_st0,
    float *b137_a,
    float *b137_al,
    int64_t b137_off,
    int64_t b137_s0,
    int64_t b137_st0,
    float *b138_a,
    float *b138_al,
    int64_t b138_off,
    int64_t b138_s0,
    int64_t b138_st0,
    float *b139_a,
    float *b139_al,
    int64_t b139_off,
    int64_t b139_s0,
    int64_t b139_st0,
    float *b140_a,
    float *b140_al,
    int64_t b140_off,
    int64_t b140_s0,
    int64_t b140_st0,
    float *b141_a,
    float *b141_al,
    int64_t b141_off,
    int64_t b141_s0,
    int64_t b141_st0,
    float *b142_a,
    float *b142_al,
    int64_t b142_off,
    int64_t b142_s0,
    int64_t b142_st0,
    float *b143_a,
    float *b143_al,
    int64_t b143_off,
    int64_t b143_s0,
    int64_t b143_st0,
    float *b144_a,
    float *b144_al,
    int64_t b144_off,
    int64_t b144_s0,
    int64_t b144_st0,
    float *b145_a,
    float *b145_al,
    int64_t b145_off,
    int64_t b145_s0,
    int64_t b145_st0,
    float *b146_a,
    float *b146_al,
    int64_t b146_off,
    int64_t b146_s0,
    int64_t b146_st0,
    float *b147_a,
    float *b147_al,
    int64_t b147_off,
    int64_t b147_s0,
    int64_t b147_st0,
    float *b148_a,
    float *b148_al,
    int64_t b148_off,
    int64_t b148_s0,
    int64_t b148_st0,
    float *b149_a,
    float *b149_al,
    int64_t b149_off,
    int64_t b149_s0,
    int64_t b149_st0,
    float *b150_a,
    float *b150_al,
    int64_t b150_off,
    int64_t b150_s0,
    int64_t b150_st0,
    float *b151_a,
    float *b151_al,
    int64_t b151_off,
    int64_t b151_s0,
    int64_t b151_st0,
    float *b152_a,
    float *b152_al,
    int64_t b152_off,
    int64_t b152_s0,
    int64_t b152_st0,
    float *b153_a,
    float *b153_al,
    int64_t b153_off,
    int64_t b153_s0,
    int64_t b153_st0,
    float *b154_a,
    float *b154_al,
    int64_t b154_off,
    int64_t b154_s0,
    int64_t b154_st0,
    float *b155_a,
    float *b155_al,
    int64_t b155_off,
    int64_t b155_s0,
    int64_t b155_st0,
    float *b156_a,
    float *b156_al,
    int64_t b156_off,
    int64_t b156_s0,
    int64_t b156_st0,
    float *b157_a,
    float *b157_al,
    int64_t b157_off,
    int64_t b157_s0,
    int64_t b157_st0,
    float *b158_a,
    float *b158_al,
    int64_t b158_off,
    int64_t b158_s0,
    int64_t b158_st0,
    float *b159_a,
    float *b159_al,
    int64_t b159_off,
    int64_t b159_s0,
    int64_t b159_st0,
    float *b160_a,
    float *b160_al,
    int64_t b160_off,
    int64_t b160_s0,
    int64_t b160_st0,
    float *b161_a,
    float *b161_al,
    int64_t b161_off,
    int64_t b161_s0,
    int64_t b161_st0);

static const size_t x_count = 1505280;
static const size_t w1_count = 864;
static const size_t b1_count = 32;
static const size_t b2_count = 32;
static const size_t w2_count = 288;
static const size_t b3_count = 32;
static const size_t b4_count = 32;
static const size_t w3_count = 512;
static const size_t b5_count = 16;
static const size_t b6_count = 16;
static const size_t w4_count = 1536;
static const size_t b7_count = 96;
static const size_t b8_count = 96;
static const size_t w5_count = 864;
static const size_t b9_count = 96;
static const size_t b10_count = 96;
static const size_t w6_count = 2304;
static const size_t b11_count = 24;
static const size_t b12_count = 24;
static const size_t w7_count = 3456;
static const size_t b13_count = 144;
static const size_t b14_count = 144;
static const size_t w8_count = 1296;
static const size_t b15_count = 144;
static const size_t b16_count = 144;
static const size_t w9_count = 3456;
static const size_t b17_count = 24;
static const size_t b18_count = 24;
static const size_t w10_count = 3456;
static const size_t b19_count = 144;
static const size_t b20_count = 144;
static const size_t w11_count = 3600;
static const size_t b21_count = 144;
static const size_t b22_count = 144;
static const size_t w12_count = 5760;
static const size_t b23_count = 40;
static const size_t b24_count = 40;
static const size_t w13_count = 9600;
static const size_t b25_count = 240;
static const size_t b26_count = 240;
static const size_t w14_count = 6000;
static const size_t b27_count = 240;
static const size_t b28_count = 240;
static const size_t w15_count = 9600;
static const size_t b29_count = 40;
static const size_t b30_count = 40;
static const size_t w16_count = 9600;
static const size_t b31_count = 240;
static const size_t b32_count = 240;
static const size_t w17_count = 2160;
static const size_t b33_count = 240;
static const size_t b34_count = 240;
static const size_t w18_count = 19200;
static const size_t b35_count = 80;
static const size_t b36_count = 80;
static const size_t w19_count = 38400;
static const size_t b37_count = 480;
static const size_t b38_count = 480;
static const size_t w20_count = 4320;
static const size_t b39_count = 480;
static const size_t b40_count = 480;
static const size_t w21_count = 38400;
static const size_t b41_count = 80;
static const size_t b42_count = 80;
static const size_t w22_count = 38400;
static const size_t b43_count = 480;
static const size_t b44_count = 480;
static const size_t w23_count = 12000;
static const size_t b45_count = 480;
static const size_t b46_count = 480;
static const size_t w24_count = 53760;
static const size_t b47_count = 112;
static const size_t b48_count = 112;
static const size_t w25_count = 75264;
static const size_t b49_count = 672;
static const size_t b50_count = 672;
static const size_t w26_count = 16800;
static const size_t b51_count = 672;
static const size_t b52_count = 672;
static const size_t w27_count = 75264;
static const size_t b53_count = 112;
static const size_t b54_count = 112;
static const size_t w28_count = 75264;
static const size_t b55_count = 672;
static const size_t b56_count = 672;
static const size_t w29_count = 16800;
static const size_t b57_count = 672;
static const size_t b58_count = 672;
static const size_t w30_count = 129024;
static const size_t b59_count = 192;
static const size_t b60_count = 192;
static const size_t w31_count = 221184;
static const size_t b61_count = 1152;
static const size_t b62_count = 1152;
static const size_t w32_count = 28800;
static const size_t b63_count = 1152;
static const size_t b64_count = 1152;
static const size_t w33_count = 221184;
static const size_t b65_count = 192;
static const size_t b66_count = 192;
static const size_t w34_count = 221184;
static const size_t b67_count = 1152;
static const size_t b68_count = 1152;
static const size_t w35_count = 28800;
static const size_t b69_count = 1152;
static const size_t b70_count = 1152;
static const size_t w36_count = 221184;
static const size_t b71_count = 192;
static const size_t b72_count = 192;
static const size_t w37_count = 221184;
static const size_t b73_count = 1152;
static const size_t b74_count = 1152;
static const size_t w38_count = 10368;
static const size_t b75_count = 1152;
static const size_t b76_count = 1152;
static const size_t w39_count = 368640;
static const size_t b77_count = 320;
static const size_t b78_count = 320;
static const size_t w40_count = 409600;
static const size_t b79_count = 1280;
static const size_t b80_count = 1280;
static const size_t w41_count = 1280000;
static const size_t b81_count = 1000;
static const size_t b82_count = 32;
static const size_t b83_count = 32;
static const size_t b84_count = 32;
static const size_t b85_count = 32;
static const size_t b86_count = 16;
static const size_t b87_count = 16;
static const size_t b88_count = 96;
static const size_t b89_count = 96;
static const size_t b90_count = 96;
static const size_t b91_count = 96;
static const size_t b92_count = 24;
static const size_t b93_count = 24;
static const size_t b94_count = 144;
static const size_t b95_count = 144;
static const size_t b96_count = 144;
static const size_t b97_count = 144;
static const size_t b98_count = 24;
static const size_t b99_count = 24;
static const size_t b100_count = 144;
static const size_t b101_count = 144;
static const size_t b102_count = 144;
static const size_t b103_count = 144;
static const size_t b104_count = 40;
static const size_t b105_count = 40;
static const size_t b106_count = 240;
static const size_t b107_count = 240;
static const size_t b108_count = 240;
static const size_t b109_count = 240;
static const size_t b110_count = 40;
static const size_t b111_count = 40;
static const size_t b112_count = 240;
static const size_t b113_count = 240;
static const size_t b114_count = 240;
static const size_t b115_count = 240;
static const size_t b116_count = 80;
static const size_t b117_count = 80;
static const size_t b118_count = 480;
static const size_t b119_count = 480;
static const size_t b120_count = 480;
static const size_t b121_count = 480;
static const size_t b122_count = 80;
static const size_t b123_count = 80;
static const size_t b124_count = 480;
static const size_t b125_count = 480;
static const size_t b126_count = 480;
static const size_t b127_count = 480;
static const size_t b128_count = 112;
static const size_t b129_count = 112;
static const size_t b130_count = 672;
static const size_t b131_count = 672;
static const size_t b132_count = 672;
static const size_t b133_count = 672;
static const size_t b134_count = 112;
static const size_t b135_count = 112;
static const size_t b136_count = 672;
static const size_t b137_count = 672;
static const size_t b138_count = 672;
static const size_t b139_count = 672;
static const size_t b140_count = 192;
static const size_t b141_count = 192;
static const size_t b142_count = 1152;
static const size_t b143_count = 1152;
static const size_t b144_count = 1152;
static const size_t b145_count = 1152;
static const size_t b146_count = 192;
static const size_t b147_count = 192;
static const size_t b148_count = 1152;
static const size_t b149_count = 1152;
static const size_t b150_count = 1152;
static const size_t b151_count = 1152;
static const size_t b152_count = 192;
static const size_t b153_count = 192;
static const size_t b154_count = 1152;
static const size_t b155_count = 1152;
static const size_t b156_count = 1152;
static const size_t b157_count = 1152;
static const size_t b158_count = 320;
static const size_t b159_count = 320;
static const size_t b160_count = 1280;
static const size_t b161_count = 1280;

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
    snprintf(json_path_buf, sizeof(json_path_buf), "EfficientNetB0_mlir_llvm_%s_timing.json", run_id);
    json_report_path = json_path_buf;
  }

  FILE *wf = fopen(weights_path, "rb");
  if (!wf) {
    fprintf(stderr, "failed to open weights file '%s': ", weights_path);
    perror(NULL);
    return 1;
  }

  float *w1 = read_floats_at(wf, 0, w1_count, "w1");
  float *b1 = read_floats_at(wf, 3712, b1_count, "b1");
  float *b2 = read_floats_at(wf, 3840, b2_count, "b2");
  float *w2 = read_floats_at(wf, 3968, w2_count, "w2");
  float *b3 = read_floats_at(wf, 5376, b3_count, "b3");
  float *b4 = read_floats_at(wf, 5504, b4_count, "b4");
  float *w3 = read_floats_at(wf, 5632, w3_count, "w3");
  float *b5 = read_floats_at(wf, 7808, b5_count, "b5");
  float *b6 = read_floats_at(wf, 7872, b6_count, "b6");
  float *w4 = read_floats_at(wf, 7936, w4_count, "w4");
  float *b7 = read_floats_at(wf, 14848, b7_count, "b7");
  float *b8 = read_floats_at(wf, 15232, b8_count, "b8");
  float *w5 = read_floats_at(wf, 15616, w5_count, "w5");
  float *b9 = read_floats_at(wf, 19840, b9_count, "b9");
  float *b10 = read_floats_at(wf, 20224, b10_count, "b10");
  float *w6 = read_floats_at(wf, 20608, w6_count, "w6");
  float *b11 = read_floats_at(wf, 30016, b11_count, "b11");
  float *b12 = read_floats_at(wf, 30112, b12_count, "b12");
  float *w7 = read_floats_at(wf, 30208, w7_count, "w7");
  float *b13 = read_floats_at(wf, 45184, b13_count, "b13");
  float *b14 = read_floats_at(wf, 45760, b14_count, "b14");
  float *w8 = read_floats_at(wf, 46336, w8_count, "w8");
  float *b15 = read_floats_at(wf, 52672, b15_count, "b15");
  float *b16 = read_floats_at(wf, 53248, b16_count, "b16");
  float *w9 = read_floats_at(wf, 53824, w9_count, "w9");
  float *b17 = read_floats_at(wf, 67840, b17_count, "b17");
  float *b18 = read_floats_at(wf, 67936, b18_count, "b18");
  float *w10 = read_floats_at(wf, 68032, w10_count, "w10");
  float *b19 = read_floats_at(wf, 83008, b19_count, "b19");
  float *b20 = read_floats_at(wf, 83584, b20_count, "b20");
  float *w11 = read_floats_at(wf, 84160, w11_count, "w11");
  float *b21 = read_floats_at(wf, 99712, b21_count, "b21");
  float *b22 = read_floats_at(wf, 100288, b22_count, "b22");
  float *w12 = read_floats_at(wf, 100864, w12_count, "w12");
  float *b23 = read_floats_at(wf, 124224, b23_count, "b23");
  float *b24 = read_floats_at(wf, 124384, b24_count, "b24");
  float *w13 = read_floats_at(wf, 124544, w13_count, "w13");
  float *b25 = read_floats_at(wf, 164864, b25_count, "b25");
  float *b26 = read_floats_at(wf, 165824, b26_count, "b26");
  float *w14 = read_floats_at(wf, 166784, w14_count, "w14");
  float *b27 = read_floats_at(wf, 192704, b27_count, "b27");
  float *b28 = read_floats_at(wf, 193664, b28_count, "b28");
  float *w15 = read_floats_at(wf, 194624, w15_count, "w15");
  float *b29 = read_floats_at(wf, 233344, b29_count, "b29");
  float *b30 = read_floats_at(wf, 233504, b30_count, "b30");
  float *w16 = read_floats_at(wf, 233664, w16_count, "w16");
  float *b31 = read_floats_at(wf, 273984, b31_count, "b31");
  float *b32 = read_floats_at(wf, 274944, b32_count, "b32");
  float *w17 = read_floats_at(wf, 275904, w17_count, "w17");
  float *b33 = read_floats_at(wf, 286464, b33_count, "b33");
  float *b34 = read_floats_at(wf, 287424, b34_count, "b34");
  float *w18 = read_floats_at(wf, 288384, w18_count, "w18");
  float *b35 = read_floats_at(wf, 365824, b35_count, "b35");
  float *b36 = read_floats_at(wf, 366144, b36_count, "b36");
  float *w19 = read_floats_at(wf, 366464, w19_count, "w19");
  float *b37 = read_floats_at(wf, 523904, b37_count, "b37");
  float *b38 = read_floats_at(wf, 525824, b38_count, "b38");
  float *w20 = read_floats_at(wf, 527744, w20_count, "w20");
  float *b39 = read_floats_at(wf, 548864, b39_count, "b39");
  float *b40 = read_floats_at(wf, 550784, b40_count, "b40");
  float *w21 = read_floats_at(wf, 552704, w21_count, "w21");
  float *b41 = read_floats_at(wf, 706944, b41_count, "b41");
  float *b42 = read_floats_at(wf, 707264, b42_count, "b42");
  float *w22 = read_floats_at(wf, 707584, w22_count, "w22");
  float *b43 = read_floats_at(wf, 865024, b43_count, "b43");
  float *b44 = read_floats_at(wf, 866944, b44_count, "b44");
  float *w23 = read_floats_at(wf, 868864, w23_count, "w23");
  float *b45 = read_floats_at(wf, 920704, b45_count, "b45");
  float *b46 = read_floats_at(wf, 922624, b46_count, "b46");
  float *w24 = read_floats_at(wf, 924544, w24_count, "w24");
  float *b47 = read_floats_at(wf, 1140480, b47_count, "b47");
  float *b48 = read_floats_at(wf, 1140928, b48_count, "b48");
  float *w25 = read_floats_at(wf, 1141376, w25_count, "w25");
  float *b49 = read_floats_at(wf, 1447808, b49_count, "b49");
  float *b50 = read_floats_at(wf, 1450496, b50_count, "b50");
  float *w26 = read_floats_at(wf, 1453184, w26_count, "w26");
  float *b51 = read_floats_at(wf, 1525760, b51_count, "b51");
  float *b52 = read_floats_at(wf, 1528448, b52_count, "b52");
  float *w27 = read_floats_at(wf, 1531136, w27_count, "w27");
  float *b53 = read_floats_at(wf, 1833088, b53_count, "b53");
  float *b54 = read_floats_at(wf, 1833536, b54_count, "b54");
  float *w28 = read_floats_at(wf, 1833984, w28_count, "w28");
  float *b55 = read_floats_at(wf, 2140416, b55_count, "b55");
  float *b56 = read_floats_at(wf, 2143104, b56_count, "b56");
  float *w29 = read_floats_at(wf, 2145792, w29_count, "w29");
  float *b57 = read_floats_at(wf, 2218368, b57_count, "b57");
  float *b58 = read_floats_at(wf, 2221056, b58_count, "b58");
  float *w30 = read_floats_at(wf, 2223744, w30_count, "w30");
  float *b59 = read_floats_at(wf, 2741376, b59_count, "b59");
  float *b60 = read_floats_at(wf, 2742144, b60_count, "b60");
  float *w31 = read_floats_at(wf, 2742912, w31_count, "w31");
  float *b61 = read_floats_at(wf, 3636864, b61_count, "b61");
  float *b62 = read_floats_at(wf, 3641472, b62_count, "b62");
  float *w32 = read_floats_at(wf, 3646080, w32_count, "w32");
  float *b63 = read_floats_at(wf, 3770496, b63_count, "b63");
  float *b64 = read_floats_at(wf, 3775104, b64_count, "b64");
  float *w33 = read_floats_at(wf, 3779712, w33_count, "w33");
  float *b65 = read_floats_at(wf, 4665984, b65_count, "b65");
  float *b66 = read_floats_at(wf, 4666752, b66_count, "b66");
  float *w34 = read_floats_at(wf, 4667520, w34_count, "w34");
  float *b67 = read_floats_at(wf, 5561472, b67_count, "b67");
  float *b68 = read_floats_at(wf, 5566080, b68_count, "b68");
  float *w35 = read_floats_at(wf, 5570688, w35_count, "w35");
  float *b69 = read_floats_at(wf, 5695104, b69_count, "b69");
  float *b70 = read_floats_at(wf, 5699712, b70_count, "b70");
  float *w36 = read_floats_at(wf, 5704320, w36_count, "w36");
  float *b71 = read_floats_at(wf, 6590592, b71_count, "b71");
  float *b72 = read_floats_at(wf, 6591360, b72_count, "b72");
  float *w37 = read_floats_at(wf, 6592128, w37_count, "w37");
  float *b73 = read_floats_at(wf, 7486080, b73_count, "b73");
  float *b74 = read_floats_at(wf, 7490688, b74_count, "b74");
  float *w38 = read_floats_at(wf, 7495296, w38_count, "w38");
  float *b75 = read_floats_at(wf, 7545984, b75_count, "b75");
  float *b76 = read_floats_at(wf, 7550592, b76_count, "b76");
  float *w39 = read_floats_at(wf, 7555200, w39_count, "w39");
  float *b77 = read_floats_at(wf, 9032320, b77_count, "b77");
  float *b78 = read_floats_at(wf, 9033600, b78_count, "b78");
  float *w40 = read_floats_at(wf, 9034880, w40_count, "w40");
  float *b79 = read_floats_at(wf, 10683520, b79_count, "b79");
  float *b80 = read_floats_at(wf, 10688640, b80_count, "b80");
  float *w41 = read_floats_at(wf, 10693760, w41_count, "w41");
  float *b81 = read_floats_at(wf, 15813760, b81_count, "b81");
  float *b82 = read_floats_at(wf, 3456, b82_count, "b82");
  float *b83 = read_floats_at(wf, 3584, b83_count, "b83");
  float *b84 = read_floats_at(wf, 5120, b84_count, "b84");
  float *b85 = read_floats_at(wf, 5248, b85_count, "b85");
  float *b86 = read_floats_at(wf, 7680, b86_count, "b86");
  float *b87 = read_floats_at(wf, 7744, b87_count, "b87");
  float *b88 = read_floats_at(wf, 14080, b88_count, "b88");
  float *b89 = read_floats_at(wf, 14464, b89_count, "b89");
  float *b90 = read_floats_at(wf, 19072, b90_count, "b90");
  float *b91 = read_floats_at(wf, 19456, b91_count, "b91");
  float *b92 = read_floats_at(wf, 29824, b92_count, "b92");
  float *b93 = read_floats_at(wf, 29920, b93_count, "b93");
  float *b94 = read_floats_at(wf, 44032, b94_count, "b94");
  float *b95 = read_floats_at(wf, 44608, b95_count, "b95");
  float *b96 = read_floats_at(wf, 51520, b96_count, "b96");
  float *b97 = read_floats_at(wf, 52096, b97_count, "b97");
  float *b98 = read_floats_at(wf, 67648, b98_count, "b98");
  float *b99 = read_floats_at(wf, 67744, b99_count, "b99");
  float *b100 = read_floats_at(wf, 81856, b100_count, "b100");
  float *b101 = read_floats_at(wf, 82432, b101_count, "b101");
  float *b102 = read_floats_at(wf, 98560, b102_count, "b102");
  float *b103 = read_floats_at(wf, 99136, b103_count, "b103");
  float *b104 = read_floats_at(wf, 123904, b104_count, "b104");
  float *b105 = read_floats_at(wf, 124064, b105_count, "b105");
  float *b106 = read_floats_at(wf, 162944, b106_count, "b106");
  float *b107 = read_floats_at(wf, 163904, b107_count, "b107");
  float *b108 = read_floats_at(wf, 190784, b108_count, "b108");
  float *b109 = read_floats_at(wf, 191744, b109_count, "b109");
  float *b110 = read_floats_at(wf, 233024, b110_count, "b110");
  float *b111 = read_floats_at(wf, 233184, b111_count, "b111");
  float *b112 = read_floats_at(wf, 272064, b112_count, "b112");
  float *b113 = read_floats_at(wf, 273024, b113_count, "b113");
  float *b114 = read_floats_at(wf, 284544, b114_count, "b114");
  float *b115 = read_floats_at(wf, 285504, b115_count, "b115");
  float *b116 = read_floats_at(wf, 365184, b116_count, "b116");
  float *b117 = read_floats_at(wf, 365504, b117_count, "b117");
  float *b118 = read_floats_at(wf, 520064, b118_count, "b118");
  float *b119 = read_floats_at(wf, 521984, b119_count, "b119");
  float *b120 = read_floats_at(wf, 545024, b120_count, "b120");
  float *b121 = read_floats_at(wf, 546944, b121_count, "b121");
  float *b122 = read_floats_at(wf, 706304, b122_count, "b122");
  float *b123 = read_floats_at(wf, 706624, b123_count, "b123");
  float *b124 = read_floats_at(wf, 861184, b124_count, "b124");
  float *b125 = read_floats_at(wf, 863104, b125_count, "b125");
  float *b126 = read_floats_at(wf, 916864, b126_count, "b126");
  float *b127 = read_floats_at(wf, 918784, b127_count, "b127");
  float *b128 = read_floats_at(wf, 1139584, b128_count, "b128");
  float *b129 = read_floats_at(wf, 1140032, b129_count, "b129");
  float *b130 = read_floats_at(wf, 1442432, b130_count, "b130");
  float *b131 = read_floats_at(wf, 1445120, b131_count, "b131");
  float *b132 = read_floats_at(wf, 1520384, b132_count, "b132");
  float *b133 = read_floats_at(wf, 1523072, b133_count, "b133");
  float *b134 = read_floats_at(wf, 1832192, b134_count, "b134");
  float *b135 = read_floats_at(wf, 1832640, b135_count, "b135");
  float *b136 = read_floats_at(wf, 2135040, b136_count, "b136");
  float *b137 = read_floats_at(wf, 2137728, b137_count, "b137");
  float *b138 = read_floats_at(wf, 2212992, b138_count, "b138");
  float *b139 = read_floats_at(wf, 2215680, b139_count, "b139");
  float *b140 = read_floats_at(wf, 2739840, b140_count, "b140");
  float *b141 = read_floats_at(wf, 2740608, b141_count, "b141");
  float *b142 = read_floats_at(wf, 3627648, b142_count, "b142");
  float *b143 = read_floats_at(wf, 3632256, b143_count, "b143");
  float *b144 = read_floats_at(wf, 3761280, b144_count, "b144");
  float *b145 = read_floats_at(wf, 3765888, b145_count, "b145");
  float *b146 = read_floats_at(wf, 4664448, b146_count, "b146");
  float *b147 = read_floats_at(wf, 4665216, b147_count, "b147");
  float *b148 = read_floats_at(wf, 5552256, b148_count, "b148");
  float *b149 = read_floats_at(wf, 5556864, b149_count, "b149");
  float *b150 = read_floats_at(wf, 5685888, b150_count, "b150");
  float *b151 = read_floats_at(wf, 5690496, b151_count, "b151");
  float *b152 = read_floats_at(wf, 6589056, b152_count, "b152");
  float *b153 = read_floats_at(wf, 6589824, b153_count, "b153");
  float *b154 = read_floats_at(wf, 7476864, b154_count, "b154");
  float *b155 = read_floats_at(wf, 7481472, b155_count, "b155");
  float *b156 = read_floats_at(wf, 7536768, b156_count, "b156");
  float *b157 = read_floats_at(wf, 7541376, b157_count, "b157");
  float *b158 = read_floats_at(wf, 9029760, b158_count, "b158");
  float *b159 = read_floats_at(wf, 9031040, b159_count, "b159");
  float *b160 = read_floats_at(wf, 10673280, b160_count, "b160");
  float *b161 = read_floats_at(wf, 10678400, b161_count, "b161");
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
      memref2d out = EfficientNetB0(
          x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        w2, w2, 0,
        32, 1, 3, 3,
        9, 9, 3, 1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w3, w3, 0,
        16, 32, 1, 1,
        32, 1, 1, 1,
        b5, b5, 0,
        16,
        1,
        b6, b6, 0,
        16,
        1,
        w4, w4, 0,
        96, 16, 1, 1,
        16, 1, 1, 1,
        b7, b7, 0,
        96,
        1,
        b8, b8, 0,
        96,
        1,
        w5, w5, 0,
        96, 1, 3, 3,
        9, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        w6, w6, 0,
        24, 96, 1, 1,
        96, 1, 1, 1,
        b11, b11, 0,
        24,
        1,
        b12, b12, 0,
        24,
        1,
        w7, w7, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b13, b13, 0,
        144,
        1,
        b14, b14, 0,
        144,
        1,
        w8, w8, 0,
        144, 1, 3, 3,
        9, 9, 3, 1,
        b15, b15, 0,
        144,
        1,
        b16, b16, 0,
        144,
        1,
        w9, w9, 0,
        24, 144, 1, 1,
        144, 1, 1, 1,
        b17, b17, 0,
        24,
        1,
        b18, b18, 0,
        24,
        1,
        w10, w10, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b19, b19, 0,
        144,
        1,
        b20, b20, 0,
        144,
        1,
        w11, w11, 0,
        144, 1, 5, 5,
        25, 25, 5, 1,
        b21, b21, 0,
        144,
        1,
        b22, b22, 0,
        144,
        1,
        w12, w12, 0,
        40, 144, 1, 1,
        144, 1, 1, 1,
        b23, b23, 0,
        40,
        1,
        b24, b24, 0,
        40,
        1,
        w13, w13, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b25, b25, 0,
        240,
        1,
        b26, b26, 0,
        240,
        1,
        w14, w14, 0,
        240, 1, 5, 5,
        25, 25, 5, 1,
        b27, b27, 0,
        240,
        1,
        b28, b28, 0,
        240,
        1,
        w15, w15, 0,
        40, 240, 1, 1,
        240, 1, 1, 1,
        b29, b29, 0,
        40,
        1,
        b30, b30, 0,
        40,
        1,
        w16, w16, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b31, b31, 0,
        240,
        1,
        b32, b32, 0,
        240,
        1,
        w17, w17, 0,
        240, 1, 3, 3,
        9, 9, 3, 1,
        b33, b33, 0,
        240,
        1,
        b34, b34, 0,
        240,
        1,
        w18, w18, 0,
        80, 240, 1, 1,
        240, 1, 1, 1,
        b35, b35, 0,
        80,
        1,
        b36, b36, 0,
        80,
        1,
        w19, w19, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b37, b37, 0,
        480,
        1,
        b38, b38, 0,
        480,
        1,
        w20, w20, 0,
        480, 1, 3, 3,
        9, 9, 3, 1,
        b39, b39, 0,
        480,
        1,
        b40, b40, 0,
        480,
        1,
        w21, w21, 0,
        80, 480, 1, 1,
        480, 1, 1, 1,
        b41, b41, 0,
        80,
        1,
        b42, b42, 0,
        80,
        1,
        w22, w22, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b43, b43, 0,
        480,
        1,
        b44, b44, 0,
        480,
        1,
        w23, w23, 0,
        480, 1, 5, 5,
        25, 25, 5, 1,
        b45, b45, 0,
        480,
        1,
        b46, b46, 0,
        480,
        1,
        w24, w24, 0,
        112, 480, 1, 1,
        480, 1, 1, 1,
        b47, b47, 0,
        112,
        1,
        b48, b48, 0,
        112,
        1,
        w25, w25, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b49, b49, 0,
        672,
        1,
        b50, b50, 0,
        672,
        1,
        w26, w26, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b51, b51, 0,
        672,
        1,
        b52, b52, 0,
        672,
        1,
        w27, w27, 0,
        112, 672, 1, 1,
        672, 1, 1, 1,
        b53, b53, 0,
        112,
        1,
        b54, b54, 0,
        112,
        1,
        w28, w28, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b55, b55, 0,
        672,
        1,
        b56, b56, 0,
        672,
        1,
        w29, w29, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b57, b57, 0,
        672,
        1,
        b58, b58, 0,
        672,
        1,
        w30, w30, 0,
        192, 672, 1, 1,
        672, 1, 1, 1,
        b59, b59, 0,
        192,
        1,
        b60, b60, 0,
        192,
        1,
        w31, w31, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b61, b61, 0,
        1152,
        1,
        b62, b62, 0,
        1152,
        1,
        w32, w32, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b63, b63, 0,
        1152,
        1,
        b64, b64, 0,
        1152,
        1,
        w33, w33, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b65, b65, 0,
        192,
        1,
        b66, b66, 0,
        192,
        1,
        w34, w34, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b67, b67, 0,
        1152,
        1,
        b68, b68, 0,
        1152,
        1,
        w35, w35, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b69, b69, 0,
        1152,
        1,
        b70, b70, 0,
        1152,
        1,
        w36, w36, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b71, b71, 0,
        192,
        1,
        b72, b72, 0,
        192,
        1,
        w37, w37, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b73, b73, 0,
        1152,
        1,
        b74, b74, 0,
        1152,
        1,
        w38, w38, 0,
        1152, 1, 3, 3,
        9, 9, 3, 1,
        b75, b75, 0,
        1152,
        1,
        b76, b76, 0,
        1152,
        1,
        w39, w39, 0,
        320, 1152, 1, 1,
        1152, 1, 1, 1,
        b77, b77, 0,
        320,
        1,
        b78, b78, 0,
        320,
        1,
        w40, w40, 0,
        1280, 320, 1, 1,
        320, 1, 1, 1,
        b79, b79, 0,
        1280,
        1,
        b80, b80, 0,
        1280,
        1,
        w41, w41, 0,
        1000, 1280,
        1280, 1,
        b81, b81, 0,
        1000,
        1,
        b82, b82, 0,
        32,
        1,
        b83, b83, 0,
        32,
        1,
        b84, b84, 0,
        32,
        1,
        b85, b85, 0,
        32,
        1,
        b86, b86, 0,
        16,
        1,
        b87, b87, 0,
        16,
        1,
        b88, b88, 0,
        96,
        1,
        b89, b89, 0,
        96,
        1,
        b90, b90, 0,
        96,
        1,
        b91, b91, 0,
        96,
        1,
        b92, b92, 0,
        24,
        1,
        b93, b93, 0,
        24,
        1,
        b94, b94, 0,
        144,
        1,
        b95, b95, 0,
        144,
        1,
        b96, b96, 0,
        144,
        1,
        b97, b97, 0,
        144,
        1,
        b98, b98, 0,
        24,
        1,
        b99, b99, 0,
        24,
        1,
        b100, b100, 0,
        144,
        1,
        b101, b101, 0,
        144,
        1,
        b102, b102, 0,
        144,
        1,
        b103, b103, 0,
        144,
        1,
        b104, b104, 0,
        40,
        1,
        b105, b105, 0,
        40,
        1,
        b106, b106, 0,
        240,
        1,
        b107, b107, 0,
        240,
        1,
        b108, b108, 0,
        240,
        1,
        b109, b109, 0,
        240,
        1,
        b110, b110, 0,
        40,
        1,
        b111, b111, 0,
        40,
        1,
        b112, b112, 0,
        240,
        1,
        b113, b113, 0,
        240,
        1,
        b114, b114, 0,
        240,
        1,
        b115, b115, 0,
        240,
        1,
        b116, b116, 0,
        80,
        1,
        b117, b117, 0,
        80,
        1,
        b118, b118, 0,
        480,
        1,
        b119, b119, 0,
        480,
        1,
        b120, b120, 0,
        480,
        1,
        b121, b121, 0,
        480,
        1,
        b122, b122, 0,
        80,
        1,
        b123, b123, 0,
        80,
        1,
        b124, b124, 0,
        480,
        1,
        b125, b125, 0,
        480,
        1,
        b126, b126, 0,
        480,
        1,
        b127, b127, 0,
        480,
        1,
        b128, b128, 0,
        112,
        1,
        b129, b129, 0,
        112,
        1,
        b130, b130, 0,
        672,
        1,
        b131, b131, 0,
        672,
        1,
        b132, b132, 0,
        672,
        1,
        b133, b133, 0,
        672,
        1,
        b134, b134, 0,
        112,
        1,
        b135, b135, 0,
        112,
        1,
        b136, b136, 0,
        672,
        1,
        b137, b137, 0,
        672,
        1,
        b138, b138, 0,
        672,
        1,
        b139, b139, 0,
        672,
        1,
        b140, b140, 0,
        192,
        1,
        b141, b141, 0,
        192,
        1,
        b142, b142, 0,
        1152,
        1,
        b143, b143, 0,
        1152,
        1,
        b144, b144, 0,
        1152,
        1,
        b145, b145, 0,
        1152,
        1,
        b146, b146, 0,
        192,
        1,
        b147, b147, 0,
        192,
        1,
        b148, b148, 0,
        1152,
        1,
        b149, b149, 0,
        1152,
        1,
        b150, b150, 0,
        1152,
        1,
        b151, b151, 0,
        1152,
        1,
        b152, b152, 0,
        192,
        1,
        b153, b153, 0,
        192,
        1,
        b154, b154, 0,
        1152,
        1,
        b155, b155, 0,
        1152,
        1,
        b156, b156, 0,
        1152,
        1,
        b157, b157, 0,
        1152,
        1,
        b158, b158, 0,
        320,
        1,
        b159, b159, 0,
        320,
        1,
        b160, b160, 0,
        1280,
        1,
        b161, b161, 0,
        1280,
        1);
      free(out.alloc);
      _exit(0);
    }
    await_child(p, "warm-up");
  } else {
    memref2d out = EfficientNetB0(
        x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        w2, w2, 0,
        32, 1, 3, 3,
        9, 9, 3, 1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w3, w3, 0,
        16, 32, 1, 1,
        32, 1, 1, 1,
        b5, b5, 0,
        16,
        1,
        b6, b6, 0,
        16,
        1,
        w4, w4, 0,
        96, 16, 1, 1,
        16, 1, 1, 1,
        b7, b7, 0,
        96,
        1,
        b8, b8, 0,
        96,
        1,
        w5, w5, 0,
        96, 1, 3, 3,
        9, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        w6, w6, 0,
        24, 96, 1, 1,
        96, 1, 1, 1,
        b11, b11, 0,
        24,
        1,
        b12, b12, 0,
        24,
        1,
        w7, w7, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b13, b13, 0,
        144,
        1,
        b14, b14, 0,
        144,
        1,
        w8, w8, 0,
        144, 1, 3, 3,
        9, 9, 3, 1,
        b15, b15, 0,
        144,
        1,
        b16, b16, 0,
        144,
        1,
        w9, w9, 0,
        24, 144, 1, 1,
        144, 1, 1, 1,
        b17, b17, 0,
        24,
        1,
        b18, b18, 0,
        24,
        1,
        w10, w10, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b19, b19, 0,
        144,
        1,
        b20, b20, 0,
        144,
        1,
        w11, w11, 0,
        144, 1, 5, 5,
        25, 25, 5, 1,
        b21, b21, 0,
        144,
        1,
        b22, b22, 0,
        144,
        1,
        w12, w12, 0,
        40, 144, 1, 1,
        144, 1, 1, 1,
        b23, b23, 0,
        40,
        1,
        b24, b24, 0,
        40,
        1,
        w13, w13, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b25, b25, 0,
        240,
        1,
        b26, b26, 0,
        240,
        1,
        w14, w14, 0,
        240, 1, 5, 5,
        25, 25, 5, 1,
        b27, b27, 0,
        240,
        1,
        b28, b28, 0,
        240,
        1,
        w15, w15, 0,
        40, 240, 1, 1,
        240, 1, 1, 1,
        b29, b29, 0,
        40,
        1,
        b30, b30, 0,
        40,
        1,
        w16, w16, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b31, b31, 0,
        240,
        1,
        b32, b32, 0,
        240,
        1,
        w17, w17, 0,
        240, 1, 3, 3,
        9, 9, 3, 1,
        b33, b33, 0,
        240,
        1,
        b34, b34, 0,
        240,
        1,
        w18, w18, 0,
        80, 240, 1, 1,
        240, 1, 1, 1,
        b35, b35, 0,
        80,
        1,
        b36, b36, 0,
        80,
        1,
        w19, w19, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b37, b37, 0,
        480,
        1,
        b38, b38, 0,
        480,
        1,
        w20, w20, 0,
        480, 1, 3, 3,
        9, 9, 3, 1,
        b39, b39, 0,
        480,
        1,
        b40, b40, 0,
        480,
        1,
        w21, w21, 0,
        80, 480, 1, 1,
        480, 1, 1, 1,
        b41, b41, 0,
        80,
        1,
        b42, b42, 0,
        80,
        1,
        w22, w22, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b43, b43, 0,
        480,
        1,
        b44, b44, 0,
        480,
        1,
        w23, w23, 0,
        480, 1, 5, 5,
        25, 25, 5, 1,
        b45, b45, 0,
        480,
        1,
        b46, b46, 0,
        480,
        1,
        w24, w24, 0,
        112, 480, 1, 1,
        480, 1, 1, 1,
        b47, b47, 0,
        112,
        1,
        b48, b48, 0,
        112,
        1,
        w25, w25, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b49, b49, 0,
        672,
        1,
        b50, b50, 0,
        672,
        1,
        w26, w26, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b51, b51, 0,
        672,
        1,
        b52, b52, 0,
        672,
        1,
        w27, w27, 0,
        112, 672, 1, 1,
        672, 1, 1, 1,
        b53, b53, 0,
        112,
        1,
        b54, b54, 0,
        112,
        1,
        w28, w28, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b55, b55, 0,
        672,
        1,
        b56, b56, 0,
        672,
        1,
        w29, w29, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b57, b57, 0,
        672,
        1,
        b58, b58, 0,
        672,
        1,
        w30, w30, 0,
        192, 672, 1, 1,
        672, 1, 1, 1,
        b59, b59, 0,
        192,
        1,
        b60, b60, 0,
        192,
        1,
        w31, w31, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b61, b61, 0,
        1152,
        1,
        b62, b62, 0,
        1152,
        1,
        w32, w32, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b63, b63, 0,
        1152,
        1,
        b64, b64, 0,
        1152,
        1,
        w33, w33, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b65, b65, 0,
        192,
        1,
        b66, b66, 0,
        192,
        1,
        w34, w34, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b67, b67, 0,
        1152,
        1,
        b68, b68, 0,
        1152,
        1,
        w35, w35, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b69, b69, 0,
        1152,
        1,
        b70, b70, 0,
        1152,
        1,
        w36, w36, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b71, b71, 0,
        192,
        1,
        b72, b72, 0,
        192,
        1,
        w37, w37, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b73, b73, 0,
        1152,
        1,
        b74, b74, 0,
        1152,
        1,
        w38, w38, 0,
        1152, 1, 3, 3,
        9, 9, 3, 1,
        b75, b75, 0,
        1152,
        1,
        b76, b76, 0,
        1152,
        1,
        w39, w39, 0,
        320, 1152, 1, 1,
        1152, 1, 1, 1,
        b77, b77, 0,
        320,
        1,
        b78, b78, 0,
        320,
        1,
        w40, w40, 0,
        1280, 320, 1, 1,
        320, 1, 1, 1,
        b79, b79, 0,
        1280,
        1,
        b80, b80, 0,
        1280,
        1,
        w41, w41, 0,
        1000, 1280,
        1280, 1,
        b81, b81, 0,
        1000,
        1,
        b82, b82, 0,
        32,
        1,
        b83, b83, 0,
        32,
        1,
        b84, b84, 0,
        32,
        1,
        b85, b85, 0,
        32,
        1,
        b86, b86, 0,
        16,
        1,
        b87, b87, 0,
        16,
        1,
        b88, b88, 0,
        96,
        1,
        b89, b89, 0,
        96,
        1,
        b90, b90, 0,
        96,
        1,
        b91, b91, 0,
        96,
        1,
        b92, b92, 0,
        24,
        1,
        b93, b93, 0,
        24,
        1,
        b94, b94, 0,
        144,
        1,
        b95, b95, 0,
        144,
        1,
        b96, b96, 0,
        144,
        1,
        b97, b97, 0,
        144,
        1,
        b98, b98, 0,
        24,
        1,
        b99, b99, 0,
        24,
        1,
        b100, b100, 0,
        144,
        1,
        b101, b101, 0,
        144,
        1,
        b102, b102, 0,
        144,
        1,
        b103, b103, 0,
        144,
        1,
        b104, b104, 0,
        40,
        1,
        b105, b105, 0,
        40,
        1,
        b106, b106, 0,
        240,
        1,
        b107, b107, 0,
        240,
        1,
        b108, b108, 0,
        240,
        1,
        b109, b109, 0,
        240,
        1,
        b110, b110, 0,
        40,
        1,
        b111, b111, 0,
        40,
        1,
        b112, b112, 0,
        240,
        1,
        b113, b113, 0,
        240,
        1,
        b114, b114, 0,
        240,
        1,
        b115, b115, 0,
        240,
        1,
        b116, b116, 0,
        80,
        1,
        b117, b117, 0,
        80,
        1,
        b118, b118, 0,
        480,
        1,
        b119, b119, 0,
        480,
        1,
        b120, b120, 0,
        480,
        1,
        b121, b121, 0,
        480,
        1,
        b122, b122, 0,
        80,
        1,
        b123, b123, 0,
        80,
        1,
        b124, b124, 0,
        480,
        1,
        b125, b125, 0,
        480,
        1,
        b126, b126, 0,
        480,
        1,
        b127, b127, 0,
        480,
        1,
        b128, b128, 0,
        112,
        1,
        b129, b129, 0,
        112,
        1,
        b130, b130, 0,
        672,
        1,
        b131, b131, 0,
        672,
        1,
        b132, b132, 0,
        672,
        1,
        b133, b133, 0,
        672,
        1,
        b134, b134, 0,
        112,
        1,
        b135, b135, 0,
        112,
        1,
        b136, b136, 0,
        672,
        1,
        b137, b137, 0,
        672,
        1,
        b138, b138, 0,
        672,
        1,
        b139, b139, 0,
        672,
        1,
        b140, b140, 0,
        192,
        1,
        b141, b141, 0,
        192,
        1,
        b142, b142, 0,
        1152,
        1,
        b143, b143, 0,
        1152,
        1,
        b144, b144, 0,
        1152,
        1,
        b145, b145, 0,
        1152,
        1,
        b146, b146, 0,
        192,
        1,
        b147, b147, 0,
        192,
        1,
        b148, b148, 0,
        1152,
        1,
        b149, b149, 0,
        1152,
        1,
        b150, b150, 0,
        1152,
        1,
        b151, b151, 0,
        1152,
        1,
        b152, b152, 0,
        192,
        1,
        b153, b153, 0,
        192,
        1,
        b154, b154, 0,
        1152,
        1,
        b155, b155, 0,
        1152,
        1,
        b156, b156, 0,
        1152,
        1,
        b157, b157, 0,
        1152,
        1,
        b158, b158, 0,
        320,
        1,
        b159, b159, 0,
        320,
        1,
        b160, b160, 0,
        1280,
        1,
        b161, b161, 0,
        1280,
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
        memref2d cur = EfficientNetB0(
            x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        w2, w2, 0,
        32, 1, 3, 3,
        9, 9, 3, 1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w3, w3, 0,
        16, 32, 1, 1,
        32, 1, 1, 1,
        b5, b5, 0,
        16,
        1,
        b6, b6, 0,
        16,
        1,
        w4, w4, 0,
        96, 16, 1, 1,
        16, 1, 1, 1,
        b7, b7, 0,
        96,
        1,
        b8, b8, 0,
        96,
        1,
        w5, w5, 0,
        96, 1, 3, 3,
        9, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        w6, w6, 0,
        24, 96, 1, 1,
        96, 1, 1, 1,
        b11, b11, 0,
        24,
        1,
        b12, b12, 0,
        24,
        1,
        w7, w7, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b13, b13, 0,
        144,
        1,
        b14, b14, 0,
        144,
        1,
        w8, w8, 0,
        144, 1, 3, 3,
        9, 9, 3, 1,
        b15, b15, 0,
        144,
        1,
        b16, b16, 0,
        144,
        1,
        w9, w9, 0,
        24, 144, 1, 1,
        144, 1, 1, 1,
        b17, b17, 0,
        24,
        1,
        b18, b18, 0,
        24,
        1,
        w10, w10, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b19, b19, 0,
        144,
        1,
        b20, b20, 0,
        144,
        1,
        w11, w11, 0,
        144, 1, 5, 5,
        25, 25, 5, 1,
        b21, b21, 0,
        144,
        1,
        b22, b22, 0,
        144,
        1,
        w12, w12, 0,
        40, 144, 1, 1,
        144, 1, 1, 1,
        b23, b23, 0,
        40,
        1,
        b24, b24, 0,
        40,
        1,
        w13, w13, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b25, b25, 0,
        240,
        1,
        b26, b26, 0,
        240,
        1,
        w14, w14, 0,
        240, 1, 5, 5,
        25, 25, 5, 1,
        b27, b27, 0,
        240,
        1,
        b28, b28, 0,
        240,
        1,
        w15, w15, 0,
        40, 240, 1, 1,
        240, 1, 1, 1,
        b29, b29, 0,
        40,
        1,
        b30, b30, 0,
        40,
        1,
        w16, w16, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b31, b31, 0,
        240,
        1,
        b32, b32, 0,
        240,
        1,
        w17, w17, 0,
        240, 1, 3, 3,
        9, 9, 3, 1,
        b33, b33, 0,
        240,
        1,
        b34, b34, 0,
        240,
        1,
        w18, w18, 0,
        80, 240, 1, 1,
        240, 1, 1, 1,
        b35, b35, 0,
        80,
        1,
        b36, b36, 0,
        80,
        1,
        w19, w19, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b37, b37, 0,
        480,
        1,
        b38, b38, 0,
        480,
        1,
        w20, w20, 0,
        480, 1, 3, 3,
        9, 9, 3, 1,
        b39, b39, 0,
        480,
        1,
        b40, b40, 0,
        480,
        1,
        w21, w21, 0,
        80, 480, 1, 1,
        480, 1, 1, 1,
        b41, b41, 0,
        80,
        1,
        b42, b42, 0,
        80,
        1,
        w22, w22, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b43, b43, 0,
        480,
        1,
        b44, b44, 0,
        480,
        1,
        w23, w23, 0,
        480, 1, 5, 5,
        25, 25, 5, 1,
        b45, b45, 0,
        480,
        1,
        b46, b46, 0,
        480,
        1,
        w24, w24, 0,
        112, 480, 1, 1,
        480, 1, 1, 1,
        b47, b47, 0,
        112,
        1,
        b48, b48, 0,
        112,
        1,
        w25, w25, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b49, b49, 0,
        672,
        1,
        b50, b50, 0,
        672,
        1,
        w26, w26, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b51, b51, 0,
        672,
        1,
        b52, b52, 0,
        672,
        1,
        w27, w27, 0,
        112, 672, 1, 1,
        672, 1, 1, 1,
        b53, b53, 0,
        112,
        1,
        b54, b54, 0,
        112,
        1,
        w28, w28, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b55, b55, 0,
        672,
        1,
        b56, b56, 0,
        672,
        1,
        w29, w29, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b57, b57, 0,
        672,
        1,
        b58, b58, 0,
        672,
        1,
        w30, w30, 0,
        192, 672, 1, 1,
        672, 1, 1, 1,
        b59, b59, 0,
        192,
        1,
        b60, b60, 0,
        192,
        1,
        w31, w31, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b61, b61, 0,
        1152,
        1,
        b62, b62, 0,
        1152,
        1,
        w32, w32, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b63, b63, 0,
        1152,
        1,
        b64, b64, 0,
        1152,
        1,
        w33, w33, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b65, b65, 0,
        192,
        1,
        b66, b66, 0,
        192,
        1,
        w34, w34, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b67, b67, 0,
        1152,
        1,
        b68, b68, 0,
        1152,
        1,
        w35, w35, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b69, b69, 0,
        1152,
        1,
        b70, b70, 0,
        1152,
        1,
        w36, w36, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b71, b71, 0,
        192,
        1,
        b72, b72, 0,
        192,
        1,
        w37, w37, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b73, b73, 0,
        1152,
        1,
        b74, b74, 0,
        1152,
        1,
        w38, w38, 0,
        1152, 1, 3, 3,
        9, 9, 3, 1,
        b75, b75, 0,
        1152,
        1,
        b76, b76, 0,
        1152,
        1,
        w39, w39, 0,
        320, 1152, 1, 1,
        1152, 1, 1, 1,
        b77, b77, 0,
        320,
        1,
        b78, b78, 0,
        320,
        1,
        w40, w40, 0,
        1280, 320, 1, 1,
        320, 1, 1, 1,
        b79, b79, 0,
        1280,
        1,
        b80, b80, 0,
        1280,
        1,
        w41, w41, 0,
        1000, 1280,
        1280, 1,
        b81, b81, 0,
        1000,
        1,
        b82, b82, 0,
        32,
        1,
        b83, b83, 0,
        32,
        1,
        b84, b84, 0,
        32,
        1,
        b85, b85, 0,
        32,
        1,
        b86, b86, 0,
        16,
        1,
        b87, b87, 0,
        16,
        1,
        b88, b88, 0,
        96,
        1,
        b89, b89, 0,
        96,
        1,
        b90, b90, 0,
        96,
        1,
        b91, b91, 0,
        96,
        1,
        b92, b92, 0,
        24,
        1,
        b93, b93, 0,
        24,
        1,
        b94, b94, 0,
        144,
        1,
        b95, b95, 0,
        144,
        1,
        b96, b96, 0,
        144,
        1,
        b97, b97, 0,
        144,
        1,
        b98, b98, 0,
        24,
        1,
        b99, b99, 0,
        24,
        1,
        b100, b100, 0,
        144,
        1,
        b101, b101, 0,
        144,
        1,
        b102, b102, 0,
        144,
        1,
        b103, b103, 0,
        144,
        1,
        b104, b104, 0,
        40,
        1,
        b105, b105, 0,
        40,
        1,
        b106, b106, 0,
        240,
        1,
        b107, b107, 0,
        240,
        1,
        b108, b108, 0,
        240,
        1,
        b109, b109, 0,
        240,
        1,
        b110, b110, 0,
        40,
        1,
        b111, b111, 0,
        40,
        1,
        b112, b112, 0,
        240,
        1,
        b113, b113, 0,
        240,
        1,
        b114, b114, 0,
        240,
        1,
        b115, b115, 0,
        240,
        1,
        b116, b116, 0,
        80,
        1,
        b117, b117, 0,
        80,
        1,
        b118, b118, 0,
        480,
        1,
        b119, b119, 0,
        480,
        1,
        b120, b120, 0,
        480,
        1,
        b121, b121, 0,
        480,
        1,
        b122, b122, 0,
        80,
        1,
        b123, b123, 0,
        80,
        1,
        b124, b124, 0,
        480,
        1,
        b125, b125, 0,
        480,
        1,
        b126, b126, 0,
        480,
        1,
        b127, b127, 0,
        480,
        1,
        b128, b128, 0,
        112,
        1,
        b129, b129, 0,
        112,
        1,
        b130, b130, 0,
        672,
        1,
        b131, b131, 0,
        672,
        1,
        b132, b132, 0,
        672,
        1,
        b133, b133, 0,
        672,
        1,
        b134, b134, 0,
        112,
        1,
        b135, b135, 0,
        112,
        1,
        b136, b136, 0,
        672,
        1,
        b137, b137, 0,
        672,
        1,
        b138, b138, 0,
        672,
        1,
        b139, b139, 0,
        672,
        1,
        b140, b140, 0,
        192,
        1,
        b141, b141, 0,
        192,
        1,
        b142, b142, 0,
        1152,
        1,
        b143, b143, 0,
        1152,
        1,
        b144, b144, 0,
        1152,
        1,
        b145, b145, 0,
        1152,
        1,
        b146, b146, 0,
        192,
        1,
        b147, b147, 0,
        192,
        1,
        b148, b148, 0,
        1152,
        1,
        b149, b149, 0,
        1152,
        1,
        b150, b150, 0,
        1152,
        1,
        b151, b151, 0,
        1152,
        1,
        b152, b152, 0,
        192,
        1,
        b153, b153, 0,
        192,
        1,
        b154, b154, 0,
        1152,
        1,
        b155, b155, 0,
        1152,
        1,
        b156, b156, 0,
        1152,
        1,
        b157, b157, 0,
        1152,
        1,
        b158, b158, 0,
        320,
        1,
        b159, b159, 0,
        320,
        1,
        b160, b160, 0,
        1280,
        1,
        b161, b161, 0,
        1280,
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
      memref2d cur = EfficientNetB0(
          x, x, 0,
        10, 3, 224, 224,
        150528, 50176, 224, 1,
        w1, w1, 0,
        32, 3, 3, 3,
        27, 9, 3, 1,
        b1, b1, 0,
        32,
        1,
        b2, b2, 0,
        32,
        1,
        w2, w2, 0,
        32, 1, 3, 3,
        9, 9, 3, 1,
        b3, b3, 0,
        32,
        1,
        b4, b4, 0,
        32,
        1,
        w3, w3, 0,
        16, 32, 1, 1,
        32, 1, 1, 1,
        b5, b5, 0,
        16,
        1,
        b6, b6, 0,
        16,
        1,
        w4, w4, 0,
        96, 16, 1, 1,
        16, 1, 1, 1,
        b7, b7, 0,
        96,
        1,
        b8, b8, 0,
        96,
        1,
        w5, w5, 0,
        96, 1, 3, 3,
        9, 9, 3, 1,
        b9, b9, 0,
        96,
        1,
        b10, b10, 0,
        96,
        1,
        w6, w6, 0,
        24, 96, 1, 1,
        96, 1, 1, 1,
        b11, b11, 0,
        24,
        1,
        b12, b12, 0,
        24,
        1,
        w7, w7, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b13, b13, 0,
        144,
        1,
        b14, b14, 0,
        144,
        1,
        w8, w8, 0,
        144, 1, 3, 3,
        9, 9, 3, 1,
        b15, b15, 0,
        144,
        1,
        b16, b16, 0,
        144,
        1,
        w9, w9, 0,
        24, 144, 1, 1,
        144, 1, 1, 1,
        b17, b17, 0,
        24,
        1,
        b18, b18, 0,
        24,
        1,
        w10, w10, 0,
        144, 24, 1, 1,
        24, 1, 1, 1,
        b19, b19, 0,
        144,
        1,
        b20, b20, 0,
        144,
        1,
        w11, w11, 0,
        144, 1, 5, 5,
        25, 25, 5, 1,
        b21, b21, 0,
        144,
        1,
        b22, b22, 0,
        144,
        1,
        w12, w12, 0,
        40, 144, 1, 1,
        144, 1, 1, 1,
        b23, b23, 0,
        40,
        1,
        b24, b24, 0,
        40,
        1,
        w13, w13, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b25, b25, 0,
        240,
        1,
        b26, b26, 0,
        240,
        1,
        w14, w14, 0,
        240, 1, 5, 5,
        25, 25, 5, 1,
        b27, b27, 0,
        240,
        1,
        b28, b28, 0,
        240,
        1,
        w15, w15, 0,
        40, 240, 1, 1,
        240, 1, 1, 1,
        b29, b29, 0,
        40,
        1,
        b30, b30, 0,
        40,
        1,
        w16, w16, 0,
        240, 40, 1, 1,
        40, 1, 1, 1,
        b31, b31, 0,
        240,
        1,
        b32, b32, 0,
        240,
        1,
        w17, w17, 0,
        240, 1, 3, 3,
        9, 9, 3, 1,
        b33, b33, 0,
        240,
        1,
        b34, b34, 0,
        240,
        1,
        w18, w18, 0,
        80, 240, 1, 1,
        240, 1, 1, 1,
        b35, b35, 0,
        80,
        1,
        b36, b36, 0,
        80,
        1,
        w19, w19, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b37, b37, 0,
        480,
        1,
        b38, b38, 0,
        480,
        1,
        w20, w20, 0,
        480, 1, 3, 3,
        9, 9, 3, 1,
        b39, b39, 0,
        480,
        1,
        b40, b40, 0,
        480,
        1,
        w21, w21, 0,
        80, 480, 1, 1,
        480, 1, 1, 1,
        b41, b41, 0,
        80,
        1,
        b42, b42, 0,
        80,
        1,
        w22, w22, 0,
        480, 80, 1, 1,
        80, 1, 1, 1,
        b43, b43, 0,
        480,
        1,
        b44, b44, 0,
        480,
        1,
        w23, w23, 0,
        480, 1, 5, 5,
        25, 25, 5, 1,
        b45, b45, 0,
        480,
        1,
        b46, b46, 0,
        480,
        1,
        w24, w24, 0,
        112, 480, 1, 1,
        480, 1, 1, 1,
        b47, b47, 0,
        112,
        1,
        b48, b48, 0,
        112,
        1,
        w25, w25, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b49, b49, 0,
        672,
        1,
        b50, b50, 0,
        672,
        1,
        w26, w26, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b51, b51, 0,
        672,
        1,
        b52, b52, 0,
        672,
        1,
        w27, w27, 0,
        112, 672, 1, 1,
        672, 1, 1, 1,
        b53, b53, 0,
        112,
        1,
        b54, b54, 0,
        112,
        1,
        w28, w28, 0,
        672, 112, 1, 1,
        112, 1, 1, 1,
        b55, b55, 0,
        672,
        1,
        b56, b56, 0,
        672,
        1,
        w29, w29, 0,
        672, 1, 5, 5,
        25, 25, 5, 1,
        b57, b57, 0,
        672,
        1,
        b58, b58, 0,
        672,
        1,
        w30, w30, 0,
        192, 672, 1, 1,
        672, 1, 1, 1,
        b59, b59, 0,
        192,
        1,
        b60, b60, 0,
        192,
        1,
        w31, w31, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b61, b61, 0,
        1152,
        1,
        b62, b62, 0,
        1152,
        1,
        w32, w32, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b63, b63, 0,
        1152,
        1,
        b64, b64, 0,
        1152,
        1,
        w33, w33, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b65, b65, 0,
        192,
        1,
        b66, b66, 0,
        192,
        1,
        w34, w34, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b67, b67, 0,
        1152,
        1,
        b68, b68, 0,
        1152,
        1,
        w35, w35, 0,
        1152, 1, 5, 5,
        25, 25, 5, 1,
        b69, b69, 0,
        1152,
        1,
        b70, b70, 0,
        1152,
        1,
        w36, w36, 0,
        192, 1152, 1, 1,
        1152, 1, 1, 1,
        b71, b71, 0,
        192,
        1,
        b72, b72, 0,
        192,
        1,
        w37, w37, 0,
        1152, 192, 1, 1,
        192, 1, 1, 1,
        b73, b73, 0,
        1152,
        1,
        b74, b74, 0,
        1152,
        1,
        w38, w38, 0,
        1152, 1, 3, 3,
        9, 9, 3, 1,
        b75, b75, 0,
        1152,
        1,
        b76, b76, 0,
        1152,
        1,
        w39, w39, 0,
        320, 1152, 1, 1,
        1152, 1, 1, 1,
        b77, b77, 0,
        320,
        1,
        b78, b78, 0,
        320,
        1,
        w40, w40, 0,
        1280, 320, 1, 1,
        320, 1, 1, 1,
        b79, b79, 0,
        1280,
        1,
        b80, b80, 0,
        1280,
        1,
        w41, w41, 0,
        1000, 1280,
        1280, 1,
        b81, b81, 0,
        1000,
        1,
        b82, b82, 0,
        32,
        1,
        b83, b83, 0,
        32,
        1,
        b84, b84, 0,
        32,
        1,
        b85, b85, 0,
        32,
        1,
        b86, b86, 0,
        16,
        1,
        b87, b87, 0,
        16,
        1,
        b88, b88, 0,
        96,
        1,
        b89, b89, 0,
        96,
        1,
        b90, b90, 0,
        96,
        1,
        b91, b91, 0,
        96,
        1,
        b92, b92, 0,
        24,
        1,
        b93, b93, 0,
        24,
        1,
        b94, b94, 0,
        144,
        1,
        b95, b95, 0,
        144,
        1,
        b96, b96, 0,
        144,
        1,
        b97, b97, 0,
        144,
        1,
        b98, b98, 0,
        24,
        1,
        b99, b99, 0,
        24,
        1,
        b100, b100, 0,
        144,
        1,
        b101, b101, 0,
        144,
        1,
        b102, b102, 0,
        144,
        1,
        b103, b103, 0,
        144,
        1,
        b104, b104, 0,
        40,
        1,
        b105, b105, 0,
        40,
        1,
        b106, b106, 0,
        240,
        1,
        b107, b107, 0,
        240,
        1,
        b108, b108, 0,
        240,
        1,
        b109, b109, 0,
        240,
        1,
        b110, b110, 0,
        40,
        1,
        b111, b111, 0,
        40,
        1,
        b112, b112, 0,
        240,
        1,
        b113, b113, 0,
        240,
        1,
        b114, b114, 0,
        240,
        1,
        b115, b115, 0,
        240,
        1,
        b116, b116, 0,
        80,
        1,
        b117, b117, 0,
        80,
        1,
        b118, b118, 0,
        480,
        1,
        b119, b119, 0,
        480,
        1,
        b120, b120, 0,
        480,
        1,
        b121, b121, 0,
        480,
        1,
        b122, b122, 0,
        80,
        1,
        b123, b123, 0,
        80,
        1,
        b124, b124, 0,
        480,
        1,
        b125, b125, 0,
        480,
        1,
        b126, b126, 0,
        480,
        1,
        b127, b127, 0,
        480,
        1,
        b128, b128, 0,
        112,
        1,
        b129, b129, 0,
        112,
        1,
        b130, b130, 0,
        672,
        1,
        b131, b131, 0,
        672,
        1,
        b132, b132, 0,
        672,
        1,
        b133, b133, 0,
        672,
        1,
        b134, b134, 0,
        112,
        1,
        b135, b135, 0,
        112,
        1,
        b136, b136, 0,
        672,
        1,
        b137, b137, 0,
        672,
        1,
        b138, b138, 0,
        672,
        1,
        b139, b139, 0,
        672,
        1,
        b140, b140, 0,
        192,
        1,
        b141, b141, 0,
        192,
        1,
        b142, b142, 0,
        1152,
        1,
        b143, b143, 0,
        1152,
        1,
        b144, b144, 0,
        1152,
        1,
        b145, b145, 0,
        1152,
        1,
        b146, b146, 0,
        192,
        1,
        b147, b147, 0,
        192,
        1,
        b148, b148, 0,
        1152,
        1,
        b149, b149, 0,
        1152,
        1,
        b150, b150, 0,
        1152,
        1,
        b151, b151, 0,
        1152,
        1,
        b152, b152, 0,
        192,
        1,
        b153, b153, 0,
        192,
        1,
        b154, b154, 0,
        1152,
        1,
        b155, b155, 0,
        1152,
        1,
        b156, b156, 0,
        1152,
        1,
        b157, b157, 0,
        1152,
        1,
        b158, b158, 0,
        320,
        1,
        b159, b159, 0,
        320,
        1,
        b160, b160, 0,
        1280,
        1,
        b161, b161, 0,
        1280,
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

  write_timing_report(json_report_path, "EfficientNetB0", "mlir_llvm", run_id,
                       weights_path, input_path, output_path, reps,
                       times[reps / 2], sum / reps, times[0], times[reps - 1]);

  free(x);
  release_times(times, reps, use_fork);
  return 0;
}
