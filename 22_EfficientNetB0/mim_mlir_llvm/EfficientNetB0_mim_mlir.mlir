module {
  func.func public @EfficientNetB0(%l_self_modules_conv1_parameters_weight_: tensor<32x3x3x3xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_bn1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_bn1_buffers_running_var_: tensor<32xf32>, %l_self_modules_bn1_parameters_weight_: tensor<32xf32>, %l_self_modules_bn1_parameters_bias_: tensor<32xf32>, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_0_parameters_weight_: tensor<32x3x3xf32>, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<32xf32>, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_parameters_weight_: tensor<32xf32>, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_blocks_modules_0_modules_project_conv_modules_0_parameters_weight_: tensor<16x32xf32>, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_buffers_running_mean_: tensor<16xf32>, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_buffers_running_var_: tensor<16xf32>, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_parameters_weight_: tensor<16xf32>, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_parameters_bias_: tensor<16xf32>, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_0_parameters_weight_: tensor<96x16xf32>, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_buffers_running_mean_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_buffers_running_var_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_parameters_weight_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_parameters_bias_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_0_parameters_weight_: tensor<96x3x3xf32>, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_parameters_weight_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_parameters_bias_: tensor<96xf32>, %l_self_modules_blocks_modules_1_modules_project_conv_modules_0_parameters_weight_: tensor<24x96xf32>, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_buffers_running_mean_: tensor<24xf32>, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_buffers_running_var_: tensor<24xf32>, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_parameters_weight_: tensor<24xf32>, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_parameters_bias_: tensor<24xf32>, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_0_parameters_weight_: tensor<144x24xf32>, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_buffers_running_mean_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_buffers_running_var_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_parameters_weight_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_parameters_bias_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_0_parameters_weight_: tensor<144x3x3xf32>, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_parameters_weight_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_parameters_bias_: tensor<144xf32>, %l_self_modules_blocks_modules_2_modules_project_conv_modules_0_parameters_weight_: tensor<24x144xf32>, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_buffers_running_mean_: tensor<24xf32>, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_buffers_running_var_: tensor<24xf32>, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_parameters_weight_: tensor<24xf32>, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_parameters_bias_: tensor<24xf32>, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_0_parameters_weight_: tensor<144x24xf32>, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_buffers_running_mean_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_buffers_running_var_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_parameters_weight_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_parameters_bias_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_0_parameters_weight_: tensor<144x5x5xf32>, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_parameters_weight_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_parameters_bias_: tensor<144xf32>, %l_self_modules_blocks_modules_3_modules_project_conv_modules_0_parameters_weight_: tensor<40x144xf32>, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_buffers_running_mean_: tensor<40xf32>, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_buffers_running_var_: tensor<40xf32>, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_parameters_weight_: tensor<40xf32>, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_parameters_bias_: tensor<40xf32>, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_0_parameters_weight_: tensor<240x40xf32>, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_buffers_running_var_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_parameters_weight_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_parameters_bias_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_0_parameters_weight_: tensor<240x5x5xf32>, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_parameters_weight_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_parameters_bias_: tensor<240xf32>, %l_self_modules_blocks_modules_4_modules_project_conv_modules_0_parameters_weight_: tensor<40x240xf32>, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_buffers_running_mean_: tensor<40xf32>, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_buffers_running_var_: tensor<40xf32>, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_parameters_weight_: tensor<40xf32>, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_parameters_bias_: tensor<40xf32>, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_0_parameters_weight_: tensor<240x40xf32>, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_buffers_running_var_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_parameters_weight_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_parameters_bias_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_0_parameters_weight_: tensor<240x3x3xf32>, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_parameters_weight_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_parameters_bias_: tensor<240xf32>, %l_self_modules_blocks_modules_5_modules_project_conv_modules_0_parameters_weight_: tensor<80x240xf32>, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_buffers_running_mean_: tensor<80xf32>, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_buffers_running_var_: tensor<80xf32>, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_parameters_weight_: tensor<80xf32>, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_parameters_bias_: tensor<80xf32>, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_0_parameters_weight_: tensor<480x80xf32>, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_buffers_running_mean_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_buffers_running_var_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_parameters_weight_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_parameters_bias_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_0_parameters_weight_: tensor<480x3x3xf32>, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_parameters_weight_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_parameters_bias_: tensor<480xf32>, %l_self_modules_blocks_modules_6_modules_project_conv_modules_0_parameters_weight_: tensor<80x480xf32>, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_buffers_running_mean_: tensor<80xf32>, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_buffers_running_var_: tensor<80xf32>, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_parameters_weight_: tensor<80xf32>, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_parameters_bias_: tensor<80xf32>, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_0_parameters_weight_: tensor<480x80xf32>, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_buffers_running_mean_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_buffers_running_var_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_parameters_weight_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_parameters_bias_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_0_parameters_weight_: tensor<480x5x5xf32>, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_parameters_weight_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_parameters_bias_: tensor<480xf32>, %l_self_modules_blocks_modules_7_modules_project_conv_modules_0_parameters_weight_: tensor<112x480xf32>, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_buffers_running_mean_: tensor<112xf32>, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_buffers_running_var_: tensor<112xf32>, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_parameters_weight_: tensor<112xf32>, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_parameters_bias_: tensor<112xf32>, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_0_parameters_weight_: tensor<672x112xf32>, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_buffers_running_mean_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_buffers_running_var_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_parameters_weight_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_parameters_bias_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_0_parameters_weight_: tensor<672x5x5xf32>, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_parameters_weight_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_parameters_bias_: tensor<672xf32>, %l_self_modules_blocks_modules_8_modules_project_conv_modules_0_parameters_weight_: tensor<112x672xf32>, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_buffers_running_mean_: tensor<112xf32>, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_buffers_running_var_: tensor<112xf32>, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_parameters_weight_: tensor<112xf32>, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_parameters_bias_: tensor<112xf32>, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_0_parameters_weight_: tensor<672x112xf32>, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_buffers_running_mean_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_buffers_running_var_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_parameters_weight_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_parameters_bias_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_0_parameters_weight_: tensor<672x5x5xf32>, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_parameters_weight_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_parameters_bias_: tensor<672xf32>, %l_self_modules_blocks_modules_9_modules_project_conv_modules_0_parameters_weight_: tensor<192x672xf32>, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_buffers_running_mean_: tensor<192xf32>, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_buffers_running_var_: tensor<192xf32>, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_parameters_weight_: tensor<192xf32>, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_parameters_bias_: tensor<192xf32>, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_0_parameters_weight_: tensor<1152x192xf32>, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_buffers_running_var_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_parameters_weight_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_parameters_bias_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_0_parameters_weight_: tensor<1152x5x5xf32>, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_parameters_weight_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_parameters_bias_: tensor<1152xf32>, %l_self_modules_blocks_modules_10_modules_project_conv_modules_0_parameters_weight_: tensor<192x1152xf32>, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_buffers_running_mean_: tensor<192xf32>, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_buffers_running_var_: tensor<192xf32>, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_parameters_weight_: tensor<192xf32>, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_parameters_bias_: tensor<192xf32>, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_0_parameters_weight_: tensor<1152x192xf32>, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_buffers_running_var_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_parameters_weight_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_parameters_bias_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_0_parameters_weight_: tensor<1152x5x5xf32>, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_parameters_weight_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_parameters_bias_: tensor<1152xf32>, %l_self_modules_blocks_modules_11_modules_project_conv_modules_0_parameters_weight_: tensor<192x1152xf32>, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_buffers_running_mean_: tensor<192xf32>, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_buffers_running_var_: tensor<192xf32>, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_parameters_weight_: tensor<192xf32>, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_parameters_bias_: tensor<192xf32>, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_0_parameters_weight_: tensor<1152x192xf32>, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_buffers_running_var_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_parameters_weight_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_parameters_bias_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_0_parameters_weight_: tensor<1152x3x3xf32>, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_parameters_weight_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_parameters_bias_: tensor<1152xf32>, %l_self_modules_blocks_modules_12_modules_project_conv_modules_0_parameters_weight_: tensor<320x1152xf32>, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_buffers_running_mean_: tensor<320xf32>, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_buffers_running_var_: tensor<320xf32>, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_parameters_weight_: tensor<320xf32>, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_parameters_bias_: tensor<320xf32>, %l_self_modules_conv2_parameters_weight_: tensor<1280x320xf32>, %l_self_modules_bn2_buffers_running_mean_: tensor<1280xf32>, %l_self_modules_bn2_buffers_running_var_: tensor<1280xf32>, %l_self_modules_bn2_parameters_weight_: tensor<1280xf32>, %l_self_modules_bn2_parameters_bias_: tensor<1280xf32>, %l_self_modules_fc_parameters_weight_: tensor<1000x1280xf32>, %l_self_modules_fc_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %v4.empty = tensor.empty() : tensor<10x32x112x1x112xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<10x32x112x1x112xf32>) -> tensor<10x32x112x1x112xf32>
    %v4.shape = tensor.empty() : tensor<112x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_, %v4.shape : tensor<10x3x226x226xf32>, tensor<32x3x3x3xf32>, tensor<112x1xf32>)
      outs(%v4.buf : tensor<10x32x112x1x112xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x32x112x1x112xf32>
    %v11.buf = tensor.empty() : tensor<32xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
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
      ins(%l_self_modules_bn1_buffers_running_mean_, %l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
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
      ins(%v4.buf.out, %v11.buf.out, %v21.buf.out, %l_self_modules_bn1_parameters_bias_ : tensor<10x32x112x1x112xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v4.post : tensor<10x32x112x1x112xf32>) {
        ^bb0(%acc_36: f32, %in_33: f32, %in_34: f32, %in_35: f32, %post_37: f32):
          %v38 = arith.mulf %acc_36, %in_33 : f32
          %v39 = arith.subf %v38, %in_34 : f32
          %v40 = arith.addf %v39, %in_35 : f32
          %v41 = arith.maxnumf %init, %v40 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<10x32x112x1x112xf32>
    %x.buf = tensor.empty() : tensor<10x32x112x112xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<10x32x112x1x112xf32>)
      outs(%x.buf : tensor<10x32x112x112xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          linalg.yield %in_42 : f32
      }
    -> tensor<10x32x112x112xf32>
    %v48 = tensor.pad %x.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i44: index, %pad_i45: index, %pad_i46: index, %pad_i47: index):
        tensor.yield %init : f32
    } : tensor<10x32x112x112xf32> to tensor<10x32x114x114xf32>
    %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [32, 1, 3, 3] : tensor<32x3x3xf32> into tensor<32x1x3x3xf32>
    %input_3.empty = tensor.empty() : tensor<10x32x112x112xf32>
    %input_3.buf = linalg.fill ins(%init : f32) outs(%input_3.empty : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v48, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x32x114x114xf32>, tensor<32x1x3x3xf32>)
      outs(%input_3.buf : tensor<10x32x112x112xf32>) {
        ^bb0(%in_49: f32, %in_50: f32, %acc_51: f32):
          %v52 = arith.mulf %in_49, %in_50 : f32
          %v53 = arith.addf %v52, %acc_51 : f32
          linalg.yield %v53 : f32
      }
    -> tensor<10x32x112x112xf32>
    %v54.buf = tensor.empty() : tensor<32xf32>
    %v54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v54.buf : tensor<32xf32>) {
        ^bb0(%in_55: f32, %in_56: f32, %acc_57: f32):
          %v58 = arith.constant 1.0 : f32
          %v59 = arith.constant 9.999999747378752e-06 : f32
          %v60 = arith.addf %v59, %in_55 : f32
          %v61 = math.sqrt %v60 : f32
          %v62 = arith.divf %v58, %v61 : f32
          %v63 = arith.mulf %v62, %in_56 : f32
          linalg.yield %v63 : f32
      }
    -> tensor<32xf32>
    %v64.buf = tensor.empty() : tensor<32xf32>
    %v64.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v64.buf : tensor<32xf32>) {
        ^bb0(%in_65: f32, %in_66: f32, %in_67: f32, %acc_68: f32):
          %v69 = arith.constant 1.0 : f32
          %v70 = arith.constant 9.999999747378752e-06 : f32
          %v71 = arith.addf %v70, %in_66 : f32
          %v72 = math.sqrt %v71 : f32
          %v73 = arith.divf %v69, %v72 : f32
          %v74 = arith.mulf %v73, %in_67 : f32
          %v75 = arith.mulf %v74, %in_65 : f32
          linalg.yield %v75 : f32
      }
    -> tensor<32xf32>
    %input_3.post = tensor.empty() : tensor<10x32x112x112xf32>
    %input_3.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_3.buf.out, %v54.buf.out, %v64.buf.out, %l_self_modules_blocks_modules_0_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x32x112x112xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%input_3.post : tensor<10x32x112x112xf32>) {
        ^bb0(%acc_79: f32, %in_76: f32, %in_77: f32, %in_78: f32, %post_80: f32):
          %v81 = arith.mulf %acc_79, %in_76 : f32
          %v82 = arith.subf %v81, %in_77 : f32
          %v83 = arith.addf %v82, %in_78 : f32
          %v84 = arith.maxnumf %init, %v83 : f32
          %v85 = arith.constant 6.0 : f32
          %v86 = arith.minnumf %v85, %v84 : f32
          linalg.yield %v86 : f32
      }
    -> tensor<10x32x112x112xf32>
    %l_self_modules_blocks_modules_0_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_0_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [16, 32, 1, 1] : tensor<16x32xf32> into tensor<16x32x1x1xf32>
    %v87.empty = tensor.empty() : tensor<10x16x112x1x112xf32>
    %v87.buf = linalg.fill ins(%init : f32) outs(%v87.empty : tensor<10x16x112x1x112xf32>) -> tensor<10x16x112x1x112xf32>
    %v87.shape = tensor.empty() : tensor<112x1xf32>
    %v87.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_3.post.out, %l_self_modules_blocks_modules_0_modules_project_conv_modules_0_parameters_weight_.expanded, %v87.shape : tensor<10x32x112x112xf32>, tensor<16x32x1x1xf32>, tensor<112x1xf32>)
      outs(%v87.buf : tensor<10x16x112x1x112xf32>) {
        ^bb0(%in_89: f32, %in_90: f32, %shape_88: f32, %acc_91: f32):
          %v92 = arith.mulf %in_89, %in_90 : f32
          %v93 = arith.addf %v92, %acc_91 : f32
          linalg.yield %v93 : f32
      }
    -> tensor<10x16x112x1x112xf32>
    %v94.buf = tensor.empty() : tensor<16xf32>
    %v94.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_0_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_parameters_weight_ : tensor<16xf32>, tensor<16xf32>)
      outs(%v94.buf : tensor<16xf32>) {
        ^bb0(%in_95: f32, %in_96: f32, %acc_97: f32):
          %v98 = arith.constant 1.0 : f32
          %v99 = arith.constant 9.999999747378752e-06 : f32
          %v100 = arith.addf %v99, %in_95 : f32
          %v101 = math.sqrt %v100 : f32
          %v102 = arith.divf %v98, %v101 : f32
          %v103 = arith.mulf %v102, %in_96 : f32
          linalg.yield %v103 : f32
      }
    -> tensor<16xf32>
    %v104.buf = tensor.empty() : tensor<16xf32>
    %v104.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_0_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_parameters_weight_ : tensor<16xf32>, tensor<16xf32>, tensor<16xf32>)
      outs(%v104.buf : tensor<16xf32>) {
        ^bb0(%in_105: f32, %in_106: f32, %in_107: f32, %acc_108: f32):
          %v109 = arith.constant 1.0 : f32
          %v110 = arith.constant 9.999999747378752e-06 : f32
          %v111 = arith.addf %v110, %in_106 : f32
          %v112 = math.sqrt %v111 : f32
          %v113 = arith.divf %v109, %v112 : f32
          %v114 = arith.mulf %v113, %in_107 : f32
          %v115 = arith.mulf %v114, %in_105 : f32
          linalg.yield %v115 : f32
      }
    -> tensor<16xf32>
    %v87.post = tensor.empty() : tensor<10x16x112x1x112xf32>
    %v87.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v87.buf.out, %v94.buf.out, %v104.buf.out, %l_self_modules_blocks_modules_0_modules_project_conv_modules_1_parameters_bias_ : tensor<10x16x112x1x112xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>)
      outs(%v87.post : tensor<10x16x112x1x112xf32>) {
        ^bb0(%acc_119: f32, %in_116: f32, %in_117: f32, %in_118: f32, %post_120: f32):
          %v121 = arith.mulf %acc_119, %in_116 : f32
          %v122 = arith.subf %v121, %in_117 : f32
          %v123 = arith.addf %v122, %in_118 : f32
          linalg.yield %v123 : f32
      }
    -> tensor<10x16x112x1x112xf32>
    %l_self_modules_blocks_modules_1_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_1_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 16, 1, 1] : tensor<96x16xf32> into tensor<96x16x1x1xf32>
    %v124.empty = tensor.empty() : tensor<10x96x112x1x112xf32>
    %v124.buf = linalg.fill ins(%init : f32) outs(%v124.empty : tensor<10x96x112x1x112xf32>) -> tensor<10x96x112x1x112xf32>
    %v124.shape = tensor.empty() : tensor<112x1xf32>
    %v124.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v87.post.out, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_0_parameters_weight_.expanded, %v124.shape : tensor<10x16x112x1x112xf32>, tensor<96x16x1x1xf32>, tensor<112x1xf32>)
      outs(%v124.buf : tensor<10x96x112x1x112xf32>) {
        ^bb0(%in_126: f32, %in_127: f32, %shape_125: f32, %acc_128: f32):
          %v129 = arith.mulf %in_126, %in_127 : f32
          %v130 = arith.addf %v129, %acc_128 : f32
          linalg.yield %v130 : f32
      }
    -> tensor<10x96x112x1x112xf32>
    %v131.buf = tensor.empty() : tensor<96xf32>
    %v131.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v131.buf : tensor<96xf32>) {
        ^bb0(%in_132: f32, %in_133: f32, %acc_134: f32):
          %v135 = arith.constant 1.0 : f32
          %v136 = arith.constant 9.999999747378752e-06 : f32
          %v137 = arith.addf %v136, %in_132 : f32
          %v138 = math.sqrt %v137 : f32
          %v139 = arith.divf %v135, %v138 : f32
          %v140 = arith.mulf %v139, %in_133 : f32
          linalg.yield %v140 : f32
      }
    -> tensor<96xf32>
    %v141.buf = tensor.empty() : tensor<96xf32>
    %v141.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v141.buf : tensor<96xf32>) {
        ^bb0(%in_142: f32, %in_143: f32, %in_144: f32, %acc_145: f32):
          %v146 = arith.constant 1.0 : f32
          %v147 = arith.constant 9.999999747378752e-06 : f32
          %v148 = arith.addf %v147, %in_143 : f32
          %v149 = math.sqrt %v148 : f32
          %v150 = arith.divf %v146, %v149 : f32
          %v151 = arith.mulf %v150, %in_144 : f32
          %v152 = arith.mulf %v151, %in_142 : f32
          linalg.yield %v152 : f32
      }
    -> tensor<96xf32>
    %v124.post = tensor.empty() : tensor<10x96x112x1x112xf32>
    %v124.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v124.buf.out, %v131.buf.out, %v141.buf.out, %l_self_modules_blocks_modules_1_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x96x112x1x112xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v124.post : tensor<10x96x112x1x112xf32>) {
        ^bb0(%acc_156: f32, %in_153: f32, %in_154: f32, %in_155: f32, %post_157: f32):
          %v158 = arith.mulf %acc_156, %in_153 : f32
          %v159 = arith.subf %v158, %in_154 : f32
          %v160 = arith.addf %v159, %in_155 : f32
          %v161 = arith.maxnumf %init, %v160 : f32
          %v162 = arith.constant 6.0 : f32
          %v163 = arith.minnumf %v162, %v161 : f32
          linalg.yield %v163 : f32
      }
    -> tensor<10x96x112x1x112xf32>
    %input_8.buf = tensor.empty() : tensor<10x96x112x112xf32>
    %input_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v124.post.out : tensor<10x96x112x1x112xf32>)
      outs(%input_8.buf : tensor<10x96x112x112xf32>) {
        ^bb0(%in_164: f32, %acc_165: f32):
          linalg.yield %in_164 : f32
      }
    -> tensor<10x96x112x112xf32>
    %v170 = tensor.pad %input_8.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i166: index, %pad_i167: index, %pad_i168: index, %pad_i169: index):
        tensor.yield %init : f32
    } : tensor<10x96x112x112xf32> to tensor<10x96x114x114xf32>
    %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [96, 1, 3, 3] : tensor<96x3x3xf32> into tensor<96x1x3x3xf32>
    %input_11.empty = tensor.empty() : tensor<10x96x56x56xf32>
    %input_11.buf = linalg.fill ins(%init : f32) outs(%input_11.empty : tensor<10x96x56x56xf32>) -> tensor<10x96x56x56xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v170, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x96x114x114xf32>, tensor<96x1x3x3xf32>)
      outs(%input_11.buf : tensor<10x96x56x56xf32>) {
        ^bb0(%in_171: f32, %in_172: f32, %acc_173: f32):
          %v174 = arith.mulf %in_171, %in_172 : f32
          %v175 = arith.addf %v174, %acc_173 : f32
          linalg.yield %v175 : f32
      }
    -> tensor<10x96x56x56xf32>
    %v176.buf = tensor.empty() : tensor<96xf32>
    %v176.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v176.buf : tensor<96xf32>) {
        ^bb0(%in_177: f32, %in_178: f32, %acc_179: f32):
          %v180 = arith.constant 1.0 : f32
          %v181 = arith.constant 9.999999747378752e-06 : f32
          %v182 = arith.addf %v181, %in_177 : f32
          %v183 = math.sqrt %v182 : f32
          %v184 = arith.divf %v180, %v183 : f32
          %v185 = arith.mulf %v184, %in_178 : f32
          linalg.yield %v185 : f32
      }
    -> tensor<96xf32>
    %v186.buf = tensor.empty() : tensor<96xf32>
    %v186.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v186.buf : tensor<96xf32>) {
        ^bb0(%in_187: f32, %in_188: f32, %in_189: f32, %acc_190: f32):
          %v191 = arith.constant 1.0 : f32
          %v192 = arith.constant 9.999999747378752e-06 : f32
          %v193 = arith.addf %v192, %in_188 : f32
          %v194 = math.sqrt %v193 : f32
          %v195 = arith.divf %v191, %v194 : f32
          %v196 = arith.mulf %v195, %in_189 : f32
          %v197 = arith.mulf %v196, %in_187 : f32
          linalg.yield %v197 : f32
      }
    -> tensor<96xf32>
    %input_11.post = tensor.empty() : tensor<10x96x56x56xf32>
    %input_11.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_11.buf.out, %v176.buf.out, %v186.buf.out, %l_self_modules_blocks_modules_1_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x96x56x56xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%input_11.post : tensor<10x96x56x56xf32>) {
        ^bb0(%acc_201: f32, %in_198: f32, %in_199: f32, %in_200: f32, %post_202: f32):
          %v203 = arith.mulf %acc_201, %in_198 : f32
          %v204 = arith.subf %v203, %in_199 : f32
          %v205 = arith.addf %v204, %in_200 : f32
          %v206 = arith.maxnumf %init, %v205 : f32
          %v207 = arith.constant 6.0 : f32
          %v208 = arith.minnumf %v207, %v206 : f32
          linalg.yield %v208 : f32
      }
    -> tensor<10x96x56x56xf32>
    %l_self_modules_blocks_modules_1_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_1_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [24, 96, 1, 1] : tensor<24x96xf32> into tensor<24x96x1x1xf32>
    %v209.empty = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v209.buf = linalg.fill ins(%init : f32) outs(%v209.empty : tensor<10x24x56x1x56xf32>) -> tensor<10x24x56x1x56xf32>
    %v209.shape = tensor.empty() : tensor<56x1xf32>
    %v209.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_11.post.out, %l_self_modules_blocks_modules_1_modules_project_conv_modules_0_parameters_weight_.expanded, %v209.shape : tensor<10x96x56x56xf32>, tensor<24x96x1x1xf32>, tensor<56x1xf32>)
      outs(%v209.buf : tensor<10x24x56x1x56xf32>) {
        ^bb0(%in_211: f32, %in_212: f32, %shape_210: f32, %acc_213: f32):
          %v214 = arith.mulf %in_211, %in_212 : f32
          %v215 = arith.addf %v214, %acc_213 : f32
          linalg.yield %v215 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %v216.buf = tensor.empty() : tensor<24xf32>
    %v216.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_1_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_parameters_weight_ : tensor<24xf32>, tensor<24xf32>)
      outs(%v216.buf : tensor<24xf32>) {
        ^bb0(%in_217: f32, %in_218: f32, %acc_219: f32):
          %v220 = arith.constant 1.0 : f32
          %v221 = arith.constant 9.999999747378752e-06 : f32
          %v222 = arith.addf %v221, %in_217 : f32
          %v223 = math.sqrt %v222 : f32
          %v224 = arith.divf %v220, %v223 : f32
          %v225 = arith.mulf %v224, %in_218 : f32
          linalg.yield %v225 : f32
      }
    -> tensor<24xf32>
    %v226.buf = tensor.empty() : tensor<24xf32>
    %v226.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_1_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_parameters_weight_ : tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v226.buf : tensor<24xf32>) {
        ^bb0(%in_227: f32, %in_228: f32, %in_229: f32, %acc_230: f32):
          %v231 = arith.constant 1.0 : f32
          %v232 = arith.constant 9.999999747378752e-06 : f32
          %v233 = arith.addf %v232, %in_228 : f32
          %v234 = math.sqrt %v233 : f32
          %v235 = arith.divf %v231, %v234 : f32
          %v236 = arith.mulf %v235, %in_229 : f32
          %v237 = arith.mulf %v236, %in_227 : f32
          linalg.yield %v237 : f32
      }
    -> tensor<24xf32>
    %v209.post = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v209.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v209.buf.out, %v216.buf.out, %v226.buf.out, %l_self_modules_blocks_modules_1_modules_project_conv_modules_1_parameters_bias_ : tensor<10x24x56x1x56xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v209.post : tensor<10x24x56x1x56xf32>) {
        ^bb0(%acc_241: f32, %in_238: f32, %in_239: f32, %in_240: f32, %post_242: f32):
          %v243 = arith.mulf %acc_241, %in_238 : f32
          %v244 = arith.subf %v243, %in_239 : f32
          %v245 = arith.addf %v244, %in_240 : f32
          linalg.yield %v245 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %l_self_modules_blocks_modules_2_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_2_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [144, 24, 1, 1] : tensor<144x24xf32> into tensor<144x24x1x1xf32>
    %v246.empty = tensor.empty() : tensor<10x144x56x1x56xf32>
    %v246.buf = linalg.fill ins(%init : f32) outs(%v246.empty : tensor<10x144x56x1x56xf32>) -> tensor<10x144x56x1x56xf32>
    %v246.shape = tensor.empty() : tensor<56x1xf32>
    %v246.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v209.post.out, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_0_parameters_weight_.expanded, %v246.shape : tensor<10x24x56x1x56xf32>, tensor<144x24x1x1xf32>, tensor<56x1xf32>)
      outs(%v246.buf : tensor<10x144x56x1x56xf32>) {
        ^bb0(%in_248: f32, %in_249: f32, %shape_247: f32, %acc_250: f32):
          %v251 = arith.mulf %in_248, %in_249 : f32
          %v252 = arith.addf %v251, %acc_250 : f32
          linalg.yield %v252 : f32
      }
    -> tensor<10x144x56x1x56xf32>
    %v253.buf = tensor.empty() : tensor<144xf32>
    %v253.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v253.buf : tensor<144xf32>) {
        ^bb0(%in_254: f32, %in_255: f32, %acc_256: f32):
          %v257 = arith.constant 1.0 : f32
          %v258 = arith.constant 9.999999747378752e-06 : f32
          %v259 = arith.addf %v258, %in_254 : f32
          %v260 = math.sqrt %v259 : f32
          %v261 = arith.divf %v257, %v260 : f32
          %v262 = arith.mulf %v261, %in_255 : f32
          linalg.yield %v262 : f32
      }
    -> tensor<144xf32>
    %v263.buf = tensor.empty() : tensor<144xf32>
    %v263.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v263.buf : tensor<144xf32>) {
        ^bb0(%in_264: f32, %in_265: f32, %in_266: f32, %acc_267: f32):
          %v268 = arith.constant 1.0 : f32
          %v269 = arith.constant 9.999999747378752e-06 : f32
          %v270 = arith.addf %v269, %in_265 : f32
          %v271 = math.sqrt %v270 : f32
          %v272 = arith.divf %v268, %v271 : f32
          %v273 = arith.mulf %v272, %in_266 : f32
          %v274 = arith.mulf %v273, %in_264 : f32
          linalg.yield %v274 : f32
      }
    -> tensor<144xf32>
    %v246.post = tensor.empty() : tensor<10x144x56x1x56xf32>
    %v246.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v246.buf.out, %v253.buf.out, %v263.buf.out, %l_self_modules_blocks_modules_2_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x144x56x1x56xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v246.post : tensor<10x144x56x1x56xf32>) {
        ^bb0(%acc_278: f32, %in_275: f32, %in_276: f32, %in_277: f32, %post_279: f32):
          %v280 = arith.mulf %acc_278, %in_275 : f32
          %v281 = arith.subf %v280, %in_276 : f32
          %v282 = arith.addf %v281, %in_277 : f32
          %v283 = arith.maxnumf %init, %v282 : f32
          %v284 = arith.constant 6.0 : f32
          %v285 = arith.minnumf %v284, %v283 : f32
          linalg.yield %v285 : f32
      }
    -> tensor<10x144x56x1x56xf32>
    %input_16.buf = tensor.empty() : tensor<10x144x56x56xf32>
    %input_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v246.post.out : tensor<10x144x56x1x56xf32>)
      outs(%input_16.buf : tensor<10x144x56x56xf32>) {
        ^bb0(%in_286: f32, %acc_287: f32):
          linalg.yield %in_286 : f32
      }
    -> tensor<10x144x56x56xf32>
    %v292 = tensor.pad %input_16.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i288: index, %pad_i289: index, %pad_i290: index, %pad_i291: index):
        tensor.yield %init : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x58x58xf32>
    %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [144, 1, 3, 3] : tensor<144x3x3xf32> into tensor<144x1x3x3xf32>
    %input_19.empty = tensor.empty() : tensor<10x144x56x56xf32>
    %input_19.buf = linalg.fill ins(%init : f32) outs(%input_19.empty : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v292, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x144x58x58xf32>, tensor<144x1x3x3xf32>)
      outs(%input_19.buf : tensor<10x144x56x56xf32>) {
        ^bb0(%in_293: f32, %in_294: f32, %acc_295: f32):
          %v296 = arith.mulf %in_293, %in_294 : f32
          %v297 = arith.addf %v296, %acc_295 : f32
          linalg.yield %v297 : f32
      }
    -> tensor<10x144x56x56xf32>
    %v298.buf = tensor.empty() : tensor<144xf32>
    %v298.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v298.buf : tensor<144xf32>) {
        ^bb0(%in_299: f32, %in_300: f32, %acc_301: f32):
          %v302 = arith.constant 1.0 : f32
          %v303 = arith.constant 9.999999747378752e-06 : f32
          %v304 = arith.addf %v303, %in_299 : f32
          %v305 = math.sqrt %v304 : f32
          %v306 = arith.divf %v302, %v305 : f32
          %v307 = arith.mulf %v306, %in_300 : f32
          linalg.yield %v307 : f32
      }
    -> tensor<144xf32>
    %v308.buf = tensor.empty() : tensor<144xf32>
    %v308.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v308.buf : tensor<144xf32>) {
        ^bb0(%in_309: f32, %in_310: f32, %in_311: f32, %acc_312: f32):
          %v313 = arith.constant 1.0 : f32
          %v314 = arith.constant 9.999999747378752e-06 : f32
          %v315 = arith.addf %v314, %in_310 : f32
          %v316 = math.sqrt %v315 : f32
          %v317 = arith.divf %v313, %v316 : f32
          %v318 = arith.mulf %v317, %in_311 : f32
          %v319 = arith.mulf %v318, %in_309 : f32
          linalg.yield %v319 : f32
      }
    -> tensor<144xf32>
    %input_19.post = tensor.empty() : tensor<10x144x56x56xf32>
    %input_19.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_19.buf.out, %v298.buf.out, %v308.buf.out, %l_self_modules_blocks_modules_2_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x144x56x56xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%input_19.post : tensor<10x144x56x56xf32>) {
        ^bb0(%acc_323: f32, %in_320: f32, %in_321: f32, %in_322: f32, %post_324: f32):
          %v325 = arith.mulf %acc_323, %in_320 : f32
          %v326 = arith.subf %v325, %in_321 : f32
          %v327 = arith.addf %v326, %in_322 : f32
          %v328 = arith.maxnumf %init, %v327 : f32
          %v329 = arith.constant 6.0 : f32
          %v330 = arith.minnumf %v329, %v328 : f32
          linalg.yield %v330 : f32
      }
    -> tensor<10x144x56x56xf32>
    %l_self_modules_blocks_modules_2_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_2_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [24, 144, 1, 1] : tensor<24x144xf32> into tensor<24x144x1x1xf32>
    %v331.empty = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v331.buf = linalg.fill ins(%init : f32) outs(%v331.empty : tensor<10x24x56x1x56xf32>) -> tensor<10x24x56x1x56xf32>
    %v331.shape = tensor.empty() : tensor<56x1xf32>
    %v331.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_19.post.out, %l_self_modules_blocks_modules_2_modules_project_conv_modules_0_parameters_weight_.expanded, %v331.shape : tensor<10x144x56x56xf32>, tensor<24x144x1x1xf32>, tensor<56x1xf32>)
      outs(%v331.buf : tensor<10x24x56x1x56xf32>) {
        ^bb0(%in_333: f32, %in_334: f32, %shape_332: f32, %acc_335: f32):
          %v336 = arith.mulf %in_333, %in_334 : f32
          %v337 = arith.addf %v336, %acc_335 : f32
          linalg.yield %v337 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %v338.buf = tensor.empty() : tensor<24xf32>
    %v338.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_2_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_parameters_weight_ : tensor<24xf32>, tensor<24xf32>)
      outs(%v338.buf : tensor<24xf32>) {
        ^bb0(%in_339: f32, %in_340: f32, %acc_341: f32):
          %v342 = arith.constant 1.0 : f32
          %v343 = arith.constant 9.999999747378752e-06 : f32
          %v344 = arith.addf %v343, %in_339 : f32
          %v345 = math.sqrt %v344 : f32
          %v346 = arith.divf %v342, %v345 : f32
          %v347 = arith.mulf %v346, %in_340 : f32
          linalg.yield %v347 : f32
      }
    -> tensor<24xf32>
    %v348.buf = tensor.empty() : tensor<24xf32>
    %v348.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_2_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_parameters_weight_ : tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v348.buf : tensor<24xf32>) {
        ^bb0(%in_349: f32, %in_350: f32, %in_351: f32, %acc_352: f32):
          %v353 = arith.constant 1.0 : f32
          %v354 = arith.constant 9.999999747378752e-06 : f32
          %v355 = arith.addf %v354, %in_350 : f32
          %v356 = math.sqrt %v355 : f32
          %v357 = arith.divf %v353, %v356 : f32
          %v358 = arith.mulf %v357, %in_351 : f32
          %v359 = arith.mulf %v358, %in_349 : f32
          linalg.yield %v359 : f32
      }
    -> tensor<24xf32>
    %v331.post = tensor.empty() : tensor<10x24x56x1x56xf32>
    %v331.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v331.buf.out, %v338.buf.out, %v348.buf.out, %l_self_modules_blocks_modules_2_modules_project_conv_modules_1_parameters_bias_, %v209.post.out : tensor<10x24x56x1x56xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<10x24x56x1x56xf32>)
      outs(%v331.post : tensor<10x24x56x1x56xf32>) {
        ^bb0(%acc_364: f32, %in_360: f32, %in_361: f32, %in_362: f32, %in_363: f32, %post_365: f32):
          %v366 = arith.mulf %acc_364, %in_360 : f32
          %v367 = arith.subf %v366, %in_361 : f32
          %v368 = arith.addf %v367, %in_362 : f32
          %v369 = arith.addf %v368, %in_363 : f32
          linalg.yield %v369 : f32
      }
    -> tensor<10x24x56x1x56xf32>
    %l_self_modules_blocks_modules_3_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_3_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [144, 24, 1, 1] : tensor<144x24xf32> into tensor<144x24x1x1xf32>
    %v370.empty = tensor.empty() : tensor<10x144x56x1x56xf32>
    %v370.buf = linalg.fill ins(%init : f32) outs(%v370.empty : tensor<10x144x56x1x56xf32>) -> tensor<10x144x56x1x56xf32>
    %v370.shape = tensor.empty() : tensor<56x1xf32>
    %v370.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v331.post.out, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_0_parameters_weight_.expanded, %v370.shape : tensor<10x24x56x1x56xf32>, tensor<144x24x1x1xf32>, tensor<56x1xf32>)
      outs(%v370.buf : tensor<10x144x56x1x56xf32>) {
        ^bb0(%in_372: f32, %in_373: f32, %shape_371: f32, %acc_374: f32):
          %v375 = arith.mulf %in_372, %in_373 : f32
          %v376 = arith.addf %v375, %acc_374 : f32
          linalg.yield %v376 : f32
      }
    -> tensor<10x144x56x1x56xf32>
    %v377.buf = tensor.empty() : tensor<144xf32>
    %v377.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
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
      ins(%l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
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
      ins(%v370.buf.out, %v377.buf.out, %v387.buf.out, %l_self_modules_blocks_modules_3_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x144x56x1x56xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
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
    %input_24.buf = tensor.empty() : tensor<10x144x56x56xf32>
    %input_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v370.post.out : tensor<10x144x56x1x56xf32>)
      outs(%input_24.buf : tensor<10x144x56x56xf32>) {
        ^bb0(%in_410: f32, %acc_411: f32):
          linalg.yield %in_410 : f32
      }
    -> tensor<10x144x56x56xf32>
    %v416 = tensor.pad %input_24.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i412: index, %pad_i413: index, %pad_i414: index, %pad_i415: index):
        tensor.yield %init : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x60x60xf32>
    %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [144, 1, 5, 5] : tensor<144x5x5xf32> into tensor<144x1x5x5xf32>
    %input_27.empty = tensor.empty() : tensor<10x144x28x28xf32>
    %input_27.buf = linalg.fill ins(%init : f32) outs(%input_27.empty : tensor<10x144x28x28xf32>) -> tensor<10x144x28x28xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v416, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x144x60x60xf32>, tensor<144x1x5x5xf32>)
      outs(%input_27.buf : tensor<10x144x28x28xf32>) {
        ^bb0(%in_417: f32, %in_418: f32, %acc_419: f32):
          %v420 = arith.mulf %in_417, %in_418 : f32
          %v421 = arith.addf %v420, %acc_419 : f32
          linalg.yield %v421 : f32
      }
    -> tensor<10x144x28x28xf32>
    %v422.buf = tensor.empty() : tensor<144xf32>
    %v422.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
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
      ins(%l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
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
    %input_27.post = tensor.empty() : tensor<10x144x28x28xf32>
    %input_27.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_27.buf.out, %v422.buf.out, %v432.buf.out, %l_self_modules_blocks_modules_3_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x144x28x28xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%input_27.post : tensor<10x144x28x28xf32>) {
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
    %l_self_modules_blocks_modules_3_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_3_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [40, 144, 1, 1] : tensor<40x144xf32> into tensor<40x144x1x1xf32>
    %v455.empty = tensor.empty() : tensor<10x40x28x1x28xf32>
    %v455.buf = linalg.fill ins(%init : f32) outs(%v455.empty : tensor<10x40x28x1x28xf32>) -> tensor<10x40x28x1x28xf32>
    %v455.shape = tensor.empty() : tensor<28x1xf32>
    %v455.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_27.post.out, %l_self_modules_blocks_modules_3_modules_project_conv_modules_0_parameters_weight_.expanded, %v455.shape : tensor<10x144x28x28xf32>, tensor<40x144x1x1xf32>, tensor<28x1xf32>)
      outs(%v455.buf : tensor<10x40x28x1x28xf32>) {
        ^bb0(%in_457: f32, %in_458: f32, %shape_456: f32, %acc_459: f32):
          %v460 = arith.mulf %in_457, %in_458 : f32
          %v461 = arith.addf %v460, %acc_459 : f32
          linalg.yield %v461 : f32
      }
    -> tensor<10x40x28x1x28xf32>
    %v462.buf = tensor.empty() : tensor<40xf32>
    %v462.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_3_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_parameters_weight_ : tensor<40xf32>, tensor<40xf32>)
      outs(%v462.buf : tensor<40xf32>) {
        ^bb0(%in_463: f32, %in_464: f32, %acc_465: f32):
          %v466 = arith.constant 1.0 : f32
          %v467 = arith.constant 9.999999747378752e-06 : f32
          %v468 = arith.addf %v467, %in_463 : f32
          %v469 = math.sqrt %v468 : f32
          %v470 = arith.divf %v466, %v469 : f32
          %v471 = arith.mulf %v470, %in_464 : f32
          linalg.yield %v471 : f32
      }
    -> tensor<40xf32>
    %v472.buf = tensor.empty() : tensor<40xf32>
    %v472.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_3_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_parameters_weight_ : tensor<40xf32>, tensor<40xf32>, tensor<40xf32>)
      outs(%v472.buf : tensor<40xf32>) {
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
    -> tensor<40xf32>
    %v455.post = tensor.empty() : tensor<10x40x28x1x28xf32>
    %v455.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v455.buf.out, %v462.buf.out, %v472.buf.out, %l_self_modules_blocks_modules_3_modules_project_conv_modules_1_parameters_bias_ : tensor<10x40x28x1x28xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>)
      outs(%v455.post : tensor<10x40x28x1x28xf32>) {
        ^bb0(%acc_487: f32, %in_484: f32, %in_485: f32, %in_486: f32, %post_488: f32):
          %v489 = arith.mulf %acc_487, %in_484 : f32
          %v490 = arith.subf %v489, %in_485 : f32
          %v491 = arith.addf %v490, %in_486 : f32
          linalg.yield %v491 : f32
      }
    -> tensor<10x40x28x1x28xf32>
    %l_self_modules_blocks_modules_4_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_4_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 40, 1, 1] : tensor<240x40xf32> into tensor<240x40x1x1xf32>
    %v492.empty = tensor.empty() : tensor<10x240x28x1x28xf32>
    %v492.buf = linalg.fill ins(%init : f32) outs(%v492.empty : tensor<10x240x28x1x28xf32>) -> tensor<10x240x28x1x28xf32>
    %v492.shape = tensor.empty() : tensor<28x1xf32>
    %v492.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v455.post.out, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_0_parameters_weight_.expanded, %v492.shape : tensor<10x40x28x1x28xf32>, tensor<240x40x1x1xf32>, tensor<28x1xf32>)
      outs(%v492.buf : tensor<10x240x28x1x28xf32>) {
        ^bb0(%in_494: f32, %in_495: f32, %shape_493: f32, %acc_496: f32):
          %v497 = arith.mulf %in_494, %in_495 : f32
          %v498 = arith.addf %v497, %acc_496 : f32
          linalg.yield %v498 : f32
      }
    -> tensor<10x240x28x1x28xf32>
    %v499.buf = tensor.empty() : tensor<240xf32>
    %v499.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v499.buf : tensor<240xf32>) {
        ^bb0(%in_500: f32, %in_501: f32, %acc_502: f32):
          %v503 = arith.constant 1.0 : f32
          %v504 = arith.constant 9.999999747378752e-06 : f32
          %v505 = arith.addf %v504, %in_500 : f32
          %v506 = math.sqrt %v505 : f32
          %v507 = arith.divf %v503, %v506 : f32
          %v508 = arith.mulf %v507, %in_501 : f32
          linalg.yield %v508 : f32
      }
    -> tensor<240xf32>
    %v509.buf = tensor.empty() : tensor<240xf32>
    %v509.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v509.buf : tensor<240xf32>) {
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
    -> tensor<240xf32>
    %v492.post = tensor.empty() : tensor<10x240x28x1x28xf32>
    %v492.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v492.buf.out, %v499.buf.out, %v509.buf.out, %l_self_modules_blocks_modules_4_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x240x28x1x28xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v492.post : tensor<10x240x28x1x28xf32>) {
        ^bb0(%acc_524: f32, %in_521: f32, %in_522: f32, %in_523: f32, %post_525: f32):
          %v526 = arith.mulf %acc_524, %in_521 : f32
          %v527 = arith.subf %v526, %in_522 : f32
          %v528 = arith.addf %v527, %in_523 : f32
          %v529 = arith.maxnumf %init, %v528 : f32
          %v530 = arith.constant 6.0 : f32
          %v531 = arith.minnumf %v530, %v529 : f32
          linalg.yield %v531 : f32
      }
    -> tensor<10x240x28x1x28xf32>
    %input_32.buf = tensor.empty() : tensor<10x240x28x28xf32>
    %input_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v492.post.out : tensor<10x240x28x1x28xf32>)
      outs(%input_32.buf : tensor<10x240x28x28xf32>) {
        ^bb0(%in_532: f32, %acc_533: f32):
          linalg.yield %in_532 : f32
      }
    -> tensor<10x240x28x28xf32>
    %v538 = tensor.pad %input_32.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i534: index, %pad_i535: index, %pad_i536: index, %pad_i537: index):
        tensor.yield %init : f32
    } : tensor<10x240x28x28xf32> to tensor<10x240x32x32xf32>
    %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [240, 1, 5, 5] : tensor<240x5x5xf32> into tensor<240x1x5x5xf32>
    %input_35.empty = tensor.empty() : tensor<10x240x28x28xf32>
    %input_35.buf = linalg.fill ins(%init : f32) outs(%input_35.empty : tensor<10x240x28x28xf32>) -> tensor<10x240x28x28xf32>
    %input_35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v538, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x240x32x32xf32>, tensor<240x1x5x5xf32>)
      outs(%input_35.buf : tensor<10x240x28x28xf32>) {
        ^bb0(%in_539: f32, %in_540: f32, %acc_541: f32):
          %v542 = arith.mulf %in_539, %in_540 : f32
          %v543 = arith.addf %v542, %acc_541 : f32
          linalg.yield %v543 : f32
      }
    -> tensor<10x240x28x28xf32>
    %v544.buf = tensor.empty() : tensor<240xf32>
    %v544.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v544.buf : tensor<240xf32>) {
        ^bb0(%in_545: f32, %in_546: f32, %acc_547: f32):
          %v548 = arith.constant 1.0 : f32
          %v549 = arith.constant 9.999999747378752e-06 : f32
          %v550 = arith.addf %v549, %in_545 : f32
          %v551 = math.sqrt %v550 : f32
          %v552 = arith.divf %v548, %v551 : f32
          %v553 = arith.mulf %v552, %in_546 : f32
          linalg.yield %v553 : f32
      }
    -> tensor<240xf32>
    %v554.buf = tensor.empty() : tensor<240xf32>
    %v554.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v554.buf : tensor<240xf32>) {
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
    -> tensor<240xf32>
    %input_35.post = tensor.empty() : tensor<10x240x28x28xf32>
    %input_35.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_35.buf.out, %v544.buf.out, %v554.buf.out, %l_self_modules_blocks_modules_4_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x240x28x28xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%input_35.post : tensor<10x240x28x28xf32>) {
        ^bb0(%acc_569: f32, %in_566: f32, %in_567: f32, %in_568: f32, %post_570: f32):
          %v571 = arith.mulf %acc_569, %in_566 : f32
          %v572 = arith.subf %v571, %in_567 : f32
          %v573 = arith.addf %v572, %in_568 : f32
          %v574 = arith.maxnumf %init, %v573 : f32
          %v575 = arith.constant 6.0 : f32
          %v576 = arith.minnumf %v575, %v574 : f32
          linalg.yield %v576 : f32
      }
    -> tensor<10x240x28x28xf32>
    %l_self_modules_blocks_modules_4_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_4_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [40, 240, 1, 1] : tensor<40x240xf32> into tensor<40x240x1x1xf32>
    %v577.empty = tensor.empty() : tensor<10x40x28x1x28xf32>
    %v577.buf = linalg.fill ins(%init : f32) outs(%v577.empty : tensor<10x40x28x1x28xf32>) -> tensor<10x40x28x1x28xf32>
    %v577.shape = tensor.empty() : tensor<28x1xf32>
    %v577.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_35.post.out, %l_self_modules_blocks_modules_4_modules_project_conv_modules_0_parameters_weight_.expanded, %v577.shape : tensor<10x240x28x28xf32>, tensor<40x240x1x1xf32>, tensor<28x1xf32>)
      outs(%v577.buf : tensor<10x40x28x1x28xf32>) {
        ^bb0(%in_579: f32, %in_580: f32, %shape_578: f32, %acc_581: f32):
          %v582 = arith.mulf %in_579, %in_580 : f32
          %v583 = arith.addf %v582, %acc_581 : f32
          linalg.yield %v583 : f32
      }
    -> tensor<10x40x28x1x28xf32>
    %v584.buf = tensor.empty() : tensor<40xf32>
    %v584.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_4_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_parameters_weight_ : tensor<40xf32>, tensor<40xf32>)
      outs(%v584.buf : tensor<40xf32>) {
        ^bb0(%in_585: f32, %in_586: f32, %acc_587: f32):
          %v588 = arith.constant 1.0 : f32
          %v589 = arith.constant 9.999999747378752e-06 : f32
          %v590 = arith.addf %v589, %in_585 : f32
          %v591 = math.sqrt %v590 : f32
          %v592 = arith.divf %v588, %v591 : f32
          %v593 = arith.mulf %v592, %in_586 : f32
          linalg.yield %v593 : f32
      }
    -> tensor<40xf32>
    %v594.buf = tensor.empty() : tensor<40xf32>
    %v594.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_4_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_parameters_weight_ : tensor<40xf32>, tensor<40xf32>, tensor<40xf32>)
      outs(%v594.buf : tensor<40xf32>) {
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
    -> tensor<40xf32>
    %v577.post = tensor.empty() : tensor<10x40x28x1x28xf32>
    %v577.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v577.buf.out, %v584.buf.out, %v594.buf.out, %l_self_modules_blocks_modules_4_modules_project_conv_modules_1_parameters_bias_, %v455.post.out : tensor<10x40x28x1x28xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<10x40x28x1x28xf32>)
      outs(%v577.post : tensor<10x40x28x1x28xf32>) {
        ^bb0(%acc_610: f32, %in_606: f32, %in_607: f32, %in_608: f32, %in_609: f32, %post_611: f32):
          %v612 = arith.mulf %acc_610, %in_606 : f32
          %v613 = arith.subf %v612, %in_607 : f32
          %v614 = arith.addf %v613, %in_608 : f32
          %v615 = arith.addf %v614, %in_609 : f32
          linalg.yield %v615 : f32
      }
    -> tensor<10x40x28x1x28xf32>
    %l_self_modules_blocks_modules_5_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_5_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 40, 1, 1] : tensor<240x40xf32> into tensor<240x40x1x1xf32>
    %v616.empty = tensor.empty() : tensor<10x240x28x1x28xf32>
    %v616.buf = linalg.fill ins(%init : f32) outs(%v616.empty : tensor<10x240x28x1x28xf32>) -> tensor<10x240x28x1x28xf32>
    %v616.shape = tensor.empty() : tensor<28x1xf32>
    %v616.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v577.post.out, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_0_parameters_weight_.expanded, %v616.shape : tensor<10x40x28x1x28xf32>, tensor<240x40x1x1xf32>, tensor<28x1xf32>)
      outs(%v616.buf : tensor<10x240x28x1x28xf32>) {
        ^bb0(%in_618: f32, %in_619: f32, %shape_617: f32, %acc_620: f32):
          %v621 = arith.mulf %in_618, %in_619 : f32
          %v622 = arith.addf %v621, %acc_620 : f32
          linalg.yield %v622 : f32
      }
    -> tensor<10x240x28x1x28xf32>
    %v623.buf = tensor.empty() : tensor<240xf32>
    %v623.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v623.buf : tensor<240xf32>) {
        ^bb0(%in_624: f32, %in_625: f32, %acc_626: f32):
          %v627 = arith.constant 1.0 : f32
          %v628 = arith.constant 9.999999747378752e-06 : f32
          %v629 = arith.addf %v628, %in_624 : f32
          %v630 = math.sqrt %v629 : f32
          %v631 = arith.divf %v627, %v630 : f32
          %v632 = arith.mulf %v631, %in_625 : f32
          linalg.yield %v632 : f32
      }
    -> tensor<240xf32>
    %v633.buf = tensor.empty() : tensor<240xf32>
    %v633.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v633.buf : tensor<240xf32>) {
        ^bb0(%in_634: f32, %in_635: f32, %in_636: f32, %acc_637: f32):
          %v638 = arith.constant 1.0 : f32
          %v639 = arith.constant 9.999999747378752e-06 : f32
          %v640 = arith.addf %v639, %in_635 : f32
          %v641 = math.sqrt %v640 : f32
          %v642 = arith.divf %v638, %v641 : f32
          %v643 = arith.mulf %v642, %in_636 : f32
          %v644 = arith.mulf %v643, %in_634 : f32
          linalg.yield %v644 : f32
      }
    -> tensor<240xf32>
    %v616.post = tensor.empty() : tensor<10x240x28x1x28xf32>
    %v616.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v616.buf.out, %v623.buf.out, %v633.buf.out, %l_self_modules_blocks_modules_5_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x240x28x1x28xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v616.post : tensor<10x240x28x1x28xf32>) {
        ^bb0(%acc_648: f32, %in_645: f32, %in_646: f32, %in_647: f32, %post_649: f32):
          %v650 = arith.mulf %acc_648, %in_645 : f32
          %v651 = arith.subf %v650, %in_646 : f32
          %v652 = arith.addf %v651, %in_647 : f32
          %v653 = arith.maxnumf %init, %v652 : f32
          %v654 = arith.constant 6.0 : f32
          %v655 = arith.minnumf %v654, %v653 : f32
          linalg.yield %v655 : f32
      }
    -> tensor<10x240x28x1x28xf32>
    %input_40.buf = tensor.empty() : tensor<10x240x28x28xf32>
    %input_40.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v616.post.out : tensor<10x240x28x1x28xf32>)
      outs(%input_40.buf : tensor<10x240x28x28xf32>) {
        ^bb0(%in_656: f32, %acc_657: f32):
          linalg.yield %in_656 : f32
      }
    -> tensor<10x240x28x28xf32>
    %v662 = tensor.pad %input_40.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i658: index, %pad_i659: index, %pad_i660: index, %pad_i661: index):
        tensor.yield %init : f32
    } : tensor<10x240x28x28xf32> to tensor<10x240x30x30xf32>
    %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [240, 1, 3, 3] : tensor<240x3x3xf32> into tensor<240x1x3x3xf32>
    %input_43.empty = tensor.empty() : tensor<10x240x14x14xf32>
    %input_43.buf = linalg.fill ins(%init : f32) outs(%input_43.empty : tensor<10x240x14x14xf32>) -> tensor<10x240x14x14xf32>
    %input_43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v662, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x240x30x30xf32>, tensor<240x1x3x3xf32>)
      outs(%input_43.buf : tensor<10x240x14x14xf32>) {
        ^bb0(%in_663: f32, %in_664: f32, %acc_665: f32):
          %v666 = arith.mulf %in_663, %in_664 : f32
          %v667 = arith.addf %v666, %acc_665 : f32
          linalg.yield %v667 : f32
      }
    -> tensor<10x240x14x14xf32>
    %v668.buf = tensor.empty() : tensor<240xf32>
    %v668.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v668.buf : tensor<240xf32>) {
        ^bb0(%in_669: f32, %in_670: f32, %acc_671: f32):
          %v672 = arith.constant 1.0 : f32
          %v673 = arith.constant 9.999999747378752e-06 : f32
          %v674 = arith.addf %v673, %in_669 : f32
          %v675 = math.sqrt %v674 : f32
          %v676 = arith.divf %v672, %v675 : f32
          %v677 = arith.mulf %v676, %in_670 : f32
          linalg.yield %v677 : f32
      }
    -> tensor<240xf32>
    %v678.buf = tensor.empty() : tensor<240xf32>
    %v678.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v678.buf : tensor<240xf32>) {
        ^bb0(%in_679: f32, %in_680: f32, %in_681: f32, %acc_682: f32):
          %v683 = arith.constant 1.0 : f32
          %v684 = arith.constant 9.999999747378752e-06 : f32
          %v685 = arith.addf %v684, %in_680 : f32
          %v686 = math.sqrt %v685 : f32
          %v687 = arith.divf %v683, %v686 : f32
          %v688 = arith.mulf %v687, %in_681 : f32
          %v689 = arith.mulf %v688, %in_679 : f32
          linalg.yield %v689 : f32
      }
    -> tensor<240xf32>
    %input_43.post = tensor.empty() : tensor<10x240x14x14xf32>
    %input_43.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_43.buf.out, %v668.buf.out, %v678.buf.out, %l_self_modules_blocks_modules_5_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x240x14x14xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%input_43.post : tensor<10x240x14x14xf32>) {
        ^bb0(%acc_693: f32, %in_690: f32, %in_691: f32, %in_692: f32, %post_694: f32):
          %v695 = arith.mulf %acc_693, %in_690 : f32
          %v696 = arith.subf %v695, %in_691 : f32
          %v697 = arith.addf %v696, %in_692 : f32
          %v698 = arith.maxnumf %init, %v697 : f32
          %v699 = arith.constant 6.0 : f32
          %v700 = arith.minnumf %v699, %v698 : f32
          linalg.yield %v700 : f32
      }
    -> tensor<10x240x14x14xf32>
    %l_self_modules_blocks_modules_5_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_5_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [80, 240, 1, 1] : tensor<80x240xf32> into tensor<80x240x1x1xf32>
    %v701.empty = tensor.empty() : tensor<10x80x7x2x14xf32>
    %v701.buf = linalg.fill ins(%init : f32) outs(%v701.empty : tensor<10x80x7x2x14xf32>) -> tensor<10x80x7x2x14xf32>
    %v701.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_43.post.out, %l_self_modules_blocks_modules_5_modules_project_conv_modules_0_parameters_weight_.expanded : tensor<10x240x14x14xf32>, tensor<80x240x1x1xf32>)
      outs(%v701.buf : tensor<10x80x7x2x14xf32>) {
        ^bb0(%in_702: f32, %in_703: f32, %acc_704: f32):
          %v705 = arith.mulf %in_702, %in_703 : f32
          %v706 = arith.addf %v705, %acc_704 : f32
          linalg.yield %v706 : f32
      }
    -> tensor<10x80x7x2x14xf32>
    %v707.buf = tensor.empty() : tensor<80xf32>
    %v707.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_5_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_parameters_weight_ : tensor<80xf32>, tensor<80xf32>)
      outs(%v707.buf : tensor<80xf32>) {
        ^bb0(%in_708: f32, %in_709: f32, %acc_710: f32):
          %v711 = arith.constant 1.0 : f32
          %v712 = arith.constant 9.999999747378752e-06 : f32
          %v713 = arith.addf %v712, %in_708 : f32
          %v714 = math.sqrt %v713 : f32
          %v715 = arith.divf %v711, %v714 : f32
          %v716 = arith.mulf %v715, %in_709 : f32
          linalg.yield %v716 : f32
      }
    -> tensor<80xf32>
    %v717.buf = tensor.empty() : tensor<80xf32>
    %v717.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_5_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_parameters_weight_ : tensor<80xf32>, tensor<80xf32>, tensor<80xf32>)
      outs(%v717.buf : tensor<80xf32>) {
        ^bb0(%in_718: f32, %in_719: f32, %in_720: f32, %acc_721: f32):
          %v722 = arith.constant 1.0 : f32
          %v723 = arith.constant 9.999999747378752e-06 : f32
          %v724 = arith.addf %v723, %in_719 : f32
          %v725 = math.sqrt %v724 : f32
          %v726 = arith.divf %v722, %v725 : f32
          %v727 = arith.mulf %v726, %in_720 : f32
          %v728 = arith.mulf %v727, %in_718 : f32
          linalg.yield %v728 : f32
      }
    -> tensor<80xf32>
    %v701.post = tensor.empty() : tensor<10x80x7x2x14xf32>
    %v701.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v701.buf.out, %v707.buf.out, %v717.buf.out, %l_self_modules_blocks_modules_5_modules_project_conv_modules_1_parameters_bias_ : tensor<10x80x7x2x14xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>)
      outs(%v701.post : tensor<10x80x7x2x14xf32>) {
        ^bb0(%acc_732: f32, %in_729: f32, %in_730: f32, %in_731: f32, %post_733: f32):
          %v734 = arith.mulf %acc_732, %in_729 : f32
          %v735 = arith.subf %v734, %in_730 : f32
          %v736 = arith.addf %v735, %in_731 : f32
          linalg.yield %v736 : f32
      }
    -> tensor<10x80x7x2x14xf32>
    %l_self_modules_blocks_modules_6_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_6_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 80, 1, 1] : tensor<480x80xf32> into tensor<480x80x1x1xf32>
    %v737.empty = tensor.empty() : tensor<10x480x7x2x14xf32>
    %v737.buf = linalg.fill ins(%init : f32) outs(%v737.empty : tensor<10x480x7x2x14xf32>) -> tensor<10x480x7x2x14xf32>
    %v737.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v701.post.out, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_0_parameters_weight_.expanded : tensor<10x80x7x2x14xf32>, tensor<480x80x1x1xf32>)
      outs(%v737.buf : tensor<10x480x7x2x14xf32>) {
        ^bb0(%in_738: f32, %in_739: f32, %acc_740: f32):
          %v741 = arith.mulf %in_738, %in_739 : f32
          %v742 = arith.addf %v741, %acc_740 : f32
          linalg.yield %v742 : f32
      }
    -> tensor<10x480x7x2x14xf32>
    %v743.buf = tensor.empty() : tensor<480xf32>
    %v743.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v743.buf : tensor<480xf32>) {
        ^bb0(%in_744: f32, %in_745: f32, %acc_746: f32):
          %v747 = arith.constant 1.0 : f32
          %v748 = arith.constant 9.999999747378752e-06 : f32
          %v749 = arith.addf %v748, %in_744 : f32
          %v750 = math.sqrt %v749 : f32
          %v751 = arith.divf %v747, %v750 : f32
          %v752 = arith.mulf %v751, %in_745 : f32
          linalg.yield %v752 : f32
      }
    -> tensor<480xf32>
    %v753.buf = tensor.empty() : tensor<480xf32>
    %v753.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v753.buf : tensor<480xf32>) {
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
    -> tensor<480xf32>
    %v737.post = tensor.empty() : tensor<10x480x7x2x14xf32>
    %v737.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v737.buf.out, %v743.buf.out, %v753.buf.out, %l_self_modules_blocks_modules_6_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x480x7x2x14xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v737.post : tensor<10x480x7x2x14xf32>) {
        ^bb0(%acc_768: f32, %in_765: f32, %in_766: f32, %in_767: f32, %post_769: f32):
          %v770 = arith.mulf %acc_768, %in_765 : f32
          %v771 = arith.subf %v770, %in_766 : f32
          %v772 = arith.addf %v771, %in_767 : f32
          %v773 = arith.maxnumf %init, %v772 : f32
          %v774 = arith.constant 6.0 : f32
          %v775 = arith.minnumf %v774, %v773 : f32
          linalg.yield %v775 : f32
      }
    -> tensor<10x480x7x2x14xf32>
    %input_48.buf = tensor.empty() : tensor<10x480x14x14xf32>
    %input_48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v737.post.out : tensor<10x480x7x2x14xf32>)
      outs(%input_48.buf : tensor<10x480x14x14xf32>) {
        ^bb0(%in_776: f32, %acc_777: f32):
          linalg.yield %in_776 : f32
      }
    -> tensor<10x480x14x14xf32>
    %v782 = tensor.pad %input_48.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i778: index, %pad_i779: index, %pad_i780: index, %pad_i781: index):
        tensor.yield %init : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x16x16xf32>
    %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [480, 1, 3, 3] : tensor<480x3x3xf32> into tensor<480x1x3x3xf32>
    %input_51.empty = tensor.empty() : tensor<10x480x14x14xf32>
    %input_51.buf = linalg.fill ins(%init : f32) outs(%input_51.empty : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %input_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v782, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x480x16x16xf32>, tensor<480x1x3x3xf32>)
      outs(%input_51.buf : tensor<10x480x14x14xf32>) {
        ^bb0(%in_783: f32, %in_784: f32, %acc_785: f32):
          %v786 = arith.mulf %in_783, %in_784 : f32
          %v787 = arith.addf %v786, %acc_785 : f32
          linalg.yield %v787 : f32
      }
    -> tensor<10x480x14x14xf32>
    %v788.buf = tensor.empty() : tensor<480xf32>
    %v788.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v788.buf : tensor<480xf32>) {
        ^bb0(%in_789: f32, %in_790: f32, %acc_791: f32):
          %v792 = arith.constant 1.0 : f32
          %v793 = arith.constant 9.999999747378752e-06 : f32
          %v794 = arith.addf %v793, %in_789 : f32
          %v795 = math.sqrt %v794 : f32
          %v796 = arith.divf %v792, %v795 : f32
          %v797 = arith.mulf %v796, %in_790 : f32
          linalg.yield %v797 : f32
      }
    -> tensor<480xf32>
    %v798.buf = tensor.empty() : tensor<480xf32>
    %v798.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v798.buf : tensor<480xf32>) {
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
    -> tensor<480xf32>
    %input_51.post = tensor.empty() : tensor<10x480x14x14xf32>
    %input_51.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_51.buf.out, %v788.buf.out, %v798.buf.out, %l_self_modules_blocks_modules_6_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x480x14x14xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%input_51.post : tensor<10x480x14x14xf32>) {
        ^bb0(%acc_813: f32, %in_810: f32, %in_811: f32, %in_812: f32, %post_814: f32):
          %v815 = arith.mulf %acc_813, %in_810 : f32
          %v816 = arith.subf %v815, %in_811 : f32
          %v817 = arith.addf %v816, %in_812 : f32
          %v818 = arith.maxnumf %init, %v817 : f32
          %v819 = arith.constant 6.0 : f32
          %v820 = arith.minnumf %v819, %v818 : f32
          linalg.yield %v820 : f32
      }
    -> tensor<10x480x14x14xf32>
    %l_self_modules_blocks_modules_6_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_6_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [80, 480, 1, 1] : tensor<80x480xf32> into tensor<80x480x1x1xf32>
    %v821.empty = tensor.empty() : tensor<10x80x7x2x14xf32>
    %v821.buf = linalg.fill ins(%init : f32) outs(%v821.empty : tensor<10x80x7x2x14xf32>) -> tensor<10x80x7x2x14xf32>
    %v821.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_51.post.out, %l_self_modules_blocks_modules_6_modules_project_conv_modules_0_parameters_weight_.expanded : tensor<10x480x14x14xf32>, tensor<80x480x1x1xf32>)
      outs(%v821.buf : tensor<10x80x7x2x14xf32>) {
        ^bb0(%in_822: f32, %in_823: f32, %acc_824: f32):
          %v825 = arith.mulf %in_822, %in_823 : f32
          %v826 = arith.addf %v825, %acc_824 : f32
          linalg.yield %v826 : f32
      }
    -> tensor<10x80x7x2x14xf32>
    %v827.buf = tensor.empty() : tensor<80xf32>
    %v827.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_6_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_parameters_weight_ : tensor<80xf32>, tensor<80xf32>)
      outs(%v827.buf : tensor<80xf32>) {
        ^bb0(%in_828: f32, %in_829: f32, %acc_830: f32):
          %v831 = arith.constant 1.0 : f32
          %v832 = arith.constant 9.999999747378752e-06 : f32
          %v833 = arith.addf %v832, %in_828 : f32
          %v834 = math.sqrt %v833 : f32
          %v835 = arith.divf %v831, %v834 : f32
          %v836 = arith.mulf %v835, %in_829 : f32
          linalg.yield %v836 : f32
      }
    -> tensor<80xf32>
    %v837.buf = tensor.empty() : tensor<80xf32>
    %v837.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_6_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_parameters_weight_ : tensor<80xf32>, tensor<80xf32>, tensor<80xf32>)
      outs(%v837.buf : tensor<80xf32>) {
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
    -> tensor<80xf32>
    %v821.post = tensor.empty() : tensor<10x80x7x2x14xf32>
    %v821.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v821.buf.out, %v827.buf.out, %v837.buf.out, %l_self_modules_blocks_modules_6_modules_project_conv_modules_1_parameters_bias_, %v701.post.out : tensor<10x80x7x2x14xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<10x80x7x2x14xf32>)
      outs(%v821.post : tensor<10x80x7x2x14xf32>) {
        ^bb0(%acc_853: f32, %in_849: f32, %in_850: f32, %in_851: f32, %in_852: f32, %post_854: f32):
          %v855 = arith.mulf %acc_853, %in_849 : f32
          %v856 = arith.subf %v855, %in_850 : f32
          %v857 = arith.addf %v856, %in_851 : f32
          %v858 = arith.addf %v857, %in_852 : f32
          linalg.yield %v858 : f32
      }
    -> tensor<10x80x7x2x14xf32>
    %l_self_modules_blocks_modules_7_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_7_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 80, 1, 1] : tensor<480x80xf32> into tensor<480x80x1x1xf32>
    %v859.empty = tensor.empty() : tensor<10x480x7x2x14xf32>
    %v859.buf = linalg.fill ins(%init : f32) outs(%v859.empty : tensor<10x480x7x2x14xf32>) -> tensor<10x480x7x2x14xf32>
    %v859.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v821.post.out, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_0_parameters_weight_.expanded : tensor<10x80x7x2x14xf32>, tensor<480x80x1x1xf32>)
      outs(%v859.buf : tensor<10x480x7x2x14xf32>) {
        ^bb0(%in_860: f32, %in_861: f32, %acc_862: f32):
          %v863 = arith.mulf %in_860, %in_861 : f32
          %v864 = arith.addf %v863, %acc_862 : f32
          linalg.yield %v864 : f32
      }
    -> tensor<10x480x7x2x14xf32>
    %v865.buf = tensor.empty() : tensor<480xf32>
    %v865.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v865.buf : tensor<480xf32>) {
        ^bb0(%in_866: f32, %in_867: f32, %acc_868: f32):
          %v869 = arith.constant 1.0 : f32
          %v870 = arith.constant 9.999999747378752e-06 : f32
          %v871 = arith.addf %v870, %in_866 : f32
          %v872 = math.sqrt %v871 : f32
          %v873 = arith.divf %v869, %v872 : f32
          %v874 = arith.mulf %v873, %in_867 : f32
          linalg.yield %v874 : f32
      }
    -> tensor<480xf32>
    %v875.buf = tensor.empty() : tensor<480xf32>
    %v875.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v875.buf : tensor<480xf32>) {
        ^bb0(%in_876: f32, %in_877: f32, %in_878: f32, %acc_879: f32):
          %v880 = arith.constant 1.0 : f32
          %v881 = arith.constant 9.999999747378752e-06 : f32
          %v882 = arith.addf %v881, %in_877 : f32
          %v883 = math.sqrt %v882 : f32
          %v884 = arith.divf %v880, %v883 : f32
          %v885 = arith.mulf %v884, %in_878 : f32
          %v886 = arith.mulf %v885, %in_876 : f32
          linalg.yield %v886 : f32
      }
    -> tensor<480xf32>
    %v859.post = tensor.empty() : tensor<10x480x7x2x14xf32>
    %v859.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v859.buf.out, %v865.buf.out, %v875.buf.out, %l_self_modules_blocks_modules_7_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x480x7x2x14xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v859.post : tensor<10x480x7x2x14xf32>) {
        ^bb0(%acc_890: f32, %in_887: f32, %in_888: f32, %in_889: f32, %post_891: f32):
          %v892 = arith.mulf %acc_890, %in_887 : f32
          %v893 = arith.subf %v892, %in_888 : f32
          %v894 = arith.addf %v893, %in_889 : f32
          %v895 = arith.maxnumf %init, %v894 : f32
          %v896 = arith.constant 6.0 : f32
          %v897 = arith.minnumf %v896, %v895 : f32
          linalg.yield %v897 : f32
      }
    -> tensor<10x480x7x2x14xf32>
    %input_56.buf = tensor.empty() : tensor<10x480x14x14xf32>
    %input_56.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v859.post.out : tensor<10x480x7x2x14xf32>)
      outs(%input_56.buf : tensor<10x480x14x14xf32>) {
        ^bb0(%in_898: f32, %acc_899: f32):
          linalg.yield %in_898 : f32
      }
    -> tensor<10x480x14x14xf32>
    %v904 = tensor.pad %input_56.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i900: index, %pad_i901: index, %pad_i902: index, %pad_i903: index):
        tensor.yield %init : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x18x18xf32>
    %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [480, 1, 5, 5] : tensor<480x5x5xf32> into tensor<480x1x5x5xf32>
    %input_59.empty = tensor.empty() : tensor<10x480x14x14xf32>
    %input_59.buf = linalg.fill ins(%init : f32) outs(%input_59.empty : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %input_59.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v904, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x480x18x18xf32>, tensor<480x1x5x5xf32>)
      outs(%input_59.buf : tensor<10x480x14x14xf32>) {
        ^bb0(%in_905: f32, %in_906: f32, %acc_907: f32):
          %v908 = arith.mulf %in_905, %in_906 : f32
          %v909 = arith.addf %v908, %acc_907 : f32
          linalg.yield %v909 : f32
      }
    -> tensor<10x480x14x14xf32>
    %v910.buf = tensor.empty() : tensor<480xf32>
    %v910.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v910.buf : tensor<480xf32>) {
        ^bb0(%in_911: f32, %in_912: f32, %acc_913: f32):
          %v914 = arith.constant 1.0 : f32
          %v915 = arith.constant 9.999999747378752e-06 : f32
          %v916 = arith.addf %v915, %in_911 : f32
          %v917 = math.sqrt %v916 : f32
          %v918 = arith.divf %v914, %v917 : f32
          %v919 = arith.mulf %v918, %in_912 : f32
          linalg.yield %v919 : f32
      }
    -> tensor<480xf32>
    %v920.buf = tensor.empty() : tensor<480xf32>
    %v920.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v920.buf : tensor<480xf32>) {
        ^bb0(%in_921: f32, %in_922: f32, %in_923: f32, %acc_924: f32):
          %v925 = arith.constant 1.0 : f32
          %v926 = arith.constant 9.999999747378752e-06 : f32
          %v927 = arith.addf %v926, %in_922 : f32
          %v928 = math.sqrt %v927 : f32
          %v929 = arith.divf %v925, %v928 : f32
          %v930 = arith.mulf %v929, %in_923 : f32
          %v931 = arith.mulf %v930, %in_921 : f32
          linalg.yield %v931 : f32
      }
    -> tensor<480xf32>
    %input_59.post = tensor.empty() : tensor<10x480x14x14xf32>
    %input_59.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_59.buf.out, %v910.buf.out, %v920.buf.out, %l_self_modules_blocks_modules_7_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x480x14x14xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%input_59.post : tensor<10x480x14x14xf32>) {
        ^bb0(%acc_935: f32, %in_932: f32, %in_933: f32, %in_934: f32, %post_936: f32):
          %v937 = arith.mulf %acc_935, %in_932 : f32
          %v938 = arith.subf %v937, %in_933 : f32
          %v939 = arith.addf %v938, %in_934 : f32
          %v940 = arith.maxnumf %init, %v939 : f32
          %v941 = arith.constant 6.0 : f32
          %v942 = arith.minnumf %v941, %v940 : f32
          linalg.yield %v942 : f32
      }
    -> tensor<10x480x14x14xf32>
    %l_self_modules_blocks_modules_7_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_7_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [112, 480, 1, 1] : tensor<112x480xf32> into tensor<112x480x1x1xf32>
    %v943.empty = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v943.buf = linalg.fill ins(%init : f32) outs(%v943.empty : tensor<10x112x7x2x14xf32>) -> tensor<10x112x7x2x14xf32>
    %v943.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_59.post.out, %l_self_modules_blocks_modules_7_modules_project_conv_modules_0_parameters_weight_.expanded : tensor<10x480x14x14xf32>, tensor<112x480x1x1xf32>)
      outs(%v943.buf : tensor<10x112x7x2x14xf32>) {
        ^bb0(%in_944: f32, %in_945: f32, %acc_946: f32):
          %v947 = arith.mulf %in_944, %in_945 : f32
          %v948 = arith.addf %v947, %acc_946 : f32
          linalg.yield %v948 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %v949.buf = tensor.empty() : tensor<112xf32>
    %v949.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_7_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_parameters_weight_ : tensor<112xf32>, tensor<112xf32>)
      outs(%v949.buf : tensor<112xf32>) {
        ^bb0(%in_950: f32, %in_951: f32, %acc_952: f32):
          %v953 = arith.constant 1.0 : f32
          %v954 = arith.constant 9.999999747378752e-06 : f32
          %v955 = arith.addf %v954, %in_950 : f32
          %v956 = math.sqrt %v955 : f32
          %v957 = arith.divf %v953, %v956 : f32
          %v958 = arith.mulf %v957, %in_951 : f32
          linalg.yield %v958 : f32
      }
    -> tensor<112xf32>
    %v959.buf = tensor.empty() : tensor<112xf32>
    %v959.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_7_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_parameters_weight_ : tensor<112xf32>, tensor<112xf32>, tensor<112xf32>)
      outs(%v959.buf : tensor<112xf32>) {
        ^bb0(%in_960: f32, %in_961: f32, %in_962: f32, %acc_963: f32):
          %v964 = arith.constant 1.0 : f32
          %v965 = arith.constant 9.999999747378752e-06 : f32
          %v966 = arith.addf %v965, %in_961 : f32
          %v967 = math.sqrt %v966 : f32
          %v968 = arith.divf %v964, %v967 : f32
          %v969 = arith.mulf %v968, %in_962 : f32
          %v970 = arith.mulf %v969, %in_960 : f32
          linalg.yield %v970 : f32
      }
    -> tensor<112xf32>
    %v943.post = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v943.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v943.buf.out, %v949.buf.out, %v959.buf.out, %l_self_modules_blocks_modules_7_modules_project_conv_modules_1_parameters_bias_ : tensor<10x112x7x2x14xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>)
      outs(%v943.post : tensor<10x112x7x2x14xf32>) {
        ^bb0(%acc_974: f32, %in_971: f32, %in_972: f32, %in_973: f32, %post_975: f32):
          %v976 = arith.mulf %acc_974, %in_971 : f32
          %v977 = arith.subf %v976, %in_972 : f32
          %v978 = arith.addf %v977, %in_973 : f32
          linalg.yield %v978 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %l_self_modules_blocks_modules_8_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_8_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [672, 112, 1, 1] : tensor<672x112xf32> into tensor<672x112x1x1xf32>
    %v979.empty = tensor.empty() : tensor<10x672x7x2x14xf32>
    %v979.buf = linalg.fill ins(%init : f32) outs(%v979.empty : tensor<10x672x7x2x14xf32>) -> tensor<10x672x7x2x14xf32>
    %v979.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v943.post.out, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_0_parameters_weight_.expanded : tensor<10x112x7x2x14xf32>, tensor<672x112x1x1xf32>)
      outs(%v979.buf : tensor<10x672x7x2x14xf32>) {
        ^bb0(%in_980: f32, %in_981: f32, %acc_982: f32):
          %v983 = arith.mulf %in_980, %in_981 : f32
          %v984 = arith.addf %v983, %acc_982 : f32
          linalg.yield %v984 : f32
      }
    -> tensor<10x672x7x2x14xf32>
    %v985.buf = tensor.empty() : tensor<672xf32>
    %v985.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v985.buf : tensor<672xf32>) {
        ^bb0(%in_986: f32, %in_987: f32, %acc_988: f32):
          %v989 = arith.constant 1.0 : f32
          %v990 = arith.constant 9.999999747378752e-06 : f32
          %v991 = arith.addf %v990, %in_986 : f32
          %v992 = math.sqrt %v991 : f32
          %v993 = arith.divf %v989, %v992 : f32
          %v994 = arith.mulf %v993, %in_987 : f32
          linalg.yield %v994 : f32
      }
    -> tensor<672xf32>
    %v995.buf = tensor.empty() : tensor<672xf32>
    %v995.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v995.buf : tensor<672xf32>) {
        ^bb0(%in_996: f32, %in_997: f32, %in_998: f32, %acc_999: f32):
          %v1000 = arith.constant 1.0 : f32
          %v1001 = arith.constant 9.999999747378752e-06 : f32
          %v1002 = arith.addf %v1001, %in_997 : f32
          %v1003 = math.sqrt %v1002 : f32
          %v1004 = arith.divf %v1000, %v1003 : f32
          %v1005 = arith.mulf %v1004, %in_998 : f32
          %v1006 = arith.mulf %v1005, %in_996 : f32
          linalg.yield %v1006 : f32
      }
    -> tensor<672xf32>
    %v979.post = tensor.empty() : tensor<10x672x7x2x14xf32>
    %v979.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v979.buf.out, %v985.buf.out, %v995.buf.out, %l_self_modules_blocks_modules_8_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x672x7x2x14xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v979.post : tensor<10x672x7x2x14xf32>) {
        ^bb0(%acc_1010: f32, %in_1007: f32, %in_1008: f32, %in_1009: f32, %post_1011: f32):
          %v1012 = arith.mulf %acc_1010, %in_1007 : f32
          %v1013 = arith.subf %v1012, %in_1008 : f32
          %v1014 = arith.addf %v1013, %in_1009 : f32
          %v1015 = arith.maxnumf %init, %v1014 : f32
          %v1016 = arith.constant 6.0 : f32
          %v1017 = arith.minnumf %v1016, %v1015 : f32
          linalg.yield %v1017 : f32
      }
    -> tensor<10x672x7x2x14xf32>
    %input_64.buf = tensor.empty() : tensor<10x672x14x14xf32>
    %input_64.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v979.post.out : tensor<10x672x7x2x14xf32>)
      outs(%input_64.buf : tensor<10x672x14x14xf32>) {
        ^bb0(%in_1018: f32, %acc_1019: f32):
          linalg.yield %in_1018 : f32
      }
    -> tensor<10x672x14x14xf32>
    %v1024 = tensor.pad %input_64.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i1020: index, %pad_i1021: index, %pad_i1022: index, %pad_i1023: index):
        tensor.yield %init : f32
    } : tensor<10x672x14x14xf32> to tensor<10x672x18x18xf32>
    %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [672, 1, 5, 5] : tensor<672x5x5xf32> into tensor<672x1x5x5xf32>
    %input_67.empty = tensor.empty() : tensor<10x672x14x14xf32>
    %input_67.buf = linalg.fill ins(%init : f32) outs(%input_67.empty : tensor<10x672x14x14xf32>) -> tensor<10x672x14x14xf32>
    %input_67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1024, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x672x18x18xf32>, tensor<672x1x5x5xf32>)
      outs(%input_67.buf : tensor<10x672x14x14xf32>) {
        ^bb0(%in_1025: f32, %in_1026: f32, %acc_1027: f32):
          %v1028 = arith.mulf %in_1025, %in_1026 : f32
          %v1029 = arith.addf %v1028, %acc_1027 : f32
          linalg.yield %v1029 : f32
      }
    -> tensor<10x672x14x14xf32>
    %v1030.buf = tensor.empty() : tensor<672xf32>
    %v1030.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v1030.buf : tensor<672xf32>) {
        ^bb0(%in_1031: f32, %in_1032: f32, %acc_1033: f32):
          %v1034 = arith.constant 1.0 : f32
          %v1035 = arith.constant 9.999999747378752e-06 : f32
          %v1036 = arith.addf %v1035, %in_1031 : f32
          %v1037 = math.sqrt %v1036 : f32
          %v1038 = arith.divf %v1034, %v1037 : f32
          %v1039 = arith.mulf %v1038, %in_1032 : f32
          linalg.yield %v1039 : f32
      }
    -> tensor<672xf32>
    %v1040.buf = tensor.empty() : tensor<672xf32>
    %v1040.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v1040.buf : tensor<672xf32>) {
        ^bb0(%in_1041: f32, %in_1042: f32, %in_1043: f32, %acc_1044: f32):
          %v1045 = arith.constant 1.0 : f32
          %v1046 = arith.constant 9.999999747378752e-06 : f32
          %v1047 = arith.addf %v1046, %in_1042 : f32
          %v1048 = math.sqrt %v1047 : f32
          %v1049 = arith.divf %v1045, %v1048 : f32
          %v1050 = arith.mulf %v1049, %in_1043 : f32
          %v1051 = arith.mulf %v1050, %in_1041 : f32
          linalg.yield %v1051 : f32
      }
    -> tensor<672xf32>
    %input_67.post = tensor.empty() : tensor<10x672x14x14xf32>
    %input_67.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_67.buf.out, %v1030.buf.out, %v1040.buf.out, %l_self_modules_blocks_modules_8_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x672x14x14xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%input_67.post : tensor<10x672x14x14xf32>) {
        ^bb0(%acc_1055: f32, %in_1052: f32, %in_1053: f32, %in_1054: f32, %post_1056: f32):
          %v1057 = arith.mulf %acc_1055, %in_1052 : f32
          %v1058 = arith.subf %v1057, %in_1053 : f32
          %v1059 = arith.addf %v1058, %in_1054 : f32
          %v1060 = arith.maxnumf %init, %v1059 : f32
          %v1061 = arith.constant 6.0 : f32
          %v1062 = arith.minnumf %v1061, %v1060 : f32
          linalg.yield %v1062 : f32
      }
    -> tensor<10x672x14x14xf32>
    %l_self_modules_blocks_modules_8_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_8_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [112, 672, 1, 1] : tensor<112x672xf32> into tensor<112x672x1x1xf32>
    %v1063.empty = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v1063.buf = linalg.fill ins(%init : f32) outs(%v1063.empty : tensor<10x112x7x2x14xf32>) -> tensor<10x112x7x2x14xf32>
    %v1063.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_67.post.out, %l_self_modules_blocks_modules_8_modules_project_conv_modules_0_parameters_weight_.expanded : tensor<10x672x14x14xf32>, tensor<112x672x1x1xf32>)
      outs(%v1063.buf : tensor<10x112x7x2x14xf32>) {
        ^bb0(%in_1064: f32, %in_1065: f32, %acc_1066: f32):
          %v1067 = arith.mulf %in_1064, %in_1065 : f32
          %v1068 = arith.addf %v1067, %acc_1066 : f32
          linalg.yield %v1068 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %v1069.buf = tensor.empty() : tensor<112xf32>
    %v1069.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_8_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_parameters_weight_ : tensor<112xf32>, tensor<112xf32>)
      outs(%v1069.buf : tensor<112xf32>) {
        ^bb0(%in_1070: f32, %in_1071: f32, %acc_1072: f32):
          %v1073 = arith.constant 1.0 : f32
          %v1074 = arith.constant 9.999999747378752e-06 : f32
          %v1075 = arith.addf %v1074, %in_1070 : f32
          %v1076 = math.sqrt %v1075 : f32
          %v1077 = arith.divf %v1073, %v1076 : f32
          %v1078 = arith.mulf %v1077, %in_1071 : f32
          linalg.yield %v1078 : f32
      }
    -> tensor<112xf32>
    %v1079.buf = tensor.empty() : tensor<112xf32>
    %v1079.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_8_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_parameters_weight_ : tensor<112xf32>, tensor<112xf32>, tensor<112xf32>)
      outs(%v1079.buf : tensor<112xf32>) {
        ^bb0(%in_1080: f32, %in_1081: f32, %in_1082: f32, %acc_1083: f32):
          %v1084 = arith.constant 1.0 : f32
          %v1085 = arith.constant 9.999999747378752e-06 : f32
          %v1086 = arith.addf %v1085, %in_1081 : f32
          %v1087 = math.sqrt %v1086 : f32
          %v1088 = arith.divf %v1084, %v1087 : f32
          %v1089 = arith.mulf %v1088, %in_1082 : f32
          %v1090 = arith.mulf %v1089, %in_1080 : f32
          linalg.yield %v1090 : f32
      }
    -> tensor<112xf32>
    %v1063.post = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v1063.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1063.buf.out, %v1069.buf.out, %v1079.buf.out, %l_self_modules_blocks_modules_8_modules_project_conv_modules_1_parameters_bias_, %v943.post.out : tensor<10x112x7x2x14xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<10x112x7x2x14xf32>)
      outs(%v1063.post : tensor<10x112x7x2x14xf32>) {
        ^bb0(%acc_1095: f32, %in_1091: f32, %in_1092: f32, %in_1093: f32, %in_1094: f32, %post_1096: f32):
          %v1097 = arith.mulf %acc_1095, %in_1091 : f32
          %v1098 = arith.subf %v1097, %in_1092 : f32
          %v1099 = arith.addf %v1098, %in_1093 : f32
          %v1100 = arith.addf %v1099, %in_1094 : f32
          linalg.yield %v1100 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %l_self_modules_blocks_modules_9_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_9_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [672, 112, 1, 1] : tensor<672x112xf32> into tensor<672x112x1x1xf32>
    %v1101.empty = tensor.empty() : tensor<10x672x7x2x14xf32>
    %v1101.buf = linalg.fill ins(%init : f32) outs(%v1101.empty : tensor<10x672x7x2x14xf32>) -> tensor<10x672x7x2x14xf32>
    %v1101.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1063.post.out, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_0_parameters_weight_.expanded : tensor<10x112x7x2x14xf32>, tensor<672x112x1x1xf32>)
      outs(%v1101.buf : tensor<10x672x7x2x14xf32>) {
        ^bb0(%in_1102: f32, %in_1103: f32, %acc_1104: f32):
          %v1105 = arith.mulf %in_1102, %in_1103 : f32
          %v1106 = arith.addf %v1105, %acc_1104 : f32
          linalg.yield %v1106 : f32
      }
    -> tensor<10x672x7x2x14xf32>
    %v1107.buf = tensor.empty() : tensor<672xf32>
    %v1107.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v1107.buf : tensor<672xf32>) {
        ^bb0(%in_1108: f32, %in_1109: f32, %acc_1110: f32):
          %v1111 = arith.constant 1.0 : f32
          %v1112 = arith.constant 9.999999747378752e-06 : f32
          %v1113 = arith.addf %v1112, %in_1108 : f32
          %v1114 = math.sqrt %v1113 : f32
          %v1115 = arith.divf %v1111, %v1114 : f32
          %v1116 = arith.mulf %v1115, %in_1109 : f32
          linalg.yield %v1116 : f32
      }
    -> tensor<672xf32>
    %v1117.buf = tensor.empty() : tensor<672xf32>
    %v1117.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v1117.buf : tensor<672xf32>) {
        ^bb0(%in_1118: f32, %in_1119: f32, %in_1120: f32, %acc_1121: f32):
          %v1122 = arith.constant 1.0 : f32
          %v1123 = arith.constant 9.999999747378752e-06 : f32
          %v1124 = arith.addf %v1123, %in_1119 : f32
          %v1125 = math.sqrt %v1124 : f32
          %v1126 = arith.divf %v1122, %v1125 : f32
          %v1127 = arith.mulf %v1126, %in_1120 : f32
          %v1128 = arith.mulf %v1127, %in_1118 : f32
          linalg.yield %v1128 : f32
      }
    -> tensor<672xf32>
    %v1101.post = tensor.empty() : tensor<10x672x7x2x14xf32>
    %v1101.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1101.buf.out, %v1107.buf.out, %v1117.buf.out, %l_self_modules_blocks_modules_9_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x672x7x2x14xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v1101.post : tensor<10x672x7x2x14xf32>) {
        ^bb0(%acc_1132: f32, %in_1129: f32, %in_1130: f32, %in_1131: f32, %post_1133: f32):
          %v1134 = arith.mulf %acc_1132, %in_1129 : f32
          %v1135 = arith.subf %v1134, %in_1130 : f32
          %v1136 = arith.addf %v1135, %in_1131 : f32
          %v1137 = arith.maxnumf %init, %v1136 : f32
          %v1138 = arith.constant 6.0 : f32
          %v1139 = arith.minnumf %v1138, %v1137 : f32
          linalg.yield %v1139 : f32
      }
    -> tensor<10x672x7x2x14xf32>
    %input_72.buf = tensor.empty() : tensor<10x672x14x14xf32>
    %input_72.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1101.post.out : tensor<10x672x7x2x14xf32>)
      outs(%input_72.buf : tensor<10x672x14x14xf32>) {
        ^bb0(%in_1140: f32, %acc_1141: f32):
          linalg.yield %in_1140 : f32
      }
    -> tensor<10x672x14x14xf32>
    %v1146 = tensor.pad %input_72.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i1142: index, %pad_i1143: index, %pad_i1144: index, %pad_i1145: index):
        tensor.yield %init : f32
    } : tensor<10x672x14x14xf32> to tensor<10x672x18x18xf32>
    %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [672, 1, 5, 5] : tensor<672x5x5xf32> into tensor<672x1x5x5xf32>
    %input_75.empty = tensor.empty() : tensor<10x672x7x7xf32>
    %input_75.buf = linalg.fill ins(%init : f32) outs(%input_75.empty : tensor<10x672x7x7xf32>) -> tensor<10x672x7x7xf32>
    %input_75.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1146, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x672x18x18xf32>, tensor<672x1x5x5xf32>)
      outs(%input_75.buf : tensor<10x672x7x7xf32>) {
        ^bb0(%in_1147: f32, %in_1148: f32, %acc_1149: f32):
          %v1150 = arith.mulf %in_1147, %in_1148 : f32
          %v1151 = arith.addf %v1150, %acc_1149 : f32
          linalg.yield %v1151 : f32
      }
    -> tensor<10x672x7x7xf32>
    %v1152.buf = tensor.empty() : tensor<672xf32>
    %v1152.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v1152.buf : tensor<672xf32>) {
        ^bb0(%in_1153: f32, %in_1154: f32, %acc_1155: f32):
          %v1156 = arith.constant 1.0 : f32
          %v1157 = arith.constant 9.999999747378752e-06 : f32
          %v1158 = arith.addf %v1157, %in_1153 : f32
          %v1159 = math.sqrt %v1158 : f32
          %v1160 = arith.divf %v1156, %v1159 : f32
          %v1161 = arith.mulf %v1160, %in_1154 : f32
          linalg.yield %v1161 : f32
      }
    -> tensor<672xf32>
    %v1162.buf = tensor.empty() : tensor<672xf32>
    %v1162.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v1162.buf : tensor<672xf32>) {
        ^bb0(%in_1163: f32, %in_1164: f32, %in_1165: f32, %acc_1166: f32):
          %v1167 = arith.constant 1.0 : f32
          %v1168 = arith.constant 9.999999747378752e-06 : f32
          %v1169 = arith.addf %v1168, %in_1164 : f32
          %v1170 = math.sqrt %v1169 : f32
          %v1171 = arith.divf %v1167, %v1170 : f32
          %v1172 = arith.mulf %v1171, %in_1165 : f32
          %v1173 = arith.mulf %v1172, %in_1163 : f32
          linalg.yield %v1173 : f32
      }
    -> tensor<672xf32>
    %input_75.post = tensor.empty() : tensor<10x672x7x7xf32>
    %input_75.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_75.buf.out, %v1152.buf.out, %v1162.buf.out, %l_self_modules_blocks_modules_9_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x672x7x7xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%input_75.post : tensor<10x672x7x7xf32>) {
        ^bb0(%acc_1177: f32, %in_1174: f32, %in_1175: f32, %in_1176: f32, %post_1178: f32):
          %v1179 = arith.mulf %acc_1177, %in_1174 : f32
          %v1180 = arith.subf %v1179, %in_1175 : f32
          %v1181 = arith.addf %v1180, %in_1176 : f32
          %v1182 = arith.maxnumf %init, %v1181 : f32
          %v1183 = arith.constant 6.0 : f32
          %v1184 = arith.minnumf %v1183, %v1182 : f32
          linalg.yield %v1184 : f32
      }
    -> tensor<10x672x7x7xf32>
    %l_self_modules_blocks_modules_9_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_9_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 672, 1, 1] : tensor<192x672xf32> into tensor<192x672x1x1xf32>
    %v1185.empty = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v1185.buf = linalg.fill ins(%init : f32) outs(%v1185.empty : tensor<10x192x7x1x7xf32>) -> tensor<10x192x7x1x7xf32>
    %v1185.shape = tensor.empty() : tensor<7x1xf32>
    %v1185.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_75.post.out, %l_self_modules_blocks_modules_9_modules_project_conv_modules_0_parameters_weight_.expanded, %v1185.shape : tensor<10x672x7x7xf32>, tensor<192x672x1x1xf32>, tensor<7x1xf32>)
      outs(%v1185.buf : tensor<10x192x7x1x7xf32>) {
        ^bb0(%in_1187: f32, %in_1188: f32, %shape_1186: f32, %acc_1189: f32):
          %v1190 = arith.mulf %in_1187, %in_1188 : f32
          %v1191 = arith.addf %v1190, %acc_1189 : f32
          linalg.yield %v1191 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %v1192.buf = tensor.empty() : tensor<192xf32>
    %v1192.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_9_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v1192.buf : tensor<192xf32>) {
        ^bb0(%in_1193: f32, %in_1194: f32, %acc_1195: f32):
          %v1196 = arith.constant 1.0 : f32
          %v1197 = arith.constant 9.999999747378752e-06 : f32
          %v1198 = arith.addf %v1197, %in_1193 : f32
          %v1199 = math.sqrt %v1198 : f32
          %v1200 = arith.divf %v1196, %v1199 : f32
          %v1201 = arith.mulf %v1200, %in_1194 : f32
          linalg.yield %v1201 : f32
      }
    -> tensor<192xf32>
    %v1202.buf = tensor.empty() : tensor<192xf32>
    %v1202.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_9_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v1202.buf : tensor<192xf32>) {
        ^bb0(%in_1203: f32, %in_1204: f32, %in_1205: f32, %acc_1206: f32):
          %v1207 = arith.constant 1.0 : f32
          %v1208 = arith.constant 9.999999747378752e-06 : f32
          %v1209 = arith.addf %v1208, %in_1204 : f32
          %v1210 = math.sqrt %v1209 : f32
          %v1211 = arith.divf %v1207, %v1210 : f32
          %v1212 = arith.mulf %v1211, %in_1205 : f32
          %v1213 = arith.mulf %v1212, %in_1203 : f32
          linalg.yield %v1213 : f32
      }
    -> tensor<192xf32>
    %v1185.post = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v1185.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1185.buf.out, %v1192.buf.out, %v1202.buf.out, %l_self_modules_blocks_modules_9_modules_project_conv_modules_1_parameters_bias_ : tensor<10x192x7x1x7xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v1185.post : tensor<10x192x7x1x7xf32>) {
        ^bb0(%acc_1217: f32, %in_1214: f32, %in_1215: f32, %in_1216: f32, %post_1218: f32):
          %v1219 = arith.mulf %acc_1217, %in_1214 : f32
          %v1220 = arith.subf %v1219, %in_1215 : f32
          %v1221 = arith.addf %v1220, %in_1216 : f32
          linalg.yield %v1221 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %l_self_modules_blocks_modules_10_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_10_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [1152, 192, 1, 1] : tensor<1152x192xf32> into tensor<1152x192x1x1xf32>
    %v1222.empty = tensor.empty() : tensor<10x1152x7x1x7xf32>
    %v1222.buf = linalg.fill ins(%init : f32) outs(%v1222.empty : tensor<10x1152x7x1x7xf32>) -> tensor<10x1152x7x1x7xf32>
    %v1222.shape = tensor.empty() : tensor<7x1xf32>
    %v1222.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1185.post.out, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_0_parameters_weight_.expanded, %v1222.shape : tensor<10x192x7x1x7xf32>, tensor<1152x192x1x1xf32>, tensor<7x1xf32>)
      outs(%v1222.buf : tensor<10x1152x7x1x7xf32>) {
        ^bb0(%in_1224: f32, %in_1225: f32, %shape_1223: f32, %acc_1226: f32):
          %v1227 = arith.mulf %in_1224, %in_1225 : f32
          %v1228 = arith.addf %v1227, %acc_1226 : f32
          linalg.yield %v1228 : f32
      }
    -> tensor<10x1152x7x1x7xf32>
    %v1229.buf = tensor.empty() : tensor<1152xf32>
    %v1229.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1229.buf : tensor<1152xf32>) {
        ^bb0(%in_1230: f32, %in_1231: f32, %acc_1232: f32):
          %v1233 = arith.constant 1.0 : f32
          %v1234 = arith.constant 9.999999747378752e-06 : f32
          %v1235 = arith.addf %v1234, %in_1230 : f32
          %v1236 = math.sqrt %v1235 : f32
          %v1237 = arith.divf %v1233, %v1236 : f32
          %v1238 = arith.mulf %v1237, %in_1231 : f32
          linalg.yield %v1238 : f32
      }
    -> tensor<1152xf32>
    %v1239.buf = tensor.empty() : tensor<1152xf32>
    %v1239.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1239.buf : tensor<1152xf32>) {
        ^bb0(%in_1240: f32, %in_1241: f32, %in_1242: f32, %acc_1243: f32):
          %v1244 = arith.constant 1.0 : f32
          %v1245 = arith.constant 9.999999747378752e-06 : f32
          %v1246 = arith.addf %v1245, %in_1241 : f32
          %v1247 = math.sqrt %v1246 : f32
          %v1248 = arith.divf %v1244, %v1247 : f32
          %v1249 = arith.mulf %v1248, %in_1242 : f32
          %v1250 = arith.mulf %v1249, %in_1240 : f32
          linalg.yield %v1250 : f32
      }
    -> tensor<1152xf32>
    %v1222.post = tensor.empty() : tensor<10x1152x7x1x7xf32>
    %v1222.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1222.buf.out, %v1229.buf.out, %v1239.buf.out, %l_self_modules_blocks_modules_10_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x1152x7x1x7xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1222.post : tensor<10x1152x7x1x7xf32>) {
        ^bb0(%acc_1254: f32, %in_1251: f32, %in_1252: f32, %in_1253: f32, %post_1255: f32):
          %v1256 = arith.mulf %acc_1254, %in_1251 : f32
          %v1257 = arith.subf %v1256, %in_1252 : f32
          %v1258 = arith.addf %v1257, %in_1253 : f32
          %v1259 = arith.maxnumf %init, %v1258 : f32
          %v1260 = arith.constant 6.0 : f32
          %v1261 = arith.minnumf %v1260, %v1259 : f32
          linalg.yield %v1261 : f32
      }
    -> tensor<10x1152x7x1x7xf32>
    %input_80.buf = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_80.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1222.post.out : tensor<10x1152x7x1x7xf32>)
      outs(%input_80.buf : tensor<10x1152x7x7xf32>) {
        ^bb0(%in_1262: f32, %acc_1263: f32):
          linalg.yield %in_1262 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %v1268 = tensor.pad %input_80.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i1264: index, %pad_i1265: index, %pad_i1266: index, %pad_i1267: index):
        tensor.yield %init : f32
    } : tensor<10x1152x7x7xf32> to tensor<10x1152x11x11xf32>
    %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [1152, 1, 5, 5] : tensor<1152x5x5xf32> into tensor<1152x1x5x5xf32>
    %input_83.empty = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_83.buf = linalg.fill ins(%init : f32) outs(%input_83.empty : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %input_83.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1268, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x1152x11x11xf32>, tensor<1152x1x5x5xf32>)
      outs(%input_83.buf : tensor<10x1152x7x7xf32>) {
        ^bb0(%in_1269: f32, %in_1270: f32, %acc_1271: f32):
          %v1272 = arith.mulf %in_1269, %in_1270 : f32
          %v1273 = arith.addf %v1272, %acc_1271 : f32
          linalg.yield %v1273 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %v1274.buf = tensor.empty() : tensor<1152xf32>
    %v1274.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1274.buf : tensor<1152xf32>) {
        ^bb0(%in_1275: f32, %in_1276: f32, %acc_1277: f32):
          %v1278 = arith.constant 1.0 : f32
          %v1279 = arith.constant 9.999999747378752e-06 : f32
          %v1280 = arith.addf %v1279, %in_1275 : f32
          %v1281 = math.sqrt %v1280 : f32
          %v1282 = arith.divf %v1278, %v1281 : f32
          %v1283 = arith.mulf %v1282, %in_1276 : f32
          linalg.yield %v1283 : f32
      }
    -> tensor<1152xf32>
    %v1284.buf = tensor.empty() : tensor<1152xf32>
    %v1284.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1284.buf : tensor<1152xf32>) {
        ^bb0(%in_1285: f32, %in_1286: f32, %in_1287: f32, %acc_1288: f32):
          %v1289 = arith.constant 1.0 : f32
          %v1290 = arith.constant 9.999999747378752e-06 : f32
          %v1291 = arith.addf %v1290, %in_1286 : f32
          %v1292 = math.sqrt %v1291 : f32
          %v1293 = arith.divf %v1289, %v1292 : f32
          %v1294 = arith.mulf %v1293, %in_1287 : f32
          %v1295 = arith.mulf %v1294, %in_1285 : f32
          linalg.yield %v1295 : f32
      }
    -> tensor<1152xf32>
    %input_83.post = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_83.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_83.buf.out, %v1274.buf.out, %v1284.buf.out, %l_self_modules_blocks_modules_10_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x1152x7x7xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%input_83.post : tensor<10x1152x7x7xf32>) {
        ^bb0(%acc_1299: f32, %in_1296: f32, %in_1297: f32, %in_1298: f32, %post_1300: f32):
          %v1301 = arith.mulf %acc_1299, %in_1296 : f32
          %v1302 = arith.subf %v1301, %in_1297 : f32
          %v1303 = arith.addf %v1302, %in_1298 : f32
          %v1304 = arith.maxnumf %init, %v1303 : f32
          %v1305 = arith.constant 6.0 : f32
          %v1306 = arith.minnumf %v1305, %v1304 : f32
          linalg.yield %v1306 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %l_self_modules_blocks_modules_10_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_10_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 1152, 1, 1] : tensor<192x1152xf32> into tensor<192x1152x1x1xf32>
    %v1307.empty = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v1307.buf = linalg.fill ins(%init : f32) outs(%v1307.empty : tensor<10x192x7x1x7xf32>) -> tensor<10x192x7x1x7xf32>
    %v1307.shape = tensor.empty() : tensor<7x1xf32>
    %v1307.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_83.post.out, %l_self_modules_blocks_modules_10_modules_project_conv_modules_0_parameters_weight_.expanded, %v1307.shape : tensor<10x1152x7x7xf32>, tensor<192x1152x1x1xf32>, tensor<7x1xf32>)
      outs(%v1307.buf : tensor<10x192x7x1x7xf32>) {
        ^bb0(%in_1309: f32, %in_1310: f32, %shape_1308: f32, %acc_1311: f32):
          %v1312 = arith.mulf %in_1309, %in_1310 : f32
          %v1313 = arith.addf %v1312, %acc_1311 : f32
          linalg.yield %v1313 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %v1314.buf = tensor.empty() : tensor<192xf32>
    %v1314.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_10_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v1314.buf : tensor<192xf32>) {
        ^bb0(%in_1315: f32, %in_1316: f32, %acc_1317: f32):
          %v1318 = arith.constant 1.0 : f32
          %v1319 = arith.constant 9.999999747378752e-06 : f32
          %v1320 = arith.addf %v1319, %in_1315 : f32
          %v1321 = math.sqrt %v1320 : f32
          %v1322 = arith.divf %v1318, %v1321 : f32
          %v1323 = arith.mulf %v1322, %in_1316 : f32
          linalg.yield %v1323 : f32
      }
    -> tensor<192xf32>
    %v1324.buf = tensor.empty() : tensor<192xf32>
    %v1324.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_10_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v1324.buf : tensor<192xf32>) {
        ^bb0(%in_1325: f32, %in_1326: f32, %in_1327: f32, %acc_1328: f32):
          %v1329 = arith.constant 1.0 : f32
          %v1330 = arith.constant 9.999999747378752e-06 : f32
          %v1331 = arith.addf %v1330, %in_1326 : f32
          %v1332 = math.sqrt %v1331 : f32
          %v1333 = arith.divf %v1329, %v1332 : f32
          %v1334 = arith.mulf %v1333, %in_1327 : f32
          %v1335 = arith.mulf %v1334, %in_1325 : f32
          linalg.yield %v1335 : f32
      }
    -> tensor<192xf32>
    %v1307.post = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v1307.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1307.buf.out, %v1314.buf.out, %v1324.buf.out, %l_self_modules_blocks_modules_10_modules_project_conv_modules_1_parameters_bias_, %v1185.post.out : tensor<10x192x7x1x7xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<10x192x7x1x7xf32>)
      outs(%v1307.post : tensor<10x192x7x1x7xf32>) {
        ^bb0(%acc_1340: f32, %in_1336: f32, %in_1337: f32, %in_1338: f32, %in_1339: f32, %post_1341: f32):
          %v1342 = arith.mulf %acc_1340, %in_1336 : f32
          %v1343 = arith.subf %v1342, %in_1337 : f32
          %v1344 = arith.addf %v1343, %in_1338 : f32
          %v1345 = arith.addf %v1344, %in_1339 : f32
          linalg.yield %v1345 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %l_self_modules_blocks_modules_11_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_11_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [1152, 192, 1, 1] : tensor<1152x192xf32> into tensor<1152x192x1x1xf32>
    %v1346.empty = tensor.empty() : tensor<10x1152x7x1x7xf32>
    %v1346.buf = linalg.fill ins(%init : f32) outs(%v1346.empty : tensor<10x1152x7x1x7xf32>) -> tensor<10x1152x7x1x7xf32>
    %v1346.shape = tensor.empty() : tensor<7x1xf32>
    %v1346.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1307.post.out, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_0_parameters_weight_.expanded, %v1346.shape : tensor<10x192x7x1x7xf32>, tensor<1152x192x1x1xf32>, tensor<7x1xf32>)
      outs(%v1346.buf : tensor<10x1152x7x1x7xf32>) {
        ^bb0(%in_1348: f32, %in_1349: f32, %shape_1347: f32, %acc_1350: f32):
          %v1351 = arith.mulf %in_1348, %in_1349 : f32
          %v1352 = arith.addf %v1351, %acc_1350 : f32
          linalg.yield %v1352 : f32
      }
    -> tensor<10x1152x7x1x7xf32>
    %v1353.buf = tensor.empty() : tensor<1152xf32>
    %v1353.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1353.buf : tensor<1152xf32>) {
        ^bb0(%in_1354: f32, %in_1355: f32, %acc_1356: f32):
          %v1357 = arith.constant 1.0 : f32
          %v1358 = arith.constant 9.999999747378752e-06 : f32
          %v1359 = arith.addf %v1358, %in_1354 : f32
          %v1360 = math.sqrt %v1359 : f32
          %v1361 = arith.divf %v1357, %v1360 : f32
          %v1362 = arith.mulf %v1361, %in_1355 : f32
          linalg.yield %v1362 : f32
      }
    -> tensor<1152xf32>
    %v1363.buf = tensor.empty() : tensor<1152xf32>
    %v1363.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1363.buf : tensor<1152xf32>) {
        ^bb0(%in_1364: f32, %in_1365: f32, %in_1366: f32, %acc_1367: f32):
          %v1368 = arith.constant 1.0 : f32
          %v1369 = arith.constant 9.999999747378752e-06 : f32
          %v1370 = arith.addf %v1369, %in_1365 : f32
          %v1371 = math.sqrt %v1370 : f32
          %v1372 = arith.divf %v1368, %v1371 : f32
          %v1373 = arith.mulf %v1372, %in_1366 : f32
          %v1374 = arith.mulf %v1373, %in_1364 : f32
          linalg.yield %v1374 : f32
      }
    -> tensor<1152xf32>
    %v1346.post = tensor.empty() : tensor<10x1152x7x1x7xf32>
    %v1346.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1346.buf.out, %v1353.buf.out, %v1363.buf.out, %l_self_modules_blocks_modules_11_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x1152x7x1x7xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1346.post : tensor<10x1152x7x1x7xf32>) {
        ^bb0(%acc_1378: f32, %in_1375: f32, %in_1376: f32, %in_1377: f32, %post_1379: f32):
          %v1380 = arith.mulf %acc_1378, %in_1375 : f32
          %v1381 = arith.subf %v1380, %in_1376 : f32
          %v1382 = arith.addf %v1381, %in_1377 : f32
          %v1383 = arith.maxnumf %init, %v1382 : f32
          %v1384 = arith.constant 6.0 : f32
          %v1385 = arith.minnumf %v1384, %v1383 : f32
          linalg.yield %v1385 : f32
      }
    -> tensor<10x1152x7x1x7xf32>
    %input_88.buf = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_88.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1346.post.out : tensor<10x1152x7x1x7xf32>)
      outs(%input_88.buf : tensor<10x1152x7x7xf32>) {
        ^bb0(%in_1386: f32, %acc_1387: f32):
          linalg.yield %in_1386 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %v1392 = tensor.pad %input_88.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i1388: index, %pad_i1389: index, %pad_i1390: index, %pad_i1391: index):
        tensor.yield %init : f32
    } : tensor<10x1152x7x7xf32> to tensor<10x1152x11x11xf32>
    %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [1152, 1, 5, 5] : tensor<1152x5x5xf32> into tensor<1152x1x5x5xf32>
    %input_91.empty = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_91.buf = linalg.fill ins(%init : f32) outs(%input_91.empty : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %input_91.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1392, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x1152x11x11xf32>, tensor<1152x1x5x5xf32>)
      outs(%input_91.buf : tensor<10x1152x7x7xf32>) {
        ^bb0(%in_1393: f32, %in_1394: f32, %acc_1395: f32):
          %v1396 = arith.mulf %in_1393, %in_1394 : f32
          %v1397 = arith.addf %v1396, %acc_1395 : f32
          linalg.yield %v1397 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %v1398.buf = tensor.empty() : tensor<1152xf32>
    %v1398.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1398.buf : tensor<1152xf32>) {
        ^bb0(%in_1399: f32, %in_1400: f32, %acc_1401: f32):
          %v1402 = arith.constant 1.0 : f32
          %v1403 = arith.constant 9.999999747378752e-06 : f32
          %v1404 = arith.addf %v1403, %in_1399 : f32
          %v1405 = math.sqrt %v1404 : f32
          %v1406 = arith.divf %v1402, %v1405 : f32
          %v1407 = arith.mulf %v1406, %in_1400 : f32
          linalg.yield %v1407 : f32
      }
    -> tensor<1152xf32>
    %v1408.buf = tensor.empty() : tensor<1152xf32>
    %v1408.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1408.buf : tensor<1152xf32>) {
        ^bb0(%in_1409: f32, %in_1410: f32, %in_1411: f32, %acc_1412: f32):
          %v1413 = arith.constant 1.0 : f32
          %v1414 = arith.constant 9.999999747378752e-06 : f32
          %v1415 = arith.addf %v1414, %in_1410 : f32
          %v1416 = math.sqrt %v1415 : f32
          %v1417 = arith.divf %v1413, %v1416 : f32
          %v1418 = arith.mulf %v1417, %in_1411 : f32
          %v1419 = arith.mulf %v1418, %in_1409 : f32
          linalg.yield %v1419 : f32
      }
    -> tensor<1152xf32>
    %input_91.post = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_91.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_91.buf.out, %v1398.buf.out, %v1408.buf.out, %l_self_modules_blocks_modules_11_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x1152x7x7xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%input_91.post : tensor<10x1152x7x7xf32>) {
        ^bb0(%acc_1423: f32, %in_1420: f32, %in_1421: f32, %in_1422: f32, %post_1424: f32):
          %v1425 = arith.mulf %acc_1423, %in_1420 : f32
          %v1426 = arith.subf %v1425, %in_1421 : f32
          %v1427 = arith.addf %v1426, %in_1422 : f32
          %v1428 = arith.maxnumf %init, %v1427 : f32
          %v1429 = arith.constant 6.0 : f32
          %v1430 = arith.minnumf %v1429, %v1428 : f32
          linalg.yield %v1430 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %l_self_modules_blocks_modules_11_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_11_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 1152, 1, 1] : tensor<192x1152xf32> into tensor<192x1152x1x1xf32>
    %v1431.empty = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v1431.buf = linalg.fill ins(%init : f32) outs(%v1431.empty : tensor<10x192x7x1x7xf32>) -> tensor<10x192x7x1x7xf32>
    %v1431.shape = tensor.empty() : tensor<7x1xf32>
    %v1431.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_91.post.out, %l_self_modules_blocks_modules_11_modules_project_conv_modules_0_parameters_weight_.expanded, %v1431.shape : tensor<10x1152x7x7xf32>, tensor<192x1152x1x1xf32>, tensor<7x1xf32>)
      outs(%v1431.buf : tensor<10x192x7x1x7xf32>) {
        ^bb0(%in_1433: f32, %in_1434: f32, %shape_1432: f32, %acc_1435: f32):
          %v1436 = arith.mulf %in_1433, %in_1434 : f32
          %v1437 = arith.addf %v1436, %acc_1435 : f32
          linalg.yield %v1437 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %v1438.buf = tensor.empty() : tensor<192xf32>
    %v1438.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_11_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v1438.buf : tensor<192xf32>) {
        ^bb0(%in_1439: f32, %in_1440: f32, %acc_1441: f32):
          %v1442 = arith.constant 1.0 : f32
          %v1443 = arith.constant 9.999999747378752e-06 : f32
          %v1444 = arith.addf %v1443, %in_1439 : f32
          %v1445 = math.sqrt %v1444 : f32
          %v1446 = arith.divf %v1442, %v1445 : f32
          %v1447 = arith.mulf %v1446, %in_1440 : f32
          linalg.yield %v1447 : f32
      }
    -> tensor<192xf32>
    %v1448.buf = tensor.empty() : tensor<192xf32>
    %v1448.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_11_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v1448.buf : tensor<192xf32>) {
        ^bb0(%in_1449: f32, %in_1450: f32, %in_1451: f32, %acc_1452: f32):
          %v1453 = arith.constant 1.0 : f32
          %v1454 = arith.constant 9.999999747378752e-06 : f32
          %v1455 = arith.addf %v1454, %in_1450 : f32
          %v1456 = math.sqrt %v1455 : f32
          %v1457 = arith.divf %v1453, %v1456 : f32
          %v1458 = arith.mulf %v1457, %in_1451 : f32
          %v1459 = arith.mulf %v1458, %in_1449 : f32
          linalg.yield %v1459 : f32
      }
    -> tensor<192xf32>
    %v1431.post = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v1431.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1431.buf.out, %v1438.buf.out, %v1448.buf.out, %l_self_modules_blocks_modules_11_modules_project_conv_modules_1_parameters_bias_, %v1307.post.out : tensor<10x192x7x1x7xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<10x192x7x1x7xf32>)
      outs(%v1431.post : tensor<10x192x7x1x7xf32>) {
        ^bb0(%acc_1464: f32, %in_1460: f32, %in_1461: f32, %in_1462: f32, %in_1463: f32, %post_1465: f32):
          %v1466 = arith.mulf %acc_1464, %in_1460 : f32
          %v1467 = arith.subf %v1466, %in_1461 : f32
          %v1468 = arith.addf %v1467, %in_1462 : f32
          %v1469 = arith.addf %v1468, %in_1463 : f32
          linalg.yield %v1469 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %l_self_modules_blocks_modules_12_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_12_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [1152, 192, 1, 1] : tensor<1152x192xf32> into tensor<1152x192x1x1xf32>
    %v1470.empty = tensor.empty() : tensor<10x1152x7x1x7xf32>
    %v1470.buf = linalg.fill ins(%init : f32) outs(%v1470.empty : tensor<10x1152x7x1x7xf32>) -> tensor<10x1152x7x1x7xf32>
    %v1470.shape = tensor.empty() : tensor<7x1xf32>
    %v1470.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1431.post.out, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_0_parameters_weight_.expanded, %v1470.shape : tensor<10x192x7x1x7xf32>, tensor<1152x192x1x1xf32>, tensor<7x1xf32>)
      outs(%v1470.buf : tensor<10x1152x7x1x7xf32>) {
        ^bb0(%in_1472: f32, %in_1473: f32, %shape_1471: f32, %acc_1474: f32):
          %v1475 = arith.mulf %in_1472, %in_1473 : f32
          %v1476 = arith.addf %v1475, %acc_1474 : f32
          linalg.yield %v1476 : f32
      }
    -> tensor<10x1152x7x1x7xf32>
    %v1477.buf = tensor.empty() : tensor<1152xf32>
    %v1477.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1477.buf : tensor<1152xf32>) {
        ^bb0(%in_1478: f32, %in_1479: f32, %acc_1480: f32):
          %v1481 = arith.constant 1.0 : f32
          %v1482 = arith.constant 9.999999747378752e-06 : f32
          %v1483 = arith.addf %v1482, %in_1478 : f32
          %v1484 = math.sqrt %v1483 : f32
          %v1485 = arith.divf %v1481, %v1484 : f32
          %v1486 = arith.mulf %v1485, %in_1479 : f32
          linalg.yield %v1486 : f32
      }
    -> tensor<1152xf32>
    %v1487.buf = tensor.empty() : tensor<1152xf32>
    %v1487.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1487.buf : tensor<1152xf32>) {
        ^bb0(%in_1488: f32, %in_1489: f32, %in_1490: f32, %acc_1491: f32):
          %v1492 = arith.constant 1.0 : f32
          %v1493 = arith.constant 9.999999747378752e-06 : f32
          %v1494 = arith.addf %v1493, %in_1489 : f32
          %v1495 = math.sqrt %v1494 : f32
          %v1496 = arith.divf %v1492, %v1495 : f32
          %v1497 = arith.mulf %v1496, %in_1490 : f32
          %v1498 = arith.mulf %v1497, %in_1488 : f32
          linalg.yield %v1498 : f32
      }
    -> tensor<1152xf32>
    %v1470.post = tensor.empty() : tensor<10x1152x7x1x7xf32>
    %v1470.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1470.buf.out, %v1477.buf.out, %v1487.buf.out, %l_self_modules_blocks_modules_12_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x1152x7x1x7xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1470.post : tensor<10x1152x7x1x7xf32>) {
        ^bb0(%acc_1502: f32, %in_1499: f32, %in_1500: f32, %in_1501: f32, %post_1503: f32):
          %v1504 = arith.mulf %acc_1502, %in_1499 : f32
          %v1505 = arith.subf %v1504, %in_1500 : f32
          %v1506 = arith.addf %v1505, %in_1501 : f32
          %v1507 = arith.maxnumf %init, %v1506 : f32
          %v1508 = arith.constant 6.0 : f32
          %v1509 = arith.minnumf %v1508, %v1507 : f32
          linalg.yield %v1509 : f32
      }
    -> tensor<10x1152x7x1x7xf32>
    %input_96.buf = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_96.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1470.post.out : tensor<10x1152x7x1x7xf32>)
      outs(%input_96.buf : tensor<10x1152x7x7xf32>) {
        ^bb0(%in_1510: f32, %acc_1511: f32):
          linalg.yield %in_1510 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %v1516 = tensor.pad %input_96.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1512: index, %pad_i1513: index, %pad_i1514: index, %pad_i1515: index):
        tensor.yield %init : f32
    } : tensor<10x1152x7x7xf32> to tensor<10x1152x9x9xf32>
    %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [1152, 1, 3, 3] : tensor<1152x3x3xf32> into tensor<1152x1x3x3xf32>
    %input_99.empty = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_99.buf = linalg.fill ins(%init : f32) outs(%input_99.empty : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %input_99.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1516, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x1152x9x9xf32>, tensor<1152x1x3x3xf32>)
      outs(%input_99.buf : tensor<10x1152x7x7xf32>) {
        ^bb0(%in_1517: f32, %in_1518: f32, %acc_1519: f32):
          %v1520 = arith.mulf %in_1517, %in_1518 : f32
          %v1521 = arith.addf %v1520, %acc_1519 : f32
          linalg.yield %v1521 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %v1522.buf = tensor.empty() : tensor<1152xf32>
    %v1522.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1522.buf : tensor<1152xf32>) {
        ^bb0(%in_1523: f32, %in_1524: f32, %acc_1525: f32):
          %v1526 = arith.constant 1.0 : f32
          %v1527 = arith.constant 9.999999747378752e-06 : f32
          %v1528 = arith.addf %v1527, %in_1523 : f32
          %v1529 = math.sqrt %v1528 : f32
          %v1530 = arith.divf %v1526, %v1529 : f32
          %v1531 = arith.mulf %v1530, %in_1524 : f32
          linalg.yield %v1531 : f32
      }
    -> tensor<1152xf32>
    %v1532.buf = tensor.empty() : tensor<1152xf32>
    %v1532.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v1532.buf : tensor<1152xf32>) {
        ^bb0(%in_1533: f32, %in_1534: f32, %in_1535: f32, %acc_1536: f32):
          %v1537 = arith.constant 1.0 : f32
          %v1538 = arith.constant 9.999999747378752e-06 : f32
          %v1539 = arith.addf %v1538, %in_1534 : f32
          %v1540 = math.sqrt %v1539 : f32
          %v1541 = arith.divf %v1537, %v1540 : f32
          %v1542 = arith.mulf %v1541, %in_1535 : f32
          %v1543 = arith.mulf %v1542, %in_1533 : f32
          linalg.yield %v1543 : f32
      }
    -> tensor<1152xf32>
    %input_99.post = tensor.empty() : tensor<10x1152x7x7xf32>
    %input_99.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_99.buf.out, %v1522.buf.out, %v1532.buf.out, %l_self_modules_blocks_modules_12_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x1152x7x7xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%input_99.post : tensor<10x1152x7x7xf32>) {
        ^bb0(%acc_1547: f32, %in_1544: f32, %in_1545: f32, %in_1546: f32, %post_1548: f32):
          %v1549 = arith.mulf %acc_1547, %in_1544 : f32
          %v1550 = arith.subf %v1549, %in_1545 : f32
          %v1551 = arith.addf %v1550, %in_1546 : f32
          %v1552 = arith.maxnumf %init, %v1551 : f32
          %v1553 = arith.constant 6.0 : f32
          %v1554 = arith.minnumf %v1553, %v1552 : f32
          linalg.yield %v1554 : f32
      }
    -> tensor<10x1152x7x7xf32>
    %l_self_modules_blocks_modules_12_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_blocks_modules_12_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [320, 1152, 1, 1] : tensor<320x1152xf32> into tensor<320x1152x1x1xf32>
    %v1555.empty = tensor.empty() : tensor<10x320x7x1x7xf32>
    %v1555.buf = linalg.fill ins(%init : f32) outs(%v1555.empty : tensor<10x320x7x1x7xf32>) -> tensor<10x320x7x1x7xf32>
    %v1555.shape = tensor.empty() : tensor<7x1xf32>
    %v1555.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_99.post.out, %l_self_modules_blocks_modules_12_modules_project_conv_modules_0_parameters_weight_.expanded, %v1555.shape : tensor<10x1152x7x7xf32>, tensor<320x1152x1x1xf32>, tensor<7x1xf32>)
      outs(%v1555.buf : tensor<10x320x7x1x7xf32>) {
        ^bb0(%in_1557: f32, %in_1558: f32, %shape_1556: f32, %acc_1559: f32):
          %v1560 = arith.mulf %in_1557, %in_1558 : f32
          %v1561 = arith.addf %v1560, %acc_1559 : f32
          linalg.yield %v1561 : f32
      }
    -> tensor<10x320x7x1x7xf32>
    %v1562.buf = tensor.empty() : tensor<320xf32>
    %v1562.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_12_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_parameters_weight_ : tensor<320xf32>, tensor<320xf32>)
      outs(%v1562.buf : tensor<320xf32>) {
        ^bb0(%in_1563: f32, %in_1564: f32, %acc_1565: f32):
          %v1566 = arith.constant 1.0 : f32
          %v1567 = arith.constant 9.999999747378752e-06 : f32
          %v1568 = arith.addf %v1567, %in_1563 : f32
          %v1569 = math.sqrt %v1568 : f32
          %v1570 = arith.divf %v1566, %v1569 : f32
          %v1571 = arith.mulf %v1570, %in_1564 : f32
          linalg.yield %v1571 : f32
      }
    -> tensor<320xf32>
    %v1572.buf = tensor.empty() : tensor<320xf32>
    %v1572.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_blocks_modules_12_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_parameters_weight_ : tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v1572.buf : tensor<320xf32>) {
        ^bb0(%in_1573: f32, %in_1574: f32, %in_1575: f32, %acc_1576: f32):
          %v1577 = arith.constant 1.0 : f32
          %v1578 = arith.constant 9.999999747378752e-06 : f32
          %v1579 = arith.addf %v1578, %in_1574 : f32
          %v1580 = math.sqrt %v1579 : f32
          %v1581 = arith.divf %v1577, %v1580 : f32
          %v1582 = arith.mulf %v1581, %in_1575 : f32
          %v1583 = arith.mulf %v1582, %in_1573 : f32
          linalg.yield %v1583 : f32
      }
    -> tensor<320xf32>
    %v1555.post = tensor.empty() : tensor<10x320x7x1x7xf32>
    %v1555.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1555.buf.out, %v1562.buf.out, %v1572.buf.out, %l_self_modules_blocks_modules_12_modules_project_conv_modules_1_parameters_bias_ : tensor<10x320x7x1x7xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v1555.post : tensor<10x320x7x1x7xf32>) {
        ^bb0(%acc_1587: f32, %in_1584: f32, %in_1585: f32, %in_1586: f32, %post_1588: f32):
          %v1589 = arith.mulf %acc_1587, %in_1584 : f32
          %v1590 = arith.subf %v1589, %in_1585 : f32
          %v1591 = arith.addf %v1590, %in_1586 : f32
          linalg.yield %v1591 : f32
      }
    -> tensor<10x320x7x1x7xf32>
    %l_self_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv2_parameters_weight_ [[0], [1, 2, 3]] output_shape [1280, 320, 1, 1] : tensor<1280x320xf32> into tensor<1280x320x1x1xf32>
    %v1592.empty = tensor.empty() : tensor<10x1280x7x1x7xf32>
    %v1592.buf = linalg.fill ins(%init : f32) outs(%v1592.empty : tensor<10x1280x7x1x7xf32>) -> tensor<10x1280x7x1x7xf32>
    %v1592.shape = tensor.empty() : tensor<7x1xf32>
    %v1592.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1555.post.out, %l_self_modules_conv2_parameters_weight_.expanded, %v1592.shape : tensor<10x320x7x1x7xf32>, tensor<1280x320x1x1xf32>, tensor<7x1xf32>)
      outs(%v1592.buf : tensor<10x1280x7x1x7xf32>) {
        ^bb0(%in_1594: f32, %in_1595: f32, %shape_1593: f32, %acc_1596: f32):
          %v1597 = arith.mulf %in_1594, %in_1595 : f32
          %v1598 = arith.addf %v1597, %acc_1596 : f32
          linalg.yield %v1598 : f32
      }
    -> tensor<10x1280x7x1x7xf32>
    %v1599.buf = tensor.empty() : tensor<1280xf32>
    %v1599.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<1280xf32>, tensor<1280xf32>)
      outs(%v1599.buf : tensor<1280xf32>) {
        ^bb0(%in_1600: f32, %in_1601: f32, %acc_1602: f32):
          %v1603 = arith.constant 1.0 : f32
          %v1604 = arith.constant 9.999999747378752e-06 : f32
          %v1605 = arith.addf %v1604, %in_1600 : f32
          %v1606 = math.sqrt %v1605 : f32
          %v1607 = arith.divf %v1603, %v1606 : f32
          %v1608 = arith.mulf %v1607, %in_1601 : f32
          linalg.yield %v1608 : f32
      }
    -> tensor<1280xf32>
    %v1609.buf = tensor.empty() : tensor<1280xf32>
    %v1609.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_mean_, %l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>)
      outs(%v1609.buf : tensor<1280xf32>) {
        ^bb0(%in_1610: f32, %in_1611: f32, %in_1612: f32, %acc_1613: f32):
          %v1614 = arith.constant 1.0 : f32
          %v1615 = arith.constant 9.999999747378752e-06 : f32
          %v1616 = arith.addf %v1615, %in_1611 : f32
          %v1617 = math.sqrt %v1616 : f32
          %v1618 = arith.divf %v1614, %v1617 : f32
          %v1619 = arith.mulf %v1618, %in_1612 : f32
          %v1620 = arith.mulf %v1619, %in_1610 : f32
          linalg.yield %v1620 : f32
      }
    -> tensor<1280xf32>
    %v1592.post = tensor.empty() : tensor<10x1280x7x1x7xf32>
    %v1592.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1592.buf.out, %v1599.buf.out, %v1609.buf.out, %l_self_modules_bn2_parameters_bias_ : tensor<10x1280x7x1x7xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>)
      outs(%v1592.post : tensor<10x1280x7x1x7xf32>) {
        ^bb0(%acc_1624: f32, %in_1621: f32, %in_1622: f32, %in_1623: f32, %post_1625: f32):
          %v1626 = arith.mulf %acc_1624, %in_1621 : f32
          %v1627 = arith.subf %v1626, %in_1622 : f32
          %v1628 = arith.addf %v1627, %in_1623 : f32
          %v1629 = arith.maxnumf %init, %v1628 : f32
          linalg.yield %v1629 : f32
      }
    -> tensor<10x1280x7x1x7xf32>
    %v1630.empty = tensor.empty() : tensor<10x1280xf32>
    %v1630.buf = linalg.fill ins(%init : f32) outs(%v1630.empty : tensor<10x1280xf32>) -> tensor<10x1280xf32>
    %v1630.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%v1592.post.out : tensor<10x1280x7x1x7xf32>)
      outs(%v1630.buf : tensor<10x1280xf32>) {
        ^bb0(%in_1631: f32, %acc_1632: f32):
          %v1633 = arith.addf %in_1631, %acc_1632 : f32
          linalg.yield %v1633 : f32
      }
    -> tensor<10x1280xf32>
    %v1630.post = tensor.empty() : tensor<10x1280xf32>
    %v1630.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v1630.buf.out : tensor<10x1280xf32>)
      outs(%v1630.post : tensor<10x1280xf32>) {
        ^bb0(%acc_1634: f32, %post_1635: f32):
          %v1636 = arith.constant 49.0 : f32
          %v1637 = arith.divf %acc_1634, %v1636 : f32
          linalg.yield %v1637 : f32
      }
    -> tensor<10x1280xf32>
    %v1638.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v1638.buf = linalg.fill ins(%init : f32) outs(%v1638.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v1638.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v1630.post.out, %l_self_modules_fc_parameters_weight_ : tensor<10x1280xf32>, tensor<1000x1280xf32>)
      outs(%v1638.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_1639: f32, %in_1640: f32, %acc_1641: f32):
          %v1642 = arith.mulf %in_1639, %in_1640 : f32
          %v1643 = arith.addf %v1642, %acc_1641 : f32
          linalg.yield %v1643 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v1638.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v1638.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1638.buf.out, %l_self_modules_fc_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v1638.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_1645: f32, %in_1644: f32, %post_1646: f32):
          %v1647 = arith.addf %acc_1645, %in_1644 : f32
          linalg.yield %v1647 : f32
      }
    -> tensor<5x2x250x4xf32>
    %x_10.buf = tensor.empty() : tensor<10x1000xf32>
    %x_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v1638.post.out : tensor<5x2x250x4xf32>)
      outs(%x_10.buf : tensor<10x1000xf32>) {
        ^bb0(%in_1648: f32, %acc_1649: f32):
          linalg.yield %in_1648 : f32
      }
    -> tensor<10x1000xf32>
    func.return %x_10.buf.out : tensor<10x1000xf32>
  }
}
