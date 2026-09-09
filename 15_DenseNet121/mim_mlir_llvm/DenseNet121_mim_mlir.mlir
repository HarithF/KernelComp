module {
  func.func public @DenseNet121(%l_self_modules_features_modules_0_parameters_weight_: tensor<64x3x7x7xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_features_modules_1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_features_modules_1_buffers_running_var_: tensor<64xf32>, %l_self_modules_features_modules_1_parameters_weight_: tensor<64xf32>, %l_self_modules_features_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_buffers_running_mean_: tensor<64xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_buffers_running_var_: tensor<64xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_parameters_weight_: tensor<64xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_parameters_bias_: tensor<64xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_2_parameters_weight_: tensor<32x64x3x3xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_buffers_running_mean_: tensor<96xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_buffers_running_var_: tensor<96xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_parameters_weight_: tensor<96xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_parameters_bias_: tensor<96xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_2_parameters_weight_: tensor<32x96x3x3xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_buffers_running_mean_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_buffers_running_var_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_parameters_weight_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_parameters_bias_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_2_parameters_weight_: tensor<32x128x3x3xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_buffers_running_mean_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_buffers_running_var_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_parameters_weight_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_parameters_bias_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_2_parameters_weight_: tensor<32x160x3x3xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_buffers_running_mean_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_buffers_running_var_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_parameters_weight_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_parameters_bias_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_2_parameters_weight_: tensor<32x192x3x3xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_buffers_running_mean_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_buffers_running_var_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_parameters_weight_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_parameters_bias_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_2_parameters_weight_: tensor<32x224x3x3xf32>, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_buffers_running_mean_: tensor<256xf32>, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_buffers_running_var_: tensor<256xf32>, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_parameters_weight_: tensor<256xf32>, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_parameters_bias_: tensor<256xf32>, %l_self_modules_transition_layers_modules_0_modules_transition_modules_2_parameters_weight_: tensor<128x256xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_buffers_running_mean_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_buffers_running_var_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_parameters_weight_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_parameters_bias_: tensor<128xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_2_parameters_weight_: tensor<32x128x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_buffers_running_mean_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_buffers_running_var_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_parameters_weight_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_parameters_bias_: tensor<160xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_2_parameters_weight_: tensor<32x160x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_buffers_running_mean_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_buffers_running_var_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_parameters_weight_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_parameters_bias_: tensor<192xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_2_parameters_weight_: tensor<32x192x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_buffers_running_mean_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_buffers_running_var_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_parameters_weight_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_parameters_bias_: tensor<224xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_2_parameters_weight_: tensor<32x224x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_buffers_running_mean_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_buffers_running_var_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_parameters_weight_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_parameters_bias_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_2_parameters_weight_: tensor<32x256x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_buffers_running_mean_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_buffers_running_var_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_parameters_weight_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_parameters_bias_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_2_parameters_weight_: tensor<32x288x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_buffers_running_mean_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_buffers_running_var_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_parameters_weight_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_parameters_bias_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_2_parameters_weight_: tensor<32x320x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_buffers_running_mean_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_buffers_running_var_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_parameters_weight_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_parameters_bias_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_2_parameters_weight_: tensor<32x352x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_buffers_running_mean_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_buffers_running_var_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_parameters_weight_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_parameters_bias_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_2_parameters_weight_: tensor<32x384x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_buffers_running_mean_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_buffers_running_var_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_parameters_weight_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_parameters_bias_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_2_parameters_weight_: tensor<32x416x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_buffers_running_mean_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_buffers_running_var_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_parameters_weight_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_parameters_bias_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_2_parameters_weight_: tensor<32x448x3x3xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_buffers_running_mean_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_buffers_running_var_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_parameters_weight_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_parameters_bias_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_2_parameters_weight_: tensor<32x480x3x3xf32>, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_buffers_running_mean_: tensor<512xf32>, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_buffers_running_var_: tensor<512xf32>, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_parameters_weight_: tensor<512xf32>, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_parameters_bias_: tensor<512xf32>, %l_self_modules_transition_layers_modules_1_modules_transition_modules_2_parameters_weight_: tensor<256x512xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_buffers_running_mean_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_buffers_running_var_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_parameters_weight_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_parameters_bias_: tensor<256xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_2_parameters_weight_: tensor<32x256x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_buffers_running_mean_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_buffers_running_var_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_parameters_weight_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_parameters_bias_: tensor<288xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_2_parameters_weight_: tensor<32x288x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_buffers_running_mean_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_buffers_running_var_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_parameters_weight_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_parameters_bias_: tensor<320xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_2_parameters_weight_: tensor<32x320x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_buffers_running_mean_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_buffers_running_var_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_parameters_weight_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_parameters_bias_: tensor<352xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_2_parameters_weight_: tensor<32x352x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_buffers_running_mean_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_buffers_running_var_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_parameters_weight_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_parameters_bias_: tensor<384xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_2_parameters_weight_: tensor<32x384x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_buffers_running_mean_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_buffers_running_var_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_parameters_weight_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_parameters_bias_: tensor<416xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_2_parameters_weight_: tensor<32x416x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_buffers_running_mean_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_buffers_running_var_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_parameters_weight_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_parameters_bias_: tensor<448xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_2_parameters_weight_: tensor<32x448x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_buffers_running_mean_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_buffers_running_var_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_parameters_weight_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_parameters_bias_: tensor<480xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_2_parameters_weight_: tensor<32x480x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_buffers_running_mean_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_buffers_running_var_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_parameters_weight_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_parameters_bias_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_2_parameters_weight_: tensor<32x512x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_buffers_running_mean_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_buffers_running_var_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_parameters_weight_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_parameters_bias_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_2_parameters_weight_: tensor<32x544x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_buffers_running_mean_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_buffers_running_var_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_parameters_weight_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_parameters_bias_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_2_parameters_weight_: tensor<32x576x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_buffers_running_mean_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_buffers_running_var_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_parameters_weight_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_parameters_bias_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_2_parameters_weight_: tensor<32x608x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_buffers_running_mean_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_buffers_running_var_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_parameters_weight_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_parameters_bias_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_2_parameters_weight_: tensor<32x640x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_buffers_running_mean_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_buffers_running_var_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_parameters_weight_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_parameters_bias_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_2_parameters_weight_: tensor<32x672x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_buffers_running_mean_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_buffers_running_var_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_parameters_weight_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_parameters_bias_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_2_parameters_weight_: tensor<32x704x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_buffers_running_mean_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_buffers_running_var_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_parameters_weight_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_parameters_bias_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_2_parameters_weight_: tensor<32x736x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_buffers_running_mean_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_buffers_running_var_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_parameters_weight_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_parameters_bias_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_2_parameters_weight_: tensor<32x768x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_buffers_running_mean_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_buffers_running_var_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_parameters_weight_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_parameters_bias_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_2_parameters_weight_: tensor<32x800x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_buffers_running_mean_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_buffers_running_var_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_parameters_weight_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_parameters_bias_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_2_parameters_weight_: tensor<32x832x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_buffers_running_mean_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_buffers_running_var_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_parameters_weight_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_parameters_bias_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_2_parameters_weight_: tensor<32x864x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_buffers_running_mean_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_buffers_running_var_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_parameters_weight_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_parameters_bias_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_2_parameters_weight_: tensor<32x896x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_buffers_running_mean_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_buffers_running_var_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_parameters_weight_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_parameters_bias_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_2_parameters_weight_: tensor<32x928x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_buffers_running_mean_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_buffers_running_var_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_parameters_weight_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_parameters_bias_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_2_parameters_weight_: tensor<32x960x3x3xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_buffers_running_mean_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_buffers_running_var_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_parameters_weight_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_parameters_bias_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_2_parameters_weight_: tensor<32x992x3x3xf32>, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_buffers_running_mean_: tensor<1024xf32>, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_buffers_running_var_: tensor<1024xf32>, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_parameters_weight_: tensor<1024xf32>, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_parameters_bias_: tensor<1024xf32>, %l_self_modules_transition_layers_modules_2_modules_transition_modules_2_parameters_weight_: tensor<512x1024xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_buffers_running_mean_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_buffers_running_var_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_parameters_weight_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_parameters_bias_: tensor<512xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_2_parameters_weight_: tensor<32x512x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_buffers_running_mean_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_buffers_running_var_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_parameters_weight_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_parameters_bias_: tensor<544xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_2_parameters_weight_: tensor<32x544x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_buffers_running_mean_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_buffers_running_var_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_parameters_weight_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_parameters_bias_: tensor<576xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_2_parameters_weight_: tensor<32x576x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_buffers_running_mean_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_buffers_running_var_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_parameters_weight_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_parameters_bias_: tensor<608xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_2_parameters_weight_: tensor<32x608x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_buffers_running_mean_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_buffers_running_var_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_parameters_weight_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_parameters_bias_: tensor<640xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_2_parameters_weight_: tensor<32x640x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_buffers_running_mean_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_buffers_running_var_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_parameters_weight_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_parameters_bias_: tensor<672xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_2_parameters_weight_: tensor<32x672x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_buffers_running_mean_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_buffers_running_var_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_parameters_weight_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_parameters_bias_: tensor<704xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_2_parameters_weight_: tensor<32x704x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_buffers_running_mean_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_buffers_running_var_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_parameters_weight_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_parameters_bias_: tensor<736xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_2_parameters_weight_: tensor<32x736x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_buffers_running_mean_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_buffers_running_var_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_parameters_weight_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_parameters_bias_: tensor<768xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_2_parameters_weight_: tensor<32x768x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_buffers_running_mean_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_buffers_running_var_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_parameters_weight_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_parameters_bias_: tensor<800xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_2_parameters_weight_: tensor<32x800x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_buffers_running_mean_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_buffers_running_var_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_parameters_weight_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_parameters_bias_: tensor<832xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_2_parameters_weight_: tensor<32x832x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_buffers_running_mean_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_buffers_running_var_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_parameters_weight_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_parameters_bias_: tensor<864xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_2_parameters_weight_: tensor<32x864x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_buffers_running_mean_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_buffers_running_var_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_parameters_weight_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_parameters_bias_: tensor<896xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_2_parameters_weight_: tensor<32x896x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_buffers_running_mean_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_buffers_running_var_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_parameters_weight_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_parameters_bias_: tensor<928xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_2_parameters_weight_: tensor<32x928x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_buffers_running_mean_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_buffers_running_var_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_parameters_weight_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_parameters_bias_: tensor<960xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_2_parameters_weight_: tensor<32x960x3x3xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_buffers_running_mean_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_buffers_running_var_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_parameters_weight_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_parameters_bias_: tensor<992xf32>, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_2_parameters_weight_: tensor<32x992x3x3xf32>, %l_self_modules_final_bn_buffers_running_mean_: tensor<1024xf32>, %l_self_modules_final_bn_buffers_running_var_: tensor<1024xf32>, %l_self_modules_final_bn_parameters_weight_: tensor<1024xf32>, %l_self_modules_final_bn_parameters_bias_: tensor<1024xf32>, %l_self_modules_classifier_parameters_weight_: tensor<10x1024xf32>, %l_self_modules_classifier_parameters_bias_: tensor<10xf32>) -> tensor<10x10xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 3, 3] high[0, 0, 3, 3] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x230x230xf32>
    %v4.empty = tensor.empty() : tensor<10x64x112x1x112xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<10x64x112x1x112xf32>) -> tensor<10x64x112x1x112xf32>
    %v4.shape = tensor.empty() : tensor<112x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_features_modules_0_parameters_weight_, %v4.shape : tensor<10x3x230x230xf32>, tensor<64x3x7x7xf32>, tensor<112x1xf32>)
      outs(%v4.buf : tensor<10x64x112x1x112xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x64x112x1x112xf32>
    %v11.buf = tensor.empty() : tensor<64xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_1_buffers_running_var_, %l_self_modules_features_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v11.buf : tensor<64xf32>) {
        ^bb0(%in_12: f32, %in_13: f32, %acc_14: f32):
          %v15 = arith.constant 1.0 : f32
          %v16 = arith.constant 9.999999747378752e-06 : f32
          %v17 = arith.addf %v16, %in_12 : f32
          %v18 = math.sqrt %v17 : f32
          %v19 = arith.divf %v15, %v18 : f32
          %v20 = arith.mulf %v19, %in_13 : f32
          linalg.yield %v20 : f32
      }
    -> tensor<64xf32>
    %v21.buf = tensor.empty() : tensor<64xf32>
    %v21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_features_modules_1_buffers_running_mean_, %l_self_modules_features_modules_1_buffers_running_var_, %l_self_modules_features_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v21.buf : tensor<64xf32>) {
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
    -> tensor<64xf32>
    %v4.post = tensor.empty() : tensor<10x64x112x1x112xf32>
    %v4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.buf.out, %v11.buf.out, %v21.buf.out, %l_self_modules_features_modules_1_parameters_bias_ : tensor<10x64x112x1x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v4.post : tensor<10x64x112x1x112xf32>) {
        ^bb0(%acc_36: f32, %in_33: f32, %in_34: f32, %in_35: f32, %post_37: f32):
          %v38 = arith.mulf %acc_36, %in_33 : f32
          %v39 = arith.subf %v38, %in_34 : f32
          %v40 = arith.addf %v39, %in_35 : f32
          %v41 = arith.maxnumf %init, %v40 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<10x64x112x1x112xf32>
    %input_3.buf = tensor.empty() : tensor<10x64x112x112xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<10x64x112x1x112xf32>)
      outs(%input_3.buf : tensor<10x64x112x112xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          linalg.yield %in_42 : f32
      }
    -> tensor<10x64x112x112xf32>
    %init_1 = arith.constant 0xFF800000 : f32
    %padded_1 = tensor.pad %input_3.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i44: index, %pad_i45: index, %pad_i46: index, %pad_i47: index):
        tensor.yield %init_1 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %input_4.empty = tensor.empty() : tensor<10x64x56x56xf32>
    %input_4.buf = linalg.fill ins(%init_1 : f32) outs(%input_4.empty : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %input_4.shape = tensor.empty() : tensor<3x3xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_1, %input_4.shape : tensor<10x64x114x114xf32>, tensor<3x3xf32>)
      outs(%input_4.buf : tensor<10x64x56x56xf32>) {
        ^bb0(%in_49: f32, %shape_48: f32, %acc_50: f32):
          %v51 = arith.maxnumf %acc_50, %in_49 : f32
          linalg.yield %v51 : f32
      }
    -> tensor<10x64x56x56xf32>
    %v52.buf = tensor.empty() : tensor<64xf32>
    %v52.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v52.buf : tensor<64xf32>) {
        ^bb0(%in_53: f32, %in_54: f32, %acc_55: f32):
          %v56 = arith.constant 1.0 : f32
          %v57 = arith.constant 9.999999747378752e-06 : f32
          %v58 = arith.addf %v57, %in_53 : f32
          %v59 = math.sqrt %v58 : f32
          %v60 = arith.divf %v56, %v59 : f32
          %v61 = arith.mulf %v60, %in_54 : f32
          linalg.yield %v61 : f32
      }
    -> tensor<64xf32>
    %v62.buf = tensor.empty() : tensor<64xf32>
    %v62.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v62.buf : tensor<64xf32>) {
        ^bb0(%in_63: f32, %in_64: f32, %in_65: f32, %acc_66: f32):
          %v67 = arith.constant 1.0 : f32
          %v68 = arith.constant 9.999999747378752e-06 : f32
          %v69 = arith.addf %v68, %in_64 : f32
          %v70 = math.sqrt %v69 : f32
          %v71 = arith.divf %v67, %v70 : f32
          %v72 = arith.mulf %v71, %in_65 : f32
          %v73 = arith.mulf %v72, %in_63 : f32
          linalg.yield %v73 : f32
      }
    -> tensor<64xf32>
    %input_6.buf = tensor.empty() : tensor<10x64x56x56xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_4.buf.out, %v52.buf.out, %v62.buf.out, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_0_parameters_bias_ : tensor<10x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%input_6.buf : tensor<10x64x56x56xf32>) {
        ^bb0(%in_74: f32, %in_75: f32, %in_76: f32, %in_77: f32, %acc_78: f32):
          %v79 = arith.mulf %in_74, %in_75 : f32
          %v80 = arith.subf %v79, %in_76 : f32
          %v81 = arith.addf %v80, %in_77 : f32
          %v82 = arith.maxnumf %init, %v81 : f32
          linalg.yield %v82 : f32
      }
    -> tensor<10x64x56x56xf32>
    %padded_2 = tensor.pad %input_6.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i83: index, %pad_i84: index, %pad_i85: index, %pad_i86: index):
        tensor.yield %init : f32
    } : tensor<10x64x56x56xf32> to tensor<10x64x58x58xf32>
    %v87.empty = tensor.empty() : tensor<10x32x56x1x56xf32>
    %v87.buf = linalg.fill ins(%init : f32) outs(%v87.empty : tensor<10x32x56x1x56xf32>) -> tensor<10x32x56x1x56xf32>
    %v87.shape = tensor.empty() : tensor<56x1xf32>
    %v87.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_0_modules_2_parameters_weight_, %v87.shape : tensor<10x64x58x58xf32>, tensor<32x64x3x3xf32>, tensor<56x1xf32>)
      outs(%v87.buf : tensor<10x32x56x1x56xf32>) {
        ^bb0(%in_89: f32, %in_90: f32, %shape_88: f32, %acc_91: f32):
          %v92 = arith.mulf %in_89, %in_90 : f32
          %v93 = arith.addf %v92, %acc_91 : f32
          linalg.yield %v93 : f32
      }
    -> tensor<10x32x56x1x56xf32>
    %input_7.buf = tensor.empty() : tensor<10x32x56x56xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v87.buf.out : tensor<10x32x56x1x56xf32>)
      outs(%input_7.buf : tensor<10x32x56x56xf32>) {
        ^bb0(%in_94: f32, %acc_95: f32):
          linalg.yield %in_94 : f32
      }
    -> tensor<10x32x56x56xf32>
    %x = tensor.concat dim(1) %input_4.buf.out, %input_7.buf.out : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x96x56x56xf32>
    %v96.buf = tensor.empty() : tensor<96xf32>
    %v96.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v96.buf : tensor<96xf32>) {
        ^bb0(%in_97: f32, %in_98: f32, %acc_99: f32):
          %v100 = arith.constant 1.0 : f32
          %v101 = arith.constant 9.999999747378752e-06 : f32
          %v102 = arith.addf %v101, %in_97 : f32
          %v103 = math.sqrt %v102 : f32
          %v104 = arith.divf %v100, %v103 : f32
          %v105 = arith.mulf %v104, %in_98 : f32
          linalg.yield %v105 : f32
      }
    -> tensor<96xf32>
    %v106.buf = tensor.empty() : tensor<96xf32>
    %v106.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v106.buf : tensor<96xf32>) {
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
    -> tensor<96xf32>
    %input_10.buf = tensor.empty() : tensor<10x96x56x56xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x, %v96.buf.out, %v106.buf.out, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_0_parameters_bias_ : tensor<10x96x56x56xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%input_10.buf : tensor<10x96x56x56xf32>) {
        ^bb0(%in_118: f32, %in_119: f32, %in_120: f32, %in_121: f32, %acc_122: f32):
          %v123 = arith.mulf %in_118, %in_119 : f32
          %v124 = arith.subf %v123, %in_120 : f32
          %v125 = arith.addf %v124, %in_121 : f32
          %v126 = arith.maxnumf %init, %v125 : f32
          linalg.yield %v126 : f32
      }
    -> tensor<10x96x56x56xf32>
    %padded_3 = tensor.pad %input_10.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i127: index, %pad_i128: index, %pad_i129: index, %pad_i130: index):
        tensor.yield %init : f32
    } : tensor<10x96x56x56xf32> to tensor<10x96x58x58xf32>
    %v131.empty = tensor.empty() : tensor<10x32x56x1x56xf32>
    %v131.buf = linalg.fill ins(%init : f32) outs(%v131.empty : tensor<10x32x56x1x56xf32>) -> tensor<10x32x56x1x56xf32>
    %v131.shape = tensor.empty() : tensor<56x1xf32>
    %v131.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_1_modules_2_parameters_weight_, %v131.shape : tensor<10x96x58x58xf32>, tensor<32x96x3x3xf32>, tensor<56x1xf32>)
      outs(%v131.buf : tensor<10x32x56x1x56xf32>) {
        ^bb0(%in_133: f32, %in_134: f32, %shape_132: f32, %acc_135: f32):
          %v136 = arith.mulf %in_133, %in_134 : f32
          %v137 = arith.addf %v136, %acc_135 : f32
          linalg.yield %v137 : f32
      }
    -> tensor<10x32x56x1x56xf32>
    %input_11.buf = tensor.empty() : tensor<10x32x56x56xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v131.buf.out : tensor<10x32x56x1x56xf32>)
      outs(%input_11.buf : tensor<10x32x56x56xf32>) {
        ^bb0(%in_138: f32, %acc_139: f32):
          linalg.yield %in_138 : f32
      }
    -> tensor<10x32x56x56xf32>
    %x_1 = tensor.concat dim(1) %input_4.buf.out, %input_7.buf.out, %input_11.buf.out : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x128x56x56xf32>
    %v140.buf = tensor.empty() : tensor<128xf32>
    %v140.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v140.buf : tensor<128xf32>) {
        ^bb0(%in_141: f32, %in_142: f32, %acc_143: f32):
          %v144 = arith.constant 1.0 : f32
          %v145 = arith.constant 9.999999747378752e-06 : f32
          %v146 = arith.addf %v145, %in_141 : f32
          %v147 = math.sqrt %v146 : f32
          %v148 = arith.divf %v144, %v147 : f32
          %v149 = arith.mulf %v148, %in_142 : f32
          linalg.yield %v149 : f32
      }
    -> tensor<128xf32>
    %v150.buf = tensor.empty() : tensor<128xf32>
    %v150.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v150.buf : tensor<128xf32>) {
        ^bb0(%in_151: f32, %in_152: f32, %in_153: f32, %acc_154: f32):
          %v155 = arith.constant 1.0 : f32
          %v156 = arith.constant 9.999999747378752e-06 : f32
          %v157 = arith.addf %v156, %in_152 : f32
          %v158 = math.sqrt %v157 : f32
          %v159 = arith.divf %v155, %v158 : f32
          %v160 = arith.mulf %v159, %in_153 : f32
          %v161 = arith.mulf %v160, %in_151 : f32
          linalg.yield %v161 : f32
      }
    -> tensor<128xf32>
    %input_14.buf = tensor.empty() : tensor<10x128x56x56xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_1, %v140.buf.out, %v150.buf.out, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_0_parameters_bias_ : tensor<10x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%input_14.buf : tensor<10x128x56x56xf32>) {
        ^bb0(%in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %acc_166: f32):
          %v167 = arith.mulf %in_162, %in_163 : f32
          %v168 = arith.subf %v167, %in_164 : f32
          %v169 = arith.addf %v168, %in_165 : f32
          %v170 = arith.maxnumf %init, %v169 : f32
          linalg.yield %v170 : f32
      }
    -> tensor<10x128x56x56xf32>
    %padded_4 = tensor.pad %input_14.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i171: index, %pad_i172: index, %pad_i173: index, %pad_i174: index):
        tensor.yield %init : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %v175.empty = tensor.empty() : tensor<10x32x56x1x56xf32>
    %v175.buf = linalg.fill ins(%init : f32) outs(%v175.empty : tensor<10x32x56x1x56xf32>) -> tensor<10x32x56x1x56xf32>
    %v175.shape = tensor.empty() : tensor<56x1xf32>
    %v175.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_2_modules_2_parameters_weight_, %v175.shape : tensor<10x128x58x58xf32>, tensor<32x128x3x3xf32>, tensor<56x1xf32>)
      outs(%v175.buf : tensor<10x32x56x1x56xf32>) {
        ^bb0(%in_177: f32, %in_178: f32, %shape_176: f32, %acc_179: f32):
          %v180 = arith.mulf %in_177, %in_178 : f32
          %v181 = arith.addf %v180, %acc_179 : f32
          linalg.yield %v181 : f32
      }
    -> tensor<10x32x56x1x56xf32>
    %input_15.buf = tensor.empty() : tensor<10x32x56x56xf32>
    %input_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v175.buf.out : tensor<10x32x56x1x56xf32>)
      outs(%input_15.buf : tensor<10x32x56x56xf32>) {
        ^bb0(%in_182: f32, %acc_183: f32):
          linalg.yield %in_182 : f32
      }
    -> tensor<10x32x56x56xf32>
    %x_2 = tensor.concat dim(1) %input_4.buf.out, %input_7.buf.out, %input_11.buf.out, %input_15.buf.out : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x160x56x56xf32>
    %v184.buf = tensor.empty() : tensor<160xf32>
    %v184.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<160xf32>, tensor<160xf32>)
      outs(%v184.buf : tensor<160xf32>) {
        ^bb0(%in_185: f32, %in_186: f32, %acc_187: f32):
          %v188 = arith.constant 1.0 : f32
          %v189 = arith.constant 9.999999747378752e-06 : f32
          %v190 = arith.addf %v189, %in_185 : f32
          %v191 = math.sqrt %v190 : f32
          %v192 = arith.divf %v188, %v191 : f32
          %v193 = arith.mulf %v192, %in_186 : f32
          linalg.yield %v193 : f32
      }
    -> tensor<160xf32>
    %v194.buf = tensor.empty() : tensor<160xf32>
    %v194.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v194.buf : tensor<160xf32>) {
        ^bb0(%in_195: f32, %in_196: f32, %in_197: f32, %acc_198: f32):
          %v199 = arith.constant 1.0 : f32
          %v200 = arith.constant 9.999999747378752e-06 : f32
          %v201 = arith.addf %v200, %in_196 : f32
          %v202 = math.sqrt %v201 : f32
          %v203 = arith.divf %v199, %v202 : f32
          %v204 = arith.mulf %v203, %in_197 : f32
          %v205 = arith.mulf %v204, %in_195 : f32
          linalg.yield %v205 : f32
      }
    -> tensor<160xf32>
    %input_18.buf = tensor.empty() : tensor<10x160x56x56xf32>
    %input_18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_2, %v184.buf.out, %v194.buf.out, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_0_parameters_bias_ : tensor<10x160x56x56xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%input_18.buf : tensor<10x160x56x56xf32>) {
        ^bb0(%in_206: f32, %in_207: f32, %in_208: f32, %in_209: f32, %acc_210: f32):
          %v211 = arith.mulf %in_206, %in_207 : f32
          %v212 = arith.subf %v211, %in_208 : f32
          %v213 = arith.addf %v212, %in_209 : f32
          %v214 = arith.maxnumf %init, %v213 : f32
          linalg.yield %v214 : f32
      }
    -> tensor<10x160x56x56xf32>
    %padded_5 = tensor.pad %input_18.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i215: index, %pad_i216: index, %pad_i217: index, %pad_i218: index):
        tensor.yield %init : f32
    } : tensor<10x160x56x56xf32> to tensor<10x160x58x58xf32>
    %v219.empty = tensor.empty() : tensor<10x32x56x1x56xf32>
    %v219.buf = linalg.fill ins(%init : f32) outs(%v219.empty : tensor<10x32x56x1x56xf32>) -> tensor<10x32x56x1x56xf32>
    %v219.shape = tensor.empty() : tensor<56x1xf32>
    %v219.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_3_modules_2_parameters_weight_, %v219.shape : tensor<10x160x58x58xf32>, tensor<32x160x3x3xf32>, tensor<56x1xf32>)
      outs(%v219.buf : tensor<10x32x56x1x56xf32>) {
        ^bb0(%in_221: f32, %in_222: f32, %shape_220: f32, %acc_223: f32):
          %v224 = arith.mulf %in_221, %in_222 : f32
          %v225 = arith.addf %v224, %acc_223 : f32
          linalg.yield %v225 : f32
      }
    -> tensor<10x32x56x1x56xf32>
    %input_19.buf = tensor.empty() : tensor<10x32x56x56xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v219.buf.out : tensor<10x32x56x1x56xf32>)
      outs(%input_19.buf : tensor<10x32x56x56xf32>) {
        ^bb0(%in_226: f32, %acc_227: f32):
          linalg.yield %in_226 : f32
      }
    -> tensor<10x32x56x56xf32>
    %x_3 = tensor.concat dim(1) %input_4.buf.out, %input_7.buf.out, %input_11.buf.out, %input_15.buf.out, %input_19.buf.out : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x192x56x56xf32>
    %v228.buf = tensor.empty() : tensor<192xf32>
    %v228.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v228.buf : tensor<192xf32>) {
        ^bb0(%in_229: f32, %in_230: f32, %acc_231: f32):
          %v232 = arith.constant 1.0 : f32
          %v233 = arith.constant 9.999999747378752e-06 : f32
          %v234 = arith.addf %v233, %in_229 : f32
          %v235 = math.sqrt %v234 : f32
          %v236 = arith.divf %v232, %v235 : f32
          %v237 = arith.mulf %v236, %in_230 : f32
          linalg.yield %v237 : f32
      }
    -> tensor<192xf32>
    %v238.buf = tensor.empty() : tensor<192xf32>
    %v238.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v238.buf : tensor<192xf32>) {
        ^bb0(%in_239: f32, %in_240: f32, %in_241: f32, %acc_242: f32):
          %v243 = arith.constant 1.0 : f32
          %v244 = arith.constant 9.999999747378752e-06 : f32
          %v245 = arith.addf %v244, %in_240 : f32
          %v246 = math.sqrt %v245 : f32
          %v247 = arith.divf %v243, %v246 : f32
          %v248 = arith.mulf %v247, %in_241 : f32
          %v249 = arith.mulf %v248, %in_239 : f32
          linalg.yield %v249 : f32
      }
    -> tensor<192xf32>
    %input_22.buf = tensor.empty() : tensor<10x192x56x56xf32>
    %input_22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_3, %v228.buf.out, %v238.buf.out, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_0_parameters_bias_ : tensor<10x192x56x56xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%input_22.buf : tensor<10x192x56x56xf32>) {
        ^bb0(%in_250: f32, %in_251: f32, %in_252: f32, %in_253: f32, %acc_254: f32):
          %v255 = arith.mulf %in_250, %in_251 : f32
          %v256 = arith.subf %v255, %in_252 : f32
          %v257 = arith.addf %v256, %in_253 : f32
          %v258 = arith.maxnumf %init, %v257 : f32
          linalg.yield %v258 : f32
      }
    -> tensor<10x192x56x56xf32>
    %padded_6 = tensor.pad %input_22.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i259: index, %pad_i260: index, %pad_i261: index, %pad_i262: index):
        tensor.yield %init : f32
    } : tensor<10x192x56x56xf32> to tensor<10x192x58x58xf32>
    %v263.empty = tensor.empty() : tensor<10x32x56x1x56xf32>
    %v263.buf = linalg.fill ins(%init : f32) outs(%v263.empty : tensor<10x32x56x1x56xf32>) -> tensor<10x32x56x1x56xf32>
    %v263.shape = tensor.empty() : tensor<56x1xf32>
    %v263.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_6, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_4_modules_2_parameters_weight_, %v263.shape : tensor<10x192x58x58xf32>, tensor<32x192x3x3xf32>, tensor<56x1xf32>)
      outs(%v263.buf : tensor<10x32x56x1x56xf32>) {
        ^bb0(%in_265: f32, %in_266: f32, %shape_264: f32, %acc_267: f32):
          %v268 = arith.mulf %in_265, %in_266 : f32
          %v269 = arith.addf %v268, %acc_267 : f32
          linalg.yield %v269 : f32
      }
    -> tensor<10x32x56x1x56xf32>
    %input_23.buf = tensor.empty() : tensor<10x32x56x56xf32>
    %input_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v263.buf.out : tensor<10x32x56x1x56xf32>)
      outs(%input_23.buf : tensor<10x32x56x56xf32>) {
        ^bb0(%in_270: f32, %acc_271: f32):
          linalg.yield %in_270 : f32
      }
    -> tensor<10x32x56x56xf32>
    %x_4 = tensor.concat dim(1) %input_4.buf.out, %input_7.buf.out, %input_11.buf.out, %input_15.buf.out, %input_19.buf.out, %input_23.buf.out : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x224x56x56xf32>
    %v272.buf = tensor.empty() : tensor<224xf32>
    %v272.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<224xf32>, tensor<224xf32>)
      outs(%v272.buf : tensor<224xf32>) {
        ^bb0(%in_273: f32, %in_274: f32, %acc_275: f32):
          %v276 = arith.constant 1.0 : f32
          %v277 = arith.constant 9.999999747378752e-06 : f32
          %v278 = arith.addf %v277, %in_273 : f32
          %v279 = math.sqrt %v278 : f32
          %v280 = arith.divf %v276, %v279 : f32
          %v281 = arith.mulf %v280, %in_274 : f32
          linalg.yield %v281 : f32
      }
    -> tensor<224xf32>
    %v282.buf = tensor.empty() : tensor<224xf32>
    %v282.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<224xf32>, tensor<224xf32>, tensor<224xf32>)
      outs(%v282.buf : tensor<224xf32>) {
        ^bb0(%in_283: f32, %in_284: f32, %in_285: f32, %acc_286: f32):
          %v287 = arith.constant 1.0 : f32
          %v288 = arith.constant 9.999999747378752e-06 : f32
          %v289 = arith.addf %v288, %in_284 : f32
          %v290 = math.sqrt %v289 : f32
          %v291 = arith.divf %v287, %v290 : f32
          %v292 = arith.mulf %v291, %in_285 : f32
          %v293 = arith.mulf %v292, %in_283 : f32
          linalg.yield %v293 : f32
      }
    -> tensor<224xf32>
    %input_26.buf = tensor.empty() : tensor<10x224x56x56xf32>
    %input_26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_4, %v272.buf.out, %v282.buf.out, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_0_parameters_bias_ : tensor<10x224x56x56xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>)
      outs(%input_26.buf : tensor<10x224x56x56xf32>) {
        ^bb0(%in_294: f32, %in_295: f32, %in_296: f32, %in_297: f32, %acc_298: f32):
          %v299 = arith.mulf %in_294, %in_295 : f32
          %v300 = arith.subf %v299, %in_296 : f32
          %v301 = arith.addf %v300, %in_297 : f32
          %v302 = arith.maxnumf %init, %v301 : f32
          linalg.yield %v302 : f32
      }
    -> tensor<10x224x56x56xf32>
    %padded_7 = tensor.pad %input_26.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i303: index, %pad_i304: index, %pad_i305: index, %pad_i306: index):
        tensor.yield %init : f32
    } : tensor<10x224x56x56xf32> to tensor<10x224x58x58xf32>
    %v307.empty = tensor.empty() : tensor<10x32x56x1x56xf32>
    %v307.buf = linalg.fill ins(%init : f32) outs(%v307.empty : tensor<10x32x56x1x56xf32>) -> tensor<10x32x56x1x56xf32>
    %v307.shape = tensor.empty() : tensor<56x1xf32>
    %v307.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_dense_blocks_modules_0_modules_layers_modules_5_modules_2_parameters_weight_, %v307.shape : tensor<10x224x58x58xf32>, tensor<32x224x3x3xf32>, tensor<56x1xf32>)
      outs(%v307.buf : tensor<10x32x56x1x56xf32>) {
        ^bb0(%in_309: f32, %in_310: f32, %shape_308: f32, %acc_311: f32):
          %v312 = arith.mulf %in_309, %in_310 : f32
          %v313 = arith.addf %v312, %acc_311 : f32
          linalg.yield %v313 : f32
      }
    -> tensor<10x32x56x1x56xf32>
    %input_27.buf = tensor.empty() : tensor<10x32x56x56xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v307.buf.out : tensor<10x32x56x1x56xf32>)
      outs(%input_27.buf : tensor<10x32x56x56xf32>) {
        ^bb0(%in_314: f32, %acc_315: f32):
          linalg.yield %in_314 : f32
      }
    -> tensor<10x32x56x56xf32>
    %x_5 = tensor.concat dim(1) %input_4.buf.out, %input_7.buf.out, %input_11.buf.out, %input_15.buf.out, %input_19.buf.out, %input_23.buf.out, %input_27.buf.out : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v316.buf = tensor.empty() : tensor<256xf32>
    %v316.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_transition_layers_modules_0_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v316.buf : tensor<256xf32>) {
        ^bb0(%in_317: f32, %in_318: f32, %acc_319: f32):
          %v320 = arith.constant 1.0 : f32
          %v321 = arith.constant 9.999999747378752e-06 : f32
          %v322 = arith.addf %v321, %in_317 : f32
          %v323 = math.sqrt %v322 : f32
          %v324 = arith.divf %v320, %v323 : f32
          %v325 = arith.mulf %v324, %in_318 : f32
          linalg.yield %v325 : f32
      }
    -> tensor<256xf32>
    %v326.buf = tensor.empty() : tensor<256xf32>
    %v326.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_transition_layers_modules_0_modules_transition_modules_0_buffers_running_mean_, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v326.buf : tensor<256xf32>) {
        ^bb0(%in_327: f32, %in_328: f32, %in_329: f32, %acc_330: f32):
          %v331 = arith.constant 1.0 : f32
          %v332 = arith.constant 9.999999747378752e-06 : f32
          %v333 = arith.addf %v332, %in_328 : f32
          %v334 = math.sqrt %v333 : f32
          %v335 = arith.divf %v331, %v334 : f32
          %v336 = arith.mulf %v335, %in_329 : f32
          %v337 = arith.mulf %v336, %in_327 : f32
          linalg.yield %v337 : f32
      }
    -> tensor<256xf32>
    %input_30.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_5, %v316.buf.out, %v326.buf.out, %l_self_modules_transition_layers_modules_0_modules_transition_modules_0_parameters_bias_ : tensor<10x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%input_30.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_338: f32, %in_339: f32, %in_340: f32, %in_341: f32, %acc_342: f32):
          %v343 = arith.mulf %in_338, %in_339 : f32
          %v344 = arith.subf %v343, %in_340 : f32
          %v345 = arith.addf %v344, %in_341 : f32
          %v346 = arith.maxnumf %init, %v345 : f32
          linalg.yield %v346 : f32
      }
    -> tensor<10x256x56x56xf32>
    %l_self_modules_transition_layers_modules_0_modules_transition_modules_2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_transition_layers_modules_0_modules_transition_modules_2_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 256, 1, 1] : tensor<128x256xf32> into tensor<128x256x1x1xf32>
    %v347.empty = tensor.empty() : tensor<10x128x56x1x56xf32>
    %v347.buf = linalg.fill ins(%init : f32) outs(%v347.empty : tensor<10x128x56x1x56xf32>) -> tensor<10x128x56x1x56xf32>
    %v347.shape = tensor.empty() : tensor<56x1xf32>
    %v347.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_30.buf.out, %l_self_modules_transition_layers_modules_0_modules_transition_modules_2_parameters_weight_.expanded, %v347.shape : tensor<10x256x56x56xf32>, tensor<128x256x1x1xf32>, tensor<56x1xf32>)
      outs(%v347.buf : tensor<10x128x56x1x56xf32>) {
        ^bb0(%in_349: f32, %in_350: f32, %shape_348: f32, %acc_351: f32):
          %v352 = arith.mulf %in_349, %in_350 : f32
          %v353 = arith.addf %v352, %acc_351 : f32
          linalg.yield %v353 : f32
      }
    -> tensor<10x128x56x1x56xf32>
    %input_32.empty = tensor.empty() : tensor<10x128x28x28xf32>
    %input_32.buf = linalg.fill ins(%init : f32) outs(%input_32.empty : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %input_32.shape = tensor.empty() : tensor<2x2xf32>
    %input_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v347.buf.out, %input_32.shape : tensor<10x128x56x1x56xf32>, tensor<2x2xf32>)
      outs(%input_32.buf : tensor<10x128x28x28xf32>) {
        ^bb0(%in_355: f32, %shape_354: f32, %acc_356: f32):
          %v357 = arith.addf %acc_356, %in_355 : f32
          linalg.yield %v357 : f32
      }
    -> tensor<10x128x28x28xf32>
    %input_32.post = tensor.empty() : tensor<10x128x28x28xf32>
    %input_32.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_32.buf.out : tensor<10x128x28x28xf32>)
      outs(%input_32.post : tensor<10x128x28x28xf32>) {
        ^bb0(%acc_358: f32, %post_359: f32):
          %v360 = arith.constant 0.25 : f32
          %v361 = arith.mulf %v360, %acc_358 : f32
          linalg.yield %v361 : f32
      }
    -> tensor<10x128x28x28xf32>
    %v362.buf = tensor.empty() : tensor<128xf32>
    %v362.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v362.buf : tensor<128xf32>) {
        ^bb0(%in_363: f32, %in_364: f32, %acc_365: f32):
          %v366 = arith.constant 1.0 : f32
          %v367 = arith.constant 9.999999747378752e-06 : f32
          %v368 = arith.addf %v367, %in_363 : f32
          %v369 = math.sqrt %v368 : f32
          %v370 = arith.divf %v366, %v369 : f32
          %v371 = arith.mulf %v370, %in_364 : f32
          linalg.yield %v371 : f32
      }
    -> tensor<128xf32>
    %v372.buf = tensor.empty() : tensor<128xf32>
    %v372.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v372.buf : tensor<128xf32>) {
        ^bb0(%in_373: f32, %in_374: f32, %in_375: f32, %acc_376: f32):
          %v377 = arith.constant 1.0 : f32
          %v378 = arith.constant 9.999999747378752e-06 : f32
          %v379 = arith.addf %v378, %in_374 : f32
          %v380 = math.sqrt %v379 : f32
          %v381 = arith.divf %v377, %v380 : f32
          %v382 = arith.mulf %v381, %in_375 : f32
          %v383 = arith.mulf %v382, %in_373 : f32
          linalg.yield %v383 : f32
      }
    -> tensor<128xf32>
    %input_34.buf = tensor.empty() : tensor<10x128x28x28xf32>
    %input_34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_32.post.out, %v362.buf.out, %v372.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_0_parameters_bias_ : tensor<10x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%input_34.buf : tensor<10x128x28x28xf32>) {
        ^bb0(%in_384: f32, %in_385: f32, %in_386: f32, %in_387: f32, %acc_388: f32):
          %v389 = arith.mulf %in_384, %in_385 : f32
          %v390 = arith.subf %v389, %in_386 : f32
          %v391 = arith.addf %v390, %in_387 : f32
          %v392 = arith.maxnumf %init, %v391 : f32
          linalg.yield %v392 : f32
      }
    -> tensor<10x128x28x28xf32>
    %padded_8 = tensor.pad %input_34.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i393: index, %pad_i394: index, %pad_i395: index, %pad_i396: index):
        tensor.yield %init : f32
    } : tensor<10x128x28x28xf32> to tensor<10x128x30x30xf32>
    %v397.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v397.buf = linalg.fill ins(%init : f32) outs(%v397.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v397.shape = tensor.empty() : tensor<28x1xf32>
    %v397.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_0_modules_2_parameters_weight_, %v397.shape : tensor<10x128x30x30xf32>, tensor<32x128x3x3xf32>, tensor<28x1xf32>)
      outs(%v397.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_399: f32, %in_400: f32, %shape_398: f32, %acc_401: f32):
          %v402 = arith.mulf %in_399, %in_400 : f32
          %v403 = arith.addf %v402, %acc_401 : f32
          linalg.yield %v403 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_35.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v397.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_35.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_404: f32, %acc_405: f32):
          linalg.yield %in_404 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_6 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x160x28x28xf32>
    %v406.buf = tensor.empty() : tensor<160xf32>
    %v406.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<160xf32>, tensor<160xf32>)
      outs(%v406.buf : tensor<160xf32>) {
        ^bb0(%in_407: f32, %in_408: f32, %acc_409: f32):
          %v410 = arith.constant 1.0 : f32
          %v411 = arith.constant 9.999999747378752e-06 : f32
          %v412 = arith.addf %v411, %in_407 : f32
          %v413 = math.sqrt %v412 : f32
          %v414 = arith.divf %v410, %v413 : f32
          %v415 = arith.mulf %v414, %in_408 : f32
          linalg.yield %v415 : f32
      }
    -> tensor<160xf32>
    %v416.buf = tensor.empty() : tensor<160xf32>
    %v416.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v416.buf : tensor<160xf32>) {
        ^bb0(%in_417: f32, %in_418: f32, %in_419: f32, %acc_420: f32):
          %v421 = arith.constant 1.0 : f32
          %v422 = arith.constant 9.999999747378752e-06 : f32
          %v423 = arith.addf %v422, %in_418 : f32
          %v424 = math.sqrt %v423 : f32
          %v425 = arith.divf %v421, %v424 : f32
          %v426 = arith.mulf %v425, %in_419 : f32
          %v427 = arith.mulf %v426, %in_417 : f32
          linalg.yield %v427 : f32
      }
    -> tensor<160xf32>
    %input_38.buf = tensor.empty() : tensor<10x160x28x28xf32>
    %input_38.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_6, %v406.buf.out, %v416.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_0_parameters_bias_ : tensor<10x160x28x28xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%input_38.buf : tensor<10x160x28x28xf32>) {
        ^bb0(%in_428: f32, %in_429: f32, %in_430: f32, %in_431: f32, %acc_432: f32):
          %v433 = arith.mulf %in_428, %in_429 : f32
          %v434 = arith.subf %v433, %in_430 : f32
          %v435 = arith.addf %v434, %in_431 : f32
          %v436 = arith.maxnumf %init, %v435 : f32
          linalg.yield %v436 : f32
      }
    -> tensor<10x160x28x28xf32>
    %padded_9 = tensor.pad %input_38.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i437: index, %pad_i438: index, %pad_i439: index, %pad_i440: index):
        tensor.yield %init : f32
    } : tensor<10x160x28x28xf32> to tensor<10x160x30x30xf32>
    %v441.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v441.buf = linalg.fill ins(%init : f32) outs(%v441.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v441.shape = tensor.empty() : tensor<28x1xf32>
    %v441.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_9, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_1_modules_2_parameters_weight_, %v441.shape : tensor<10x160x30x30xf32>, tensor<32x160x3x3xf32>, tensor<28x1xf32>)
      outs(%v441.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_443: f32, %in_444: f32, %shape_442: f32, %acc_445: f32):
          %v446 = arith.mulf %in_443, %in_444 : f32
          %v447 = arith.addf %v446, %acc_445 : f32
          linalg.yield %v447 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_39.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_39.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v441.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_39.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_448: f32, %acc_449: f32):
          linalg.yield %in_448 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_7 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x192x28x28xf32>
    %v450.buf = tensor.empty() : tensor<192xf32>
    %v450.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v450.buf : tensor<192xf32>) {
        ^bb0(%in_451: f32, %in_452: f32, %acc_453: f32):
          %v454 = arith.constant 1.0 : f32
          %v455 = arith.constant 9.999999747378752e-06 : f32
          %v456 = arith.addf %v455, %in_451 : f32
          %v457 = math.sqrt %v456 : f32
          %v458 = arith.divf %v454, %v457 : f32
          %v459 = arith.mulf %v458, %in_452 : f32
          linalg.yield %v459 : f32
      }
    -> tensor<192xf32>
    %v460.buf = tensor.empty() : tensor<192xf32>
    %v460.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v460.buf : tensor<192xf32>) {
        ^bb0(%in_461: f32, %in_462: f32, %in_463: f32, %acc_464: f32):
          %v465 = arith.constant 1.0 : f32
          %v466 = arith.constant 9.999999747378752e-06 : f32
          %v467 = arith.addf %v466, %in_462 : f32
          %v468 = math.sqrt %v467 : f32
          %v469 = arith.divf %v465, %v468 : f32
          %v470 = arith.mulf %v469, %in_463 : f32
          %v471 = arith.mulf %v470, %in_461 : f32
          linalg.yield %v471 : f32
      }
    -> tensor<192xf32>
    %input_42.buf = tensor.empty() : tensor<10x192x28x28xf32>
    %input_42.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_7, %v450.buf.out, %v460.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_0_parameters_bias_ : tensor<10x192x28x28xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%input_42.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_472: f32, %in_473: f32, %in_474: f32, %in_475: f32, %acc_476: f32):
          %v477 = arith.mulf %in_472, %in_473 : f32
          %v478 = arith.subf %v477, %in_474 : f32
          %v479 = arith.addf %v478, %in_475 : f32
          %v480 = arith.maxnumf %init, %v479 : f32
          linalg.yield %v480 : f32
      }
    -> tensor<10x192x28x28xf32>
    %padded_10 = tensor.pad %input_42.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i481: index, %pad_i482: index, %pad_i483: index, %pad_i484: index):
        tensor.yield %init : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %v485.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v485.buf = linalg.fill ins(%init : f32) outs(%v485.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v485.shape = tensor.empty() : tensor<28x1xf32>
    %v485.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_10, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_2_modules_2_parameters_weight_, %v485.shape : tensor<10x192x30x30xf32>, tensor<32x192x3x3xf32>, tensor<28x1xf32>)
      outs(%v485.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_487: f32, %in_488: f32, %shape_486: f32, %acc_489: f32):
          %v490 = arith.mulf %in_487, %in_488 : f32
          %v491 = arith.addf %v490, %acc_489 : f32
          linalg.yield %v491 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_43.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v485.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_43.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_492: f32, %acc_493: f32):
          linalg.yield %in_492 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_8 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x224x28x28xf32>
    %v494.buf = tensor.empty() : tensor<224xf32>
    %v494.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<224xf32>, tensor<224xf32>)
      outs(%v494.buf : tensor<224xf32>) {
        ^bb0(%in_495: f32, %in_496: f32, %acc_497: f32):
          %v498 = arith.constant 1.0 : f32
          %v499 = arith.constant 9.999999747378752e-06 : f32
          %v500 = arith.addf %v499, %in_495 : f32
          %v501 = math.sqrt %v500 : f32
          %v502 = arith.divf %v498, %v501 : f32
          %v503 = arith.mulf %v502, %in_496 : f32
          linalg.yield %v503 : f32
      }
    -> tensor<224xf32>
    %v504.buf = tensor.empty() : tensor<224xf32>
    %v504.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<224xf32>, tensor<224xf32>, tensor<224xf32>)
      outs(%v504.buf : tensor<224xf32>) {
        ^bb0(%in_505: f32, %in_506: f32, %in_507: f32, %acc_508: f32):
          %v509 = arith.constant 1.0 : f32
          %v510 = arith.constant 9.999999747378752e-06 : f32
          %v511 = arith.addf %v510, %in_506 : f32
          %v512 = math.sqrt %v511 : f32
          %v513 = arith.divf %v509, %v512 : f32
          %v514 = arith.mulf %v513, %in_507 : f32
          %v515 = arith.mulf %v514, %in_505 : f32
          linalg.yield %v515 : f32
      }
    -> tensor<224xf32>
    %input_46.buf = tensor.empty() : tensor<10x224x28x28xf32>
    %input_46.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_8, %v494.buf.out, %v504.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_0_parameters_bias_ : tensor<10x224x28x28xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>)
      outs(%input_46.buf : tensor<10x224x28x28xf32>) {
        ^bb0(%in_516: f32, %in_517: f32, %in_518: f32, %in_519: f32, %acc_520: f32):
          %v521 = arith.mulf %in_516, %in_517 : f32
          %v522 = arith.subf %v521, %in_518 : f32
          %v523 = arith.addf %v522, %in_519 : f32
          %v524 = arith.maxnumf %init, %v523 : f32
          linalg.yield %v524 : f32
      }
    -> tensor<10x224x28x28xf32>
    %padded_11 = tensor.pad %input_46.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i525: index, %pad_i526: index, %pad_i527: index, %pad_i528: index):
        tensor.yield %init : f32
    } : tensor<10x224x28x28xf32> to tensor<10x224x30x30xf32>
    %v529.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v529.buf = linalg.fill ins(%init : f32) outs(%v529.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v529.shape = tensor.empty() : tensor<28x1xf32>
    %v529.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_3_modules_2_parameters_weight_, %v529.shape : tensor<10x224x30x30xf32>, tensor<32x224x3x3xf32>, tensor<28x1xf32>)
      outs(%v529.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_531: f32, %in_532: f32, %shape_530: f32, %acc_533: f32):
          %v534 = arith.mulf %in_531, %in_532 : f32
          %v535 = arith.addf %v534, %acc_533 : f32
          linalg.yield %v535 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_47.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_47.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v529.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_47.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_536: f32, %acc_537: f32):
          linalg.yield %in_536 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_9 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x256x28x28xf32>
    %v538.buf = tensor.empty() : tensor<256xf32>
    %v538.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v538.buf : tensor<256xf32>) {
        ^bb0(%in_539: f32, %in_540: f32, %acc_541: f32):
          %v542 = arith.constant 1.0 : f32
          %v543 = arith.constant 9.999999747378752e-06 : f32
          %v544 = arith.addf %v543, %in_539 : f32
          %v545 = math.sqrt %v544 : f32
          %v546 = arith.divf %v542, %v545 : f32
          %v547 = arith.mulf %v546, %in_540 : f32
          linalg.yield %v547 : f32
      }
    -> tensor<256xf32>
    %v548.buf = tensor.empty() : tensor<256xf32>
    %v548.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v548.buf : tensor<256xf32>) {
        ^bb0(%in_549: f32, %in_550: f32, %in_551: f32, %acc_552: f32):
          %v553 = arith.constant 1.0 : f32
          %v554 = arith.constant 9.999999747378752e-06 : f32
          %v555 = arith.addf %v554, %in_550 : f32
          %v556 = math.sqrt %v555 : f32
          %v557 = arith.divf %v553, %v556 : f32
          %v558 = arith.mulf %v557, %in_551 : f32
          %v559 = arith.mulf %v558, %in_549 : f32
          linalg.yield %v559 : f32
      }
    -> tensor<256xf32>
    %input_50.buf = tensor.empty() : tensor<10x256x28x28xf32>
    %input_50.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_9, %v538.buf.out, %v548.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_0_parameters_bias_ : tensor<10x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%input_50.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_560: f32, %in_561: f32, %in_562: f32, %in_563: f32, %acc_564: f32):
          %v565 = arith.mulf %in_560, %in_561 : f32
          %v566 = arith.subf %v565, %in_562 : f32
          %v567 = arith.addf %v566, %in_563 : f32
          %v568 = arith.maxnumf %init, %v567 : f32
          linalg.yield %v568 : f32
      }
    -> tensor<10x256x28x28xf32>
    %padded_12 = tensor.pad %input_50.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i569: index, %pad_i570: index, %pad_i571: index, %pad_i572: index):
        tensor.yield %init : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %v573.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v573.buf = linalg.fill ins(%init : f32) outs(%v573.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v573.shape = tensor.empty() : tensor<28x1xf32>
    %v573.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_12, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_4_modules_2_parameters_weight_, %v573.shape : tensor<10x256x30x30xf32>, tensor<32x256x3x3xf32>, tensor<28x1xf32>)
      outs(%v573.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_575: f32, %in_576: f32, %shape_574: f32, %acc_577: f32):
          %v578 = arith.mulf %in_575, %in_576 : f32
          %v579 = arith.addf %v578, %acc_577 : f32
          linalg.yield %v579 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_51.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v573.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_51.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_580: f32, %acc_581: f32):
          linalg.yield %in_580 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_10 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x288x28x28xf32>
    %v582.buf = tensor.empty() : tensor<288xf32>
    %v582.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<288xf32>, tensor<288xf32>)
      outs(%v582.buf : tensor<288xf32>) {
        ^bb0(%in_583: f32, %in_584: f32, %acc_585: f32):
          %v586 = arith.constant 1.0 : f32
          %v587 = arith.constant 9.999999747378752e-06 : f32
          %v588 = arith.addf %v587, %in_583 : f32
          %v589 = math.sqrt %v588 : f32
          %v590 = arith.divf %v586, %v589 : f32
          %v591 = arith.mulf %v590, %in_584 : f32
          linalg.yield %v591 : f32
      }
    -> tensor<288xf32>
    %v592.buf = tensor.empty() : tensor<288xf32>
    %v592.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<288xf32>, tensor<288xf32>, tensor<288xf32>)
      outs(%v592.buf : tensor<288xf32>) {
        ^bb0(%in_593: f32, %in_594: f32, %in_595: f32, %acc_596: f32):
          %v597 = arith.constant 1.0 : f32
          %v598 = arith.constant 9.999999747378752e-06 : f32
          %v599 = arith.addf %v598, %in_594 : f32
          %v600 = math.sqrt %v599 : f32
          %v601 = arith.divf %v597, %v600 : f32
          %v602 = arith.mulf %v601, %in_595 : f32
          %v603 = arith.mulf %v602, %in_593 : f32
          linalg.yield %v603 : f32
      }
    -> tensor<288xf32>
    %input_54.buf = tensor.empty() : tensor<10x288x28x28xf32>
    %input_54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_10, %v582.buf.out, %v592.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_0_parameters_bias_ : tensor<10x288x28x28xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>)
      outs(%input_54.buf : tensor<10x288x28x28xf32>) {
        ^bb0(%in_604: f32, %in_605: f32, %in_606: f32, %in_607: f32, %acc_608: f32):
          %v609 = arith.mulf %in_604, %in_605 : f32
          %v610 = arith.subf %v609, %in_606 : f32
          %v611 = arith.addf %v610, %in_607 : f32
          %v612 = arith.maxnumf %init, %v611 : f32
          linalg.yield %v612 : f32
      }
    -> tensor<10x288x28x28xf32>
    %padded_13 = tensor.pad %input_54.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i613: index, %pad_i614: index, %pad_i615: index, %pad_i616: index):
        tensor.yield %init : f32
    } : tensor<10x288x28x28xf32> to tensor<10x288x30x30xf32>
    %v617.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v617.buf = linalg.fill ins(%init : f32) outs(%v617.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v617.shape = tensor.empty() : tensor<28x1xf32>
    %v617.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_13, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_5_modules_2_parameters_weight_, %v617.shape : tensor<10x288x30x30xf32>, tensor<32x288x3x3xf32>, tensor<28x1xf32>)
      outs(%v617.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_619: f32, %in_620: f32, %shape_618: f32, %acc_621: f32):
          %v622 = arith.mulf %in_619, %in_620 : f32
          %v623 = arith.addf %v622, %acc_621 : f32
          linalg.yield %v623 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_55.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_55.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v617.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_55.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_624: f32, %acc_625: f32):
          linalg.yield %in_624 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_11 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out, %input_55.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x320x28x28xf32>
    %v626.buf = tensor.empty() : tensor<320xf32>
    %v626.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_parameters_weight_ : tensor<320xf32>, tensor<320xf32>)
      outs(%v626.buf : tensor<320xf32>) {
        ^bb0(%in_627: f32, %in_628: f32, %acc_629: f32):
          %v630 = arith.constant 1.0 : f32
          %v631 = arith.constant 9.999999747378752e-06 : f32
          %v632 = arith.addf %v631, %in_627 : f32
          %v633 = math.sqrt %v632 : f32
          %v634 = arith.divf %v630, %v633 : f32
          %v635 = arith.mulf %v634, %in_628 : f32
          linalg.yield %v635 : f32
      }
    -> tensor<320xf32>
    %v636.buf = tensor.empty() : tensor<320xf32>
    %v636.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_parameters_weight_ : tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v636.buf : tensor<320xf32>) {
        ^bb0(%in_637: f32, %in_638: f32, %in_639: f32, %acc_640: f32):
          %v641 = arith.constant 1.0 : f32
          %v642 = arith.constant 9.999999747378752e-06 : f32
          %v643 = arith.addf %v642, %in_638 : f32
          %v644 = math.sqrt %v643 : f32
          %v645 = arith.divf %v641, %v644 : f32
          %v646 = arith.mulf %v645, %in_639 : f32
          %v647 = arith.mulf %v646, %in_637 : f32
          linalg.yield %v647 : f32
      }
    -> tensor<320xf32>
    %input_58.buf = tensor.empty() : tensor<10x320x28x28xf32>
    %input_58.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_11, %v626.buf.out, %v636.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_0_parameters_bias_ : tensor<10x320x28x28xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%input_58.buf : tensor<10x320x28x28xf32>) {
        ^bb0(%in_648: f32, %in_649: f32, %in_650: f32, %in_651: f32, %acc_652: f32):
          %v653 = arith.mulf %in_648, %in_649 : f32
          %v654 = arith.subf %v653, %in_650 : f32
          %v655 = arith.addf %v654, %in_651 : f32
          %v656 = arith.maxnumf %init, %v655 : f32
          linalg.yield %v656 : f32
      }
    -> tensor<10x320x28x28xf32>
    %padded_14 = tensor.pad %input_58.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i657: index, %pad_i658: index, %pad_i659: index, %pad_i660: index):
        tensor.yield %init : f32
    } : tensor<10x320x28x28xf32> to tensor<10x320x30x30xf32>
    %v661.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v661.buf = linalg.fill ins(%init : f32) outs(%v661.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v661.shape = tensor.empty() : tensor<28x1xf32>
    %v661.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_14, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_6_modules_2_parameters_weight_, %v661.shape : tensor<10x320x30x30xf32>, tensor<32x320x3x3xf32>, tensor<28x1xf32>)
      outs(%v661.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_663: f32, %in_664: f32, %shape_662: f32, %acc_665: f32):
          %v666 = arith.mulf %in_663, %in_664 : f32
          %v667 = arith.addf %v666, %acc_665 : f32
          linalg.yield %v667 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_59.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_59.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v661.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_59.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_668: f32, %acc_669: f32):
          linalg.yield %in_668 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_12 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out, %input_55.buf.out, %input_59.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x352x28x28xf32>
    %v670.buf = tensor.empty() : tensor<352xf32>
    %v670.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_parameters_weight_ : tensor<352xf32>, tensor<352xf32>)
      outs(%v670.buf : tensor<352xf32>) {
        ^bb0(%in_671: f32, %in_672: f32, %acc_673: f32):
          %v674 = arith.constant 1.0 : f32
          %v675 = arith.constant 9.999999747378752e-06 : f32
          %v676 = arith.addf %v675, %in_671 : f32
          %v677 = math.sqrt %v676 : f32
          %v678 = arith.divf %v674, %v677 : f32
          %v679 = arith.mulf %v678, %in_672 : f32
          linalg.yield %v679 : f32
      }
    -> tensor<352xf32>
    %v680.buf = tensor.empty() : tensor<352xf32>
    %v680.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_parameters_weight_ : tensor<352xf32>, tensor<352xf32>, tensor<352xf32>)
      outs(%v680.buf : tensor<352xf32>) {
        ^bb0(%in_681: f32, %in_682: f32, %in_683: f32, %acc_684: f32):
          %v685 = arith.constant 1.0 : f32
          %v686 = arith.constant 9.999999747378752e-06 : f32
          %v687 = arith.addf %v686, %in_682 : f32
          %v688 = math.sqrt %v687 : f32
          %v689 = arith.divf %v685, %v688 : f32
          %v690 = arith.mulf %v689, %in_683 : f32
          %v691 = arith.mulf %v690, %in_681 : f32
          linalg.yield %v691 : f32
      }
    -> tensor<352xf32>
    %input_62.buf = tensor.empty() : tensor<10x352x28x28xf32>
    %input_62.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_12, %v670.buf.out, %v680.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_0_parameters_bias_ : tensor<10x352x28x28xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>)
      outs(%input_62.buf : tensor<10x352x28x28xf32>) {
        ^bb0(%in_692: f32, %in_693: f32, %in_694: f32, %in_695: f32, %acc_696: f32):
          %v697 = arith.mulf %in_692, %in_693 : f32
          %v698 = arith.subf %v697, %in_694 : f32
          %v699 = arith.addf %v698, %in_695 : f32
          %v700 = arith.maxnumf %init, %v699 : f32
          linalg.yield %v700 : f32
      }
    -> tensor<10x352x28x28xf32>
    %padded_15 = tensor.pad %input_62.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i701: index, %pad_i702: index, %pad_i703: index, %pad_i704: index):
        tensor.yield %init : f32
    } : tensor<10x352x28x28xf32> to tensor<10x352x30x30xf32>
    %v705.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v705.buf = linalg.fill ins(%init : f32) outs(%v705.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v705.shape = tensor.empty() : tensor<28x1xf32>
    %v705.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_15, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_7_modules_2_parameters_weight_, %v705.shape : tensor<10x352x30x30xf32>, tensor<32x352x3x3xf32>, tensor<28x1xf32>)
      outs(%v705.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_707: f32, %in_708: f32, %shape_706: f32, %acc_709: f32):
          %v710 = arith.mulf %in_707, %in_708 : f32
          %v711 = arith.addf %v710, %acc_709 : f32
          linalg.yield %v711 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_63.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_63.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v705.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_63.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_712: f32, %acc_713: f32):
          linalg.yield %in_712 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_13 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out, %input_55.buf.out, %input_59.buf.out, %input_63.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x384x28x28xf32>
    %v714.buf = tensor.empty() : tensor<384xf32>
    %v714.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v714.buf : tensor<384xf32>) {
        ^bb0(%in_715: f32, %in_716: f32, %acc_717: f32):
          %v718 = arith.constant 1.0 : f32
          %v719 = arith.constant 9.999999747378752e-06 : f32
          %v720 = arith.addf %v719, %in_715 : f32
          %v721 = math.sqrt %v720 : f32
          %v722 = arith.divf %v718, %v721 : f32
          %v723 = arith.mulf %v722, %in_716 : f32
          linalg.yield %v723 : f32
      }
    -> tensor<384xf32>
    %v724.buf = tensor.empty() : tensor<384xf32>
    %v724.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v724.buf : tensor<384xf32>) {
        ^bb0(%in_725: f32, %in_726: f32, %in_727: f32, %acc_728: f32):
          %v729 = arith.constant 1.0 : f32
          %v730 = arith.constant 9.999999747378752e-06 : f32
          %v731 = arith.addf %v730, %in_726 : f32
          %v732 = math.sqrt %v731 : f32
          %v733 = arith.divf %v729, %v732 : f32
          %v734 = arith.mulf %v733, %in_727 : f32
          %v735 = arith.mulf %v734, %in_725 : f32
          linalg.yield %v735 : f32
      }
    -> tensor<384xf32>
    %input_66.buf = tensor.empty() : tensor<10x384x28x28xf32>
    %input_66.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_13, %v714.buf.out, %v724.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_0_parameters_bias_ : tensor<10x384x28x28xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%input_66.buf : tensor<10x384x28x28xf32>) {
        ^bb0(%in_736: f32, %in_737: f32, %in_738: f32, %in_739: f32, %acc_740: f32):
          %v741 = arith.mulf %in_736, %in_737 : f32
          %v742 = arith.subf %v741, %in_738 : f32
          %v743 = arith.addf %v742, %in_739 : f32
          %v744 = arith.maxnumf %init, %v743 : f32
          linalg.yield %v744 : f32
      }
    -> tensor<10x384x28x28xf32>
    %padded_16 = tensor.pad %input_66.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i745: index, %pad_i746: index, %pad_i747: index, %pad_i748: index):
        tensor.yield %init : f32
    } : tensor<10x384x28x28xf32> to tensor<10x384x30x30xf32>
    %v749.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v749.buf = linalg.fill ins(%init : f32) outs(%v749.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v749.shape = tensor.empty() : tensor<28x1xf32>
    %v749.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_16, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_8_modules_2_parameters_weight_, %v749.shape : tensor<10x384x30x30xf32>, tensor<32x384x3x3xf32>, tensor<28x1xf32>)
      outs(%v749.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_751: f32, %in_752: f32, %shape_750: f32, %acc_753: f32):
          %v754 = arith.mulf %in_751, %in_752 : f32
          %v755 = arith.addf %v754, %acc_753 : f32
          linalg.yield %v755 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_67.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v749.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_67.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_756: f32, %acc_757: f32):
          linalg.yield %in_756 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_14 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out, %input_55.buf.out, %input_59.buf.out, %input_63.buf.out, %input_67.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x416x28x28xf32>
    %v758.buf = tensor.empty() : tensor<416xf32>
    %v758.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_parameters_weight_ : tensor<416xf32>, tensor<416xf32>)
      outs(%v758.buf : tensor<416xf32>) {
        ^bb0(%in_759: f32, %in_760: f32, %acc_761: f32):
          %v762 = arith.constant 1.0 : f32
          %v763 = arith.constant 9.999999747378752e-06 : f32
          %v764 = arith.addf %v763, %in_759 : f32
          %v765 = math.sqrt %v764 : f32
          %v766 = arith.divf %v762, %v765 : f32
          %v767 = arith.mulf %v766, %in_760 : f32
          linalg.yield %v767 : f32
      }
    -> tensor<416xf32>
    %v768.buf = tensor.empty() : tensor<416xf32>
    %v768.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_parameters_weight_ : tensor<416xf32>, tensor<416xf32>, tensor<416xf32>)
      outs(%v768.buf : tensor<416xf32>) {
        ^bb0(%in_769: f32, %in_770: f32, %in_771: f32, %acc_772: f32):
          %v773 = arith.constant 1.0 : f32
          %v774 = arith.constant 9.999999747378752e-06 : f32
          %v775 = arith.addf %v774, %in_770 : f32
          %v776 = math.sqrt %v775 : f32
          %v777 = arith.divf %v773, %v776 : f32
          %v778 = arith.mulf %v777, %in_771 : f32
          %v779 = arith.mulf %v778, %in_769 : f32
          linalg.yield %v779 : f32
      }
    -> tensor<416xf32>
    %input_70.buf = tensor.empty() : tensor<10x416x28x28xf32>
    %input_70.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_14, %v758.buf.out, %v768.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_0_parameters_bias_ : tensor<10x416x28x28xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>)
      outs(%input_70.buf : tensor<10x416x28x28xf32>) {
        ^bb0(%in_780: f32, %in_781: f32, %in_782: f32, %in_783: f32, %acc_784: f32):
          %v785 = arith.mulf %in_780, %in_781 : f32
          %v786 = arith.subf %v785, %in_782 : f32
          %v787 = arith.addf %v786, %in_783 : f32
          %v788 = arith.maxnumf %init, %v787 : f32
          linalg.yield %v788 : f32
      }
    -> tensor<10x416x28x28xf32>
    %padded_17 = tensor.pad %input_70.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i789: index, %pad_i790: index, %pad_i791: index, %pad_i792: index):
        tensor.yield %init : f32
    } : tensor<10x416x28x28xf32> to tensor<10x416x30x30xf32>
    %v793.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v793.buf = linalg.fill ins(%init : f32) outs(%v793.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v793.shape = tensor.empty() : tensor<28x1xf32>
    %v793.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_17, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_9_modules_2_parameters_weight_, %v793.shape : tensor<10x416x30x30xf32>, tensor<32x416x3x3xf32>, tensor<28x1xf32>)
      outs(%v793.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_795: f32, %in_796: f32, %shape_794: f32, %acc_797: f32):
          %v798 = arith.mulf %in_795, %in_796 : f32
          %v799 = arith.addf %v798, %acc_797 : f32
          linalg.yield %v799 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_71.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_71.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v793.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_71.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_800: f32, %acc_801: f32):
          linalg.yield %in_800 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_15 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out, %input_55.buf.out, %input_59.buf.out, %input_63.buf.out, %input_67.buf.out, %input_71.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x448x28x28xf32>
    %v802.buf = tensor.empty() : tensor<448xf32>
    %v802.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_parameters_weight_ : tensor<448xf32>, tensor<448xf32>)
      outs(%v802.buf : tensor<448xf32>) {
        ^bb0(%in_803: f32, %in_804: f32, %acc_805: f32):
          %v806 = arith.constant 1.0 : f32
          %v807 = arith.constant 9.999999747378752e-06 : f32
          %v808 = arith.addf %v807, %in_803 : f32
          %v809 = math.sqrt %v808 : f32
          %v810 = arith.divf %v806, %v809 : f32
          %v811 = arith.mulf %v810, %in_804 : f32
          linalg.yield %v811 : f32
      }
    -> tensor<448xf32>
    %v812.buf = tensor.empty() : tensor<448xf32>
    %v812.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_parameters_weight_ : tensor<448xf32>, tensor<448xf32>, tensor<448xf32>)
      outs(%v812.buf : tensor<448xf32>) {
        ^bb0(%in_813: f32, %in_814: f32, %in_815: f32, %acc_816: f32):
          %v817 = arith.constant 1.0 : f32
          %v818 = arith.constant 9.999999747378752e-06 : f32
          %v819 = arith.addf %v818, %in_814 : f32
          %v820 = math.sqrt %v819 : f32
          %v821 = arith.divf %v817, %v820 : f32
          %v822 = arith.mulf %v821, %in_815 : f32
          %v823 = arith.mulf %v822, %in_813 : f32
          linalg.yield %v823 : f32
      }
    -> tensor<448xf32>
    %input_74.buf = tensor.empty() : tensor<10x448x28x28xf32>
    %input_74.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_15, %v802.buf.out, %v812.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_0_parameters_bias_ : tensor<10x448x28x28xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>)
      outs(%input_74.buf : tensor<10x448x28x28xf32>) {
        ^bb0(%in_824: f32, %in_825: f32, %in_826: f32, %in_827: f32, %acc_828: f32):
          %v829 = arith.mulf %in_824, %in_825 : f32
          %v830 = arith.subf %v829, %in_826 : f32
          %v831 = arith.addf %v830, %in_827 : f32
          %v832 = arith.maxnumf %init, %v831 : f32
          linalg.yield %v832 : f32
      }
    -> tensor<10x448x28x28xf32>
    %padded_18 = tensor.pad %input_74.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i833: index, %pad_i834: index, %pad_i835: index, %pad_i836: index):
        tensor.yield %init : f32
    } : tensor<10x448x28x28xf32> to tensor<10x448x30x30xf32>
    %v837.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v837.buf = linalg.fill ins(%init : f32) outs(%v837.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v837.shape = tensor.empty() : tensor<28x1xf32>
    %v837.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_18, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_10_modules_2_parameters_weight_, %v837.shape : tensor<10x448x30x30xf32>, tensor<32x448x3x3xf32>, tensor<28x1xf32>)
      outs(%v837.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_839: f32, %in_840: f32, %shape_838: f32, %acc_841: f32):
          %v842 = arith.mulf %in_839, %in_840 : f32
          %v843 = arith.addf %v842, %acc_841 : f32
          linalg.yield %v843 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_75.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_75.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v837.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_75.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_844: f32, %acc_845: f32):
          linalg.yield %in_844 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_16 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out, %input_55.buf.out, %input_59.buf.out, %input_63.buf.out, %input_67.buf.out, %input_71.buf.out, %input_75.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x480x28x28xf32>
    %v846.buf = tensor.empty() : tensor<480xf32>
    %v846.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v846.buf : tensor<480xf32>) {
        ^bb0(%in_847: f32, %in_848: f32, %acc_849: f32):
          %v850 = arith.constant 1.0 : f32
          %v851 = arith.constant 9.999999747378752e-06 : f32
          %v852 = arith.addf %v851, %in_847 : f32
          %v853 = math.sqrt %v852 : f32
          %v854 = arith.divf %v850, %v853 : f32
          %v855 = arith.mulf %v854, %in_848 : f32
          linalg.yield %v855 : f32
      }
    -> tensor<480xf32>
    %v856.buf = tensor.empty() : tensor<480xf32>
    %v856.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v856.buf : tensor<480xf32>) {
        ^bb0(%in_857: f32, %in_858: f32, %in_859: f32, %acc_860: f32):
          %v861 = arith.constant 1.0 : f32
          %v862 = arith.constant 9.999999747378752e-06 : f32
          %v863 = arith.addf %v862, %in_858 : f32
          %v864 = math.sqrt %v863 : f32
          %v865 = arith.divf %v861, %v864 : f32
          %v866 = arith.mulf %v865, %in_859 : f32
          %v867 = arith.mulf %v866, %in_857 : f32
          linalg.yield %v867 : f32
      }
    -> tensor<480xf32>
    %input_78.buf = tensor.empty() : tensor<10x480x28x28xf32>
    %input_78.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_16, %v846.buf.out, %v856.buf.out, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_0_parameters_bias_ : tensor<10x480x28x28xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%input_78.buf : tensor<10x480x28x28xf32>) {
        ^bb0(%in_868: f32, %in_869: f32, %in_870: f32, %in_871: f32, %acc_872: f32):
          %v873 = arith.mulf %in_868, %in_869 : f32
          %v874 = arith.subf %v873, %in_870 : f32
          %v875 = arith.addf %v874, %in_871 : f32
          %v876 = arith.maxnumf %init, %v875 : f32
          linalg.yield %v876 : f32
      }
    -> tensor<10x480x28x28xf32>
    %padded_19 = tensor.pad %input_78.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i877: index, %pad_i878: index, %pad_i879: index, %pad_i880: index):
        tensor.yield %init : f32
    } : tensor<10x480x28x28xf32> to tensor<10x480x30x30xf32>
    %v881.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v881.buf = linalg.fill ins(%init : f32) outs(%v881.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v881.shape = tensor.empty() : tensor<28x1xf32>
    %v881.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_19, %l_self_modules_dense_blocks_modules_1_modules_layers_modules_11_modules_2_parameters_weight_, %v881.shape : tensor<10x480x30x30xf32>, tensor<32x480x3x3xf32>, tensor<28x1xf32>)
      outs(%v881.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_883: f32, %in_884: f32, %shape_882: f32, %acc_885: f32):
          %v886 = arith.mulf %in_883, %in_884 : f32
          %v887 = arith.addf %v886, %acc_885 : f32
          linalg.yield %v887 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_79.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_79.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v881.buf.out : tensor<10x32x28x1x28xf32>)
      outs(%input_79.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_888: f32, %acc_889: f32):
          linalg.yield %in_888 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_17 = tensor.concat dim(1) %input_32.post.out, %input_35.buf.out, %input_39.buf.out, %input_43.buf.out, %input_47.buf.out, %input_51.buf.out, %input_55.buf.out, %input_59.buf.out, %input_63.buf.out, %input_67.buf.out, %input_71.buf.out, %input_75.buf.out, %input_79.buf.out : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v890.buf = tensor.empty() : tensor<512xf32>
    %v890.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_transition_layers_modules_1_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v890.buf : tensor<512xf32>) {
        ^bb0(%in_891: f32, %in_892: f32, %acc_893: f32):
          %v894 = arith.constant 1.0 : f32
          %v895 = arith.constant 9.999999747378752e-06 : f32
          %v896 = arith.addf %v895, %in_891 : f32
          %v897 = math.sqrt %v896 : f32
          %v898 = arith.divf %v894, %v897 : f32
          %v899 = arith.mulf %v898, %in_892 : f32
          linalg.yield %v899 : f32
      }
    -> tensor<512xf32>
    %v900.buf = tensor.empty() : tensor<512xf32>
    %v900.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_transition_layers_modules_1_modules_transition_modules_0_buffers_running_mean_, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v900.buf : tensor<512xf32>) {
        ^bb0(%in_901: f32, %in_902: f32, %in_903: f32, %acc_904: f32):
          %v905 = arith.constant 1.0 : f32
          %v906 = arith.constant 9.999999747378752e-06 : f32
          %v907 = arith.addf %v906, %in_902 : f32
          %v908 = math.sqrt %v907 : f32
          %v909 = arith.divf %v905, %v908 : f32
          %v910 = arith.mulf %v909, %in_903 : f32
          %v911 = arith.mulf %v910, %in_901 : f32
          linalg.yield %v911 : f32
      }
    -> tensor<512xf32>
    %input_82.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_82.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_17, %v890.buf.out, %v900.buf.out, %l_self_modules_transition_layers_modules_1_modules_transition_modules_0_parameters_bias_ : tensor<10x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_82.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_912: f32, %in_913: f32, %in_914: f32, %in_915: f32, %acc_916: f32):
          %v917 = arith.mulf %in_912, %in_913 : f32
          %v918 = arith.subf %v917, %in_914 : f32
          %v919 = arith.addf %v918, %in_915 : f32
          %v920 = arith.maxnumf %init, %v919 : f32
          linalg.yield %v920 : f32
      }
    -> tensor<10x512x28x28xf32>
    %l_self_modules_transition_layers_modules_1_modules_transition_modules_2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_transition_layers_modules_1_modules_transition_modules_2_parameters_weight_ [[0], [1, 2, 3]] output_shape [256, 512, 1, 1] : tensor<256x512xf32> into tensor<256x512x1x1xf32>
    %v921.empty = tensor.empty() : tensor<10x256x28x1x28xf32>
    %v921.buf = linalg.fill ins(%init : f32) outs(%v921.empty : tensor<10x256x28x1x28xf32>) -> tensor<10x256x28x1x28xf32>
    %v921.shape = tensor.empty() : tensor<28x1xf32>
    %v921.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_82.buf.out, %l_self_modules_transition_layers_modules_1_modules_transition_modules_2_parameters_weight_.expanded, %v921.shape : tensor<10x512x28x28xf32>, tensor<256x512x1x1xf32>, tensor<28x1xf32>)
      outs(%v921.buf : tensor<10x256x28x1x28xf32>) {
        ^bb0(%in_923: f32, %in_924: f32, %shape_922: f32, %acc_925: f32):
          %v926 = arith.mulf %in_923, %in_924 : f32
          %v927 = arith.addf %v926, %acc_925 : f32
          linalg.yield %v927 : f32
      }
    -> tensor<10x256x28x1x28xf32>
    %input_84.empty = tensor.empty() : tensor<10x256x14x14xf32>
    %input_84.buf = linalg.fill ins(%init : f32) outs(%input_84.empty : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %input_84.shape = tensor.empty() : tensor<2x2xf32>
    %input_84.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v921.buf.out, %input_84.shape : tensor<10x256x28x1x28xf32>, tensor<2x2xf32>)
      outs(%input_84.buf : tensor<10x256x14x14xf32>) {
        ^bb0(%in_929: f32, %shape_928: f32, %acc_930: f32):
          %v931 = arith.addf %acc_930, %in_929 : f32
          linalg.yield %v931 : f32
      }
    -> tensor<10x256x14x14xf32>
    %input_84.post = tensor.empty() : tensor<10x256x14x14xf32>
    %input_84.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_84.buf.out : tensor<10x256x14x14xf32>)
      outs(%input_84.post : tensor<10x256x14x14xf32>) {
        ^bb0(%acc_932: f32, %post_933: f32):
          %v934 = arith.constant 0.25 : f32
          %v935 = arith.mulf %v934, %acc_932 : f32
          linalg.yield %v935 : f32
      }
    -> tensor<10x256x14x14xf32>
    %v936.buf = tensor.empty() : tensor<256xf32>
    %v936.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v936.buf : tensor<256xf32>) {
        ^bb0(%in_937: f32, %in_938: f32, %acc_939: f32):
          %v940 = arith.constant 1.0 : f32
          %v941 = arith.constant 9.999999747378752e-06 : f32
          %v942 = arith.addf %v941, %in_937 : f32
          %v943 = math.sqrt %v942 : f32
          %v944 = arith.divf %v940, %v943 : f32
          %v945 = arith.mulf %v944, %in_938 : f32
          linalg.yield %v945 : f32
      }
    -> tensor<256xf32>
    %v946.buf = tensor.empty() : tensor<256xf32>
    %v946.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v946.buf : tensor<256xf32>) {
        ^bb0(%in_947: f32, %in_948: f32, %in_949: f32, %acc_950: f32):
          %v951 = arith.constant 1.0 : f32
          %v952 = arith.constant 9.999999747378752e-06 : f32
          %v953 = arith.addf %v952, %in_948 : f32
          %v954 = math.sqrt %v953 : f32
          %v955 = arith.divf %v951, %v954 : f32
          %v956 = arith.mulf %v955, %in_949 : f32
          %v957 = arith.mulf %v956, %in_947 : f32
          linalg.yield %v957 : f32
      }
    -> tensor<256xf32>
    %input_86.buf = tensor.empty() : tensor<10x256x14x14xf32>
    %input_86.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_84.post.out, %v936.buf.out, %v946.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_0_parameters_bias_ : tensor<10x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%input_86.buf : tensor<10x256x14x14xf32>) {
        ^bb0(%in_958: f32, %in_959: f32, %in_960: f32, %in_961: f32, %acc_962: f32):
          %v963 = arith.mulf %in_958, %in_959 : f32
          %v964 = arith.subf %v963, %in_960 : f32
          %v965 = arith.addf %v964, %in_961 : f32
          %v966 = arith.maxnumf %init, %v965 : f32
          linalg.yield %v966 : f32
      }
    -> tensor<10x256x14x14xf32>
    %padded_20 = tensor.pad %input_86.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i967: index, %pad_i968: index, %pad_i969: index, %pad_i970: index):
        tensor.yield %init : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %v971.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v971.buf = linalg.fill ins(%init : f32) outs(%v971.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v971.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_20, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_0_modules_2_parameters_weight_ : tensor<10x256x16x16xf32>, tensor<32x256x3x3xf32>)
      outs(%v971.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_972: f32, %in_973: f32, %acc_974: f32):
          %v975 = arith.mulf %in_972, %in_973 : f32
          %v976 = arith.addf %v975, %acc_974 : f32
          linalg.yield %v976 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_87.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_87.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v971.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_87.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_977: f32, %acc_978: f32):
          linalg.yield %in_977 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_18 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x288x14x14xf32>
    %v979.buf = tensor.empty() : tensor<288xf32>
    %v979.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<288xf32>, tensor<288xf32>)
      outs(%v979.buf : tensor<288xf32>) {
        ^bb0(%in_980: f32, %in_981: f32, %acc_982: f32):
          %v983 = arith.constant 1.0 : f32
          %v984 = arith.constant 9.999999747378752e-06 : f32
          %v985 = arith.addf %v984, %in_980 : f32
          %v986 = math.sqrt %v985 : f32
          %v987 = arith.divf %v983, %v986 : f32
          %v988 = arith.mulf %v987, %in_981 : f32
          linalg.yield %v988 : f32
      }
    -> tensor<288xf32>
    %v989.buf = tensor.empty() : tensor<288xf32>
    %v989.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<288xf32>, tensor<288xf32>, tensor<288xf32>)
      outs(%v989.buf : tensor<288xf32>) {
        ^bb0(%in_990: f32, %in_991: f32, %in_992: f32, %acc_993: f32):
          %v994 = arith.constant 1.0 : f32
          %v995 = arith.constant 9.999999747378752e-06 : f32
          %v996 = arith.addf %v995, %in_991 : f32
          %v997 = math.sqrt %v996 : f32
          %v998 = arith.divf %v994, %v997 : f32
          %v999 = arith.mulf %v998, %in_992 : f32
          %v1000 = arith.mulf %v999, %in_990 : f32
          linalg.yield %v1000 : f32
      }
    -> tensor<288xf32>
    %input_90.buf = tensor.empty() : tensor<10x288x14x14xf32>
    %input_90.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_18, %v979.buf.out, %v989.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_0_parameters_bias_ : tensor<10x288x14x14xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>)
      outs(%input_90.buf : tensor<10x288x14x14xf32>) {
        ^bb0(%in_1001: f32, %in_1002: f32, %in_1003: f32, %in_1004: f32, %acc_1005: f32):
          %v1006 = arith.mulf %in_1001, %in_1002 : f32
          %v1007 = arith.subf %v1006, %in_1003 : f32
          %v1008 = arith.addf %v1007, %in_1004 : f32
          %v1009 = arith.maxnumf %init, %v1008 : f32
          linalg.yield %v1009 : f32
      }
    -> tensor<10x288x14x14xf32>
    %padded_21 = tensor.pad %input_90.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1010: index, %pad_i1011: index, %pad_i1012: index, %pad_i1013: index):
        tensor.yield %init : f32
    } : tensor<10x288x14x14xf32> to tensor<10x288x16x16xf32>
    %v1014.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1014.buf = linalg.fill ins(%init : f32) outs(%v1014.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1014.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_21, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_1_modules_2_parameters_weight_ : tensor<10x288x16x16xf32>, tensor<32x288x3x3xf32>)
      outs(%v1014.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1015: f32, %in_1016: f32, %acc_1017: f32):
          %v1018 = arith.mulf %in_1015, %in_1016 : f32
          %v1019 = arith.addf %v1018, %acc_1017 : f32
          linalg.yield %v1019 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_91.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_91.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1014.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_91.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1020: f32, %acc_1021: f32):
          linalg.yield %in_1020 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_19 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x320x14x14xf32>
    %v1022.buf = tensor.empty() : tensor<320xf32>
    %v1022.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<320xf32>, tensor<320xf32>)
      outs(%v1022.buf : tensor<320xf32>) {
        ^bb0(%in_1023: f32, %in_1024: f32, %acc_1025: f32):
          %v1026 = arith.constant 1.0 : f32
          %v1027 = arith.constant 9.999999747378752e-06 : f32
          %v1028 = arith.addf %v1027, %in_1023 : f32
          %v1029 = math.sqrt %v1028 : f32
          %v1030 = arith.divf %v1026, %v1029 : f32
          %v1031 = arith.mulf %v1030, %in_1024 : f32
          linalg.yield %v1031 : f32
      }
    -> tensor<320xf32>
    %v1032.buf = tensor.empty() : tensor<320xf32>
    %v1032.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v1032.buf : tensor<320xf32>) {
        ^bb0(%in_1033: f32, %in_1034: f32, %in_1035: f32, %acc_1036: f32):
          %v1037 = arith.constant 1.0 : f32
          %v1038 = arith.constant 9.999999747378752e-06 : f32
          %v1039 = arith.addf %v1038, %in_1034 : f32
          %v1040 = math.sqrt %v1039 : f32
          %v1041 = arith.divf %v1037, %v1040 : f32
          %v1042 = arith.mulf %v1041, %in_1035 : f32
          %v1043 = arith.mulf %v1042, %in_1033 : f32
          linalg.yield %v1043 : f32
      }
    -> tensor<320xf32>
    %input_94.buf = tensor.empty() : tensor<10x320x14x14xf32>
    %input_94.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_19, %v1022.buf.out, %v1032.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_0_parameters_bias_ : tensor<10x320x14x14xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%input_94.buf : tensor<10x320x14x14xf32>) {
        ^bb0(%in_1044: f32, %in_1045: f32, %in_1046: f32, %in_1047: f32, %acc_1048: f32):
          %v1049 = arith.mulf %in_1044, %in_1045 : f32
          %v1050 = arith.subf %v1049, %in_1046 : f32
          %v1051 = arith.addf %v1050, %in_1047 : f32
          %v1052 = arith.maxnumf %init, %v1051 : f32
          linalg.yield %v1052 : f32
      }
    -> tensor<10x320x14x14xf32>
    %padded_22 = tensor.pad %input_94.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1053: index, %pad_i1054: index, %pad_i1055: index, %pad_i1056: index):
        tensor.yield %init : f32
    } : tensor<10x320x14x14xf32> to tensor<10x320x16x16xf32>
    %v1057.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1057.buf = linalg.fill ins(%init : f32) outs(%v1057.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1057.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_22, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_2_modules_2_parameters_weight_ : tensor<10x320x16x16xf32>, tensor<32x320x3x3xf32>)
      outs(%v1057.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1058: f32, %in_1059: f32, %acc_1060: f32):
          %v1061 = arith.mulf %in_1058, %in_1059 : f32
          %v1062 = arith.addf %v1061, %acc_1060 : f32
          linalg.yield %v1062 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_95.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_95.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1057.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_95.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1063: f32, %acc_1064: f32):
          linalg.yield %in_1063 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_20 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x352x14x14xf32>
    %v1065.buf = tensor.empty() : tensor<352xf32>
    %v1065.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<352xf32>, tensor<352xf32>)
      outs(%v1065.buf : tensor<352xf32>) {
        ^bb0(%in_1066: f32, %in_1067: f32, %acc_1068: f32):
          %v1069 = arith.constant 1.0 : f32
          %v1070 = arith.constant 9.999999747378752e-06 : f32
          %v1071 = arith.addf %v1070, %in_1066 : f32
          %v1072 = math.sqrt %v1071 : f32
          %v1073 = arith.divf %v1069, %v1072 : f32
          %v1074 = arith.mulf %v1073, %in_1067 : f32
          linalg.yield %v1074 : f32
      }
    -> tensor<352xf32>
    %v1075.buf = tensor.empty() : tensor<352xf32>
    %v1075.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<352xf32>, tensor<352xf32>, tensor<352xf32>)
      outs(%v1075.buf : tensor<352xf32>) {
        ^bb0(%in_1076: f32, %in_1077: f32, %in_1078: f32, %acc_1079: f32):
          %v1080 = arith.constant 1.0 : f32
          %v1081 = arith.constant 9.999999747378752e-06 : f32
          %v1082 = arith.addf %v1081, %in_1077 : f32
          %v1083 = math.sqrt %v1082 : f32
          %v1084 = arith.divf %v1080, %v1083 : f32
          %v1085 = arith.mulf %v1084, %in_1078 : f32
          %v1086 = arith.mulf %v1085, %in_1076 : f32
          linalg.yield %v1086 : f32
      }
    -> tensor<352xf32>
    %input_98.buf = tensor.empty() : tensor<10x352x14x14xf32>
    %input_98.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_20, %v1065.buf.out, %v1075.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_0_parameters_bias_ : tensor<10x352x14x14xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>)
      outs(%input_98.buf : tensor<10x352x14x14xf32>) {
        ^bb0(%in_1087: f32, %in_1088: f32, %in_1089: f32, %in_1090: f32, %acc_1091: f32):
          %v1092 = arith.mulf %in_1087, %in_1088 : f32
          %v1093 = arith.subf %v1092, %in_1089 : f32
          %v1094 = arith.addf %v1093, %in_1090 : f32
          %v1095 = arith.maxnumf %init, %v1094 : f32
          linalg.yield %v1095 : f32
      }
    -> tensor<10x352x14x14xf32>
    %padded_23 = tensor.pad %input_98.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1096: index, %pad_i1097: index, %pad_i1098: index, %pad_i1099: index):
        tensor.yield %init : f32
    } : tensor<10x352x14x14xf32> to tensor<10x352x16x16xf32>
    %v1100.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1100.buf = linalg.fill ins(%init : f32) outs(%v1100.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1100.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_23, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_3_modules_2_parameters_weight_ : tensor<10x352x16x16xf32>, tensor<32x352x3x3xf32>)
      outs(%v1100.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1101: f32, %in_1102: f32, %acc_1103: f32):
          %v1104 = arith.mulf %in_1101, %in_1102 : f32
          %v1105 = arith.addf %v1104, %acc_1103 : f32
          linalg.yield %v1105 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_99.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_99.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1100.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_99.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1106: f32, %acc_1107: f32):
          linalg.yield %in_1106 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_21 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x384x14x14xf32>
    %v1108.buf = tensor.empty() : tensor<384xf32>
    %v1108.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<384xf32>, tensor<384xf32>)
      outs(%v1108.buf : tensor<384xf32>) {
        ^bb0(%in_1109: f32, %in_1110: f32, %acc_1111: f32):
          %v1112 = arith.constant 1.0 : f32
          %v1113 = arith.constant 9.999999747378752e-06 : f32
          %v1114 = arith.addf %v1113, %in_1109 : f32
          %v1115 = math.sqrt %v1114 : f32
          %v1116 = arith.divf %v1112, %v1115 : f32
          %v1117 = arith.mulf %v1116, %in_1110 : f32
          linalg.yield %v1117 : f32
      }
    -> tensor<384xf32>
    %v1118.buf = tensor.empty() : tensor<384xf32>
    %v1118.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%v1118.buf : tensor<384xf32>) {
        ^bb0(%in_1119: f32, %in_1120: f32, %in_1121: f32, %acc_1122: f32):
          %v1123 = arith.constant 1.0 : f32
          %v1124 = arith.constant 9.999999747378752e-06 : f32
          %v1125 = arith.addf %v1124, %in_1120 : f32
          %v1126 = math.sqrt %v1125 : f32
          %v1127 = arith.divf %v1123, %v1126 : f32
          %v1128 = arith.mulf %v1127, %in_1121 : f32
          %v1129 = arith.mulf %v1128, %in_1119 : f32
          linalg.yield %v1129 : f32
      }
    -> tensor<384xf32>
    %input_102.buf = tensor.empty() : tensor<10x384x14x14xf32>
    %input_102.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_21, %v1108.buf.out, %v1118.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_0_parameters_bias_ : tensor<10x384x14x14xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>)
      outs(%input_102.buf : tensor<10x384x14x14xf32>) {
        ^bb0(%in_1130: f32, %in_1131: f32, %in_1132: f32, %in_1133: f32, %acc_1134: f32):
          %v1135 = arith.mulf %in_1130, %in_1131 : f32
          %v1136 = arith.subf %v1135, %in_1132 : f32
          %v1137 = arith.addf %v1136, %in_1133 : f32
          %v1138 = arith.maxnumf %init, %v1137 : f32
          linalg.yield %v1138 : f32
      }
    -> tensor<10x384x14x14xf32>
    %padded_24 = tensor.pad %input_102.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1139: index, %pad_i1140: index, %pad_i1141: index, %pad_i1142: index):
        tensor.yield %init : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %v1143.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1143.buf = linalg.fill ins(%init : f32) outs(%v1143.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1143.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_24, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_4_modules_2_parameters_weight_ : tensor<10x384x16x16xf32>, tensor<32x384x3x3xf32>)
      outs(%v1143.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1144: f32, %in_1145: f32, %acc_1146: f32):
          %v1147 = arith.mulf %in_1144, %in_1145 : f32
          %v1148 = arith.addf %v1147, %acc_1146 : f32
          linalg.yield %v1148 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_103.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_103.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1143.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_103.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1149: f32, %acc_1150: f32):
          linalg.yield %in_1149 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_22 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x416x14x14xf32>
    %v1151.buf = tensor.empty() : tensor<416xf32>
    %v1151.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<416xf32>, tensor<416xf32>)
      outs(%v1151.buf : tensor<416xf32>) {
        ^bb0(%in_1152: f32, %in_1153: f32, %acc_1154: f32):
          %v1155 = arith.constant 1.0 : f32
          %v1156 = arith.constant 9.999999747378752e-06 : f32
          %v1157 = arith.addf %v1156, %in_1152 : f32
          %v1158 = math.sqrt %v1157 : f32
          %v1159 = arith.divf %v1155, %v1158 : f32
          %v1160 = arith.mulf %v1159, %in_1153 : f32
          linalg.yield %v1160 : f32
      }
    -> tensor<416xf32>
    %v1161.buf = tensor.empty() : tensor<416xf32>
    %v1161.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<416xf32>, tensor<416xf32>, tensor<416xf32>)
      outs(%v1161.buf : tensor<416xf32>) {
        ^bb0(%in_1162: f32, %in_1163: f32, %in_1164: f32, %acc_1165: f32):
          %v1166 = arith.constant 1.0 : f32
          %v1167 = arith.constant 9.999999747378752e-06 : f32
          %v1168 = arith.addf %v1167, %in_1163 : f32
          %v1169 = math.sqrt %v1168 : f32
          %v1170 = arith.divf %v1166, %v1169 : f32
          %v1171 = arith.mulf %v1170, %in_1164 : f32
          %v1172 = arith.mulf %v1171, %in_1162 : f32
          linalg.yield %v1172 : f32
      }
    -> tensor<416xf32>
    %input_106.buf = tensor.empty() : tensor<10x416x14x14xf32>
    %input_106.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_22, %v1151.buf.out, %v1161.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_0_parameters_bias_ : tensor<10x416x14x14xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>)
      outs(%input_106.buf : tensor<10x416x14x14xf32>) {
        ^bb0(%in_1173: f32, %in_1174: f32, %in_1175: f32, %in_1176: f32, %acc_1177: f32):
          %v1178 = arith.mulf %in_1173, %in_1174 : f32
          %v1179 = arith.subf %v1178, %in_1175 : f32
          %v1180 = arith.addf %v1179, %in_1176 : f32
          %v1181 = arith.maxnumf %init, %v1180 : f32
          linalg.yield %v1181 : f32
      }
    -> tensor<10x416x14x14xf32>
    %padded_25 = tensor.pad %input_106.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1182: index, %pad_i1183: index, %pad_i1184: index, %pad_i1185: index):
        tensor.yield %init : f32
    } : tensor<10x416x14x14xf32> to tensor<10x416x16x16xf32>
    %v1186.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1186.buf = linalg.fill ins(%init : f32) outs(%v1186.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1186.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_25, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_5_modules_2_parameters_weight_ : tensor<10x416x16x16xf32>, tensor<32x416x3x3xf32>)
      outs(%v1186.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1187: f32, %in_1188: f32, %acc_1189: f32):
          %v1190 = arith.mulf %in_1187, %in_1188 : f32
          %v1191 = arith.addf %v1190, %acc_1189 : f32
          linalg.yield %v1191 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_107.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_107.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1186.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_107.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1192: f32, %acc_1193: f32):
          linalg.yield %in_1192 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_23 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x448x14x14xf32>
    %v1194.buf = tensor.empty() : tensor<448xf32>
    %v1194.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_parameters_weight_ : tensor<448xf32>, tensor<448xf32>)
      outs(%v1194.buf : tensor<448xf32>) {
        ^bb0(%in_1195: f32, %in_1196: f32, %acc_1197: f32):
          %v1198 = arith.constant 1.0 : f32
          %v1199 = arith.constant 9.999999747378752e-06 : f32
          %v1200 = arith.addf %v1199, %in_1195 : f32
          %v1201 = math.sqrt %v1200 : f32
          %v1202 = arith.divf %v1198, %v1201 : f32
          %v1203 = arith.mulf %v1202, %in_1196 : f32
          linalg.yield %v1203 : f32
      }
    -> tensor<448xf32>
    %v1204.buf = tensor.empty() : tensor<448xf32>
    %v1204.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_parameters_weight_ : tensor<448xf32>, tensor<448xf32>, tensor<448xf32>)
      outs(%v1204.buf : tensor<448xf32>) {
        ^bb0(%in_1205: f32, %in_1206: f32, %in_1207: f32, %acc_1208: f32):
          %v1209 = arith.constant 1.0 : f32
          %v1210 = arith.constant 9.999999747378752e-06 : f32
          %v1211 = arith.addf %v1210, %in_1206 : f32
          %v1212 = math.sqrt %v1211 : f32
          %v1213 = arith.divf %v1209, %v1212 : f32
          %v1214 = arith.mulf %v1213, %in_1207 : f32
          %v1215 = arith.mulf %v1214, %in_1205 : f32
          linalg.yield %v1215 : f32
      }
    -> tensor<448xf32>
    %input_110.buf = tensor.empty() : tensor<10x448x14x14xf32>
    %input_110.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_23, %v1194.buf.out, %v1204.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_0_parameters_bias_ : tensor<10x448x14x14xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>)
      outs(%input_110.buf : tensor<10x448x14x14xf32>) {
        ^bb0(%in_1216: f32, %in_1217: f32, %in_1218: f32, %in_1219: f32, %acc_1220: f32):
          %v1221 = arith.mulf %in_1216, %in_1217 : f32
          %v1222 = arith.subf %v1221, %in_1218 : f32
          %v1223 = arith.addf %v1222, %in_1219 : f32
          %v1224 = arith.maxnumf %init, %v1223 : f32
          linalg.yield %v1224 : f32
      }
    -> tensor<10x448x14x14xf32>
    %padded_26 = tensor.pad %input_110.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1225: index, %pad_i1226: index, %pad_i1227: index, %pad_i1228: index):
        tensor.yield %init : f32
    } : tensor<10x448x14x14xf32> to tensor<10x448x16x16xf32>
    %v1229.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1229.buf = linalg.fill ins(%init : f32) outs(%v1229.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1229.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_26, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_6_modules_2_parameters_weight_ : tensor<10x448x16x16xf32>, tensor<32x448x3x3xf32>)
      outs(%v1229.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1230: f32, %in_1231: f32, %acc_1232: f32):
          %v1233 = arith.mulf %in_1230, %in_1231 : f32
          %v1234 = arith.addf %v1233, %acc_1232 : f32
          linalg.yield %v1234 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_111.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_111.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1229.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_111.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1235: f32, %acc_1236: f32):
          linalg.yield %in_1235 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_24 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x480x14x14xf32>
    %v1237.buf = tensor.empty() : tensor<480xf32>
    %v1237.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v1237.buf : tensor<480xf32>) {
        ^bb0(%in_1238: f32, %in_1239: f32, %acc_1240: f32):
          %v1241 = arith.constant 1.0 : f32
          %v1242 = arith.constant 9.999999747378752e-06 : f32
          %v1243 = arith.addf %v1242, %in_1238 : f32
          %v1244 = math.sqrt %v1243 : f32
          %v1245 = arith.divf %v1241, %v1244 : f32
          %v1246 = arith.mulf %v1245, %in_1239 : f32
          linalg.yield %v1246 : f32
      }
    -> tensor<480xf32>
    %v1247.buf = tensor.empty() : tensor<480xf32>
    %v1247.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v1247.buf : tensor<480xf32>) {
        ^bb0(%in_1248: f32, %in_1249: f32, %in_1250: f32, %acc_1251: f32):
          %v1252 = arith.constant 1.0 : f32
          %v1253 = arith.constant 9.999999747378752e-06 : f32
          %v1254 = arith.addf %v1253, %in_1249 : f32
          %v1255 = math.sqrt %v1254 : f32
          %v1256 = arith.divf %v1252, %v1255 : f32
          %v1257 = arith.mulf %v1256, %in_1250 : f32
          %v1258 = arith.mulf %v1257, %in_1248 : f32
          linalg.yield %v1258 : f32
      }
    -> tensor<480xf32>
    %input_114.buf = tensor.empty() : tensor<10x480x14x14xf32>
    %input_114.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_24, %v1237.buf.out, %v1247.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_0_parameters_bias_ : tensor<10x480x14x14xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%input_114.buf : tensor<10x480x14x14xf32>) {
        ^bb0(%in_1259: f32, %in_1260: f32, %in_1261: f32, %in_1262: f32, %acc_1263: f32):
          %v1264 = arith.mulf %in_1259, %in_1260 : f32
          %v1265 = arith.subf %v1264, %in_1261 : f32
          %v1266 = arith.addf %v1265, %in_1262 : f32
          %v1267 = arith.maxnumf %init, %v1266 : f32
          linalg.yield %v1267 : f32
      }
    -> tensor<10x480x14x14xf32>
    %padded_27 = tensor.pad %input_114.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1268: index, %pad_i1269: index, %pad_i1270: index, %pad_i1271: index):
        tensor.yield %init : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x16x16xf32>
    %v1272.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1272.buf = linalg.fill ins(%init : f32) outs(%v1272.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1272.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_27, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_7_modules_2_parameters_weight_ : tensor<10x480x16x16xf32>, tensor<32x480x3x3xf32>)
      outs(%v1272.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1273: f32, %in_1274: f32, %acc_1275: f32):
          %v1276 = arith.mulf %in_1273, %in_1274 : f32
          %v1277 = arith.addf %v1276, %acc_1275 : f32
          linalg.yield %v1277 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_115.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_115.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1272.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_115.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1278: f32, %acc_1279: f32):
          linalg.yield %in_1278 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_25 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v1280.buf = tensor.empty() : tensor<512xf32>
    %v1280.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v1280.buf : tensor<512xf32>) {
        ^bb0(%in_1281: f32, %in_1282: f32, %acc_1283: f32):
          %v1284 = arith.constant 1.0 : f32
          %v1285 = arith.constant 9.999999747378752e-06 : f32
          %v1286 = arith.addf %v1285, %in_1281 : f32
          %v1287 = math.sqrt %v1286 : f32
          %v1288 = arith.divf %v1284, %v1287 : f32
          %v1289 = arith.mulf %v1288, %in_1282 : f32
          linalg.yield %v1289 : f32
      }
    -> tensor<512xf32>
    %v1290.buf = tensor.empty() : tensor<512xf32>
    %v1290.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v1290.buf : tensor<512xf32>) {
        ^bb0(%in_1291: f32, %in_1292: f32, %in_1293: f32, %acc_1294: f32):
          %v1295 = arith.constant 1.0 : f32
          %v1296 = arith.constant 9.999999747378752e-06 : f32
          %v1297 = arith.addf %v1296, %in_1292 : f32
          %v1298 = math.sqrt %v1297 : f32
          %v1299 = arith.divf %v1295, %v1298 : f32
          %v1300 = arith.mulf %v1299, %in_1293 : f32
          %v1301 = arith.mulf %v1300, %in_1291 : f32
          linalg.yield %v1301 : f32
      }
    -> tensor<512xf32>
    %input_118.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_118.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_25, %v1280.buf.out, %v1290.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_0_parameters_bias_ : tensor<10x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_118.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_1302: f32, %in_1303: f32, %in_1304: f32, %in_1305: f32, %acc_1306: f32):
          %v1307 = arith.mulf %in_1302, %in_1303 : f32
          %v1308 = arith.subf %v1307, %in_1304 : f32
          %v1309 = arith.addf %v1308, %in_1305 : f32
          %v1310 = arith.maxnumf %init, %v1309 : f32
          linalg.yield %v1310 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_28 = tensor.pad %input_118.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1311: index, %pad_i1312: index, %pad_i1313: index, %pad_i1314: index):
        tensor.yield %init : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v1315.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1315.buf = linalg.fill ins(%init : f32) outs(%v1315.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1315.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_28, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_8_modules_2_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<32x512x3x3xf32>)
      outs(%v1315.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1316: f32, %in_1317: f32, %acc_1318: f32):
          %v1319 = arith.mulf %in_1316, %in_1317 : f32
          %v1320 = arith.addf %v1319, %acc_1318 : f32
          linalg.yield %v1320 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_119.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_119.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1315.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_119.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1321: f32, %acc_1322: f32):
          linalg.yield %in_1321 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_26 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x544x14x14xf32>
    %v1323.buf = tensor.empty() : tensor<544xf32>
    %v1323.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_parameters_weight_ : tensor<544xf32>, tensor<544xf32>)
      outs(%v1323.buf : tensor<544xf32>) {
        ^bb0(%in_1324: f32, %in_1325: f32, %acc_1326: f32):
          %v1327 = arith.constant 1.0 : f32
          %v1328 = arith.constant 9.999999747378752e-06 : f32
          %v1329 = arith.addf %v1328, %in_1324 : f32
          %v1330 = math.sqrt %v1329 : f32
          %v1331 = arith.divf %v1327, %v1330 : f32
          %v1332 = arith.mulf %v1331, %in_1325 : f32
          linalg.yield %v1332 : f32
      }
    -> tensor<544xf32>
    %v1333.buf = tensor.empty() : tensor<544xf32>
    %v1333.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_parameters_weight_ : tensor<544xf32>, tensor<544xf32>, tensor<544xf32>)
      outs(%v1333.buf : tensor<544xf32>) {
        ^bb0(%in_1334: f32, %in_1335: f32, %in_1336: f32, %acc_1337: f32):
          %v1338 = arith.constant 1.0 : f32
          %v1339 = arith.constant 9.999999747378752e-06 : f32
          %v1340 = arith.addf %v1339, %in_1335 : f32
          %v1341 = math.sqrt %v1340 : f32
          %v1342 = arith.divf %v1338, %v1341 : f32
          %v1343 = arith.mulf %v1342, %in_1336 : f32
          %v1344 = arith.mulf %v1343, %in_1334 : f32
          linalg.yield %v1344 : f32
      }
    -> tensor<544xf32>
    %input_122.buf = tensor.empty() : tensor<10x544x14x14xf32>
    %input_122.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_26, %v1323.buf.out, %v1333.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_0_parameters_bias_ : tensor<10x544x14x14xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>)
      outs(%input_122.buf : tensor<10x544x14x14xf32>) {
        ^bb0(%in_1345: f32, %in_1346: f32, %in_1347: f32, %in_1348: f32, %acc_1349: f32):
          %v1350 = arith.mulf %in_1345, %in_1346 : f32
          %v1351 = arith.subf %v1350, %in_1347 : f32
          %v1352 = arith.addf %v1351, %in_1348 : f32
          %v1353 = arith.maxnumf %init, %v1352 : f32
          linalg.yield %v1353 : f32
      }
    -> tensor<10x544x14x14xf32>
    %padded_29 = tensor.pad %input_122.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1354: index, %pad_i1355: index, %pad_i1356: index, %pad_i1357: index):
        tensor.yield %init : f32
    } : tensor<10x544x14x14xf32> to tensor<10x544x16x16xf32>
    %v1358.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1358.buf = linalg.fill ins(%init : f32) outs(%v1358.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1358.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_29, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_9_modules_2_parameters_weight_ : tensor<10x544x16x16xf32>, tensor<32x544x3x3xf32>)
      outs(%v1358.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1359: f32, %in_1360: f32, %acc_1361: f32):
          %v1362 = arith.mulf %in_1359, %in_1360 : f32
          %v1363 = arith.addf %v1362, %acc_1361 : f32
          linalg.yield %v1363 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_123.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_123.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1358.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_123.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1364: f32, %acc_1365: f32):
          linalg.yield %in_1364 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_27 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x576x14x14xf32>
    %v1366.buf = tensor.empty() : tensor<576xf32>
    %v1366.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v1366.buf : tensor<576xf32>) {
        ^bb0(%in_1367: f32, %in_1368: f32, %acc_1369: f32):
          %v1370 = arith.constant 1.0 : f32
          %v1371 = arith.constant 9.999999747378752e-06 : f32
          %v1372 = arith.addf %v1371, %in_1367 : f32
          %v1373 = math.sqrt %v1372 : f32
          %v1374 = arith.divf %v1370, %v1373 : f32
          %v1375 = arith.mulf %v1374, %in_1368 : f32
          linalg.yield %v1375 : f32
      }
    -> tensor<576xf32>
    %v1376.buf = tensor.empty() : tensor<576xf32>
    %v1376.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v1376.buf : tensor<576xf32>) {
        ^bb0(%in_1377: f32, %in_1378: f32, %in_1379: f32, %acc_1380: f32):
          %v1381 = arith.constant 1.0 : f32
          %v1382 = arith.constant 9.999999747378752e-06 : f32
          %v1383 = arith.addf %v1382, %in_1378 : f32
          %v1384 = math.sqrt %v1383 : f32
          %v1385 = arith.divf %v1381, %v1384 : f32
          %v1386 = arith.mulf %v1385, %in_1379 : f32
          %v1387 = arith.mulf %v1386, %in_1377 : f32
          linalg.yield %v1387 : f32
      }
    -> tensor<576xf32>
    %input_126.buf = tensor.empty() : tensor<10x576x14x14xf32>
    %input_126.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_27, %v1366.buf.out, %v1376.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_0_parameters_bias_ : tensor<10x576x14x14xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%input_126.buf : tensor<10x576x14x14xf32>) {
        ^bb0(%in_1388: f32, %in_1389: f32, %in_1390: f32, %in_1391: f32, %acc_1392: f32):
          %v1393 = arith.mulf %in_1388, %in_1389 : f32
          %v1394 = arith.subf %v1393, %in_1390 : f32
          %v1395 = arith.addf %v1394, %in_1391 : f32
          %v1396 = arith.maxnumf %init, %v1395 : f32
          linalg.yield %v1396 : f32
      }
    -> tensor<10x576x14x14xf32>
    %padded_30 = tensor.pad %input_126.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1397: index, %pad_i1398: index, %pad_i1399: index, %pad_i1400: index):
        tensor.yield %init : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %v1401.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1401.buf = linalg.fill ins(%init : f32) outs(%v1401.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1401.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_30, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_10_modules_2_parameters_weight_ : tensor<10x576x16x16xf32>, tensor<32x576x3x3xf32>)
      outs(%v1401.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1402: f32, %in_1403: f32, %acc_1404: f32):
          %v1405 = arith.mulf %in_1402, %in_1403 : f32
          %v1406 = arith.addf %v1405, %acc_1404 : f32
          linalg.yield %v1406 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_127.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_127.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1401.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_127.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1407: f32, %acc_1408: f32):
          linalg.yield %in_1407 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_28 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x608x14x14xf32>
    %v1409.buf = tensor.empty() : tensor<608xf32>
    %v1409.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_parameters_weight_ : tensor<608xf32>, tensor<608xf32>)
      outs(%v1409.buf : tensor<608xf32>) {
        ^bb0(%in_1410: f32, %in_1411: f32, %acc_1412: f32):
          %v1413 = arith.constant 1.0 : f32
          %v1414 = arith.constant 9.999999747378752e-06 : f32
          %v1415 = arith.addf %v1414, %in_1410 : f32
          %v1416 = math.sqrt %v1415 : f32
          %v1417 = arith.divf %v1413, %v1416 : f32
          %v1418 = arith.mulf %v1417, %in_1411 : f32
          linalg.yield %v1418 : f32
      }
    -> tensor<608xf32>
    %v1419.buf = tensor.empty() : tensor<608xf32>
    %v1419.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_parameters_weight_ : tensor<608xf32>, tensor<608xf32>, tensor<608xf32>)
      outs(%v1419.buf : tensor<608xf32>) {
        ^bb0(%in_1420: f32, %in_1421: f32, %in_1422: f32, %acc_1423: f32):
          %v1424 = arith.constant 1.0 : f32
          %v1425 = arith.constant 9.999999747378752e-06 : f32
          %v1426 = arith.addf %v1425, %in_1421 : f32
          %v1427 = math.sqrt %v1426 : f32
          %v1428 = arith.divf %v1424, %v1427 : f32
          %v1429 = arith.mulf %v1428, %in_1422 : f32
          %v1430 = arith.mulf %v1429, %in_1420 : f32
          linalg.yield %v1430 : f32
      }
    -> tensor<608xf32>
    %input_130.buf = tensor.empty() : tensor<10x608x14x14xf32>
    %input_130.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_28, %v1409.buf.out, %v1419.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_0_parameters_bias_ : tensor<10x608x14x14xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>)
      outs(%input_130.buf : tensor<10x608x14x14xf32>) {
        ^bb0(%in_1431: f32, %in_1432: f32, %in_1433: f32, %in_1434: f32, %acc_1435: f32):
          %v1436 = arith.mulf %in_1431, %in_1432 : f32
          %v1437 = arith.subf %v1436, %in_1433 : f32
          %v1438 = arith.addf %v1437, %in_1434 : f32
          %v1439 = arith.maxnumf %init, %v1438 : f32
          linalg.yield %v1439 : f32
      }
    -> tensor<10x608x14x14xf32>
    %padded_31 = tensor.pad %input_130.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1440: index, %pad_i1441: index, %pad_i1442: index, %pad_i1443: index):
        tensor.yield %init : f32
    } : tensor<10x608x14x14xf32> to tensor<10x608x16x16xf32>
    %v1444.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1444.buf = linalg.fill ins(%init : f32) outs(%v1444.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1444.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_31, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_11_modules_2_parameters_weight_ : tensor<10x608x16x16xf32>, tensor<32x608x3x3xf32>)
      outs(%v1444.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1445: f32, %in_1446: f32, %acc_1447: f32):
          %v1448 = arith.mulf %in_1445, %in_1446 : f32
          %v1449 = arith.addf %v1448, %acc_1447 : f32
          linalg.yield %v1449 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_131.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_131.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1444.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_131.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1450: f32, %acc_1451: f32):
          linalg.yield %in_1450 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_29 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x640x14x14xf32>
    %v1452.buf = tensor.empty() : tensor<640xf32>
    %v1452.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_parameters_weight_ : tensor<640xf32>, tensor<640xf32>)
      outs(%v1452.buf : tensor<640xf32>) {
        ^bb0(%in_1453: f32, %in_1454: f32, %acc_1455: f32):
          %v1456 = arith.constant 1.0 : f32
          %v1457 = arith.constant 9.999999747378752e-06 : f32
          %v1458 = arith.addf %v1457, %in_1453 : f32
          %v1459 = math.sqrt %v1458 : f32
          %v1460 = arith.divf %v1456, %v1459 : f32
          %v1461 = arith.mulf %v1460, %in_1454 : f32
          linalg.yield %v1461 : f32
      }
    -> tensor<640xf32>
    %v1462.buf = tensor.empty() : tensor<640xf32>
    %v1462.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_parameters_weight_ : tensor<640xf32>, tensor<640xf32>, tensor<640xf32>)
      outs(%v1462.buf : tensor<640xf32>) {
        ^bb0(%in_1463: f32, %in_1464: f32, %in_1465: f32, %acc_1466: f32):
          %v1467 = arith.constant 1.0 : f32
          %v1468 = arith.constant 9.999999747378752e-06 : f32
          %v1469 = arith.addf %v1468, %in_1464 : f32
          %v1470 = math.sqrt %v1469 : f32
          %v1471 = arith.divf %v1467, %v1470 : f32
          %v1472 = arith.mulf %v1471, %in_1465 : f32
          %v1473 = arith.mulf %v1472, %in_1463 : f32
          linalg.yield %v1473 : f32
      }
    -> tensor<640xf32>
    %input_134.buf = tensor.empty() : tensor<10x640x14x14xf32>
    %input_134.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_29, %v1452.buf.out, %v1462.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_0_parameters_bias_ : tensor<10x640x14x14xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>)
      outs(%input_134.buf : tensor<10x640x14x14xf32>) {
        ^bb0(%in_1474: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %acc_1478: f32):
          %v1479 = arith.mulf %in_1474, %in_1475 : f32
          %v1480 = arith.subf %v1479, %in_1476 : f32
          %v1481 = arith.addf %v1480, %in_1477 : f32
          %v1482 = arith.maxnumf %init, %v1481 : f32
          linalg.yield %v1482 : f32
      }
    -> tensor<10x640x14x14xf32>
    %padded_32 = tensor.pad %input_134.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1483: index, %pad_i1484: index, %pad_i1485: index, %pad_i1486: index):
        tensor.yield %init : f32
    } : tensor<10x640x14x14xf32> to tensor<10x640x16x16xf32>
    %v1487.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1487.buf = linalg.fill ins(%init : f32) outs(%v1487.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1487.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_32, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_12_modules_2_parameters_weight_ : tensor<10x640x16x16xf32>, tensor<32x640x3x3xf32>)
      outs(%v1487.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1488: f32, %in_1489: f32, %acc_1490: f32):
          %v1491 = arith.mulf %in_1488, %in_1489 : f32
          %v1492 = arith.addf %v1491, %acc_1490 : f32
          linalg.yield %v1492 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_135.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_135.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1487.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_135.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1493: f32, %acc_1494: f32):
          linalg.yield %in_1493 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_30 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x672x14x14xf32>
    %v1495.buf = tensor.empty() : tensor<672xf32>
    %v1495.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v1495.buf : tensor<672xf32>) {
        ^bb0(%in_1496: f32, %in_1497: f32, %acc_1498: f32):
          %v1499 = arith.constant 1.0 : f32
          %v1500 = arith.constant 9.999999747378752e-06 : f32
          %v1501 = arith.addf %v1500, %in_1496 : f32
          %v1502 = math.sqrt %v1501 : f32
          %v1503 = arith.divf %v1499, %v1502 : f32
          %v1504 = arith.mulf %v1503, %in_1497 : f32
          linalg.yield %v1504 : f32
      }
    -> tensor<672xf32>
    %v1505.buf = tensor.empty() : tensor<672xf32>
    %v1505.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v1505.buf : tensor<672xf32>) {
        ^bb0(%in_1506: f32, %in_1507: f32, %in_1508: f32, %acc_1509: f32):
          %v1510 = arith.constant 1.0 : f32
          %v1511 = arith.constant 9.999999747378752e-06 : f32
          %v1512 = arith.addf %v1511, %in_1507 : f32
          %v1513 = math.sqrt %v1512 : f32
          %v1514 = arith.divf %v1510, %v1513 : f32
          %v1515 = arith.mulf %v1514, %in_1508 : f32
          %v1516 = arith.mulf %v1515, %in_1506 : f32
          linalg.yield %v1516 : f32
      }
    -> tensor<672xf32>
    %input_138.buf = tensor.empty() : tensor<10x672x14x14xf32>
    %input_138.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_30, %v1495.buf.out, %v1505.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_0_parameters_bias_ : tensor<10x672x14x14xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%input_138.buf : tensor<10x672x14x14xf32>) {
        ^bb0(%in_1517: f32, %in_1518: f32, %in_1519: f32, %in_1520: f32, %acc_1521: f32):
          %v1522 = arith.mulf %in_1517, %in_1518 : f32
          %v1523 = arith.subf %v1522, %in_1519 : f32
          %v1524 = arith.addf %v1523, %in_1520 : f32
          %v1525 = arith.maxnumf %init, %v1524 : f32
          linalg.yield %v1525 : f32
      }
    -> tensor<10x672x14x14xf32>
    %padded_33 = tensor.pad %input_138.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1526: index, %pad_i1527: index, %pad_i1528: index, %pad_i1529: index):
        tensor.yield %init : f32
    } : tensor<10x672x14x14xf32> to tensor<10x672x16x16xf32>
    %v1530.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1530.buf = linalg.fill ins(%init : f32) outs(%v1530.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1530.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_33, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_13_modules_2_parameters_weight_ : tensor<10x672x16x16xf32>, tensor<32x672x3x3xf32>)
      outs(%v1530.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1531: f32, %in_1532: f32, %acc_1533: f32):
          %v1534 = arith.mulf %in_1531, %in_1532 : f32
          %v1535 = arith.addf %v1534, %acc_1533 : f32
          linalg.yield %v1535 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_139.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_139.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1530.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_139.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1536: f32, %acc_1537: f32):
          linalg.yield %in_1536 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_31 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x704x14x14xf32>
    %v1538.buf = tensor.empty() : tensor<704xf32>
    %v1538.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_parameters_weight_ : tensor<704xf32>, tensor<704xf32>)
      outs(%v1538.buf : tensor<704xf32>) {
        ^bb0(%in_1539: f32, %in_1540: f32, %acc_1541: f32):
          %v1542 = arith.constant 1.0 : f32
          %v1543 = arith.constant 9.999999747378752e-06 : f32
          %v1544 = arith.addf %v1543, %in_1539 : f32
          %v1545 = math.sqrt %v1544 : f32
          %v1546 = arith.divf %v1542, %v1545 : f32
          %v1547 = arith.mulf %v1546, %in_1540 : f32
          linalg.yield %v1547 : f32
      }
    -> tensor<704xf32>
    %v1548.buf = tensor.empty() : tensor<704xf32>
    %v1548.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_parameters_weight_ : tensor<704xf32>, tensor<704xf32>, tensor<704xf32>)
      outs(%v1548.buf : tensor<704xf32>) {
        ^bb0(%in_1549: f32, %in_1550: f32, %in_1551: f32, %acc_1552: f32):
          %v1553 = arith.constant 1.0 : f32
          %v1554 = arith.constant 9.999999747378752e-06 : f32
          %v1555 = arith.addf %v1554, %in_1550 : f32
          %v1556 = math.sqrt %v1555 : f32
          %v1557 = arith.divf %v1553, %v1556 : f32
          %v1558 = arith.mulf %v1557, %in_1551 : f32
          %v1559 = arith.mulf %v1558, %in_1549 : f32
          linalg.yield %v1559 : f32
      }
    -> tensor<704xf32>
    %input_142.buf = tensor.empty() : tensor<10x704x14x14xf32>
    %input_142.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_31, %v1538.buf.out, %v1548.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_0_parameters_bias_ : tensor<10x704x14x14xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>)
      outs(%input_142.buf : tensor<10x704x14x14xf32>) {
        ^bb0(%in_1560: f32, %in_1561: f32, %in_1562: f32, %in_1563: f32, %acc_1564: f32):
          %v1565 = arith.mulf %in_1560, %in_1561 : f32
          %v1566 = arith.subf %v1565, %in_1562 : f32
          %v1567 = arith.addf %v1566, %in_1563 : f32
          %v1568 = arith.maxnumf %init, %v1567 : f32
          linalg.yield %v1568 : f32
      }
    -> tensor<10x704x14x14xf32>
    %padded_34 = tensor.pad %input_142.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1569: index, %pad_i1570: index, %pad_i1571: index, %pad_i1572: index):
        tensor.yield %init : f32
    } : tensor<10x704x14x14xf32> to tensor<10x704x16x16xf32>
    %v1573.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1573.buf = linalg.fill ins(%init : f32) outs(%v1573.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1573.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_34, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_14_modules_2_parameters_weight_ : tensor<10x704x16x16xf32>, tensor<32x704x3x3xf32>)
      outs(%v1573.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1574: f32, %in_1575: f32, %acc_1576: f32):
          %v1577 = arith.mulf %in_1574, %in_1575 : f32
          %v1578 = arith.addf %v1577, %acc_1576 : f32
          linalg.yield %v1578 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_143.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_143.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1573.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_143.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1579: f32, %acc_1580: f32):
          linalg.yield %in_1579 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_32 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x736x14x14xf32>
    %v1581.buf = tensor.empty() : tensor<736xf32>
    %v1581.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_parameters_weight_ : tensor<736xf32>, tensor<736xf32>)
      outs(%v1581.buf : tensor<736xf32>) {
        ^bb0(%in_1582: f32, %in_1583: f32, %acc_1584: f32):
          %v1585 = arith.constant 1.0 : f32
          %v1586 = arith.constant 9.999999747378752e-06 : f32
          %v1587 = arith.addf %v1586, %in_1582 : f32
          %v1588 = math.sqrt %v1587 : f32
          %v1589 = arith.divf %v1585, %v1588 : f32
          %v1590 = arith.mulf %v1589, %in_1583 : f32
          linalg.yield %v1590 : f32
      }
    -> tensor<736xf32>
    %v1591.buf = tensor.empty() : tensor<736xf32>
    %v1591.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_parameters_weight_ : tensor<736xf32>, tensor<736xf32>, tensor<736xf32>)
      outs(%v1591.buf : tensor<736xf32>) {
        ^bb0(%in_1592: f32, %in_1593: f32, %in_1594: f32, %acc_1595: f32):
          %v1596 = arith.constant 1.0 : f32
          %v1597 = arith.constant 9.999999747378752e-06 : f32
          %v1598 = arith.addf %v1597, %in_1593 : f32
          %v1599 = math.sqrt %v1598 : f32
          %v1600 = arith.divf %v1596, %v1599 : f32
          %v1601 = arith.mulf %v1600, %in_1594 : f32
          %v1602 = arith.mulf %v1601, %in_1592 : f32
          linalg.yield %v1602 : f32
      }
    -> tensor<736xf32>
    %input_146.buf = tensor.empty() : tensor<10x736x14x14xf32>
    %input_146.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_32, %v1581.buf.out, %v1591.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_0_parameters_bias_ : tensor<10x736x14x14xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>)
      outs(%input_146.buf : tensor<10x736x14x14xf32>) {
        ^bb0(%in_1603: f32, %in_1604: f32, %in_1605: f32, %in_1606: f32, %acc_1607: f32):
          %v1608 = arith.mulf %in_1603, %in_1604 : f32
          %v1609 = arith.subf %v1608, %in_1605 : f32
          %v1610 = arith.addf %v1609, %in_1606 : f32
          %v1611 = arith.maxnumf %init, %v1610 : f32
          linalg.yield %v1611 : f32
      }
    -> tensor<10x736x14x14xf32>
    %padded_35 = tensor.pad %input_146.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1612: index, %pad_i1613: index, %pad_i1614: index, %pad_i1615: index):
        tensor.yield %init : f32
    } : tensor<10x736x14x14xf32> to tensor<10x736x16x16xf32>
    %v1616.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1616.buf = linalg.fill ins(%init : f32) outs(%v1616.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1616.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_35, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_15_modules_2_parameters_weight_ : tensor<10x736x16x16xf32>, tensor<32x736x3x3xf32>)
      outs(%v1616.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1617: f32, %in_1618: f32, %acc_1619: f32):
          %v1620 = arith.mulf %in_1617, %in_1618 : f32
          %v1621 = arith.addf %v1620, %acc_1619 : f32
          linalg.yield %v1621 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_147.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_147.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1616.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_147.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1622: f32, %acc_1623: f32):
          linalg.yield %in_1622 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_33 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x768x14x14xf32>
    %v1624.buf = tensor.empty() : tensor<768xf32>
    %v1624.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_parameters_weight_ : tensor<768xf32>, tensor<768xf32>)
      outs(%v1624.buf : tensor<768xf32>) {
        ^bb0(%in_1625: f32, %in_1626: f32, %acc_1627: f32):
          %v1628 = arith.constant 1.0 : f32
          %v1629 = arith.constant 9.999999747378752e-06 : f32
          %v1630 = arith.addf %v1629, %in_1625 : f32
          %v1631 = math.sqrt %v1630 : f32
          %v1632 = arith.divf %v1628, %v1631 : f32
          %v1633 = arith.mulf %v1632, %in_1626 : f32
          linalg.yield %v1633 : f32
      }
    -> tensor<768xf32>
    %v1634.buf = tensor.empty() : tensor<768xf32>
    %v1634.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_parameters_weight_ : tensor<768xf32>, tensor<768xf32>, tensor<768xf32>)
      outs(%v1634.buf : tensor<768xf32>) {
        ^bb0(%in_1635: f32, %in_1636: f32, %in_1637: f32, %acc_1638: f32):
          %v1639 = arith.constant 1.0 : f32
          %v1640 = arith.constant 9.999999747378752e-06 : f32
          %v1641 = arith.addf %v1640, %in_1636 : f32
          %v1642 = math.sqrt %v1641 : f32
          %v1643 = arith.divf %v1639, %v1642 : f32
          %v1644 = arith.mulf %v1643, %in_1637 : f32
          %v1645 = arith.mulf %v1644, %in_1635 : f32
          linalg.yield %v1645 : f32
      }
    -> tensor<768xf32>
    %input_150.buf = tensor.empty() : tensor<10x768x14x14xf32>
    %input_150.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_33, %v1624.buf.out, %v1634.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_0_parameters_bias_ : tensor<10x768x14x14xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>)
      outs(%input_150.buf : tensor<10x768x14x14xf32>) {
        ^bb0(%in_1646: f32, %in_1647: f32, %in_1648: f32, %in_1649: f32, %acc_1650: f32):
          %v1651 = arith.mulf %in_1646, %in_1647 : f32
          %v1652 = arith.subf %v1651, %in_1648 : f32
          %v1653 = arith.addf %v1652, %in_1649 : f32
          %v1654 = arith.maxnumf %init, %v1653 : f32
          linalg.yield %v1654 : f32
      }
    -> tensor<10x768x14x14xf32>
    %padded_36 = tensor.pad %input_150.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1655: index, %pad_i1656: index, %pad_i1657: index, %pad_i1658: index):
        tensor.yield %init : f32
    } : tensor<10x768x14x14xf32> to tensor<10x768x16x16xf32>
    %v1659.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1659.buf = linalg.fill ins(%init : f32) outs(%v1659.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1659.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_36, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_16_modules_2_parameters_weight_ : tensor<10x768x16x16xf32>, tensor<32x768x3x3xf32>)
      outs(%v1659.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1660: f32, %in_1661: f32, %acc_1662: f32):
          %v1663 = arith.mulf %in_1660, %in_1661 : f32
          %v1664 = arith.addf %v1663, %acc_1662 : f32
          linalg.yield %v1664 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_151.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_151.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1659.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_151.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1665: f32, %acc_1666: f32):
          linalg.yield %in_1665 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_34 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x800x14x14xf32>
    %v1667.buf = tensor.empty() : tensor<800xf32>
    %v1667.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_parameters_weight_ : tensor<800xf32>, tensor<800xf32>)
      outs(%v1667.buf : tensor<800xf32>) {
        ^bb0(%in_1668: f32, %in_1669: f32, %acc_1670: f32):
          %v1671 = arith.constant 1.0 : f32
          %v1672 = arith.constant 9.999999747378752e-06 : f32
          %v1673 = arith.addf %v1672, %in_1668 : f32
          %v1674 = math.sqrt %v1673 : f32
          %v1675 = arith.divf %v1671, %v1674 : f32
          %v1676 = arith.mulf %v1675, %in_1669 : f32
          linalg.yield %v1676 : f32
      }
    -> tensor<800xf32>
    %v1677.buf = tensor.empty() : tensor<800xf32>
    %v1677.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_parameters_weight_ : tensor<800xf32>, tensor<800xf32>, tensor<800xf32>)
      outs(%v1677.buf : tensor<800xf32>) {
        ^bb0(%in_1678: f32, %in_1679: f32, %in_1680: f32, %acc_1681: f32):
          %v1682 = arith.constant 1.0 : f32
          %v1683 = arith.constant 9.999999747378752e-06 : f32
          %v1684 = arith.addf %v1683, %in_1679 : f32
          %v1685 = math.sqrt %v1684 : f32
          %v1686 = arith.divf %v1682, %v1685 : f32
          %v1687 = arith.mulf %v1686, %in_1680 : f32
          %v1688 = arith.mulf %v1687, %in_1678 : f32
          linalg.yield %v1688 : f32
      }
    -> tensor<800xf32>
    %input_154.buf = tensor.empty() : tensor<10x800x14x14xf32>
    %input_154.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_34, %v1667.buf.out, %v1677.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_0_parameters_bias_ : tensor<10x800x14x14xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>)
      outs(%input_154.buf : tensor<10x800x14x14xf32>) {
        ^bb0(%in_1689: f32, %in_1690: f32, %in_1691: f32, %in_1692: f32, %acc_1693: f32):
          %v1694 = arith.mulf %in_1689, %in_1690 : f32
          %v1695 = arith.subf %v1694, %in_1691 : f32
          %v1696 = arith.addf %v1695, %in_1692 : f32
          %v1697 = arith.maxnumf %init, %v1696 : f32
          linalg.yield %v1697 : f32
      }
    -> tensor<10x800x14x14xf32>
    %padded_37 = tensor.pad %input_154.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1698: index, %pad_i1699: index, %pad_i1700: index, %pad_i1701: index):
        tensor.yield %init : f32
    } : tensor<10x800x14x14xf32> to tensor<10x800x16x16xf32>
    %v1702.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1702.buf = linalg.fill ins(%init : f32) outs(%v1702.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1702.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_37, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_17_modules_2_parameters_weight_ : tensor<10x800x16x16xf32>, tensor<32x800x3x3xf32>)
      outs(%v1702.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1703: f32, %in_1704: f32, %acc_1705: f32):
          %v1706 = arith.mulf %in_1703, %in_1704 : f32
          %v1707 = arith.addf %v1706, %acc_1705 : f32
          linalg.yield %v1707 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_155.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_155.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1702.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_155.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1708: f32, %acc_1709: f32):
          linalg.yield %in_1708 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_35 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out, %input_155.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x832x14x14xf32>
    %v1710.buf = tensor.empty() : tensor<832xf32>
    %v1710.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_parameters_weight_ : tensor<832xf32>, tensor<832xf32>)
      outs(%v1710.buf : tensor<832xf32>) {
        ^bb0(%in_1711: f32, %in_1712: f32, %acc_1713: f32):
          %v1714 = arith.constant 1.0 : f32
          %v1715 = arith.constant 9.999999747378752e-06 : f32
          %v1716 = arith.addf %v1715, %in_1711 : f32
          %v1717 = math.sqrt %v1716 : f32
          %v1718 = arith.divf %v1714, %v1717 : f32
          %v1719 = arith.mulf %v1718, %in_1712 : f32
          linalg.yield %v1719 : f32
      }
    -> tensor<832xf32>
    %v1720.buf = tensor.empty() : tensor<832xf32>
    %v1720.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_parameters_weight_ : tensor<832xf32>, tensor<832xf32>, tensor<832xf32>)
      outs(%v1720.buf : tensor<832xf32>) {
        ^bb0(%in_1721: f32, %in_1722: f32, %in_1723: f32, %acc_1724: f32):
          %v1725 = arith.constant 1.0 : f32
          %v1726 = arith.constant 9.999999747378752e-06 : f32
          %v1727 = arith.addf %v1726, %in_1722 : f32
          %v1728 = math.sqrt %v1727 : f32
          %v1729 = arith.divf %v1725, %v1728 : f32
          %v1730 = arith.mulf %v1729, %in_1723 : f32
          %v1731 = arith.mulf %v1730, %in_1721 : f32
          linalg.yield %v1731 : f32
      }
    -> tensor<832xf32>
    %input_158.buf = tensor.empty() : tensor<10x832x14x14xf32>
    %input_158.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_35, %v1710.buf.out, %v1720.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_0_parameters_bias_ : tensor<10x832x14x14xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>)
      outs(%input_158.buf : tensor<10x832x14x14xf32>) {
        ^bb0(%in_1732: f32, %in_1733: f32, %in_1734: f32, %in_1735: f32, %acc_1736: f32):
          %v1737 = arith.mulf %in_1732, %in_1733 : f32
          %v1738 = arith.subf %v1737, %in_1734 : f32
          %v1739 = arith.addf %v1738, %in_1735 : f32
          %v1740 = arith.maxnumf %init, %v1739 : f32
          linalg.yield %v1740 : f32
      }
    -> tensor<10x832x14x14xf32>
    %padded_38 = tensor.pad %input_158.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1741: index, %pad_i1742: index, %pad_i1743: index, %pad_i1744: index):
        tensor.yield %init : f32
    } : tensor<10x832x14x14xf32> to tensor<10x832x16x16xf32>
    %v1745.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1745.buf = linalg.fill ins(%init : f32) outs(%v1745.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1745.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_38, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_18_modules_2_parameters_weight_ : tensor<10x832x16x16xf32>, tensor<32x832x3x3xf32>)
      outs(%v1745.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1746: f32, %in_1747: f32, %acc_1748: f32):
          %v1749 = arith.mulf %in_1746, %in_1747 : f32
          %v1750 = arith.addf %v1749, %acc_1748 : f32
          linalg.yield %v1750 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_159.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_159.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1745.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_159.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1751: f32, %acc_1752: f32):
          linalg.yield %in_1751 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_36 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out, %input_155.buf.out, %input_159.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x864x14x14xf32>
    %v1753.buf = tensor.empty() : tensor<864xf32>
    %v1753.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_parameters_weight_ : tensor<864xf32>, tensor<864xf32>)
      outs(%v1753.buf : tensor<864xf32>) {
        ^bb0(%in_1754: f32, %in_1755: f32, %acc_1756: f32):
          %v1757 = arith.constant 1.0 : f32
          %v1758 = arith.constant 9.999999747378752e-06 : f32
          %v1759 = arith.addf %v1758, %in_1754 : f32
          %v1760 = math.sqrt %v1759 : f32
          %v1761 = arith.divf %v1757, %v1760 : f32
          %v1762 = arith.mulf %v1761, %in_1755 : f32
          linalg.yield %v1762 : f32
      }
    -> tensor<864xf32>
    %v1763.buf = tensor.empty() : tensor<864xf32>
    %v1763.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_parameters_weight_ : tensor<864xf32>, tensor<864xf32>, tensor<864xf32>)
      outs(%v1763.buf : tensor<864xf32>) {
        ^bb0(%in_1764: f32, %in_1765: f32, %in_1766: f32, %acc_1767: f32):
          %v1768 = arith.constant 1.0 : f32
          %v1769 = arith.constant 9.999999747378752e-06 : f32
          %v1770 = arith.addf %v1769, %in_1765 : f32
          %v1771 = math.sqrt %v1770 : f32
          %v1772 = arith.divf %v1768, %v1771 : f32
          %v1773 = arith.mulf %v1772, %in_1766 : f32
          %v1774 = arith.mulf %v1773, %in_1764 : f32
          linalg.yield %v1774 : f32
      }
    -> tensor<864xf32>
    %input_162.buf = tensor.empty() : tensor<10x864x14x14xf32>
    %input_162.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_36, %v1753.buf.out, %v1763.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_0_parameters_bias_ : tensor<10x864x14x14xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>)
      outs(%input_162.buf : tensor<10x864x14x14xf32>) {
        ^bb0(%in_1775: f32, %in_1776: f32, %in_1777: f32, %in_1778: f32, %acc_1779: f32):
          %v1780 = arith.mulf %in_1775, %in_1776 : f32
          %v1781 = arith.subf %v1780, %in_1777 : f32
          %v1782 = arith.addf %v1781, %in_1778 : f32
          %v1783 = arith.maxnumf %init, %v1782 : f32
          linalg.yield %v1783 : f32
      }
    -> tensor<10x864x14x14xf32>
    %padded_39 = tensor.pad %input_162.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1784: index, %pad_i1785: index, %pad_i1786: index, %pad_i1787: index):
        tensor.yield %init : f32
    } : tensor<10x864x14x14xf32> to tensor<10x864x16x16xf32>
    %v1788.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1788.buf = linalg.fill ins(%init : f32) outs(%v1788.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1788.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_39, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_19_modules_2_parameters_weight_ : tensor<10x864x16x16xf32>, tensor<32x864x3x3xf32>)
      outs(%v1788.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1789: f32, %in_1790: f32, %acc_1791: f32):
          %v1792 = arith.mulf %in_1789, %in_1790 : f32
          %v1793 = arith.addf %v1792, %acc_1791 : f32
          linalg.yield %v1793 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_163.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_163.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1788.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_163.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1794: f32, %acc_1795: f32):
          linalg.yield %in_1794 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_37 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out, %input_155.buf.out, %input_159.buf.out, %input_163.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x896x14x14xf32>
    %v1796.buf = tensor.empty() : tensor<896xf32>
    %v1796.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_parameters_weight_ : tensor<896xf32>, tensor<896xf32>)
      outs(%v1796.buf : tensor<896xf32>) {
        ^bb0(%in_1797: f32, %in_1798: f32, %acc_1799: f32):
          %v1800 = arith.constant 1.0 : f32
          %v1801 = arith.constant 9.999999747378752e-06 : f32
          %v1802 = arith.addf %v1801, %in_1797 : f32
          %v1803 = math.sqrt %v1802 : f32
          %v1804 = arith.divf %v1800, %v1803 : f32
          %v1805 = arith.mulf %v1804, %in_1798 : f32
          linalg.yield %v1805 : f32
      }
    -> tensor<896xf32>
    %v1806.buf = tensor.empty() : tensor<896xf32>
    %v1806.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_parameters_weight_ : tensor<896xf32>, tensor<896xf32>, tensor<896xf32>)
      outs(%v1806.buf : tensor<896xf32>) {
        ^bb0(%in_1807: f32, %in_1808: f32, %in_1809: f32, %acc_1810: f32):
          %v1811 = arith.constant 1.0 : f32
          %v1812 = arith.constant 9.999999747378752e-06 : f32
          %v1813 = arith.addf %v1812, %in_1808 : f32
          %v1814 = math.sqrt %v1813 : f32
          %v1815 = arith.divf %v1811, %v1814 : f32
          %v1816 = arith.mulf %v1815, %in_1809 : f32
          %v1817 = arith.mulf %v1816, %in_1807 : f32
          linalg.yield %v1817 : f32
      }
    -> tensor<896xf32>
    %input_166.buf = tensor.empty() : tensor<10x896x14x14xf32>
    %input_166.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_37, %v1796.buf.out, %v1806.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_0_parameters_bias_ : tensor<10x896x14x14xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>)
      outs(%input_166.buf : tensor<10x896x14x14xf32>) {
        ^bb0(%in_1818: f32, %in_1819: f32, %in_1820: f32, %in_1821: f32, %acc_1822: f32):
          %v1823 = arith.mulf %in_1818, %in_1819 : f32
          %v1824 = arith.subf %v1823, %in_1820 : f32
          %v1825 = arith.addf %v1824, %in_1821 : f32
          %v1826 = arith.maxnumf %init, %v1825 : f32
          linalg.yield %v1826 : f32
      }
    -> tensor<10x896x14x14xf32>
    %padded_40 = tensor.pad %input_166.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1827: index, %pad_i1828: index, %pad_i1829: index, %pad_i1830: index):
        tensor.yield %init : f32
    } : tensor<10x896x14x14xf32> to tensor<10x896x16x16xf32>
    %v1831.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1831.buf = linalg.fill ins(%init : f32) outs(%v1831.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1831.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_40, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_20_modules_2_parameters_weight_ : tensor<10x896x16x16xf32>, tensor<32x896x3x3xf32>)
      outs(%v1831.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1832: f32, %in_1833: f32, %acc_1834: f32):
          %v1835 = arith.mulf %in_1832, %in_1833 : f32
          %v1836 = arith.addf %v1835, %acc_1834 : f32
          linalg.yield %v1836 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_167.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_167.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1831.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_167.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1837: f32, %acc_1838: f32):
          linalg.yield %in_1837 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_38 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out, %input_155.buf.out, %input_159.buf.out, %input_163.buf.out, %input_167.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x928x14x14xf32>
    %v1839.buf = tensor.empty() : tensor<928xf32>
    %v1839.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_parameters_weight_ : tensor<928xf32>, tensor<928xf32>)
      outs(%v1839.buf : tensor<928xf32>) {
        ^bb0(%in_1840: f32, %in_1841: f32, %acc_1842: f32):
          %v1843 = arith.constant 1.0 : f32
          %v1844 = arith.constant 9.999999747378752e-06 : f32
          %v1845 = arith.addf %v1844, %in_1840 : f32
          %v1846 = math.sqrt %v1845 : f32
          %v1847 = arith.divf %v1843, %v1846 : f32
          %v1848 = arith.mulf %v1847, %in_1841 : f32
          linalg.yield %v1848 : f32
      }
    -> tensor<928xf32>
    %v1849.buf = tensor.empty() : tensor<928xf32>
    %v1849.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_parameters_weight_ : tensor<928xf32>, tensor<928xf32>, tensor<928xf32>)
      outs(%v1849.buf : tensor<928xf32>) {
        ^bb0(%in_1850: f32, %in_1851: f32, %in_1852: f32, %acc_1853: f32):
          %v1854 = arith.constant 1.0 : f32
          %v1855 = arith.constant 9.999999747378752e-06 : f32
          %v1856 = arith.addf %v1855, %in_1851 : f32
          %v1857 = math.sqrt %v1856 : f32
          %v1858 = arith.divf %v1854, %v1857 : f32
          %v1859 = arith.mulf %v1858, %in_1852 : f32
          %v1860 = arith.mulf %v1859, %in_1850 : f32
          linalg.yield %v1860 : f32
      }
    -> tensor<928xf32>
    %input_170.buf = tensor.empty() : tensor<10x928x14x14xf32>
    %input_170.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_38, %v1839.buf.out, %v1849.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_0_parameters_bias_ : tensor<10x928x14x14xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>)
      outs(%input_170.buf : tensor<10x928x14x14xf32>) {
        ^bb0(%in_1861: f32, %in_1862: f32, %in_1863: f32, %in_1864: f32, %acc_1865: f32):
          %v1866 = arith.mulf %in_1861, %in_1862 : f32
          %v1867 = arith.subf %v1866, %in_1863 : f32
          %v1868 = arith.addf %v1867, %in_1864 : f32
          %v1869 = arith.maxnumf %init, %v1868 : f32
          linalg.yield %v1869 : f32
      }
    -> tensor<10x928x14x14xf32>
    %padded_41 = tensor.pad %input_170.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1870: index, %pad_i1871: index, %pad_i1872: index, %pad_i1873: index):
        tensor.yield %init : f32
    } : tensor<10x928x14x14xf32> to tensor<10x928x16x16xf32>
    %v1874.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1874.buf = linalg.fill ins(%init : f32) outs(%v1874.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1874.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_41, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_21_modules_2_parameters_weight_ : tensor<10x928x16x16xf32>, tensor<32x928x3x3xf32>)
      outs(%v1874.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1875: f32, %in_1876: f32, %acc_1877: f32):
          %v1878 = arith.mulf %in_1875, %in_1876 : f32
          %v1879 = arith.addf %v1878, %acc_1877 : f32
          linalg.yield %v1879 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_171.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_171.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1874.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_171.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1880: f32, %acc_1881: f32):
          linalg.yield %in_1880 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_39 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out, %input_155.buf.out, %input_159.buf.out, %input_163.buf.out, %input_167.buf.out, %input_171.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x960x14x14xf32>
    %v1882.buf = tensor.empty() : tensor<960xf32>
    %v1882.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1882.buf : tensor<960xf32>) {
        ^bb0(%in_1883: f32, %in_1884: f32, %acc_1885: f32):
          %v1886 = arith.constant 1.0 : f32
          %v1887 = arith.constant 9.999999747378752e-06 : f32
          %v1888 = arith.addf %v1887, %in_1883 : f32
          %v1889 = math.sqrt %v1888 : f32
          %v1890 = arith.divf %v1886, %v1889 : f32
          %v1891 = arith.mulf %v1890, %in_1884 : f32
          linalg.yield %v1891 : f32
      }
    -> tensor<960xf32>
    %v1892.buf = tensor.empty() : tensor<960xf32>
    %v1892.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1892.buf : tensor<960xf32>) {
        ^bb0(%in_1893: f32, %in_1894: f32, %in_1895: f32, %acc_1896: f32):
          %v1897 = arith.constant 1.0 : f32
          %v1898 = arith.constant 9.999999747378752e-06 : f32
          %v1899 = arith.addf %v1898, %in_1894 : f32
          %v1900 = math.sqrt %v1899 : f32
          %v1901 = arith.divf %v1897, %v1900 : f32
          %v1902 = arith.mulf %v1901, %in_1895 : f32
          %v1903 = arith.mulf %v1902, %in_1893 : f32
          linalg.yield %v1903 : f32
      }
    -> tensor<960xf32>
    %input_174.buf = tensor.empty() : tensor<10x960x14x14xf32>
    %input_174.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_39, %v1882.buf.out, %v1892.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_0_parameters_bias_ : tensor<10x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%input_174.buf : tensor<10x960x14x14xf32>) {
        ^bb0(%in_1904: f32, %in_1905: f32, %in_1906: f32, %in_1907: f32, %acc_1908: f32):
          %v1909 = arith.mulf %in_1904, %in_1905 : f32
          %v1910 = arith.subf %v1909, %in_1906 : f32
          %v1911 = arith.addf %v1910, %in_1907 : f32
          %v1912 = arith.maxnumf %init, %v1911 : f32
          linalg.yield %v1912 : f32
      }
    -> tensor<10x960x14x14xf32>
    %padded_42 = tensor.pad %input_174.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1913: index, %pad_i1914: index, %pad_i1915: index, %pad_i1916: index):
        tensor.yield %init : f32
    } : tensor<10x960x14x14xf32> to tensor<10x960x16x16xf32>
    %v1917.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1917.buf = linalg.fill ins(%init : f32) outs(%v1917.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1917.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_42, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_22_modules_2_parameters_weight_ : tensor<10x960x16x16xf32>, tensor<32x960x3x3xf32>)
      outs(%v1917.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1918: f32, %in_1919: f32, %acc_1920: f32):
          %v1921 = arith.mulf %in_1918, %in_1919 : f32
          %v1922 = arith.addf %v1921, %acc_1920 : f32
          linalg.yield %v1922 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_175.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_175.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1917.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_175.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1923: f32, %acc_1924: f32):
          linalg.yield %in_1923 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_40 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out, %input_155.buf.out, %input_159.buf.out, %input_163.buf.out, %input_167.buf.out, %input_171.buf.out, %input_175.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x992x14x14xf32>
    %v1925.buf = tensor.empty() : tensor<992xf32>
    %v1925.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_parameters_weight_ : tensor<992xf32>, tensor<992xf32>)
      outs(%v1925.buf : tensor<992xf32>) {
        ^bb0(%in_1926: f32, %in_1927: f32, %acc_1928: f32):
          %v1929 = arith.constant 1.0 : f32
          %v1930 = arith.constant 9.999999747378752e-06 : f32
          %v1931 = arith.addf %v1930, %in_1926 : f32
          %v1932 = math.sqrt %v1931 : f32
          %v1933 = arith.divf %v1929, %v1932 : f32
          %v1934 = arith.mulf %v1933, %in_1927 : f32
          linalg.yield %v1934 : f32
      }
    -> tensor<992xf32>
    %v1935.buf = tensor.empty() : tensor<992xf32>
    %v1935.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_parameters_weight_ : tensor<992xf32>, tensor<992xf32>, tensor<992xf32>)
      outs(%v1935.buf : tensor<992xf32>) {
        ^bb0(%in_1936: f32, %in_1937: f32, %in_1938: f32, %acc_1939: f32):
          %v1940 = arith.constant 1.0 : f32
          %v1941 = arith.constant 9.999999747378752e-06 : f32
          %v1942 = arith.addf %v1941, %in_1937 : f32
          %v1943 = math.sqrt %v1942 : f32
          %v1944 = arith.divf %v1940, %v1943 : f32
          %v1945 = arith.mulf %v1944, %in_1938 : f32
          %v1946 = arith.mulf %v1945, %in_1936 : f32
          linalg.yield %v1946 : f32
      }
    -> tensor<992xf32>
    %input_178.buf = tensor.empty() : tensor<10x992x14x14xf32>
    %input_178.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_40, %v1925.buf.out, %v1935.buf.out, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_0_parameters_bias_ : tensor<10x992x14x14xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>)
      outs(%input_178.buf : tensor<10x992x14x14xf32>) {
        ^bb0(%in_1947: f32, %in_1948: f32, %in_1949: f32, %in_1950: f32, %acc_1951: f32):
          %v1952 = arith.mulf %in_1947, %in_1948 : f32
          %v1953 = arith.subf %v1952, %in_1949 : f32
          %v1954 = arith.addf %v1953, %in_1950 : f32
          %v1955 = arith.maxnumf %init, %v1954 : f32
          linalg.yield %v1955 : f32
      }
    -> tensor<10x992x14x14xf32>
    %padded_43 = tensor.pad %input_178.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1956: index, %pad_i1957: index, %pad_i1958: index, %pad_i1959: index):
        tensor.yield %init : f32
    } : tensor<10x992x14x14xf32> to tensor<10x992x16x16xf32>
    %v1960.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v1960.buf = linalg.fill ins(%init : f32) outs(%v1960.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v1960.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_43, %l_self_modules_dense_blocks_modules_2_modules_layers_modules_23_modules_2_parameters_weight_ : tensor<10x992x16x16xf32>, tensor<32x992x3x3xf32>)
      outs(%v1960.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_1961: f32, %in_1962: f32, %acc_1963: f32):
          %v1964 = arith.mulf %in_1961, %in_1962 : f32
          %v1965 = arith.addf %v1964, %acc_1963 : f32
          linalg.yield %v1965 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_179.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_179.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1960.buf.out : tensor<10x32x7x2x14xf32>)
      outs(%input_179.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_1966: f32, %acc_1967: f32):
          linalg.yield %in_1966 : f32
      }
    -> tensor<10x32x14x14xf32>
    %x_41 = tensor.concat dim(1) %input_84.post.out, %input_87.buf.out, %input_91.buf.out, %input_95.buf.out, %input_99.buf.out, %input_103.buf.out, %input_107.buf.out, %input_111.buf.out, %input_115.buf.out, %input_119.buf.out, %input_123.buf.out, %input_127.buf.out, %input_131.buf.out, %input_135.buf.out, %input_139.buf.out, %input_143.buf.out, %input_147.buf.out, %input_151.buf.out, %input_155.buf.out, %input_159.buf.out, %input_163.buf.out, %input_167.buf.out, %input_171.buf.out, %input_175.buf.out, %input_179.buf.out : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %v1968.buf = tensor.empty() : tensor<1024xf32>
    %v1968.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_transition_layers_modules_2_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1968.buf : tensor<1024xf32>) {
        ^bb0(%in_1969: f32, %in_1970: f32, %acc_1971: f32):
          %v1972 = arith.constant 1.0 : f32
          %v1973 = arith.constant 9.999999747378752e-06 : f32
          %v1974 = arith.addf %v1973, %in_1969 : f32
          %v1975 = math.sqrt %v1974 : f32
          %v1976 = arith.divf %v1972, %v1975 : f32
          %v1977 = arith.mulf %v1976, %in_1970 : f32
          linalg.yield %v1977 : f32
      }
    -> tensor<1024xf32>
    %v1978.buf = tensor.empty() : tensor<1024xf32>
    %v1978.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_transition_layers_modules_2_modules_transition_modules_0_buffers_running_mean_, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1978.buf : tensor<1024xf32>) {
        ^bb0(%in_1979: f32, %in_1980: f32, %in_1981: f32, %acc_1982: f32):
          %v1983 = arith.constant 1.0 : f32
          %v1984 = arith.constant 9.999999747378752e-06 : f32
          %v1985 = arith.addf %v1984, %in_1980 : f32
          %v1986 = math.sqrt %v1985 : f32
          %v1987 = arith.divf %v1983, %v1986 : f32
          %v1988 = arith.mulf %v1987, %in_1981 : f32
          %v1989 = arith.mulf %v1988, %in_1979 : f32
          linalg.yield %v1989 : f32
      }
    -> tensor<1024xf32>
    %input_182.buf = tensor.empty() : tensor<10x1024x14x14xf32>
    %input_182.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_41, %v1968.buf.out, %v1978.buf.out, %l_self_modules_transition_layers_modules_2_modules_transition_modules_0_parameters_bias_ : tensor<10x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%input_182.buf : tensor<10x1024x14x14xf32>) {
        ^bb0(%in_1990: f32, %in_1991: f32, %in_1992: f32, %in_1993: f32, %acc_1994: f32):
          %v1995 = arith.mulf %in_1990, %in_1991 : f32
          %v1996 = arith.subf %v1995, %in_1992 : f32
          %v1997 = arith.addf %v1996, %in_1993 : f32
          %v1998 = arith.maxnumf %init, %v1997 : f32
          linalg.yield %v1998 : f32
      }
    -> tensor<10x1024x14x14xf32>
    %l_self_modules_transition_layers_modules_2_modules_transition_modules_2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_transition_layers_modules_2_modules_transition_modules_2_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 1024, 1, 1] : tensor<512x1024xf32> into tensor<512x1024x1x1xf32>
    %v1999.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v1999.buf = linalg.fill ins(%init : f32) outs(%v1999.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v1999.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_182.buf.out, %l_self_modules_transition_layers_modules_2_modules_transition_modules_2_parameters_weight_.expanded : tensor<10x1024x14x14xf32>, tensor<512x1024x1x1xf32>)
      outs(%v1999.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_2000: f32, %in_2001: f32, %acc_2002: f32):
          %v2003 = arith.mulf %in_2000, %in_2001 : f32
          %v2004 = arith.addf %v2003, %acc_2002 : f32
          linalg.yield %v2004 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_184.empty = tensor.empty() : tensor<10x512x7x7xf32>
    %input_184.buf = linalg.fill ins(%init : f32) outs(%input_184.empty : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %input_184.shape = tensor.empty() : tensor<2xf32>
    %input_184.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v1999.buf.out, %input_184.shape : tensor<10x512x7x2x14xf32>, tensor<2xf32>)
      outs(%input_184.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_2006: f32, %shape_2005: f32, %acc_2007: f32):
          %v2008 = arith.addf %acc_2007, %in_2006 : f32
          linalg.yield %v2008 : f32
      }
    -> tensor<10x512x7x7xf32>
    %input_184.post = tensor.empty() : tensor<10x512x7x7xf32>
    %input_184.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_184.buf.out : tensor<10x512x7x7xf32>)
      outs(%input_184.post : tensor<10x512x7x7xf32>) {
        ^bb0(%acc_2009: f32, %post_2010: f32):
          %v2011 = arith.constant 0.25 : f32
          %v2012 = arith.mulf %v2011, %acc_2009 : f32
          linalg.yield %v2012 : f32
      }
    -> tensor<10x512x7x7xf32>
    %v2013.buf = tensor.empty() : tensor<512xf32>
    %v2013.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v2013.buf : tensor<512xf32>) {
        ^bb0(%in_2014: f32, %in_2015: f32, %acc_2016: f32):
          %v2017 = arith.constant 1.0 : f32
          %v2018 = arith.constant 9.999999747378752e-06 : f32
          %v2019 = arith.addf %v2018, %in_2014 : f32
          %v2020 = math.sqrt %v2019 : f32
          %v2021 = arith.divf %v2017, %v2020 : f32
          %v2022 = arith.mulf %v2021, %in_2015 : f32
          linalg.yield %v2022 : f32
      }
    -> tensor<512xf32>
    %v2023.buf = tensor.empty() : tensor<512xf32>
    %v2023.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v2023.buf : tensor<512xf32>) {
        ^bb0(%in_2024: f32, %in_2025: f32, %in_2026: f32, %acc_2027: f32):
          %v2028 = arith.constant 1.0 : f32
          %v2029 = arith.constant 9.999999747378752e-06 : f32
          %v2030 = arith.addf %v2029, %in_2025 : f32
          %v2031 = math.sqrt %v2030 : f32
          %v2032 = arith.divf %v2028, %v2031 : f32
          %v2033 = arith.mulf %v2032, %in_2026 : f32
          %v2034 = arith.mulf %v2033, %in_2024 : f32
          linalg.yield %v2034 : f32
      }
    -> tensor<512xf32>
    %input_186.buf = tensor.empty() : tensor<10x512x7x7xf32>
    %input_186.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_184.post.out, %v2013.buf.out, %v2023.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_0_parameters_bias_ : tensor<10x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_186.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_2035: f32, %in_2036: f32, %in_2037: f32, %in_2038: f32, %acc_2039: f32):
          %v2040 = arith.mulf %in_2035, %in_2036 : f32
          %v2041 = arith.subf %v2040, %in_2037 : f32
          %v2042 = arith.addf %v2041, %in_2038 : f32
          %v2043 = arith.maxnumf %init, %v2042 : f32
          linalg.yield %v2043 : f32
      }
    -> tensor<10x512x7x7xf32>
    %padded_44 = tensor.pad %input_186.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2044: index, %pad_i2045: index, %pad_i2046: index, %pad_i2047: index):
        tensor.yield %init : f32
    } : tensor<10x512x7x7xf32> to tensor<10x512x9x9xf32>
    %v2048.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2048.buf = linalg.fill ins(%init : f32) outs(%v2048.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2048.shape = tensor.empty() : tensor<7x1xf32>
    %v2048.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_44, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_0_modules_2_parameters_weight_, %v2048.shape : tensor<10x512x9x9xf32>, tensor<32x512x3x3xf32>, tensor<7x1xf32>)
      outs(%v2048.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2050: f32, %in_2051: f32, %shape_2049: f32, %acc_2052: f32):
          %v2053 = arith.mulf %in_2050, %in_2051 : f32
          %v2054 = arith.addf %v2053, %acc_2052 : f32
          linalg.yield %v2054 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_187.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_187.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2048.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_187.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2055: f32, %acc_2056: f32):
          linalg.yield %in_2055 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_42 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x544x7x7xf32>
    %v2057.buf = tensor.empty() : tensor<544xf32>
    %v2057.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<544xf32>, tensor<544xf32>)
      outs(%v2057.buf : tensor<544xf32>) {
        ^bb0(%in_2058: f32, %in_2059: f32, %acc_2060: f32):
          %v2061 = arith.constant 1.0 : f32
          %v2062 = arith.constant 9.999999747378752e-06 : f32
          %v2063 = arith.addf %v2062, %in_2058 : f32
          %v2064 = math.sqrt %v2063 : f32
          %v2065 = arith.divf %v2061, %v2064 : f32
          %v2066 = arith.mulf %v2065, %in_2059 : f32
          linalg.yield %v2066 : f32
      }
    -> tensor<544xf32>
    %v2067.buf = tensor.empty() : tensor<544xf32>
    %v2067.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<544xf32>, tensor<544xf32>, tensor<544xf32>)
      outs(%v2067.buf : tensor<544xf32>) {
        ^bb0(%in_2068: f32, %in_2069: f32, %in_2070: f32, %acc_2071: f32):
          %v2072 = arith.constant 1.0 : f32
          %v2073 = arith.constant 9.999999747378752e-06 : f32
          %v2074 = arith.addf %v2073, %in_2069 : f32
          %v2075 = math.sqrt %v2074 : f32
          %v2076 = arith.divf %v2072, %v2075 : f32
          %v2077 = arith.mulf %v2076, %in_2070 : f32
          %v2078 = arith.mulf %v2077, %in_2068 : f32
          linalg.yield %v2078 : f32
      }
    -> tensor<544xf32>
    %input_190.buf = tensor.empty() : tensor<10x544x7x7xf32>
    %input_190.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_42, %v2057.buf.out, %v2067.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_0_parameters_bias_ : tensor<10x544x7x7xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>)
      outs(%input_190.buf : tensor<10x544x7x7xf32>) {
        ^bb0(%in_2079: f32, %in_2080: f32, %in_2081: f32, %in_2082: f32, %acc_2083: f32):
          %v2084 = arith.mulf %in_2079, %in_2080 : f32
          %v2085 = arith.subf %v2084, %in_2081 : f32
          %v2086 = arith.addf %v2085, %in_2082 : f32
          %v2087 = arith.maxnumf %init, %v2086 : f32
          linalg.yield %v2087 : f32
      }
    -> tensor<10x544x7x7xf32>
    %padded_45 = tensor.pad %input_190.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2088: index, %pad_i2089: index, %pad_i2090: index, %pad_i2091: index):
        tensor.yield %init : f32
    } : tensor<10x544x7x7xf32> to tensor<10x544x9x9xf32>
    %v2092.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2092.buf = linalg.fill ins(%init : f32) outs(%v2092.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2092.shape = tensor.empty() : tensor<7x1xf32>
    %v2092.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_45, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_1_modules_2_parameters_weight_, %v2092.shape : tensor<10x544x9x9xf32>, tensor<32x544x3x3xf32>, tensor<7x1xf32>)
      outs(%v2092.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2094: f32, %in_2095: f32, %shape_2093: f32, %acc_2096: f32):
          %v2097 = arith.mulf %in_2094, %in_2095 : f32
          %v2098 = arith.addf %v2097, %acc_2096 : f32
          linalg.yield %v2098 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_191.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_191.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2092.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_191.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2099: f32, %acc_2100: f32):
          linalg.yield %in_2099 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_43 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x576x7x7xf32>
    %v2101.buf = tensor.empty() : tensor<576xf32>
    %v2101.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<576xf32>, tensor<576xf32>)
      outs(%v2101.buf : tensor<576xf32>) {
        ^bb0(%in_2102: f32, %in_2103: f32, %acc_2104: f32):
          %v2105 = arith.constant 1.0 : f32
          %v2106 = arith.constant 9.999999747378752e-06 : f32
          %v2107 = arith.addf %v2106, %in_2102 : f32
          %v2108 = math.sqrt %v2107 : f32
          %v2109 = arith.divf %v2105, %v2108 : f32
          %v2110 = arith.mulf %v2109, %in_2103 : f32
          linalg.yield %v2110 : f32
      }
    -> tensor<576xf32>
    %v2111.buf = tensor.empty() : tensor<576xf32>
    %v2111.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%v2111.buf : tensor<576xf32>) {
        ^bb0(%in_2112: f32, %in_2113: f32, %in_2114: f32, %acc_2115: f32):
          %v2116 = arith.constant 1.0 : f32
          %v2117 = arith.constant 9.999999747378752e-06 : f32
          %v2118 = arith.addf %v2117, %in_2113 : f32
          %v2119 = math.sqrt %v2118 : f32
          %v2120 = arith.divf %v2116, %v2119 : f32
          %v2121 = arith.mulf %v2120, %in_2114 : f32
          %v2122 = arith.mulf %v2121, %in_2112 : f32
          linalg.yield %v2122 : f32
      }
    -> tensor<576xf32>
    %input_194.buf = tensor.empty() : tensor<10x576x7x7xf32>
    %input_194.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_43, %v2101.buf.out, %v2111.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_0_parameters_bias_ : tensor<10x576x7x7xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>)
      outs(%input_194.buf : tensor<10x576x7x7xf32>) {
        ^bb0(%in_2123: f32, %in_2124: f32, %in_2125: f32, %in_2126: f32, %acc_2127: f32):
          %v2128 = arith.mulf %in_2123, %in_2124 : f32
          %v2129 = arith.subf %v2128, %in_2125 : f32
          %v2130 = arith.addf %v2129, %in_2126 : f32
          %v2131 = arith.maxnumf %init, %v2130 : f32
          linalg.yield %v2131 : f32
      }
    -> tensor<10x576x7x7xf32>
    %padded_46 = tensor.pad %input_194.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2132: index, %pad_i2133: index, %pad_i2134: index, %pad_i2135: index):
        tensor.yield %init : f32
    } : tensor<10x576x7x7xf32> to tensor<10x576x9x9xf32>
    %v2136.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2136.buf = linalg.fill ins(%init : f32) outs(%v2136.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2136.shape = tensor.empty() : tensor<7x1xf32>
    %v2136.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_46, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_2_modules_2_parameters_weight_, %v2136.shape : tensor<10x576x9x9xf32>, tensor<32x576x3x3xf32>, tensor<7x1xf32>)
      outs(%v2136.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2138: f32, %in_2139: f32, %shape_2137: f32, %acc_2140: f32):
          %v2141 = arith.mulf %in_2138, %in_2139 : f32
          %v2142 = arith.addf %v2141, %acc_2140 : f32
          linalg.yield %v2142 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_195.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_195.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2136.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_195.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2143: f32, %acc_2144: f32):
          linalg.yield %in_2143 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_44 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x608x7x7xf32>
    %v2145.buf = tensor.empty() : tensor<608xf32>
    %v2145.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<608xf32>, tensor<608xf32>)
      outs(%v2145.buf : tensor<608xf32>) {
        ^bb0(%in_2146: f32, %in_2147: f32, %acc_2148: f32):
          %v2149 = arith.constant 1.0 : f32
          %v2150 = arith.constant 9.999999747378752e-06 : f32
          %v2151 = arith.addf %v2150, %in_2146 : f32
          %v2152 = math.sqrt %v2151 : f32
          %v2153 = arith.divf %v2149, %v2152 : f32
          %v2154 = arith.mulf %v2153, %in_2147 : f32
          linalg.yield %v2154 : f32
      }
    -> tensor<608xf32>
    %v2155.buf = tensor.empty() : tensor<608xf32>
    %v2155.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<608xf32>, tensor<608xf32>, tensor<608xf32>)
      outs(%v2155.buf : tensor<608xf32>) {
        ^bb0(%in_2156: f32, %in_2157: f32, %in_2158: f32, %acc_2159: f32):
          %v2160 = arith.constant 1.0 : f32
          %v2161 = arith.constant 9.999999747378752e-06 : f32
          %v2162 = arith.addf %v2161, %in_2157 : f32
          %v2163 = math.sqrt %v2162 : f32
          %v2164 = arith.divf %v2160, %v2163 : f32
          %v2165 = arith.mulf %v2164, %in_2158 : f32
          %v2166 = arith.mulf %v2165, %in_2156 : f32
          linalg.yield %v2166 : f32
      }
    -> tensor<608xf32>
    %input_198.buf = tensor.empty() : tensor<10x608x7x7xf32>
    %input_198.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_44, %v2145.buf.out, %v2155.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_0_parameters_bias_ : tensor<10x608x7x7xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>)
      outs(%input_198.buf : tensor<10x608x7x7xf32>) {
        ^bb0(%in_2167: f32, %in_2168: f32, %in_2169: f32, %in_2170: f32, %acc_2171: f32):
          %v2172 = arith.mulf %in_2167, %in_2168 : f32
          %v2173 = arith.subf %v2172, %in_2169 : f32
          %v2174 = arith.addf %v2173, %in_2170 : f32
          %v2175 = arith.maxnumf %init, %v2174 : f32
          linalg.yield %v2175 : f32
      }
    -> tensor<10x608x7x7xf32>
    %padded_47 = tensor.pad %input_198.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2176: index, %pad_i2177: index, %pad_i2178: index, %pad_i2179: index):
        tensor.yield %init : f32
    } : tensor<10x608x7x7xf32> to tensor<10x608x9x9xf32>
    %v2180.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2180.buf = linalg.fill ins(%init : f32) outs(%v2180.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2180.shape = tensor.empty() : tensor<7x1xf32>
    %v2180.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_47, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_3_modules_2_parameters_weight_, %v2180.shape : tensor<10x608x9x9xf32>, tensor<32x608x3x3xf32>, tensor<7x1xf32>)
      outs(%v2180.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2182: f32, %in_2183: f32, %shape_2181: f32, %acc_2184: f32):
          %v2185 = arith.mulf %in_2182, %in_2183 : f32
          %v2186 = arith.addf %v2185, %acc_2184 : f32
          linalg.yield %v2186 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_199.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_199.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2180.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_199.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2187: f32, %acc_2188: f32):
          linalg.yield %in_2187 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_45 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x640x7x7xf32>
    %v2189.buf = tensor.empty() : tensor<640xf32>
    %v2189.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<640xf32>, tensor<640xf32>)
      outs(%v2189.buf : tensor<640xf32>) {
        ^bb0(%in_2190: f32, %in_2191: f32, %acc_2192: f32):
          %v2193 = arith.constant 1.0 : f32
          %v2194 = arith.constant 9.999999747378752e-06 : f32
          %v2195 = arith.addf %v2194, %in_2190 : f32
          %v2196 = math.sqrt %v2195 : f32
          %v2197 = arith.divf %v2193, %v2196 : f32
          %v2198 = arith.mulf %v2197, %in_2191 : f32
          linalg.yield %v2198 : f32
      }
    -> tensor<640xf32>
    %v2199.buf = tensor.empty() : tensor<640xf32>
    %v2199.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<640xf32>, tensor<640xf32>, tensor<640xf32>)
      outs(%v2199.buf : tensor<640xf32>) {
        ^bb0(%in_2200: f32, %in_2201: f32, %in_2202: f32, %acc_2203: f32):
          %v2204 = arith.constant 1.0 : f32
          %v2205 = arith.constant 9.999999747378752e-06 : f32
          %v2206 = arith.addf %v2205, %in_2201 : f32
          %v2207 = math.sqrt %v2206 : f32
          %v2208 = arith.divf %v2204, %v2207 : f32
          %v2209 = arith.mulf %v2208, %in_2202 : f32
          %v2210 = arith.mulf %v2209, %in_2200 : f32
          linalg.yield %v2210 : f32
      }
    -> tensor<640xf32>
    %input_202.buf = tensor.empty() : tensor<10x640x7x7xf32>
    %input_202.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_45, %v2189.buf.out, %v2199.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_0_parameters_bias_ : tensor<10x640x7x7xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>)
      outs(%input_202.buf : tensor<10x640x7x7xf32>) {
        ^bb0(%in_2211: f32, %in_2212: f32, %in_2213: f32, %in_2214: f32, %acc_2215: f32):
          %v2216 = arith.mulf %in_2211, %in_2212 : f32
          %v2217 = arith.subf %v2216, %in_2213 : f32
          %v2218 = arith.addf %v2217, %in_2214 : f32
          %v2219 = arith.maxnumf %init, %v2218 : f32
          linalg.yield %v2219 : f32
      }
    -> tensor<10x640x7x7xf32>
    %padded_48 = tensor.pad %input_202.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2220: index, %pad_i2221: index, %pad_i2222: index, %pad_i2223: index):
        tensor.yield %init : f32
    } : tensor<10x640x7x7xf32> to tensor<10x640x9x9xf32>
    %v2224.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2224.buf = linalg.fill ins(%init : f32) outs(%v2224.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2224.shape = tensor.empty() : tensor<7x1xf32>
    %v2224.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_48, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_4_modules_2_parameters_weight_, %v2224.shape : tensor<10x640x9x9xf32>, tensor<32x640x3x3xf32>, tensor<7x1xf32>)
      outs(%v2224.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2226: f32, %in_2227: f32, %shape_2225: f32, %acc_2228: f32):
          %v2229 = arith.mulf %in_2226, %in_2227 : f32
          %v2230 = arith.addf %v2229, %acc_2228 : f32
          linalg.yield %v2230 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_203.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_203.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2224.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_203.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2231: f32, %acc_2232: f32):
          linalg.yield %in_2231 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_46 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x672x7x7xf32>
    %v2233.buf = tensor.empty() : tensor<672xf32>
    %v2233.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v2233.buf : tensor<672xf32>) {
        ^bb0(%in_2234: f32, %in_2235: f32, %acc_2236: f32):
          %v2237 = arith.constant 1.0 : f32
          %v2238 = arith.constant 9.999999747378752e-06 : f32
          %v2239 = arith.addf %v2238, %in_2234 : f32
          %v2240 = math.sqrt %v2239 : f32
          %v2241 = arith.divf %v2237, %v2240 : f32
          %v2242 = arith.mulf %v2241, %in_2235 : f32
          linalg.yield %v2242 : f32
      }
    -> tensor<672xf32>
    %v2243.buf = tensor.empty() : tensor<672xf32>
    %v2243.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v2243.buf : tensor<672xf32>) {
        ^bb0(%in_2244: f32, %in_2245: f32, %in_2246: f32, %acc_2247: f32):
          %v2248 = arith.constant 1.0 : f32
          %v2249 = arith.constant 9.999999747378752e-06 : f32
          %v2250 = arith.addf %v2249, %in_2245 : f32
          %v2251 = math.sqrt %v2250 : f32
          %v2252 = arith.divf %v2248, %v2251 : f32
          %v2253 = arith.mulf %v2252, %in_2246 : f32
          %v2254 = arith.mulf %v2253, %in_2244 : f32
          linalg.yield %v2254 : f32
      }
    -> tensor<672xf32>
    %input_206.buf = tensor.empty() : tensor<10x672x7x7xf32>
    %input_206.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_46, %v2233.buf.out, %v2243.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_0_parameters_bias_ : tensor<10x672x7x7xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%input_206.buf : tensor<10x672x7x7xf32>) {
        ^bb0(%in_2255: f32, %in_2256: f32, %in_2257: f32, %in_2258: f32, %acc_2259: f32):
          %v2260 = arith.mulf %in_2255, %in_2256 : f32
          %v2261 = arith.subf %v2260, %in_2257 : f32
          %v2262 = arith.addf %v2261, %in_2258 : f32
          %v2263 = arith.maxnumf %init, %v2262 : f32
          linalg.yield %v2263 : f32
      }
    -> tensor<10x672x7x7xf32>
    %padded_49 = tensor.pad %input_206.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2264: index, %pad_i2265: index, %pad_i2266: index, %pad_i2267: index):
        tensor.yield %init : f32
    } : tensor<10x672x7x7xf32> to tensor<10x672x9x9xf32>
    %v2268.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2268.buf = linalg.fill ins(%init : f32) outs(%v2268.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2268.shape = tensor.empty() : tensor<7x1xf32>
    %v2268.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_49, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_5_modules_2_parameters_weight_, %v2268.shape : tensor<10x672x9x9xf32>, tensor<32x672x3x3xf32>, tensor<7x1xf32>)
      outs(%v2268.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2270: f32, %in_2271: f32, %shape_2269: f32, %acc_2272: f32):
          %v2273 = arith.mulf %in_2270, %in_2271 : f32
          %v2274 = arith.addf %v2273, %acc_2272 : f32
          linalg.yield %v2274 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_207.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_207.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2268.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_207.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2275: f32, %acc_2276: f32):
          linalg.yield %in_2275 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_47 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x704x7x7xf32>
    %v2277.buf = tensor.empty() : tensor<704xf32>
    %v2277.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_parameters_weight_ : tensor<704xf32>, tensor<704xf32>)
      outs(%v2277.buf : tensor<704xf32>) {
        ^bb0(%in_2278: f32, %in_2279: f32, %acc_2280: f32):
          %v2281 = arith.constant 1.0 : f32
          %v2282 = arith.constant 9.999999747378752e-06 : f32
          %v2283 = arith.addf %v2282, %in_2278 : f32
          %v2284 = math.sqrt %v2283 : f32
          %v2285 = arith.divf %v2281, %v2284 : f32
          %v2286 = arith.mulf %v2285, %in_2279 : f32
          linalg.yield %v2286 : f32
      }
    -> tensor<704xf32>
    %v2287.buf = tensor.empty() : tensor<704xf32>
    %v2287.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_parameters_weight_ : tensor<704xf32>, tensor<704xf32>, tensor<704xf32>)
      outs(%v2287.buf : tensor<704xf32>) {
        ^bb0(%in_2288: f32, %in_2289: f32, %in_2290: f32, %acc_2291: f32):
          %v2292 = arith.constant 1.0 : f32
          %v2293 = arith.constant 9.999999747378752e-06 : f32
          %v2294 = arith.addf %v2293, %in_2289 : f32
          %v2295 = math.sqrt %v2294 : f32
          %v2296 = arith.divf %v2292, %v2295 : f32
          %v2297 = arith.mulf %v2296, %in_2290 : f32
          %v2298 = arith.mulf %v2297, %in_2288 : f32
          linalg.yield %v2298 : f32
      }
    -> tensor<704xf32>
    %input_210.buf = tensor.empty() : tensor<10x704x7x7xf32>
    %input_210.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_47, %v2277.buf.out, %v2287.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_0_parameters_bias_ : tensor<10x704x7x7xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>)
      outs(%input_210.buf : tensor<10x704x7x7xf32>) {
        ^bb0(%in_2299: f32, %in_2300: f32, %in_2301: f32, %in_2302: f32, %acc_2303: f32):
          %v2304 = arith.mulf %in_2299, %in_2300 : f32
          %v2305 = arith.subf %v2304, %in_2301 : f32
          %v2306 = arith.addf %v2305, %in_2302 : f32
          %v2307 = arith.maxnumf %init, %v2306 : f32
          linalg.yield %v2307 : f32
      }
    -> tensor<10x704x7x7xf32>
    %padded_50 = tensor.pad %input_210.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2308: index, %pad_i2309: index, %pad_i2310: index, %pad_i2311: index):
        tensor.yield %init : f32
    } : tensor<10x704x7x7xf32> to tensor<10x704x9x9xf32>
    %v2312.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2312.buf = linalg.fill ins(%init : f32) outs(%v2312.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2312.shape = tensor.empty() : tensor<7x1xf32>
    %v2312.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_50, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_6_modules_2_parameters_weight_, %v2312.shape : tensor<10x704x9x9xf32>, tensor<32x704x3x3xf32>, tensor<7x1xf32>)
      outs(%v2312.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2314: f32, %in_2315: f32, %shape_2313: f32, %acc_2316: f32):
          %v2317 = arith.mulf %in_2314, %in_2315 : f32
          %v2318 = arith.addf %v2317, %acc_2316 : f32
          linalg.yield %v2318 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_211.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_211.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2312.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_211.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2319: f32, %acc_2320: f32):
          linalg.yield %in_2319 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_48 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x736x7x7xf32>
    %v2321.buf = tensor.empty() : tensor<736xf32>
    %v2321.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_parameters_weight_ : tensor<736xf32>, tensor<736xf32>)
      outs(%v2321.buf : tensor<736xf32>) {
        ^bb0(%in_2322: f32, %in_2323: f32, %acc_2324: f32):
          %v2325 = arith.constant 1.0 : f32
          %v2326 = arith.constant 9.999999747378752e-06 : f32
          %v2327 = arith.addf %v2326, %in_2322 : f32
          %v2328 = math.sqrt %v2327 : f32
          %v2329 = arith.divf %v2325, %v2328 : f32
          %v2330 = arith.mulf %v2329, %in_2323 : f32
          linalg.yield %v2330 : f32
      }
    -> tensor<736xf32>
    %v2331.buf = tensor.empty() : tensor<736xf32>
    %v2331.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_parameters_weight_ : tensor<736xf32>, tensor<736xf32>, tensor<736xf32>)
      outs(%v2331.buf : tensor<736xf32>) {
        ^bb0(%in_2332: f32, %in_2333: f32, %in_2334: f32, %acc_2335: f32):
          %v2336 = arith.constant 1.0 : f32
          %v2337 = arith.constant 9.999999747378752e-06 : f32
          %v2338 = arith.addf %v2337, %in_2333 : f32
          %v2339 = math.sqrt %v2338 : f32
          %v2340 = arith.divf %v2336, %v2339 : f32
          %v2341 = arith.mulf %v2340, %in_2334 : f32
          %v2342 = arith.mulf %v2341, %in_2332 : f32
          linalg.yield %v2342 : f32
      }
    -> tensor<736xf32>
    %input_214.buf = tensor.empty() : tensor<10x736x7x7xf32>
    %input_214.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_48, %v2321.buf.out, %v2331.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_0_parameters_bias_ : tensor<10x736x7x7xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>)
      outs(%input_214.buf : tensor<10x736x7x7xf32>) {
        ^bb0(%in_2343: f32, %in_2344: f32, %in_2345: f32, %in_2346: f32, %acc_2347: f32):
          %v2348 = arith.mulf %in_2343, %in_2344 : f32
          %v2349 = arith.subf %v2348, %in_2345 : f32
          %v2350 = arith.addf %v2349, %in_2346 : f32
          %v2351 = arith.maxnumf %init, %v2350 : f32
          linalg.yield %v2351 : f32
      }
    -> tensor<10x736x7x7xf32>
    %padded_51 = tensor.pad %input_214.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2352: index, %pad_i2353: index, %pad_i2354: index, %pad_i2355: index):
        tensor.yield %init : f32
    } : tensor<10x736x7x7xf32> to tensor<10x736x9x9xf32>
    %v2356.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2356.buf = linalg.fill ins(%init : f32) outs(%v2356.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2356.shape = tensor.empty() : tensor<7x1xf32>
    %v2356.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_51, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_7_modules_2_parameters_weight_, %v2356.shape : tensor<10x736x9x9xf32>, tensor<32x736x3x3xf32>, tensor<7x1xf32>)
      outs(%v2356.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2358: f32, %in_2359: f32, %shape_2357: f32, %acc_2360: f32):
          %v2361 = arith.mulf %in_2358, %in_2359 : f32
          %v2362 = arith.addf %v2361, %acc_2360 : f32
          linalg.yield %v2362 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_215.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_215.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2356.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_215.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2363: f32, %acc_2364: f32):
          linalg.yield %in_2363 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_49 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x768x7x7xf32>
    %v2365.buf = tensor.empty() : tensor<768xf32>
    %v2365.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_parameters_weight_ : tensor<768xf32>, tensor<768xf32>)
      outs(%v2365.buf : tensor<768xf32>) {
        ^bb0(%in_2366: f32, %in_2367: f32, %acc_2368: f32):
          %v2369 = arith.constant 1.0 : f32
          %v2370 = arith.constant 9.999999747378752e-06 : f32
          %v2371 = arith.addf %v2370, %in_2366 : f32
          %v2372 = math.sqrt %v2371 : f32
          %v2373 = arith.divf %v2369, %v2372 : f32
          %v2374 = arith.mulf %v2373, %in_2367 : f32
          linalg.yield %v2374 : f32
      }
    -> tensor<768xf32>
    %v2375.buf = tensor.empty() : tensor<768xf32>
    %v2375.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_parameters_weight_ : tensor<768xf32>, tensor<768xf32>, tensor<768xf32>)
      outs(%v2375.buf : tensor<768xf32>) {
        ^bb0(%in_2376: f32, %in_2377: f32, %in_2378: f32, %acc_2379: f32):
          %v2380 = arith.constant 1.0 : f32
          %v2381 = arith.constant 9.999999747378752e-06 : f32
          %v2382 = arith.addf %v2381, %in_2377 : f32
          %v2383 = math.sqrt %v2382 : f32
          %v2384 = arith.divf %v2380, %v2383 : f32
          %v2385 = arith.mulf %v2384, %in_2378 : f32
          %v2386 = arith.mulf %v2385, %in_2376 : f32
          linalg.yield %v2386 : f32
      }
    -> tensor<768xf32>
    %input_218.buf = tensor.empty() : tensor<10x768x7x7xf32>
    %input_218.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_49, %v2365.buf.out, %v2375.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_0_parameters_bias_ : tensor<10x768x7x7xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>)
      outs(%input_218.buf : tensor<10x768x7x7xf32>) {
        ^bb0(%in_2387: f32, %in_2388: f32, %in_2389: f32, %in_2390: f32, %acc_2391: f32):
          %v2392 = arith.mulf %in_2387, %in_2388 : f32
          %v2393 = arith.subf %v2392, %in_2389 : f32
          %v2394 = arith.addf %v2393, %in_2390 : f32
          %v2395 = arith.maxnumf %init, %v2394 : f32
          linalg.yield %v2395 : f32
      }
    -> tensor<10x768x7x7xf32>
    %padded_52 = tensor.pad %input_218.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2396: index, %pad_i2397: index, %pad_i2398: index, %pad_i2399: index):
        tensor.yield %init : f32
    } : tensor<10x768x7x7xf32> to tensor<10x768x9x9xf32>
    %v2400.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2400.buf = linalg.fill ins(%init : f32) outs(%v2400.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2400.shape = tensor.empty() : tensor<7x1xf32>
    %v2400.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_52, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_8_modules_2_parameters_weight_, %v2400.shape : tensor<10x768x9x9xf32>, tensor<32x768x3x3xf32>, tensor<7x1xf32>)
      outs(%v2400.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2402: f32, %in_2403: f32, %shape_2401: f32, %acc_2404: f32):
          %v2405 = arith.mulf %in_2402, %in_2403 : f32
          %v2406 = arith.addf %v2405, %acc_2404 : f32
          linalg.yield %v2406 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_219.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_219.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2400.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_219.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2407: f32, %acc_2408: f32):
          linalg.yield %in_2407 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_50 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x800x7x7xf32>
    %v2409.buf = tensor.empty() : tensor<800xf32>
    %v2409.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_parameters_weight_ : tensor<800xf32>, tensor<800xf32>)
      outs(%v2409.buf : tensor<800xf32>) {
        ^bb0(%in_2410: f32, %in_2411: f32, %acc_2412: f32):
          %v2413 = arith.constant 1.0 : f32
          %v2414 = arith.constant 9.999999747378752e-06 : f32
          %v2415 = arith.addf %v2414, %in_2410 : f32
          %v2416 = math.sqrt %v2415 : f32
          %v2417 = arith.divf %v2413, %v2416 : f32
          %v2418 = arith.mulf %v2417, %in_2411 : f32
          linalg.yield %v2418 : f32
      }
    -> tensor<800xf32>
    %v2419.buf = tensor.empty() : tensor<800xf32>
    %v2419.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_parameters_weight_ : tensor<800xf32>, tensor<800xf32>, tensor<800xf32>)
      outs(%v2419.buf : tensor<800xf32>) {
        ^bb0(%in_2420: f32, %in_2421: f32, %in_2422: f32, %acc_2423: f32):
          %v2424 = arith.constant 1.0 : f32
          %v2425 = arith.constant 9.999999747378752e-06 : f32
          %v2426 = arith.addf %v2425, %in_2421 : f32
          %v2427 = math.sqrt %v2426 : f32
          %v2428 = arith.divf %v2424, %v2427 : f32
          %v2429 = arith.mulf %v2428, %in_2422 : f32
          %v2430 = arith.mulf %v2429, %in_2420 : f32
          linalg.yield %v2430 : f32
      }
    -> tensor<800xf32>
    %input_222.buf = tensor.empty() : tensor<10x800x7x7xf32>
    %input_222.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_50, %v2409.buf.out, %v2419.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_0_parameters_bias_ : tensor<10x800x7x7xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>)
      outs(%input_222.buf : tensor<10x800x7x7xf32>) {
        ^bb0(%in_2431: f32, %in_2432: f32, %in_2433: f32, %in_2434: f32, %acc_2435: f32):
          %v2436 = arith.mulf %in_2431, %in_2432 : f32
          %v2437 = arith.subf %v2436, %in_2433 : f32
          %v2438 = arith.addf %v2437, %in_2434 : f32
          %v2439 = arith.maxnumf %init, %v2438 : f32
          linalg.yield %v2439 : f32
      }
    -> tensor<10x800x7x7xf32>
    %padded_53 = tensor.pad %input_222.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2440: index, %pad_i2441: index, %pad_i2442: index, %pad_i2443: index):
        tensor.yield %init : f32
    } : tensor<10x800x7x7xf32> to tensor<10x800x9x9xf32>
    %v2444.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2444.buf = linalg.fill ins(%init : f32) outs(%v2444.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2444.shape = tensor.empty() : tensor<7x1xf32>
    %v2444.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_53, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_9_modules_2_parameters_weight_, %v2444.shape : tensor<10x800x9x9xf32>, tensor<32x800x3x3xf32>, tensor<7x1xf32>)
      outs(%v2444.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2446: f32, %in_2447: f32, %shape_2445: f32, %acc_2448: f32):
          %v2449 = arith.mulf %in_2446, %in_2447 : f32
          %v2450 = arith.addf %v2449, %acc_2448 : f32
          linalg.yield %v2450 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_223.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_223.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2444.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_223.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2451: f32, %acc_2452: f32):
          linalg.yield %in_2451 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_51 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out, %input_223.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x832x7x7xf32>
    %v2453.buf = tensor.empty() : tensor<832xf32>
    %v2453.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_parameters_weight_ : tensor<832xf32>, tensor<832xf32>)
      outs(%v2453.buf : tensor<832xf32>) {
        ^bb0(%in_2454: f32, %in_2455: f32, %acc_2456: f32):
          %v2457 = arith.constant 1.0 : f32
          %v2458 = arith.constant 9.999999747378752e-06 : f32
          %v2459 = arith.addf %v2458, %in_2454 : f32
          %v2460 = math.sqrt %v2459 : f32
          %v2461 = arith.divf %v2457, %v2460 : f32
          %v2462 = arith.mulf %v2461, %in_2455 : f32
          linalg.yield %v2462 : f32
      }
    -> tensor<832xf32>
    %v2463.buf = tensor.empty() : tensor<832xf32>
    %v2463.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_parameters_weight_ : tensor<832xf32>, tensor<832xf32>, tensor<832xf32>)
      outs(%v2463.buf : tensor<832xf32>) {
        ^bb0(%in_2464: f32, %in_2465: f32, %in_2466: f32, %acc_2467: f32):
          %v2468 = arith.constant 1.0 : f32
          %v2469 = arith.constant 9.999999747378752e-06 : f32
          %v2470 = arith.addf %v2469, %in_2465 : f32
          %v2471 = math.sqrt %v2470 : f32
          %v2472 = arith.divf %v2468, %v2471 : f32
          %v2473 = arith.mulf %v2472, %in_2466 : f32
          %v2474 = arith.mulf %v2473, %in_2464 : f32
          linalg.yield %v2474 : f32
      }
    -> tensor<832xf32>
    %input_226.buf = tensor.empty() : tensor<10x832x7x7xf32>
    %input_226.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_51, %v2453.buf.out, %v2463.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_0_parameters_bias_ : tensor<10x832x7x7xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>)
      outs(%input_226.buf : tensor<10x832x7x7xf32>) {
        ^bb0(%in_2475: f32, %in_2476: f32, %in_2477: f32, %in_2478: f32, %acc_2479: f32):
          %v2480 = arith.mulf %in_2475, %in_2476 : f32
          %v2481 = arith.subf %v2480, %in_2477 : f32
          %v2482 = arith.addf %v2481, %in_2478 : f32
          %v2483 = arith.maxnumf %init, %v2482 : f32
          linalg.yield %v2483 : f32
      }
    -> tensor<10x832x7x7xf32>
    %padded_54 = tensor.pad %input_226.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2484: index, %pad_i2485: index, %pad_i2486: index, %pad_i2487: index):
        tensor.yield %init : f32
    } : tensor<10x832x7x7xf32> to tensor<10x832x9x9xf32>
    %v2488.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2488.buf = linalg.fill ins(%init : f32) outs(%v2488.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2488.shape = tensor.empty() : tensor<7x1xf32>
    %v2488.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_54, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_10_modules_2_parameters_weight_, %v2488.shape : tensor<10x832x9x9xf32>, tensor<32x832x3x3xf32>, tensor<7x1xf32>)
      outs(%v2488.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2490: f32, %in_2491: f32, %shape_2489: f32, %acc_2492: f32):
          %v2493 = arith.mulf %in_2490, %in_2491 : f32
          %v2494 = arith.addf %v2493, %acc_2492 : f32
          linalg.yield %v2494 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_227.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_227.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2488.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_227.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2495: f32, %acc_2496: f32):
          linalg.yield %in_2495 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_52 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out, %input_223.buf.out, %input_227.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x864x7x7xf32>
    %v2497.buf = tensor.empty() : tensor<864xf32>
    %v2497.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_parameters_weight_ : tensor<864xf32>, tensor<864xf32>)
      outs(%v2497.buf : tensor<864xf32>) {
        ^bb0(%in_2498: f32, %in_2499: f32, %acc_2500: f32):
          %v2501 = arith.constant 1.0 : f32
          %v2502 = arith.constant 9.999999747378752e-06 : f32
          %v2503 = arith.addf %v2502, %in_2498 : f32
          %v2504 = math.sqrt %v2503 : f32
          %v2505 = arith.divf %v2501, %v2504 : f32
          %v2506 = arith.mulf %v2505, %in_2499 : f32
          linalg.yield %v2506 : f32
      }
    -> tensor<864xf32>
    %v2507.buf = tensor.empty() : tensor<864xf32>
    %v2507.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_parameters_weight_ : tensor<864xf32>, tensor<864xf32>, tensor<864xf32>)
      outs(%v2507.buf : tensor<864xf32>) {
        ^bb0(%in_2508: f32, %in_2509: f32, %in_2510: f32, %acc_2511: f32):
          %v2512 = arith.constant 1.0 : f32
          %v2513 = arith.constant 9.999999747378752e-06 : f32
          %v2514 = arith.addf %v2513, %in_2509 : f32
          %v2515 = math.sqrt %v2514 : f32
          %v2516 = arith.divf %v2512, %v2515 : f32
          %v2517 = arith.mulf %v2516, %in_2510 : f32
          %v2518 = arith.mulf %v2517, %in_2508 : f32
          linalg.yield %v2518 : f32
      }
    -> tensor<864xf32>
    %input_230.buf = tensor.empty() : tensor<10x864x7x7xf32>
    %input_230.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_52, %v2497.buf.out, %v2507.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_0_parameters_bias_ : tensor<10x864x7x7xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>)
      outs(%input_230.buf : tensor<10x864x7x7xf32>) {
        ^bb0(%in_2519: f32, %in_2520: f32, %in_2521: f32, %in_2522: f32, %acc_2523: f32):
          %v2524 = arith.mulf %in_2519, %in_2520 : f32
          %v2525 = arith.subf %v2524, %in_2521 : f32
          %v2526 = arith.addf %v2525, %in_2522 : f32
          %v2527 = arith.maxnumf %init, %v2526 : f32
          linalg.yield %v2527 : f32
      }
    -> tensor<10x864x7x7xf32>
    %padded_55 = tensor.pad %input_230.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2528: index, %pad_i2529: index, %pad_i2530: index, %pad_i2531: index):
        tensor.yield %init : f32
    } : tensor<10x864x7x7xf32> to tensor<10x864x9x9xf32>
    %v2532.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2532.buf = linalg.fill ins(%init : f32) outs(%v2532.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2532.shape = tensor.empty() : tensor<7x1xf32>
    %v2532.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_55, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_11_modules_2_parameters_weight_, %v2532.shape : tensor<10x864x9x9xf32>, tensor<32x864x3x3xf32>, tensor<7x1xf32>)
      outs(%v2532.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2534: f32, %in_2535: f32, %shape_2533: f32, %acc_2536: f32):
          %v2537 = arith.mulf %in_2534, %in_2535 : f32
          %v2538 = arith.addf %v2537, %acc_2536 : f32
          linalg.yield %v2538 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_231.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_231.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2532.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_231.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2539: f32, %acc_2540: f32):
          linalg.yield %in_2539 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_53 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out, %input_223.buf.out, %input_227.buf.out, %input_231.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x896x7x7xf32>
    %v2541.buf = tensor.empty() : tensor<896xf32>
    %v2541.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_parameters_weight_ : tensor<896xf32>, tensor<896xf32>)
      outs(%v2541.buf : tensor<896xf32>) {
        ^bb0(%in_2542: f32, %in_2543: f32, %acc_2544: f32):
          %v2545 = arith.constant 1.0 : f32
          %v2546 = arith.constant 9.999999747378752e-06 : f32
          %v2547 = arith.addf %v2546, %in_2542 : f32
          %v2548 = math.sqrt %v2547 : f32
          %v2549 = arith.divf %v2545, %v2548 : f32
          %v2550 = arith.mulf %v2549, %in_2543 : f32
          linalg.yield %v2550 : f32
      }
    -> tensor<896xf32>
    %v2551.buf = tensor.empty() : tensor<896xf32>
    %v2551.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_parameters_weight_ : tensor<896xf32>, tensor<896xf32>, tensor<896xf32>)
      outs(%v2551.buf : tensor<896xf32>) {
        ^bb0(%in_2552: f32, %in_2553: f32, %in_2554: f32, %acc_2555: f32):
          %v2556 = arith.constant 1.0 : f32
          %v2557 = arith.constant 9.999999747378752e-06 : f32
          %v2558 = arith.addf %v2557, %in_2553 : f32
          %v2559 = math.sqrt %v2558 : f32
          %v2560 = arith.divf %v2556, %v2559 : f32
          %v2561 = arith.mulf %v2560, %in_2554 : f32
          %v2562 = arith.mulf %v2561, %in_2552 : f32
          linalg.yield %v2562 : f32
      }
    -> tensor<896xf32>
    %input_234.buf = tensor.empty() : tensor<10x896x7x7xf32>
    %input_234.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_53, %v2541.buf.out, %v2551.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_0_parameters_bias_ : tensor<10x896x7x7xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>)
      outs(%input_234.buf : tensor<10x896x7x7xf32>) {
        ^bb0(%in_2563: f32, %in_2564: f32, %in_2565: f32, %in_2566: f32, %acc_2567: f32):
          %v2568 = arith.mulf %in_2563, %in_2564 : f32
          %v2569 = arith.subf %v2568, %in_2565 : f32
          %v2570 = arith.addf %v2569, %in_2566 : f32
          %v2571 = arith.maxnumf %init, %v2570 : f32
          linalg.yield %v2571 : f32
      }
    -> tensor<10x896x7x7xf32>
    %padded_56 = tensor.pad %input_234.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2572: index, %pad_i2573: index, %pad_i2574: index, %pad_i2575: index):
        tensor.yield %init : f32
    } : tensor<10x896x7x7xf32> to tensor<10x896x9x9xf32>
    %v2576.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2576.buf = linalg.fill ins(%init : f32) outs(%v2576.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2576.shape = tensor.empty() : tensor<7x1xf32>
    %v2576.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_56, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_12_modules_2_parameters_weight_, %v2576.shape : tensor<10x896x9x9xf32>, tensor<32x896x3x3xf32>, tensor<7x1xf32>)
      outs(%v2576.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2578: f32, %in_2579: f32, %shape_2577: f32, %acc_2580: f32):
          %v2581 = arith.mulf %in_2578, %in_2579 : f32
          %v2582 = arith.addf %v2581, %acc_2580 : f32
          linalg.yield %v2582 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_235.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_235.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2576.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_235.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2583: f32, %acc_2584: f32):
          linalg.yield %in_2583 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_54 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out, %input_223.buf.out, %input_227.buf.out, %input_231.buf.out, %input_235.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x928x7x7xf32>
    %v2585.buf = tensor.empty() : tensor<928xf32>
    %v2585.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_parameters_weight_ : tensor<928xf32>, tensor<928xf32>)
      outs(%v2585.buf : tensor<928xf32>) {
        ^bb0(%in_2586: f32, %in_2587: f32, %acc_2588: f32):
          %v2589 = arith.constant 1.0 : f32
          %v2590 = arith.constant 9.999999747378752e-06 : f32
          %v2591 = arith.addf %v2590, %in_2586 : f32
          %v2592 = math.sqrt %v2591 : f32
          %v2593 = arith.divf %v2589, %v2592 : f32
          %v2594 = arith.mulf %v2593, %in_2587 : f32
          linalg.yield %v2594 : f32
      }
    -> tensor<928xf32>
    %v2595.buf = tensor.empty() : tensor<928xf32>
    %v2595.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_parameters_weight_ : tensor<928xf32>, tensor<928xf32>, tensor<928xf32>)
      outs(%v2595.buf : tensor<928xf32>) {
        ^bb0(%in_2596: f32, %in_2597: f32, %in_2598: f32, %acc_2599: f32):
          %v2600 = arith.constant 1.0 : f32
          %v2601 = arith.constant 9.999999747378752e-06 : f32
          %v2602 = arith.addf %v2601, %in_2597 : f32
          %v2603 = math.sqrt %v2602 : f32
          %v2604 = arith.divf %v2600, %v2603 : f32
          %v2605 = arith.mulf %v2604, %in_2598 : f32
          %v2606 = arith.mulf %v2605, %in_2596 : f32
          linalg.yield %v2606 : f32
      }
    -> tensor<928xf32>
    %input_238.buf = tensor.empty() : tensor<10x928x7x7xf32>
    %input_238.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_54, %v2585.buf.out, %v2595.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_0_parameters_bias_ : tensor<10x928x7x7xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>)
      outs(%input_238.buf : tensor<10x928x7x7xf32>) {
        ^bb0(%in_2607: f32, %in_2608: f32, %in_2609: f32, %in_2610: f32, %acc_2611: f32):
          %v2612 = arith.mulf %in_2607, %in_2608 : f32
          %v2613 = arith.subf %v2612, %in_2609 : f32
          %v2614 = arith.addf %v2613, %in_2610 : f32
          %v2615 = arith.maxnumf %init, %v2614 : f32
          linalg.yield %v2615 : f32
      }
    -> tensor<10x928x7x7xf32>
    %padded_57 = tensor.pad %input_238.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2616: index, %pad_i2617: index, %pad_i2618: index, %pad_i2619: index):
        tensor.yield %init : f32
    } : tensor<10x928x7x7xf32> to tensor<10x928x9x9xf32>
    %v2620.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2620.buf = linalg.fill ins(%init : f32) outs(%v2620.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2620.shape = tensor.empty() : tensor<7x1xf32>
    %v2620.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_57, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_13_modules_2_parameters_weight_, %v2620.shape : tensor<10x928x9x9xf32>, tensor<32x928x3x3xf32>, tensor<7x1xf32>)
      outs(%v2620.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2622: f32, %in_2623: f32, %shape_2621: f32, %acc_2624: f32):
          %v2625 = arith.mulf %in_2622, %in_2623 : f32
          %v2626 = arith.addf %v2625, %acc_2624 : f32
          linalg.yield %v2626 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_239.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_239.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2620.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_239.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2627: f32, %acc_2628: f32):
          linalg.yield %in_2627 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_55 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out, %input_223.buf.out, %input_227.buf.out, %input_231.buf.out, %input_235.buf.out, %input_239.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x960x7x7xf32>
    %v2629.buf = tensor.empty() : tensor<960xf32>
    %v2629.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v2629.buf : tensor<960xf32>) {
        ^bb0(%in_2630: f32, %in_2631: f32, %acc_2632: f32):
          %v2633 = arith.constant 1.0 : f32
          %v2634 = arith.constant 9.999999747378752e-06 : f32
          %v2635 = arith.addf %v2634, %in_2630 : f32
          %v2636 = math.sqrt %v2635 : f32
          %v2637 = arith.divf %v2633, %v2636 : f32
          %v2638 = arith.mulf %v2637, %in_2631 : f32
          linalg.yield %v2638 : f32
      }
    -> tensor<960xf32>
    %v2639.buf = tensor.empty() : tensor<960xf32>
    %v2639.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v2639.buf : tensor<960xf32>) {
        ^bb0(%in_2640: f32, %in_2641: f32, %in_2642: f32, %acc_2643: f32):
          %v2644 = arith.constant 1.0 : f32
          %v2645 = arith.constant 9.999999747378752e-06 : f32
          %v2646 = arith.addf %v2645, %in_2641 : f32
          %v2647 = math.sqrt %v2646 : f32
          %v2648 = arith.divf %v2644, %v2647 : f32
          %v2649 = arith.mulf %v2648, %in_2642 : f32
          %v2650 = arith.mulf %v2649, %in_2640 : f32
          linalg.yield %v2650 : f32
      }
    -> tensor<960xf32>
    %input_242.buf = tensor.empty() : tensor<10x960x7x7xf32>
    %input_242.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_55, %v2629.buf.out, %v2639.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_0_parameters_bias_ : tensor<10x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%input_242.buf : tensor<10x960x7x7xf32>) {
        ^bb0(%in_2651: f32, %in_2652: f32, %in_2653: f32, %in_2654: f32, %acc_2655: f32):
          %v2656 = arith.mulf %in_2651, %in_2652 : f32
          %v2657 = arith.subf %v2656, %in_2653 : f32
          %v2658 = arith.addf %v2657, %in_2654 : f32
          %v2659 = arith.maxnumf %init, %v2658 : f32
          linalg.yield %v2659 : f32
      }
    -> tensor<10x960x7x7xf32>
    %padded_58 = tensor.pad %input_242.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2660: index, %pad_i2661: index, %pad_i2662: index, %pad_i2663: index):
        tensor.yield %init : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %v2664.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2664.buf = linalg.fill ins(%init : f32) outs(%v2664.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2664.shape = tensor.empty() : tensor<7x1xf32>
    %v2664.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_58, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_14_modules_2_parameters_weight_, %v2664.shape : tensor<10x960x9x9xf32>, tensor<32x960x3x3xf32>, tensor<7x1xf32>)
      outs(%v2664.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2666: f32, %in_2667: f32, %shape_2665: f32, %acc_2668: f32):
          %v2669 = arith.mulf %in_2666, %in_2667 : f32
          %v2670 = arith.addf %v2669, %acc_2668 : f32
          linalg.yield %v2670 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_243.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_243.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2664.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_243.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2671: f32, %acc_2672: f32):
          linalg.yield %in_2671 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_56 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out, %input_223.buf.out, %input_227.buf.out, %input_231.buf.out, %input_235.buf.out, %input_239.buf.out, %input_243.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x992x7x7xf32>
    %v2673.buf = tensor.empty() : tensor<992xf32>
    %v2673.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_parameters_weight_ : tensor<992xf32>, tensor<992xf32>)
      outs(%v2673.buf : tensor<992xf32>) {
        ^bb0(%in_2674: f32, %in_2675: f32, %acc_2676: f32):
          %v2677 = arith.constant 1.0 : f32
          %v2678 = arith.constant 9.999999747378752e-06 : f32
          %v2679 = arith.addf %v2678, %in_2674 : f32
          %v2680 = math.sqrt %v2679 : f32
          %v2681 = arith.divf %v2677, %v2680 : f32
          %v2682 = arith.mulf %v2681, %in_2675 : f32
          linalg.yield %v2682 : f32
      }
    -> tensor<992xf32>
    %v2683.buf = tensor.empty() : tensor<992xf32>
    %v2683.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_buffers_running_mean_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_buffers_running_var_, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_parameters_weight_ : tensor<992xf32>, tensor<992xf32>, tensor<992xf32>)
      outs(%v2683.buf : tensor<992xf32>) {
        ^bb0(%in_2684: f32, %in_2685: f32, %in_2686: f32, %acc_2687: f32):
          %v2688 = arith.constant 1.0 : f32
          %v2689 = arith.constant 9.999999747378752e-06 : f32
          %v2690 = arith.addf %v2689, %in_2685 : f32
          %v2691 = math.sqrt %v2690 : f32
          %v2692 = arith.divf %v2688, %v2691 : f32
          %v2693 = arith.mulf %v2692, %in_2686 : f32
          %v2694 = arith.mulf %v2693, %in_2684 : f32
          linalg.yield %v2694 : f32
      }
    -> tensor<992xf32>
    %input_246.buf = tensor.empty() : tensor<10x992x7x7xf32>
    %input_246.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_56, %v2673.buf.out, %v2683.buf.out, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_0_parameters_bias_ : tensor<10x992x7x7xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>)
      outs(%input_246.buf : tensor<10x992x7x7xf32>) {
        ^bb0(%in_2695: f32, %in_2696: f32, %in_2697: f32, %in_2698: f32, %acc_2699: f32):
          %v2700 = arith.mulf %in_2695, %in_2696 : f32
          %v2701 = arith.subf %v2700, %in_2697 : f32
          %v2702 = arith.addf %v2701, %in_2698 : f32
          %v2703 = arith.maxnumf %init, %v2702 : f32
          linalg.yield %v2703 : f32
      }
    -> tensor<10x992x7x7xf32>
    %padded_59 = tensor.pad %input_246.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i2704: index, %pad_i2705: index, %pad_i2706: index, %pad_i2707: index):
        tensor.yield %init : f32
    } : tensor<10x992x7x7xf32> to tensor<10x992x9x9xf32>
    %v2708.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v2708.buf = linalg.fill ins(%init : f32) outs(%v2708.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v2708.shape = tensor.empty() : tensor<7x1xf32>
    %v2708.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_59, %l_self_modules_dense_blocks_modules_3_modules_layers_modules_15_modules_2_parameters_weight_, %v2708.shape : tensor<10x992x9x9xf32>, tensor<32x992x3x3xf32>, tensor<7x1xf32>)
      outs(%v2708.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_2710: f32, %in_2711: f32, %shape_2709: f32, %acc_2712: f32):
          %v2713 = arith.mulf %in_2710, %in_2711 : f32
          %v2714 = arith.addf %v2713, %acc_2712 : f32
          linalg.yield %v2714 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_247.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_247.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2708.buf.out : tensor<10x32x7x1x7xf32>)
      outs(%input_247.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_2715: f32, %acc_2716: f32):
          linalg.yield %in_2715 : f32
      }
    -> tensor<10x32x7x7xf32>
    %x_57 = tensor.concat dim(1) %input_184.post.out, %input_187.buf.out, %input_191.buf.out, %input_195.buf.out, %input_199.buf.out, %input_203.buf.out, %input_207.buf.out, %input_211.buf.out, %input_215.buf.out, %input_219.buf.out, %input_223.buf.out, %input_227.buf.out, %input_231.buf.out, %input_235.buf.out, %input_239.buf.out, %input_243.buf.out, %input_247.buf.out : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %v2717.buf = tensor.empty() : tensor<1024xf32>
    %v2717.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_final_bn_buffers_running_var_, %l_self_modules_final_bn_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>)
      outs(%v2717.buf : tensor<1024xf32>) {
        ^bb0(%in_2718: f32, %in_2719: f32, %acc_2720: f32):
          %v2721 = arith.constant 1.0 : f32
          %v2722 = arith.constant 9.999999747378752e-06 : f32
          %v2723 = arith.addf %v2722, %in_2718 : f32
          %v2724 = math.sqrt %v2723 : f32
          %v2725 = arith.divf %v2721, %v2724 : f32
          %v2726 = arith.mulf %v2725, %in_2719 : f32
          linalg.yield %v2726 : f32
      }
    -> tensor<1024xf32>
    %v2727.buf = tensor.empty() : tensor<1024xf32>
    %v2727.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_final_bn_buffers_running_mean_, %l_self_modules_final_bn_buffers_running_var_, %l_self_modules_final_bn_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v2727.buf : tensor<1024xf32>) {
        ^bb0(%in_2728: f32, %in_2729: f32, %in_2730: f32, %acc_2731: f32):
          %v2732 = arith.constant 1.0 : f32
          %v2733 = arith.constant 9.999999747378752e-06 : f32
          %v2734 = arith.addf %v2733, %in_2729 : f32
          %v2735 = math.sqrt %v2734 : f32
          %v2736 = arith.divf %v2732, %v2735 : f32
          %v2737 = arith.mulf %v2736, %in_2730 : f32
          %v2738 = arith.mulf %v2737, %in_2728 : f32
          linalg.yield %v2738 : f32
      }
    -> tensor<1024xf32>
    %v2739.empty = tensor.empty() : tensor<10x1024xf32>
    %v2739.buf = linalg.fill ins(%init : f32) outs(%v2739.empty : tensor<10x1024xf32>) -> tensor<10x1024xf32>
    %v2739.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%x_57, %v2717.buf.out, %v2727.buf.out, %l_self_modules_final_bn_parameters_bias_ : tensor<10x1024x7x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v2739.buf : tensor<10x1024xf32>) {
        ^bb0(%in_2740: f32, %in_2741: f32, %in_2742: f32, %in_2743: f32, %acc_2744: f32):
          %v2745 = arith.mulf %in_2740, %in_2741 : f32
          %v2746 = arith.subf %v2745, %in_2742 : f32
          %v2747 = arith.addf %v2746, %in_2743 : f32
          %v2748 = arith.maxnumf %init, %v2747 : f32
          %v2749 = arith.addf %v2748, %acc_2744 : f32
          linalg.yield %v2749 : f32
      }
    -> tensor<10x1024xf32>
    %v2739.post = tensor.empty() : tensor<10x1024xf32>
    %v2739.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v2739.buf.out : tensor<10x1024xf32>)
      outs(%v2739.post : tensor<10x1024xf32>) {
        ^bb0(%acc_2750: f32, %post_2751: f32):
          %v2752 = arith.constant 49.0 : f32
          %v2753 = arith.divf %acc_2750, %v2752 : f32
          linalg.yield %v2753 : f32
      }
    -> tensor<10x1024xf32>
    %v2754.empty = tensor.empty() : tensor<5x2x5x2xf32>
    %v2754.buf = linalg.fill ins(%init : f32) outs(%v2754.empty : tensor<5x2x5x2xf32>) -> tensor<5x2x5x2xf32>
    %v2754.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 2 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v2739.post.out, %l_self_modules_classifier_parameters_weight_ : tensor<10x1024xf32>, tensor<10x1024xf32>)
      outs(%v2754.buf : tensor<5x2x5x2xf32>) {
        ^bb0(%in_2755: f32, %in_2756: f32, %acc_2757: f32):
          %v2758 = arith.mulf %in_2755, %in_2756 : f32
          %v2759 = arith.addf %v2758, %acc_2757 : f32
          linalg.yield %v2759 : f32
      }
    -> tensor<5x2x5x2xf32>
    %v2754.post = tensor.empty() : tensor<5x2x5x2xf32>
    %v2754.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v2754.buf.out, %l_self_modules_classifier_parameters_bias_ : tensor<5x2x5x2xf32>, tensor<10xf32>)
      outs(%v2754.post : tensor<5x2x5x2xf32>) {
        ^bb0(%acc_2761: f32, %in_2760: f32, %post_2762: f32):
          %v2763 = arith.addf %acc_2761, %in_2760 : f32
          linalg.yield %v2763 : f32
      }
    -> tensor<5x2x5x2xf32>
    %x_61.buf = tensor.empty() : tensor<10x10xf32>
    %x_61.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 10) floordiv 2 mod 5, d1 mod 2)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v2754.post.out : tensor<5x2x5x2xf32>)
      outs(%x_61.buf : tensor<10x10xf32>) {
        ^bb0(%in_2764: f32, %acc_2765: f32):
          linalg.yield %in_2764 : f32
      }
    -> tensor<10x10xf32>
    func.return %x_61.buf.out : tensor<10x10xf32>
  }
}
