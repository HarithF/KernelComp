module {
  func.func public @MobileNetV2(%l_self_modules_features_modules_0_parameters_weight_: tensor<32x3x3x3xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_features_modules_1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_features_modules_1_buffers_running_var_: tensor<32xf32>, %l_self_modules_features_modules_1_parameters_weight_: tensor<32xf32>, %l_self_modules_features_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_features_modules_3_modules_0_parameters_weight_: tensor<32x3x3xf32>, %l_self_modules_features_modules_3_modules_1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_features_modules_3_modules_1_buffers_running_var_: tensor<32xf32>, %l_self_modules_features_modules_3_modules_1_parameters_weight_: tensor<32xf32>, %l_self_modules_features_modules_3_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_features_modules_3_modules_3_parameters_weight_: tensor<16x32xf32>, %l_self_modules_features_modules_3_modules_4_buffers_running_mean_: tensor<16xf32>, %l_self_modules_features_modules_3_modules_4_buffers_running_var_: tensor<16xf32>, %l_self_modules_features_modules_3_modules_4_parameters_weight_: tensor<16xf32>, %l_self_modules_features_modules_3_modules_4_parameters_bias_: tensor<16xf32>, %l_self_modules_features_modules_4_modules_0_parameters_weight_: tensor<96x16xf32>, %l_self_modules_features_modules_4_modules_1_buffers_running_mean_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_1_buffers_running_var_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_1_parameters_weight_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_1_parameters_bias_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_3_parameters_weight_: tensor<96x3x3xf32>, %l_self_modules_features_modules_4_modules_4_buffers_running_mean_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_4_buffers_running_var_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_4_parameters_weight_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_4_parameters_bias_: tensor<96xf32>, %l_self_modules_features_modules_4_modules_6_parameters_weight_: tensor<24x96xf32>, %l_self_modules_features_modules_4_modules_7_buffers_running_mean_: tensor<24xf32>, %l_self_modules_features_modules_4_modules_7_buffers_running_var_: tensor<24xf32>, %l_self_modules_features_modules_4_modules_7_parameters_weight_: tensor<24xf32>, %l_self_modules_features_modules_4_modules_7_parameters_bias_: tensor<24xf32>, %l_self_modules_features_modules_5_modules_0_parameters_weight_: tensor<144x24xf32>, %l_self_modules_features_modules_5_modules_1_buffers_running_mean_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_1_buffers_running_var_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_1_parameters_weight_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_1_parameters_bias_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_3_parameters_weight_: tensor<144x3x3xf32>, %l_self_modules_features_modules_5_modules_4_buffers_running_mean_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_4_buffers_running_var_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_4_parameters_weight_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_4_parameters_bias_: tensor<144xf32>, %l_self_modules_features_modules_5_modules_6_parameters_weight_: tensor<24x144xf32>, %l_self_modules_features_modules_5_modules_7_buffers_running_mean_: tensor<24xf32>, %l_self_modules_features_modules_5_modules_7_buffers_running_var_: tensor<24xf32>, %l_self_modules_features_modules_5_modules_7_parameters_weight_: tensor<24xf32>, %l_self_modules_features_modules_5_modules_7_parameters_bias_: tensor<24xf32>, %l_self_modules_features_modules_6_modules_0_parameters_weight_: tensor<144x24xf32>, %l_self_modules_features_modules_6_modules_1_buffers_running_mean_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_1_buffers_running_var_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_1_parameters_weight_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_1_parameters_bias_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_3_parameters_weight_: tensor<144x3x3xf32>, %l_self_modules_features_modules_6_modules_4_buffers_running_mean_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_4_buffers_running_var_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_4_parameters_weight_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_4_parameters_bias_: tensor<144xf32>, %l_self_modules_features_modules_6_modules_6_parameters_weight_: tensor<32x144xf32>, %l_self_modules_features_modules_6_modules_7_buffers_running_mean_: tensor<32xf32>, %l_self_modules_features_modules_6_modules_7_buffers_running_var_: tensor<32xf32>, %l_self_modules_features_modules_6_modules_7_parameters_weight_: tensor<32xf32>, %l_self_modules_features_modules_6_modules_7_parameters_bias_: tensor<32xf32>, %l_self_modules_features_modules_7_modules_0_parameters_weight_: tensor<192x32xf32>, %l_self_modules_features_modules_7_modules_1_buffers_running_mean_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_1_buffers_running_var_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_1_parameters_weight_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_1_parameters_bias_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_3_parameters_weight_: tensor<192x3x3xf32>, %l_self_modules_features_modules_7_modules_4_buffers_running_mean_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_4_buffers_running_var_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_4_parameters_weight_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_4_parameters_bias_: tensor<192xf32>, %l_self_modules_features_modules_7_modules_6_parameters_weight_: tensor<32x192xf32>, %l_self_modules_features_modules_7_modules_7_buffers_running_mean_: tensor<32xf32>, %l_self_modules_features_modules_7_modules_7_buffers_running_var_: tensor<32xf32>, %l_self_modules_features_modules_7_modules_7_parameters_weight_: tensor<32xf32>, %l_self_modules_features_modules_7_modules_7_parameters_bias_: tensor<32xf32>, %l_self_modules_features_modules_8_modules_0_parameters_weight_: tensor<192x32xf32>, %l_self_modules_features_modules_8_modules_1_buffers_running_mean_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_1_buffers_running_var_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_1_parameters_weight_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_1_parameters_bias_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_3_parameters_weight_: tensor<192x3x3xf32>, %l_self_modules_features_modules_8_modules_4_buffers_running_mean_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_4_buffers_running_var_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_4_parameters_weight_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_4_parameters_bias_: tensor<192xf32>, %l_self_modules_features_modules_8_modules_6_parameters_weight_: tensor<32x192xf32>, %l_self_modules_features_modules_8_modules_7_buffers_running_mean_: tensor<32xf32>, %l_self_modules_features_modules_8_modules_7_buffers_running_var_: tensor<32xf32>, %l_self_modules_features_modules_8_modules_7_parameters_weight_: tensor<32xf32>, %l_self_modules_features_modules_8_modules_7_parameters_bias_: tensor<32xf32>, %l_self_modules_features_modules_9_modules_0_parameters_weight_: tensor<192x32xf32>, %l_self_modules_features_modules_9_modules_1_buffers_running_mean_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_1_buffers_running_var_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_1_parameters_weight_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_1_parameters_bias_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_3_parameters_weight_: tensor<192x3x3xf32>, %l_self_modules_features_modules_9_modules_4_buffers_running_mean_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_4_buffers_running_var_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_4_parameters_weight_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_4_parameters_bias_: tensor<192xf32>, %l_self_modules_features_modules_9_modules_6_parameters_weight_: tensor<64x192xf32>, %l_self_modules_features_modules_9_modules_7_buffers_running_mean_: tensor<64xf32>, %l_self_modules_features_modules_9_modules_7_buffers_running_var_: tensor<64xf32>, %l_self_modules_features_modules_9_modules_7_parameters_weight_: tensor<64xf32>, %l_self_modules_features_modules_9_modules_7_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_10_modules_0_parameters_weight_: tensor<384x64xf32>, %l_self_modules_features_modules_10_modules_1_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_1_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_1_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_1_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_3_parameters_weight_: tensor<384x3x3xf32>, %l_self_modules_features_modules_10_modules_4_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_4_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_4_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_4_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_10_modules_6_parameters_weight_: tensor<64x384xf32>, %l_self_modules_features_modules_10_modules_7_buffers_running_mean_: tensor<64xf32>, %l_self_modules_features_modules_10_modules_7_buffers_running_var_: tensor<64xf32>, %l_self_modules_features_modules_10_modules_7_parameters_weight_: tensor<64xf32>, %l_self_modules_features_modules_10_modules_7_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_11_modules_0_parameters_weight_: tensor<384x64xf32>, %l_self_modules_features_modules_11_modules_1_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_1_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_1_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_1_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_3_parameters_weight_: tensor<384x3x3xf32>, %l_self_modules_features_modules_11_modules_4_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_4_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_4_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_4_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_11_modules_6_parameters_weight_: tensor<64x384xf32>, %l_self_modules_features_modules_11_modules_7_buffers_running_mean_: tensor<64xf32>, %l_self_modules_features_modules_11_modules_7_buffers_running_var_: tensor<64xf32>, %l_self_modules_features_modules_11_modules_7_parameters_weight_: tensor<64xf32>, %l_self_modules_features_modules_11_modules_7_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_12_modules_0_parameters_weight_: tensor<384x64xf32>, %l_self_modules_features_modules_12_modules_1_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_1_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_1_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_1_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_3_parameters_weight_: tensor<384x3x3xf32>, %l_self_modules_features_modules_12_modules_4_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_4_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_4_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_4_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_12_modules_6_parameters_weight_: tensor<64x384xf32>, %l_self_modules_features_modules_12_modules_7_buffers_running_mean_: tensor<64xf32>, %l_self_modules_features_modules_12_modules_7_buffers_running_var_: tensor<64xf32>, %l_self_modules_features_modules_12_modules_7_parameters_weight_: tensor<64xf32>, %l_self_modules_features_modules_12_modules_7_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_13_modules_0_parameters_weight_: tensor<384x64xf32>, %l_self_modules_features_modules_13_modules_1_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_1_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_1_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_1_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_3_parameters_weight_: tensor<384x3x3xf32>, %l_self_modules_features_modules_13_modules_4_buffers_running_mean_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_4_buffers_running_var_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_4_parameters_weight_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_4_parameters_bias_: tensor<384xf32>, %l_self_modules_features_modules_13_modules_6_parameters_weight_: tensor<96x384xf32>, %l_self_modules_features_modules_13_modules_7_buffers_running_mean_: tensor<96xf32>, %l_self_modules_features_modules_13_modules_7_buffers_running_var_: tensor<96xf32>, %l_self_modules_features_modules_13_modules_7_parameters_weight_: tensor<96xf32>, %l_self_modules_features_modules_13_modules_7_parameters_bias_: tensor<96xf32>, %l_self_modules_features_modules_14_modules_0_parameters_weight_: tensor<576x96xf32>, %l_self_modules_features_modules_14_modules_1_buffers_running_mean_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_1_buffers_running_var_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_1_parameters_weight_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_1_parameters_bias_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_3_parameters_weight_: tensor<576x3x3xf32>, %l_self_modules_features_modules_14_modules_4_buffers_running_mean_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_4_buffers_running_var_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_4_parameters_weight_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_4_parameters_bias_: tensor<576xf32>, %l_self_modules_features_modules_14_modules_6_parameters_weight_: tensor<96x576xf32>, %l_self_modules_features_modules_14_modules_7_buffers_running_mean_: tensor<96xf32>, %l_self_modules_features_modules_14_modules_7_buffers_running_var_: tensor<96xf32>, %l_self_modules_features_modules_14_modules_7_parameters_weight_: tensor<96xf32>, %l_self_modules_features_modules_14_modules_7_parameters_bias_: tensor<96xf32>, %l_self_modules_features_modules_15_modules_0_parameters_weight_: tensor<576x96xf32>, %l_self_modules_features_modules_15_modules_1_buffers_running_mean_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_1_buffers_running_var_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_1_parameters_weight_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_1_parameters_bias_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_3_parameters_weight_: tensor<576x3x3xf32>, %l_self_modules_features_modules_15_modules_4_buffers_running_mean_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_4_buffers_running_var_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_4_parameters_weight_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_4_parameters_bias_: tensor<576xf32>, %l_self_modules_features_modules_15_modules_6_parameters_weight_: tensor<96x576xf32>, %l_self_modules_features_modules_15_modules_7_buffers_running_mean_: tensor<96xf32>, %l_self_modules_features_modules_15_modules_7_buffers_running_var_: tensor<96xf32>, %l_self_modules_features_modules_15_modules_7_parameters_weight_: tensor<96xf32>, %l_self_modules_features_modules_15_modules_7_parameters_bias_: tensor<96xf32>, %l_self_modules_features_modules_16_modules_0_parameters_weight_: tensor<576x96xf32>, %l_self_modules_features_modules_16_modules_1_buffers_running_mean_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_1_buffers_running_var_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_1_parameters_weight_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_1_parameters_bias_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_3_parameters_weight_: tensor<576x3x3xf32>, %l_self_modules_features_modules_16_modules_4_buffers_running_mean_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_4_buffers_running_var_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_4_parameters_weight_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_4_parameters_bias_: tensor<576xf32>, %l_self_modules_features_modules_16_modules_6_parameters_weight_: tensor<160x576xf32>, %l_self_modules_features_modules_16_modules_7_buffers_running_mean_: tensor<160xf32>, %l_self_modules_features_modules_16_modules_7_buffers_running_var_: tensor<160xf32>, %l_self_modules_features_modules_16_modules_7_parameters_weight_: tensor<160xf32>, %l_self_modules_features_modules_16_modules_7_parameters_bias_: tensor<160xf32>, %l_self_modules_features_modules_17_modules_0_parameters_weight_: tensor<960x160xf32>, %l_self_modules_features_modules_17_modules_1_buffers_running_mean_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_1_buffers_running_var_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_1_parameters_weight_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_1_parameters_bias_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_3_parameters_weight_: tensor<960x3x3xf32>, %l_self_modules_features_modules_17_modules_4_buffers_running_mean_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_4_buffers_running_var_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_4_parameters_weight_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_4_parameters_bias_: tensor<960xf32>, %l_self_modules_features_modules_17_modules_6_parameters_weight_: tensor<160x960xf32>, %l_self_modules_features_modules_17_modules_7_buffers_running_mean_: tensor<160xf32>, %l_self_modules_features_modules_17_modules_7_buffers_running_var_: tensor<160xf32>, %l_self_modules_features_modules_17_modules_7_parameters_weight_: tensor<160xf32>, %l_self_modules_features_modules_17_modules_7_parameters_bias_: tensor<160xf32>, %l_self_modules_features_modules_18_modules_0_parameters_weight_: tensor<960x160xf32>, %l_self_modules_features_modules_18_modules_1_buffers_running_mean_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_1_buffers_running_var_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_1_parameters_weight_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_1_parameters_bias_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_3_parameters_weight_: tensor<960x3x3xf32>, %l_self_modules_features_modules_18_modules_4_buffers_running_mean_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_4_buffers_running_var_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_4_parameters_weight_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_4_parameters_bias_: tensor<960xf32>, %l_self_modules_features_modules_18_modules_6_parameters_weight_: tensor<160x960xf32>, %l_self_modules_features_modules_18_modules_7_buffers_running_mean_: tensor<160xf32>, %l_self_modules_features_modules_18_modules_7_buffers_running_var_: tensor<160xf32>, %l_self_modules_features_modules_18_modules_7_parameters_weight_: tensor<160xf32>, %l_self_modules_features_modules_18_modules_7_parameters_bias_: tensor<160xf32>, %l_self_modules_features_modules_19_modules_0_parameters_weight_: tensor<960x160xf32>, %l_self_modules_features_modules_19_modules_1_buffers_running_mean_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_1_buffers_running_var_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_1_parameters_weight_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_1_parameters_bias_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_3_parameters_weight_: tensor<960x3x3xf32>, %l_self_modules_features_modules_19_modules_4_buffers_running_mean_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_4_buffers_running_var_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_4_parameters_weight_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_4_parameters_bias_: tensor<960xf32>, %l_self_modules_features_modules_19_modules_6_parameters_weight_: tensor<320x960xf32>, %l_self_modules_features_modules_19_modules_7_buffers_running_mean_: tensor<320xf32>, %l_self_modules_features_modules_19_modules_7_buffers_running_var_: tensor<320xf32>, %l_self_modules_features_modules_19_modules_7_parameters_weight_: tensor<320xf32>, %l_self_modules_features_modules_19_modules_7_parameters_bias_: tensor<320xf32>, %l_self_modules_features_modules_20_parameters_weight_: tensor<1280x320xf32>, %l_self_modules_features_modules_21_buffers_running_mean_: tensor<1280xf32>, %l_self_modules_features_modules_21_buffers_running_var_: tensor<1280xf32>, %l_self_modules_features_modules_21_parameters_weight_: tensor<1280xf32>, %l_self_modules_features_modules_21_parameters_bias_: tensor<1280xf32>, %l_self_modules_classifier_modules_1_parameters_weight_: tensor<1000x1280xf32>, %l_self_modules_classifier_modules_1_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %v4.empty = tensor.empty() : tensor<10x32x112x1x112xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<10x32x112x1x112xf32>) -> tensor<10x32x112x1x112xf32>
    %v4.shape = tensor.empty() : tensor<112x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_features_modules_0_parameters_weight_, %v4.shape : tensor<10x3x226x226xf32>, tensor<32x3x3x3xf32>, tensor<112x1xf32>)
      outs(%v4.buf : tensor<10x32x112x1x112xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x32x112x1x112xf32>
    %v11.buf = tensor.empty() : tensor<32xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_1_buffers_running_var_, %l_self_modules_features_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v11.buf : tensor<32xf32>) {
        ^bb0(%in_12: f32, %in_13: f32, %acc_14: f32):
          %v15 = arith.constant 1.0 : f32
          %v16 = arith.constant 9.999999747378752e-06 : f32
          %v17 = arith.addf %v16, %in_12 : f32
          %v18 = math.sqrt %v17 : f32
          %v19 = arith.divf %v15, %v18 : f32
          %v20 = arith.mulf %v19, %in_13 : f32
          linalg.yield %v20 : f32
      }
    -> tensor<32xf32>
    %v21.buf = tensor.empty() : tensor<32xf32>
    %v21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_1_buffers_running_mean_, %l_self_modules_features_modules_1_buffers_running_var_, %l_self_modules_features_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v21.buf : tensor<32xf32>) {
        ^bb0(%in_22: f32, %in_23: f32, %in_24: f32, %acc_25: f32):
          %v26 = arith.constant 1.0 : f32
          %v27 = arith.constant 9.999999747378752e-06 : f32
          %v28 = arith.addf %v27, %in_23 : f32
          %v29 = math.sqrt %v28 : f32
          %v30 = arith.divf %v26, %v29 : f32
          %v31 = arith.mulf %v30, %in_24 : f32
          %v32 = arith.mulf %v31, %in_22 : f32
          linalg.yield %v32 : f32
      }
    -> tensor<32xf32>
    %v4.post = tensor.empty() : tensor<10x32x112x1x112xf32>
    %v4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.buf.out, %v11.buf.out, %v21.buf.out, %l_self_modules_features_modules_1_parameters_bias_ : tensor<10x32x112x1x112xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v4.post : tensor<10x32x112x1x112xf32>) {
        ^bb0(%acc_36: f32, %in_33: f32, %in_34: f32, %in_35: f32, %post_37: f32):
          %v38 = arith.mulf %acc_36, %in_33 : f32
          %v39 = arith.subf %v38, %in_34 : f32
          %v40 = arith.addf %v39, %in_35 : f32
          %v41 = arith.maxnumf %init, %v40 : f32
          %v42 = arith.constant 6.0 : f32
          %v43 = arith.minnumf %v42, %v41 : f32
          linalg.yield %v43 : f32
      }
    -> tensor<10x32x112x1x112xf32>
    %input_3.buf = tensor.empty() : tensor<10x32x112x112xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<10x32x112x1x112xf32>)
      outs(%input_3.buf : tensor<10x32x112x112xf32>) {
        ^bb0(%in_44: f32, %acc_45: f32):
          linalg.yield %in_44 : f32
      }
    -> tensor<10x32x112x112xf32>
    %v50 = tensor.pad %input_3.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i46: index, %pad_i47: index, %pad_i48: index, %pad_i49: index):
        tensor.yield %init : f32
    } : tensor<10x32x112x112xf32> to tensor<10x32x114x114xf32>
    %l_self_modules_features_modules_3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_3_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [32, 1, 3, 3] : tensor<32x3x3xf32> into tensor<32x1x3x3xf32>
    %input_6.empty = tensor.empty() : tensor<10x32x112x112xf32>
    %input_6.buf = linalg.fill ins(%init : f32) outs(%input_6.empty : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v50, %l_self_modules_features_modules_3_modules_0_parameters_weight_.expanded : tensor<10x32x114x114xf32>, tensor<32x1x3x3xf32>)
      outs(%input_6.buf : tensor<10x32x112x112xf32>) {
        ^bb0(%in_51: f32, %in_52: f32, %acc_53: f32):
          %v54 = arith.mulf %in_51, %in_52 : f32
          %v55 = arith.addf %v54, %acc_53 : f32
          linalg.yield %v55 : f32
      }
    -> tensor<10x32x112x112xf32>
    %v56.buf = tensor.empty() : tensor<32xf32>
    %v56.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_3_modules_1_buffers_running_var_, %l_self_modules_features_modules_3_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v56.buf : tensor<32xf32>) {
        ^bb0(%in_57: f32, %in_58: f32, %acc_59: f32):
          %v60 = arith.constant 1.0 : f32
          %v61 = arith.constant 9.999999747378752e-06 : f32
          %v62 = arith.addf %v61, %in_57 : f32
          %v63 = math.sqrt %v62 : f32
          %v64 = arith.divf %v60, %v63 : f32
          %v65 = arith.mulf %v64, %in_58 : f32
          linalg.yield %v65 : f32
      }
    -> tensor<32xf32>
    %v66.buf = tensor.empty() : tensor<32xf32>
    %v66.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_3_modules_1_buffers_running_mean_, %l_self_modules_features_modules_3_modules_1_buffers_running_var_, %l_self_modules_features_modules_3_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v66.buf : tensor<32xf32>) {
        ^bb0(%in_67: f32, %in_68: f32, %in_69: f32, %acc_70: f32):
          %v71 = arith.constant 1.0 : f32
          %v72 = arith.constant 9.999999747378752e-06 : f32
          %v73 = arith.addf %v72, %in_68 : f32
          %v74 = math.sqrt %v73 : f32
          %v75 = arith.divf %v71, %v74 : f32
          %v76 = arith.mulf %v75, %in_69 : f32
          %v77 = arith.mulf %v76, %in_67 : f32
          linalg.yield %v77 : f32
      }
    -> tensor<32xf32>
    %input_6.post = tensor.empty() : tensor<10x32x112x112xf32>
    %input_6.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_6.buf.out, %v56.buf.out, %v66.buf.out, %l_self_modules_features_modules_3_modules_1_parameters_bias_ : tensor<10x32x112x112xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%input_6.post : tensor<10x32x112x112xf32>) {
        ^bb0(%acc_81: f32, %in_78: f32, %in_79: f32, %in_80: f32, %post_82: f32):
          %v83 = arith.mulf %acc_81, %in_78 : f32
          %v84 = arith.subf %v83, %in_79 : f32
          %v85 = arith.addf %v84, %in_80 : f32
          %v86 = arith.maxnumf %init, %v85 : f32
          %v87 = arith.constant 6.0 : f32
          %v88 = arith.minnumf %v87, %v86 : f32
          linalg.yield %v88 : f32
      }
    -> tensor<10x32x112x112xf32>
    %l_self_modules_features_modules_3_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_3_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [16, 32, 1, 1] : tensor<16x32xf32> into tensor<16x32x1x1xf32>
    %v89.empty = tensor.empty() : tensor<10x16x112x1x112xf32>
    %v89.buf = linalg.fill ins(%init : f32) outs(%v89.empty : tensor<10x16x112x1x112xf32>) -> tensor<10x16x112x1x112xf32>
    %v89.shape = tensor.empty() : tensor<112x1xf32>
    %v89.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_6.post.out, %l_self_modules_features_modules_3_modules_3_parameters_weight_.expanded, %v89.shape : tensor<10x32x112x112xf32>, tensor<16x32x1x1xf32>, tensor<112x1xf32>)
      outs(%v89.buf : tensor<10x16x112x1x112xf32>) {
        ^bb0(%in_91: f32, %in_92: f32, %shape_90: f32, %acc_93: f32):
          %v94 = arith.mulf %in_91, %in_92 : f32
          %v95 = arith.addf %v94, %acc_93 : f32
          linalg.yield %v95 : f32
      }
    -> tensor<10x16x112x1x112xf32>
    %v96.buf = tensor.empty() : tensor<16xf32>
    %v96.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_3_modules_4_buffers_running_var_, %l_self_modules_features_modules_3_modules_4_parameters_weight_ : tensor<16xf32>, tensor<16xf32>)
      outs(%v96.buf : tensor<16xf32>) {
        ^bb0(%in_97: f32, %in_98: f32, %acc_99: f32):
          %v100 = arith.constant 1.0 : f32
          %v101 = arith.constant 9.999999747378752e-06 : f32
          %v102 = arith.addf %v101, %in_97 : f32
          %v103 = math.sqrt %v102 : f32
          %v104 = arith.divf %v100, %v103 : f32
          %v105 = arith.mulf %v104, %in_98 : f32
          linalg.yield %v105 : f32
      }
    -> tensor<16xf32>
    %v106.buf = tensor.empty() : tensor<16xf32>
    %v106.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_3_modules_4_buffers_running_mean_, %l_self_modules_features_modules_3_modules_4_buffers_running_var_, %l_self_modules_features_modules_3_modules_4_parameters_weight_ : tensor<16xf32>, tensor<16xf32>, tensor<16xf32>)
      outs(%v106.buf : tensor<16xf32>) {
        ^bb0(%in_107: f32, %in_108: f32, %in_109: f32, %acc_110: f32):
          %v111 = arith.constant 1.0 : f32
          %v112 = arith.constant 9.999999747378752e-06 : f32
          %v113 = arith.addf %v112, %in_108 : f32
          %v114 = math.sqrt %v113 : f32
          %v115 = arith.divf %v111, %v114 : f32
          %v116 = arith.mulf %v115, %in_109 : f32
          %v117 = arith.mulf %v116, %in_107 : f32
          linalg.yield %v117 : f32
      }
    -> tensor<16xf32>
    %v89.post = tensor.empty() : tensor<10x16x112x1x112xf32>
    %v89.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v89.buf.out, %v96.buf.out, %v106.buf.out, %l_self_modules_features_modules_3_modules_4_parameters_bias_ : tensor<10x16x112x1x112xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>)
      outs(%v89.post : tensor<10x16x112x1x112xf32>) {
        ^bb0(%acc_121: f32, %in_118: f32, %in_119: f32, %in_120: f32, %post_122: f32):
          %v123 = arith.mulf %acc_121, %in_118 : f32
          %v124 = arith.subf %v123, %in_119 : f32
          %v125 = arith.addf %v124, %in_120 : f32
          linalg.yield %v125 : f32
      }
    -> tensor<10x16x112x1x112xf32>
    %l_self_modules_features_modules_4_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_4_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 16, 1, 1] : tensor<96x16xf32> into tensor<96x16x1x1xf32>
    %v126.empty = tensor.empty() : tensor<10x96x112x1x112xf32>
    %v126.buf = linalg.fill ins(%init : f32) outs(%v126.empty : tensor<10x96x112x1x112xf32>) -> tensor<10x96x112x1x112xf32>
    %v126.shape = tensor.empty() : tensor<112x1xf32>
    %v126.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v89.post.out, %l_self_modules_features_modules_4_modules_0_parameters_weight_.expanded, %v126.shape : tensor<10x16x112x1x112xf32>, tensor<96x16x1x1xf32>, tensor<112x1xf32>)
      outs(%v126.buf : tensor<10x96x112x1x112xf32>) {
        ^bb0(%in_128: f32, %in_129: f32, %shape_127: f32, %acc_130: f32):
          %v131 = arith.mulf %in_128, %in_129 : f32
          %v132 = arith.addf %v131, %acc_130 : f32
          linalg.yield %v132 : f32
      }
    -> tensor<10x96x112x1x112xf32>
    %v133.buf = tensor.empty() : tensor<96xf32>
    %v133.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_4_modules_1_buffers_running_var_, %l_self_modules_features_modules_4_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v133.buf : tensor<96xf32>) {
        ^bb0(%in_134: f32, %in_135: f32, %acc_136: f32):
          %v137 = arith.constant 1.0 : f32
          %v138 = arith.constant 9.999999747378752e-06 : f32
          %v139 = arith.addf %v138, %in_134 : f32
          %v140 = math.sqrt %v139 : f32
          %v141 = arith.divf %v137, %v140 : f32
          %v142 = arith.mulf %v141, %in_135 : f32
          linalg.yield %v142 : f32
      }
    -> tensor<96xf32>
    %v143.buf = tensor.empty() : tensor<96xf32>
    %v143.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_4_modules_1_buffers_running_mean_, %l_self_modules_features_modules_4_modules_1_buffers_running_var_, %l_self_modules_features_modules_4_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v143.buf : tensor<96xf32>) {
        ^bb0(%in_144: f32, %in_145: f32, %in_146: f32, %acc_147: f32):
          %v148 = arith.constant 1.0 : f32
          %v149 = arith.constant 9.999999747378752e-06 : f32
          %v150 = arith.addf %v149, %in_145 : f32
          %v151 = math.sqrt %v150 : f32
          %v152 = arith.divf %v148, %v151 : f32
          %v153 = arith.mulf %v152, %in_146 : f32
          %v154 = arith.mulf %v153, %in_144 : f32
          linalg.yield %v154 : f32
      }
    -> tensor<96xf32>
    %v126.post = tensor.empty() : tensor<10x96x112x1x112xf32>
    %v126.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v126.buf.out, %v133.buf.out, %v143.buf.out, %l_self_modules_features_modules_4_modules_1_parameters_bias_ : tensor<10x96x112x1x112xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v126.post : tensor<10x96x112x1x112xf32>) {
        ^bb0(%acc_158: f32, %in_155: f32, %in_156: f32, %in_157: f32, %post_159: f32):
          %v160 = arith.mulf %acc_158, %in_155 : f32
          %v161 = arith.subf %v160, %in_156 : f32
          %v162 = arith.addf %v161, %in_157 : f32
          %v163 = arith.maxnumf %init, %v162 : f32
          %v164 = arith.constant 6.0 : f32
          %v165 = arith.minnumf %v164, %v163 : f32
          linalg.yield %v165 : f32
      }
    -> tensor<10x96x112x1x112xf32>
    %input_11.buf = tensor.empty() : tensor<10x96x112x112xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v126.post.out : tensor<10x96x112x1x112xf32>)
      outs(%input_11.buf : tensor<10x96x112x112xf32>) {
        ^bb0(%in_166: f32, %acc_167: f32):
          linalg.yield %in_166 : f32
      }
    -> tensor<10x96x112x112xf32>
    %v172 = tensor.pad %input_11.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i168: index, %pad_i169: index, %pad_i170: index, %pad_i171: index):
        tensor.yield %init : f32
    } : tensor<10x96x112x112xf32> to tensor<10x96x114x114xf32>
    %l_self_modules_features_modules_4_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_4_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [96, 1, 3, 3] : tensor<96x3x3xf32> into tensor<96x1x3x3xf32>
    %input_14.empty = tensor.empty() : tensor<10x96x56x56xf32>
    %input_14.buf = linalg.fill ins(%init : f32) outs(%input_14.empty : tensor<10x96x56x56xf32>) -> tensor<10x96x56x56xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v172, %l_self_modules_features_modules_4_modules_3_parameters_weight_.expanded : tensor<10x96x114x114xf32>, tensor<96x1x3x3xf32>)
      outs(%input_14.buf : tensor<10x96x56x56xf32>) {
        ^bb0(%in_173: f32, %in_174: f32, %acc_175: f32):
          %v176 = arith.mulf %in_173, %in_174 : f32
          %v177 = arith.addf %v176, %acc_175 : f32
          linalg.yield %v177 : f32
      }
    -> tensor<10x96x56x56xf32>
    %v178.buf = tensor.empty() : tensor<96xf32>
    %v178.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_4_modules_4_buffers_running_var_, %l_self_modules_features_modules_4_modules_4_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v178.buf : tensor<96xf32>) {
        ^bb0(%in_179: f32, %in_180: f32, %acc_181: f32):
          %v182 = arith.constant 1.0 : f32
          %v183 = arith.constant 9.999999747378752e-06 : f32
          %v184 = arith.addf %v183, %in_179 : f32
          %v185 = math.sqrt %v184 : f32
          %v186 = arith.divf %v182, %v185 : f32
          %v187 = arith.mulf %v186, %in_180 : f32
          linalg.yield %v187 : f32
      }
    -> tensor<96xf32>
    %v188.buf = tensor.empty() : tensor<96xf32>
    %v188.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_4_modules_4_buffers_running_mean_, %l_self_modules_features_modules_4_modules_4_buffers_running_var_, %l_self_modules_features_modules_4_modules_4_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v188.buf : tensor<96xf32>) {
        ^bb0(%in_189: f32, %in_190: f32, %in_191: f32, %acc_192: f32):
          %v193 = arith.constant 1.0 : f32
          %v194 = arith.constant 9.999999747378752e-06 : f32
          %v195 = arith.addf %v194, %in_190 : f32
          %v196 = math.sqrt %v195 : f32
          %v197 = arith.divf %v193, %v196 : f32
          %v198 = arith.mulf %v197, %in_191 : f32
          %v199 = arith.mulf %v198, %in_189 : f32
          linalg.yield %v199 : f32
      }
    -> tensor<96xf32>
    %input_14.post = tensor.empty() : tensor<10x96x56x56xf32>
    %input_14.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_14.buf.out, %v178.buf.out, %v188.buf.out, %l_self_modules_features_modules_4_modules_4_parameters_bias_ : tensor<10x96x56x56xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%input_14.post : tensor<10x96x56x56xf32>) {
        ^bb0(%acc_203: f32, %in_200: f32, %in_201: f32, %in_202: f32, %post_204: f32):
          %v205 = arith.mulf %acc_203, %in_200 : f32
          %v206 = arith.subf %v205, %in_201 : f32
          %v207 = arith.addf %v206, %in_202 : f32
          %v208 = arith.maxnumf %init, %v207 : f32
          %v209 = arith.constant 6.0 : f32
          %v210 = arith.minnumf %v209, %v208 : f32
          linalg.yield %v210 : f32
      }
    -> tensor<10x96x56x56xf32>
    %l_self_modules_features_modules_4_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_4_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [24, 96, 1, 1] : tensor<24x96xf32> into tensor<24x96x1x1xf32>
    %v211.empty = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v211.buf = linalg.fill ins(%init : f32) outs(%v211.empty : tensor<10x24x56x1x56xf32>) -> tensor<10x24x56x1x56xf32>
    %v211.shape = tensor.empty() : tensor<56x1xf32>
    %v211.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_14.post.out, %l_self_modules_features_modules_4_modules_6_parameters_weight_.expanded, %v211.shape : tensor<10x96x56x56xf32>, tensor<24x96x1x1xf32>, tensor<56x1xf32>)
      outs(%v211.buf : tensor<10x24x56x1x56xf32>) {
        ^bb0(%in_213: f32, %in_214: f32, %shape_212: f32, %acc_215: f32):
          %v216 = arith.mulf %in_213, %in_214 : f32
          %v217 = arith.addf %v216, %acc_215 : f32
          linalg.yield %v217 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %v218.buf = tensor.empty() : tensor<24xf32>
    %v218.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_4_modules_7_buffers_running_var_, %l_self_modules_features_modules_4_modules_7_parameters_weight_ : tensor<24xf32>, tensor<24xf32>)
      outs(%v218.buf : tensor<24xf32>) {
        ^bb0(%in_219: f32, %in_220: f32, %acc_221: f32):
          %v222 = arith.constant 1.0 : f32
          %v223 = arith.constant 9.999999747378752e-06 : f32
          %v224 = arith.addf %v223, %in_219 : f32
          %v225 = math.sqrt %v224 : f32
          %v226 = arith.divf %v222, %v225 : f32
          %v227 = arith.mulf %v226, %in_220 : f32
          linalg.yield %v227 : f32
      }
    -> tensor<24xf32>
    %v228.buf = tensor.empty() : tensor<24xf32>
    %v228.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_4_modules_7_buffers_running_mean_, %l_self_modules_features_modules_4_modules_7_buffers_running_var_, %l_self_modules_features_modules_4_modules_7_parameters_weight_ : tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v228.buf : tensor<24xf32>) {
        ^bb0(%in_229: f32, %in_230: f32, %in_231: f32, %acc_232: f32):
          %v233 = arith.constant 1.0 : f32
          %v234 = arith.constant 9.999999747378752e-06 : f32
          %v235 = arith.addf %v234, %in_230 : f32
          %v236 = math.sqrt %v235 : f32
          %v237 = arith.divf %v233, %v236 : f32
          %v238 = arith.mulf %v237, %in_231 : f32
          %v239 = arith.mulf %v238, %in_229 : f32
          linalg.yield %v239 : f32
      }
    -> tensor<24xf32>
    %v211.post = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v211.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v211.buf.out, %v218.buf.out, %v228.buf.out, %l_self_modules_features_modules_4_modules_7_parameters_bias_ : tensor<10x24x56x1x56xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v211.post : tensor<10x24x56x1x56xf32>) {
        ^bb0(%acc_243: f32, %in_240: f32, %in_241: f32, %in_242: f32, %post_244: f32):
          %v245 = arith.mulf %acc_243, %in_240 : f32
          %v246 = arith.subf %v245, %in_241 : f32
          %v247 = arith.addf %v246, %in_242 : f32
          linalg.yield %v247 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %l_self_modules_features_modules_5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [144, 24, 1, 1] : tensor<144x24xf32> into tensor<144x24x1x1xf32>
    %v248.empty = tensor.empty() : tensor<10x144x56x1x56xf32>
    %v248.buf = linalg.fill ins(%init : f32) outs(%v248.empty : tensor<10x144x56x1x56xf32>) -> tensor<10x144x56x1x56xf32>
    %v248.shape = tensor.empty() : tensor<56x1xf32>
    %v248.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v211.post.out, %l_self_modules_features_modules_5_modules_0_parameters_weight_.expanded, %v248.shape : tensor<10x24x56x1x56xf32>, tensor<144x24x1x1xf32>, tensor<56x1xf32>)
      outs(%v248.buf : tensor<10x144x56x1x56xf32>) {
        ^bb0(%in_250: f32, %in_251: f32, %shape_249: f32, %acc_252: f32):
          %v253 = arith.mulf %in_250, %in_251 : f32
          %v254 = arith.addf %v253, %acc_252 : f32
          linalg.yield %v254 : f32
      }
    -> tensor<10x144x56x1x56xf32>
    %v255.buf = tensor.empty() : tensor<144xf32>
    %v255.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_5_modules_1_buffers_running_var_, %l_self_modules_features_modules_5_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v255.buf : tensor<144xf32>) {
        ^bb0(%in_256: f32, %in_257: f32, %acc_258: f32):
          %v259 = arith.constant 1.0 : f32
          %v260 = arith.constant 9.999999747378752e-06 : f32
          %v261 = arith.addf %v260, %in_256 : f32
          %v262 = math.sqrt %v261 : f32
          %v263 = arith.divf %v259, %v262 : f32
          %v264 = arith.mulf %v263, %in_257 : f32
          linalg.yield %v264 : f32
      }
    -> tensor<144xf32>
    %v265.buf = tensor.empty() : tensor<144xf32>
    %v265.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_5_modules_1_buffers_running_mean_, %l_self_modules_features_modules_5_modules_1_buffers_running_var_, %l_self_modules_features_modules_5_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v265.buf : tensor<144xf32>) {
        ^bb0(%in_266: f32, %in_267: f32, %in_268: f32, %acc_269: f32):
          %v270 = arith.constant 1.0 : f32
          %v271 = arith.constant 9.999999747378752e-06 : f32
          %v272 = arith.addf %v271, %in_267 : f32
          %v273 = math.sqrt %v272 : f32
          %v274 = arith.divf %v270, %v273 : f32
          %v275 = arith.mulf %v274, %in_268 : f32
          %v276 = arith.mulf %v275, %in_266 : f32
          linalg.yield %v276 : f32
      }
    -> tensor<144xf32>
    %v248.post = tensor.empty() : tensor<10x144x56x1x56xf32>
    %v248.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v248.buf.out, %v255.buf.out, %v265.buf.out, %l_self_modules_features_modules_5_modules_1_parameters_bias_ : tensor<10x144x56x1x56xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v248.post : tensor<10x144x56x1x56xf32>) {
        ^bb0(%acc_280: f32, %in_277: f32, %in_278: f32, %in_279: f32, %post_281: f32):
          %v282 = arith.mulf %acc_280, %in_277 : f32
          %v283 = arith.subf %v282, %in_278 : f32
          %v284 = arith.addf %v283, %in_279 : f32
          %v285 = arith.maxnumf %init, %v284 : f32
          %v286 = arith.constant 6.0 : f32
          %v287 = arith.minnumf %v286, %v285 : f32
          linalg.yield %v287 : f32
      }
    -> tensor<10x144x56x1x56xf32>
    %input_19.buf = tensor.empty() : tensor<10x144x56x56xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v248.post.out : tensor<10x144x56x1x56xf32>)
      outs(%input_19.buf : tensor<10x144x56x56xf32>) {
        ^bb0(%in_288: f32, %acc_289: f32):
          linalg.yield %in_288 : f32
      }
    -> tensor<10x144x56x56xf32>
    %v294 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i290: index, %pad_i291: index, %pad_i292: index, %pad_i293: index):
        tensor.yield %init : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x58x58xf32>
    %l_self_modules_features_modules_5_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_5_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [144, 1, 3, 3] : tensor<144x3x3xf32> into tensor<144x1x3x3xf32>
    %input_22.empty = tensor.empty() : tensor<10x144x56x56xf32>
    %input_22.buf = linalg.fill ins(%init : f32) outs(%input_22.empty : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %input_22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v294, %l_self_modules_features_modules_5_modules_3_parameters_weight_.expanded : tensor<10x144x58x58xf32>, tensor<144x1x3x3xf32>)
      outs(%input_22.buf : tensor<10x144x56x56xf32>) {
        ^bb0(%in_295: f32, %in_296: f32, %acc_297: f32):
          %v298 = arith.mulf %in_295, %in_296 : f32
          %v299 = arith.addf %v298, %acc_297 : f32
          linalg.yield %v299 : f32
      }
    -> tensor<10x144x56x56xf32>
    %v300.buf = tensor.empty() : tensor<144xf32>
    %v300.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_5_modules_4_buffers_running_var_, %l_self_modules_features_modules_5_modules_4_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v300.buf : tensor<144xf32>) {
        ^bb0(%in_301: f32, %in_302: f32, %acc_303: f32):
          %v304 = arith.constant 1.0 : f32
          %v305 = arith.constant 9.999999747378752e-06 : f32
          %v306 = arith.addf %v305, %in_301 : f32
          %v307 = math.sqrt %v306 : f32
          %v308 = arith.divf %v304, %v307 : f32
          %v309 = arith.mulf %v308, %in_302 : f32
          linalg.yield %v309 : f32
      }
    -> tensor<144xf32>
    %v310.buf = tensor.empty() : tensor<144xf32>
    %v310.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_5_modules_4_buffers_running_mean_, %l_self_modules_features_modules_5_modules_4_buffers_running_var_, %l_self_modules_features_modules_5_modules_4_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v310.buf : tensor<144xf32>) {
        ^bb0(%in_311: f32, %in_312: f32, %in_313: f32, %acc_314: f32):
          %v315 = arith.constant 1.0 : f32
          %v316 = arith.constant 9.999999747378752e-06 : f32
          %v317 = arith.addf %v316, %in_312 : f32
          %v318 = math.sqrt %v317 : f32
          %v319 = arith.divf %v315, %v318 : f32
          %v320 = arith.mulf %v319, %in_313 : f32
          %v321 = arith.mulf %v320, %in_311 : f32
          linalg.yield %v321 : f32
      }
    -> tensor<144xf32>
    %input_22.post = tensor.empty() : tensor<10x144x56x56xf32>
    %input_22.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_22.buf.out, %v300.buf.out, %v310.buf.out, %l_self_modules_features_modules_5_modules_4_parameters_bias_ : tensor<10x144x56x56xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%input_22.post : tensor<10x144x56x56xf32>) {
        ^bb0(%acc_325: f32, %in_322: f32, %in_323: f32, %in_324: f32, %post_326: f32):
          %v327 = arith.mulf %acc_325, %in_322 : f32
          %v328 = arith.subf %v327, %in_323 : f32
          %v329 = arith.addf %v328, %in_324 : f32
          %v330 = arith.maxnumf %init, %v329 : f32
          %v331 = arith.constant 6.0 : f32
          %v332 = arith.minnumf %v331, %v330 : f32
          linalg.yield %v332 : f32
      }
    -> tensor<10x144x56x56xf32>
    %l_self_modules_features_modules_5_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_5_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [24, 144, 1, 1] : tensor<24x144xf32> into tensor<24x144x1x1xf32>
    %v333.empty = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v333.buf = linalg.fill ins(%init : f32) outs(%v333.empty : tensor<10x24x56x1x56xf32>) -> tensor<10x24x56x1x56xf32>
    %v333.shape = tensor.empty() : tensor<56x1xf32>
    %v333.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_22.post.out, %l_self_modules_features_modules_5_modules_6_parameters_weight_.expanded, %v333.shape : tensor<10x144x56x56xf32>, tensor<24x144x1x1xf32>, tensor<56x1xf32>)
      outs(%v333.buf : tensor<10x24x56x1x56xf32>) {
        ^bb0(%in_335: f32, %in_336: f32, %shape_334: f32, %acc_337: f32):
          %v338 = arith.mulf %in_335, %in_336 : f32
          %v339 = arith.addf %v338, %acc_337 : f32
          linalg.yield %v339 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %v340.buf = tensor.empty() : tensor<24xf32>
    %v340.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_5_modules_7_buffers_running_var_, %l_self_modules_features_modules_5_modules_7_parameters_weight_ : tensor<24xf32>, tensor<24xf32>)
      outs(%v340.buf : tensor<24xf32>) {
        ^bb0(%in_341: f32, %in_342: f32, %acc_343: f32):
          %v344 = arith.constant 1.0 : f32
          %v345 = arith.constant 9.999999747378752e-06 : f32
          %v346 = arith.addf %v345, %in_341 : f32
          %v347 = math.sqrt %v346 : f32
          %v348 = arith.divf %v344, %v347 : f32
          %v349 = arith.mulf %v348, %in_342 : f32
          linalg.yield %v349 : f32
      }
    -> tensor<24xf32>
    %v350.buf = tensor.empty() : tensor<24xf32>
    %v350.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_5_modules_7_buffers_running_mean_, %l_self_modules_features_modules_5_modules_7_buffers_running_var_, %l_self_modules_features_modules_5_modules_7_parameters_weight_ : tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v350.buf : tensor<24xf32>) {
        ^bb0(%in_351: f32, %in_352: f32, %in_353: f32, %acc_354: f32):
          %v355 = arith.constant 1.0 : f32
          %v356 = arith.constant 9.999999747378752e-06 : f32
          %v357 = arith.addf %v356, %in_352 : f32
          %v358 = math.sqrt %v357 : f32
          %v359 = arith.divf %v355, %v358 : f32
          %v360 = arith.mulf %v359, %in_353 : f32
          %v361 = arith.mulf %v360, %in_351 : f32
          linalg.yield %v361 : f32
      }
    -> tensor<24xf32>
    %v333.post = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v333.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v333.buf.out, %v340.buf.out, %v350.buf.out, %l_self_modules_features_modules_5_modules_7_parameters_bias_ : tensor<10x24x56x1x56xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v333.post : tensor<10x24x56x1x56xf32>) {
        ^bb0(%acc_365: f32, %in_362: f32, %in_363: f32, %in_364: f32, %post_366: f32):
          %v367 = arith.mulf %acc_365, %in_362 : f32
          %v368 = arith.subf %v367, %in_363 : f32
          %v369 = arith.addf %v368, %in_364 : f32
          linalg.yield %v369 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %l_self_modules_features_modules_6_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_6_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [144, 24, 1, 1] : tensor<144x24xf32> into tensor<144x24x1x1xf32>
    %v370.empty = tensor.empty() : tensor<10x144x56x1x56xf32>
    %v370.buf = linalg.fill ins(%init : f32) outs(%v370.empty : tensor<10x144x56x1x56xf32>) -> tensor<10x144x56x1x56xf32>
    %v370.shape = tensor.empty() : tensor<56x1xf32>
    %v370.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v333.post.out, %l_self_modules_features_modules_6_modules_0_parameters_weight_.expanded, %v370.shape : tensor<10x24x56x1x56xf32>, tensor<144x24x1x1xf32>, tensor<56x1xf32>)
      outs(%v370.buf : tensor<10x144x56x1x56xf32>) {
        ^bb0(%in_372: f32, %in_373: f32, %shape_371: f32, %acc_374: f32):
          %v375 = arith.mulf %in_372, %in_373 : f32
          %v376 = arith.addf %v375, %acc_374 : f32
          linalg.yield %v376 : f32
      }
    -> tensor<10x144x56x1x56xf32>
    %v377.buf = tensor.empty() : tensor<144xf32>
    %v377.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_6_modules_1_buffers_running_var_, %l_self_modules_features_modules_6_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v377.buf : tensor<144xf32>) {
        ^bb0(%in_378: f32, %in_379: f32, %acc_380: f32):
          %v381 = arith.constant 1.0 : f32
          %v382 = arith.constant 9.999999747378752e-06 : f32
          %v383 = arith.addf %v382, %in_378 : f32
          %v384 = math.sqrt %v383 : f32
          %v385 = arith.divf %v381, %v384 : f32
          %v386 = arith.mulf %v385, %in_379 : f32
          linalg.yield %v386 : f32
      }
    -> tensor<144xf32>
    %v387.buf = tensor.empty() : tensor<144xf32>
    %v387.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_6_modules_1_buffers_running_mean_, %l_self_modules_features_modules_6_modules_1_buffers_running_var_, %l_self_modules_features_modules_6_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v387.buf : tensor<144xf32>) {
        ^bb0(%in_388: f32, %in_389: f32, %in_390: f32, %acc_391: f32):
          %v392 = arith.constant 1.0 : f32
          %v393 = arith.constant 9.999999747378752e-06 : f32
          %v394 = arith.addf %v393, %in_389 : f32
          %v395 = math.sqrt %v394 : f32
          %v396 = arith.divf %v392, %v395 : f32
          %v397 = arith.mulf %v396, %in_390 : f32
          %v398 = arith.mulf %v397, %in_388 : f32
          linalg.yield %v398 : f32
      }
    -> tensor<144xf32>
    %v370.post = tensor.empty() : tensor<10x144x56x1x56xf32>
    %v370.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v370.buf.out, %v377.buf.out, %v387.buf.out, %l_self_modules_features_modules_6_modules_1_parameters_bias_ : tensor<10x144x56x1x56xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v370.post : tensor<10x144x56x1x56xf32>) {
        ^bb0(%acc_402: f32, %in_399: f32, %in_400: f32, %in_401: f32, %post_403: f32):
          %v404 = arith.mulf %acc_402, %in_399 : f32
          %v405 = arith.subf %v404, %in_400 : f32
          %v406 = arith.addf %v405, %in_401 : f32
          %v407 = arith.maxnumf %init, %v406 : f32
          %v408 = arith.constant 6.0 : f32
          %v409 = arith.minnumf %v408, %v407 : f32
          linalg.yield %v409 : f32
      }
    -> tensor<10x144x56x1x56xf32>
    %input_27.buf = tensor.empty() : tensor<10x144x56x56xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v370.post.out : tensor<10x144x56x1x56xf32>)
      outs(%input_27.buf : tensor<10x144x56x56xf32>) {
        ^bb0(%in_410: f32, %acc_411: f32):
          linalg.yield %in_410 : f32
      }
    -> tensor<10x144x56x56xf32>
    %v416 = tensor.pad %input_27.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i412: index, %pad_i413: index, %pad_i414: index, %pad_i415: index):
        tensor.yield %init : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x58x58xf32>
    %l_self_modules_features_modules_6_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_6_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [144, 1, 3, 3] : tensor<144x3x3xf32> into tensor<144x1x3x3xf32>
    %input_30.empty = tensor.empty() : tensor<10x144x28x28xf32>
    %input_30.buf = linalg.fill ins(%init : f32) outs(%input_30.empty : tensor<10x144x28x28xf32>) -> tensor<10x144x28x28xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v416, %l_self_modules_features_modules_6_modules_3_parameters_weight_.expanded : tensor<10x144x58x58xf32>, tensor<144x1x3x3xf32>)
      outs(%input_30.buf : tensor<10x144x28x28xf32>) {
        ^bb0(%in_417: f32, %in_418: f32, %acc_419: f32):
          %v420 = arith.mulf %in_417, %in_418 : f32
          %v421 = arith.addf %v420, %acc_419 : f32
          linalg.yield %v421 : f32
      }
    -> tensor<10x144x28x28xf32>
    %v422.buf = tensor.empty() : tensor<144xf32>
    %v422.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_6_modules_4_buffers_running_var_, %l_self_modules_features_modules_6_modules_4_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v422.buf : tensor<144xf32>) {
        ^bb0(%in_423: f32, %in_424: f32, %acc_425: f32):
          %v426 = arith.constant 1.0 : f32
          %v427 = arith.constant 9.999999747378752e-06 : f32
          %v428 = arith.addf %v427, %in_423 : f32
          %v429 = math.sqrt %v428 : f32
          %v430 = arith.divf %v426, %v429 : f32
          %v431 = arith.mulf %v430, %in_424 : f32
          linalg.yield %v431 : f32
      }
    -> tensor<144xf32>
    %v432.buf = tensor.empty() : tensor<144xf32>
    %v432.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_6_modules_4_buffers_running_mean_, %l_self_modules_features_modules_6_modules_4_buffers_running_var_, %l_self_modules_features_modules_6_modules_4_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v432.buf : tensor<144xf32>) {
        ^bb0(%in_433: f32, %in_434: f32, %in_435: f32, %acc_436: f32):
          %v437 = arith.constant 1.0 : f32
          %v438 = arith.constant 9.999999747378752e-06 : f32
          %v439 = arith.addf %v438, %in_434 : f32
          %v440 = math.sqrt %v439 : f32
          %v441 = arith.divf %v437, %v440 : f32
          %v442 = arith.mulf %v441, %in_435 : f32
          %v443 = arith.mulf %v442, %in_433 : f32
          linalg.yield %v443 : f32
      }
    -> tensor<144xf32>
    %input_30.post = tensor.empty() : tensor<10x144x28x28xf32>
    %input_30.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_30.buf.out, %v422.buf.out, %v432.buf.out, %l_self_modules_features_modules_6_modules_4_parameters_bias_ : tensor<10x144x28x28xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%input_30.post : tensor<10x144x28x28xf32>) {
        ^bb0(%acc_447: f32, %in_444: f32, %in_445: f32, %in_446: f32, %post_448: f32):
          %v449 = arith.mulf %acc_447, %in_444 : f32
          %v450 = arith.subf %v449, %in_445 : f32
          %v451 = arith.addf %v450, %in_446 : f32
          %v452 = arith.maxnumf %init, %v451 : f32
          %v453 = arith.constant 6.0 : f32
          %v454 = arith.minnumf %v453, %v452 : f32
          linalg.yield %v454 : f32
      }
    -> tensor<10x144x28x28xf32>
    %l_self_modules_features_modules_6_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_6_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 144, 1, 1] : tensor<32x144xf32> into tensor<32x144x1x1xf32>
    %v455.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v455.buf = linalg.fill ins(%init : f32) outs(%v455.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v455.shape = tensor.empty() : tensor<28x1xf32>
    %v455.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_30.post.out, %l_self_modules_features_modules_6_modules_6_parameters_weight_.expanded, %v455.shape : tensor<10x144x28x28xf32>, tensor<32x144x1x1xf32>, tensor<28x1xf32>)
      outs(%v455.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_457: f32, %in_458: f32, %shape_456: f32, %acc_459: f32):
          %v460 = arith.mulf %in_457, %in_458 : f32
          %v461 = arith.addf %v460, %acc_459 : f32
          linalg.yield %v461 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %v462.buf = tensor.empty() : tensor<32xf32>
    %v462.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_6_modules_7_buffers_running_var_, %l_self_modules_features_modules_6_modules_7_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v462.buf : tensor<32xf32>) {
        ^bb0(%in_463: f32, %in_464: f32, %acc_465: f32):
          %v466 = arith.constant 1.0 : f32
          %v467 = arith.constant 9.999999747378752e-06 : f32
          %v468 = arith.addf %v467, %in_463 : f32
          %v469 = math.sqrt %v468 : f32
          %v470 = arith.divf %v466, %v469 : f32
          %v471 = arith.mulf %v470, %in_464 : f32
          linalg.yield %v471 : f32
      }
    -> tensor<32xf32>
    %v472.buf = tensor.empty() : tensor<32xf32>
    %v472.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_6_modules_7_buffers_running_mean_, %l_self_modules_features_modules_6_modules_7_buffers_running_var_, %l_self_modules_features_modules_6_modules_7_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v472.buf : tensor<32xf32>) {
        ^bb0(%in_473: f32, %in_474: f32, %in_475: f32, %acc_476: f32):
          %v477 = arith.constant 1.0 : f32
          %v478 = arith.constant 9.999999747378752e-06 : f32
          %v479 = arith.addf %v478, %in_474 : f32
          %v480 = math.sqrt %v479 : f32
          %v481 = arith.divf %v477, %v480 : f32
          %v482 = arith.mulf %v481, %in_475 : f32
          %v483 = arith.mulf %v482, %in_473 : f32
          linalg.yield %v483 : f32
      }
    -> tensor<32xf32>
    %v455.post = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v455.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v455.buf.out, %v462.buf.out, %v472.buf.out, %l_self_modules_features_modules_6_modules_7_parameters_bias_ : tensor<10x32x28x1x28xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v455.post : tensor<10x32x28x1x28xf32>) {
        ^bb0(%acc_487: f32, %in_484: f32, %in_485: f32, %in_486: f32, %post_488: f32):
          %v489 = arith.mulf %acc_487, %in_484 : f32
          %v490 = arith.subf %v489, %in_485 : f32
          %v491 = arith.addf %v490, %in_486 : f32
          linalg.yield %v491 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %l_self_modules_features_modules_7_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_7_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 32, 1, 1] : tensor<192x32xf32> into tensor<192x32x1x1xf32>
    %v492.empty = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v492.buf = linalg.fill ins(%init : f32) outs(%v492.empty : tensor<10x192x28x1x28xf32>) -> tensor<10x192x28x1x28xf32>
    %v492.shape = tensor.empty() : tensor<28x1xf32>
    %v492.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v455.post.out, %l_self_modules_features_modules_7_modules_0_parameters_weight_.expanded, %v492.shape : tensor<10x32x28x1x28xf32>, tensor<192x32x1x1xf32>, tensor<28x1xf32>)
      outs(%v492.buf : tensor<10x192x28x1x28xf32>) {
        ^bb0(%in_494: f32, %in_495: f32, %shape_493: f32, %acc_496: f32):
          %v497 = arith.mulf %in_494, %in_495 : f32
          %v498 = arith.addf %v497, %acc_496 : f32
          linalg.yield %v498 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %v499.buf = tensor.empty() : tensor<192xf32>
    %v499.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_7_modules_1_buffers_running_var_, %l_self_modules_features_modules_7_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v499.buf : tensor<192xf32>) {
        ^bb0(%in_500: f32, %in_501: f32, %acc_502: f32):
          %v503 = arith.constant 1.0 : f32
          %v504 = arith.constant 9.999999747378752e-06 : f32
          %v505 = arith.addf %v504, %in_500 : f32
          %v506 = math.sqrt %v505 : f32
          %v507 = arith.divf %v503, %v506 : f32
          %v508 = arith.mulf %v507, %in_501 : f32
          linalg.yield %v508 : f32
      }
    -> tensor<192xf32>
    %v509.buf = tensor.empty() : tensor<192xf32>
    %v509.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_7_modules_1_buffers_running_mean_, %l_self_modules_features_modules_7_modules_1_buffers_running_var_, %l_self_modules_features_modules_7_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v509.buf : tensor<192xf32>) {
        ^bb0(%in_510: f32, %in_511: f32, %in_512: f32, %acc_513: f32):
          %v514 = arith.constant 1.0 : f32
          %v515 = arith.constant 9.999999747378752e-06 : f32
          %v516 = arith.addf %v515, %in_511 : f32
          %v517 = math.sqrt %v516 : f32
          %v518 = arith.divf %v514, %v517 : f32
          %v519 = arith.mulf %v518, %in_512 : f32
          %v520 = arith.mulf %v519, %in_510 : f32
          linalg.yield %v520 : f32
      }
    -> tensor<192xf32>
    %v492.post = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v492.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v492.buf.out, %v499.buf.out, %v509.buf.out, %l_self_modules_features_modules_7_modules_1_parameters_bias_ : tensor<10x192x28x1x28xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v492.post : tensor<10x192x28x1x28xf32>) {
        ^bb0(%acc_524: f32, %in_521: f32, %in_522: f32, %in_523: f32, %post_525: f32):
          %v526 = arith.mulf %acc_524, %in_521 : f32
          %v527 = arith.subf %v526, %in_522 : f32
          %v528 = arith.addf %v527, %in_523 : f32
          %v529 = arith.maxnumf %init, %v528 : f32
          %v530 = arith.constant 6.0 : f32
          %v531 = arith.minnumf %v530, %v529 : f32
          linalg.yield %v531 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %input_35.buf = tensor.empty() : tensor<10x192x28x28xf32>
    %input_35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v492.post.out : tensor<10x192x28x1x28xf32>)
      outs(%input_35.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_532: f32, %acc_533: f32):
          linalg.yield %in_532 : f32
      }
    -> tensor<10x192x28x28xf32>
    %v538 = tensor.pad %input_35.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i534: index, %pad_i535: index, %pad_i536: index, %pad_i537: index):
        tensor.yield %init : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %l_self_modules_features_modules_7_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_7_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [192, 1, 3, 3] : tensor<192x3x3xf32> into tensor<192x1x3x3xf32>
    %input_38.empty = tensor.empty() : tensor<10x192x28x28xf32>
    %input_38.buf = linalg.fill ins(%init : f32) outs(%input_38.empty : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %input_38.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v538, %l_self_modules_features_modules_7_modules_3_parameters_weight_.expanded : tensor<10x192x30x30xf32>, tensor<192x1x3x3xf32>)
      outs(%input_38.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_539: f32, %in_540: f32, %acc_541: f32):
          %v542 = arith.mulf %in_539, %in_540 : f32
          %v543 = arith.addf %v542, %acc_541 : f32
          linalg.yield %v543 : f32
      }
    -> tensor<10x192x28x28xf32>
    %v544.buf = tensor.empty() : tensor<192xf32>
    %v544.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_7_modules_4_buffers_running_var_, %l_self_modules_features_modules_7_modules_4_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v544.buf : tensor<192xf32>) {
        ^bb0(%in_545: f32, %in_546: f32, %acc_547: f32):
          %v548 = arith.constant 1.0 : f32
          %v549 = arith.constant 9.999999747378752e-06 : f32
          %v550 = arith.addf %v549, %in_545 : f32
          %v551 = math.sqrt %v550 : f32
          %v552 = arith.divf %v548, %v551 : f32
          %v553 = arith.mulf %v552, %in_546 : f32
          linalg.yield %v553 : f32
      }
    -> tensor<192xf32>
    %v554.buf = tensor.empty() : tensor<192xf32>
    %v554.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_7_modules_4_buffers_running_mean_, %l_self_modules_features_modules_7_modules_4_buffers_running_var_, %l_self_modules_features_modules_7_modules_4_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v554.buf : tensor<192xf32>) {
        ^bb0(%in_555: f32, %in_556: f32, %in_557: f32, %acc_558: f32):
          %v559 = arith.constant 1.0 : f32
          %v560 = arith.constant 9.999999747378752e-06 : f32
          %v561 = arith.addf %v560, %in_556 : f32
          %v562 = math.sqrt %v561 : f32
          %v563 = arith.divf %v559, %v562 : f32
          %v564 = arith.mulf %v563, %in_557 : f32
          %v565 = arith.mulf %v564, %in_555 : f32
          linalg.yield %v565 : f32
      }
    -> tensor<192xf32>
    %input_38.post = tensor.empty() : tensor<10x192x28x28xf32>
    %input_38.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_38.buf.out, %v544.buf.out, %v554.buf.out, %l_self_modules_features_modules_7_modules_4_parameters_bias_ : tensor<10x192x28x28xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%input_38.post : tensor<10x192x28x28xf32>) {
        ^bb0(%acc_569: f32, %in_566: f32, %in_567: f32, %in_568: f32, %post_570: f32):
          %v571 = arith.mulf %acc_569, %in_566 : f32
          %v572 = arith.subf %v571, %in_567 : f32
          %v573 = arith.addf %v572, %in_568 : f32
          %v574 = arith.maxnumf %init, %v573 : f32
          %v575 = arith.constant 6.0 : f32
          %v576 = arith.minnumf %v575, %v574 : f32
          linalg.yield %v576 : f32
      }
    -> tensor<10x192x28x28xf32>
    %l_self_modules_features_modules_7_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_7_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 192, 1, 1] : tensor<32x192xf32> into tensor<32x192x1x1xf32>
    %v577.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v577.buf = linalg.fill ins(%init : f32) outs(%v577.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v577.shape = tensor.empty() : tensor<28x1xf32>
    %v577.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_38.post.out, %l_self_modules_features_modules_7_modules_6_parameters_weight_.expanded, %v577.shape : tensor<10x192x28x28xf32>, tensor<32x192x1x1xf32>, tensor<28x1xf32>)
      outs(%v577.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_579: f32, %in_580: f32, %shape_578: f32, %acc_581: f32):
          %v582 = arith.mulf %in_579, %in_580 : f32
          %v583 = arith.addf %v582, %acc_581 : f32
          linalg.yield %v583 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %v584.buf = tensor.empty() : tensor<32xf32>
    %v584.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_7_modules_7_buffers_running_var_, %l_self_modules_features_modules_7_modules_7_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v584.buf : tensor<32xf32>) {
        ^bb0(%in_585: f32, %in_586: f32, %acc_587: f32):
          %v588 = arith.constant 1.0 : f32
          %v589 = arith.constant 9.999999747378752e-06 : f32
          %v590 = arith.addf %v589, %in_585 : f32
          %v591 = math.sqrt %v590 : f32
          %v592 = arith.divf %v588, %v591 : f32
          %v593 = arith.mulf %v592, %in_586 : f32
          linalg.yield %v593 : f32
      }
    -> tensor<32xf32>
    %v594.buf = tensor.empty() : tensor<32xf32>
    %v594.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_7_modules_7_buffers_running_mean_, %l_self_modules_features_modules_7_modules_7_buffers_running_var_, %l_self_modules_features_modules_7_modules_7_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v594.buf : tensor<32xf32>) {
        ^bb0(%in_595: f32, %in_596: f32, %in_597: f32, %acc_598: f32):
          %v599 = arith.constant 1.0 : f32
          %v600 = arith.constant 9.999999747378752e-06 : f32
          %v601 = arith.addf %v600, %in_596 : f32
          %v602 = math.sqrt %v601 : f32
          %v603 = arith.divf %v599, %v602 : f32
          %v604 = arith.mulf %v603, %in_597 : f32
          %v605 = arith.mulf %v604, %in_595 : f32
          linalg.yield %v605 : f32
      }
    -> tensor<32xf32>
    %v577.post = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v577.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v577.buf.out, %v584.buf.out, %v594.buf.out, %l_self_modules_features_modules_7_modules_7_parameters_bias_ : tensor<10x32x28x1x28xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v577.post : tensor<10x32x28x1x28xf32>) {
        ^bb0(%acc_609: f32, %in_606: f32, %in_607: f32, %in_608: f32, %post_610: f32):
          %v611 = arith.mulf %acc_609, %in_606 : f32
          %v612 = arith.subf %v611, %in_607 : f32
          %v613 = arith.addf %v612, %in_608 : f32
          linalg.yield %v613 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %l_self_modules_features_modules_8_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_8_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 32, 1, 1] : tensor<192x32xf32> into tensor<192x32x1x1xf32>
    %v614.empty = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v614.buf = linalg.fill ins(%init : f32) outs(%v614.empty : tensor<10x192x28x1x28xf32>) -> tensor<10x192x28x1x28xf32>
    %v614.shape = tensor.empty() : tensor<28x1xf32>
    %v614.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v577.post.out, %l_self_modules_features_modules_8_modules_0_parameters_weight_.expanded, %v614.shape : tensor<10x32x28x1x28xf32>, tensor<192x32x1x1xf32>, tensor<28x1xf32>)
      outs(%v614.buf : tensor<10x192x28x1x28xf32>) {
        ^bb0(%in_616: f32, %in_617: f32, %shape_615: f32, %acc_618: f32):
          %v619 = arith.mulf %in_616, %in_617 : f32
          %v620 = arith.addf %v619, %acc_618 : f32
          linalg.yield %v620 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %v621.buf = tensor.empty() : tensor<192xf32>
    %v621.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_8_modules_1_buffers_running_var_, %l_self_modules_features_modules_8_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v621.buf : tensor<192xf32>) {
        ^bb0(%in_622: f32, %in_623: f32, %acc_624: f32):
          %v625 = arith.constant 1.0 : f32
          %v626 = arith.constant 9.999999747378752e-06 : f32
          %v627 = arith.addf %v626, %in_622 : f32
          %v628 = math.sqrt %v627 : f32
          %v629 = arith.divf %v625, %v628 : f32
          %v630 = arith.mulf %v629, %in_623 : f32
          linalg.yield %v630 : f32
      }
    -> tensor<192xf32>
    %v631.buf = tensor.empty() : tensor<192xf32>
    %v631.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_8_modules_1_buffers_running_mean_, %l_self_modules_features_modules_8_modules_1_buffers_running_var_, %l_self_modules_features_modules_8_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v631.buf : tensor<192xf32>) {
        ^bb0(%in_632: f32, %in_633: f32, %in_634: f32, %acc_635: f32):
          %v636 = arith.constant 1.0 : f32
          %v637 = arith.constant 9.999999747378752e-06 : f32
          %v638 = arith.addf %v637, %in_633 : f32
          %v639 = math.sqrt %v638 : f32
          %v640 = arith.divf %v636, %v639 : f32
          %v641 = arith.mulf %v640, %in_634 : f32
          %v642 = arith.mulf %v641, %in_632 : f32
          linalg.yield %v642 : f32
      }
    -> tensor<192xf32>
    %v614.post = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v614.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v614.buf.out, %v621.buf.out, %v631.buf.out, %l_self_modules_features_modules_8_modules_1_parameters_bias_ : tensor<10x192x28x1x28xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v614.post : tensor<10x192x28x1x28xf32>) {
        ^bb0(%acc_646: f32, %in_643: f32, %in_644: f32, %in_645: f32, %post_647: f32):
          %v648 = arith.mulf %acc_646, %in_643 : f32
          %v649 = arith.subf %v648, %in_644 : f32
          %v650 = arith.addf %v649, %in_645 : f32
          %v651 = arith.maxnumf %init, %v650 : f32
          %v652 = arith.constant 6.0 : f32
          %v653 = arith.minnumf %v652, %v651 : f32
          linalg.yield %v653 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %input_43.buf = tensor.empty() : tensor<10x192x28x28xf32>
    %input_43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v614.post.out : tensor<10x192x28x1x28xf32>)
      outs(%input_43.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_654: f32, %acc_655: f32):
          linalg.yield %in_654 : f32
      }
    -> tensor<10x192x28x28xf32>
    %v660 = tensor.pad %input_43.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i656: index, %pad_i657: index, %pad_i658: index, %pad_i659: index):
        tensor.yield %init : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %l_self_modules_features_modules_8_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_8_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [192, 1, 3, 3] : tensor<192x3x3xf32> into tensor<192x1x3x3xf32>
    %input_46.empty = tensor.empty() : tensor<10x192x28x28xf32>
    %input_46.buf = linalg.fill ins(%init : f32) outs(%input_46.empty : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %input_46.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v660, %l_self_modules_features_modules_8_modules_3_parameters_weight_.expanded : tensor<10x192x30x30xf32>, tensor<192x1x3x3xf32>)
      outs(%input_46.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_661: f32, %in_662: f32, %acc_663: f32):
          %v664 = arith.mulf %in_661, %in_662 : f32
          %v665 = arith.addf %v664, %acc_663 : f32
          linalg.yield %v665 : f32
      }
    -> tensor<10x192x28x28xf32>
    %v666.buf = tensor.empty() : tensor<192xf32>
    %v666.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_8_modules_4_buffers_running_var_, %l_self_modules_features_modules_8_modules_4_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v666.buf : tensor<192xf32>) {
        ^bb0(%in_667: f32, %in_668: f32, %acc_669: f32):
          %v670 = arith.constant 1.0 : f32
          %v671 = arith.constant 9.999999747378752e-06 : f32
          %v672 = arith.addf %v671, %in_667 : f32
          %v673 = math.sqrt %v672 : f32
          %v674 = arith.divf %v670, %v673 : f32
          %v675 = arith.mulf %v674, %in_668 : f32
          linalg.yield %v675 : f32
      }
    -> tensor<192xf32>
    %v676.buf = tensor.empty() : tensor<192xf32>
    %v676.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_8_modules_4_buffers_running_mean_, %l_self_modules_features_modules_8_modules_4_buffers_running_var_, %l_self_modules_features_modules_8_modules_4_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v676.buf : tensor<192xf32>) {
        ^bb0(%in_677: f32, %in_678: f32, %in_679: f32, %acc_680: f32):
          %v681 = arith.constant 1.0 : f32
          %v682 = arith.constant 9.999999747378752e-06 : f32
          %v683 = arith.addf %v682, %in_678 : f32
          %v684 = math.sqrt %v683 : f32
          %v685 = arith.divf %v681, %v684 : f32
          %v686 = arith.mulf %v685, %in_679 : f32
          %v687 = arith.mulf %v686, %in_677 : f32
          linalg.yield %v687 : f32
      }
    -> tensor<192xf32>
    %input_46.post = tensor.empty() : tensor<10x192x28x28xf32>
    %input_46.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_46.buf.out, %v666.buf.out, %v676.buf.out, %l_self_modules_features_modules_8_modules_4_parameters_bias_ : tensor<10x192x28x28xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%input_46.post : tensor<10x192x28x28xf32>) {
        ^bb0(%acc_691: f32, %in_688: f32, %in_689: f32, %in_690: f32, %post_692: f32):
          %v693 = arith.mulf %acc_691, %in_688 : f32
          %v694 = arith.subf %v693, %in_689 : f32
          %v695 = arith.addf %v694, %in_690 : f32
          %v696 = arith.maxnumf %init, %v695 : f32
          %v697 = arith.constant 6.0 : f32
          %v698 = arith.minnumf %v697, %v696 : f32
          linalg.yield %v698 : f32
      }
    -> tensor<10x192x28x28xf32>
    %l_self_modules_features_modules_8_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_8_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 192, 1, 1] : tensor<32x192xf32> into tensor<32x192x1x1xf32>
    %v699.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v699.buf = linalg.fill ins(%init : f32) outs(%v699.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v699.shape = tensor.empty() : tensor<28x1xf32>
    %v699.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_46.post.out, %l_self_modules_features_modules_8_modules_6_parameters_weight_.expanded, %v699.shape : tensor<10x192x28x28xf32>, tensor<32x192x1x1xf32>, tensor<28x1xf32>)
      outs(%v699.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_701: f32, %in_702: f32, %shape_700: f32, %acc_703: f32):
          %v704 = arith.mulf %in_701, %in_702 : f32
          %v705 = arith.addf %v704, %acc_703 : f32
          linalg.yield %v705 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %v706.buf = tensor.empty() : tensor<32xf32>
    %v706.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_8_modules_7_buffers_running_var_, %l_self_modules_features_modules_8_modules_7_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v706.buf : tensor<32xf32>) {
        ^bb0(%in_707: f32, %in_708: f32, %acc_709: f32):
          %v710 = arith.constant 1.0 : f32
          %v711 = arith.constant 9.999999747378752e-06 : f32
          %v712 = arith.addf %v711, %in_707 : f32
          %v713 = math.sqrt %v712 : f32
          %v714 = arith.divf %v710, %v713 : f32
          %v715 = arith.mulf %v714, %in_708 : f32
          linalg.yield %v715 : f32
      }
    -> tensor<32xf32>
    %v716.buf = tensor.empty() : tensor<32xf32>
    %v716.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_8_modules_7_buffers_running_mean_, %l_self_modules_features_modules_8_modules_7_buffers_running_var_, %l_self_modules_features_modules_8_modules_7_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v716.buf : tensor<32xf32>) {
        ^bb0(%in_717: f32, %in_718: f32, %in_719: f32, %acc_720: f32):
          %v721 = arith.constant 1.0 : f32
          %v722 = arith.constant 9.999999747378752e-06 : f32
          %v723 = arith.addf %v722, %in_718 : f32
          %v724 = math.sqrt %v723 : f32
          %v725 = arith.divf %v721, %v724 : f32
          %v726 = arith.mulf %v725, %in_719 : f32
          %v727 = arith.mulf %v726, %in_717 : f32
          linalg.yield %v727 : f32
      }
    -> tensor<32xf32>
    %v699.post = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v699.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v699.buf.out, %v706.buf.out, %v716.buf.out, %l_self_modules_features_modules_8_modules_7_parameters_bias_ : tensor<10x32x28x1x28xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v699.post : tensor<10x32x28x1x28xf32>) {
        ^bb0(%acc_731: f32, %in_728: f32, %in_729: f32, %in_730: f32, %post_732: f32):
          %v733 = arith.mulf %acc_731, %in_728 : f32
          %v734 = arith.subf %v733, %in_729 : f32
          %v735 = arith.addf %v734, %in_730 : f32
          linalg.yield %v735 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %l_self_modules_features_modules_9_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_9_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 32, 1, 1] : tensor<192x32xf32> into tensor<192x32x1x1xf32>
    %v736.empty = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v736.buf = linalg.fill ins(%init : f32) outs(%v736.empty : tensor<10x192x28x1x28xf32>) -> tensor<10x192x28x1x28xf32>
    %v736.shape = tensor.empty() : tensor<28x1xf32>
    %v736.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v699.post.out, %l_self_modules_features_modules_9_modules_0_parameters_weight_.expanded, %v736.shape : tensor<10x32x28x1x28xf32>, tensor<192x32x1x1xf32>, tensor<28x1xf32>)
      outs(%v736.buf : tensor<10x192x28x1x28xf32>) {
        ^bb0(%in_738: f32, %in_739: f32, %shape_737: f32, %acc_740: f32):
          %v741 = arith.mulf %in_738, %in_739 : f32
          %v742 = arith.addf %v741, %acc_740 : f32
          linalg.yield %v742 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %v743.buf = tensor.empty() : tensor<192xf32>
    %v743.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_9_modules_1_buffers_running_var_, %l_self_modules_features_modules_9_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v743.buf : tensor<192xf32>) {
        ^bb0(%in_744: f32, %in_745: f32, %acc_746: f32):
          %v747 = arith.constant 1.0 : f32
          %v748 = arith.constant 9.999999747378752e-06 : f32
          %v749 = arith.addf %v748, %in_744 : f32
          %v750 = math.sqrt %v749 : f32
          %v751 = arith.divf %v747, %v750 : f32
          %v752 = arith.mulf %v751, %in_745 : f32
          linalg.yield %v752 : f32
      }
    -> tensor<192xf32>
    %v753.buf = tensor.empty() : tensor<192xf32>
    %v753.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_9_modules_1_buffers_running_mean_, %l_self_modules_features_modules_9_modules_1_buffers_running_var_, %l_self_modules_features_modules_9_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v753.buf : tensor<192xf32>) {
        ^bb0(%in_754: f32, %in_755: f32, %in_756: f32, %acc_757: f32):
          %v758 = arith.constant 1.0 : f32
          %v759 = arith.constant 9.999999747378752e-06 : f32
          %v760 = arith.addf %v759, %in_755 : f32
          %v761 = math.sqrt %v760 : f32
          %v762 = arith.divf %v758, %v761 : f32
          %v763 = arith.mulf %v762, %in_756 : f32
          %v764 = arith.mulf %v763, %in_754 : f32
          linalg.yield %v764 : f32
      }
    -> tensor<192xf32>
    %v736.post = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v736.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v736.buf.out, %v743.buf.out, %v753.buf.out, %l_self_modules_features_modules_9_modules_1_parameters_bias_ : tensor<10x192x28x1x28xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v736.post : tensor<10x192x28x1x28xf32>) {
        ^bb0(%acc_768: f32, %in_765: f32, %in_766: f32, %in_767: f32, %post_769: f32):
          %v770 = arith.mulf %acc_768, %in_765 : f32
          %v771 = arith.subf %v770, %in_766 : f32
          %v772 = arith.addf %v771, %in_767 : f32
          %v773 = arith.maxnumf %init, %v772 : f32
          %v774 = arith.constant 6.0 : f32
          %v775 = arith.minnumf %v774, %v773 : f32
          linalg.yield %v775 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %input_51.buf = tensor.empty() : tensor<10x192x28x28xf32>
    %input_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v736.post.out : tensor<10x192x28x1x28xf32>)
      outs(%input_51.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_776: f32, %acc_777: f32):
          linalg.yield %in_776 : f32
      }
    -> tensor<10x192x28x28xf32>
    %v782 = tensor.pad %input_51.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i778: index, %pad_i779: index, %pad_i780: index, %pad_i781: index):
        tensor.yield %init : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %l_self_modules_features_modules_9_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_9_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [192, 1, 3, 3] : tensor<192x3x3xf32> into tensor<192x1x3x3xf32>
    %input_54.empty = tensor.empty() : tensor<10x192x14x14xf32>
    %input_54.buf = linalg.fill ins(%init : f32) outs(%input_54.empty : tensor<10x192x14x14xf32>) -> tensor<10x192x14x14xf32>
    %input_54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v782, %l_self_modules_features_modules_9_modules_3_parameters_weight_.expanded : tensor<10x192x30x30xf32>, tensor<192x1x3x3xf32>)
      outs(%input_54.buf : tensor<10x192x14x14xf32>) {
        ^bb0(%in_783: f32, %in_784: f32, %acc_785: f32):
          %v786 = arith.mulf %in_783, %in_784 : f32
          %v787 = arith.addf %v786, %acc_785 : f32
          linalg.yield %v787 : f32
      }
    -> tensor<10x192x14x14xf32>
    %v788.buf = tensor.empty() : tensor<192xf32>
    %v788.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_9_modules_4_buffers_running_var_, %l_self_modules_features_modules_9_modules_4_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v788.buf : tensor<192xf32>) {
        ^bb0(%in_789: f32, %in_790: f32, %acc_791: f32):
          %v792 = arith.constant 1.0 : f32
          %v793 = arith.constant 9.999999747378752e-06 : f32
          %v794 = arith.addf %v793, %in_789 : f32
          %v795 = math.sqrt %v794 : f32
          %v796 = arith.divf %v792, %v795 : f32
          %v797 = arith.mulf %v796, %in_790 : f32
          linalg.yield %v797 : f32
      }
    -> tensor<192xf32>
    %v798.buf = tensor.empty() : tensor<192xf32>
    %v798.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_9_modules_4_buffers_running_mean_, %l_self_modules_features_modules_9_modules_4_buffers_running_var_, %l_self_modules_features_modules_9_modules_4_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v798.buf : tensor<192xf32>) {
        ^bb0(%in_799: f32, %in_800: f32, %in_801: f32, %acc_802: f32):
          %v803 = arith.constant 1.0 : f32
          %v804 = arith.constant 9.999999747378752e-06 : f32
          %v805 = arith.addf %v804, %in_800 : f32
          %v806 = math.sqrt %v805 : f32
          %v807 = arith.divf %v803, %v806 : f32
          %v808 = arith.mulf %v807, %in_801 : f32
          %v809 = arith.mulf %v808, %in_799 : f32
          linalg.yield %v809 : f32
      }
    -> tensor<192xf32>
    %input_54.post = tensor.empty() : tensor<10x192x14x14xf32>
    %input_54.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_54.buf.out, %v788.buf.out, %v798.buf.out, %l_self_modules_features_modules_9_modules_4_parameters_bias_ : tensor<10x192x14x14xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%input_54.post : tensor<10x192x14x14xf32>) {
        ^bb0(%acc_813: f32, %in_810: f32, %in_811: f32, %in_812: f32, %post_814: f32):
          %v815 = arith.mulf %acc_813, %in_810 : f32
          %v816 = arith.subf %v815, %in_811 : f32
          %v817 = arith.addf %v816, %in_812 : f32
          %v818 = arith.maxnumf %init, %v817 : f32
          %v819 = arith.constant 6.0 : f32
          %v820 = arith.minnumf %v819, %v818 : f32
          linalg.yield %v820 : f32
      }
    -> tensor<10x192x14x14xf32>
    %l_self_modules_features_modules_9_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_9_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 192, 1, 1] : tensor<64x192xf32> into tensor<64x192x1x1xf32>
    %v821.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v821.buf = linalg.fill ins(%init : f32) outs(%v821.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v821.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_54.post.out, %l_self_modules_features_modules_9_modules_6_parameters_weight_.expanded : tensor<10x192x14x14xf32>, tensor<64x192x1x1xf32>)
      outs(%v821.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_822: f32, %in_823: f32, %acc_824: f32):
          %v825 = arith.mulf %in_822, %in_823 : f32
          %v826 = arith.addf %v825, %acc_824 : f32
          linalg.yield %v826 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v827.buf = tensor.empty() : tensor<64xf32>
    %v827.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_9_modules_7_buffers_running_var_, %l_self_modules_features_modules_9_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v827.buf : tensor<64xf32>) {
        ^bb0(%in_828: f32, %in_829: f32, %acc_830: f32):
          %v831 = arith.constant 1.0 : f32
          %v832 = arith.constant 9.999999747378752e-06 : f32
          %v833 = arith.addf %v832, %in_828 : f32
          %v834 = math.sqrt %v833 : f32
          %v835 = arith.divf %v831, %v834 : f32
          %v836 = arith.mulf %v835, %in_829 : f32
          linalg.yield %v836 : f32
      }
    -> tensor<64xf32>
    %v837.buf = tensor.empty() : tensor<64xf32>
    %v837.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_9_modules_7_buffers_running_mean_, %l_self_modules_features_modules_9_modules_7_buffers_running_var_, %l_self_modules_features_modules_9_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v837.buf : tensor<64xf32>) {
        ^bb0(%in_838: f32, %in_839: f32, %in_840: f32, %acc_841: f32):
          %v842 = arith.constant 1.0 : f32
          %v843 = arith.constant 9.999999747378752e-06 : f32
          %v844 = arith.addf %v843, %in_839 : f32
          %v845 = math.sqrt %v844 : f32
          %v846 = arith.divf %v842, %v845 : f32
          %v847 = arith.mulf %v846, %in_840 : f32
          %v848 = arith.mulf %v847, %in_838 : f32
          linalg.yield %v848 : f32
      }
    -> tensor<64xf32>
    %v821.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v821.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v821.buf.out, %v827.buf.out, %v837.buf.out, %l_self_modules_features_modules_9_modules_7_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v821.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_852: f32, %in_849: f32, %in_850: f32, %in_851: f32, %post_853: f32):
          %v854 = arith.mulf %acc_852, %in_849 : f32
          %v855 = arith.subf %v854, %in_850 : f32
          %v856 = arith.addf %v855, %in_851 : f32
          linalg.yield %v856 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %l_self_modules_features_modules_10_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_10_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [384, 64, 1, 1] : tensor<384x64xf32> into tensor<384x64x1x1xf32>
    %v857.empty = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v857.buf = linalg.fill ins(%init : f32) outs(%v857.empty : tensor<10x384x7x2x14xf32>) -> tensor<10x384x7x2x14xf32>
    %v857.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v821.post.out, %l_self_modules_features_modules_10_modules_0_parameters_weight_.expanded : tensor<10x64x7x2x14xf32>, tensor<384x64x1x1xf32>)
      outs(%v857.buf : tensor<10x384x7x2x14xf32>) {
        ^bb0(%in_858: f32, %in_859: f32, %acc_860: f32):
          %v861 = arith.mulf %in_858, %in_859 : f32
          %v862 = arith.addf %v861, %acc_860 : f32
          linalg.yield %v862 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %v863.buf = tensor.empty() : tensor<384xf32>
    %v863.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_10_modules_1_buffers_running_var_, %l_self_modules_features_modules_10_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v863.buf : tensor<384xf32>) {
        ^bb0(%in_864: f32, %in_865: f32, %acc_866: f32):
          %v867 = arith.constant 1.0 : f32
          %v868 = arith.constant 9.999999747378752e-06 : f32
          %v869 = arith.addf %v868, %in_864 : f32
          %v870 = math.sqrt %v869 : f32
          %v871 = arith.divf %v867, %v870 : f32
          %v872 = arith.mulf %v871, %in_865 : f32
          linalg.yield %v872 : f32
      }
    -> tensor<384xf32>
    %v873.buf = tensor.empty() : tensor<384xf32>
    %v873.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_10_modules_1_buffers_running_mean_, %l_self_modules_features_modules_10_modules_1_buffers_running_var_, %l_self_modules_features_modules_10_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v873.buf : tensor<384xf32>) {
        ^bb0(%in_874: f32, %in_875: f32, %in_876: f32, %acc_877: f32):
          %v878 = arith.constant 1.0 : f32
          %v879 = arith.constant 9.999999747378752e-06 : f32
          %v880 = arith.addf %v879, %in_875 : f32
          %v881 = math.sqrt %v880 : f32
          %v882 = arith.divf %v878, %v881 : f32
          %v883 = arith.mulf %v882, %in_876 : f32
          %v884 = arith.mulf %v883, %in_874 : f32
          linalg.yield %v884 : f32
      }
    -> tensor<384xf32>
    %v857.post = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v857.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v857.buf.out, %v863.buf.out, %v873.buf.out, %l_self_modules_features_modules_10_modules_1_parameters_bias_ : tensor<10x384x7x2x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v857.post : tensor<10x384x7x2x14xf32>) {
        ^bb0(%acc_888: f32, %in_885: f32, %in_886: f32, %in_887: f32, %post_889: f32):
          %v890 = arith.mulf %acc_888, %in_885 : f32
          %v891 = arith.subf %v890, %in_886 : f32
          %v892 = arith.addf %v891, %in_887 : f32
          %v893 = arith.maxnumf %init, %v892 : f32
          %v894 = arith.constant 6.0 : f32
          %v895 = arith.minnumf %v894, %v893 : f32
          linalg.yield %v895 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %input_59.buf = tensor.empty() : tensor<10x384x14x14xf32>
    %input_59.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v857.post.out : tensor<10x384x7x2x14xf32>)
      outs(%input_59.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_896: f32, %acc_897: f32):
          linalg.yield %in_896 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v902 = tensor.pad %input_59.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i898: index, %pad_i899: index, %pad_i900: index, %pad_i901: index):
        tensor.yield %init : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %l_self_modules_features_modules_10_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_10_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [384, 1, 3, 3] : tensor<384x3x3xf32> into tensor<384x1x3x3xf32>
    %input_62.empty = tensor.empty() : tensor<10x384x14x14xf32>
    %input_62.buf = linalg.fill ins(%init : f32) outs(%input_62.empty : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %input_62.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v902, %l_self_modules_features_modules_10_modules_3_parameters_weight_.expanded : tensor<10x384x16x16xf32>, tensor<384x1x3x3xf32>)
      outs(%input_62.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_903: f32, %in_904: f32, %acc_905: f32):
          %v906 = arith.mulf %in_903, %in_904 : f32
          %v907 = arith.addf %v906, %acc_905 : f32
          linalg.yield %v907 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v908.buf = tensor.empty() : tensor<384xf32>
    %v908.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_10_modules_4_buffers_running_var_, %l_self_modules_features_modules_10_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v908.buf : tensor<384xf32>) {
        ^bb0(%in_909: f32, %in_910: f32, %acc_911: f32):
          %v912 = arith.constant 1.0 : f32
          %v913 = arith.constant 9.999999747378752e-06 : f32
          %v914 = arith.addf %v913, %in_909 : f32
          %v915 = math.sqrt %v914 : f32
          %v916 = arith.divf %v912, %v915 : f32
          %v917 = arith.mulf %v916, %in_910 : f32
          linalg.yield %v917 : f32
      }
    -> tensor<384xf32>
    %v918.buf = tensor.empty() : tensor<384xf32>
    %v918.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_10_modules_4_buffers_running_mean_, %l_self_modules_features_modules_10_modules_4_buffers_running_var_, %l_self_modules_features_modules_10_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v918.buf : tensor<384xf32>) {
        ^bb0(%in_919: f32, %in_920: f32, %in_921: f32, %acc_922: f32):
          %v923 = arith.constant 1.0 : f32
          %v924 = arith.constant 9.999999747378752e-06 : f32
          %v925 = arith.addf %v924, %in_920 : f32
          %v926 = math.sqrt %v925 : f32
          %v927 = arith.divf %v923, %v926 : f32
          %v928 = arith.mulf %v927, %in_921 : f32
          %v929 = arith.mulf %v928, %in_919 : f32
          linalg.yield %v929 : f32
      }
    -> tensor<384xf32>
    %input_62.post = tensor.empty() : tensor<10x384x14x14xf32>
    %input_62.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_62.buf.out, %v908.buf.out, %v918.buf.out, %l_self_modules_features_modules_10_modules_4_parameters_bias_ : tensor<10x384x14x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%input_62.post : tensor<10x384x14x14xf32>) {
        ^bb0(%acc_933: f32, %in_930: f32, %in_931: f32, %in_932: f32, %post_934: f32):
          %v935 = arith.mulf %acc_933, %in_930 : f32
          %v936 = arith.subf %v935, %in_931 : f32
          %v937 = arith.addf %v936, %in_932 : f32
          %v938 = arith.maxnumf %init, %v937 : f32
          %v939 = arith.constant 6.0 : f32
          %v940 = arith.minnumf %v939, %v938 : f32
          linalg.yield %v940 : f32
      }
    -> tensor<10x384x14x14xf32>
    %l_self_modules_features_modules_10_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_10_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 384, 1, 1] : tensor<64x384xf32> into tensor<64x384x1x1xf32>
    %v941.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v941.buf = linalg.fill ins(%init : f32) outs(%v941.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v941.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_62.post.out, %l_self_modules_features_modules_10_modules_6_parameters_weight_.expanded : tensor<10x384x14x14xf32>, tensor<64x384x1x1xf32>)
      outs(%v941.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_942: f32, %in_943: f32, %acc_944: f32):
          %v945 = arith.mulf %in_942, %in_943 : f32
          %v946 = arith.addf %v945, %acc_944 : f32
          linalg.yield %v946 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v947.buf = tensor.empty() : tensor<64xf32>
    %v947.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_10_modules_7_buffers_running_var_, %l_self_modules_features_modules_10_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v947.buf : tensor<64xf32>) {
        ^bb0(%in_948: f32, %in_949: f32, %acc_950: f32):
          %v951 = arith.constant 1.0 : f32
          %v952 = arith.constant 9.999999747378752e-06 : f32
          %v953 = arith.addf %v952, %in_948 : f32
          %v954 = math.sqrt %v953 : f32
          %v955 = arith.divf %v951, %v954 : f32
          %v956 = arith.mulf %v955, %in_949 : f32
          linalg.yield %v956 : f32
      }
    -> tensor<64xf32>
    %v957.buf = tensor.empty() : tensor<64xf32>
    %v957.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_10_modules_7_buffers_running_mean_, %l_self_modules_features_modules_10_modules_7_buffers_running_var_, %l_self_modules_features_modules_10_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v957.buf : tensor<64xf32>) {
        ^bb0(%in_958: f32, %in_959: f32, %in_960: f32, %acc_961: f32):
          %v962 = arith.constant 1.0 : f32
          %v963 = arith.constant 9.999999747378752e-06 : f32
          %v964 = arith.addf %v963, %in_959 : f32
          %v965 = math.sqrt %v964 : f32
          %v966 = arith.divf %v962, %v965 : f32
          %v967 = arith.mulf %v966, %in_960 : f32
          %v968 = arith.mulf %v967, %in_958 : f32
          linalg.yield %v968 : f32
      }
    -> tensor<64xf32>
    %v941.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v941.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v941.buf.out, %v947.buf.out, %v957.buf.out, %l_self_modules_features_modules_10_modules_7_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v941.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_972: f32, %in_969: f32, %in_970: f32, %in_971: f32, %post_973: f32):
          %v974 = arith.mulf %acc_972, %in_969 : f32
          %v975 = arith.subf %v974, %in_970 : f32
          %v976 = arith.addf %v975, %in_971 : f32
          linalg.yield %v976 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %l_self_modules_features_modules_11_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_11_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [384, 64, 1, 1] : tensor<384x64xf32> into tensor<384x64x1x1xf32>
    %v977.empty = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v977.buf = linalg.fill ins(%init : f32) outs(%v977.empty : tensor<10x384x7x2x14xf32>) -> tensor<10x384x7x2x14xf32>
    %v977.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v941.post.out, %l_self_modules_features_modules_11_modules_0_parameters_weight_.expanded : tensor<10x64x7x2x14xf32>, tensor<384x64x1x1xf32>)
      outs(%v977.buf : tensor<10x384x7x2x14xf32>) {
        ^bb0(%in_978: f32, %in_979: f32, %acc_980: f32):
          %v981 = arith.mulf %in_978, %in_979 : f32
          %v982 = arith.addf %v981, %acc_980 : f32
          linalg.yield %v982 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %v983.buf = tensor.empty() : tensor<384xf32>
    %v983.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_11_modules_1_buffers_running_var_, %l_self_modules_features_modules_11_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v983.buf : tensor<384xf32>) {
        ^bb0(%in_984: f32, %in_985: f32, %acc_986: f32):
          %v987 = arith.constant 1.0 : f32
          %v988 = arith.constant 9.999999747378752e-06 : f32
          %v989 = arith.addf %v988, %in_984 : f32
          %v990 = math.sqrt %v989 : f32
          %v991 = arith.divf %v987, %v990 : f32
          %v992 = arith.mulf %v991, %in_985 : f32
          linalg.yield %v992 : f32
      }
    -> tensor<384xf32>
    %v993.buf = tensor.empty() : tensor<384xf32>
    %v993.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_11_modules_1_buffers_running_mean_, %l_self_modules_features_modules_11_modules_1_buffers_running_var_, %l_self_modules_features_modules_11_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v993.buf : tensor<384xf32>) {
        ^bb0(%in_994: f32, %in_995: f32, %in_996: f32, %acc_997: f32):
          %v998 = arith.constant 1.0 : f32
          %v999 = arith.constant 9.999999747378752e-06 : f32
          %v1000 = arith.addf %v999, %in_995 : f32
          %v1001 = math.sqrt %v1000 : f32
          %v1002 = arith.divf %v998, %v1001 : f32
          %v1003 = arith.mulf %v1002, %in_996 : f32
          %v1004 = arith.mulf %v1003, %in_994 : f32
          linalg.yield %v1004 : f32
      }
    -> tensor<384xf32>
    %v977.post = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v977.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v977.buf.out, %v983.buf.out, %v993.buf.out, %l_self_modules_features_modules_11_modules_1_parameters_bias_ : tensor<10x384x7x2x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v977.post : tensor<10x384x7x2x14xf32>) {
        ^bb0(%acc_1008: f32, %in_1005: f32, %in_1006: f32, %in_1007: f32, %post_1009: f32):
          %v1010 = arith.mulf %acc_1008, %in_1005 : f32
          %v1011 = arith.subf %v1010, %in_1006 : f32
          %v1012 = arith.addf %v1011, %in_1007 : f32
          %v1013 = arith.maxnumf %init, %v1012 : f32
          %v1014 = arith.constant 6.0 : f32
          %v1015 = arith.minnumf %v1014, %v1013 : f32
          linalg.yield %v1015 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %input_67.buf = tensor.empty() : tensor<10x384x14x14xf32>
    %input_67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v977.post.out : tensor<10x384x7x2x14xf32>)
      outs(%input_67.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_1016: f32, %acc_1017: f32):
          linalg.yield %in_1016 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v1022 = tensor.pad %input_67.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1018: index, %pad_i1019: index, %pad_i1020: index, %pad_i1021: index):
        tensor.yield %init : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %l_self_modules_features_modules_11_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_11_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [384, 1, 3, 3] : tensor<384x3x3xf32> into tensor<384x1x3x3xf32>
    %input_70.empty = tensor.empty() : tensor<10x384x14x14xf32>
    %input_70.buf = linalg.fill ins(%init : f32) outs(%input_70.empty : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %input_70.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1022, %l_self_modules_features_modules_11_modules_3_parameters_weight_.expanded : tensor<10x384x16x16xf32>, tensor<384x1x3x3xf32>)
      outs(%input_70.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_1023: f32, %in_1024: f32, %acc_1025: f32):
          %v1026 = arith.mulf %in_1023, %in_1024 : f32
          %v1027 = arith.addf %v1026, %acc_1025 : f32
          linalg.yield %v1027 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v1028.buf = tensor.empty() : tensor<384xf32>
    %v1028.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_11_modules_4_buffers_running_var_, %l_self_modules_features_modules_11_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v1028.buf : tensor<384xf32>) {
        ^bb0(%in_1029: f32, %in_1030: f32, %acc_1031: f32):
          %v1032 = arith.constant 1.0 : f32
          %v1033 = arith.constant 9.999999747378752e-06 : f32
          %v1034 = arith.addf %v1033, %in_1029 : f32
          %v1035 = math.sqrt %v1034 : f32
          %v1036 = arith.divf %v1032, %v1035 : f32
          %v1037 = arith.mulf %v1036, %in_1030 : f32
          linalg.yield %v1037 : f32
      }
    -> tensor<384xf32>
    %v1038.buf = tensor.empty() : tensor<384xf32>
    %v1038.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_11_modules_4_buffers_running_mean_, %l_self_modules_features_modules_11_modules_4_buffers_running_var_, %l_self_modules_features_modules_11_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1038.buf : tensor<384xf32>) {
        ^bb0(%in_1039: f32, %in_1040: f32, %in_1041: f32, %acc_1042: f32):
          %v1043 = arith.constant 1.0 : f32
          %v1044 = arith.constant 9.999999747378752e-06 : f32
          %v1045 = arith.addf %v1044, %in_1040 : f32
          %v1046 = math.sqrt %v1045 : f32
          %v1047 = arith.divf %v1043, %v1046 : f32
          %v1048 = arith.mulf %v1047, %in_1041 : f32
          %v1049 = arith.mulf %v1048, %in_1039 : f32
          linalg.yield %v1049 : f32
      }
    -> tensor<384xf32>
    %input_70.post = tensor.empty() : tensor<10x384x14x14xf32>
    %input_70.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_70.buf.out, %v1028.buf.out, %v1038.buf.out, %l_self_modules_features_modules_11_modules_4_parameters_bias_ : tensor<10x384x14x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%input_70.post : tensor<10x384x14x14xf32>) {
        ^bb0(%acc_1053: f32, %in_1050: f32, %in_1051: f32, %in_1052: f32, %post_1054: f32):
          %v1055 = arith.mulf %acc_1053, %in_1050 : f32
          %v1056 = arith.subf %v1055, %in_1051 : f32
          %v1057 = arith.addf %v1056, %in_1052 : f32
          %v1058 = arith.maxnumf %init, %v1057 : f32
          %v1059 = arith.constant 6.0 : f32
          %v1060 = arith.minnumf %v1059, %v1058 : f32
          linalg.yield %v1060 : f32
      }
    -> tensor<10x384x14x14xf32>
    %l_self_modules_features_modules_11_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_11_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 384, 1, 1] : tensor<64x384xf32> into tensor<64x384x1x1xf32>
    %v1061.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v1061.buf = linalg.fill ins(%init : f32) outs(%v1061.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v1061.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_70.post.out, %l_self_modules_features_modules_11_modules_6_parameters_weight_.expanded : tensor<10x384x14x14xf32>, tensor<64x384x1x1xf32>)
      outs(%v1061.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_1062: f32, %in_1063: f32, %acc_1064: f32):
          %v1065 = arith.mulf %in_1062, %in_1063 : f32
          %v1066 = arith.addf %v1065, %acc_1064 : f32
          linalg.yield %v1066 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v1067.buf = tensor.empty() : tensor<64xf32>
    %v1067.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_11_modules_7_buffers_running_var_, %l_self_modules_features_modules_11_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v1067.buf : tensor<64xf32>) {
        ^bb0(%in_1068: f32, %in_1069: f32, %acc_1070: f32):
          %v1071 = arith.constant 1.0 : f32
          %v1072 = arith.constant 9.999999747378752e-06 : f32
          %v1073 = arith.addf %v1072, %in_1068 : f32
          %v1074 = math.sqrt %v1073 : f32
          %v1075 = arith.divf %v1071, %v1074 : f32
          %v1076 = arith.mulf %v1075, %in_1069 : f32
          linalg.yield %v1076 : f32
      }
    -> tensor<64xf32>
    %v1077.buf = tensor.empty() : tensor<64xf32>
    %v1077.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_11_modules_7_buffers_running_mean_, %l_self_modules_features_modules_11_modules_7_buffers_running_var_, %l_self_modules_features_modules_11_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v1077.buf : tensor<64xf32>) {
        ^bb0(%in_1078: f32, %in_1079: f32, %in_1080: f32, %acc_1081: f32):
          %v1082 = arith.constant 1.0 : f32
          %v1083 = arith.constant 9.999999747378752e-06 : f32
          %v1084 = arith.addf %v1083, %in_1079 : f32
          %v1085 = math.sqrt %v1084 : f32
          %v1086 = arith.divf %v1082, %v1085 : f32
          %v1087 = arith.mulf %v1086, %in_1080 : f32
          %v1088 = arith.mulf %v1087, %in_1078 : f32
          linalg.yield %v1088 : f32
      }
    -> tensor<64xf32>
    %v1061.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v1061.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1061.buf.out, %v1067.buf.out, %v1077.buf.out, %l_self_modules_features_modules_11_modules_7_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v1061.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_1092: f32, %in_1089: f32, %in_1090: f32, %in_1091: f32, %post_1093: f32):
          %v1094 = arith.mulf %acc_1092, %in_1089 : f32
          %v1095 = arith.subf %v1094, %in_1090 : f32
          %v1096 = arith.addf %v1095, %in_1091 : f32
          linalg.yield %v1096 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %l_self_modules_features_modules_12_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_12_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [384, 64, 1, 1] : tensor<384x64xf32> into tensor<384x64x1x1xf32>
    %v1097.empty = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v1097.buf = linalg.fill ins(%init : f32) outs(%v1097.empty : tensor<10x384x7x2x14xf32>) -> tensor<10x384x7x2x14xf32>
    %v1097.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1061.post.out, %l_self_modules_features_modules_12_modules_0_parameters_weight_.expanded : tensor<10x64x7x2x14xf32>, tensor<384x64x1x1xf32>)
      outs(%v1097.buf : tensor<10x384x7x2x14xf32>) {
        ^bb0(%in_1098: f32, %in_1099: f32, %acc_1100: f32):
          %v1101 = arith.mulf %in_1098, %in_1099 : f32
          %v1102 = arith.addf %v1101, %acc_1100 : f32
          linalg.yield %v1102 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %v1103.buf = tensor.empty() : tensor<384xf32>
    %v1103.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_12_modules_1_buffers_running_var_, %l_self_modules_features_modules_12_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v1103.buf : tensor<384xf32>) {
        ^bb0(%in_1104: f32, %in_1105: f32, %acc_1106: f32):
          %v1107 = arith.constant 1.0 : f32
          %v1108 = arith.constant 9.999999747378752e-06 : f32
          %v1109 = arith.addf %v1108, %in_1104 : f32
          %v1110 = math.sqrt %v1109 : f32
          %v1111 = arith.divf %v1107, %v1110 : f32
          %v1112 = arith.mulf %v1111, %in_1105 : f32
          linalg.yield %v1112 : f32
      }
    -> tensor<384xf32>
    %v1113.buf = tensor.empty() : tensor<384xf32>
    %v1113.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_12_modules_1_buffers_running_mean_, %l_self_modules_features_modules_12_modules_1_buffers_running_var_, %l_self_modules_features_modules_12_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1113.buf : tensor<384xf32>) {
        ^bb0(%in_1114: f32, %in_1115: f32, %in_1116: f32, %acc_1117: f32):
          %v1118 = arith.constant 1.0 : f32
          %v1119 = arith.constant 9.999999747378752e-06 : f32
          %v1120 = arith.addf %v1119, %in_1115 : f32
          %v1121 = math.sqrt %v1120 : f32
          %v1122 = arith.divf %v1118, %v1121 : f32
          %v1123 = arith.mulf %v1122, %in_1116 : f32
          %v1124 = arith.mulf %v1123, %in_1114 : f32
          linalg.yield %v1124 : f32
      }
    -> tensor<384xf32>
    %v1097.post = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v1097.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1097.buf.out, %v1103.buf.out, %v1113.buf.out, %l_self_modules_features_modules_12_modules_1_parameters_bias_ : tensor<10x384x7x2x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1097.post : tensor<10x384x7x2x14xf32>) {
        ^bb0(%acc_1128: f32, %in_1125: f32, %in_1126: f32, %in_1127: f32, %post_1129: f32):
          %v1130 = arith.mulf %acc_1128, %in_1125 : f32
          %v1131 = arith.subf %v1130, %in_1126 : f32
          %v1132 = arith.addf %v1131, %in_1127 : f32
          %v1133 = arith.maxnumf %init, %v1132 : f32
          %v1134 = arith.constant 6.0 : f32
          %v1135 = arith.minnumf %v1134, %v1133 : f32
          linalg.yield %v1135 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %input_75.buf = tensor.empty() : tensor<10x384x14x14xf32>
    %input_75.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1097.post.out : tensor<10x384x7x2x14xf32>)
      outs(%input_75.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_1136: f32, %acc_1137: f32):
          linalg.yield %in_1136 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v1142 = tensor.pad %input_75.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1138: index, %pad_i1139: index, %pad_i1140: index, %pad_i1141: index):
        tensor.yield %init : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %l_self_modules_features_modules_12_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_12_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [384, 1, 3, 3] : tensor<384x3x3xf32> into tensor<384x1x3x3xf32>
    %input_78.empty = tensor.empty() : tensor<10x384x14x14xf32>
    %input_78.buf = linalg.fill ins(%init : f32) outs(%input_78.empty : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %input_78.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1142, %l_self_modules_features_modules_12_modules_3_parameters_weight_.expanded : tensor<10x384x16x16xf32>, tensor<384x1x3x3xf32>)
      outs(%input_78.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_1143: f32, %in_1144: f32, %acc_1145: f32):
          %v1146 = arith.mulf %in_1143, %in_1144 : f32
          %v1147 = arith.addf %v1146, %acc_1145 : f32
          linalg.yield %v1147 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v1148.buf = tensor.empty() : tensor<384xf32>
    %v1148.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_12_modules_4_buffers_running_var_, %l_self_modules_features_modules_12_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v1148.buf : tensor<384xf32>) {
        ^bb0(%in_1149: f32, %in_1150: f32, %acc_1151: f32):
          %v1152 = arith.constant 1.0 : f32
          %v1153 = arith.constant 9.999999747378752e-06 : f32
          %v1154 = arith.addf %v1153, %in_1149 : f32
          %v1155 = math.sqrt %v1154 : f32
          %v1156 = arith.divf %v1152, %v1155 : f32
          %v1157 = arith.mulf %v1156, %in_1150 : f32
          linalg.yield %v1157 : f32
      }
    -> tensor<384xf32>
    %v1158.buf = tensor.empty() : tensor<384xf32>
    %v1158.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_12_modules_4_buffers_running_mean_, %l_self_modules_features_modules_12_modules_4_buffers_running_var_, %l_self_modules_features_modules_12_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1158.buf : tensor<384xf32>) {
        ^bb0(%in_1159: f32, %in_1160: f32, %in_1161: f32, %acc_1162: f32):
          %v1163 = arith.constant 1.0 : f32
          %v1164 = arith.constant 9.999999747378752e-06 : f32
          %v1165 = arith.addf %v1164, %in_1160 : f32
          %v1166 = math.sqrt %v1165 : f32
          %v1167 = arith.divf %v1163, %v1166 : f32
          %v1168 = arith.mulf %v1167, %in_1161 : f32
          %v1169 = arith.mulf %v1168, %in_1159 : f32
          linalg.yield %v1169 : f32
      }
    -> tensor<384xf32>
    %input_78.post = tensor.empty() : tensor<10x384x14x14xf32>
    %input_78.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_78.buf.out, %v1148.buf.out, %v1158.buf.out, %l_self_modules_features_modules_12_modules_4_parameters_bias_ : tensor<10x384x14x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%input_78.post : tensor<10x384x14x14xf32>) {
        ^bb0(%acc_1173: f32, %in_1170: f32, %in_1171: f32, %in_1172: f32, %post_1174: f32):
          %v1175 = arith.mulf %acc_1173, %in_1170 : f32
          %v1176 = arith.subf %v1175, %in_1171 : f32
          %v1177 = arith.addf %v1176, %in_1172 : f32
          %v1178 = arith.maxnumf %init, %v1177 : f32
          %v1179 = arith.constant 6.0 : f32
          %v1180 = arith.minnumf %v1179, %v1178 : f32
          linalg.yield %v1180 : f32
      }
    -> tensor<10x384x14x14xf32>
    %l_self_modules_features_modules_12_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_12_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 384, 1, 1] : tensor<64x384xf32> into tensor<64x384x1x1xf32>
    %v1181.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v1181.buf = linalg.fill ins(%init : f32) outs(%v1181.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v1181.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_78.post.out, %l_self_modules_features_modules_12_modules_6_parameters_weight_.expanded : tensor<10x384x14x14xf32>, tensor<64x384x1x1xf32>)
      outs(%v1181.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_1182: f32, %in_1183: f32, %acc_1184: f32):
          %v1185 = arith.mulf %in_1182, %in_1183 : f32
          %v1186 = arith.addf %v1185, %acc_1184 : f32
          linalg.yield %v1186 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v1187.buf = tensor.empty() : tensor<64xf32>
    %v1187.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_12_modules_7_buffers_running_var_, %l_self_modules_features_modules_12_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v1187.buf : tensor<64xf32>) {
        ^bb0(%in_1188: f32, %in_1189: f32, %acc_1190: f32):
          %v1191 = arith.constant 1.0 : f32
          %v1192 = arith.constant 9.999999747378752e-06 : f32
          %v1193 = arith.addf %v1192, %in_1188 : f32
          %v1194 = math.sqrt %v1193 : f32
          %v1195 = arith.divf %v1191, %v1194 : f32
          %v1196 = arith.mulf %v1195, %in_1189 : f32
          linalg.yield %v1196 : f32
      }
    -> tensor<64xf32>
    %v1197.buf = tensor.empty() : tensor<64xf32>
    %v1197.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_12_modules_7_buffers_running_mean_, %l_self_modules_features_modules_12_modules_7_buffers_running_var_, %l_self_modules_features_modules_12_modules_7_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v1197.buf : tensor<64xf32>) {
        ^bb0(%in_1198: f32, %in_1199: f32, %in_1200: f32, %acc_1201: f32):
          %v1202 = arith.constant 1.0 : f32
          %v1203 = arith.constant 9.999999747378752e-06 : f32
          %v1204 = arith.addf %v1203, %in_1199 : f32
          %v1205 = math.sqrt %v1204 : f32
          %v1206 = arith.divf %v1202, %v1205 : f32
          %v1207 = arith.mulf %v1206, %in_1200 : f32
          %v1208 = arith.mulf %v1207, %in_1198 : f32
          linalg.yield %v1208 : f32
      }
    -> tensor<64xf32>
    %v1181.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v1181.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1181.buf.out, %v1187.buf.out, %v1197.buf.out, %l_self_modules_features_modules_12_modules_7_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v1181.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_1212: f32, %in_1209: f32, %in_1210: f32, %in_1211: f32, %post_1213: f32):
          %v1214 = arith.mulf %acc_1212, %in_1209 : f32
          %v1215 = arith.subf %v1214, %in_1210 : f32
          %v1216 = arith.addf %v1215, %in_1211 : f32
          linalg.yield %v1216 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %l_self_modules_features_modules_13_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_13_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [384, 64, 1, 1] : tensor<384x64xf32> into tensor<384x64x1x1xf32>
    %v1217.empty = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v1217.buf = linalg.fill ins(%init : f32) outs(%v1217.empty : tensor<10x384x7x2x14xf32>) -> tensor<10x384x7x2x14xf32>
    %v1217.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1181.post.out, %l_self_modules_features_modules_13_modules_0_parameters_weight_.expanded : tensor<10x64x7x2x14xf32>, tensor<384x64x1x1xf32>)
      outs(%v1217.buf : tensor<10x384x7x2x14xf32>) {
        ^bb0(%in_1218: f32, %in_1219: f32, %acc_1220: f32):
          %v1221 = arith.mulf %in_1218, %in_1219 : f32
          %v1222 = arith.addf %v1221, %acc_1220 : f32
          linalg.yield %v1222 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %v1223.buf = tensor.empty() : tensor<384xf32>
    %v1223.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_13_modules_1_buffers_running_var_, %l_self_modules_features_modules_13_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v1223.buf : tensor<384xf32>) {
        ^bb0(%in_1224: f32, %in_1225: f32, %acc_1226: f32):
          %v1227 = arith.constant 1.0 : f32
          %v1228 = arith.constant 9.999999747378752e-06 : f32
          %v1229 = arith.addf %v1228, %in_1224 : f32
          %v1230 = math.sqrt %v1229 : f32
          %v1231 = arith.divf %v1227, %v1230 : f32
          %v1232 = arith.mulf %v1231, %in_1225 : f32
          linalg.yield %v1232 : f32
      }
    -> tensor<384xf32>
    %v1233.buf = tensor.empty() : tensor<384xf32>
    %v1233.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_13_modules_1_buffers_running_mean_, %l_self_modules_features_modules_13_modules_1_buffers_running_var_, %l_self_modules_features_modules_13_modules_1_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1233.buf : tensor<384xf32>) {
        ^bb0(%in_1234: f32, %in_1235: f32, %in_1236: f32, %acc_1237: f32):
          %v1238 = arith.constant 1.0 : f32
          %v1239 = arith.constant 9.999999747378752e-06 : f32
          %v1240 = arith.addf %v1239, %in_1235 : f32
          %v1241 = math.sqrt %v1240 : f32
          %v1242 = arith.divf %v1238, %v1241 : f32
          %v1243 = arith.mulf %v1242, %in_1236 : f32
          %v1244 = arith.mulf %v1243, %in_1234 : f32
          linalg.yield %v1244 : f32
      }
    -> tensor<384xf32>
    %v1217.post = tensor.empty() : tensor<10x384x7x2x14xf32>
    %v1217.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1217.buf.out, %v1223.buf.out, %v1233.buf.out, %l_self_modules_features_modules_13_modules_1_parameters_bias_ : tensor<10x384x7x2x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1217.post : tensor<10x384x7x2x14xf32>) {
        ^bb0(%acc_1248: f32, %in_1245: f32, %in_1246: f32, %in_1247: f32, %post_1249: f32):
          %v1250 = arith.mulf %acc_1248, %in_1245 : f32
          %v1251 = arith.subf %v1250, %in_1246 : f32
          %v1252 = arith.addf %v1251, %in_1247 : f32
          %v1253 = arith.maxnumf %init, %v1252 : f32
          %v1254 = arith.constant 6.0 : f32
          %v1255 = arith.minnumf %v1254, %v1253 : f32
          linalg.yield %v1255 : f32
      }
    -> tensor<10x384x7x2x14xf32>
    %input_83.buf = tensor.empty() : tensor<10x384x14x14xf32>
    %input_83.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1217.post.out : tensor<10x384x7x2x14xf32>)
      outs(%input_83.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_1256: f32, %acc_1257: f32):
          linalg.yield %in_1256 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v1262 = tensor.pad %input_83.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1258: index, %pad_i1259: index, %pad_i1260: index, %pad_i1261: index):
        tensor.yield %init : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %l_self_modules_features_modules_13_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_13_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [384, 1, 3, 3] : tensor<384x3x3xf32> into tensor<384x1x3x3xf32>
    %input_86.empty = tensor.empty() : tensor<10x384x14x14xf32>
    %input_86.buf = linalg.fill ins(%init : f32) outs(%input_86.empty : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %input_86.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1262, %l_self_modules_features_modules_13_modules_3_parameters_weight_.expanded : tensor<10x384x16x16xf32>, tensor<384x1x3x3xf32>)
      outs(%input_86.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_1263: f32, %in_1264: f32, %acc_1265: f32):
          %v1266 = arith.mulf %in_1263, %in_1264 : f32
          %v1267 = arith.addf %v1266, %acc_1265 : f32
          linalg.yield %v1267 : f32
      }
    -> tensor<10x384x14x14xf32>
    %v1268.buf = tensor.empty() : tensor<384xf32>
    %v1268.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_13_modules_4_buffers_running_var_, %l_self_modules_features_modules_13_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v1268.buf : tensor<384xf32>) {
        ^bb0(%in_1269: f32, %in_1270: f32, %acc_1271: f32):
          %v1272 = arith.constant 1.0 : f32
          %v1273 = arith.constant 9.999999747378752e-06 : f32
          %v1274 = arith.addf %v1273, %in_1269 : f32
          %v1275 = math.sqrt %v1274 : f32
          %v1276 = arith.divf %v1272, %v1275 : f32
          %v1277 = arith.mulf %v1276, %in_1270 : f32
          linalg.yield %v1277 : f32
      }
    -> tensor<384xf32>
    %v1278.buf = tensor.empty() : tensor<384xf32>
    %v1278.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_13_modules_4_buffers_running_mean_, %l_self_modules_features_modules_13_modules_4_buffers_running_var_, %l_self_modules_features_modules_13_modules_4_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1278.buf : tensor<384xf32>) {
        ^bb0(%in_1279: f32, %in_1280: f32, %in_1281: f32, %acc_1282: f32):
          %v1283 = arith.constant 1.0 : f32
          %v1284 = arith.constant 9.999999747378752e-06 : f32
          %v1285 = arith.addf %v1284, %in_1280 : f32
          %v1286 = math.sqrt %v1285 : f32
          %v1287 = arith.divf %v1283, %v1286 : f32
          %v1288 = arith.mulf %v1287, %in_1281 : f32
          %v1289 = arith.mulf %v1288, %in_1279 : f32
          linalg.yield %v1289 : f32
      }
    -> tensor<384xf32>
    %input_86.post = tensor.empty() : tensor<10x384x14x14xf32>
    %input_86.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_86.buf.out, %v1268.buf.out, %v1278.buf.out, %l_self_modules_features_modules_13_modules_4_parameters_bias_ : tensor<10x384x14x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%input_86.post : tensor<10x384x14x14xf32>) {
        ^bb0(%acc_1293: f32, %in_1290: f32, %in_1291: f32, %in_1292: f32, %post_1294: f32):
          %v1295 = arith.mulf %acc_1293, %in_1290 : f32
          %v1296 = arith.subf %v1295, %in_1291 : f32
          %v1297 = arith.addf %v1296, %in_1292 : f32
          %v1298 = arith.maxnumf %init, %v1297 : f32
          %v1299 = arith.constant 6.0 : f32
          %v1300 = arith.minnumf %v1299, %v1298 : f32
          linalg.yield %v1300 : f32
      }
    -> tensor<10x384x14x14xf32>
    %l_self_modules_features_modules_13_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_13_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 384, 1, 1] : tensor<96x384xf32> into tensor<96x384x1x1xf32>
    %v1301.empty = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v1301.buf = linalg.fill ins(%init : f32) outs(%v1301.empty : tensor<10x96x7x2x14xf32>) -> tensor<10x96x7x2x14xf32>
    %v1301.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_86.post.out, %l_self_modules_features_modules_13_modules_6_parameters_weight_.expanded : tensor<10x384x14x14xf32>, tensor<96x384x1x1xf32>)
      outs(%v1301.buf : tensor<10x96x7x2x14xf32>) {
        ^bb0(%in_1302: f32, %in_1303: f32, %acc_1304: f32):
          %v1305 = arith.mulf %in_1302, %in_1303 : f32
          %v1306 = arith.addf %v1305, %acc_1304 : f32
          linalg.yield %v1306 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %v1307.buf = tensor.empty() : tensor<96xf32>
    %v1307.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_13_modules_7_buffers_running_var_, %l_self_modules_features_modules_13_modules_7_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v1307.buf : tensor<96xf32>) {
        ^bb0(%in_1308: f32, %in_1309: f32, %acc_1310: f32):
          %v1311 = arith.constant 1.0 : f32
          %v1312 = arith.constant 9.999999747378752e-06 : f32
          %v1313 = arith.addf %v1312, %in_1308 : f32
          %v1314 = math.sqrt %v1313 : f32
          %v1315 = arith.divf %v1311, %v1314 : f32
          %v1316 = arith.mulf %v1315, %in_1309 : f32
          linalg.yield %v1316 : f32
      }
    -> tensor<96xf32>
    %v1317.buf = tensor.empty() : tensor<96xf32>
    %v1317.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_13_modules_7_buffers_running_mean_, %l_self_modules_features_modules_13_modules_7_buffers_running_var_, %l_self_modules_features_modules_13_modules_7_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v1317.buf : tensor<96xf32>) {
        ^bb0(%in_1318: f32, %in_1319: f32, %in_1320: f32, %acc_1321: f32):
          %v1322 = arith.constant 1.0 : f32
          %v1323 = arith.constant 9.999999747378752e-06 : f32
          %v1324 = arith.addf %v1323, %in_1319 : f32
          %v1325 = math.sqrt %v1324 : f32
          %v1326 = arith.divf %v1322, %v1325 : f32
          %v1327 = arith.mulf %v1326, %in_1320 : f32
          %v1328 = arith.mulf %v1327, %in_1318 : f32
          linalg.yield %v1328 : f32
      }
    -> tensor<96xf32>
    %v1301.post = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v1301.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1301.buf.out, %v1307.buf.out, %v1317.buf.out, %l_self_modules_features_modules_13_modules_7_parameters_bias_ : tensor<10x96x7x2x14xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v1301.post : tensor<10x96x7x2x14xf32>) {
        ^bb0(%acc_1332: f32, %in_1329: f32, %in_1330: f32, %in_1331: f32, %post_1333: f32):
          %v1334 = arith.mulf %acc_1332, %in_1329 : f32
          %v1335 = arith.subf %v1334, %in_1330 : f32
          %v1336 = arith.addf %v1335, %in_1331 : f32
          linalg.yield %v1336 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %l_self_modules_features_modules_14_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_14_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [576, 96, 1, 1] : tensor<576x96xf32> into tensor<576x96x1x1xf32>
    %v1337.empty = tensor.empty() : tensor<10x576x7x2x14xf32>
    %v1337.buf = linalg.fill ins(%init : f32) outs(%v1337.empty : tensor<10x576x7x2x14xf32>) -> tensor<10x576x7x2x14xf32>
    %v1337.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1301.post.out, %l_self_modules_features_modules_14_modules_0_parameters_weight_.expanded : tensor<10x96x7x2x14xf32>, tensor<576x96x1x1xf32>)
      outs(%v1337.buf : tensor<10x576x7x2x14xf32>) {
        ^bb0(%in_1338: f32, %in_1339: f32, %acc_1340: f32):
          %v1341 = arith.mulf %in_1338, %in_1339 : f32
          %v1342 = arith.addf %v1341, %acc_1340 : f32
          linalg.yield %v1342 : f32
      }
    -> tensor<10x576x7x2x14xf32>
    %v1343.buf = tensor.empty() : tensor<576xf32>
    %v1343.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_14_modules_1_buffers_running_var_, %l_self_modules_features_modules_14_modules_1_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v1343.buf : tensor<576xf32>) {
        ^bb0(%in_1344: f32, %in_1345: f32, %acc_1346: f32):
          %v1347 = arith.constant 1.0 : f32
          %v1348 = arith.constant 9.999999747378752e-06 : f32
          %v1349 = arith.addf %v1348, %in_1344 : f32
          %v1350 = math.sqrt %v1349 : f32
          %v1351 = arith.divf %v1347, %v1350 : f32
          %v1352 = arith.mulf %v1351, %in_1345 : f32
          linalg.yield %v1352 : f32
      }
    -> tensor<576xf32>
    %v1353.buf = tensor.empty() : tensor<576xf32>
    %v1353.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_14_modules_1_buffers_running_mean_, %l_self_modules_features_modules_14_modules_1_buffers_running_var_, %l_self_modules_features_modules_14_modules_1_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1353.buf : tensor<576xf32>) {
        ^bb0(%in_1354: f32, %in_1355: f32, %in_1356: f32, %acc_1357: f32):
          %v1358 = arith.constant 1.0 : f32
          %v1359 = arith.constant 9.999999747378752e-06 : f32
          %v1360 = arith.addf %v1359, %in_1355 : f32
          %v1361 = math.sqrt %v1360 : f32
          %v1362 = arith.divf %v1358, %v1361 : f32
          %v1363 = arith.mulf %v1362, %in_1356 : f32
          %v1364 = arith.mulf %v1363, %in_1354 : f32
          linalg.yield %v1364 : f32
      }
    -> tensor<576xf32>
    %v1337.post = tensor.empty() : tensor<10x576x7x2x14xf32>
    %v1337.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1337.buf.out, %v1343.buf.out, %v1353.buf.out, %l_self_modules_features_modules_14_modules_1_parameters_bias_ : tensor<10x576x7x2x14xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1337.post : tensor<10x576x7x2x14xf32>) {
        ^bb0(%acc_1368: f32, %in_1365: f32, %in_1366: f32, %in_1367: f32, %post_1369: f32):
          %v1370 = arith.mulf %acc_1368, %in_1365 : f32
          %v1371 = arith.subf %v1370, %in_1366 : f32
          %v1372 = arith.addf %v1371, %in_1367 : f32
          %v1373 = arith.maxnumf %init, %v1372 : f32
          %v1374 = arith.constant 6.0 : f32
          %v1375 = arith.minnumf %v1374, %v1373 : f32
          linalg.yield %v1375 : f32
      }
    -> tensor<10x576x7x2x14xf32>
    %input_91.buf = tensor.empty() : tensor<10x576x14x14xf32>
    %input_91.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1337.post.out : tensor<10x576x7x2x14xf32>)
      outs(%input_91.buf : tensor<10x576x14x14xf32>) {
        ^bb0(%in_1376: f32, %acc_1377: f32):
          linalg.yield %in_1376 : f32
      }
    -> tensor<10x576x14x14xf32>
    %v1382 = tensor.pad %input_91.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1378: index, %pad_i1379: index, %pad_i1380: index, %pad_i1381: index):
        tensor.yield %init : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %l_self_modules_features_modules_14_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_14_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [576, 1, 3, 3] : tensor<576x3x3xf32> into tensor<576x1x3x3xf32>
    %input_94.empty = tensor.empty() : tensor<10x576x14x14xf32>
    %input_94.buf = linalg.fill ins(%init : f32) outs(%input_94.empty : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %input_94.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1382, %l_self_modules_features_modules_14_modules_3_parameters_weight_.expanded : tensor<10x576x16x16xf32>, tensor<576x1x3x3xf32>)
      outs(%input_94.buf : tensor<10x576x14x14xf32>) {
        ^bb0(%in_1383: f32, %in_1384: f32, %acc_1385: f32):
          %v1386 = arith.mulf %in_1383, %in_1384 : f32
          %v1387 = arith.addf %v1386, %acc_1385 : f32
          linalg.yield %v1387 : f32
      }
    -> tensor<10x576x14x14xf32>
    %v1388.buf = tensor.empty() : tensor<576xf32>
    %v1388.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_14_modules_4_buffers_running_var_, %l_self_modules_features_modules_14_modules_4_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v1388.buf : tensor<576xf32>) {
        ^bb0(%in_1389: f32, %in_1390: f32, %acc_1391: f32):
          %v1392 = arith.constant 1.0 : f32
          %v1393 = arith.constant 9.999999747378752e-06 : f32
          %v1394 = arith.addf %v1393, %in_1389 : f32
          %v1395 = math.sqrt %v1394 : f32
          %v1396 = arith.divf %v1392, %v1395 : f32
          %v1397 = arith.mulf %v1396, %in_1390 : f32
          linalg.yield %v1397 : f32
      }
    -> tensor<576xf32>
    %v1398.buf = tensor.empty() : tensor<576xf32>
    %v1398.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_14_modules_4_buffers_running_mean_, %l_self_modules_features_modules_14_modules_4_buffers_running_var_, %l_self_modules_features_modules_14_modules_4_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1398.buf : tensor<576xf32>) {
        ^bb0(%in_1399: f32, %in_1400: f32, %in_1401: f32, %acc_1402: f32):
          %v1403 = arith.constant 1.0 : f32
          %v1404 = arith.constant 9.999999747378752e-06 : f32
          %v1405 = arith.addf %v1404, %in_1400 : f32
          %v1406 = math.sqrt %v1405 : f32
          %v1407 = arith.divf %v1403, %v1406 : f32
          %v1408 = arith.mulf %v1407, %in_1401 : f32
          %v1409 = arith.mulf %v1408, %in_1399 : f32
          linalg.yield %v1409 : f32
      }
    -> tensor<576xf32>
    %input_94.post = tensor.empty() : tensor<10x576x14x14xf32>
    %input_94.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_94.buf.out, %v1388.buf.out, %v1398.buf.out, %l_self_modules_features_modules_14_modules_4_parameters_bias_ : tensor<10x576x14x14xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%input_94.post : tensor<10x576x14x14xf32>) {
        ^bb0(%acc_1413: f32, %in_1410: f32, %in_1411: f32, %in_1412: f32, %post_1414: f32):
          %v1415 = arith.mulf %acc_1413, %in_1410 : f32
          %v1416 = arith.subf %v1415, %in_1411 : f32
          %v1417 = arith.addf %v1416, %in_1412 : f32
          %v1418 = arith.maxnumf %init, %v1417 : f32
          %v1419 = arith.constant 6.0 : f32
          %v1420 = arith.minnumf %v1419, %v1418 : f32
          linalg.yield %v1420 : f32
      }
    -> tensor<10x576x14x14xf32>
    %l_self_modules_features_modules_14_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_14_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 576, 1, 1] : tensor<96x576xf32> into tensor<96x576x1x1xf32>
    %v1421.empty = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v1421.buf = linalg.fill ins(%init : f32) outs(%v1421.empty : tensor<10x96x7x2x14xf32>) -> tensor<10x96x7x2x14xf32>
    %v1421.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_94.post.out, %l_self_modules_features_modules_14_modules_6_parameters_weight_.expanded : tensor<10x576x14x14xf32>, tensor<96x576x1x1xf32>)
      outs(%v1421.buf : tensor<10x96x7x2x14xf32>) {
        ^bb0(%in_1422: f32, %in_1423: f32, %acc_1424: f32):
          %v1425 = arith.mulf %in_1422, %in_1423 : f32
          %v1426 = arith.addf %v1425, %acc_1424 : f32
          linalg.yield %v1426 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %v1427.buf = tensor.empty() : tensor<96xf32>
    %v1427.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_14_modules_7_buffers_running_var_, %l_self_modules_features_modules_14_modules_7_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v1427.buf : tensor<96xf32>) {
        ^bb0(%in_1428: f32, %in_1429: f32, %acc_1430: f32):
          %v1431 = arith.constant 1.0 : f32
          %v1432 = arith.constant 9.999999747378752e-06 : f32
          %v1433 = arith.addf %v1432, %in_1428 : f32
          %v1434 = math.sqrt %v1433 : f32
          %v1435 = arith.divf %v1431, %v1434 : f32
          %v1436 = arith.mulf %v1435, %in_1429 : f32
          linalg.yield %v1436 : f32
      }
    -> tensor<96xf32>
    %v1437.buf = tensor.empty() : tensor<96xf32>
    %v1437.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_14_modules_7_buffers_running_mean_, %l_self_modules_features_modules_14_modules_7_buffers_running_var_, %l_self_modules_features_modules_14_modules_7_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v1437.buf : tensor<96xf32>) {
        ^bb0(%in_1438: f32, %in_1439: f32, %in_1440: f32, %acc_1441: f32):
          %v1442 = arith.constant 1.0 : f32
          %v1443 = arith.constant 9.999999747378752e-06 : f32
          %v1444 = arith.addf %v1443, %in_1439 : f32
          %v1445 = math.sqrt %v1444 : f32
          %v1446 = arith.divf %v1442, %v1445 : f32
          %v1447 = arith.mulf %v1446, %in_1440 : f32
          %v1448 = arith.mulf %v1447, %in_1438 : f32
          linalg.yield %v1448 : f32
      }
    -> tensor<96xf32>
    %v1421.post = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v1421.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1421.buf.out, %v1427.buf.out, %v1437.buf.out, %l_self_modules_features_modules_14_modules_7_parameters_bias_ : tensor<10x96x7x2x14xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v1421.post : tensor<10x96x7x2x14xf32>) {
        ^bb0(%acc_1452: f32, %in_1449: f32, %in_1450: f32, %in_1451: f32, %post_1453: f32):
          %v1454 = arith.mulf %acc_1452, %in_1449 : f32
          %v1455 = arith.subf %v1454, %in_1450 : f32
          %v1456 = arith.addf %v1455, %in_1451 : f32
          linalg.yield %v1456 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %l_self_modules_features_modules_15_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_15_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [576, 96, 1, 1] : tensor<576x96xf32> into tensor<576x96x1x1xf32>
    %v1457.empty = tensor.empty() : tensor<10x576x7x2x14xf32>
    %v1457.buf = linalg.fill ins(%init : f32) outs(%v1457.empty : tensor<10x576x7x2x14xf32>) -> tensor<10x576x7x2x14xf32>
    %v1457.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1421.post.out, %l_self_modules_features_modules_15_modules_0_parameters_weight_.expanded : tensor<10x96x7x2x14xf32>, tensor<576x96x1x1xf32>)
      outs(%v1457.buf : tensor<10x576x7x2x14xf32>) {
        ^bb0(%in_1458: f32, %in_1459: f32, %acc_1460: f32):
          %v1461 = arith.mulf %in_1458, %in_1459 : f32
          %v1462 = arith.addf %v1461, %acc_1460 : f32
          linalg.yield %v1462 : f32
      }
    -> tensor<10x576x7x2x14xf32>
    %v1463.buf = tensor.empty() : tensor<576xf32>
    %v1463.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_15_modules_1_buffers_running_var_, %l_self_modules_features_modules_15_modules_1_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v1463.buf : tensor<576xf32>) {
        ^bb0(%in_1464: f32, %in_1465: f32, %acc_1466: f32):
          %v1467 = arith.constant 1.0 : f32
          %v1468 = arith.constant 9.999999747378752e-06 : f32
          %v1469 = arith.addf %v1468, %in_1464 : f32
          %v1470 = math.sqrt %v1469 : f32
          %v1471 = arith.divf %v1467, %v1470 : f32
          %v1472 = arith.mulf %v1471, %in_1465 : f32
          linalg.yield %v1472 : f32
      }
    -> tensor<576xf32>
    %v1473.buf = tensor.empty() : tensor<576xf32>
    %v1473.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_15_modules_1_buffers_running_mean_, %l_self_modules_features_modules_15_modules_1_buffers_running_var_, %l_self_modules_features_modules_15_modules_1_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1473.buf : tensor<576xf32>) {
        ^bb0(%in_1474: f32, %in_1475: f32, %in_1476: f32, %acc_1477: f32):
          %v1478 = arith.constant 1.0 : f32
          %v1479 = arith.constant 9.999999747378752e-06 : f32
          %v1480 = arith.addf %v1479, %in_1475 : f32
          %v1481 = math.sqrt %v1480 : f32
          %v1482 = arith.divf %v1478, %v1481 : f32
          %v1483 = arith.mulf %v1482, %in_1476 : f32
          %v1484 = arith.mulf %v1483, %in_1474 : f32
          linalg.yield %v1484 : f32
      }
    -> tensor<576xf32>
    %v1457.post = tensor.empty() : tensor<10x576x7x2x14xf32>
    %v1457.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1457.buf.out, %v1463.buf.out, %v1473.buf.out, %l_self_modules_features_modules_15_modules_1_parameters_bias_ : tensor<10x576x7x2x14xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1457.post : tensor<10x576x7x2x14xf32>) {
        ^bb0(%acc_1488: f32, %in_1485: f32, %in_1486: f32, %in_1487: f32, %post_1489: f32):
          %v1490 = arith.mulf %acc_1488, %in_1485 : f32
          %v1491 = arith.subf %v1490, %in_1486 : f32
          %v1492 = arith.addf %v1491, %in_1487 : f32
          %v1493 = arith.maxnumf %init, %v1492 : f32
          %v1494 = arith.constant 6.0 : f32
          %v1495 = arith.minnumf %v1494, %v1493 : f32
          linalg.yield %v1495 : f32
      }
    -> tensor<10x576x7x2x14xf32>
    %input_99.buf = tensor.empty() : tensor<10x576x14x14xf32>
    %input_99.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1457.post.out : tensor<10x576x7x2x14xf32>)
      outs(%input_99.buf : tensor<10x576x14x14xf32>) {
        ^bb0(%in_1496: f32, %acc_1497: f32):
          linalg.yield %in_1496 : f32
      }
    -> tensor<10x576x14x14xf32>
    %v1502 = tensor.pad %input_99.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1498: index, %pad_i1499: index, %pad_i1500: index, %pad_i1501: index):
        tensor.yield %init : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %l_self_modules_features_modules_15_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_15_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [576, 1, 3, 3] : tensor<576x3x3xf32> into tensor<576x1x3x3xf32>
    %input_102.empty = tensor.empty() : tensor<10x576x14x14xf32>
    %input_102.buf = linalg.fill ins(%init : f32) outs(%input_102.empty : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %input_102.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1502, %l_self_modules_features_modules_15_modules_3_parameters_weight_.expanded : tensor<10x576x16x16xf32>, tensor<576x1x3x3xf32>)
      outs(%input_102.buf : tensor<10x576x14x14xf32>) {
        ^bb0(%in_1503: f32, %in_1504: f32, %acc_1505: f32):
          %v1506 = arith.mulf %in_1503, %in_1504 : f32
          %v1507 = arith.addf %v1506, %acc_1505 : f32
          linalg.yield %v1507 : f32
      }
    -> tensor<10x576x14x14xf32>
    %v1508.buf = tensor.empty() : tensor<576xf32>
    %v1508.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_15_modules_4_buffers_running_var_, %l_self_modules_features_modules_15_modules_4_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v1508.buf : tensor<576xf32>) {
        ^bb0(%in_1509: f32, %in_1510: f32, %acc_1511: f32):
          %v1512 = arith.constant 1.0 : f32
          %v1513 = arith.constant 9.999999747378752e-06 : f32
          %v1514 = arith.addf %v1513, %in_1509 : f32
          %v1515 = math.sqrt %v1514 : f32
          %v1516 = arith.divf %v1512, %v1515 : f32
          %v1517 = arith.mulf %v1516, %in_1510 : f32
          linalg.yield %v1517 : f32
      }
    -> tensor<576xf32>
    %v1518.buf = tensor.empty() : tensor<576xf32>
    %v1518.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_15_modules_4_buffers_running_mean_, %l_self_modules_features_modules_15_modules_4_buffers_running_var_, %l_self_modules_features_modules_15_modules_4_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1518.buf : tensor<576xf32>) {
        ^bb0(%in_1519: f32, %in_1520: f32, %in_1521: f32, %acc_1522: f32):
          %v1523 = arith.constant 1.0 : f32
          %v1524 = arith.constant 9.999999747378752e-06 : f32
          %v1525 = arith.addf %v1524, %in_1520 : f32
          %v1526 = math.sqrt %v1525 : f32
          %v1527 = arith.divf %v1523, %v1526 : f32
          %v1528 = arith.mulf %v1527, %in_1521 : f32
          %v1529 = arith.mulf %v1528, %in_1519 : f32
          linalg.yield %v1529 : f32
      }
    -> tensor<576xf32>
    %input_102.post = tensor.empty() : tensor<10x576x14x14xf32>
    %input_102.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_102.buf.out, %v1508.buf.out, %v1518.buf.out, %l_self_modules_features_modules_15_modules_4_parameters_bias_ : tensor<10x576x14x14xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%input_102.post : tensor<10x576x14x14xf32>) {
        ^bb0(%acc_1533: f32, %in_1530: f32, %in_1531: f32, %in_1532: f32, %post_1534: f32):
          %v1535 = arith.mulf %acc_1533, %in_1530 : f32
          %v1536 = arith.subf %v1535, %in_1531 : f32
          %v1537 = arith.addf %v1536, %in_1532 : f32
          %v1538 = arith.maxnumf %init, %v1537 : f32
          %v1539 = arith.constant 6.0 : f32
          %v1540 = arith.minnumf %v1539, %v1538 : f32
          linalg.yield %v1540 : f32
      }
    -> tensor<10x576x14x14xf32>
    %l_self_modules_features_modules_15_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_15_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 576, 1, 1] : tensor<96x576xf32> into tensor<96x576x1x1xf32>
    %v1541.empty = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v1541.buf = linalg.fill ins(%init : f32) outs(%v1541.empty : tensor<10x96x7x2x14xf32>) -> tensor<10x96x7x2x14xf32>
    %v1541.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_102.post.out, %l_self_modules_features_modules_15_modules_6_parameters_weight_.expanded : tensor<10x576x14x14xf32>, tensor<96x576x1x1xf32>)
      outs(%v1541.buf : tensor<10x96x7x2x14xf32>) {
        ^bb0(%in_1542: f32, %in_1543: f32, %acc_1544: f32):
          %v1545 = arith.mulf %in_1542, %in_1543 : f32
          %v1546 = arith.addf %v1545, %acc_1544 : f32
          linalg.yield %v1546 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %v1547.buf = tensor.empty() : tensor<96xf32>
    %v1547.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_15_modules_7_buffers_running_var_, %l_self_modules_features_modules_15_modules_7_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v1547.buf : tensor<96xf32>) {
        ^bb0(%in_1548: f32, %in_1549: f32, %acc_1550: f32):
          %v1551 = arith.constant 1.0 : f32
          %v1552 = arith.constant 9.999999747378752e-06 : f32
          %v1553 = arith.addf %v1552, %in_1548 : f32
          %v1554 = math.sqrt %v1553 : f32
          %v1555 = arith.divf %v1551, %v1554 : f32
          %v1556 = arith.mulf %v1555, %in_1549 : f32
          linalg.yield %v1556 : f32
      }
    -> tensor<96xf32>
    %v1557.buf = tensor.empty() : tensor<96xf32>
    %v1557.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_15_modules_7_buffers_running_mean_, %l_self_modules_features_modules_15_modules_7_buffers_running_var_, %l_self_modules_features_modules_15_modules_7_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v1557.buf : tensor<96xf32>) {
        ^bb0(%in_1558: f32, %in_1559: f32, %in_1560: f32, %acc_1561: f32):
          %v1562 = arith.constant 1.0 : f32
          %v1563 = arith.constant 9.999999747378752e-06 : f32
          %v1564 = arith.addf %v1563, %in_1559 : f32
          %v1565 = math.sqrt %v1564 : f32
          %v1566 = arith.divf %v1562, %v1565 : f32
          %v1567 = arith.mulf %v1566, %in_1560 : f32
          %v1568 = arith.mulf %v1567, %in_1558 : f32
          linalg.yield %v1568 : f32
      }
    -> tensor<96xf32>
    %v1541.post = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v1541.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1541.buf.out, %v1547.buf.out, %v1557.buf.out, %l_self_modules_features_modules_15_modules_7_parameters_bias_ : tensor<10x96x7x2x14xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v1541.post : tensor<10x96x7x2x14xf32>) {
        ^bb0(%acc_1572: f32, %in_1569: f32, %in_1570: f32, %in_1571: f32, %post_1573: f32):
          %v1574 = arith.mulf %acc_1572, %in_1569 : f32
          %v1575 = arith.subf %v1574, %in_1570 : f32
          %v1576 = arith.addf %v1575, %in_1571 : f32
          linalg.yield %v1576 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %l_self_modules_features_modules_16_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_16_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [576, 96, 1, 1] : tensor<576x96xf32> into tensor<576x96x1x1xf32>
    %v1577.empty = tensor.empty() : tensor<10x576x7x2x14xf32>
    %v1577.buf = linalg.fill ins(%init : f32) outs(%v1577.empty : tensor<10x576x7x2x14xf32>) -> tensor<10x576x7x2x14xf32>
    %v1577.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1541.post.out, %l_self_modules_features_modules_16_modules_0_parameters_weight_.expanded : tensor<10x96x7x2x14xf32>, tensor<576x96x1x1xf32>)
      outs(%v1577.buf : tensor<10x576x7x2x14xf32>) {
        ^bb0(%in_1578: f32, %in_1579: f32, %acc_1580: f32):
          %v1581 = arith.mulf %in_1578, %in_1579 : f32
          %v1582 = arith.addf %v1581, %acc_1580 : f32
          linalg.yield %v1582 : f32
      }
    -> tensor<10x576x7x2x14xf32>
    %v1583.buf = tensor.empty() : tensor<576xf32>
    %v1583.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_16_modules_1_buffers_running_var_, %l_self_modules_features_modules_16_modules_1_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v1583.buf : tensor<576xf32>) {
        ^bb0(%in_1584: f32, %in_1585: f32, %acc_1586: f32):
          %v1587 = arith.constant 1.0 : f32
          %v1588 = arith.constant 9.999999747378752e-06 : f32
          %v1589 = arith.addf %v1588, %in_1584 : f32
          %v1590 = math.sqrt %v1589 : f32
          %v1591 = arith.divf %v1587, %v1590 : f32
          %v1592 = arith.mulf %v1591, %in_1585 : f32
          linalg.yield %v1592 : f32
      }
    -> tensor<576xf32>
    %v1593.buf = tensor.empty() : tensor<576xf32>
    %v1593.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_16_modules_1_buffers_running_mean_, %l_self_modules_features_modules_16_modules_1_buffers_running_var_, %l_self_modules_features_modules_16_modules_1_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1593.buf : tensor<576xf32>) {
        ^bb0(%in_1594: f32, %in_1595: f32, %in_1596: f32, %acc_1597: f32):
          %v1598 = arith.constant 1.0 : f32
          %v1599 = arith.constant 9.999999747378752e-06 : f32
          %v1600 = arith.addf %v1599, %in_1595 : f32
          %v1601 = math.sqrt %v1600 : f32
          %v1602 = arith.divf %v1598, %v1601 : f32
          %v1603 = arith.mulf %v1602, %in_1596 : f32
          %v1604 = arith.mulf %v1603, %in_1594 : f32
          linalg.yield %v1604 : f32
      }
    -> tensor<576xf32>
    %v1577.post = tensor.empty() : tensor<10x576x7x2x14xf32>
    %v1577.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1577.buf.out, %v1583.buf.out, %v1593.buf.out, %l_self_modules_features_modules_16_modules_1_parameters_bias_ : tensor<10x576x7x2x14xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1577.post : tensor<10x576x7x2x14xf32>) {
        ^bb0(%acc_1608: f32, %in_1605: f32, %in_1606: f32, %in_1607: f32, %post_1609: f32):
          %v1610 = arith.mulf %acc_1608, %in_1605 : f32
          %v1611 = arith.subf %v1610, %in_1606 : f32
          %v1612 = arith.addf %v1611, %in_1607 : f32
          %v1613 = arith.maxnumf %init, %v1612 : f32
          %v1614 = arith.constant 6.0 : f32
          %v1615 = arith.minnumf %v1614, %v1613 : f32
          linalg.yield %v1615 : f32
      }
    -> tensor<10x576x7x2x14xf32>
    %input_107.buf = tensor.empty() : tensor<10x576x14x14xf32>
    %input_107.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1577.post.out : tensor<10x576x7x2x14xf32>)
      outs(%input_107.buf : tensor<10x576x14x14xf32>) {
        ^bb0(%in_1616: f32, %acc_1617: f32):
          linalg.yield %in_1616 : f32
      }
    -> tensor<10x576x14x14xf32>
    %v1622 = tensor.pad %input_107.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1618: index, %pad_i1619: index, %pad_i1620: index, %pad_i1621: index):
        tensor.yield %init : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %l_self_modules_features_modules_16_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_16_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [576, 1, 3, 3] : tensor<576x3x3xf32> into tensor<576x1x3x3xf32>
    %input_110.empty = tensor.empty() : tensor<10x576x7x7xf32>
    %input_110.buf = linalg.fill ins(%init : f32) outs(%input_110.empty : tensor<10x576x7x7xf32>) -> tensor<10x576x7x7xf32>
    %input_110.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1622, %l_self_modules_features_modules_16_modules_3_parameters_weight_.expanded : tensor<10x576x16x16xf32>, tensor<576x1x3x3xf32>)
      outs(%input_110.buf : tensor<10x576x7x7xf32>) {
        ^bb0(%in_1623: f32, %in_1624: f32, %acc_1625: f32):
          %v1626 = arith.mulf %in_1623, %in_1624 : f32
          %v1627 = arith.addf %v1626, %acc_1625 : f32
          linalg.yield %v1627 : f32
      }
    -> tensor<10x576x7x7xf32>
    %v1628.buf = tensor.empty() : tensor<576xf32>
    %v1628.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_16_modules_4_buffers_running_var_, %l_self_modules_features_modules_16_modules_4_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v1628.buf : tensor<576xf32>) {
        ^bb0(%in_1629: f32, %in_1630: f32, %acc_1631: f32):
          %v1632 = arith.constant 1.0 : f32
          %v1633 = arith.constant 9.999999747378752e-06 : f32
          %v1634 = arith.addf %v1633, %in_1629 : f32
          %v1635 = math.sqrt %v1634 : f32
          %v1636 = arith.divf %v1632, %v1635 : f32
          %v1637 = arith.mulf %v1636, %in_1630 : f32
          linalg.yield %v1637 : f32
      }
    -> tensor<576xf32>
    %v1638.buf = tensor.empty() : tensor<576xf32>
    %v1638.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_16_modules_4_buffers_running_mean_, %l_self_modules_features_modules_16_modules_4_buffers_running_var_, %l_self_modules_features_modules_16_modules_4_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1638.buf : tensor<576xf32>) {
        ^bb0(%in_1639: f32, %in_1640: f32, %in_1641: f32, %acc_1642: f32):
          %v1643 = arith.constant 1.0 : f32
          %v1644 = arith.constant 9.999999747378752e-06 : f32
          %v1645 = arith.addf %v1644, %in_1640 : f32
          %v1646 = math.sqrt %v1645 : f32
          %v1647 = arith.divf %v1643, %v1646 : f32
          %v1648 = arith.mulf %v1647, %in_1641 : f32
          %v1649 = arith.mulf %v1648, %in_1639 : f32
          linalg.yield %v1649 : f32
      }
    -> tensor<576xf32>
    %input_110.post = tensor.empty() : tensor<10x576x7x7xf32>
    %input_110.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_110.buf.out, %v1628.buf.out, %v1638.buf.out, %l_self_modules_features_modules_16_modules_4_parameters_bias_ : tensor<10x576x7x7xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%input_110.post : tensor<10x576x7x7xf32>) {
        ^bb0(%acc_1653: f32, %in_1650: f32, %in_1651: f32, %in_1652: f32, %post_1654: f32):
          %v1655 = arith.mulf %acc_1653, %in_1650 : f32
          %v1656 = arith.subf %v1655, %in_1651 : f32
          %v1657 = arith.addf %v1656, %in_1652 : f32
          %v1658 = arith.maxnumf %init, %v1657 : f32
          %v1659 = arith.constant 6.0 : f32
          %v1660 = arith.minnumf %v1659, %v1658 : f32
          linalg.yield %v1660 : f32
      }
    -> tensor<10x576x7x7xf32>
    %l_self_modules_features_modules_16_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_16_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [160, 576, 1, 1] : tensor<160x576xf32> into tensor<160x576x1x1xf32>
    %v1661.empty = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v1661.buf = linalg.fill ins(%init : f32) outs(%v1661.empty : tensor<10x160x7x1x7xf32>) -> tensor<10x160x7x1x7xf32>
    %v1661.shape = tensor.empty() : tensor<7x1xf32>
    %v1661.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_110.post.out, %l_self_modules_features_modules_16_modules_6_parameters_weight_.expanded, %v1661.shape : tensor<10x576x7x7xf32>, tensor<160x576x1x1xf32>, tensor<7x1xf32>)
      outs(%v1661.buf : tensor<10x160x7x1x7xf32>) {
        ^bb0(%in_1663: f32, %in_1664: f32, %shape_1662: f32, %acc_1665: f32):
          %v1666 = arith.mulf %in_1663, %in_1664 : f32
          %v1667 = arith.addf %v1666, %acc_1665 : f32
          linalg.yield %v1667 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %v1668.buf = tensor.empty() : tensor<160xf32>
    %v1668.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_16_modules_7_buffers_running_var_, %l_self_modules_features_modules_16_modules_7_parameters_weight_ : tensor<160xf32>, tensor<160xf32>)
      outs(%v1668.buf : tensor<160xf32>) {
        ^bb0(%in_1669: f32, %in_1670: f32, %acc_1671: f32):
          %v1672 = arith.constant 1.0 : f32
          %v1673 = arith.constant 9.999999747378752e-06 : f32
          %v1674 = arith.addf %v1673, %in_1669 : f32
          %v1675 = math.sqrt %v1674 : f32
          %v1676 = arith.divf %v1672, %v1675 : f32
          %v1677 = arith.mulf %v1676, %in_1670 : f32
          linalg.yield %v1677 : f32
      }
    -> tensor<160xf32>
    %v1678.buf = tensor.empty() : tensor<160xf32>
    %v1678.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_16_modules_7_buffers_running_mean_, %l_self_modules_features_modules_16_modules_7_buffers_running_var_, %l_self_modules_features_modules_16_modules_7_parameters_weight_ : tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v1678.buf : tensor<160xf32>) {
        ^bb0(%in_1679: f32, %in_1680: f32, %in_1681: f32, %acc_1682: f32):
          %v1683 = arith.constant 1.0 : f32
          %v1684 = arith.constant 9.999999747378752e-06 : f32
          %v1685 = arith.addf %v1684, %in_1680 : f32
          %v1686 = math.sqrt %v1685 : f32
          %v1687 = arith.divf %v1683, %v1686 : f32
          %v1688 = arith.mulf %v1687, %in_1681 : f32
          %v1689 = arith.mulf %v1688, %in_1679 : f32
          linalg.yield %v1689 : f32
      }
    -> tensor<160xf32>
    %v1661.post = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v1661.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1661.buf.out, %v1668.buf.out, %v1678.buf.out, %l_self_modules_features_modules_16_modules_7_parameters_bias_ : tensor<10x160x7x1x7xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v1661.post : tensor<10x160x7x1x7xf32>) {
        ^bb0(%acc_1693: f32, %in_1690: f32, %in_1691: f32, %in_1692: f32, %post_1694: f32):
          %v1695 = arith.mulf %acc_1693, %in_1690 : f32
          %v1696 = arith.subf %v1695, %in_1691 : f32
          %v1697 = arith.addf %v1696, %in_1692 : f32
          linalg.yield %v1697 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %l_self_modules_features_modules_17_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_17_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [960, 160, 1, 1] : tensor<960x160xf32> into tensor<960x160x1x1xf32>
    %v1698.empty = tensor.empty() : tensor<10x960x7x1x7xf32>
    %v1698.buf = linalg.fill ins(%init : f32) outs(%v1698.empty : tensor<10x960x7x1x7xf32>) -> tensor<10x960x7x1x7xf32>
    %v1698.shape = tensor.empty() : tensor<7x1xf32>
    %v1698.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1661.post.out, %l_self_modules_features_modules_17_modules_0_parameters_weight_.expanded, %v1698.shape : tensor<10x160x7x1x7xf32>, tensor<960x160x1x1xf32>, tensor<7x1xf32>)
      outs(%v1698.buf : tensor<10x960x7x1x7xf32>) {
        ^bb0(%in_1700: f32, %in_1701: f32, %shape_1699: f32, %acc_1702: f32):
          %v1703 = arith.mulf %in_1700, %in_1701 : f32
          %v1704 = arith.addf %v1703, %acc_1702 : f32
          linalg.yield %v1704 : f32
      }
    -> tensor<10x960x7x1x7xf32>
    %v1705.buf = tensor.empty() : tensor<960xf32>
    %v1705.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_17_modules_1_buffers_running_var_, %l_self_modules_features_modules_17_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1705.buf : tensor<960xf32>) {
        ^bb0(%in_1706: f32, %in_1707: f32, %acc_1708: f32):
          %v1709 = arith.constant 1.0 : f32
          %v1710 = arith.constant 9.999999747378752e-06 : f32
          %v1711 = arith.addf %v1710, %in_1706 : f32
          %v1712 = math.sqrt %v1711 : f32
          %v1713 = arith.divf %v1709, %v1712 : f32
          %v1714 = arith.mulf %v1713, %in_1707 : f32
          linalg.yield %v1714 : f32
      }
    -> tensor<960xf32>
    %v1715.buf = tensor.empty() : tensor<960xf32>
    %v1715.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_17_modules_1_buffers_running_mean_, %l_self_modules_features_modules_17_modules_1_buffers_running_var_, %l_self_modules_features_modules_17_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1715.buf : tensor<960xf32>) {
        ^bb0(%in_1716: f32, %in_1717: f32, %in_1718: f32, %acc_1719: f32):
          %v1720 = arith.constant 1.0 : f32
          %v1721 = arith.constant 9.999999747378752e-06 : f32
          %v1722 = arith.addf %v1721, %in_1717 : f32
          %v1723 = math.sqrt %v1722 : f32
          %v1724 = arith.divf %v1720, %v1723 : f32
          %v1725 = arith.mulf %v1724, %in_1718 : f32
          %v1726 = arith.mulf %v1725, %in_1716 : f32
          linalg.yield %v1726 : f32
      }
    -> tensor<960xf32>
    %v1698.post = tensor.empty() : tensor<10x960x7x1x7xf32>
    %v1698.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1698.buf.out, %v1705.buf.out, %v1715.buf.out, %l_self_modules_features_modules_17_modules_1_parameters_bias_ : tensor<10x960x7x1x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1698.post : tensor<10x960x7x1x7xf32>) {
        ^bb0(%acc_1730: f32, %in_1727: f32, %in_1728: f32, %in_1729: f32, %post_1731: f32):
          %v1732 = arith.mulf %acc_1730, %in_1727 : f32
          %v1733 = arith.subf %v1732, %in_1728 : f32
          %v1734 = arith.addf %v1733, %in_1729 : f32
          %v1735 = arith.maxnumf %init, %v1734 : f32
          %v1736 = arith.constant 6.0 : f32
          %v1737 = arith.minnumf %v1736, %v1735 : f32
          linalg.yield %v1737 : f32
      }
    -> tensor<10x960x7x1x7xf32>
    %input_115.buf = tensor.empty() : tensor<10x960x7x7xf32>
    %input_115.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1698.post.out : tensor<10x960x7x1x7xf32>)
      outs(%input_115.buf : tensor<10x960x7x7xf32>) {
        ^bb0(%in_1738: f32, %acc_1739: f32):
          linalg.yield %in_1738 : f32
      }
    -> tensor<10x960x7x7xf32>
    %v1744 = tensor.pad %input_115.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1740: index, %pad_i1741: index, %pad_i1742: index, %pad_i1743: index):
        tensor.yield %init : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %l_self_modules_features_modules_17_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_17_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [960, 1, 3, 3] : tensor<960x3x3xf32> into tensor<960x1x3x3xf32>
    %input_118.empty = tensor.empty() : tensor<10x960x7x7xf32>
    %input_118.buf = linalg.fill ins(%init : f32) outs(%input_118.empty : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %input_118.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1744, %l_self_modules_features_modules_17_modules_3_parameters_weight_.expanded : tensor<10x960x9x9xf32>, tensor<960x1x3x3xf32>)
      outs(%input_118.buf : tensor<10x960x7x7xf32>) {
        ^bb0(%in_1745: f32, %in_1746: f32, %acc_1747: f32):
          %v1748 = arith.mulf %in_1745, %in_1746 : f32
          %v1749 = arith.addf %v1748, %acc_1747 : f32
          linalg.yield %v1749 : f32
      }
    -> tensor<10x960x7x7xf32>
    %v1750.buf = tensor.empty() : tensor<960xf32>
    %v1750.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_17_modules_4_buffers_running_var_, %l_self_modules_features_modules_17_modules_4_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1750.buf : tensor<960xf32>) {
        ^bb0(%in_1751: f32, %in_1752: f32, %acc_1753: f32):
          %v1754 = arith.constant 1.0 : f32
          %v1755 = arith.constant 9.999999747378752e-06 : f32
          %v1756 = arith.addf %v1755, %in_1751 : f32
          %v1757 = math.sqrt %v1756 : f32
          %v1758 = arith.divf %v1754, %v1757 : f32
          %v1759 = arith.mulf %v1758, %in_1752 : f32
          linalg.yield %v1759 : f32
      }
    -> tensor<960xf32>
    %v1760.buf = tensor.empty() : tensor<960xf32>
    %v1760.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_17_modules_4_buffers_running_mean_, %l_self_modules_features_modules_17_modules_4_buffers_running_var_, %l_self_modules_features_modules_17_modules_4_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1760.buf : tensor<960xf32>) {
        ^bb0(%in_1761: f32, %in_1762: f32, %in_1763: f32, %acc_1764: f32):
          %v1765 = arith.constant 1.0 : f32
          %v1766 = arith.constant 9.999999747378752e-06 : f32
          %v1767 = arith.addf %v1766, %in_1762 : f32
          %v1768 = math.sqrt %v1767 : f32
          %v1769 = arith.divf %v1765, %v1768 : f32
          %v1770 = arith.mulf %v1769, %in_1763 : f32
          %v1771 = arith.mulf %v1770, %in_1761 : f32
          linalg.yield %v1771 : f32
      }
    -> tensor<960xf32>
    %input_118.post = tensor.empty() : tensor<10x960x7x7xf32>
    %input_118.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_118.buf.out, %v1750.buf.out, %v1760.buf.out, %l_self_modules_features_modules_17_modules_4_parameters_bias_ : tensor<10x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%input_118.post : tensor<10x960x7x7xf32>) {
        ^bb0(%acc_1775: f32, %in_1772: f32, %in_1773: f32, %in_1774: f32, %post_1776: f32):
          %v1777 = arith.mulf %acc_1775, %in_1772 : f32
          %v1778 = arith.subf %v1777, %in_1773 : f32
          %v1779 = arith.addf %v1778, %in_1774 : f32
          %v1780 = arith.maxnumf %init, %v1779 : f32
          %v1781 = arith.constant 6.0 : f32
          %v1782 = arith.minnumf %v1781, %v1780 : f32
          linalg.yield %v1782 : f32
      }
    -> tensor<10x960x7x7xf32>
    %l_self_modules_features_modules_17_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_17_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [160, 960, 1, 1] : tensor<160x960xf32> into tensor<160x960x1x1xf32>
    %v1783.empty = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v1783.buf = linalg.fill ins(%init : f32) outs(%v1783.empty : tensor<10x160x7x1x7xf32>) -> tensor<10x160x7x1x7xf32>
    %v1783.shape = tensor.empty() : tensor<7x1xf32>
    %v1783.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_118.post.out, %l_self_modules_features_modules_17_modules_6_parameters_weight_.expanded, %v1783.shape : tensor<10x960x7x7xf32>, tensor<160x960x1x1xf32>, tensor<7x1xf32>)
      outs(%v1783.buf : tensor<10x160x7x1x7xf32>) {
        ^bb0(%in_1785: f32, %in_1786: f32, %shape_1784: f32, %acc_1787: f32):
          %v1788 = arith.mulf %in_1785, %in_1786 : f32
          %v1789 = arith.addf %v1788, %acc_1787 : f32
          linalg.yield %v1789 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %v1790.buf = tensor.empty() : tensor<160xf32>
    %v1790.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_17_modules_7_buffers_running_var_, %l_self_modules_features_modules_17_modules_7_parameters_weight_ : tensor<160xf32>, tensor<160xf32>)
      outs(%v1790.buf : tensor<160xf32>) {
        ^bb0(%in_1791: f32, %in_1792: f32, %acc_1793: f32):
          %v1794 = arith.constant 1.0 : f32
          %v1795 = arith.constant 9.999999747378752e-06 : f32
          %v1796 = arith.addf %v1795, %in_1791 : f32
          %v1797 = math.sqrt %v1796 : f32
          %v1798 = arith.divf %v1794, %v1797 : f32
          %v1799 = arith.mulf %v1798, %in_1792 : f32
          linalg.yield %v1799 : f32
      }
    -> tensor<160xf32>
    %v1800.buf = tensor.empty() : tensor<160xf32>
    %v1800.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_17_modules_7_buffers_running_mean_, %l_self_modules_features_modules_17_modules_7_buffers_running_var_, %l_self_modules_features_modules_17_modules_7_parameters_weight_ : tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v1800.buf : tensor<160xf32>) {
        ^bb0(%in_1801: f32, %in_1802: f32, %in_1803: f32, %acc_1804: f32):
          %v1805 = arith.constant 1.0 : f32
          %v1806 = arith.constant 9.999999747378752e-06 : f32
          %v1807 = arith.addf %v1806, %in_1802 : f32
          %v1808 = math.sqrt %v1807 : f32
          %v1809 = arith.divf %v1805, %v1808 : f32
          %v1810 = arith.mulf %v1809, %in_1803 : f32
          %v1811 = arith.mulf %v1810, %in_1801 : f32
          linalg.yield %v1811 : f32
      }
    -> tensor<160xf32>
    %v1783.post = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v1783.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1783.buf.out, %v1790.buf.out, %v1800.buf.out, %l_self_modules_features_modules_17_modules_7_parameters_bias_ : tensor<10x160x7x1x7xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v1783.post : tensor<10x160x7x1x7xf32>) {
        ^bb0(%acc_1815: f32, %in_1812: f32, %in_1813: f32, %in_1814: f32, %post_1816: f32):
          %v1817 = arith.mulf %acc_1815, %in_1812 : f32
          %v1818 = arith.subf %v1817, %in_1813 : f32
          %v1819 = arith.addf %v1818, %in_1814 : f32
          linalg.yield %v1819 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %l_self_modules_features_modules_18_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_18_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [960, 160, 1, 1] : tensor<960x160xf32> into tensor<960x160x1x1xf32>
    %v1820.empty = tensor.empty() : tensor<10x960x7x1x7xf32>
    %v1820.buf = linalg.fill ins(%init : f32) outs(%v1820.empty : tensor<10x960x7x1x7xf32>) -> tensor<10x960x7x1x7xf32>
    %v1820.shape = tensor.empty() : tensor<7x1xf32>
    %v1820.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1783.post.out, %l_self_modules_features_modules_18_modules_0_parameters_weight_.expanded, %v1820.shape : tensor<10x160x7x1x7xf32>, tensor<960x160x1x1xf32>, tensor<7x1xf32>)
      outs(%v1820.buf : tensor<10x960x7x1x7xf32>) {
        ^bb0(%in_1822: f32, %in_1823: f32, %shape_1821: f32, %acc_1824: f32):
          %v1825 = arith.mulf %in_1822, %in_1823 : f32
          %v1826 = arith.addf %v1825, %acc_1824 : f32
          linalg.yield %v1826 : f32
      }
    -> tensor<10x960x7x1x7xf32>
    %v1827.buf = tensor.empty() : tensor<960xf32>
    %v1827.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_18_modules_1_buffers_running_var_, %l_self_modules_features_modules_18_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1827.buf : tensor<960xf32>) {
        ^bb0(%in_1828: f32, %in_1829: f32, %acc_1830: f32):
          %v1831 = arith.constant 1.0 : f32
          %v1832 = arith.constant 9.999999747378752e-06 : f32
          %v1833 = arith.addf %v1832, %in_1828 : f32
          %v1834 = math.sqrt %v1833 : f32
          %v1835 = arith.divf %v1831, %v1834 : f32
          %v1836 = arith.mulf %v1835, %in_1829 : f32
          linalg.yield %v1836 : f32
      }
    -> tensor<960xf32>
    %v1837.buf = tensor.empty() : tensor<960xf32>
    %v1837.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_18_modules_1_buffers_running_mean_, %l_self_modules_features_modules_18_modules_1_buffers_running_var_, %l_self_modules_features_modules_18_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1837.buf : tensor<960xf32>) {
        ^bb0(%in_1838: f32, %in_1839: f32, %in_1840: f32, %acc_1841: f32):
          %v1842 = arith.constant 1.0 : f32
          %v1843 = arith.constant 9.999999747378752e-06 : f32
          %v1844 = arith.addf %v1843, %in_1839 : f32
          %v1845 = math.sqrt %v1844 : f32
          %v1846 = arith.divf %v1842, %v1845 : f32
          %v1847 = arith.mulf %v1846, %in_1840 : f32
          %v1848 = arith.mulf %v1847, %in_1838 : f32
          linalg.yield %v1848 : f32
      }
    -> tensor<960xf32>
    %v1820.post = tensor.empty() : tensor<10x960x7x1x7xf32>
    %v1820.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1820.buf.out, %v1827.buf.out, %v1837.buf.out, %l_self_modules_features_modules_18_modules_1_parameters_bias_ : tensor<10x960x7x1x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1820.post : tensor<10x960x7x1x7xf32>) {
        ^bb0(%acc_1852: f32, %in_1849: f32, %in_1850: f32, %in_1851: f32, %post_1853: f32):
          %v1854 = arith.mulf %acc_1852, %in_1849 : f32
          %v1855 = arith.subf %v1854, %in_1850 : f32
          %v1856 = arith.addf %v1855, %in_1851 : f32
          %v1857 = arith.maxnumf %init, %v1856 : f32
          %v1858 = arith.constant 6.0 : f32
          %v1859 = arith.minnumf %v1858, %v1857 : f32
          linalg.yield %v1859 : f32
      }
    -> tensor<10x960x7x1x7xf32>
    %input_123.buf = tensor.empty() : tensor<10x960x7x7xf32>
    %input_123.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1820.post.out : tensor<10x960x7x1x7xf32>)
      outs(%input_123.buf : tensor<10x960x7x7xf32>) {
        ^bb0(%in_1860: f32, %acc_1861: f32):
          linalg.yield %in_1860 : f32
      }
    -> tensor<10x960x7x7xf32>
    %v1866 = tensor.pad %input_123.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1862: index, %pad_i1863: index, %pad_i1864: index, %pad_i1865: index):
        tensor.yield %init : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %l_self_modules_features_modules_18_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_18_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [960, 1, 3, 3] : tensor<960x3x3xf32> into tensor<960x1x3x3xf32>
    %input_126.empty = tensor.empty() : tensor<10x960x7x7xf32>
    %input_126.buf = linalg.fill ins(%init : f32) outs(%input_126.empty : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %input_126.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1866, %l_self_modules_features_modules_18_modules_3_parameters_weight_.expanded : tensor<10x960x9x9xf32>, tensor<960x1x3x3xf32>)
      outs(%input_126.buf : tensor<10x960x7x7xf32>) {
        ^bb0(%in_1867: f32, %in_1868: f32, %acc_1869: f32):
          %v1870 = arith.mulf %in_1867, %in_1868 : f32
          %v1871 = arith.addf %v1870, %acc_1869 : f32
          linalg.yield %v1871 : f32
      }
    -> tensor<10x960x7x7xf32>
    %v1872.buf = tensor.empty() : tensor<960xf32>
    %v1872.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_18_modules_4_buffers_running_var_, %l_self_modules_features_modules_18_modules_4_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1872.buf : tensor<960xf32>) {
        ^bb0(%in_1873: f32, %in_1874: f32, %acc_1875: f32):
          %v1876 = arith.constant 1.0 : f32
          %v1877 = arith.constant 9.999999747378752e-06 : f32
          %v1878 = arith.addf %v1877, %in_1873 : f32
          %v1879 = math.sqrt %v1878 : f32
          %v1880 = arith.divf %v1876, %v1879 : f32
          %v1881 = arith.mulf %v1880, %in_1874 : f32
          linalg.yield %v1881 : f32
      }
    -> tensor<960xf32>
    %v1882.buf = tensor.empty() : tensor<960xf32>
    %v1882.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_18_modules_4_buffers_running_mean_, %l_self_modules_features_modules_18_modules_4_buffers_running_var_, %l_self_modules_features_modules_18_modules_4_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1882.buf : tensor<960xf32>) {
        ^bb0(%in_1883: f32, %in_1884: f32, %in_1885: f32, %acc_1886: f32):
          %v1887 = arith.constant 1.0 : f32
          %v1888 = arith.constant 9.999999747378752e-06 : f32
          %v1889 = arith.addf %v1888, %in_1884 : f32
          %v1890 = math.sqrt %v1889 : f32
          %v1891 = arith.divf %v1887, %v1890 : f32
          %v1892 = arith.mulf %v1891, %in_1885 : f32
          %v1893 = arith.mulf %v1892, %in_1883 : f32
          linalg.yield %v1893 : f32
      }
    -> tensor<960xf32>
    %input_126.post = tensor.empty() : tensor<10x960x7x7xf32>
    %input_126.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_126.buf.out, %v1872.buf.out, %v1882.buf.out, %l_self_modules_features_modules_18_modules_4_parameters_bias_ : tensor<10x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%input_126.post : tensor<10x960x7x7xf32>) {
        ^bb0(%acc_1897: f32, %in_1894: f32, %in_1895: f32, %in_1896: f32, %post_1898: f32):
          %v1899 = arith.mulf %acc_1897, %in_1894 : f32
          %v1900 = arith.subf %v1899, %in_1895 : f32
          %v1901 = arith.addf %v1900, %in_1896 : f32
          %v1902 = arith.maxnumf %init, %v1901 : f32
          %v1903 = arith.constant 6.0 : f32
          %v1904 = arith.minnumf %v1903, %v1902 : f32
          linalg.yield %v1904 : f32
      }
    -> tensor<10x960x7x7xf32>
    %l_self_modules_features_modules_18_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_18_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [160, 960, 1, 1] : tensor<160x960xf32> into tensor<160x960x1x1xf32>
    %v1905.empty = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v1905.buf = linalg.fill ins(%init : f32) outs(%v1905.empty : tensor<10x160x7x1x7xf32>) -> tensor<10x160x7x1x7xf32>
    %v1905.shape = tensor.empty() : tensor<7x1xf32>
    %v1905.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_126.post.out, %l_self_modules_features_modules_18_modules_6_parameters_weight_.expanded, %v1905.shape : tensor<10x960x7x7xf32>, tensor<160x960x1x1xf32>, tensor<7x1xf32>)
      outs(%v1905.buf : tensor<10x160x7x1x7xf32>) {
        ^bb0(%in_1907: f32, %in_1908: f32, %shape_1906: f32, %acc_1909: f32):
          %v1910 = arith.mulf %in_1907, %in_1908 : f32
          %v1911 = arith.addf %v1910, %acc_1909 : f32
          linalg.yield %v1911 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %v1912.buf = tensor.empty() : tensor<160xf32>
    %v1912.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_18_modules_7_buffers_running_var_, %l_self_modules_features_modules_18_modules_7_parameters_weight_ : tensor<160xf32>, tensor<160xf32>)
      outs(%v1912.buf : tensor<160xf32>) {
        ^bb0(%in_1913: f32, %in_1914: f32, %acc_1915: f32):
          %v1916 = arith.constant 1.0 : f32
          %v1917 = arith.constant 9.999999747378752e-06 : f32
          %v1918 = arith.addf %v1917, %in_1913 : f32
          %v1919 = math.sqrt %v1918 : f32
          %v1920 = arith.divf %v1916, %v1919 : f32
          %v1921 = arith.mulf %v1920, %in_1914 : f32
          linalg.yield %v1921 : f32
      }
    -> tensor<160xf32>
    %v1922.buf = tensor.empty() : tensor<160xf32>
    %v1922.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_18_modules_7_buffers_running_mean_, %l_self_modules_features_modules_18_modules_7_buffers_running_var_, %l_self_modules_features_modules_18_modules_7_parameters_weight_ : tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v1922.buf : tensor<160xf32>) {
        ^bb0(%in_1923: f32, %in_1924: f32, %in_1925: f32, %acc_1926: f32):
          %v1927 = arith.constant 1.0 : f32
          %v1928 = arith.constant 9.999999747378752e-06 : f32
          %v1929 = arith.addf %v1928, %in_1924 : f32
          %v1930 = math.sqrt %v1929 : f32
          %v1931 = arith.divf %v1927, %v1930 : f32
          %v1932 = arith.mulf %v1931, %in_1925 : f32
          %v1933 = arith.mulf %v1932, %in_1923 : f32
          linalg.yield %v1933 : f32
      }
    -> tensor<160xf32>
    %v1905.post = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v1905.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1905.buf.out, %v1912.buf.out, %v1922.buf.out, %l_self_modules_features_modules_18_modules_7_parameters_bias_ : tensor<10x160x7x1x7xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v1905.post : tensor<10x160x7x1x7xf32>) {
        ^bb0(%acc_1937: f32, %in_1934: f32, %in_1935: f32, %in_1936: f32, %post_1938: f32):
          %v1939 = arith.mulf %acc_1937, %in_1934 : f32
          %v1940 = arith.subf %v1939, %in_1935 : f32
          %v1941 = arith.addf %v1940, %in_1936 : f32
          linalg.yield %v1941 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %l_self_modules_features_modules_19_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_19_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [960, 160, 1, 1] : tensor<960x160xf32> into tensor<960x160x1x1xf32>
    %v1942.empty = tensor.empty() : tensor<10x960x7x1x7xf32>
    %v1942.buf = linalg.fill ins(%init : f32) outs(%v1942.empty : tensor<10x960x7x1x7xf32>) -> tensor<10x960x7x1x7xf32>
    %v1942.shape = tensor.empty() : tensor<7x1xf32>
    %v1942.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1905.post.out, %l_self_modules_features_modules_19_modules_0_parameters_weight_.expanded, %v1942.shape : tensor<10x160x7x1x7xf32>, tensor<960x160x1x1xf32>, tensor<7x1xf32>)
      outs(%v1942.buf : tensor<10x960x7x1x7xf32>) {
        ^bb0(%in_1944: f32, %in_1945: f32, %shape_1943: f32, %acc_1946: f32):
          %v1947 = arith.mulf %in_1944, %in_1945 : f32
          %v1948 = arith.addf %v1947, %acc_1946 : f32
          linalg.yield %v1948 : f32
      }
    -> tensor<10x960x7x1x7xf32>
    %v1949.buf = tensor.empty() : tensor<960xf32>
    %v1949.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_19_modules_1_buffers_running_var_, %l_self_modules_features_modules_19_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1949.buf : tensor<960xf32>) {
        ^bb0(%in_1950: f32, %in_1951: f32, %acc_1952: f32):
          %v1953 = arith.constant 1.0 : f32
          %v1954 = arith.constant 9.999999747378752e-06 : f32
          %v1955 = arith.addf %v1954, %in_1950 : f32
          %v1956 = math.sqrt %v1955 : f32
          %v1957 = arith.divf %v1953, %v1956 : f32
          %v1958 = arith.mulf %v1957, %in_1951 : f32
          linalg.yield %v1958 : f32
      }
    -> tensor<960xf32>
    %v1959.buf = tensor.empty() : tensor<960xf32>
    %v1959.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_19_modules_1_buffers_running_mean_, %l_self_modules_features_modules_19_modules_1_buffers_running_var_, %l_self_modules_features_modules_19_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1959.buf : tensor<960xf32>) {
        ^bb0(%in_1960: f32, %in_1961: f32, %in_1962: f32, %acc_1963: f32):
          %v1964 = arith.constant 1.0 : f32
          %v1965 = arith.constant 9.999999747378752e-06 : f32
          %v1966 = arith.addf %v1965, %in_1961 : f32
          %v1967 = math.sqrt %v1966 : f32
          %v1968 = arith.divf %v1964, %v1967 : f32
          %v1969 = arith.mulf %v1968, %in_1962 : f32
          %v1970 = arith.mulf %v1969, %in_1960 : f32
          linalg.yield %v1970 : f32
      }
    -> tensor<960xf32>
    %v1942.post = tensor.empty() : tensor<10x960x7x1x7xf32>
    %v1942.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1942.buf.out, %v1949.buf.out, %v1959.buf.out, %l_self_modules_features_modules_19_modules_1_parameters_bias_ : tensor<10x960x7x1x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1942.post : tensor<10x960x7x1x7xf32>) {
        ^bb0(%acc_1974: f32, %in_1971: f32, %in_1972: f32, %in_1973: f32, %post_1975: f32):
          %v1976 = arith.mulf %acc_1974, %in_1971 : f32
          %v1977 = arith.subf %v1976, %in_1972 : f32
          %v1978 = arith.addf %v1977, %in_1973 : f32
          %v1979 = arith.maxnumf %init, %v1978 : f32
          %v1980 = arith.constant 6.0 : f32
          %v1981 = arith.minnumf %v1980, %v1979 : f32
          linalg.yield %v1981 : f32
      }
    -> tensor<10x960x7x1x7xf32>
    %input_131.buf = tensor.empty() : tensor<10x960x7x7xf32>
    %input_131.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1942.post.out : tensor<10x960x7x1x7xf32>)
      outs(%input_131.buf : tensor<10x960x7x7xf32>) {
        ^bb0(%in_1982: f32, %acc_1983: f32):
          linalg.yield %in_1982 : f32
      }
    -> tensor<10x960x7x7xf32>
    %v1988 = tensor.pad %input_131.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1984: index, %pad_i1985: index, %pad_i1986: index, %pad_i1987: index):
        tensor.yield %init : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %l_self_modules_features_modules_19_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_19_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [960, 1, 3, 3] : tensor<960x3x3xf32> into tensor<960x1x3x3xf32>
    %input_134.empty = tensor.empty() : tensor<10x960x7x7xf32>
    %input_134.buf = linalg.fill ins(%init : f32) outs(%input_134.empty : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %input_134.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1988, %l_self_modules_features_modules_19_modules_3_parameters_weight_.expanded : tensor<10x960x9x9xf32>, tensor<960x1x3x3xf32>)
      outs(%input_134.buf : tensor<10x960x7x7xf32>) {
        ^bb0(%in_1989: f32, %in_1990: f32, %acc_1991: f32):
          %v1992 = arith.mulf %in_1989, %in_1990 : f32
          %v1993 = arith.addf %v1992, %acc_1991 : f32
          linalg.yield %v1993 : f32
      }
    -> tensor<10x960x7x7xf32>
    %v1994.buf = tensor.empty() : tensor<960xf32>
    %v1994.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_19_modules_4_buffers_running_var_, %l_self_modules_features_modules_19_modules_4_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1994.buf : tensor<960xf32>) {
        ^bb0(%in_1995: f32, %in_1996: f32, %acc_1997: f32):
          %v1998 = arith.constant 1.0 : f32
          %v1999 = arith.constant 9.999999747378752e-06 : f32
          %v2000 = arith.addf %v1999, %in_1995 : f32
          %v2001 = math.sqrt %v2000 : f32
          %v2002 = arith.divf %v1998, %v2001 : f32
          %v2003 = arith.mulf %v2002, %in_1996 : f32
          linalg.yield %v2003 : f32
      }
    -> tensor<960xf32>
    %v2004.buf = tensor.empty() : tensor<960xf32>
    %v2004.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_19_modules_4_buffers_running_mean_, %l_self_modules_features_modules_19_modules_4_buffers_running_var_, %l_self_modules_features_modules_19_modules_4_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v2004.buf : tensor<960xf32>) {
        ^bb0(%in_2005: f32, %in_2006: f32, %in_2007: f32, %acc_2008: f32):
          %v2009 = arith.constant 1.0 : f32
          %v2010 = arith.constant 9.999999747378752e-06 : f32
          %v2011 = arith.addf %v2010, %in_2006 : f32
          %v2012 = math.sqrt %v2011 : f32
          %v2013 = arith.divf %v2009, %v2012 : f32
          %v2014 = arith.mulf %v2013, %in_2007 : f32
          %v2015 = arith.mulf %v2014, %in_2005 : f32
          linalg.yield %v2015 : f32
      }
    -> tensor<960xf32>
    %input_134.post = tensor.empty() : tensor<10x960x7x7xf32>
    %input_134.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_134.buf.out, %v1994.buf.out, %v2004.buf.out, %l_self_modules_features_modules_19_modules_4_parameters_bias_ : tensor<10x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%input_134.post : tensor<10x960x7x7xf32>) {
        ^bb0(%acc_2019: f32, %in_2016: f32, %in_2017: f32, %in_2018: f32, %post_2020: f32):
          %v2021 = arith.mulf %acc_2019, %in_2016 : f32
          %v2022 = arith.subf %v2021, %in_2017 : f32
          %v2023 = arith.addf %v2022, %in_2018 : f32
          %v2024 = arith.maxnumf %init, %v2023 : f32
          %v2025 = arith.constant 6.0 : f32
          %v2026 = arith.minnumf %v2025, %v2024 : f32
          linalg.yield %v2026 : f32
      }
    -> tensor<10x960x7x7xf32>
    %l_self_modules_features_modules_19_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_19_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [320, 960, 1, 1] : tensor<320x960xf32> into tensor<320x960x1x1xf32>
    %v2027.empty = tensor.empty() : tensor<10x320x7x1x7xf32>
    %v2027.buf = linalg.fill ins(%init : f32) outs(%v2027.empty : tensor<10x320x7x1x7xf32>) -> tensor<10x320x7x1x7xf32>
    %v2027.shape = tensor.empty() : tensor<7x1xf32>
    %v2027.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_134.post.out, %l_self_modules_features_modules_19_modules_6_parameters_weight_.expanded, %v2027.shape : tensor<10x960x7x7xf32>, tensor<320x960x1x1xf32>, tensor<7x1xf32>)
      outs(%v2027.buf : tensor<10x320x7x1x7xf32>) {
        ^bb0(%in_2029: f32, %in_2030: f32, %shape_2028: f32, %acc_2031: f32):
          %v2032 = arith.mulf %in_2029, %in_2030 : f32
          %v2033 = arith.addf %v2032, %acc_2031 : f32
          linalg.yield %v2033 : f32
      }
    -> tensor<10x320x7x1x7xf32>
    %v2034.buf = tensor.empty() : tensor<320xf32>
    %v2034.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_19_modules_7_buffers_running_var_, %l_self_modules_features_modules_19_modules_7_parameters_weight_ : tensor<320xf32>, tensor<320xf32>)
      outs(%v2034.buf : tensor<320xf32>) {
        ^bb0(%in_2035: f32, %in_2036: f32, %acc_2037: f32):
          %v2038 = arith.constant 1.0 : f32
          %v2039 = arith.constant 9.999999747378752e-06 : f32
          %v2040 = arith.addf %v2039, %in_2035 : f32
          %v2041 = math.sqrt %v2040 : f32
          %v2042 = arith.divf %v2038, %v2041 : f32
          %v2043 = arith.mulf %v2042, %in_2036 : f32
          linalg.yield %v2043 : f32
      }
    -> tensor<320xf32>
    %v2044.buf = tensor.empty() : tensor<320xf32>
    %v2044.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_19_modules_7_buffers_running_mean_, %l_self_modules_features_modules_19_modules_7_buffers_running_var_, %l_self_modules_features_modules_19_modules_7_parameters_weight_ : tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v2044.buf : tensor<320xf32>) {
        ^bb0(%in_2045: f32, %in_2046: f32, %in_2047: f32, %acc_2048: f32):
          %v2049 = arith.constant 1.0 : f32
          %v2050 = arith.constant 9.999999747378752e-06 : f32
          %v2051 = arith.addf %v2050, %in_2046 : f32
          %v2052 = math.sqrt %v2051 : f32
          %v2053 = arith.divf %v2049, %v2052 : f32
          %v2054 = arith.mulf %v2053, %in_2047 : f32
          %v2055 = arith.mulf %v2054, %in_2045 : f32
          linalg.yield %v2055 : f32
      }
    -> tensor<320xf32>
    %v2027.post = tensor.empty() : tensor<10x320x7x1x7xf32>
    %v2027.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v2027.buf.out, %v2034.buf.out, %v2044.buf.out, %l_self_modules_features_modules_19_modules_7_parameters_bias_ : tensor<10x320x7x1x7xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v2027.post : tensor<10x320x7x1x7xf32>) {
        ^bb0(%acc_2059: f32, %in_2056: f32, %in_2057: f32, %in_2058: f32, %post_2060: f32):
          %v2061 = arith.mulf %acc_2059, %in_2056 : f32
          %v2062 = arith.subf %v2061, %in_2057 : f32
          %v2063 = arith.addf %v2062, %in_2058 : f32
          linalg.yield %v2063 : f32
      }
    -> tensor<10x320x7x1x7xf32>
    %l_self_modules_features_modules_20_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_features_modules_20_parameters_weight_ [[0], [1, 2, 3]] output_shape [1280, 320, 1, 1] : tensor<1280x320xf32> into tensor<1280x320x1x1xf32>
    %v2064.empty = tensor.empty() : tensor<10x1280x7x1x7xf32>
    %v2064.buf = linalg.fill ins(%init : f32) outs(%v2064.empty : tensor<10x1280x7x1x7xf32>) -> tensor<10x1280x7x1x7xf32>
    %v2064.shape = tensor.empty() : tensor<7x1xf32>
    %v2064.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v2027.post.out, %l_self_modules_features_modules_20_parameters_weight_.expanded, %v2064.shape : tensor<10x320x7x1x7xf32>, tensor<1280x320x1x1xf32>, tensor<7x1xf32>)
      outs(%v2064.buf : tensor<10x1280x7x1x7xf32>) {
        ^bb0(%in_2066: f32, %in_2067: f32, %shape_2065: f32, %acc_2068: f32):
          %v2069 = arith.mulf %in_2066, %in_2067 : f32
          %v2070 = arith.addf %v2069, %acc_2068 : f32
          linalg.yield %v2070 : f32
      }
    -> tensor<10x1280x7x1x7xf32>
    %v2071.buf = tensor.empty() : tensor<1280xf32>
    %v2071.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_21_buffers_running_var_, %l_self_modules_features_modules_21_parameters_weight_ : tensor<1280xf32>, tensor<1280xf32>)
      outs(%v2071.buf : tensor<1280xf32>) {
        ^bb0(%in_2072: f32, %in_2073: f32, %acc_2074: f32):
          %v2075 = arith.constant 1.0 : f32
          %v2076 = arith.constant 9.999999747378752e-06 : f32
          %v2077 = arith.addf %v2076, %in_2072 : f32
          %v2078 = math.sqrt %v2077 : f32
          %v2079 = arith.divf %v2075, %v2078 : f32
          %v2080 = arith.mulf %v2079, %in_2073 : f32
          linalg.yield %v2080 : f32
      }
    -> tensor<1280xf32>
    %v2081.buf = tensor.empty() : tensor<1280xf32>
    %v2081.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_21_buffers_running_mean_, %l_self_modules_features_modules_21_buffers_running_var_, %l_self_modules_features_modules_21_parameters_weight_ : tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>)
      outs(%v2081.buf : tensor<1280xf32>) {
        ^bb0(%in_2082: f32, %in_2083: f32, %in_2084: f32, %acc_2085: f32):
          %v2086 = arith.constant 1.0 : f32
          %v2087 = arith.constant 9.999999747378752e-06 : f32
          %v2088 = arith.addf %v2087, %in_2083 : f32
          %v2089 = math.sqrt %v2088 : f32
          %v2090 = arith.divf %v2086, %v2089 : f32
          %v2091 = arith.mulf %v2090, %in_2084 : f32
          %v2092 = arith.mulf %v2091, %in_2082 : f32
          linalg.yield %v2092 : f32
      }
    -> tensor<1280xf32>
    %v2064.post = tensor.empty() : tensor<10x1280x7x1x7xf32>
    %v2064.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v2064.buf.out, %v2071.buf.out, %v2081.buf.out, %l_self_modules_features_modules_21_parameters_bias_ : tensor<10x1280x7x1x7xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>)
      outs(%v2064.post : tensor<10x1280x7x1x7xf32>) {
        ^bb0(%acc_2096: f32, %in_2093: f32, %in_2094: f32, %in_2095: f32, %post_2097: f32):
          %v2098 = arith.mulf %acc_2096, %in_2093 : f32
          %v2099 = arith.subf %v2098, %in_2094 : f32
          %v2100 = arith.addf %v2099, %in_2095 : f32
          %v2101 = arith.maxnumf %init, %v2100 : f32
          %v2102 = arith.constant 6.0 : f32
          %v2103 = arith.minnumf %v2102, %v2101 : f32
          linalg.yield %v2103 : f32
      }
    -> tensor<10x1280x7x1x7xf32>
    %v2104.empty = tensor.empty() : tensor<10x1280xf32>
    %v2104.buf = linalg.fill ins(%init : f32) outs(%v2104.empty : tensor<10x1280xf32>) -> tensor<10x1280xf32>
    %v2104.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%v2064.post.out : tensor<10x1280x7x1x7xf32>)
      outs(%v2104.buf : tensor<10x1280xf32>) {
        ^bb0(%in_2105: f32, %acc_2106: f32):
          %v2107 = arith.addf %in_2105, %acc_2106 : f32
          linalg.yield %v2107 : f32
      }
    -> tensor<10x1280xf32>
    %v2104.post = tensor.empty() : tensor<10x1280xf32>
    %v2104.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v2104.buf.out : tensor<10x1280xf32>)
      outs(%v2104.post : tensor<10x1280xf32>) {
        ^bb0(%acc_2108: f32, %post_2109: f32):
          %v2110 = arith.constant 49.0 : f32
          %v2111 = arith.divf %acc_2108, %v2110 : f32
          linalg.yield %v2111 : f32
      }
    -> tensor<10x1280xf32>
    %v2112.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v2112.buf = linalg.fill ins(%init : f32) outs(%v2112.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v2112.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v2104.post.out, %l_self_modules_classifier_modules_1_parameters_weight_ : tensor<10x1280xf32>, tensor<1000x1280xf32>)
      outs(%v2112.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_2113: f32, %in_2114: f32, %acc_2115: f32):
          %v2116 = arith.mulf %in_2113, %in_2114 : f32
          %v2117 = arith.addf %v2116, %acc_2115 : f32
          linalg.yield %v2117 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v2112.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v2112.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2112.buf.out, %l_self_modules_classifier_modules_1_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v2112.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_2119: f32, %in_2118: f32, %post_2120: f32):
          %v2121 = arith.addf %acc_2119, %in_2118 : f32
          linalg.yield %v2121 : f32
      }
    -> tensor<5x2x250x4xf32>
    %input_142.buf = tensor.empty() : tensor<10x1000xf32>
    %input_142.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v2112.post.out : tensor<5x2x250x4xf32>)
      outs(%input_142.buf : tensor<10x1000xf32>) {
        ^bb0(%in_2122: f32, %acc_2123: f32):
          linalg.yield %in_2122 : f32
      }
    -> tensor<10x1000xf32>
    func.return %input_142.buf.out : tensor<10x1000xf32>
  }
}
