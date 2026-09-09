module {
  func.func public @ShuffleNet(%l_self_modules_conv1_parameters_weight_: tensor<24x3x3x3xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_bn1_buffers_running_mean_: tensor<24xf32>, %l_self_modules_bn1_buffers_running_var_: tensor<24xf32>, %l_self_modules_bn1_parameters_weight_: tensor<24xf32>, %l_self_modules_bn1_parameters_bias_: tensor<24xf32>, %l_self_modules_stage2_modules_0_modules_conv1_parameters_weight_: tensor<60x8xf32>, %l_self_modules_stage2_modules_0_modules_bn1_buffers_running_mean_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_bn1_buffers_running_var_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_bn1_parameters_weight_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_bn1_parameters_bias_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_conv2_parameters_weight_: tensor<60x3x3xf32>, %l_self_modules_stage2_modules_0_modules_bn2_buffers_running_mean_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_bn2_buffers_running_var_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_bn2_parameters_weight_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_bn2_parameters_bias_: tensor<60xf32>, %l_self_modules_stage2_modules_0_modules_conv3_parameters_weight_: tensor<240x20xf32>, %l_self_modules_stage2_modules_0_modules_bn3_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage2_modules_0_modules_bn3_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage2_modules_0_modules_bn3_parameters_weight_: tensor<240xf32>, %l_self_modules_stage2_modules_0_modules_bn3_parameters_bias_: tensor<240xf32>, %l_self_modules_stage2_modules_0_modules_shortcut_modules_0_parameters_weight_: tensor<240x24xf32>, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_parameters_weight_: tensor<240xf32>, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_parameters_bias_: tensor<240xf32>, %l_self_modules_stage2_modules_1_modules_conv1_parameters_weight_: tensor<60x80xf32>, %l_self_modules_stage2_modules_1_modules_bn1_buffers_running_mean_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_bn1_buffers_running_var_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_bn1_parameters_weight_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_bn1_parameters_bias_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_conv2_parameters_weight_: tensor<60x3x3xf32>, %l_self_modules_stage2_modules_1_modules_bn2_buffers_running_mean_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_bn2_buffers_running_var_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_bn2_parameters_weight_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_bn2_parameters_bias_: tensor<60xf32>, %l_self_modules_stage2_modules_1_modules_conv3_parameters_weight_: tensor<240x20xf32>, %l_self_modules_stage2_modules_1_modules_bn3_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage2_modules_1_modules_bn3_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage2_modules_1_modules_bn3_parameters_weight_: tensor<240xf32>, %l_self_modules_stage2_modules_1_modules_bn3_parameters_bias_: tensor<240xf32>, %l_self_modules_stage2_modules_2_modules_conv1_parameters_weight_: tensor<60x80xf32>, %l_self_modules_stage2_modules_2_modules_bn1_buffers_running_mean_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_bn1_buffers_running_var_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_bn1_parameters_weight_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_bn1_parameters_bias_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_conv2_parameters_weight_: tensor<60x3x3xf32>, %l_self_modules_stage2_modules_2_modules_bn2_buffers_running_mean_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_bn2_buffers_running_var_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_bn2_parameters_weight_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_bn2_parameters_bias_: tensor<60xf32>, %l_self_modules_stage2_modules_2_modules_conv3_parameters_weight_: tensor<240x20xf32>, %l_self_modules_stage2_modules_2_modules_bn3_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage2_modules_2_modules_bn3_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage2_modules_2_modules_bn3_parameters_weight_: tensor<240xf32>, %l_self_modules_stage2_modules_2_modules_bn3_parameters_bias_: tensor<240xf32>, %l_self_modules_stage3_modules_0_modules_conv1_parameters_weight_: tensor<120x80xf32>, %l_self_modules_stage3_modules_0_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_stage3_modules_0_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_0_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_stage3_modules_0_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_0_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_0_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_0_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_stage3_modules_0_modules_shortcut_modules_0_parameters_weight_: tensor<480x240xf32>, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_parameters_bias_: tensor<480xf32>, %l_self_modules_stage3_modules_1_modules_conv1_parameters_weight_: tensor<120x160xf32>, %l_self_modules_stage3_modules_1_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_stage3_modules_1_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_1_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_stage3_modules_1_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_1_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_1_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_1_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_stage3_modules_2_modules_conv1_parameters_weight_: tensor<120x160xf32>, %l_self_modules_stage3_modules_2_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_stage3_modules_2_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_2_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_stage3_modules_2_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_2_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_2_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_2_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_stage3_modules_3_modules_conv1_parameters_weight_: tensor<120x160xf32>, %l_self_modules_stage3_modules_3_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_stage3_modules_3_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_3_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_stage3_modules_3_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_3_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_3_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_3_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_stage3_modules_4_modules_conv1_parameters_weight_: tensor<120x160xf32>, %l_self_modules_stage3_modules_4_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_stage3_modules_4_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_4_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_stage3_modules_4_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_4_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_4_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_4_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_stage3_modules_5_modules_conv1_parameters_weight_: tensor<120x160xf32>, %l_self_modules_stage3_modules_5_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_stage3_modules_5_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_5_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_stage3_modules_5_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_5_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_5_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_5_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_stage3_modules_6_modules_conv1_parameters_weight_: tensor<120x160xf32>, %l_self_modules_stage3_modules_6_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_stage3_modules_6_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_stage3_modules_6_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_stage3_modules_6_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_stage3_modules_6_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_stage3_modules_6_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_stage3_modules_6_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_stage4_modules_0_modules_conv1_parameters_weight_: tensor<240x160xf32>, %l_self_modules_stage4_modules_0_modules_bn1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_bn1_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_bn1_parameters_weight_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_bn1_parameters_bias_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_conv2_parameters_weight_: tensor<240x3x3xf32>, %l_self_modules_stage4_modules_0_modules_bn2_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_bn2_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_bn2_parameters_weight_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_bn2_parameters_bias_: tensor<240xf32>, %l_self_modules_stage4_modules_0_modules_conv3_parameters_weight_: tensor<960x80xf32>, %l_self_modules_stage4_modules_0_modules_bn3_buffers_running_mean_: tensor<960xf32>, %l_self_modules_stage4_modules_0_modules_bn3_buffers_running_var_: tensor<960xf32>, %l_self_modules_stage4_modules_0_modules_bn3_parameters_weight_: tensor<960xf32>, %l_self_modules_stage4_modules_0_modules_bn3_parameters_bias_: tensor<960xf32>, %l_self_modules_stage4_modules_0_modules_shortcut_modules_0_parameters_weight_: tensor<960x480xf32>, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_buffers_running_mean_: tensor<960xf32>, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_buffers_running_var_: tensor<960xf32>, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_parameters_weight_: tensor<960xf32>, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_parameters_bias_: tensor<960xf32>, %l_self_modules_stage4_modules_1_modules_conv1_parameters_weight_: tensor<240x320xf32>, %l_self_modules_stage4_modules_1_modules_bn1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_bn1_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_bn1_parameters_weight_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_bn1_parameters_bias_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_conv2_parameters_weight_: tensor<240x3x3xf32>, %l_self_modules_stage4_modules_1_modules_bn2_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_bn2_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_bn2_parameters_weight_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_bn2_parameters_bias_: tensor<240xf32>, %l_self_modules_stage4_modules_1_modules_conv3_parameters_weight_: tensor<960x80xf32>, %l_self_modules_stage4_modules_1_modules_bn3_buffers_running_mean_: tensor<960xf32>, %l_self_modules_stage4_modules_1_modules_bn3_buffers_running_var_: tensor<960xf32>, %l_self_modules_stage4_modules_1_modules_bn3_parameters_weight_: tensor<960xf32>, %l_self_modules_stage4_modules_1_modules_bn3_parameters_bias_: tensor<960xf32>, %l_self_modules_stage4_modules_2_modules_conv1_parameters_weight_: tensor<240x320xf32>, %l_self_modules_stage4_modules_2_modules_bn1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_bn1_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_bn1_parameters_weight_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_bn1_parameters_bias_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_conv2_parameters_weight_: tensor<240x3x3xf32>, %l_self_modules_stage4_modules_2_modules_bn2_buffers_running_mean_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_bn2_buffers_running_var_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_bn2_parameters_weight_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_bn2_parameters_bias_: tensor<240xf32>, %l_self_modules_stage4_modules_2_modules_conv3_parameters_weight_: tensor<960x80xf32>, %l_self_modules_stage4_modules_2_modules_bn3_buffers_running_mean_: tensor<960xf32>, %l_self_modules_stage4_modules_2_modules_bn3_buffers_running_var_: tensor<960xf32>, %l_self_modules_stage4_modules_2_modules_bn3_parameters_weight_: tensor<960xf32>, %l_self_modules_stage4_modules_2_modules_bn3_parameters_bias_: tensor<960xf32>, %l_self_modules_conv5_parameters_weight_: tensor<1024x960xf32>, %l_self_modules_bn5_buffers_running_mean_: tensor<1024xf32>, %l_self_modules_bn5_buffers_running_var_: tensor<1024xf32>, %l_self_modules_bn5_parameters_weight_: tensor<1024xf32>, %l_self_modules_bn5_parameters_bias_: tensor<1024xf32>, %l_self_modules_fc_parameters_weight_: tensor<1000x1024xf32>, %l_self_modules_fc_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %v4.empty = tensor.empty() : tensor<10x24x112x1x112xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<10x24x112x1x112xf32>) -> tensor<10x24x112x1x112xf32>
    %v4.shape = tensor.empty() : tensor<112x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_, %v4.shape : tensor<10x3x226x226xf32>, tensor<24x3x3x3xf32>, tensor<112x1xf32>)
      outs(%v4.buf : tensor<10x24x112x1x112xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x24x112x1x112xf32>
    %v11.buf = tensor.empty() : tensor<24xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<24xf32>, tensor<24xf32>)
      outs(%v11.buf : tensor<24xf32>) {
        ^bb0(%in_12: f32, %in_13: f32, %acc_14: f32):
          %v15 = arith.constant 1.0 : f32
          %v16 = arith.constant 9.999999747378752e-06 : f32
          %v17 = arith.addf %v16, %in_12 : f32
          %v18 = math.sqrt %v17 : f32
          %v19 = arith.divf %v15, %v18 : f32
          %v20 = arith.mulf %v19, %in_13 : f32
          linalg.yield %v20 : f32
      }
    -> tensor<24xf32>
    %v21.buf = tensor.empty() : tensor<24xf32>
    %v21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_mean_, %l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v21.buf : tensor<24xf32>) {
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
    -> tensor<24xf32>
    %v4.post = tensor.empty() : tensor<10x24x112x1x112xf32>
    %v4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.buf.out, %v11.buf.out, %v21.buf.out, %l_self_modules_bn1_parameters_bias_ : tensor<10x24x112x1x112xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v4.post : tensor<10x24x112x1x112xf32>) {
        ^bb0(%acc_36: f32, %in_33: f32, %in_34: f32, %in_35: f32, %post_37: f32):
          %v38 = arith.mulf %acc_36, %in_33 : f32
          %v39 = arith.subf %v38, %in_34 : f32
          %v40 = arith.addf %v39, %in_35 : f32
          %v41 = arith.maxnumf %init, %v40 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<10x24x112x1x112xf32>
    %x.buf = tensor.empty() : tensor<10x24x112x112xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<10x24x112x1x112xf32>)
      outs(%x.buf : tensor<10x24x112x112xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          linalg.yield %in_42 : f32
      }
    -> tensor<10x24x112x112xf32>
    %init_1 = arith.constant 0xFF800000 : f32
    %padded_1 = tensor.pad %x.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i44: index, %pad_i45: index, %pad_i46: index, %pad_i47: index):
        tensor.yield %init_1 : f32
    } : tensor<10x24x112x112xf32> to tensor<10x24x114x114xf32>
    %x_1.empty = tensor.empty() : tensor<10x24x56x56xf32>
    %x_1.buf = linalg.fill ins(%init_1 : f32) outs(%x_1.empty : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %x_1.shape = tensor.empty() : tensor<3x3xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_1, %x_1.shape : tensor<10x24x114x114xf32>, tensor<3x3xf32>)
      outs(%x_1.buf : tensor<10x24x56x56xf32>) {
        ^bb0(%in_49: f32, %shape_48: f32, %acc_50: f32):
          %v51 = arith.maxnumf %acc_50, %in_49 : f32
          linalg.yield %v51 : f32
      }
    -> tensor<10x24x56x56xf32>
    %l_self_modules_stage2_modules_0_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_0_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [60, 8, 1, 1] : tensor<60x8xf32> into tensor<60x8x1x1xf32>
    %out.empty = tensor.empty() : tensor<10x60x56x56xf32>
    %out.buf = linalg.fill ins(%init : f32) outs(%out.empty : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %out.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 20 * 8 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_1.buf.out, %l_self_modules_stage2_modules_0_modules_conv1_parameters_weight_.expanded : tensor<10x24x56x56xf32>, tensor<60x8x1x1xf32>)
      outs(%out.buf : tensor<10x60x56x56xf32>) {
        ^bb0(%in_52: f32, %in_53: f32, %acc_54: f32):
          %v55 = arith.mulf %in_52, %in_53 : f32
          %v56 = arith.addf %v55, %acc_54 : f32
          linalg.yield %v56 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v57.buf = tensor.empty() : tensor<60xf32>
    %v57.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_bn1_parameters_weight_ : tensor<60xf32>, tensor<60xf32>)
      outs(%v57.buf : tensor<60xf32>) {
        ^bb0(%in_58: f32, %in_59: f32, %acc_60: f32):
          %v61 = arith.constant 1.0 : f32
          %v62 = arith.constant 9.999999747378752e-06 : f32
          %v63 = arith.addf %v62, %in_58 : f32
          %v64 = math.sqrt %v63 : f32
          %v65 = arith.divf %v61, %v64 : f32
          %v66 = arith.mulf %v65, %in_59 : f32
          linalg.yield %v66 : f32
      }
    -> tensor<60xf32>
    %v67.buf = tensor.empty() : tensor<60xf32>
    %v67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_bn1_buffers_running_mean_, %l_self_modules_stage2_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_bn1_parameters_weight_ : tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%v67.buf : tensor<60xf32>) {
        ^bb0(%in_68: f32, %in_69: f32, %in_70: f32, %acc_71: f32):
          %v72 = arith.constant 1.0 : f32
          %v73 = arith.constant 9.999999747378752e-06 : f32
          %v74 = arith.addf %v73, %in_69 : f32
          %v75 = math.sqrt %v74 : f32
          %v76 = arith.divf %v72, %v75 : f32
          %v77 = arith.mulf %v76, %in_70 : f32
          %v78 = arith.mulf %v77, %in_68 : f32
          linalg.yield %v78 : f32
      }
    -> tensor<60xf32>
    %out.post = tensor.empty() : tensor<10x60x56x56xf32>
    %out.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out.buf.out, %v57.buf.out, %v67.buf.out, %l_self_modules_stage2_modules_0_modules_bn1_parameters_bias_ : tensor<10x60x56x56xf32>, tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%out.post : tensor<10x60x56x56xf32>) {
        ^bb0(%acc_82: f32, %in_79: f32, %in_80: f32, %in_81: f32, %post_83: f32):
          %v84 = arith.mulf %acc_82, %in_79 : f32
          %v85 = arith.subf %v84, %in_80 : f32
          %v86 = arith.addf %v85, %in_81 : f32
          %v87 = arith.maxnumf %init, %v86 : f32
          linalg.yield %v87 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v92 = tensor.pad %out.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i88: index, %pad_i89: index, %pad_i90: index, %pad_i91: index):
        tensor.yield %init : f32
    } : tensor<10x60x56x56xf32> to tensor<10x60x58x58xf32>
    %l_self_modules_stage2_modules_0_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_0_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [60, 1, 3, 3] : tensor<60x3x3xf32> into tensor<60x1x3x3xf32>
    %out_1.empty = tensor.empty() : tensor<10x60x56x56xf32>
    %out_1.buf = linalg.fill ins(%init : f32) outs(%out_1.empty : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %out_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v92, %l_self_modules_stage2_modules_0_modules_conv2_parameters_weight_.expanded : tensor<10x60x58x58xf32>, tensor<60x1x3x3xf32>)
      outs(%out_1.buf : tensor<10x60x56x56xf32>) {
        ^bb0(%in_93: f32, %in_94: f32, %acc_95: f32):
          %v96 = arith.mulf %in_93, %in_94 : f32
          %v97 = arith.addf %v96, %acc_95 : f32
          linalg.yield %v97 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v98.buf = tensor.empty() : tensor<60xf32>
    %v98.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_bn2_parameters_weight_ : tensor<60xf32>, tensor<60xf32>)
      outs(%v98.buf : tensor<60xf32>) {
        ^bb0(%in_99: f32, %in_100: f32, %acc_101: f32):
          %v102 = arith.constant 1.0 : f32
          %v103 = arith.constant 9.999999747378752e-06 : f32
          %v104 = arith.addf %v103, %in_99 : f32
          %v105 = math.sqrt %v104 : f32
          %v106 = arith.divf %v102, %v105 : f32
          %v107 = arith.mulf %v106, %in_100 : f32
          linalg.yield %v107 : f32
      }
    -> tensor<60xf32>
    %v108.buf = tensor.empty() : tensor<60xf32>
    %v108.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_bn2_buffers_running_mean_, %l_self_modules_stage2_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_bn2_parameters_weight_ : tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%v108.buf : tensor<60xf32>) {
        ^bb0(%in_109: f32, %in_110: f32, %in_111: f32, %acc_112: f32):
          %v113 = arith.constant 1.0 : f32
          %v114 = arith.constant 9.999999747378752e-06 : f32
          %v115 = arith.addf %v114, %in_110 : f32
          %v116 = math.sqrt %v115 : f32
          %v117 = arith.divf %v113, %v116 : f32
          %v118 = arith.mulf %v117, %in_111 : f32
          %v119 = arith.mulf %v118, %in_109 : f32
          linalg.yield %v119 : f32
      }
    -> tensor<60xf32>
    %out_1.post = tensor.empty() : tensor<10x60x56x56xf32>
    %out_1.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_1.buf.out, %v98.buf.out, %v108.buf.out, %l_self_modules_stage2_modules_0_modules_bn2_parameters_bias_ : tensor<10x60x56x56xf32>, tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%out_1.post : tensor<10x60x56x56xf32>) {
        ^bb0(%acc_123: f32, %in_120: f32, %in_121: f32, %in_122: f32, %post_124: f32):
          %v125 = arith.mulf %acc_123, %in_120 : f32
          %v126 = arith.subf %v125, %in_121 : f32
          %v127 = arith.addf %v126, %in_122 : f32
          linalg.yield %v127 : f32
      }
    -> tensor<10x60x56x56xf32>
    %transpose.buf = tensor.empty() : tensor<10x20x3x56x56xf32>
    %transpose.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 20, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_1.post.out : tensor<10x60x56x56xf32>)
      outs(%transpose.buf : tensor<10x20x3x56x56xf32>) {
        ^bb0(%in_128: f32, %acc_129: f32):
          linalg.yield %in_128 : f32
      }
    -> tensor<10x20x3x56x56xf32>
    %l_self_modules_stage2_modules_0_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_0_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 20, 1, 1] : tensor<240x20xf32> into tensor<240x20x1x1xf32>
    %out_3.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_3.buf = linalg.fill ins(%init : f32) outs(%out_3.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 80 * 20 + d4) floordiv 3, (d1 floordiv 80 * 20 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose.buf.out, %l_self_modules_stage2_modules_0_modules_conv3_parameters_weight_.expanded : tensor<10x20x3x56x56xf32>, tensor<240x20x1x1xf32>)
      outs(%out_3.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_130: f32, %in_131: f32, %acc_132: f32):
          %v133 = arith.mulf %in_130, %in_131 : f32
          %v134 = arith.addf %v133, %acc_132 : f32
          linalg.yield %v134 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v135.buf = tensor.empty() : tensor<240xf32>
    %v135.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_bn3_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_bn3_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v135.buf : tensor<240xf32>) {
        ^bb0(%in_136: f32, %in_137: f32, %acc_138: f32):
          %v139 = arith.constant 1.0 : f32
          %v140 = arith.constant 9.999999747378752e-06 : f32
          %v141 = arith.addf %v140, %in_136 : f32
          %v142 = math.sqrt %v141 : f32
          %v143 = arith.divf %v139, %v142 : f32
          %v144 = arith.mulf %v143, %in_137 : f32
          linalg.yield %v144 : f32
      }
    -> tensor<240xf32>
    %v145.buf = tensor.empty() : tensor<240xf32>
    %v145.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_bn3_buffers_running_mean_, %l_self_modules_stage2_modules_0_modules_bn3_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_bn3_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v145.buf : tensor<240xf32>) {
        ^bb0(%in_146: f32, %in_147: f32, %in_148: f32, %acc_149: f32):
          %v150 = arith.constant 1.0 : f32
          %v151 = arith.constant 9.999999747378752e-06 : f32
          %v152 = arith.addf %v151, %in_147 : f32
          %v153 = math.sqrt %v152 : f32
          %v154 = arith.divf %v150, %v153 : f32
          %v155 = arith.mulf %v154, %in_148 : f32
          %v156 = arith.mulf %v155, %in_146 : f32
          linalg.yield %v156 : f32
      }
    -> tensor<240xf32>
    %l_self_modules_stage2_modules_0_modules_shortcut_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_0_modules_shortcut_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 24, 1, 1] : tensor<240x24xf32> into tensor<240x24x1x1xf32>
    %v157.empty = tensor.empty() : tensor<10x240x56x1x56xf32>
    %v157.buf = linalg.fill ins(%init : f32) outs(%v157.empty : tensor<10x240x56x1x56xf32>) -> tensor<10x240x56x1x56xf32>
    %v157.shape = tensor.empty() : tensor<56x1xf32>
    %v157.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_1.buf.out, %l_self_modules_stage2_modules_0_modules_shortcut_modules_0_parameters_weight_.expanded, %v157.shape : tensor<10x24x56x56xf32>, tensor<240x24x1x1xf32>, tensor<56x1xf32>)
      outs(%v157.buf : tensor<10x240x56x1x56xf32>) {
        ^bb0(%in_159: f32, %in_160: f32, %shape_158: f32, %acc_161: f32):
          %v162 = arith.mulf %in_159, %in_160 : f32
          %v163 = arith.addf %v162, %acc_161 : f32
          linalg.yield %v163 : f32
      }
    -> tensor<10x240x56x1x56xf32>
    %v164.buf = tensor.empty() : tensor<240xf32>
    %v164.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v164.buf : tensor<240xf32>) {
        ^bb0(%in_165: f32, %in_166: f32, %acc_167: f32):
          %v168 = arith.constant 1.0 : f32
          %v169 = arith.constant 9.999999747378752e-06 : f32
          %v170 = arith.addf %v169, %in_165 : f32
          %v171 = math.sqrt %v170 : f32
          %v172 = arith.divf %v168, %v171 : f32
          %v173 = arith.mulf %v172, %in_166 : f32
          linalg.yield %v173 : f32
      }
    -> tensor<240xf32>
    %v174.buf = tensor.empty() : tensor<240xf32>
    %v174.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_0_modules_shortcut_modules_1_buffers_running_mean_, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v174.buf : tensor<240xf32>) {
        ^bb0(%in_175: f32, %in_176: f32, %in_177: f32, %acc_178: f32):
          %v179 = arith.constant 1.0 : f32
          %v180 = arith.constant 9.999999747378752e-06 : f32
          %v181 = arith.addf %v180, %in_176 : f32
          %v182 = math.sqrt %v181 : f32
          %v183 = arith.divf %v179, %v182 : f32
          %v184 = arith.mulf %v183, %in_177 : f32
          %v185 = arith.mulf %v184, %in_175 : f32
          linalg.yield %v185 : f32
      }
    -> tensor<240xf32>
    %v157.post = tensor.empty() : tensor<10x240x56x1x56xf32>
    %v157.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v157.buf.out, %v164.buf.out, %v174.buf.out, %l_self_modules_stage2_modules_0_modules_shortcut_modules_1_parameters_bias_ : tensor<10x240x56x1x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v157.post : tensor<10x240x56x1x56xf32>) {
        ^bb0(%acc_189: f32, %in_186: f32, %in_187: f32, %in_188: f32, %post_190: f32):
          %v191 = arith.mulf %acc_189, %in_186 : f32
          %v192 = arith.subf %v191, %in_187 : f32
          %v193 = arith.addf %v192, %in_188 : f32
          linalg.yield %v193 : f32
      }
    -> tensor<10x240x56x1x56xf32>
    %out_3.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_3.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_3.buf.out, %v135.buf.out, %v145.buf.out, %l_self_modules_stage2_modules_0_modules_bn3_parameters_bias_, %v157.post.out : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<10x240x56x1x56xf32>)
      outs(%out_3.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_198: f32, %in_194: f32, %in_195: f32, %in_196: f32, %in_197: f32, %post_199: f32):
          %v200 = arith.mulf %acc_198, %in_194 : f32
          %v201 = arith.subf %v200, %in_195 : f32
          %v202 = arith.addf %v201, %in_196 : f32
          %v203 = arith.maxnumf %init, %v202 : f32
          %v204 = arith.addf %v203, %in_197 : f32
          linalg.yield %v204 : f32
      }
    -> tensor<10x240x56x56xf32>
    %l_self_modules_stage2_modules_1_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_1_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [60, 80, 1, 1] : tensor<60x80xf32> into tensor<60x80x1x1xf32>
    %out_4.empty = tensor.empty() : tensor<10x60x56x56xf32>
    %out_4.buf = linalg.fill ins(%init : f32) outs(%out_4.empty : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %out_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 20 * 80 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_3.post.out, %l_self_modules_stage2_modules_1_modules_conv1_parameters_weight_.expanded : tensor<10x240x56x56xf32>, tensor<60x80x1x1xf32>)
      outs(%out_4.buf : tensor<10x60x56x56xf32>) {
        ^bb0(%in_205: f32, %in_206: f32, %acc_207: f32):
          %v208 = arith.mulf %in_205, %in_206 : f32
          %v209 = arith.addf %v208, %acc_207 : f32
          linalg.yield %v209 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v210.buf = tensor.empty() : tensor<60xf32>
    %v210.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_stage2_modules_1_modules_bn1_parameters_weight_ : tensor<60xf32>, tensor<60xf32>)
      outs(%v210.buf : tensor<60xf32>) {
        ^bb0(%in_211: f32, %in_212: f32, %acc_213: f32):
          %v214 = arith.constant 1.0 : f32
          %v215 = arith.constant 9.999999747378752e-06 : f32
          %v216 = arith.addf %v215, %in_211 : f32
          %v217 = math.sqrt %v216 : f32
          %v218 = arith.divf %v214, %v217 : f32
          %v219 = arith.mulf %v218, %in_212 : f32
          linalg.yield %v219 : f32
      }
    -> tensor<60xf32>
    %v220.buf = tensor.empty() : tensor<60xf32>
    %v220.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_1_modules_bn1_buffers_running_mean_, %l_self_modules_stage2_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_stage2_modules_1_modules_bn1_parameters_weight_ : tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%v220.buf : tensor<60xf32>) {
        ^bb0(%in_221: f32, %in_222: f32, %in_223: f32, %acc_224: f32):
          %v225 = arith.constant 1.0 : f32
          %v226 = arith.constant 9.999999747378752e-06 : f32
          %v227 = arith.addf %v226, %in_222 : f32
          %v228 = math.sqrt %v227 : f32
          %v229 = arith.divf %v225, %v228 : f32
          %v230 = arith.mulf %v229, %in_223 : f32
          %v231 = arith.mulf %v230, %in_221 : f32
          linalg.yield %v231 : f32
      }
    -> tensor<60xf32>
    %out_4.post = tensor.empty() : tensor<10x60x56x56xf32>
    %out_4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_4.buf.out, %v210.buf.out, %v220.buf.out, %l_self_modules_stage2_modules_1_modules_bn1_parameters_bias_ : tensor<10x60x56x56xf32>, tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%out_4.post : tensor<10x60x56x56xf32>) {
        ^bb0(%acc_235: f32, %in_232: f32, %in_233: f32, %in_234: f32, %post_236: f32):
          %v237 = arith.mulf %acc_235, %in_232 : f32
          %v238 = arith.subf %v237, %in_233 : f32
          %v239 = arith.addf %v238, %in_234 : f32
          %v240 = arith.maxnumf %init, %v239 : f32
          linalg.yield %v240 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v245 = tensor.pad %out_4.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i241: index, %pad_i242: index, %pad_i243: index, %pad_i244: index):
        tensor.yield %init : f32
    } : tensor<10x60x56x56xf32> to tensor<10x60x58x58xf32>
    %l_self_modules_stage2_modules_1_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_1_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [60, 1, 3, 3] : tensor<60x3x3xf32> into tensor<60x1x3x3xf32>
    %out_5.empty = tensor.empty() : tensor<10x60x56x56xf32>
    %out_5.buf = linalg.fill ins(%init : f32) outs(%out_5.empty : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %out_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v245, %l_self_modules_stage2_modules_1_modules_conv2_parameters_weight_.expanded : tensor<10x60x58x58xf32>, tensor<60x1x3x3xf32>)
      outs(%out_5.buf : tensor<10x60x56x56xf32>) {
        ^bb0(%in_246: f32, %in_247: f32, %acc_248: f32):
          %v249 = arith.mulf %in_246, %in_247 : f32
          %v250 = arith.addf %v249, %acc_248 : f32
          linalg.yield %v250 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v251.buf = tensor.empty() : tensor<60xf32>
    %v251.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_stage2_modules_1_modules_bn2_parameters_weight_ : tensor<60xf32>, tensor<60xf32>)
      outs(%v251.buf : tensor<60xf32>) {
        ^bb0(%in_252: f32, %in_253: f32, %acc_254: f32):
          %v255 = arith.constant 1.0 : f32
          %v256 = arith.constant 9.999999747378752e-06 : f32
          %v257 = arith.addf %v256, %in_252 : f32
          %v258 = math.sqrt %v257 : f32
          %v259 = arith.divf %v255, %v258 : f32
          %v260 = arith.mulf %v259, %in_253 : f32
          linalg.yield %v260 : f32
      }
    -> tensor<60xf32>
    %v261.buf = tensor.empty() : tensor<60xf32>
    %v261.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_1_modules_bn2_buffers_running_mean_, %l_self_modules_stage2_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_stage2_modules_1_modules_bn2_parameters_weight_ : tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%v261.buf : tensor<60xf32>) {
        ^bb0(%in_262: f32, %in_263: f32, %in_264: f32, %acc_265: f32):
          %v266 = arith.constant 1.0 : f32
          %v267 = arith.constant 9.999999747378752e-06 : f32
          %v268 = arith.addf %v267, %in_263 : f32
          %v269 = math.sqrt %v268 : f32
          %v270 = arith.divf %v266, %v269 : f32
          %v271 = arith.mulf %v270, %in_264 : f32
          %v272 = arith.mulf %v271, %in_262 : f32
          linalg.yield %v272 : f32
      }
    -> tensor<60xf32>
    %out_5.post = tensor.empty() : tensor<10x60x56x56xf32>
    %out_5.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_5.buf.out, %v251.buf.out, %v261.buf.out, %l_self_modules_stage2_modules_1_modules_bn2_parameters_bias_ : tensor<10x60x56x56xf32>, tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%out_5.post : tensor<10x60x56x56xf32>) {
        ^bb0(%acc_276: f32, %in_273: f32, %in_274: f32, %in_275: f32, %post_277: f32):
          %v278 = arith.mulf %acc_276, %in_273 : f32
          %v279 = arith.subf %v278, %in_274 : f32
          %v280 = arith.addf %v279, %in_275 : f32
          linalg.yield %v280 : f32
      }
    -> tensor<10x60x56x56xf32>
    %transpose_1.buf = tensor.empty() : tensor<10x20x3x56x56xf32>
    %transpose_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 20, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_5.post.out : tensor<10x60x56x56xf32>)
      outs(%transpose_1.buf : tensor<10x20x3x56x56xf32>) {
        ^bb0(%in_281: f32, %acc_282: f32):
          linalg.yield %in_281 : f32
      }
    -> tensor<10x20x3x56x56xf32>
    %l_self_modules_stage2_modules_1_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_1_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 20, 1, 1] : tensor<240x20xf32> into tensor<240x20x1x1xf32>
    %out_7.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_7.buf = linalg.fill ins(%init : f32) outs(%out_7.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 80 * 20 + d4) floordiv 3, (d1 floordiv 80 * 20 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_1.buf.out, %l_self_modules_stage2_modules_1_modules_conv3_parameters_weight_.expanded : tensor<10x20x3x56x56xf32>, tensor<240x20x1x1xf32>)
      outs(%out_7.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_283: f32, %in_284: f32, %acc_285: f32):
          %v286 = arith.mulf %in_283, %in_284 : f32
          %v287 = arith.addf %v286, %acc_285 : f32
          linalg.yield %v287 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v288.buf = tensor.empty() : tensor<240xf32>
    %v288.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_1_modules_bn3_buffers_running_var_, %l_self_modules_stage2_modules_1_modules_bn3_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v288.buf : tensor<240xf32>) {
        ^bb0(%in_289: f32, %in_290: f32, %acc_291: f32):
          %v292 = arith.constant 1.0 : f32
          %v293 = arith.constant 9.999999747378752e-06 : f32
          %v294 = arith.addf %v293, %in_289 : f32
          %v295 = math.sqrt %v294 : f32
          %v296 = arith.divf %v292, %v295 : f32
          %v297 = arith.mulf %v296, %in_290 : f32
          linalg.yield %v297 : f32
      }
    -> tensor<240xf32>
    %v298.buf = tensor.empty() : tensor<240xf32>
    %v298.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_1_modules_bn3_buffers_running_mean_, %l_self_modules_stage2_modules_1_modules_bn3_buffers_running_var_, %l_self_modules_stage2_modules_1_modules_bn3_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v298.buf : tensor<240xf32>) {
        ^bb0(%in_299: f32, %in_300: f32, %in_301: f32, %acc_302: f32):
          %v303 = arith.constant 1.0 : f32
          %v304 = arith.constant 9.999999747378752e-06 : f32
          %v305 = arith.addf %v304, %in_300 : f32
          %v306 = math.sqrt %v305 : f32
          %v307 = arith.divf %v303, %v306 : f32
          %v308 = arith.mulf %v307, %in_301 : f32
          %v309 = arith.mulf %v308, %in_299 : f32
          linalg.yield %v309 : f32
      }
    -> tensor<240xf32>
    %out_7.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_7.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_7.buf.out, %v288.buf.out, %v298.buf.out, %l_self_modules_stage2_modules_1_modules_bn3_parameters_bias_, %out_3.post.out : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<10x240x56x56xf32>)
      outs(%out_7.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_314: f32, %in_310: f32, %in_311: f32, %in_312: f32, %in_313: f32, %post_315: f32):
          %v316 = arith.mulf %acc_314, %in_310 : f32
          %v317 = arith.subf %v316, %in_311 : f32
          %v318 = arith.addf %v317, %in_312 : f32
          %v319 = arith.maxnumf %init, %v318 : f32
          %v320 = arith.addf %v319, %in_313 : f32
          linalg.yield %v320 : f32
      }
    -> tensor<10x240x56x56xf32>
    %l_self_modules_stage2_modules_2_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_2_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [60, 80, 1, 1] : tensor<60x80xf32> into tensor<60x80x1x1xf32>
    %out_8.empty = tensor.empty() : tensor<10x60x56x56xf32>
    %out_8.buf = linalg.fill ins(%init : f32) outs(%out_8.empty : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %out_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 20 * 80 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_7.post.out, %l_self_modules_stage2_modules_2_modules_conv1_parameters_weight_.expanded : tensor<10x240x56x56xf32>, tensor<60x80x1x1xf32>)
      outs(%out_8.buf : tensor<10x60x56x56xf32>) {
        ^bb0(%in_321: f32, %in_322: f32, %acc_323: f32):
          %v324 = arith.mulf %in_321, %in_322 : f32
          %v325 = arith.addf %v324, %acc_323 : f32
          linalg.yield %v325 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v326.buf = tensor.empty() : tensor<60xf32>
    %v326.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_2_modules_bn1_buffers_running_var_, %l_self_modules_stage2_modules_2_modules_bn1_parameters_weight_ : tensor<60xf32>, tensor<60xf32>)
      outs(%v326.buf : tensor<60xf32>) {
        ^bb0(%in_327: f32, %in_328: f32, %acc_329: f32):
          %v330 = arith.constant 1.0 : f32
          %v331 = arith.constant 9.999999747378752e-06 : f32
          %v332 = arith.addf %v331, %in_327 : f32
          %v333 = math.sqrt %v332 : f32
          %v334 = arith.divf %v330, %v333 : f32
          %v335 = arith.mulf %v334, %in_328 : f32
          linalg.yield %v335 : f32
      }
    -> tensor<60xf32>
    %v336.buf = tensor.empty() : tensor<60xf32>
    %v336.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_2_modules_bn1_buffers_running_mean_, %l_self_modules_stage2_modules_2_modules_bn1_buffers_running_var_, %l_self_modules_stage2_modules_2_modules_bn1_parameters_weight_ : tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%v336.buf : tensor<60xf32>) {
        ^bb0(%in_337: f32, %in_338: f32, %in_339: f32, %acc_340: f32):
          %v341 = arith.constant 1.0 : f32
          %v342 = arith.constant 9.999999747378752e-06 : f32
          %v343 = arith.addf %v342, %in_338 : f32
          %v344 = math.sqrt %v343 : f32
          %v345 = arith.divf %v341, %v344 : f32
          %v346 = arith.mulf %v345, %in_339 : f32
          %v347 = arith.mulf %v346, %in_337 : f32
          linalg.yield %v347 : f32
      }
    -> tensor<60xf32>
    %out_8.post = tensor.empty() : tensor<10x60x56x56xf32>
    %out_8.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_8.buf.out, %v326.buf.out, %v336.buf.out, %l_self_modules_stage2_modules_2_modules_bn1_parameters_bias_ : tensor<10x60x56x56xf32>, tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%out_8.post : tensor<10x60x56x56xf32>) {
        ^bb0(%acc_351: f32, %in_348: f32, %in_349: f32, %in_350: f32, %post_352: f32):
          %v353 = arith.mulf %acc_351, %in_348 : f32
          %v354 = arith.subf %v353, %in_349 : f32
          %v355 = arith.addf %v354, %in_350 : f32
          %v356 = arith.maxnumf %init, %v355 : f32
          linalg.yield %v356 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v361 = tensor.pad %out_8.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i357: index, %pad_i358: index, %pad_i359: index, %pad_i360: index):
        tensor.yield %init : f32
    } : tensor<10x60x56x56xf32> to tensor<10x60x58x58xf32>
    %l_self_modules_stage2_modules_2_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_2_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [60, 1, 3, 3] : tensor<60x3x3xf32> into tensor<60x1x3x3xf32>
    %out_9.empty = tensor.empty() : tensor<10x60x56x56xf32>
    %out_9.buf = linalg.fill ins(%init : f32) outs(%out_9.empty : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %out_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v361, %l_self_modules_stage2_modules_2_modules_conv2_parameters_weight_.expanded : tensor<10x60x58x58xf32>, tensor<60x1x3x3xf32>)
      outs(%out_9.buf : tensor<10x60x56x56xf32>) {
        ^bb0(%in_362: f32, %in_363: f32, %acc_364: f32):
          %v365 = arith.mulf %in_362, %in_363 : f32
          %v366 = arith.addf %v365, %acc_364 : f32
          linalg.yield %v366 : f32
      }
    -> tensor<10x60x56x56xf32>
    %v367.buf = tensor.empty() : tensor<60xf32>
    %v367.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_2_modules_bn2_buffers_running_var_, %l_self_modules_stage2_modules_2_modules_bn2_parameters_weight_ : tensor<60xf32>, tensor<60xf32>)
      outs(%v367.buf : tensor<60xf32>) {
        ^bb0(%in_368: f32, %in_369: f32, %acc_370: f32):
          %v371 = arith.constant 1.0 : f32
          %v372 = arith.constant 9.999999747378752e-06 : f32
          %v373 = arith.addf %v372, %in_368 : f32
          %v374 = math.sqrt %v373 : f32
          %v375 = arith.divf %v371, %v374 : f32
          %v376 = arith.mulf %v375, %in_369 : f32
          linalg.yield %v376 : f32
      }
    -> tensor<60xf32>
    %v377.buf = tensor.empty() : tensor<60xf32>
    %v377.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_2_modules_bn2_buffers_running_mean_, %l_self_modules_stage2_modules_2_modules_bn2_buffers_running_var_, %l_self_modules_stage2_modules_2_modules_bn2_parameters_weight_ : tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%v377.buf : tensor<60xf32>) {
        ^bb0(%in_378: f32, %in_379: f32, %in_380: f32, %acc_381: f32):
          %v382 = arith.constant 1.0 : f32
          %v383 = arith.constant 9.999999747378752e-06 : f32
          %v384 = arith.addf %v383, %in_379 : f32
          %v385 = math.sqrt %v384 : f32
          %v386 = arith.divf %v382, %v385 : f32
          %v387 = arith.mulf %v386, %in_380 : f32
          %v388 = arith.mulf %v387, %in_378 : f32
          linalg.yield %v388 : f32
      }
    -> tensor<60xf32>
    %out_9.post = tensor.empty() : tensor<10x60x56x56xf32>
    %out_9.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_9.buf.out, %v367.buf.out, %v377.buf.out, %l_self_modules_stage2_modules_2_modules_bn2_parameters_bias_ : tensor<10x60x56x56xf32>, tensor<60xf32>, tensor<60xf32>, tensor<60xf32>)
      outs(%out_9.post : tensor<10x60x56x56xf32>) {
        ^bb0(%acc_392: f32, %in_389: f32, %in_390: f32, %in_391: f32, %post_393: f32):
          %v394 = arith.mulf %acc_392, %in_389 : f32
          %v395 = arith.subf %v394, %in_390 : f32
          %v396 = arith.addf %v395, %in_391 : f32
          linalg.yield %v396 : f32
      }
    -> tensor<10x60x56x56xf32>
    %transpose_2.buf = tensor.empty() : tensor<10x20x3x56x56xf32>
    %transpose_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 20, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_9.post.out : tensor<10x60x56x56xf32>)
      outs(%transpose_2.buf : tensor<10x20x3x56x56xf32>) {
        ^bb0(%in_397: f32, %acc_398: f32):
          linalg.yield %in_397 : f32
      }
    -> tensor<10x20x3x56x56xf32>
    %l_self_modules_stage2_modules_2_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage2_modules_2_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 20, 1, 1] : tensor<240x20xf32> into tensor<240x20x1x1xf32>
    %out_11.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_11.buf = linalg.fill ins(%init : f32) outs(%out_11.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 80 * 20 + d4) floordiv 3, (d1 floordiv 80 * 20 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_2.buf.out, %l_self_modules_stage2_modules_2_modules_conv3_parameters_weight_.expanded : tensor<10x20x3x56x56xf32>, tensor<240x20x1x1xf32>)
      outs(%out_11.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_399: f32, %in_400: f32, %acc_401: f32):
          %v402 = arith.mulf %in_399, %in_400 : f32
          %v403 = arith.addf %v402, %acc_401 : f32
          linalg.yield %v403 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v404.buf = tensor.empty() : tensor<240xf32>
    %v404.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_2_modules_bn3_buffers_running_var_, %l_self_modules_stage2_modules_2_modules_bn3_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v404.buf : tensor<240xf32>) {
        ^bb0(%in_405: f32, %in_406: f32, %acc_407: f32):
          %v408 = arith.constant 1.0 : f32
          %v409 = arith.constant 9.999999747378752e-06 : f32
          %v410 = arith.addf %v409, %in_405 : f32
          %v411 = math.sqrt %v410 : f32
          %v412 = arith.divf %v408, %v411 : f32
          %v413 = arith.mulf %v412, %in_406 : f32
          linalg.yield %v413 : f32
      }
    -> tensor<240xf32>
    %v414.buf = tensor.empty() : tensor<240xf32>
    %v414.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage2_modules_2_modules_bn3_buffers_running_mean_, %l_self_modules_stage2_modules_2_modules_bn3_buffers_running_var_, %l_self_modules_stage2_modules_2_modules_bn3_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v414.buf : tensor<240xf32>) {
        ^bb0(%in_415: f32, %in_416: f32, %in_417: f32, %acc_418: f32):
          %v419 = arith.constant 1.0 : f32
          %v420 = arith.constant 9.999999747378752e-06 : f32
          %v421 = arith.addf %v420, %in_416 : f32
          %v422 = math.sqrt %v421 : f32
          %v423 = arith.divf %v419, %v422 : f32
          %v424 = arith.mulf %v423, %in_417 : f32
          %v425 = arith.mulf %v424, %in_415 : f32
          linalg.yield %v425 : f32
      }
    -> tensor<240xf32>
    %out_11.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_11.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_11.buf.out, %v404.buf.out, %v414.buf.out, %l_self_modules_stage2_modules_2_modules_bn3_parameters_bias_, %out_7.post.out : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<10x240x56x56xf32>)
      outs(%out_11.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_430: f32, %in_426: f32, %in_427: f32, %in_428: f32, %in_429: f32, %post_431: f32):
          %v432 = arith.mulf %acc_430, %in_426 : f32
          %v433 = arith.subf %v432, %in_427 : f32
          %v434 = arith.addf %v433, %in_428 : f32
          %v435 = arith.maxnumf %init, %v434 : f32
          %v436 = arith.addf %v435, %in_429 : f32
          linalg.yield %v436 : f32
      }
    -> tensor<10x240x56x56xf32>
    %l_self_modules_stage3_modules_0_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_0_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 80, 1, 1] : tensor<120x80xf32> into tensor<120x80x1x1xf32>
    %out_12.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_12.buf = linalg.fill ins(%init : f32) outs(%out_12.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 80 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_11.post.out, %l_self_modules_stage3_modules_0_modules_conv1_parameters_weight_.expanded : tensor<10x240x56x56xf32>, tensor<120x80x1x1xf32>)
      outs(%out_12.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_437: f32, %in_438: f32, %acc_439: f32):
          %v440 = arith.mulf %in_437, %in_438 : f32
          %v441 = arith.addf %v440, %acc_439 : f32
          linalg.yield %v441 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v442.buf = tensor.empty() : tensor<120xf32>
    %v442.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v442.buf : tensor<120xf32>) {
        ^bb0(%in_443: f32, %in_444: f32, %acc_445: f32):
          %v446 = arith.constant 1.0 : f32
          %v447 = arith.constant 9.999999747378752e-06 : f32
          %v448 = arith.addf %v447, %in_443 : f32
          %v449 = math.sqrt %v448 : f32
          %v450 = arith.divf %v446, %v449 : f32
          %v451 = arith.mulf %v450, %in_444 : f32
          linalg.yield %v451 : f32
      }
    -> tensor<120xf32>
    %v452.buf = tensor.empty() : tensor<120xf32>
    %v452.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_bn1_buffers_running_mean_, %l_self_modules_stage3_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v452.buf : tensor<120xf32>) {
        ^bb0(%in_453: f32, %in_454: f32, %in_455: f32, %acc_456: f32):
          %v457 = arith.constant 1.0 : f32
          %v458 = arith.constant 9.999999747378752e-06 : f32
          %v459 = arith.addf %v458, %in_454 : f32
          %v460 = math.sqrt %v459 : f32
          %v461 = arith.divf %v457, %v460 : f32
          %v462 = arith.mulf %v461, %in_455 : f32
          %v463 = arith.mulf %v462, %in_453 : f32
          linalg.yield %v463 : f32
      }
    -> tensor<120xf32>
    %out_12.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_12.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_12.buf.out, %v442.buf.out, %v452.buf.out, %l_self_modules_stage3_modules_0_modules_bn1_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_12.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_467: f32, %in_464: f32, %in_465: f32, %in_466: f32, %post_468: f32):
          %v469 = arith.mulf %acc_467, %in_464 : f32
          %v470 = arith.subf %v469, %in_465 : f32
          %v471 = arith.addf %v470, %in_466 : f32
          %v472 = arith.maxnumf %init, %v471 : f32
          linalg.yield %v472 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v477 = tensor.pad %out_12.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i473: index, %pad_i474: index, %pad_i475: index, %pad_i476: index):
        tensor.yield %init : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %l_self_modules_stage3_modules_0_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_0_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_13.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_13.buf = linalg.fill ins(%init : f32) outs(%out_13.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v477, %l_self_modules_stage3_modules_0_modules_conv2_parameters_weight_.expanded : tensor<10x120x58x58xf32>, tensor<120x1x3x3xf32>)
      outs(%out_13.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_478: f32, %in_479: f32, %acc_480: f32):
          %v481 = arith.mulf %in_478, %in_479 : f32
          %v482 = arith.addf %v481, %acc_480 : f32
          linalg.yield %v482 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v483.buf = tensor.empty() : tensor<120xf32>
    %v483.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v483.buf : tensor<120xf32>) {
        ^bb0(%in_484: f32, %in_485: f32, %acc_486: f32):
          %v487 = arith.constant 1.0 : f32
          %v488 = arith.constant 9.999999747378752e-06 : f32
          %v489 = arith.addf %v488, %in_484 : f32
          %v490 = math.sqrt %v489 : f32
          %v491 = arith.divf %v487, %v490 : f32
          %v492 = arith.mulf %v491, %in_485 : f32
          linalg.yield %v492 : f32
      }
    -> tensor<120xf32>
    %v493.buf = tensor.empty() : tensor<120xf32>
    %v493.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_bn2_buffers_running_mean_, %l_self_modules_stage3_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v493.buf : tensor<120xf32>) {
        ^bb0(%in_494: f32, %in_495: f32, %in_496: f32, %acc_497: f32):
          %v498 = arith.constant 1.0 : f32
          %v499 = arith.constant 9.999999747378752e-06 : f32
          %v500 = arith.addf %v499, %in_495 : f32
          %v501 = math.sqrt %v500 : f32
          %v502 = arith.divf %v498, %v501 : f32
          %v503 = arith.mulf %v502, %in_496 : f32
          %v504 = arith.mulf %v503, %in_494 : f32
          linalg.yield %v504 : f32
      }
    -> tensor<120xf32>
    %out_13.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_13.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_13.buf.out, %v483.buf.out, %v493.buf.out, %l_self_modules_stage3_modules_0_modules_bn2_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_13.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_508: f32, %in_505: f32, %in_506: f32, %in_507: f32, %post_509: f32):
          %v510 = arith.mulf %acc_508, %in_505 : f32
          %v511 = arith.subf %v510, %in_506 : f32
          %v512 = arith.addf %v511, %in_507 : f32
          linalg.yield %v512 : f32
      }
    -> tensor<10x120x56x56xf32>
    %transpose_3.buf = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transpose_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_13.post.out : tensor<10x120x56x56xf32>)
      outs(%transpose_3.buf : tensor<10x40x3x56x56xf32>) {
        ^bb0(%in_513: f32, %acc_514: f32):
          linalg.yield %in_513 : f32
      }
    -> tensor<10x40x3x56x56xf32>
    %l_self_modules_stage3_modules_0_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_0_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_15.empty = tensor.empty() : tensor<10x480x56x56xf32>
    %out_15.buf = linalg.fill ins(%init : f32) outs(%out_15.empty : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %out_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_3.buf.out, %l_self_modules_stage3_modules_0_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x56x56xf32>, tensor<480x40x1x1xf32>)
      outs(%out_15.buf : tensor<10x480x56x56xf32>) {
        ^bb0(%in_515: f32, %in_516: f32, %acc_517: f32):
          %v518 = arith.mulf %in_515, %in_516 : f32
          %v519 = arith.addf %v518, %acc_517 : f32
          linalg.yield %v519 : f32
      }
    -> tensor<10x480x56x56xf32>
    %v520.buf = tensor.empty() : tensor<480xf32>
    %v520.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v520.buf : tensor<480xf32>) {
        ^bb0(%in_521: f32, %in_522: f32, %acc_523: f32):
          %v524 = arith.constant 1.0 : f32
          %v525 = arith.constant 9.999999747378752e-06 : f32
          %v526 = arith.addf %v525, %in_521 : f32
          %v527 = math.sqrt %v526 : f32
          %v528 = arith.divf %v524, %v527 : f32
          %v529 = arith.mulf %v528, %in_522 : f32
          linalg.yield %v529 : f32
      }
    -> tensor<480xf32>
    %v530.buf = tensor.empty() : tensor<480xf32>
    %v530.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_bn3_buffers_running_mean_, %l_self_modules_stage3_modules_0_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v530.buf : tensor<480xf32>) {
        ^bb0(%in_531: f32, %in_532: f32, %in_533: f32, %acc_534: f32):
          %v535 = arith.constant 1.0 : f32
          %v536 = arith.constant 9.999999747378752e-06 : f32
          %v537 = arith.addf %v536, %in_532 : f32
          %v538 = math.sqrt %v537 : f32
          %v539 = arith.divf %v535, %v538 : f32
          %v540 = arith.mulf %v539, %in_533 : f32
          %v541 = arith.mulf %v540, %in_531 : f32
          linalg.yield %v541 : f32
      }
    -> tensor<480xf32>
    %l_self_modules_stage3_modules_0_modules_shortcut_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_0_modules_shortcut_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 240, 1, 1] : tensor<480x240xf32> into tensor<480x240x1x1xf32>
    %v542.empty = tensor.empty() : tensor<10x480x56x1x56xf32>
    %v542.buf = linalg.fill ins(%init : f32) outs(%v542.empty : tensor<10x480x56x1x56xf32>) -> tensor<10x480x56x1x56xf32>
    %v542.shape = tensor.empty() : tensor<56x1xf32>
    %v542.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_11.post.out, %l_self_modules_stage3_modules_0_modules_shortcut_modules_0_parameters_weight_.expanded, %v542.shape : tensor<10x240x56x56xf32>, tensor<480x240x1x1xf32>, tensor<56x1xf32>)
      outs(%v542.buf : tensor<10x480x56x1x56xf32>) {
        ^bb0(%in_544: f32, %in_545: f32, %shape_543: f32, %acc_546: f32):
          %v547 = arith.mulf %in_544, %in_545 : f32
          %v548 = arith.addf %v547, %acc_546 : f32
          linalg.yield %v548 : f32
      }
    -> tensor<10x480x56x1x56xf32>
    %v549.buf = tensor.empty() : tensor<480xf32>
    %v549.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v549.buf : tensor<480xf32>) {
        ^bb0(%in_550: f32, %in_551: f32, %acc_552: f32):
          %v553 = arith.constant 1.0 : f32
          %v554 = arith.constant 9.999999747378752e-06 : f32
          %v555 = arith.addf %v554, %in_550 : f32
          %v556 = math.sqrt %v555 : f32
          %v557 = arith.divf %v553, %v556 : f32
          %v558 = arith.mulf %v557, %in_551 : f32
          linalg.yield %v558 : f32
      }
    -> tensor<480xf32>
    %v559.buf = tensor.empty() : tensor<480xf32>
    %v559.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_0_modules_shortcut_modules_1_buffers_running_mean_, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v559.buf : tensor<480xf32>) {
        ^bb0(%in_560: f32, %in_561: f32, %in_562: f32, %acc_563: f32):
          %v564 = arith.constant 1.0 : f32
          %v565 = arith.constant 9.999999747378752e-06 : f32
          %v566 = arith.addf %v565, %in_561 : f32
          %v567 = math.sqrt %v566 : f32
          %v568 = arith.divf %v564, %v567 : f32
          %v569 = arith.mulf %v568, %in_562 : f32
          %v570 = arith.mulf %v569, %in_560 : f32
          linalg.yield %v570 : f32
      }
    -> tensor<480xf32>
    %v542.post = tensor.empty() : tensor<10x480x56x1x56xf32>
    %v542.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v542.buf.out, %v549.buf.out, %v559.buf.out, %l_self_modules_stage3_modules_0_modules_shortcut_modules_1_parameters_bias_ : tensor<10x480x56x1x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v542.post : tensor<10x480x56x1x56xf32>) {
        ^bb0(%acc_574: f32, %in_571: f32, %in_572: f32, %in_573: f32, %post_575: f32):
          %v576 = arith.mulf %acc_574, %in_571 : f32
          %v577 = arith.subf %v576, %in_572 : f32
          %v578 = arith.addf %v577, %in_573 : f32
          linalg.yield %v578 : f32
      }
    -> tensor<10x480x56x1x56xf32>
    %out_15.post = tensor.empty() : tensor<10x480x56x56xf32>
    %out_15.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_15.buf.out, %v520.buf.out, %v530.buf.out, %l_self_modules_stage3_modules_0_modules_bn3_parameters_bias_, %v542.post.out : tensor<10x480x56x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x56x1x56xf32>)
      outs(%out_15.post : tensor<10x480x56x56xf32>) {
        ^bb0(%acc_583: f32, %in_579: f32, %in_580: f32, %in_581: f32, %in_582: f32, %post_584: f32):
          %v585 = arith.mulf %acc_583, %in_579 : f32
          %v586 = arith.subf %v585, %in_580 : f32
          %v587 = arith.addf %v586, %in_581 : f32
          %v588 = arith.maxnumf %init, %v587 : f32
          %v589 = arith.addf %v588, %in_582 : f32
          linalg.yield %v589 : f32
      }
    -> tensor<10x480x56x56xf32>
    %l_self_modules_stage3_modules_1_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_1_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 160, 1, 1] : tensor<120x160xf32> into tensor<120x160x1x1xf32>
    %out_16.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_16.buf = linalg.fill ins(%init : f32) outs(%out_16.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 160 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_15.post.out, %l_self_modules_stage3_modules_1_modules_conv1_parameters_weight_.expanded : tensor<10x480x56x56xf32>, tensor<120x160x1x1xf32>)
      outs(%out_16.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_590: f32, %in_591: f32, %acc_592: f32):
          %v593 = arith.mulf %in_590, %in_591 : f32
          %v594 = arith.addf %v593, %acc_592 : f32
          linalg.yield %v594 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v595.buf = tensor.empty() : tensor<120xf32>
    %v595.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_1_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v595.buf : tensor<120xf32>) {
        ^bb0(%in_596: f32, %in_597: f32, %acc_598: f32):
          %v599 = arith.constant 1.0 : f32
          %v600 = arith.constant 9.999999747378752e-06 : f32
          %v601 = arith.addf %v600, %in_596 : f32
          %v602 = math.sqrt %v601 : f32
          %v603 = arith.divf %v599, %v602 : f32
          %v604 = arith.mulf %v603, %in_597 : f32
          linalg.yield %v604 : f32
      }
    -> tensor<120xf32>
    %v605.buf = tensor.empty() : tensor<120xf32>
    %v605.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_1_modules_bn1_buffers_running_mean_, %l_self_modules_stage3_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_1_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v605.buf : tensor<120xf32>) {
        ^bb0(%in_606: f32, %in_607: f32, %in_608: f32, %acc_609: f32):
          %v610 = arith.constant 1.0 : f32
          %v611 = arith.constant 9.999999747378752e-06 : f32
          %v612 = arith.addf %v611, %in_607 : f32
          %v613 = math.sqrt %v612 : f32
          %v614 = arith.divf %v610, %v613 : f32
          %v615 = arith.mulf %v614, %in_608 : f32
          %v616 = arith.mulf %v615, %in_606 : f32
          linalg.yield %v616 : f32
      }
    -> tensor<120xf32>
    %out_16.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_16.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_16.buf.out, %v595.buf.out, %v605.buf.out, %l_self_modules_stage3_modules_1_modules_bn1_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_16.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_620: f32, %in_617: f32, %in_618: f32, %in_619: f32, %post_621: f32):
          %v622 = arith.mulf %acc_620, %in_617 : f32
          %v623 = arith.subf %v622, %in_618 : f32
          %v624 = arith.addf %v623, %in_619 : f32
          %v625 = arith.maxnumf %init, %v624 : f32
          linalg.yield %v625 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v630 = tensor.pad %out_16.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i626: index, %pad_i627: index, %pad_i628: index, %pad_i629: index):
        tensor.yield %init : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %l_self_modules_stage3_modules_1_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_1_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_17.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_17.buf = linalg.fill ins(%init : f32) outs(%out_17.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v630, %l_self_modules_stage3_modules_1_modules_conv2_parameters_weight_.expanded : tensor<10x120x58x58xf32>, tensor<120x1x3x3xf32>)
      outs(%out_17.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_631: f32, %in_632: f32, %acc_633: f32):
          %v634 = arith.mulf %in_631, %in_632 : f32
          %v635 = arith.addf %v634, %acc_633 : f32
          linalg.yield %v635 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v636.buf = tensor.empty() : tensor<120xf32>
    %v636.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_1_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v636.buf : tensor<120xf32>) {
        ^bb0(%in_637: f32, %in_638: f32, %acc_639: f32):
          %v640 = arith.constant 1.0 : f32
          %v641 = arith.constant 9.999999747378752e-06 : f32
          %v642 = arith.addf %v641, %in_637 : f32
          %v643 = math.sqrt %v642 : f32
          %v644 = arith.divf %v640, %v643 : f32
          %v645 = arith.mulf %v644, %in_638 : f32
          linalg.yield %v645 : f32
      }
    -> tensor<120xf32>
    %v646.buf = tensor.empty() : tensor<120xf32>
    %v646.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_1_modules_bn2_buffers_running_mean_, %l_self_modules_stage3_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_1_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v646.buf : tensor<120xf32>) {
        ^bb0(%in_647: f32, %in_648: f32, %in_649: f32, %acc_650: f32):
          %v651 = arith.constant 1.0 : f32
          %v652 = arith.constant 9.999999747378752e-06 : f32
          %v653 = arith.addf %v652, %in_648 : f32
          %v654 = math.sqrt %v653 : f32
          %v655 = arith.divf %v651, %v654 : f32
          %v656 = arith.mulf %v655, %in_649 : f32
          %v657 = arith.mulf %v656, %in_647 : f32
          linalg.yield %v657 : f32
      }
    -> tensor<120xf32>
    %out_17.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_17.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_17.buf.out, %v636.buf.out, %v646.buf.out, %l_self_modules_stage3_modules_1_modules_bn2_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_17.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_661: f32, %in_658: f32, %in_659: f32, %in_660: f32, %post_662: f32):
          %v663 = arith.mulf %acc_661, %in_658 : f32
          %v664 = arith.subf %v663, %in_659 : f32
          %v665 = arith.addf %v664, %in_660 : f32
          linalg.yield %v665 : f32
      }
    -> tensor<10x120x56x56xf32>
    %transpose_4.buf = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transpose_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_17.post.out : tensor<10x120x56x56xf32>)
      outs(%transpose_4.buf : tensor<10x40x3x56x56xf32>) {
        ^bb0(%in_666: f32, %acc_667: f32):
          linalg.yield %in_666 : f32
      }
    -> tensor<10x40x3x56x56xf32>
    %l_self_modules_stage3_modules_1_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_1_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_19.empty = tensor.empty() : tensor<10x480x56x56xf32>
    %out_19.buf = linalg.fill ins(%init : f32) outs(%out_19.empty : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %out_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_4.buf.out, %l_self_modules_stage3_modules_1_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x56x56xf32>, tensor<480x40x1x1xf32>)
      outs(%out_19.buf : tensor<10x480x56x56xf32>) {
        ^bb0(%in_668: f32, %in_669: f32, %acc_670: f32):
          %v671 = arith.mulf %in_668, %in_669 : f32
          %v672 = arith.addf %v671, %acc_670 : f32
          linalg.yield %v672 : f32
      }
    -> tensor<10x480x56x56xf32>
    %v673.buf = tensor.empty() : tensor<480xf32>
    %v673.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_1_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_1_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v673.buf : tensor<480xf32>) {
        ^bb0(%in_674: f32, %in_675: f32, %acc_676: f32):
          %v677 = arith.constant 1.0 : f32
          %v678 = arith.constant 9.999999747378752e-06 : f32
          %v679 = arith.addf %v678, %in_674 : f32
          %v680 = math.sqrt %v679 : f32
          %v681 = arith.divf %v677, %v680 : f32
          %v682 = arith.mulf %v681, %in_675 : f32
          linalg.yield %v682 : f32
      }
    -> tensor<480xf32>
    %v683.buf = tensor.empty() : tensor<480xf32>
    %v683.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_1_modules_bn3_buffers_running_mean_, %l_self_modules_stage3_modules_1_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_1_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v683.buf : tensor<480xf32>) {
        ^bb0(%in_684: f32, %in_685: f32, %in_686: f32, %acc_687: f32):
          %v688 = arith.constant 1.0 : f32
          %v689 = arith.constant 9.999999747378752e-06 : f32
          %v690 = arith.addf %v689, %in_685 : f32
          %v691 = math.sqrt %v690 : f32
          %v692 = arith.divf %v688, %v691 : f32
          %v693 = arith.mulf %v692, %in_686 : f32
          %v694 = arith.mulf %v693, %in_684 : f32
          linalg.yield %v694 : f32
      }
    -> tensor<480xf32>
    %out_19.post = tensor.empty() : tensor<10x480x56x56xf32>
    %out_19.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_19.buf.out, %v673.buf.out, %v683.buf.out, %l_self_modules_stage3_modules_1_modules_bn3_parameters_bias_, %out_15.post.out : tensor<10x480x56x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x56x56xf32>)
      outs(%out_19.post : tensor<10x480x56x56xf32>) {
        ^bb0(%acc_699: f32, %in_695: f32, %in_696: f32, %in_697: f32, %in_698: f32, %post_700: f32):
          %v701 = arith.mulf %acc_699, %in_695 : f32
          %v702 = arith.subf %v701, %in_696 : f32
          %v703 = arith.addf %v702, %in_697 : f32
          %v704 = arith.maxnumf %init, %v703 : f32
          %v705 = arith.addf %v704, %in_698 : f32
          linalg.yield %v705 : f32
      }
    -> tensor<10x480x56x56xf32>
    %l_self_modules_stage3_modules_2_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_2_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 160, 1, 1] : tensor<120x160xf32> into tensor<120x160x1x1xf32>
    %out_20.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_20.buf = linalg.fill ins(%init : f32) outs(%out_20.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 160 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_19.post.out, %l_self_modules_stage3_modules_2_modules_conv1_parameters_weight_.expanded : tensor<10x480x56x56xf32>, tensor<120x160x1x1xf32>)
      outs(%out_20.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_706: f32, %in_707: f32, %acc_708: f32):
          %v709 = arith.mulf %in_706, %in_707 : f32
          %v710 = arith.addf %v709, %acc_708 : f32
          linalg.yield %v710 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v711.buf = tensor.empty() : tensor<120xf32>
    %v711.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_2_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_2_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v711.buf : tensor<120xf32>) {
        ^bb0(%in_712: f32, %in_713: f32, %acc_714: f32):
          %v715 = arith.constant 1.0 : f32
          %v716 = arith.constant 9.999999747378752e-06 : f32
          %v717 = arith.addf %v716, %in_712 : f32
          %v718 = math.sqrt %v717 : f32
          %v719 = arith.divf %v715, %v718 : f32
          %v720 = arith.mulf %v719, %in_713 : f32
          linalg.yield %v720 : f32
      }
    -> tensor<120xf32>
    %v721.buf = tensor.empty() : tensor<120xf32>
    %v721.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_2_modules_bn1_buffers_running_mean_, %l_self_modules_stage3_modules_2_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_2_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v721.buf : tensor<120xf32>) {
        ^bb0(%in_722: f32, %in_723: f32, %in_724: f32, %acc_725: f32):
          %v726 = arith.constant 1.0 : f32
          %v727 = arith.constant 9.999999747378752e-06 : f32
          %v728 = arith.addf %v727, %in_723 : f32
          %v729 = math.sqrt %v728 : f32
          %v730 = arith.divf %v726, %v729 : f32
          %v731 = arith.mulf %v730, %in_724 : f32
          %v732 = arith.mulf %v731, %in_722 : f32
          linalg.yield %v732 : f32
      }
    -> tensor<120xf32>
    %out_20.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_20.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_20.buf.out, %v711.buf.out, %v721.buf.out, %l_self_modules_stage3_modules_2_modules_bn1_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_20.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_736: f32, %in_733: f32, %in_734: f32, %in_735: f32, %post_737: f32):
          %v738 = arith.mulf %acc_736, %in_733 : f32
          %v739 = arith.subf %v738, %in_734 : f32
          %v740 = arith.addf %v739, %in_735 : f32
          %v741 = arith.maxnumf %init, %v740 : f32
          linalg.yield %v741 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v746 = tensor.pad %out_20.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i742: index, %pad_i743: index, %pad_i744: index, %pad_i745: index):
        tensor.yield %init : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %l_self_modules_stage3_modules_2_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_2_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_21.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_21.buf = linalg.fill ins(%init : f32) outs(%out_21.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v746, %l_self_modules_stage3_modules_2_modules_conv2_parameters_weight_.expanded : tensor<10x120x58x58xf32>, tensor<120x1x3x3xf32>)
      outs(%out_21.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_747: f32, %in_748: f32, %acc_749: f32):
          %v750 = arith.mulf %in_747, %in_748 : f32
          %v751 = arith.addf %v750, %acc_749 : f32
          linalg.yield %v751 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v752.buf = tensor.empty() : tensor<120xf32>
    %v752.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_2_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_2_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v752.buf : tensor<120xf32>) {
        ^bb0(%in_753: f32, %in_754: f32, %acc_755: f32):
          %v756 = arith.constant 1.0 : f32
          %v757 = arith.constant 9.999999747378752e-06 : f32
          %v758 = arith.addf %v757, %in_753 : f32
          %v759 = math.sqrt %v758 : f32
          %v760 = arith.divf %v756, %v759 : f32
          %v761 = arith.mulf %v760, %in_754 : f32
          linalg.yield %v761 : f32
      }
    -> tensor<120xf32>
    %v762.buf = tensor.empty() : tensor<120xf32>
    %v762.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_2_modules_bn2_buffers_running_mean_, %l_self_modules_stage3_modules_2_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_2_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v762.buf : tensor<120xf32>) {
        ^bb0(%in_763: f32, %in_764: f32, %in_765: f32, %acc_766: f32):
          %v767 = arith.constant 1.0 : f32
          %v768 = arith.constant 9.999999747378752e-06 : f32
          %v769 = arith.addf %v768, %in_764 : f32
          %v770 = math.sqrt %v769 : f32
          %v771 = arith.divf %v767, %v770 : f32
          %v772 = arith.mulf %v771, %in_765 : f32
          %v773 = arith.mulf %v772, %in_763 : f32
          linalg.yield %v773 : f32
      }
    -> tensor<120xf32>
    %out_21.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_21.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_21.buf.out, %v752.buf.out, %v762.buf.out, %l_self_modules_stage3_modules_2_modules_bn2_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_21.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_777: f32, %in_774: f32, %in_775: f32, %in_776: f32, %post_778: f32):
          %v779 = arith.mulf %acc_777, %in_774 : f32
          %v780 = arith.subf %v779, %in_775 : f32
          %v781 = arith.addf %v780, %in_776 : f32
          linalg.yield %v781 : f32
      }
    -> tensor<10x120x56x56xf32>
    %transpose_5.buf = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transpose_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_21.post.out : tensor<10x120x56x56xf32>)
      outs(%transpose_5.buf : tensor<10x40x3x56x56xf32>) {
        ^bb0(%in_782: f32, %acc_783: f32):
          linalg.yield %in_782 : f32
      }
    -> tensor<10x40x3x56x56xf32>
    %l_self_modules_stage3_modules_2_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_2_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_23.empty = tensor.empty() : tensor<10x480x56x56xf32>
    %out_23.buf = linalg.fill ins(%init : f32) outs(%out_23.empty : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %out_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_5.buf.out, %l_self_modules_stage3_modules_2_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x56x56xf32>, tensor<480x40x1x1xf32>)
      outs(%out_23.buf : tensor<10x480x56x56xf32>) {
        ^bb0(%in_784: f32, %in_785: f32, %acc_786: f32):
          %v787 = arith.mulf %in_784, %in_785 : f32
          %v788 = arith.addf %v787, %acc_786 : f32
          linalg.yield %v788 : f32
      }
    -> tensor<10x480x56x56xf32>
    %v789.buf = tensor.empty() : tensor<480xf32>
    %v789.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_2_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_2_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v789.buf : tensor<480xf32>) {
        ^bb0(%in_790: f32, %in_791: f32, %acc_792: f32):
          %v793 = arith.constant 1.0 : f32
          %v794 = arith.constant 9.999999747378752e-06 : f32
          %v795 = arith.addf %v794, %in_790 : f32
          %v796 = math.sqrt %v795 : f32
          %v797 = arith.divf %v793, %v796 : f32
          %v798 = arith.mulf %v797, %in_791 : f32
          linalg.yield %v798 : f32
      }
    -> tensor<480xf32>
    %v799.buf = tensor.empty() : tensor<480xf32>
    %v799.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_2_modules_bn3_buffers_running_mean_, %l_self_modules_stage3_modules_2_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_2_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v799.buf : tensor<480xf32>) {
        ^bb0(%in_800: f32, %in_801: f32, %in_802: f32, %acc_803: f32):
          %v804 = arith.constant 1.0 : f32
          %v805 = arith.constant 9.999999747378752e-06 : f32
          %v806 = arith.addf %v805, %in_801 : f32
          %v807 = math.sqrt %v806 : f32
          %v808 = arith.divf %v804, %v807 : f32
          %v809 = arith.mulf %v808, %in_802 : f32
          %v810 = arith.mulf %v809, %in_800 : f32
          linalg.yield %v810 : f32
      }
    -> tensor<480xf32>
    %out_23.post = tensor.empty() : tensor<10x480x56x56xf32>
    %out_23.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_23.buf.out, %v789.buf.out, %v799.buf.out, %l_self_modules_stage3_modules_2_modules_bn3_parameters_bias_, %out_19.post.out : tensor<10x480x56x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x56x56xf32>)
      outs(%out_23.post : tensor<10x480x56x56xf32>) {
        ^bb0(%acc_815: f32, %in_811: f32, %in_812: f32, %in_813: f32, %in_814: f32, %post_816: f32):
          %v817 = arith.mulf %acc_815, %in_811 : f32
          %v818 = arith.subf %v817, %in_812 : f32
          %v819 = arith.addf %v818, %in_813 : f32
          %v820 = arith.maxnumf %init, %v819 : f32
          %v821 = arith.addf %v820, %in_814 : f32
          linalg.yield %v821 : f32
      }
    -> tensor<10x480x56x56xf32>
    %l_self_modules_stage3_modules_3_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_3_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 160, 1, 1] : tensor<120x160xf32> into tensor<120x160x1x1xf32>
    %out_24.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_24.buf = linalg.fill ins(%init : f32) outs(%out_24.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 160 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_23.post.out, %l_self_modules_stage3_modules_3_modules_conv1_parameters_weight_.expanded : tensor<10x480x56x56xf32>, tensor<120x160x1x1xf32>)
      outs(%out_24.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_822: f32, %in_823: f32, %acc_824: f32):
          %v825 = arith.mulf %in_822, %in_823 : f32
          %v826 = arith.addf %v825, %acc_824 : f32
          linalg.yield %v826 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v827.buf = tensor.empty() : tensor<120xf32>
    %v827.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_3_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_3_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v827.buf : tensor<120xf32>) {
        ^bb0(%in_828: f32, %in_829: f32, %acc_830: f32):
          %v831 = arith.constant 1.0 : f32
          %v832 = arith.constant 9.999999747378752e-06 : f32
          %v833 = arith.addf %v832, %in_828 : f32
          %v834 = math.sqrt %v833 : f32
          %v835 = arith.divf %v831, %v834 : f32
          %v836 = arith.mulf %v835, %in_829 : f32
          linalg.yield %v836 : f32
      }
    -> tensor<120xf32>
    %v837.buf = tensor.empty() : tensor<120xf32>
    %v837.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_3_modules_bn1_buffers_running_mean_, %l_self_modules_stage3_modules_3_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_3_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v837.buf : tensor<120xf32>) {
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
    -> tensor<120xf32>
    %out_24.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_24.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_24.buf.out, %v827.buf.out, %v837.buf.out, %l_self_modules_stage3_modules_3_modules_bn1_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_24.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_852: f32, %in_849: f32, %in_850: f32, %in_851: f32, %post_853: f32):
          %v854 = arith.mulf %acc_852, %in_849 : f32
          %v855 = arith.subf %v854, %in_850 : f32
          %v856 = arith.addf %v855, %in_851 : f32
          %v857 = arith.maxnumf %init, %v856 : f32
          linalg.yield %v857 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v862 = tensor.pad %out_24.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i858: index, %pad_i859: index, %pad_i860: index, %pad_i861: index):
        tensor.yield %init : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %l_self_modules_stage3_modules_3_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_3_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_25.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_25.buf = linalg.fill ins(%init : f32) outs(%out_25.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v862, %l_self_modules_stage3_modules_3_modules_conv2_parameters_weight_.expanded : tensor<10x120x58x58xf32>, tensor<120x1x3x3xf32>)
      outs(%out_25.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_863: f32, %in_864: f32, %acc_865: f32):
          %v866 = arith.mulf %in_863, %in_864 : f32
          %v867 = arith.addf %v866, %acc_865 : f32
          linalg.yield %v867 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v868.buf = tensor.empty() : tensor<120xf32>
    %v868.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_3_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_3_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v868.buf : tensor<120xf32>) {
        ^bb0(%in_869: f32, %in_870: f32, %acc_871: f32):
          %v872 = arith.constant 1.0 : f32
          %v873 = arith.constant 9.999999747378752e-06 : f32
          %v874 = arith.addf %v873, %in_869 : f32
          %v875 = math.sqrt %v874 : f32
          %v876 = arith.divf %v872, %v875 : f32
          %v877 = arith.mulf %v876, %in_870 : f32
          linalg.yield %v877 : f32
      }
    -> tensor<120xf32>
    %v878.buf = tensor.empty() : tensor<120xf32>
    %v878.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_3_modules_bn2_buffers_running_mean_, %l_self_modules_stage3_modules_3_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_3_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v878.buf : tensor<120xf32>) {
        ^bb0(%in_879: f32, %in_880: f32, %in_881: f32, %acc_882: f32):
          %v883 = arith.constant 1.0 : f32
          %v884 = arith.constant 9.999999747378752e-06 : f32
          %v885 = arith.addf %v884, %in_880 : f32
          %v886 = math.sqrt %v885 : f32
          %v887 = arith.divf %v883, %v886 : f32
          %v888 = arith.mulf %v887, %in_881 : f32
          %v889 = arith.mulf %v888, %in_879 : f32
          linalg.yield %v889 : f32
      }
    -> tensor<120xf32>
    %out_25.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_25.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_25.buf.out, %v868.buf.out, %v878.buf.out, %l_self_modules_stage3_modules_3_modules_bn2_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_25.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_893: f32, %in_890: f32, %in_891: f32, %in_892: f32, %post_894: f32):
          %v895 = arith.mulf %acc_893, %in_890 : f32
          %v896 = arith.subf %v895, %in_891 : f32
          %v897 = arith.addf %v896, %in_892 : f32
          linalg.yield %v897 : f32
      }
    -> tensor<10x120x56x56xf32>
    %transpose_6.buf = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transpose_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_25.post.out : tensor<10x120x56x56xf32>)
      outs(%transpose_6.buf : tensor<10x40x3x56x56xf32>) {
        ^bb0(%in_898: f32, %acc_899: f32):
          linalg.yield %in_898 : f32
      }
    -> tensor<10x40x3x56x56xf32>
    %l_self_modules_stage3_modules_3_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_3_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_27.empty = tensor.empty() : tensor<10x480x56x56xf32>
    %out_27.buf = linalg.fill ins(%init : f32) outs(%out_27.empty : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %out_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_6.buf.out, %l_self_modules_stage3_modules_3_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x56x56xf32>, tensor<480x40x1x1xf32>)
      outs(%out_27.buf : tensor<10x480x56x56xf32>) {
        ^bb0(%in_900: f32, %in_901: f32, %acc_902: f32):
          %v903 = arith.mulf %in_900, %in_901 : f32
          %v904 = arith.addf %v903, %acc_902 : f32
          linalg.yield %v904 : f32
      }
    -> tensor<10x480x56x56xf32>
    %v905.buf = tensor.empty() : tensor<480xf32>
    %v905.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_3_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_3_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v905.buf : tensor<480xf32>) {
        ^bb0(%in_906: f32, %in_907: f32, %acc_908: f32):
          %v909 = arith.constant 1.0 : f32
          %v910 = arith.constant 9.999999747378752e-06 : f32
          %v911 = arith.addf %v910, %in_906 : f32
          %v912 = math.sqrt %v911 : f32
          %v913 = arith.divf %v909, %v912 : f32
          %v914 = arith.mulf %v913, %in_907 : f32
          linalg.yield %v914 : f32
      }
    -> tensor<480xf32>
    %v915.buf = tensor.empty() : tensor<480xf32>
    %v915.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_3_modules_bn3_buffers_running_mean_, %l_self_modules_stage3_modules_3_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_3_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v915.buf : tensor<480xf32>) {
        ^bb0(%in_916: f32, %in_917: f32, %in_918: f32, %acc_919: f32):
          %v920 = arith.constant 1.0 : f32
          %v921 = arith.constant 9.999999747378752e-06 : f32
          %v922 = arith.addf %v921, %in_917 : f32
          %v923 = math.sqrt %v922 : f32
          %v924 = arith.divf %v920, %v923 : f32
          %v925 = arith.mulf %v924, %in_918 : f32
          %v926 = arith.mulf %v925, %in_916 : f32
          linalg.yield %v926 : f32
      }
    -> tensor<480xf32>
    %out_27.post = tensor.empty() : tensor<10x480x56x56xf32>
    %out_27.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_27.buf.out, %v905.buf.out, %v915.buf.out, %l_self_modules_stage3_modules_3_modules_bn3_parameters_bias_, %out_23.post.out : tensor<10x480x56x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x56x56xf32>)
      outs(%out_27.post : tensor<10x480x56x56xf32>) {
        ^bb0(%acc_931: f32, %in_927: f32, %in_928: f32, %in_929: f32, %in_930: f32, %post_932: f32):
          %v933 = arith.mulf %acc_931, %in_927 : f32
          %v934 = arith.subf %v933, %in_928 : f32
          %v935 = arith.addf %v934, %in_929 : f32
          %v936 = arith.maxnumf %init, %v935 : f32
          %v937 = arith.addf %v936, %in_930 : f32
          linalg.yield %v937 : f32
      }
    -> tensor<10x480x56x56xf32>
    %l_self_modules_stage3_modules_4_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_4_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 160, 1, 1] : tensor<120x160xf32> into tensor<120x160x1x1xf32>
    %out_28.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_28.buf = linalg.fill ins(%init : f32) outs(%out_28.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 160 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_27.post.out, %l_self_modules_stage3_modules_4_modules_conv1_parameters_weight_.expanded : tensor<10x480x56x56xf32>, tensor<120x160x1x1xf32>)
      outs(%out_28.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_938: f32, %in_939: f32, %acc_940: f32):
          %v941 = arith.mulf %in_938, %in_939 : f32
          %v942 = arith.addf %v941, %acc_940 : f32
          linalg.yield %v942 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v943.buf = tensor.empty() : tensor<120xf32>
    %v943.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_4_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_4_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v943.buf : tensor<120xf32>) {
        ^bb0(%in_944: f32, %in_945: f32, %acc_946: f32):
          %v947 = arith.constant 1.0 : f32
          %v948 = arith.constant 9.999999747378752e-06 : f32
          %v949 = arith.addf %v948, %in_944 : f32
          %v950 = math.sqrt %v949 : f32
          %v951 = arith.divf %v947, %v950 : f32
          %v952 = arith.mulf %v951, %in_945 : f32
          linalg.yield %v952 : f32
      }
    -> tensor<120xf32>
    %v953.buf = tensor.empty() : tensor<120xf32>
    %v953.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_4_modules_bn1_buffers_running_mean_, %l_self_modules_stage3_modules_4_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_4_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v953.buf : tensor<120xf32>) {
        ^bb0(%in_954: f32, %in_955: f32, %in_956: f32, %acc_957: f32):
          %v958 = arith.constant 1.0 : f32
          %v959 = arith.constant 9.999999747378752e-06 : f32
          %v960 = arith.addf %v959, %in_955 : f32
          %v961 = math.sqrt %v960 : f32
          %v962 = arith.divf %v958, %v961 : f32
          %v963 = arith.mulf %v962, %in_956 : f32
          %v964 = arith.mulf %v963, %in_954 : f32
          linalg.yield %v964 : f32
      }
    -> tensor<120xf32>
    %out_28.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_28.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_28.buf.out, %v943.buf.out, %v953.buf.out, %l_self_modules_stage3_modules_4_modules_bn1_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_28.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_968: f32, %in_965: f32, %in_966: f32, %in_967: f32, %post_969: f32):
          %v970 = arith.mulf %acc_968, %in_965 : f32
          %v971 = arith.subf %v970, %in_966 : f32
          %v972 = arith.addf %v971, %in_967 : f32
          %v973 = arith.maxnumf %init, %v972 : f32
          linalg.yield %v973 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v978 = tensor.pad %out_28.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i974: index, %pad_i975: index, %pad_i976: index, %pad_i977: index):
        tensor.yield %init : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %l_self_modules_stage3_modules_4_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_4_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_29.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_29.buf = linalg.fill ins(%init : f32) outs(%out_29.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_29.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v978, %l_self_modules_stage3_modules_4_modules_conv2_parameters_weight_.expanded : tensor<10x120x58x58xf32>, tensor<120x1x3x3xf32>)
      outs(%out_29.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_979: f32, %in_980: f32, %acc_981: f32):
          %v982 = arith.mulf %in_979, %in_980 : f32
          %v983 = arith.addf %v982, %acc_981 : f32
          linalg.yield %v983 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v984.buf = tensor.empty() : tensor<120xf32>
    %v984.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_4_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_4_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v984.buf : tensor<120xf32>) {
        ^bb0(%in_985: f32, %in_986: f32, %acc_987: f32):
          %v988 = arith.constant 1.0 : f32
          %v989 = arith.constant 9.999999747378752e-06 : f32
          %v990 = arith.addf %v989, %in_985 : f32
          %v991 = math.sqrt %v990 : f32
          %v992 = arith.divf %v988, %v991 : f32
          %v993 = arith.mulf %v992, %in_986 : f32
          linalg.yield %v993 : f32
      }
    -> tensor<120xf32>
    %v994.buf = tensor.empty() : tensor<120xf32>
    %v994.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_4_modules_bn2_buffers_running_mean_, %l_self_modules_stage3_modules_4_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_4_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v994.buf : tensor<120xf32>) {
        ^bb0(%in_995: f32, %in_996: f32, %in_997: f32, %acc_998: f32):
          %v999 = arith.constant 1.0 : f32
          %v1000 = arith.constant 9.999999747378752e-06 : f32
          %v1001 = arith.addf %v1000, %in_996 : f32
          %v1002 = math.sqrt %v1001 : f32
          %v1003 = arith.divf %v999, %v1002 : f32
          %v1004 = arith.mulf %v1003, %in_997 : f32
          %v1005 = arith.mulf %v1004, %in_995 : f32
          linalg.yield %v1005 : f32
      }
    -> tensor<120xf32>
    %out_29.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_29.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_29.buf.out, %v984.buf.out, %v994.buf.out, %l_self_modules_stage3_modules_4_modules_bn2_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_29.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_1009: f32, %in_1006: f32, %in_1007: f32, %in_1008: f32, %post_1010: f32):
          %v1011 = arith.mulf %acc_1009, %in_1006 : f32
          %v1012 = arith.subf %v1011, %in_1007 : f32
          %v1013 = arith.addf %v1012, %in_1008 : f32
          linalg.yield %v1013 : f32
      }
    -> tensor<10x120x56x56xf32>
    %transpose_7.buf = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transpose_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_29.post.out : tensor<10x120x56x56xf32>)
      outs(%transpose_7.buf : tensor<10x40x3x56x56xf32>) {
        ^bb0(%in_1014: f32, %acc_1015: f32):
          linalg.yield %in_1014 : f32
      }
    -> tensor<10x40x3x56x56xf32>
    %l_self_modules_stage3_modules_4_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_4_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_31.empty = tensor.empty() : tensor<10x480x56x56xf32>
    %out_31.buf = linalg.fill ins(%init : f32) outs(%out_31.empty : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %out_31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_7.buf.out, %l_self_modules_stage3_modules_4_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x56x56xf32>, tensor<480x40x1x1xf32>)
      outs(%out_31.buf : tensor<10x480x56x56xf32>) {
        ^bb0(%in_1016: f32, %in_1017: f32, %acc_1018: f32):
          %v1019 = arith.mulf %in_1016, %in_1017 : f32
          %v1020 = arith.addf %v1019, %acc_1018 : f32
          linalg.yield %v1020 : f32
      }
    -> tensor<10x480x56x56xf32>
    %v1021.buf = tensor.empty() : tensor<480xf32>
    %v1021.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_4_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_4_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v1021.buf : tensor<480xf32>) {
        ^bb0(%in_1022: f32, %in_1023: f32, %acc_1024: f32):
          %v1025 = arith.constant 1.0 : f32
          %v1026 = arith.constant 9.999999747378752e-06 : f32
          %v1027 = arith.addf %v1026, %in_1022 : f32
          %v1028 = math.sqrt %v1027 : f32
          %v1029 = arith.divf %v1025, %v1028 : f32
          %v1030 = arith.mulf %v1029, %in_1023 : f32
          linalg.yield %v1030 : f32
      }
    -> tensor<480xf32>
    %v1031.buf = tensor.empty() : tensor<480xf32>
    %v1031.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_4_modules_bn3_buffers_running_mean_, %l_self_modules_stage3_modules_4_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_4_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v1031.buf : tensor<480xf32>) {
        ^bb0(%in_1032: f32, %in_1033: f32, %in_1034: f32, %acc_1035: f32):
          %v1036 = arith.constant 1.0 : f32
          %v1037 = arith.constant 9.999999747378752e-06 : f32
          %v1038 = arith.addf %v1037, %in_1033 : f32
          %v1039 = math.sqrt %v1038 : f32
          %v1040 = arith.divf %v1036, %v1039 : f32
          %v1041 = arith.mulf %v1040, %in_1034 : f32
          %v1042 = arith.mulf %v1041, %in_1032 : f32
          linalg.yield %v1042 : f32
      }
    -> tensor<480xf32>
    %out_31.post = tensor.empty() : tensor<10x480x56x56xf32>
    %out_31.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_31.buf.out, %v1021.buf.out, %v1031.buf.out, %l_self_modules_stage3_modules_4_modules_bn3_parameters_bias_, %out_27.post.out : tensor<10x480x56x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x56x56xf32>)
      outs(%out_31.post : tensor<10x480x56x56xf32>) {
        ^bb0(%acc_1047: f32, %in_1043: f32, %in_1044: f32, %in_1045: f32, %in_1046: f32, %post_1048: f32):
          %v1049 = arith.mulf %acc_1047, %in_1043 : f32
          %v1050 = arith.subf %v1049, %in_1044 : f32
          %v1051 = arith.addf %v1050, %in_1045 : f32
          %v1052 = arith.maxnumf %init, %v1051 : f32
          %v1053 = arith.addf %v1052, %in_1046 : f32
          linalg.yield %v1053 : f32
      }
    -> tensor<10x480x56x56xf32>
    %l_self_modules_stage3_modules_5_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_5_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 160, 1, 1] : tensor<120x160xf32> into tensor<120x160x1x1xf32>
    %out_32.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_32.buf = linalg.fill ins(%init : f32) outs(%out_32.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 160 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_31.post.out, %l_self_modules_stage3_modules_5_modules_conv1_parameters_weight_.expanded : tensor<10x480x56x56xf32>, tensor<120x160x1x1xf32>)
      outs(%out_32.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_1054: f32, %in_1055: f32, %acc_1056: f32):
          %v1057 = arith.mulf %in_1054, %in_1055 : f32
          %v1058 = arith.addf %v1057, %acc_1056 : f32
          linalg.yield %v1058 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v1059.buf = tensor.empty() : tensor<120xf32>
    %v1059.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_5_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_5_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v1059.buf : tensor<120xf32>) {
        ^bb0(%in_1060: f32, %in_1061: f32, %acc_1062: f32):
          %v1063 = arith.constant 1.0 : f32
          %v1064 = arith.constant 9.999999747378752e-06 : f32
          %v1065 = arith.addf %v1064, %in_1060 : f32
          %v1066 = math.sqrt %v1065 : f32
          %v1067 = arith.divf %v1063, %v1066 : f32
          %v1068 = arith.mulf %v1067, %in_1061 : f32
          linalg.yield %v1068 : f32
      }
    -> tensor<120xf32>
    %v1069.buf = tensor.empty() : tensor<120xf32>
    %v1069.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_5_modules_bn1_buffers_running_mean_, %l_self_modules_stage3_modules_5_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_5_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v1069.buf : tensor<120xf32>) {
        ^bb0(%in_1070: f32, %in_1071: f32, %in_1072: f32, %acc_1073: f32):
          %v1074 = arith.constant 1.0 : f32
          %v1075 = arith.constant 9.999999747378752e-06 : f32
          %v1076 = arith.addf %v1075, %in_1071 : f32
          %v1077 = math.sqrt %v1076 : f32
          %v1078 = arith.divf %v1074, %v1077 : f32
          %v1079 = arith.mulf %v1078, %in_1072 : f32
          %v1080 = arith.mulf %v1079, %in_1070 : f32
          linalg.yield %v1080 : f32
      }
    -> tensor<120xf32>
    %out_32.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_32.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_32.buf.out, %v1059.buf.out, %v1069.buf.out, %l_self_modules_stage3_modules_5_modules_bn1_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_32.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_1084: f32, %in_1081: f32, %in_1082: f32, %in_1083: f32, %post_1085: f32):
          %v1086 = arith.mulf %acc_1084, %in_1081 : f32
          %v1087 = arith.subf %v1086, %in_1082 : f32
          %v1088 = arith.addf %v1087, %in_1083 : f32
          %v1089 = arith.maxnumf %init, %v1088 : f32
          linalg.yield %v1089 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v1094 = tensor.pad %out_32.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1090: index, %pad_i1091: index, %pad_i1092: index, %pad_i1093: index):
        tensor.yield %init : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %l_self_modules_stage3_modules_5_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_5_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_33.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_33.buf = linalg.fill ins(%init : f32) outs(%out_33.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1094, %l_self_modules_stage3_modules_5_modules_conv2_parameters_weight_.expanded : tensor<10x120x58x58xf32>, tensor<120x1x3x3xf32>)
      outs(%out_33.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_1095: f32, %in_1096: f32, %acc_1097: f32):
          %v1098 = arith.mulf %in_1095, %in_1096 : f32
          %v1099 = arith.addf %v1098, %acc_1097 : f32
          linalg.yield %v1099 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v1100.buf = tensor.empty() : tensor<120xf32>
    %v1100.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_5_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_5_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v1100.buf : tensor<120xf32>) {
        ^bb0(%in_1101: f32, %in_1102: f32, %acc_1103: f32):
          %v1104 = arith.constant 1.0 : f32
          %v1105 = arith.constant 9.999999747378752e-06 : f32
          %v1106 = arith.addf %v1105, %in_1101 : f32
          %v1107 = math.sqrt %v1106 : f32
          %v1108 = arith.divf %v1104, %v1107 : f32
          %v1109 = arith.mulf %v1108, %in_1102 : f32
          linalg.yield %v1109 : f32
      }
    -> tensor<120xf32>
    %v1110.buf = tensor.empty() : tensor<120xf32>
    %v1110.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_5_modules_bn2_buffers_running_mean_, %l_self_modules_stage3_modules_5_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_5_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v1110.buf : tensor<120xf32>) {
        ^bb0(%in_1111: f32, %in_1112: f32, %in_1113: f32, %acc_1114: f32):
          %v1115 = arith.constant 1.0 : f32
          %v1116 = arith.constant 9.999999747378752e-06 : f32
          %v1117 = arith.addf %v1116, %in_1112 : f32
          %v1118 = math.sqrt %v1117 : f32
          %v1119 = arith.divf %v1115, %v1118 : f32
          %v1120 = arith.mulf %v1119, %in_1113 : f32
          %v1121 = arith.mulf %v1120, %in_1111 : f32
          linalg.yield %v1121 : f32
      }
    -> tensor<120xf32>
    %out_33.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_33.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_33.buf.out, %v1100.buf.out, %v1110.buf.out, %l_self_modules_stage3_modules_5_modules_bn2_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_33.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_1125: f32, %in_1122: f32, %in_1123: f32, %in_1124: f32, %post_1126: f32):
          %v1127 = arith.mulf %acc_1125, %in_1122 : f32
          %v1128 = arith.subf %v1127, %in_1123 : f32
          %v1129 = arith.addf %v1128, %in_1124 : f32
          linalg.yield %v1129 : f32
      }
    -> tensor<10x120x56x56xf32>
    %transpose_8.buf = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transpose_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_33.post.out : tensor<10x120x56x56xf32>)
      outs(%transpose_8.buf : tensor<10x40x3x56x56xf32>) {
        ^bb0(%in_1130: f32, %acc_1131: f32):
          linalg.yield %in_1130 : f32
      }
    -> tensor<10x40x3x56x56xf32>
    %l_self_modules_stage3_modules_5_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_5_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_35.empty = tensor.empty() : tensor<10x480x56x56xf32>
    %out_35.buf = linalg.fill ins(%init : f32) outs(%out_35.empty : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %out_35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_8.buf.out, %l_self_modules_stage3_modules_5_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x56x56xf32>, tensor<480x40x1x1xf32>)
      outs(%out_35.buf : tensor<10x480x56x56xf32>) {
        ^bb0(%in_1132: f32, %in_1133: f32, %acc_1134: f32):
          %v1135 = arith.mulf %in_1132, %in_1133 : f32
          %v1136 = arith.addf %v1135, %acc_1134 : f32
          linalg.yield %v1136 : f32
      }
    -> tensor<10x480x56x56xf32>
    %v1137.buf = tensor.empty() : tensor<480xf32>
    %v1137.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_5_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_5_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v1137.buf : tensor<480xf32>) {
        ^bb0(%in_1138: f32, %in_1139: f32, %acc_1140: f32):
          %v1141 = arith.constant 1.0 : f32
          %v1142 = arith.constant 9.999999747378752e-06 : f32
          %v1143 = arith.addf %v1142, %in_1138 : f32
          %v1144 = math.sqrt %v1143 : f32
          %v1145 = arith.divf %v1141, %v1144 : f32
          %v1146 = arith.mulf %v1145, %in_1139 : f32
          linalg.yield %v1146 : f32
      }
    -> tensor<480xf32>
    %v1147.buf = tensor.empty() : tensor<480xf32>
    %v1147.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_5_modules_bn3_buffers_running_mean_, %l_self_modules_stage3_modules_5_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_5_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v1147.buf : tensor<480xf32>) {
        ^bb0(%in_1148: f32, %in_1149: f32, %in_1150: f32, %acc_1151: f32):
          %v1152 = arith.constant 1.0 : f32
          %v1153 = arith.constant 9.999999747378752e-06 : f32
          %v1154 = arith.addf %v1153, %in_1149 : f32
          %v1155 = math.sqrt %v1154 : f32
          %v1156 = arith.divf %v1152, %v1155 : f32
          %v1157 = arith.mulf %v1156, %in_1150 : f32
          %v1158 = arith.mulf %v1157, %in_1148 : f32
          linalg.yield %v1158 : f32
      }
    -> tensor<480xf32>
    %out_35.post = tensor.empty() : tensor<10x480x56x56xf32>
    %out_35.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_35.buf.out, %v1137.buf.out, %v1147.buf.out, %l_self_modules_stage3_modules_5_modules_bn3_parameters_bias_, %out_31.post.out : tensor<10x480x56x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x56x56xf32>)
      outs(%out_35.post : tensor<10x480x56x56xf32>) {
        ^bb0(%acc_1163: f32, %in_1159: f32, %in_1160: f32, %in_1161: f32, %in_1162: f32, %post_1164: f32):
          %v1165 = arith.mulf %acc_1163, %in_1159 : f32
          %v1166 = arith.subf %v1165, %in_1160 : f32
          %v1167 = arith.addf %v1166, %in_1161 : f32
          %v1168 = arith.maxnumf %init, %v1167 : f32
          %v1169 = arith.addf %v1168, %in_1162 : f32
          linalg.yield %v1169 : f32
      }
    -> tensor<10x480x56x56xf32>
    %l_self_modules_stage3_modules_6_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_6_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 160, 1, 1] : tensor<120x160xf32> into tensor<120x160x1x1xf32>
    %out_36.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_36.buf = linalg.fill ins(%init : f32) outs(%out_36.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_36.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 160 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_35.post.out, %l_self_modules_stage3_modules_6_modules_conv1_parameters_weight_.expanded : tensor<10x480x56x56xf32>, tensor<120x160x1x1xf32>)
      outs(%out_36.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_1170: f32, %in_1171: f32, %acc_1172: f32):
          %v1173 = arith.mulf %in_1170, %in_1171 : f32
          %v1174 = arith.addf %v1173, %acc_1172 : f32
          linalg.yield %v1174 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v1175.buf = tensor.empty() : tensor<120xf32>
    %v1175.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_6_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_6_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v1175.buf : tensor<120xf32>) {
        ^bb0(%in_1176: f32, %in_1177: f32, %acc_1178: f32):
          %v1179 = arith.constant 1.0 : f32
          %v1180 = arith.constant 9.999999747378752e-06 : f32
          %v1181 = arith.addf %v1180, %in_1176 : f32
          %v1182 = math.sqrt %v1181 : f32
          %v1183 = arith.divf %v1179, %v1182 : f32
          %v1184 = arith.mulf %v1183, %in_1177 : f32
          linalg.yield %v1184 : f32
      }
    -> tensor<120xf32>
    %v1185.buf = tensor.empty() : tensor<120xf32>
    %v1185.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_6_modules_bn1_buffers_running_mean_, %l_self_modules_stage3_modules_6_modules_bn1_buffers_running_var_, %l_self_modules_stage3_modules_6_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v1185.buf : tensor<120xf32>) {
        ^bb0(%in_1186: f32, %in_1187: f32, %in_1188: f32, %acc_1189: f32):
          %v1190 = arith.constant 1.0 : f32
          %v1191 = arith.constant 9.999999747378752e-06 : f32
          %v1192 = arith.addf %v1191, %in_1187 : f32
          %v1193 = math.sqrt %v1192 : f32
          %v1194 = arith.divf %v1190, %v1193 : f32
          %v1195 = arith.mulf %v1194, %in_1188 : f32
          %v1196 = arith.mulf %v1195, %in_1186 : f32
          linalg.yield %v1196 : f32
      }
    -> tensor<120xf32>
    %out_36.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_36.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_36.buf.out, %v1175.buf.out, %v1185.buf.out, %l_self_modules_stage3_modules_6_modules_bn1_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_36.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_1200: f32, %in_1197: f32, %in_1198: f32, %in_1199: f32, %post_1201: f32):
          %v1202 = arith.mulf %acc_1200, %in_1197 : f32
          %v1203 = arith.subf %v1202, %in_1198 : f32
          %v1204 = arith.addf %v1203, %in_1199 : f32
          %v1205 = arith.maxnumf %init, %v1204 : f32
          linalg.yield %v1205 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v1210 = tensor.pad %out_36.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1206: index, %pad_i1207: index, %pad_i1208: index, %pad_i1209: index):
        tensor.yield %init : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %l_self_modules_stage3_modules_6_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_6_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_37.empty = tensor.empty() : tensor<10x120x56x56xf32>
    %out_37.buf = linalg.fill ins(%init : f32) outs(%out_37.empty : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %out_37.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1210, %l_self_modules_stage3_modules_6_modules_conv2_parameters_weight_.expanded : tensor<10x120x58x58xf32>, tensor<120x1x3x3xf32>)
      outs(%out_37.buf : tensor<10x120x56x56xf32>) {
        ^bb0(%in_1211: f32, %in_1212: f32, %acc_1213: f32):
          %v1214 = arith.mulf %in_1211, %in_1212 : f32
          %v1215 = arith.addf %v1214, %acc_1213 : f32
          linalg.yield %v1215 : f32
      }
    -> tensor<10x120x56x56xf32>
    %v1216.buf = tensor.empty() : tensor<120xf32>
    %v1216.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_6_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_6_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v1216.buf : tensor<120xf32>) {
        ^bb0(%in_1217: f32, %in_1218: f32, %acc_1219: f32):
          %v1220 = arith.constant 1.0 : f32
          %v1221 = arith.constant 9.999999747378752e-06 : f32
          %v1222 = arith.addf %v1221, %in_1217 : f32
          %v1223 = math.sqrt %v1222 : f32
          %v1224 = arith.divf %v1220, %v1223 : f32
          %v1225 = arith.mulf %v1224, %in_1218 : f32
          linalg.yield %v1225 : f32
      }
    -> tensor<120xf32>
    %v1226.buf = tensor.empty() : tensor<120xf32>
    %v1226.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_6_modules_bn2_buffers_running_mean_, %l_self_modules_stage3_modules_6_modules_bn2_buffers_running_var_, %l_self_modules_stage3_modules_6_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v1226.buf : tensor<120xf32>) {
        ^bb0(%in_1227: f32, %in_1228: f32, %in_1229: f32, %acc_1230: f32):
          %v1231 = arith.constant 1.0 : f32
          %v1232 = arith.constant 9.999999747378752e-06 : f32
          %v1233 = arith.addf %v1232, %in_1228 : f32
          %v1234 = math.sqrt %v1233 : f32
          %v1235 = arith.divf %v1231, %v1234 : f32
          %v1236 = arith.mulf %v1235, %in_1229 : f32
          %v1237 = arith.mulf %v1236, %in_1227 : f32
          linalg.yield %v1237 : f32
      }
    -> tensor<120xf32>
    %out_37.post = tensor.empty() : tensor<10x120x56x56xf32>
    %out_37.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_37.buf.out, %v1216.buf.out, %v1226.buf.out, %l_self_modules_stage3_modules_6_modules_bn2_parameters_bias_ : tensor<10x120x56x56xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_37.post : tensor<10x120x56x56xf32>) {
        ^bb0(%acc_1241: f32, %in_1238: f32, %in_1239: f32, %in_1240: f32, %post_1242: f32):
          %v1243 = arith.mulf %acc_1241, %in_1238 : f32
          %v1244 = arith.subf %v1243, %in_1239 : f32
          %v1245 = arith.addf %v1244, %in_1240 : f32
          linalg.yield %v1245 : f32
      }
    -> tensor<10x120x56x56xf32>
    %transpose_9.buf = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transpose_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_37.post.out : tensor<10x120x56x56xf32>)
      outs(%transpose_9.buf : tensor<10x40x3x56x56xf32>) {
        ^bb0(%in_1246: f32, %acc_1247: f32):
          linalg.yield %in_1246 : f32
      }
    -> tensor<10x40x3x56x56xf32>
    %l_self_modules_stage3_modules_6_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage3_modules_6_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_39.empty = tensor.empty() : tensor<10x480x56x56xf32>
    %out_39.buf = linalg.fill ins(%init : f32) outs(%out_39.empty : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %out_39.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_9.buf.out, %l_self_modules_stage3_modules_6_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x56x56xf32>, tensor<480x40x1x1xf32>)
      outs(%out_39.buf : tensor<10x480x56x56xf32>) {
        ^bb0(%in_1248: f32, %in_1249: f32, %acc_1250: f32):
          %v1251 = arith.mulf %in_1248, %in_1249 : f32
          %v1252 = arith.addf %v1251, %acc_1250 : f32
          linalg.yield %v1252 : f32
      }
    -> tensor<10x480x56x56xf32>
    %v1253.buf = tensor.empty() : tensor<480xf32>
    %v1253.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_6_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_6_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v1253.buf : tensor<480xf32>) {
        ^bb0(%in_1254: f32, %in_1255: f32, %acc_1256: f32):
          %v1257 = arith.constant 1.0 : f32
          %v1258 = arith.constant 9.999999747378752e-06 : f32
          %v1259 = arith.addf %v1258, %in_1254 : f32
          %v1260 = math.sqrt %v1259 : f32
          %v1261 = arith.divf %v1257, %v1260 : f32
          %v1262 = arith.mulf %v1261, %in_1255 : f32
          linalg.yield %v1262 : f32
      }
    -> tensor<480xf32>
    %v1263.buf = tensor.empty() : tensor<480xf32>
    %v1263.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage3_modules_6_modules_bn3_buffers_running_mean_, %l_self_modules_stage3_modules_6_modules_bn3_buffers_running_var_, %l_self_modules_stage3_modules_6_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v1263.buf : tensor<480xf32>) {
        ^bb0(%in_1264: f32, %in_1265: f32, %in_1266: f32, %acc_1267: f32):
          %v1268 = arith.constant 1.0 : f32
          %v1269 = arith.constant 9.999999747378752e-06 : f32
          %v1270 = arith.addf %v1269, %in_1265 : f32
          %v1271 = math.sqrt %v1270 : f32
          %v1272 = arith.divf %v1268, %v1271 : f32
          %v1273 = arith.mulf %v1272, %in_1266 : f32
          %v1274 = arith.mulf %v1273, %in_1264 : f32
          linalg.yield %v1274 : f32
      }
    -> tensor<480xf32>
    %out_39.post = tensor.empty() : tensor<10x480x56x56xf32>
    %out_39.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_39.buf.out, %v1253.buf.out, %v1263.buf.out, %l_self_modules_stage3_modules_6_modules_bn3_parameters_bias_, %out_35.post.out : tensor<10x480x56x56xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x56x56xf32>)
      outs(%out_39.post : tensor<10x480x56x56xf32>) {
        ^bb0(%acc_1279: f32, %in_1275: f32, %in_1276: f32, %in_1277: f32, %in_1278: f32, %post_1280: f32):
          %v1281 = arith.mulf %acc_1279, %in_1275 : f32
          %v1282 = arith.subf %v1281, %in_1276 : f32
          %v1283 = arith.addf %v1282, %in_1277 : f32
          %v1284 = arith.maxnumf %init, %v1283 : f32
          %v1285 = arith.addf %v1284, %in_1278 : f32
          linalg.yield %v1285 : f32
      }
    -> tensor<10x480x56x56xf32>
    %l_self_modules_stage4_modules_0_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_0_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 160, 1, 1] : tensor<240x160xf32> into tensor<240x160x1x1xf32>
    %out_40.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_40.buf = linalg.fill ins(%init : f32) outs(%out_40.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_40.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 80 * 160 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_39.post.out, %l_self_modules_stage4_modules_0_modules_conv1_parameters_weight_.expanded : tensor<10x480x56x56xf32>, tensor<240x160x1x1xf32>)
      outs(%out_40.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_1286: f32, %in_1287: f32, %acc_1288: f32):
          %v1289 = arith.mulf %in_1286, %in_1287 : f32
          %v1290 = arith.addf %v1289, %acc_1288 : f32
          linalg.yield %v1290 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1291.buf = tensor.empty() : tensor<240xf32>
    %v1291.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_bn1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v1291.buf : tensor<240xf32>) {
        ^bb0(%in_1292: f32, %in_1293: f32, %acc_1294: f32):
          %v1295 = arith.constant 1.0 : f32
          %v1296 = arith.constant 9.999999747378752e-06 : f32
          %v1297 = arith.addf %v1296, %in_1292 : f32
          %v1298 = math.sqrt %v1297 : f32
          %v1299 = arith.divf %v1295, %v1298 : f32
          %v1300 = arith.mulf %v1299, %in_1293 : f32
          linalg.yield %v1300 : f32
      }
    -> tensor<240xf32>
    %v1301.buf = tensor.empty() : tensor<240xf32>
    %v1301.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_bn1_buffers_running_mean_, %l_self_modules_stage4_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_bn1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v1301.buf : tensor<240xf32>) {
        ^bb0(%in_1302: f32, %in_1303: f32, %in_1304: f32, %acc_1305: f32):
          %v1306 = arith.constant 1.0 : f32
          %v1307 = arith.constant 9.999999747378752e-06 : f32
          %v1308 = arith.addf %v1307, %in_1303 : f32
          %v1309 = math.sqrt %v1308 : f32
          %v1310 = arith.divf %v1306, %v1309 : f32
          %v1311 = arith.mulf %v1310, %in_1304 : f32
          %v1312 = arith.mulf %v1311, %in_1302 : f32
          linalg.yield %v1312 : f32
      }
    -> tensor<240xf32>
    %out_40.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_40.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_40.buf.out, %v1291.buf.out, %v1301.buf.out, %l_self_modules_stage4_modules_0_modules_bn1_parameters_bias_ : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%out_40.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_1316: f32, %in_1313: f32, %in_1314: f32, %in_1315: f32, %post_1317: f32):
          %v1318 = arith.mulf %acc_1316, %in_1313 : f32
          %v1319 = arith.subf %v1318, %in_1314 : f32
          %v1320 = arith.addf %v1319, %in_1315 : f32
          %v1321 = arith.maxnumf %init, %v1320 : f32
          linalg.yield %v1321 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1326 = tensor.pad %out_40.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1322: index, %pad_i1323: index, %pad_i1324: index, %pad_i1325: index):
        tensor.yield %init : f32
    } : tensor<10x240x56x56xf32> to tensor<10x240x58x58xf32>
    %l_self_modules_stage4_modules_0_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_0_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [240, 1, 3, 3] : tensor<240x3x3xf32> into tensor<240x1x3x3xf32>
    %out_41.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_41.buf = linalg.fill ins(%init : f32) outs(%out_41.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_41.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1326, %l_self_modules_stage4_modules_0_modules_conv2_parameters_weight_.expanded : tensor<10x240x58x58xf32>, tensor<240x1x3x3xf32>)
      outs(%out_41.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_1327: f32, %in_1328: f32, %acc_1329: f32):
          %v1330 = arith.mulf %in_1327, %in_1328 : f32
          %v1331 = arith.addf %v1330, %acc_1329 : f32
          linalg.yield %v1331 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1332.buf = tensor.empty() : tensor<240xf32>
    %v1332.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_bn2_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v1332.buf : tensor<240xf32>) {
        ^bb0(%in_1333: f32, %in_1334: f32, %acc_1335: f32):
          %v1336 = arith.constant 1.0 : f32
          %v1337 = arith.constant 9.999999747378752e-06 : f32
          %v1338 = arith.addf %v1337, %in_1333 : f32
          %v1339 = math.sqrt %v1338 : f32
          %v1340 = arith.divf %v1336, %v1339 : f32
          %v1341 = arith.mulf %v1340, %in_1334 : f32
          linalg.yield %v1341 : f32
      }
    -> tensor<240xf32>
    %v1342.buf = tensor.empty() : tensor<240xf32>
    %v1342.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_bn2_buffers_running_mean_, %l_self_modules_stage4_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_bn2_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v1342.buf : tensor<240xf32>) {
        ^bb0(%in_1343: f32, %in_1344: f32, %in_1345: f32, %acc_1346: f32):
          %v1347 = arith.constant 1.0 : f32
          %v1348 = arith.constant 9.999999747378752e-06 : f32
          %v1349 = arith.addf %v1348, %in_1344 : f32
          %v1350 = math.sqrt %v1349 : f32
          %v1351 = arith.divf %v1347, %v1350 : f32
          %v1352 = arith.mulf %v1351, %in_1345 : f32
          %v1353 = arith.mulf %v1352, %in_1343 : f32
          linalg.yield %v1353 : f32
      }
    -> tensor<240xf32>
    %out_41.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_41.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_41.buf.out, %v1332.buf.out, %v1342.buf.out, %l_self_modules_stage4_modules_0_modules_bn2_parameters_bias_ : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%out_41.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_1357: f32, %in_1354: f32, %in_1355: f32, %in_1356: f32, %post_1358: f32):
          %v1359 = arith.mulf %acc_1357, %in_1354 : f32
          %v1360 = arith.subf %v1359, %in_1355 : f32
          %v1361 = arith.addf %v1360, %in_1356 : f32
          linalg.yield %v1361 : f32
      }
    -> tensor<10x240x56x56xf32>
    %transpose_10.buf = tensor.empty() : tensor<10x80x3x56x56xf32>
    %transpose_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 80, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_41.post.out : tensor<10x240x56x56xf32>)
      outs(%transpose_10.buf : tensor<10x80x3x56x56xf32>) {
        ^bb0(%in_1362: f32, %acc_1363: f32):
          linalg.yield %in_1362 : f32
      }
    -> tensor<10x80x3x56x56xf32>
    %l_self_modules_stage4_modules_0_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_0_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [960, 80, 1, 1] : tensor<960x80xf32> into tensor<960x80x1x1xf32>
    %out_43.empty = tensor.empty() : tensor<10x960x56x56xf32>
    %out_43.buf = linalg.fill ins(%init : f32) outs(%out_43.empty : tensor<10x960x56x56xf32>) -> tensor<10x960x56x56xf32>
    %out_43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 320 * 80 + d4) floordiv 3, (d1 floordiv 320 * 80 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_10.buf.out, %l_self_modules_stage4_modules_0_modules_conv3_parameters_weight_.expanded : tensor<10x80x3x56x56xf32>, tensor<960x80x1x1xf32>)
      outs(%out_43.buf : tensor<10x960x56x56xf32>) {
        ^bb0(%in_1364: f32, %in_1365: f32, %acc_1366: f32):
          %v1367 = arith.mulf %in_1364, %in_1365 : f32
          %v1368 = arith.addf %v1367, %acc_1366 : f32
          linalg.yield %v1368 : f32
      }
    -> tensor<10x960x56x56xf32>
    %v1369.buf = tensor.empty() : tensor<960xf32>
    %v1369.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_bn3_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_bn3_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1369.buf : tensor<960xf32>) {
        ^bb0(%in_1370: f32, %in_1371: f32, %acc_1372: f32):
          %v1373 = arith.constant 1.0 : f32
          %v1374 = arith.constant 9.999999747378752e-06 : f32
          %v1375 = arith.addf %v1374, %in_1370 : f32
          %v1376 = math.sqrt %v1375 : f32
          %v1377 = arith.divf %v1373, %v1376 : f32
          %v1378 = arith.mulf %v1377, %in_1371 : f32
          linalg.yield %v1378 : f32
      }
    -> tensor<960xf32>
    %v1379.buf = tensor.empty() : tensor<960xf32>
    %v1379.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_bn3_buffers_running_mean_, %l_self_modules_stage4_modules_0_modules_bn3_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_bn3_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1379.buf : tensor<960xf32>) {
        ^bb0(%in_1380: f32, %in_1381: f32, %in_1382: f32, %acc_1383: f32):
          %v1384 = arith.constant 1.0 : f32
          %v1385 = arith.constant 9.999999747378752e-06 : f32
          %v1386 = arith.addf %v1385, %in_1381 : f32
          %v1387 = math.sqrt %v1386 : f32
          %v1388 = arith.divf %v1384, %v1387 : f32
          %v1389 = arith.mulf %v1388, %in_1382 : f32
          %v1390 = arith.mulf %v1389, %in_1380 : f32
          linalg.yield %v1390 : f32
      }
    -> tensor<960xf32>
    %l_self_modules_stage4_modules_0_modules_shortcut_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_0_modules_shortcut_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [960, 480, 1, 1] : tensor<960x480xf32> into tensor<960x480x1x1xf32>
    %v1391.empty = tensor.empty() : tensor<10x960x56x1x56xf32>
    %v1391.buf = linalg.fill ins(%init : f32) outs(%v1391.empty : tensor<10x960x56x1x56xf32>) -> tensor<10x960x56x1x56xf32>
    %v1391.shape = tensor.empty() : tensor<56x1xf32>
    %v1391.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_39.post.out, %l_self_modules_stage4_modules_0_modules_shortcut_modules_0_parameters_weight_.expanded, %v1391.shape : tensor<10x480x56x56xf32>, tensor<960x480x1x1xf32>, tensor<56x1xf32>)
      outs(%v1391.buf : tensor<10x960x56x1x56xf32>) {
        ^bb0(%in_1393: f32, %in_1394: f32, %shape_1392: f32, %acc_1395: f32):
          %v1396 = arith.mulf %in_1393, %in_1394 : f32
          %v1397 = arith.addf %v1396, %acc_1395 : f32
          linalg.yield %v1397 : f32
      }
    -> tensor<10x960x56x1x56xf32>
    %v1398.buf = tensor.empty() : tensor<960xf32>
    %v1398.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1398.buf : tensor<960xf32>) {
        ^bb0(%in_1399: f32, %in_1400: f32, %acc_1401: f32):
          %v1402 = arith.constant 1.0 : f32
          %v1403 = arith.constant 9.999999747378752e-06 : f32
          %v1404 = arith.addf %v1403, %in_1399 : f32
          %v1405 = math.sqrt %v1404 : f32
          %v1406 = arith.divf %v1402, %v1405 : f32
          %v1407 = arith.mulf %v1406, %in_1400 : f32
          linalg.yield %v1407 : f32
      }
    -> tensor<960xf32>
    %v1408.buf = tensor.empty() : tensor<960xf32>
    %v1408.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_0_modules_shortcut_modules_1_buffers_running_mean_, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1408.buf : tensor<960xf32>) {
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
    -> tensor<960xf32>
    %v1391.post = tensor.empty() : tensor<10x960x56x1x56xf32>
    %v1391.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1391.buf.out, %v1398.buf.out, %v1408.buf.out, %l_self_modules_stage4_modules_0_modules_shortcut_modules_1_parameters_bias_ : tensor<10x960x56x1x56xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1391.post : tensor<10x960x56x1x56xf32>) {
        ^bb0(%acc_1423: f32, %in_1420: f32, %in_1421: f32, %in_1422: f32, %post_1424: f32):
          %v1425 = arith.mulf %acc_1423, %in_1420 : f32
          %v1426 = arith.subf %v1425, %in_1421 : f32
          %v1427 = arith.addf %v1426, %in_1422 : f32
          linalg.yield %v1427 : f32
      }
    -> tensor<10x960x56x1x56xf32>
    %out_43.post = tensor.empty() : tensor<10x960x56x56xf32>
    %out_43.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_43.buf.out, %v1369.buf.out, %v1379.buf.out, %l_self_modules_stage4_modules_0_modules_bn3_parameters_bias_, %v1391.post.out : tensor<10x960x56x56xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<10x960x56x1x56xf32>)
      outs(%out_43.post : tensor<10x960x56x56xf32>) {
        ^bb0(%acc_1432: f32, %in_1428: f32, %in_1429: f32, %in_1430: f32, %in_1431: f32, %post_1433: f32):
          %v1434 = arith.mulf %acc_1432, %in_1428 : f32
          %v1435 = arith.subf %v1434, %in_1429 : f32
          %v1436 = arith.addf %v1435, %in_1430 : f32
          %v1437 = arith.maxnumf %init, %v1436 : f32
          %v1438 = arith.addf %v1437, %in_1431 : f32
          linalg.yield %v1438 : f32
      }
    -> tensor<10x960x56x56xf32>
    %l_self_modules_stage4_modules_1_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_1_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 320, 1, 1] : tensor<240x320xf32> into tensor<240x320x1x1xf32>
    %out_44.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_44.buf = linalg.fill ins(%init : f32) outs(%out_44.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 80 * 320 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_43.post.out, %l_self_modules_stage4_modules_1_modules_conv1_parameters_weight_.expanded : tensor<10x960x56x56xf32>, tensor<240x320x1x1xf32>)
      outs(%out_44.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_1439: f32, %in_1440: f32, %acc_1441: f32):
          %v1442 = arith.mulf %in_1439, %in_1440 : f32
          %v1443 = arith.addf %v1442, %acc_1441 : f32
          linalg.yield %v1443 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1444.buf = tensor.empty() : tensor<240xf32>
    %v1444.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_stage4_modules_1_modules_bn1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v1444.buf : tensor<240xf32>) {
        ^bb0(%in_1445: f32, %in_1446: f32, %acc_1447: f32):
          %v1448 = arith.constant 1.0 : f32
          %v1449 = arith.constant 9.999999747378752e-06 : f32
          %v1450 = arith.addf %v1449, %in_1445 : f32
          %v1451 = math.sqrt %v1450 : f32
          %v1452 = arith.divf %v1448, %v1451 : f32
          %v1453 = arith.mulf %v1452, %in_1446 : f32
          linalg.yield %v1453 : f32
      }
    -> tensor<240xf32>
    %v1454.buf = tensor.empty() : tensor<240xf32>
    %v1454.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_1_modules_bn1_buffers_running_mean_, %l_self_modules_stage4_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_stage4_modules_1_modules_bn1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v1454.buf : tensor<240xf32>) {
        ^bb0(%in_1455: f32, %in_1456: f32, %in_1457: f32, %acc_1458: f32):
          %v1459 = arith.constant 1.0 : f32
          %v1460 = arith.constant 9.999999747378752e-06 : f32
          %v1461 = arith.addf %v1460, %in_1456 : f32
          %v1462 = math.sqrt %v1461 : f32
          %v1463 = arith.divf %v1459, %v1462 : f32
          %v1464 = arith.mulf %v1463, %in_1457 : f32
          %v1465 = arith.mulf %v1464, %in_1455 : f32
          linalg.yield %v1465 : f32
      }
    -> tensor<240xf32>
    %out_44.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_44.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_44.buf.out, %v1444.buf.out, %v1454.buf.out, %l_self_modules_stage4_modules_1_modules_bn1_parameters_bias_ : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%out_44.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_1469: f32, %in_1466: f32, %in_1467: f32, %in_1468: f32, %post_1470: f32):
          %v1471 = arith.mulf %acc_1469, %in_1466 : f32
          %v1472 = arith.subf %v1471, %in_1467 : f32
          %v1473 = arith.addf %v1472, %in_1468 : f32
          %v1474 = arith.maxnumf %init, %v1473 : f32
          linalg.yield %v1474 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1479 = tensor.pad %out_44.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1475: index, %pad_i1476: index, %pad_i1477: index, %pad_i1478: index):
        tensor.yield %init : f32
    } : tensor<10x240x56x56xf32> to tensor<10x240x58x58xf32>
    %l_self_modules_stage4_modules_1_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_1_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [240, 1, 3, 3] : tensor<240x3x3xf32> into tensor<240x1x3x3xf32>
    %out_45.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_45.buf = linalg.fill ins(%init : f32) outs(%out_45.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1479, %l_self_modules_stage4_modules_1_modules_conv2_parameters_weight_.expanded : tensor<10x240x58x58xf32>, tensor<240x1x3x3xf32>)
      outs(%out_45.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_1480: f32, %in_1481: f32, %acc_1482: f32):
          %v1483 = arith.mulf %in_1480, %in_1481 : f32
          %v1484 = arith.addf %v1483, %acc_1482 : f32
          linalg.yield %v1484 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1485.buf = tensor.empty() : tensor<240xf32>
    %v1485.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_stage4_modules_1_modules_bn2_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v1485.buf : tensor<240xf32>) {
        ^bb0(%in_1486: f32, %in_1487: f32, %acc_1488: f32):
          %v1489 = arith.constant 1.0 : f32
          %v1490 = arith.constant 9.999999747378752e-06 : f32
          %v1491 = arith.addf %v1490, %in_1486 : f32
          %v1492 = math.sqrt %v1491 : f32
          %v1493 = arith.divf %v1489, %v1492 : f32
          %v1494 = arith.mulf %v1493, %in_1487 : f32
          linalg.yield %v1494 : f32
      }
    -> tensor<240xf32>
    %v1495.buf = tensor.empty() : tensor<240xf32>
    %v1495.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_1_modules_bn2_buffers_running_mean_, %l_self_modules_stage4_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_stage4_modules_1_modules_bn2_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v1495.buf : tensor<240xf32>) {
        ^bb0(%in_1496: f32, %in_1497: f32, %in_1498: f32, %acc_1499: f32):
          %v1500 = arith.constant 1.0 : f32
          %v1501 = arith.constant 9.999999747378752e-06 : f32
          %v1502 = arith.addf %v1501, %in_1497 : f32
          %v1503 = math.sqrt %v1502 : f32
          %v1504 = arith.divf %v1500, %v1503 : f32
          %v1505 = arith.mulf %v1504, %in_1498 : f32
          %v1506 = arith.mulf %v1505, %in_1496 : f32
          linalg.yield %v1506 : f32
      }
    -> tensor<240xf32>
    %out_45.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_45.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_45.buf.out, %v1485.buf.out, %v1495.buf.out, %l_self_modules_stage4_modules_1_modules_bn2_parameters_bias_ : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%out_45.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_1510: f32, %in_1507: f32, %in_1508: f32, %in_1509: f32, %post_1511: f32):
          %v1512 = arith.mulf %acc_1510, %in_1507 : f32
          %v1513 = arith.subf %v1512, %in_1508 : f32
          %v1514 = arith.addf %v1513, %in_1509 : f32
          linalg.yield %v1514 : f32
      }
    -> tensor<10x240x56x56xf32>
    %transpose_11.buf = tensor.empty() : tensor<10x80x3x56x56xf32>
    %transpose_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 80, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_45.post.out : tensor<10x240x56x56xf32>)
      outs(%transpose_11.buf : tensor<10x80x3x56x56xf32>) {
        ^bb0(%in_1515: f32, %acc_1516: f32):
          linalg.yield %in_1515 : f32
      }
    -> tensor<10x80x3x56x56xf32>
    %l_self_modules_stage4_modules_1_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_1_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [960, 80, 1, 1] : tensor<960x80xf32> into tensor<960x80x1x1xf32>
    %out_47.empty = tensor.empty() : tensor<10x960x56x56xf32>
    %out_47.buf = linalg.fill ins(%init : f32) outs(%out_47.empty : tensor<10x960x56x56xf32>) -> tensor<10x960x56x56xf32>
    %out_47.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 320 * 80 + d4) floordiv 3, (d1 floordiv 320 * 80 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_11.buf.out, %l_self_modules_stage4_modules_1_modules_conv3_parameters_weight_.expanded : tensor<10x80x3x56x56xf32>, tensor<960x80x1x1xf32>)
      outs(%out_47.buf : tensor<10x960x56x56xf32>) {
        ^bb0(%in_1517: f32, %in_1518: f32, %acc_1519: f32):
          %v1520 = arith.mulf %in_1517, %in_1518 : f32
          %v1521 = arith.addf %v1520, %acc_1519 : f32
          linalg.yield %v1521 : f32
      }
    -> tensor<10x960x56x56xf32>
    %v1522.buf = tensor.empty() : tensor<960xf32>
    %v1522.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_1_modules_bn3_buffers_running_var_, %l_self_modules_stage4_modules_1_modules_bn3_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1522.buf : tensor<960xf32>) {
        ^bb0(%in_1523: f32, %in_1524: f32, %acc_1525: f32):
          %v1526 = arith.constant 1.0 : f32
          %v1527 = arith.constant 9.999999747378752e-06 : f32
          %v1528 = arith.addf %v1527, %in_1523 : f32
          %v1529 = math.sqrt %v1528 : f32
          %v1530 = arith.divf %v1526, %v1529 : f32
          %v1531 = arith.mulf %v1530, %in_1524 : f32
          linalg.yield %v1531 : f32
      }
    -> tensor<960xf32>
    %v1532.buf = tensor.empty() : tensor<960xf32>
    %v1532.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_1_modules_bn3_buffers_running_mean_, %l_self_modules_stage4_modules_1_modules_bn3_buffers_running_var_, %l_self_modules_stage4_modules_1_modules_bn3_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1532.buf : tensor<960xf32>) {
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
    -> tensor<960xf32>
    %out_47.post = tensor.empty() : tensor<10x960x56x56xf32>
    %out_47.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_47.buf.out, %v1522.buf.out, %v1532.buf.out, %l_self_modules_stage4_modules_1_modules_bn3_parameters_bias_, %out_43.post.out : tensor<10x960x56x56xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<10x960x56x56xf32>)
      outs(%out_47.post : tensor<10x960x56x56xf32>) {
        ^bb0(%acc_1548: f32, %in_1544: f32, %in_1545: f32, %in_1546: f32, %in_1547: f32, %post_1549: f32):
          %v1550 = arith.mulf %acc_1548, %in_1544 : f32
          %v1551 = arith.subf %v1550, %in_1545 : f32
          %v1552 = arith.addf %v1551, %in_1546 : f32
          %v1553 = arith.maxnumf %init, %v1552 : f32
          %v1554 = arith.addf %v1553, %in_1547 : f32
          linalg.yield %v1554 : f32
      }
    -> tensor<10x960x56x56xf32>
    %l_self_modules_stage4_modules_2_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_2_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 320, 1, 1] : tensor<240x320xf32> into tensor<240x320x1x1xf32>
    %out_48.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_48.buf = linalg.fill ins(%init : f32) outs(%out_48.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 80 * 320 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_47.post.out, %l_self_modules_stage4_modules_2_modules_conv1_parameters_weight_.expanded : tensor<10x960x56x56xf32>, tensor<240x320x1x1xf32>)
      outs(%out_48.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_1555: f32, %in_1556: f32, %acc_1557: f32):
          %v1558 = arith.mulf %in_1555, %in_1556 : f32
          %v1559 = arith.addf %v1558, %acc_1557 : f32
          linalg.yield %v1559 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1560.buf = tensor.empty() : tensor<240xf32>
    %v1560.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_2_modules_bn1_buffers_running_var_, %l_self_modules_stage4_modules_2_modules_bn1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v1560.buf : tensor<240xf32>) {
        ^bb0(%in_1561: f32, %in_1562: f32, %acc_1563: f32):
          %v1564 = arith.constant 1.0 : f32
          %v1565 = arith.constant 9.999999747378752e-06 : f32
          %v1566 = arith.addf %v1565, %in_1561 : f32
          %v1567 = math.sqrt %v1566 : f32
          %v1568 = arith.divf %v1564, %v1567 : f32
          %v1569 = arith.mulf %v1568, %in_1562 : f32
          linalg.yield %v1569 : f32
      }
    -> tensor<240xf32>
    %v1570.buf = tensor.empty() : tensor<240xf32>
    %v1570.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_2_modules_bn1_buffers_running_mean_, %l_self_modules_stage4_modules_2_modules_bn1_buffers_running_var_, %l_self_modules_stage4_modules_2_modules_bn1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v1570.buf : tensor<240xf32>) {
        ^bb0(%in_1571: f32, %in_1572: f32, %in_1573: f32, %acc_1574: f32):
          %v1575 = arith.constant 1.0 : f32
          %v1576 = arith.constant 9.999999747378752e-06 : f32
          %v1577 = arith.addf %v1576, %in_1572 : f32
          %v1578 = math.sqrt %v1577 : f32
          %v1579 = arith.divf %v1575, %v1578 : f32
          %v1580 = arith.mulf %v1579, %in_1573 : f32
          %v1581 = arith.mulf %v1580, %in_1571 : f32
          linalg.yield %v1581 : f32
      }
    -> tensor<240xf32>
    %out_48.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_48.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_48.buf.out, %v1560.buf.out, %v1570.buf.out, %l_self_modules_stage4_modules_2_modules_bn1_parameters_bias_ : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%out_48.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_1585: f32, %in_1582: f32, %in_1583: f32, %in_1584: f32, %post_1586: f32):
          %v1587 = arith.mulf %acc_1585, %in_1582 : f32
          %v1588 = arith.subf %v1587, %in_1583 : f32
          %v1589 = arith.addf %v1588, %in_1584 : f32
          %v1590 = arith.maxnumf %init, %v1589 : f32
          linalg.yield %v1590 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1595 = tensor.pad %out_48.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1591: index, %pad_i1592: index, %pad_i1593: index, %pad_i1594: index):
        tensor.yield %init : f32
    } : tensor<10x240x56x56xf32> to tensor<10x240x58x58xf32>
    %l_self_modules_stage4_modules_2_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_2_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [240, 1, 3, 3] : tensor<240x3x3xf32> into tensor<240x1x3x3xf32>
    %out_49.empty = tensor.empty() : tensor<10x240x56x56xf32>
    %out_49.buf = linalg.fill ins(%init : f32) outs(%out_49.empty : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %out_49.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1595, %l_self_modules_stage4_modules_2_modules_conv2_parameters_weight_.expanded : tensor<10x240x58x58xf32>, tensor<240x1x3x3xf32>)
      outs(%out_49.buf : tensor<10x240x56x56xf32>) {
        ^bb0(%in_1596: f32, %in_1597: f32, %acc_1598: f32):
          %v1599 = arith.mulf %in_1596, %in_1597 : f32
          %v1600 = arith.addf %v1599, %acc_1598 : f32
          linalg.yield %v1600 : f32
      }
    -> tensor<10x240x56x56xf32>
    %v1601.buf = tensor.empty() : tensor<240xf32>
    %v1601.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_2_modules_bn2_buffers_running_var_, %l_self_modules_stage4_modules_2_modules_bn2_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v1601.buf : tensor<240xf32>) {
        ^bb0(%in_1602: f32, %in_1603: f32, %acc_1604: f32):
          %v1605 = arith.constant 1.0 : f32
          %v1606 = arith.constant 9.999999747378752e-06 : f32
          %v1607 = arith.addf %v1606, %in_1602 : f32
          %v1608 = math.sqrt %v1607 : f32
          %v1609 = arith.divf %v1605, %v1608 : f32
          %v1610 = arith.mulf %v1609, %in_1603 : f32
          linalg.yield %v1610 : f32
      }
    -> tensor<240xf32>
    %v1611.buf = tensor.empty() : tensor<240xf32>
    %v1611.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_2_modules_bn2_buffers_running_mean_, %l_self_modules_stage4_modules_2_modules_bn2_buffers_running_var_, %l_self_modules_stage4_modules_2_modules_bn2_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v1611.buf : tensor<240xf32>) {
        ^bb0(%in_1612: f32, %in_1613: f32, %in_1614: f32, %acc_1615: f32):
          %v1616 = arith.constant 1.0 : f32
          %v1617 = arith.constant 9.999999747378752e-06 : f32
          %v1618 = arith.addf %v1617, %in_1613 : f32
          %v1619 = math.sqrt %v1618 : f32
          %v1620 = arith.divf %v1616, %v1619 : f32
          %v1621 = arith.mulf %v1620, %in_1614 : f32
          %v1622 = arith.mulf %v1621, %in_1612 : f32
          linalg.yield %v1622 : f32
      }
    -> tensor<240xf32>
    %out_49.post = tensor.empty() : tensor<10x240x56x56xf32>
    %out_49.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_49.buf.out, %v1601.buf.out, %v1611.buf.out, %l_self_modules_stage4_modules_2_modules_bn2_parameters_bias_ : tensor<10x240x56x56xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%out_49.post : tensor<10x240x56x56xf32>) {
        ^bb0(%acc_1626: f32, %in_1623: f32, %in_1624: f32, %in_1625: f32, %post_1627: f32):
          %v1628 = arith.mulf %acc_1626, %in_1623 : f32
          %v1629 = arith.subf %v1628, %in_1624 : f32
          %v1630 = arith.addf %v1629, %in_1625 : f32
          linalg.yield %v1630 : f32
      }
    -> tensor<10x240x56x56xf32>
    %transpose_12.buf = tensor.empty() : tensor<10x80x3x56x56xf32>
    %transpose_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 80, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_49.post.out : tensor<10x240x56x56xf32>)
      outs(%transpose_12.buf : tensor<10x80x3x56x56xf32>) {
        ^bb0(%in_1631: f32, %acc_1632: f32):
          linalg.yield %in_1631 : f32
      }
    -> tensor<10x80x3x56x56xf32>
    %l_self_modules_stage4_modules_2_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_stage4_modules_2_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [960, 80, 1, 1] : tensor<960x80xf32> into tensor<960x80x1x1xf32>
    %out_51.empty = tensor.empty() : tensor<10x960x56x56xf32>
    %out_51.buf = linalg.fill ins(%init : f32) outs(%out_51.empty : tensor<10x960x56x56xf32>) -> tensor<10x960x56x56xf32>
    %out_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 320 * 80 + d4) floordiv 3, (d1 floordiv 320 * 80 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose_12.buf.out, %l_self_modules_stage4_modules_2_modules_conv3_parameters_weight_.expanded : tensor<10x80x3x56x56xf32>, tensor<960x80x1x1xf32>)
      outs(%out_51.buf : tensor<10x960x56x56xf32>) {
        ^bb0(%in_1633: f32, %in_1634: f32, %acc_1635: f32):
          %v1636 = arith.mulf %in_1633, %in_1634 : f32
          %v1637 = arith.addf %v1636, %acc_1635 : f32
          linalg.yield %v1637 : f32
      }
    -> tensor<10x960x56x56xf32>
    %v1638.buf = tensor.empty() : tensor<960xf32>
    %v1638.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_2_modules_bn3_buffers_running_var_, %l_self_modules_stage4_modules_2_modules_bn3_parameters_weight_ : tensor<960xf32>, tensor<960xf32>)
      outs(%v1638.buf : tensor<960xf32>) {
        ^bb0(%in_1639: f32, %in_1640: f32, %acc_1641: f32):
          %v1642 = arith.constant 1.0 : f32
          %v1643 = arith.constant 9.999999747378752e-06 : f32
          %v1644 = arith.addf %v1643, %in_1639 : f32
          %v1645 = math.sqrt %v1644 : f32
          %v1646 = arith.divf %v1642, %v1645 : f32
          %v1647 = arith.mulf %v1646, %in_1640 : f32
          linalg.yield %v1647 : f32
      }
    -> tensor<960xf32>
    %v1648.buf = tensor.empty() : tensor<960xf32>
    %v1648.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_stage4_modules_2_modules_bn3_buffers_running_mean_, %l_self_modules_stage4_modules_2_modules_bn3_buffers_running_var_, %l_self_modules_stage4_modules_2_modules_bn3_parameters_weight_ : tensor<960xf32>, tensor<960xf32>, tensor<960xf32>)
      outs(%v1648.buf : tensor<960xf32>) {
        ^bb0(%in_1649: f32, %in_1650: f32, %in_1651: f32, %acc_1652: f32):
          %v1653 = arith.constant 1.0 : f32
          %v1654 = arith.constant 9.999999747378752e-06 : f32
          %v1655 = arith.addf %v1654, %in_1650 : f32
          %v1656 = math.sqrt %v1655 : f32
          %v1657 = arith.divf %v1653, %v1656 : f32
          %v1658 = arith.mulf %v1657, %in_1651 : f32
          %v1659 = arith.mulf %v1658, %in_1649 : f32
          linalg.yield %v1659 : f32
      }
    -> tensor<960xf32>
    %out_51.post = tensor.empty() : tensor<10x960x56x56xf32>
    %out_51.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_51.buf.out, %v1638.buf.out, %v1648.buf.out, %l_self_modules_stage4_modules_2_modules_bn3_parameters_bias_, %out_47.post.out : tensor<10x960x56x56xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<10x960x56x56xf32>)
      outs(%out_51.post : tensor<10x960x56x56xf32>) {
        ^bb0(%acc_1664: f32, %in_1660: f32, %in_1661: f32, %in_1662: f32, %in_1663: f32, %post_1665: f32):
          %v1666 = arith.mulf %acc_1664, %in_1660 : f32
          %v1667 = arith.subf %v1666, %in_1661 : f32
          %v1668 = arith.addf %v1667, %in_1662 : f32
          %v1669 = arith.maxnumf %init, %v1668 : f32
          %v1670 = arith.addf %v1669, %in_1663 : f32
          linalg.yield %v1670 : f32
      }
    -> tensor<10x960x56x56xf32>
    %l_self_modules_conv5_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv5_parameters_weight_ [[0], [1, 2, 3]] output_shape [1024, 960, 1, 1] : tensor<1024x960xf32> into tensor<1024x960x1x1xf32>
    %v1671.empty = tensor.empty() : tensor<10x1024x56x1x56xf32>
    %v1671.buf = linalg.fill ins(%init : f32) outs(%v1671.empty : tensor<10x1024x56x1x56xf32>) -> tensor<10x1024x56x1x56xf32>
    %v1671.shape = tensor.empty() : tensor<56x1xf32>
    %v1671.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%out_51.post.out, %l_self_modules_conv5_parameters_weight_.expanded, %v1671.shape : tensor<10x960x56x56xf32>, tensor<1024x960x1x1xf32>, tensor<56x1xf32>)
      outs(%v1671.buf : tensor<10x1024x56x1x56xf32>) {
        ^bb0(%in_1673: f32, %in_1674: f32, %shape_1672: f32, %acc_1675: f32):
          %v1676 = arith.mulf %in_1673, %in_1674 : f32
          %v1677 = arith.addf %v1676, %acc_1675 : f32
          linalg.yield %v1677 : f32
      }
    -> tensor<10x1024x56x1x56xf32>
    %v1678.buf = tensor.empty() : tensor<1024xf32>
    %v1678.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn5_buffers_running_var_, %l_self_modules_bn5_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1678.buf : tensor<1024xf32>) {
        ^bb0(%in_1679: f32, %in_1680: f32, %acc_1681: f32):
          %v1682 = arith.constant 1.0 : f32
          %v1683 = arith.constant 9.999999747378752e-06 : f32
          %v1684 = arith.addf %v1683, %in_1679 : f32
          %v1685 = math.sqrt %v1684 : f32
          %v1686 = arith.divf %v1682, %v1685 : f32
          %v1687 = arith.mulf %v1686, %in_1680 : f32
          linalg.yield %v1687 : f32
      }
    -> tensor<1024xf32>
    %v1688.buf = tensor.empty() : tensor<1024xf32>
    %v1688.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn5_buffers_running_mean_, %l_self_modules_bn5_buffers_running_var_, %l_self_modules_bn5_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1688.buf : tensor<1024xf32>) {
        ^bb0(%in_1689: f32, %in_1690: f32, %in_1691: f32, %acc_1692: f32):
          %v1693 = arith.constant 1.0 : f32
          %v1694 = arith.constant 9.999999747378752e-06 : f32
          %v1695 = arith.addf %v1694, %in_1690 : f32
          %v1696 = math.sqrt %v1695 : f32
          %v1697 = arith.divf %v1693, %v1696 : f32
          %v1698 = arith.mulf %v1697, %in_1691 : f32
          %v1699 = arith.mulf %v1698, %in_1689 : f32
          linalg.yield %v1699 : f32
      }
    -> tensor<1024xf32>
    %v1671.post = tensor.empty() : tensor<10x1024x56x1x56xf32>
    %v1671.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1671.buf.out, %v1678.buf.out, %v1688.buf.out, %l_self_modules_bn5_parameters_bias_ : tensor<10x1024x56x1x56xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1671.post : tensor<10x1024x56x1x56xf32>) {
        ^bb0(%acc_1703: f32, %in_1700: f32, %in_1701: f32, %in_1702: f32, %post_1704: f32):
          %v1705 = arith.mulf %acc_1703, %in_1700 : f32
          %v1706 = arith.subf %v1705, %in_1701 : f32
          %v1707 = arith.addf %v1706, %in_1702 : f32
          %v1708 = arith.maxnumf %init, %v1707 : f32
          linalg.yield %v1708 : f32
      }
    -> tensor<10x1024x56x1x56xf32>
    %v1709.empty = tensor.empty() : tensor<10x1024xf32>
    %v1709.buf = linalg.fill ins(%init : f32) outs(%v1709.empty : tensor<10x1024xf32>) -> tensor<10x1024xf32>
    %v1709.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%v1671.post.out : tensor<10x1024x56x1x56xf32>)
      outs(%v1709.buf : tensor<10x1024xf32>) {
        ^bb0(%in_1710: f32, %acc_1711: f32):
          %v1712 = arith.addf %in_1710, %acc_1711 : f32
          linalg.yield %v1712 : f32
      }
    -> tensor<10x1024xf32>
    %v1709.post = tensor.empty() : tensor<10x1024xf32>
    %v1709.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v1709.buf.out : tensor<10x1024xf32>)
      outs(%v1709.post : tensor<10x1024xf32>) {
        ^bb0(%acc_1713: f32, %post_1714: f32):
          %v1715 = arith.constant 3136.0 : f32
          %v1716 = arith.divf %acc_1713, %v1715 : f32
          linalg.yield %v1716 : f32
      }
    -> tensor<10x1024xf32>
    %v1717.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v1717.buf = linalg.fill ins(%init : f32) outs(%v1717.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v1717.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v1709.post.out, %l_self_modules_fc_parameters_weight_ : tensor<10x1024xf32>, tensor<1000x1024xf32>)
      outs(%v1717.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_1718: f32, %in_1719: f32, %acc_1720: f32):
          %v1721 = arith.mulf %in_1718, %in_1719 : f32
          %v1722 = arith.addf %v1721, %acc_1720 : f32
          linalg.yield %v1722 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v1717.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v1717.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1717.buf.out, %l_self_modules_fc_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v1717.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_1724: f32, %in_1723: f32, %post_1725: f32):
          %v1726 = arith.addf %acc_1724, %in_1723 : f32
          linalg.yield %v1726 : f32
      }
    -> tensor<5x2x250x4xf32>
    %x_44.buf = tensor.empty() : tensor<10x1000xf32>
    %x_44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v1717.post.out : tensor<5x2x250x4xf32>)
      outs(%x_44.buf : tensor<10x1000xf32>) {
        ^bb0(%in_1727: f32, %acc_1728: f32):
          linalg.yield %in_1727 : f32
      }
    -> tensor<10x1000xf32>
    func.return %x_44.buf.out : tensor<10x1000xf32>
  }
}
