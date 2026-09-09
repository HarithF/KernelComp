module {
  func.func public @ResNet18(%l_self_modules_conv1_parameters_weight_: tensor<64x3x7x7xf32>, %l_x_: tensor<2x3x224x224xf32>, %l_self_modules_bn1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_bn1_buffers_running_var_: tensor<64xf32>, %l_self_modules_bn1_parameters_weight_: tensor<64xf32>, %l_self_modules_bn1_parameters_bias_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_conv1_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_layer1_modules_0_modules_bn1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_bn1_buffers_running_var_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_bn1_parameters_weight_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_bn1_parameters_bias_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_conv2_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_layer1_modules_0_modules_bn2_buffers_running_mean_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_bn2_buffers_running_var_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_bn2_parameters_weight_: tensor<64xf32>, %l_self_modules_layer1_modules_0_modules_bn2_parameters_bias_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_conv1_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_layer1_modules_1_modules_bn1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_bn1_buffers_running_var_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_bn1_parameters_weight_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_bn1_parameters_bias_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_conv2_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_layer1_modules_1_modules_bn2_buffers_running_mean_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_bn2_buffers_running_var_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_bn2_parameters_weight_: tensor<64xf32>, %l_self_modules_layer1_modules_1_modules_bn2_parameters_bias_: tensor<64xf32>, %l_self_modules_layer2_modules_0_modules_conv1_parameters_weight_: tensor<128x64x3x3xf32>, %l_self_modules_layer2_modules_0_modules_bn1_buffers_running_mean_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_bn1_buffers_running_var_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_bn1_parameters_weight_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_bn1_parameters_bias_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_conv2_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_layer2_modules_0_modules_bn2_buffers_running_mean_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_bn2_buffers_running_var_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_bn2_parameters_weight_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_bn2_parameters_bias_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_downsample_modules_0_parameters_weight_: tensor<128x64xf32>, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_buffers_running_mean_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_buffers_running_var_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_parameters_weight_: tensor<128xf32>, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_conv1_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_layer2_modules_1_modules_bn1_buffers_running_mean_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_bn1_buffers_running_var_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_bn1_parameters_weight_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_bn1_parameters_bias_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_conv2_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_layer2_modules_1_modules_bn2_buffers_running_mean_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_bn2_buffers_running_var_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_bn2_parameters_weight_: tensor<128xf32>, %l_self_modules_layer2_modules_1_modules_bn2_parameters_bias_: tensor<128xf32>, %l_self_modules_layer3_modules_0_modules_conv1_parameters_weight_: tensor<256x128x3x3xf32>, %l_self_modules_layer3_modules_0_modules_bn1_buffers_running_mean_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_bn1_buffers_running_var_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_bn1_parameters_weight_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_bn1_parameters_bias_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_conv2_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_layer3_modules_0_modules_bn2_buffers_running_mean_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_bn2_buffers_running_var_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_bn2_parameters_weight_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_bn2_parameters_bias_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_downsample_modules_0_parameters_weight_: tensor<256x128xf32>, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_buffers_running_mean_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_buffers_running_var_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_parameters_weight_: tensor<256xf32>, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_parameters_bias_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_conv1_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_layer3_modules_1_modules_bn1_buffers_running_mean_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_bn1_buffers_running_var_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_bn1_parameters_weight_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_bn1_parameters_bias_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_conv2_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_layer3_modules_1_modules_bn2_buffers_running_mean_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_bn2_buffers_running_var_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_bn2_parameters_weight_: tensor<256xf32>, %l_self_modules_layer3_modules_1_modules_bn2_parameters_bias_: tensor<256xf32>, %l_self_modules_layer4_modules_0_modules_conv1_parameters_weight_: tensor<512x256x3x3xf32>, %l_self_modules_layer4_modules_0_modules_bn1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_bn1_buffers_running_var_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_bn1_parameters_weight_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_bn1_parameters_bias_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_conv2_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_layer4_modules_0_modules_bn2_buffers_running_mean_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_bn2_buffers_running_var_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_bn2_parameters_weight_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_bn2_parameters_bias_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_downsample_modules_0_parameters_weight_: tensor<512x256xf32>, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_buffers_running_var_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_parameters_weight_: tensor<512xf32>, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_parameters_bias_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_conv1_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_layer4_modules_1_modules_bn1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_bn1_buffers_running_var_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_bn1_parameters_weight_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_bn1_parameters_bias_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_conv2_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_layer4_modules_1_modules_bn2_buffers_running_mean_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_bn2_buffers_running_var_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_bn2_parameters_weight_: tensor<512xf32>, %l_self_modules_layer4_modules_1_modules_bn2_parameters_bias_: tensor<512xf32>, %l_self_modules_fc_parameters_weight_: tensor<1000x512xf32>, %l_self_modules_fc_parameters_bias_: tensor<1000xf32>) -> tensor<2x1000xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 3, 3] high[0, 0, 3, 3] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<2x3x224x224xf32> to tensor<2x3x230x230xf32>
    %v4.empty = tensor.empty() : tensor<2x64x112x1x112xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<2x64x112x1x112xf32>) -> tensor<2x64x112x1x112xf32>
    %v4.shape = tensor.empty() : tensor<112x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_, %v4.shape : tensor<2x3x230x230xf32>, tensor<64x3x7x7xf32>, tensor<112x1xf32>)
      outs(%v4.buf : tensor<2x64x112x1x112xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<2x64x112x1x112xf32>
    %v11.buf = tensor.empty() : tensor<64xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
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
      ins(%l_self_modules_bn1_buffers_running_mean_, %l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
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
    %v4.post = tensor.empty() : tensor<2x64x112x1x112xf32>
    %v4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.buf.out, %v11.buf.out, %v21.buf.out, %l_self_modules_bn1_parameters_bias_ : tensor<2x64x112x1x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v4.post : tensor<2x64x112x1x112xf32>) {
        ^bb0(%acc_36: f32, %in_33: f32, %in_34: f32, %in_35: f32, %post_37: f32):
          %v38 = arith.mulf %acc_36, %in_33 : f32
          %v39 = arith.subf %v38, %in_34 : f32
          %v40 = arith.addf %v39, %in_35 : f32
          %v41 = arith.maxnumf %init, %v40 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<2x64x112x1x112xf32>
    %x_2.buf = tensor.empty() : tensor<2x64x112x112xf32>
    %x_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<2x64x112x1x112xf32>)
      outs(%x_2.buf : tensor<2x64x112x112xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          linalg.yield %in_42 : f32
      }
    -> tensor<2x64x112x112xf32>
    %init_1 = arith.constant 0xFF800000 : f32
    %padded_1 = tensor.pad %x_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i44: index, %pad_i45: index, %pad_i46: index, %pad_i47: index):
        tensor.yield %init_1 : f32
    } : tensor<2x64x112x112xf32> to tensor<2x64x114x114xf32>
    %x_3.empty = tensor.empty() : tensor<2x64x56x56xf32>
    %x_3.buf = linalg.fill ins(%init_1 : f32) outs(%x_3.empty : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %x_3.shape = tensor.empty() : tensor<3x3xf32>
    %x_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_1, %x_3.shape : tensor<2x64x114x114xf32>, tensor<3x3xf32>)
      outs(%x_3.buf : tensor<2x64x56x56xf32>) {
        ^bb0(%in_49: f32, %shape_48: f32, %acc_50: f32):
          %v51 = arith.maxnumf %acc_50, %in_49 : f32
          linalg.yield %v51 : f32
      }
    -> tensor<2x64x56x56xf32>
    %padded_2 = tensor.pad %x_3.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i52: index, %pad_i53: index, %pad_i54: index, %pad_i55: index):
        tensor.yield %init : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %v56.empty = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v56.buf = linalg.fill ins(%init : f32) outs(%v56.empty : tensor<2x64x56x1x56xf32>) -> tensor<2x64x56x1x56xf32>
    %v56.shape = tensor.empty() : tensor<56x1xf32>
    %v56.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_layer1_modules_0_modules_conv1_parameters_weight_, %v56.shape : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>, tensor<56x1xf32>)
      outs(%v56.buf : tensor<2x64x56x1x56xf32>) {
        ^bb0(%in_58: f32, %in_59: f32, %shape_57: f32, %acc_60: f32):
          %v61 = arith.mulf %in_58, %in_59 : f32
          %v62 = arith.addf %v61, %acc_60 : f32
          linalg.yield %v62 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %v63.buf = tensor.empty() : tensor<64xf32>
    %v63.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer1_modules_0_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v63.buf : tensor<64xf32>) {
        ^bb0(%in_64: f32, %in_65: f32, %acc_66: f32):
          %v67 = arith.constant 1.0 : f32
          %v68 = arith.constant 9.999999747378752e-06 : f32
          %v69 = arith.addf %v68, %in_64 : f32
          %v70 = math.sqrt %v69 : f32
          %v71 = arith.divf %v67, %v70 : f32
          %v72 = arith.mulf %v71, %in_65 : f32
          linalg.yield %v72 : f32
      }
    -> tensor<64xf32>
    %v73.buf = tensor.empty() : tensor<64xf32>
    %v73.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_0_modules_bn1_buffers_running_mean_, %l_self_modules_layer1_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer1_modules_0_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v73.buf : tensor<64xf32>) {
        ^bb0(%in_74: f32, %in_75: f32, %in_76: f32, %acc_77: f32):
          %v78 = arith.constant 1.0 : f32
          %v79 = arith.constant 9.999999747378752e-06 : f32
          %v80 = arith.addf %v79, %in_75 : f32
          %v81 = math.sqrt %v80 : f32
          %v82 = arith.divf %v78, %v81 : f32
          %v83 = arith.mulf %v82, %in_76 : f32
          %v84 = arith.mulf %v83, %in_74 : f32
          linalg.yield %v84 : f32
      }
    -> tensor<64xf32>
    %v56.post = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v56.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v56.buf.out, %v63.buf.out, %v73.buf.out, %l_self_modules_layer1_modules_0_modules_bn1_parameters_bias_ : tensor<2x64x56x1x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v56.post : tensor<2x64x56x1x56xf32>) {
        ^bb0(%acc_88: f32, %in_85: f32, %in_86: f32, %in_87: f32, %post_89: f32):
          %v90 = arith.mulf %acc_88, %in_85 : f32
          %v91 = arith.subf %v90, %in_86 : f32
          %v92 = arith.addf %v91, %in_87 : f32
          %v93 = arith.maxnumf %init, %v92 : f32
          linalg.yield %v93 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %out_2.buf = tensor.empty() : tensor<2x64x56x56xf32>
    %out_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v56.post.out : tensor<2x64x56x1x56xf32>)
      outs(%out_2.buf : tensor<2x64x56x56xf32>) {
        ^bb0(%in_94: f32, %acc_95: f32):
          linalg.yield %in_94 : f32
      }
    -> tensor<2x64x56x56xf32>
    %padded_3 = tensor.pad %out_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i96: index, %pad_i97: index, %pad_i98: index, %pad_i99: index):
        tensor.yield %init : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %v100.empty = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v100.buf = linalg.fill ins(%init : f32) outs(%v100.empty : tensor<2x64x56x1x56xf32>) -> tensor<2x64x56x1x56xf32>
    %v100.shape = tensor.empty() : tensor<56x1xf32>
    %v100.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_layer1_modules_0_modules_conv2_parameters_weight_, %v100.shape : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>, tensor<56x1xf32>)
      outs(%v100.buf : tensor<2x64x56x1x56xf32>) {
        ^bb0(%in_102: f32, %in_103: f32, %shape_101: f32, %acc_104: f32):
          %v105 = arith.mulf %in_102, %in_103 : f32
          %v106 = arith.addf %v105, %acc_104 : f32
          linalg.yield %v106 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %v107.buf = tensor.empty() : tensor<64xf32>
    %v107.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer1_modules_0_modules_bn2_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v107.buf : tensor<64xf32>) {
        ^bb0(%in_108: f32, %in_109: f32, %acc_110: f32):
          %v111 = arith.constant 1.0 : f32
          %v112 = arith.constant 9.999999747378752e-06 : f32
          %v113 = arith.addf %v112, %in_108 : f32
          %v114 = math.sqrt %v113 : f32
          %v115 = arith.divf %v111, %v114 : f32
          %v116 = arith.mulf %v115, %in_109 : f32
          linalg.yield %v116 : f32
      }
    -> tensor<64xf32>
    %v117.buf = tensor.empty() : tensor<64xf32>
    %v117.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_0_modules_bn2_buffers_running_mean_, %l_self_modules_layer1_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer1_modules_0_modules_bn2_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v117.buf : tensor<64xf32>) {
        ^bb0(%in_118: f32, %in_119: f32, %in_120: f32, %acc_121: f32):
          %v122 = arith.constant 1.0 : f32
          %v123 = arith.constant 9.999999747378752e-06 : f32
          %v124 = arith.addf %v123, %in_119 : f32
          %v125 = math.sqrt %v124 : f32
          %v126 = arith.divf %v122, %v125 : f32
          %v127 = arith.mulf %v126, %in_120 : f32
          %v128 = arith.mulf %v127, %in_118 : f32
          linalg.yield %v128 : f32
      }
    -> tensor<64xf32>
    %v100.post = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v100.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v100.buf.out, %v107.buf.out, %v117.buf.out, %l_self_modules_layer1_modules_0_modules_bn2_parameters_bias_, %x_3.buf.out : tensor<2x64x56x1x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<2x64x56x56xf32>)
      outs(%v100.post : tensor<2x64x56x1x56xf32>) {
        ^bb0(%acc_133: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %post_134: f32):
          %v135 = arith.mulf %acc_133, %in_129 : f32
          %v136 = arith.subf %v135, %in_130 : f32
          %v137 = arith.addf %v136, %in_131 : f32
          %v138 = arith.addf %v137, %in_132 : f32
          %v139 = arith.maxnumf %init, %v138 : f32
          linalg.yield %v139 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %out_6.buf = tensor.empty() : tensor<2x64x56x56xf32>
    %out_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v100.post.out : tensor<2x64x56x1x56xf32>)
      outs(%out_6.buf : tensor<2x64x56x56xf32>) {
        ^bb0(%in_140: f32, %acc_141: f32):
          linalg.yield %in_140 : f32
      }
    -> tensor<2x64x56x56xf32>
    %padded_4 = tensor.pad %out_6.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i142: index, %pad_i143: index, %pad_i144: index, %pad_i145: index):
        tensor.yield %init : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %v146.empty = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v146.buf = linalg.fill ins(%init : f32) outs(%v146.empty : tensor<2x64x56x1x56xf32>) -> tensor<2x64x56x1x56xf32>
    %v146.shape = tensor.empty() : tensor<56x1xf32>
    %v146.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_layer1_modules_1_modules_conv1_parameters_weight_, %v146.shape : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>, tensor<56x1xf32>)
      outs(%v146.buf : tensor<2x64x56x1x56xf32>) {
        ^bb0(%in_148: f32, %in_149: f32, %shape_147: f32, %acc_150: f32):
          %v151 = arith.mulf %in_148, %in_149 : f32
          %v152 = arith.addf %v151, %acc_150 : f32
          linalg.yield %v152 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %v153.buf = tensor.empty() : tensor<64xf32>
    %v153.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer1_modules_1_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v153.buf : tensor<64xf32>) {
        ^bb0(%in_154: f32, %in_155: f32, %acc_156: f32):
          %v157 = arith.constant 1.0 : f32
          %v158 = arith.constant 9.999999747378752e-06 : f32
          %v159 = arith.addf %v158, %in_154 : f32
          %v160 = math.sqrt %v159 : f32
          %v161 = arith.divf %v157, %v160 : f32
          %v162 = arith.mulf %v161, %in_155 : f32
          linalg.yield %v162 : f32
      }
    -> tensor<64xf32>
    %v163.buf = tensor.empty() : tensor<64xf32>
    %v163.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_1_modules_bn1_buffers_running_mean_, %l_self_modules_layer1_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer1_modules_1_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v163.buf : tensor<64xf32>) {
        ^bb0(%in_164: f32, %in_165: f32, %in_166: f32, %acc_167: f32):
          %v168 = arith.constant 1.0 : f32
          %v169 = arith.constant 9.999999747378752e-06 : f32
          %v170 = arith.addf %v169, %in_165 : f32
          %v171 = math.sqrt %v170 : f32
          %v172 = arith.divf %v168, %v171 : f32
          %v173 = arith.mulf %v172, %in_166 : f32
          %v174 = arith.mulf %v173, %in_164 : f32
          linalg.yield %v174 : f32
      }
    -> tensor<64xf32>
    %v146.post = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v146.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v146.buf.out, %v153.buf.out, %v163.buf.out, %l_self_modules_layer1_modules_1_modules_bn1_parameters_bias_ : tensor<2x64x56x1x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v146.post : tensor<2x64x56x1x56xf32>) {
        ^bb0(%acc_178: f32, %in_175: f32, %in_176: f32, %in_177: f32, %post_179: f32):
          %v180 = arith.mulf %acc_178, %in_175 : f32
          %v181 = arith.subf %v180, %in_176 : f32
          %v182 = arith.addf %v181, %in_177 : f32
          %v183 = arith.maxnumf %init, %v182 : f32
          linalg.yield %v183 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %out_9.buf = tensor.empty() : tensor<2x64x56x56xf32>
    %out_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v146.post.out : tensor<2x64x56x1x56xf32>)
      outs(%out_9.buf : tensor<2x64x56x56xf32>) {
        ^bb0(%in_184: f32, %acc_185: f32):
          linalg.yield %in_184 : f32
      }
    -> tensor<2x64x56x56xf32>
    %padded_5 = tensor.pad %out_9.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i186: index, %pad_i187: index, %pad_i188: index, %pad_i189: index):
        tensor.yield %init : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %v190.empty = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v190.buf = linalg.fill ins(%init : f32) outs(%v190.empty : tensor<2x64x56x1x56xf32>) -> tensor<2x64x56x1x56xf32>
    %v190.shape = tensor.empty() : tensor<56x1xf32>
    %v190.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_layer1_modules_1_modules_conv2_parameters_weight_, %v190.shape : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>, tensor<56x1xf32>)
      outs(%v190.buf : tensor<2x64x56x1x56xf32>) {
        ^bb0(%in_192: f32, %in_193: f32, %shape_191: f32, %acc_194: f32):
          %v195 = arith.mulf %in_192, %in_193 : f32
          %v196 = arith.addf %v195, %acc_194 : f32
          linalg.yield %v196 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %v197.buf = tensor.empty() : tensor<64xf32>
    %v197.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer1_modules_1_modules_bn2_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v197.buf : tensor<64xf32>) {
        ^bb0(%in_198: f32, %in_199: f32, %acc_200: f32):
          %v201 = arith.constant 1.0 : f32
          %v202 = arith.constant 9.999999747378752e-06 : f32
          %v203 = arith.addf %v202, %in_198 : f32
          %v204 = math.sqrt %v203 : f32
          %v205 = arith.divf %v201, %v204 : f32
          %v206 = arith.mulf %v205, %in_199 : f32
          linalg.yield %v206 : f32
      }
    -> tensor<64xf32>
    %v207.buf = tensor.empty() : tensor<64xf32>
    %v207.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer1_modules_1_modules_bn2_buffers_running_mean_, %l_self_modules_layer1_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer1_modules_1_modules_bn2_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v207.buf : tensor<64xf32>) {
        ^bb0(%in_208: f32, %in_209: f32, %in_210: f32, %acc_211: f32):
          %v212 = arith.constant 1.0 : f32
          %v213 = arith.constant 9.999999747378752e-06 : f32
          %v214 = arith.addf %v213, %in_209 : f32
          %v215 = math.sqrt %v214 : f32
          %v216 = arith.divf %v212, %v215 : f32
          %v217 = arith.mulf %v216, %in_210 : f32
          %v218 = arith.mulf %v217, %in_208 : f32
          linalg.yield %v218 : f32
      }
    -> tensor<64xf32>
    %v190.post = tensor.empty() : tensor<2x64x56x1x56xf32>
    %v190.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v190.buf.out, %v197.buf.out, %v207.buf.out, %l_self_modules_layer1_modules_1_modules_bn2_parameters_bias_, %v100.post.out : tensor<2x64x56x1x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<2x64x56x1x56xf32>)
      outs(%v190.post : tensor<2x64x56x1x56xf32>) {
        ^bb0(%acc_223: f32, %in_219: f32, %in_220: f32, %in_221: f32, %in_222: f32, %post_224: f32):
          %v225 = arith.mulf %acc_223, %in_219 : f32
          %v226 = arith.subf %v225, %in_220 : f32
          %v227 = arith.addf %v226, %in_221 : f32
          %v228 = arith.addf %v227, %in_222 : f32
          %v229 = arith.maxnumf %init, %v228 : f32
          linalg.yield %v229 : f32
      }
    -> tensor<2x64x56x1x56xf32>
    %out_13.buf = tensor.empty() : tensor<2x64x56x56xf32>
    %out_13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v190.post.out : tensor<2x64x56x1x56xf32>)
      outs(%out_13.buf : tensor<2x64x56x56xf32>) {
        ^bb0(%in_230: f32, %acc_231: f32):
          linalg.yield %in_230 : f32
      }
    -> tensor<2x64x56x56xf32>
    %padded_6 = tensor.pad %out_13.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i232: index, %pad_i233: index, %pad_i234: index, %pad_i235: index):
        tensor.yield %init : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %v236.empty = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v236.buf = linalg.fill ins(%init : f32) outs(%v236.empty : tensor<2x128x28x1x28xf32>) -> tensor<2x128x28x1x28xf32>
    %v236.shape = tensor.empty() : tensor<28x1xf32>
    %v236.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_6, %l_self_modules_layer2_modules_0_modules_conv1_parameters_weight_, %v236.shape : tensor<2x64x58x58xf32>, tensor<128x64x3x3xf32>, tensor<28x1xf32>)
      outs(%v236.buf : tensor<2x128x28x1x28xf32>) {
        ^bb0(%in_238: f32, %in_239: f32, %shape_237: f32, %acc_240: f32):
          %v241 = arith.mulf %in_238, %in_239 : f32
          %v242 = arith.addf %v241, %acc_240 : f32
          linalg.yield %v242 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %v243.buf = tensor.empty() : tensor<128xf32>
    %v243.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer2_modules_0_modules_bn1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v243.buf : tensor<128xf32>) {
        ^bb0(%in_244: f32, %in_245: f32, %acc_246: f32):
          %v247 = arith.constant 1.0 : f32
          %v248 = arith.constant 9.999999747378752e-06 : f32
          %v249 = arith.addf %v248, %in_244 : f32
          %v250 = math.sqrt %v249 : f32
          %v251 = arith.divf %v247, %v250 : f32
          %v252 = arith.mulf %v251, %in_245 : f32
          linalg.yield %v252 : f32
      }
    -> tensor<128xf32>
    %v253.buf = tensor.empty() : tensor<128xf32>
    %v253.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_0_modules_bn1_buffers_running_mean_, %l_self_modules_layer2_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer2_modules_0_modules_bn1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v253.buf : tensor<128xf32>) {
        ^bb0(%in_254: f32, %in_255: f32, %in_256: f32, %acc_257: f32):
          %v258 = arith.constant 1.0 : f32
          %v259 = arith.constant 9.999999747378752e-06 : f32
          %v260 = arith.addf %v259, %in_255 : f32
          %v261 = math.sqrt %v260 : f32
          %v262 = arith.divf %v258, %v261 : f32
          %v263 = arith.mulf %v262, %in_256 : f32
          %v264 = arith.mulf %v263, %in_254 : f32
          linalg.yield %v264 : f32
      }
    -> tensor<128xf32>
    %v236.post = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v236.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v236.buf.out, %v243.buf.out, %v253.buf.out, %l_self_modules_layer2_modules_0_modules_bn1_parameters_bias_ : tensor<2x128x28x1x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v236.post : tensor<2x128x28x1x28xf32>) {
        ^bb0(%acc_268: f32, %in_265: f32, %in_266: f32, %in_267: f32, %post_269: f32):
          %v270 = arith.mulf %acc_268, %in_265 : f32
          %v271 = arith.subf %v270, %in_266 : f32
          %v272 = arith.addf %v271, %in_267 : f32
          %v273 = arith.maxnumf %init, %v272 : f32
          linalg.yield %v273 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %out_16.buf = tensor.empty() : tensor<2x128x28x28xf32>
    %out_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v236.post.out : tensor<2x128x28x1x28xf32>)
      outs(%out_16.buf : tensor<2x128x28x28xf32>) {
        ^bb0(%in_274: f32, %acc_275: f32):
          linalg.yield %in_274 : f32
      }
    -> tensor<2x128x28x28xf32>
    %padded_7 = tensor.pad %out_16.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i276: index, %pad_i277: index, %pad_i278: index, %pad_i279: index):
        tensor.yield %init : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %v280.empty = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v280.buf = linalg.fill ins(%init : f32) outs(%v280.empty : tensor<2x128x28x1x28xf32>) -> tensor<2x128x28x1x28xf32>
    %v280.shape = tensor.empty() : tensor<28x1xf32>
    %v280.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_layer2_modules_0_modules_conv2_parameters_weight_, %v280.shape : tensor<2x128x30x30xf32>, tensor<128x128x3x3xf32>, tensor<28x1xf32>)
      outs(%v280.buf : tensor<2x128x28x1x28xf32>) {
        ^bb0(%in_282: f32, %in_283: f32, %shape_281: f32, %acc_284: f32):
          %v285 = arith.mulf %in_282, %in_283 : f32
          %v286 = arith.addf %v285, %acc_284 : f32
          linalg.yield %v286 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %v287.buf = tensor.empty() : tensor<128xf32>
    %v287.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer2_modules_0_modules_bn2_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v287.buf : tensor<128xf32>) {
        ^bb0(%in_288: f32, %in_289: f32, %acc_290: f32):
          %v291 = arith.constant 1.0 : f32
          %v292 = arith.constant 9.999999747378752e-06 : f32
          %v293 = arith.addf %v292, %in_288 : f32
          %v294 = math.sqrt %v293 : f32
          %v295 = arith.divf %v291, %v294 : f32
          %v296 = arith.mulf %v295, %in_289 : f32
          linalg.yield %v296 : f32
      }
    -> tensor<128xf32>
    %v297.buf = tensor.empty() : tensor<128xf32>
    %v297.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_0_modules_bn2_buffers_running_mean_, %l_self_modules_layer2_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer2_modules_0_modules_bn2_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v297.buf : tensor<128xf32>) {
        ^bb0(%in_298: f32, %in_299: f32, %in_300: f32, %acc_301: f32):
          %v302 = arith.constant 1.0 : f32
          %v303 = arith.constant 9.999999747378752e-06 : f32
          %v304 = arith.addf %v303, %in_299 : f32
          %v305 = math.sqrt %v304 : f32
          %v306 = arith.divf %v302, %v305 : f32
          %v307 = arith.mulf %v306, %in_300 : f32
          %v308 = arith.mulf %v307, %in_298 : f32
          linalg.yield %v308 : f32
      }
    -> tensor<128xf32>
    %l_self_modules_layer2_modules_0_modules_downsample_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_layer2_modules_0_modules_downsample_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 64, 1, 1] : tensor<128x64xf32> into tensor<128x64x1x1xf32>
    %v309.empty = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v309.buf = linalg.fill ins(%init : f32) outs(%v309.empty : tensor<2x128x28x1x28xf32>) -> tensor<2x128x28x1x28xf32>
    %v309.shape = tensor.empty() : tensor<28x1xf32>
    %v309.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, 0, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v190.post.out, %l_self_modules_layer2_modules_0_modules_downsample_modules_0_parameters_weight_.expanded, %v309.shape : tensor<2x64x56x1x56xf32>, tensor<128x64x1x1xf32>, tensor<28x1xf32>)
      outs(%v309.buf : tensor<2x128x28x1x28xf32>) {
        ^bb0(%in_311: f32, %in_312: f32, %shape_310: f32, %acc_313: f32):
          %v314 = arith.mulf %in_311, %in_312 : f32
          %v315 = arith.addf %v314, %acc_313 : f32
          linalg.yield %v315 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %v316.buf = tensor.empty() : tensor<128xf32>
    %v316.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_0_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v316.buf : tensor<128xf32>) {
        ^bb0(%in_317: f32, %in_318: f32, %acc_319: f32):
          %v320 = arith.constant 1.0 : f32
          %v321 = arith.constant 9.999999747378752e-06 : f32
          %v322 = arith.addf %v321, %in_317 : f32
          %v323 = math.sqrt %v322 : f32
          %v324 = arith.divf %v320, %v323 : f32
          %v325 = arith.mulf %v324, %in_318 : f32
          linalg.yield %v325 : f32
      }
    -> tensor<128xf32>
    %v326.buf = tensor.empty() : tensor<128xf32>
    %v326.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_0_modules_downsample_modules_1_buffers_running_mean_, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v326.buf : tensor<128xf32>) {
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
    -> tensor<128xf32>
    %v309.post = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v309.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v309.buf.out, %v316.buf.out, %v326.buf.out, %l_self_modules_layer2_modules_0_modules_downsample_modules_1_parameters_bias_ : tensor<2x128x28x1x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v309.post : tensor<2x128x28x1x28xf32>) {
        ^bb0(%acc_341: f32, %in_338: f32, %in_339: f32, %in_340: f32, %post_342: f32):
          %v343 = arith.mulf %acc_341, %in_338 : f32
          %v344 = arith.subf %v343, %in_339 : f32
          %v345 = arith.addf %v344, %in_340 : f32
          linalg.yield %v345 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %v280.post = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v280.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v280.buf.out, %v287.buf.out, %v297.buf.out, %l_self_modules_layer2_modules_0_modules_bn2_parameters_bias_, %v309.post.out : tensor<2x128x28x1x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<2x128x28x1x28xf32>)
      outs(%v280.post : tensor<2x128x28x1x28xf32>) {
        ^bb0(%acc_350: f32, %in_346: f32, %in_347: f32, %in_348: f32, %in_349: f32, %post_351: f32):
          %v352 = arith.mulf %acc_350, %in_346 : f32
          %v353 = arith.subf %v352, %in_347 : f32
          %v354 = arith.addf %v353, %in_348 : f32
          %v355 = arith.addf %v354, %in_349 : f32
          %v356 = arith.maxnumf %init, %v355 : f32
          linalg.yield %v356 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %out_20.buf = tensor.empty() : tensor<2x128x28x28xf32>
    %out_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v280.post.out : tensor<2x128x28x1x28xf32>)
      outs(%out_20.buf : tensor<2x128x28x28xf32>) {
        ^bb0(%in_357: f32, %acc_358: f32):
          linalg.yield %in_357 : f32
      }
    -> tensor<2x128x28x28xf32>
    %padded_8 = tensor.pad %out_20.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i359: index, %pad_i360: index, %pad_i361: index, %pad_i362: index):
        tensor.yield %init : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %v363.empty = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v363.buf = linalg.fill ins(%init : f32) outs(%v363.empty : tensor<2x128x28x1x28xf32>) -> tensor<2x128x28x1x28xf32>
    %v363.shape = tensor.empty() : tensor<28x1xf32>
    %v363.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_layer2_modules_1_modules_conv1_parameters_weight_, %v363.shape : tensor<2x128x30x30xf32>, tensor<128x128x3x3xf32>, tensor<28x1xf32>)
      outs(%v363.buf : tensor<2x128x28x1x28xf32>) {
        ^bb0(%in_365: f32, %in_366: f32, %shape_364: f32, %acc_367: f32):
          %v368 = arith.mulf %in_365, %in_366 : f32
          %v369 = arith.addf %v368, %acc_367 : f32
          linalg.yield %v369 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %v370.buf = tensor.empty() : tensor<128xf32>
    %v370.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer2_modules_1_modules_bn1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v370.buf : tensor<128xf32>) {
        ^bb0(%in_371: f32, %in_372: f32, %acc_373: f32):
          %v374 = arith.constant 1.0 : f32
          %v375 = arith.constant 9.999999747378752e-06 : f32
          %v376 = arith.addf %v375, %in_371 : f32
          %v377 = math.sqrt %v376 : f32
          %v378 = arith.divf %v374, %v377 : f32
          %v379 = arith.mulf %v378, %in_372 : f32
          linalg.yield %v379 : f32
      }
    -> tensor<128xf32>
    %v380.buf = tensor.empty() : tensor<128xf32>
    %v380.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_1_modules_bn1_buffers_running_mean_, %l_self_modules_layer2_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer2_modules_1_modules_bn1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v380.buf : tensor<128xf32>) {
        ^bb0(%in_381: f32, %in_382: f32, %in_383: f32, %acc_384: f32):
          %v385 = arith.constant 1.0 : f32
          %v386 = arith.constant 9.999999747378752e-06 : f32
          %v387 = arith.addf %v386, %in_382 : f32
          %v388 = math.sqrt %v387 : f32
          %v389 = arith.divf %v385, %v388 : f32
          %v390 = arith.mulf %v389, %in_383 : f32
          %v391 = arith.mulf %v390, %in_381 : f32
          linalg.yield %v391 : f32
      }
    -> tensor<128xf32>
    %v363.post = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v363.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v363.buf.out, %v370.buf.out, %v380.buf.out, %l_self_modules_layer2_modules_1_modules_bn1_parameters_bias_ : tensor<2x128x28x1x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v363.post : tensor<2x128x28x1x28xf32>) {
        ^bb0(%acc_395: f32, %in_392: f32, %in_393: f32, %in_394: f32, %post_396: f32):
          %v397 = arith.mulf %acc_395, %in_392 : f32
          %v398 = arith.subf %v397, %in_393 : f32
          %v399 = arith.addf %v398, %in_394 : f32
          %v400 = arith.maxnumf %init, %v399 : f32
          linalg.yield %v400 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %out_23.buf = tensor.empty() : tensor<2x128x28x28xf32>
    %out_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v363.post.out : tensor<2x128x28x1x28xf32>)
      outs(%out_23.buf : tensor<2x128x28x28xf32>) {
        ^bb0(%in_401: f32, %acc_402: f32):
          linalg.yield %in_401 : f32
      }
    -> tensor<2x128x28x28xf32>
    %padded_9 = tensor.pad %out_23.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i403: index, %pad_i404: index, %pad_i405: index, %pad_i406: index):
        tensor.yield %init : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %v407.empty = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v407.buf = linalg.fill ins(%init : f32) outs(%v407.empty : tensor<2x128x28x1x28xf32>) -> tensor<2x128x28x1x28xf32>
    %v407.shape = tensor.empty() : tensor<28x1xf32>
    %v407.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_9, %l_self_modules_layer2_modules_1_modules_conv2_parameters_weight_, %v407.shape : tensor<2x128x30x30xf32>, tensor<128x128x3x3xf32>, tensor<28x1xf32>)
      outs(%v407.buf : tensor<2x128x28x1x28xf32>) {
        ^bb0(%in_409: f32, %in_410: f32, %shape_408: f32, %acc_411: f32):
          %v412 = arith.mulf %in_409, %in_410 : f32
          %v413 = arith.addf %v412, %acc_411 : f32
          linalg.yield %v413 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %v414.buf = tensor.empty() : tensor<128xf32>
    %v414.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer2_modules_1_modules_bn2_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v414.buf : tensor<128xf32>) {
        ^bb0(%in_415: f32, %in_416: f32, %acc_417: f32):
          %v418 = arith.constant 1.0 : f32
          %v419 = arith.constant 9.999999747378752e-06 : f32
          %v420 = arith.addf %v419, %in_415 : f32
          %v421 = math.sqrt %v420 : f32
          %v422 = arith.divf %v418, %v421 : f32
          %v423 = arith.mulf %v422, %in_416 : f32
          linalg.yield %v423 : f32
      }
    -> tensor<128xf32>
    %v424.buf = tensor.empty() : tensor<128xf32>
    %v424.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer2_modules_1_modules_bn2_buffers_running_mean_, %l_self_modules_layer2_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer2_modules_1_modules_bn2_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v424.buf : tensor<128xf32>) {
        ^bb0(%in_425: f32, %in_426: f32, %in_427: f32, %acc_428: f32):
          %v429 = arith.constant 1.0 : f32
          %v430 = arith.constant 9.999999747378752e-06 : f32
          %v431 = arith.addf %v430, %in_426 : f32
          %v432 = math.sqrt %v431 : f32
          %v433 = arith.divf %v429, %v432 : f32
          %v434 = arith.mulf %v433, %in_427 : f32
          %v435 = arith.mulf %v434, %in_425 : f32
          linalg.yield %v435 : f32
      }
    -> tensor<128xf32>
    %v407.post = tensor.empty() : tensor<2x128x28x1x28xf32>
    %v407.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v407.buf.out, %v414.buf.out, %v424.buf.out, %l_self_modules_layer2_modules_1_modules_bn2_parameters_bias_, %v280.post.out : tensor<2x128x28x1x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<2x128x28x1x28xf32>)
      outs(%v407.post : tensor<2x128x28x1x28xf32>) {
        ^bb0(%acc_440: f32, %in_436: f32, %in_437: f32, %in_438: f32, %in_439: f32, %post_441: f32):
          %v442 = arith.mulf %acc_440, %in_436 : f32
          %v443 = arith.subf %v442, %in_437 : f32
          %v444 = arith.addf %v443, %in_438 : f32
          %v445 = arith.addf %v444, %in_439 : f32
          %v446 = arith.maxnumf %init, %v445 : f32
          linalg.yield %v446 : f32
      }
    -> tensor<2x128x28x1x28xf32>
    %out_27.buf = tensor.empty() : tensor<2x128x28x28xf32>
    %out_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v407.post.out : tensor<2x128x28x1x28xf32>)
      outs(%out_27.buf : tensor<2x128x28x28xf32>) {
        ^bb0(%in_447: f32, %acc_448: f32):
          linalg.yield %in_447 : f32
      }
    -> tensor<2x128x28x28xf32>
    %padded_10 = tensor.pad %out_27.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i449: index, %pad_i450: index, %pad_i451: index, %pad_i452: index):
        tensor.yield %init : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %v453.empty = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v453.buf = linalg.fill ins(%init : f32) outs(%v453.empty : tensor<2x256x7x2x14xf32>) -> tensor<2x256x7x2x14xf32>
    %v453.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 * 2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_10, %l_self_modules_layer3_modules_0_modules_conv1_parameters_weight_ : tensor<2x128x30x30xf32>, tensor<256x128x3x3xf32>)
      outs(%v453.buf : tensor<2x256x7x2x14xf32>) {
        ^bb0(%in_454: f32, %in_455: f32, %acc_456: f32):
          %v457 = arith.mulf %in_454, %in_455 : f32
          %v458 = arith.addf %v457, %acc_456 : f32
          linalg.yield %v458 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %v459.buf = tensor.empty() : tensor<256xf32>
    %v459.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer3_modules_0_modules_bn1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v459.buf : tensor<256xf32>) {
        ^bb0(%in_460: f32, %in_461: f32, %acc_462: f32):
          %v463 = arith.constant 1.0 : f32
          %v464 = arith.constant 9.999999747378752e-06 : f32
          %v465 = arith.addf %v464, %in_460 : f32
          %v466 = math.sqrt %v465 : f32
          %v467 = arith.divf %v463, %v466 : f32
          %v468 = arith.mulf %v467, %in_461 : f32
          linalg.yield %v468 : f32
      }
    -> tensor<256xf32>
    %v469.buf = tensor.empty() : tensor<256xf32>
    %v469.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_0_modules_bn1_buffers_running_mean_, %l_self_modules_layer3_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer3_modules_0_modules_bn1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v469.buf : tensor<256xf32>) {
        ^bb0(%in_470: f32, %in_471: f32, %in_472: f32, %acc_473: f32):
          %v474 = arith.constant 1.0 : f32
          %v475 = arith.constant 9.999999747378752e-06 : f32
          %v476 = arith.addf %v475, %in_471 : f32
          %v477 = math.sqrt %v476 : f32
          %v478 = arith.divf %v474, %v477 : f32
          %v479 = arith.mulf %v478, %in_472 : f32
          %v480 = arith.mulf %v479, %in_470 : f32
          linalg.yield %v480 : f32
      }
    -> tensor<256xf32>
    %v453.post = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v453.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v453.buf.out, %v459.buf.out, %v469.buf.out, %l_self_modules_layer3_modules_0_modules_bn1_parameters_bias_ : tensor<2x256x7x2x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v453.post : tensor<2x256x7x2x14xf32>) {
        ^bb0(%acc_484: f32, %in_481: f32, %in_482: f32, %in_483: f32, %post_485: f32):
          %v486 = arith.mulf %acc_484, %in_481 : f32
          %v487 = arith.subf %v486, %in_482 : f32
          %v488 = arith.addf %v487, %in_483 : f32
          %v489 = arith.maxnumf %init, %v488 : f32
          linalg.yield %v489 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %out_30.buf = tensor.empty() : tensor<2x256x14x14xf32>
    %out_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v453.post.out : tensor<2x256x7x2x14xf32>)
      outs(%out_30.buf : tensor<2x256x14x14xf32>) {
        ^bb0(%in_490: f32, %acc_491: f32):
          linalg.yield %in_490 : f32
      }
    -> tensor<2x256x14x14xf32>
    %padded_11 = tensor.pad %out_30.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i492: index, %pad_i493: index, %pad_i494: index, %pad_i495: index):
        tensor.yield %init : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %v496.empty = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v496.buf = linalg.fill ins(%init : f32) outs(%v496.empty : tensor<2x256x7x2x14xf32>) -> tensor<2x256x7x2x14xf32>
    %v496.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_layer3_modules_0_modules_conv2_parameters_weight_ : tensor<2x256x16x16xf32>, tensor<256x256x3x3xf32>)
      outs(%v496.buf : tensor<2x256x7x2x14xf32>) {
        ^bb0(%in_497: f32, %in_498: f32, %acc_499: f32):
          %v500 = arith.mulf %in_497, %in_498 : f32
          %v501 = arith.addf %v500, %acc_499 : f32
          linalg.yield %v501 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %v502.buf = tensor.empty() : tensor<256xf32>
    %v502.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer3_modules_0_modules_bn2_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v502.buf : tensor<256xf32>) {
        ^bb0(%in_503: f32, %in_504: f32, %acc_505: f32):
          %v506 = arith.constant 1.0 : f32
          %v507 = arith.constant 9.999999747378752e-06 : f32
          %v508 = arith.addf %v507, %in_503 : f32
          %v509 = math.sqrt %v508 : f32
          %v510 = arith.divf %v506, %v509 : f32
          %v511 = arith.mulf %v510, %in_504 : f32
          linalg.yield %v511 : f32
      }
    -> tensor<256xf32>
    %v512.buf = tensor.empty() : tensor<256xf32>
    %v512.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_0_modules_bn2_buffers_running_mean_, %l_self_modules_layer3_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer3_modules_0_modules_bn2_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v512.buf : tensor<256xf32>) {
        ^bb0(%in_513: f32, %in_514: f32, %in_515: f32, %acc_516: f32):
          %v517 = arith.constant 1.0 : f32
          %v518 = arith.constant 9.999999747378752e-06 : f32
          %v519 = arith.addf %v518, %in_514 : f32
          %v520 = math.sqrt %v519 : f32
          %v521 = arith.divf %v517, %v520 : f32
          %v522 = arith.mulf %v521, %in_515 : f32
          %v523 = arith.mulf %v522, %in_513 : f32
          linalg.yield %v523 : f32
      }
    -> tensor<256xf32>
    %l_self_modules_layer3_modules_0_modules_downsample_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_layer3_modules_0_modules_downsample_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [256, 128, 1, 1] : tensor<256x128xf32> into tensor<256x128x1x1xf32>
    %v524.empty = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v524.buf = linalg.fill ins(%init : f32) outs(%v524.empty : tensor<2x256x7x2x14xf32>) -> tensor<2x256x7x2x14xf32>
    %v524.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 * 2 + d3) * 2 + d6, 0, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v407.post.out, %l_self_modules_layer3_modules_0_modules_downsample_modules_0_parameters_weight_.expanded : tensor<2x128x28x1x28xf32>, tensor<256x128x1x1xf32>)
      outs(%v524.buf : tensor<2x256x7x2x14xf32>) {
        ^bb0(%in_525: f32, %in_526: f32, %acc_527: f32):
          %v528 = arith.mulf %in_525, %in_526 : f32
          %v529 = arith.addf %v528, %acc_527 : f32
          linalg.yield %v529 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %v530.buf = tensor.empty() : tensor<256xf32>
    %v530.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_0_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v530.buf : tensor<256xf32>) {
        ^bb0(%in_531: f32, %in_532: f32, %acc_533: f32):
          %v534 = arith.constant 1.0 : f32
          %v535 = arith.constant 9.999999747378752e-06 : f32
          %v536 = arith.addf %v535, %in_531 : f32
          %v537 = math.sqrt %v536 : f32
          %v538 = arith.divf %v534, %v537 : f32
          %v539 = arith.mulf %v538, %in_532 : f32
          linalg.yield %v539 : f32
      }
    -> tensor<256xf32>
    %v540.buf = tensor.empty() : tensor<256xf32>
    %v540.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_0_modules_downsample_modules_1_buffers_running_mean_, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v540.buf : tensor<256xf32>) {
        ^bb0(%in_541: f32, %in_542: f32, %in_543: f32, %acc_544: f32):
          %v545 = arith.constant 1.0 : f32
          %v546 = arith.constant 9.999999747378752e-06 : f32
          %v547 = arith.addf %v546, %in_542 : f32
          %v548 = math.sqrt %v547 : f32
          %v549 = arith.divf %v545, %v548 : f32
          %v550 = arith.mulf %v549, %in_543 : f32
          %v551 = arith.mulf %v550, %in_541 : f32
          linalg.yield %v551 : f32
      }
    -> tensor<256xf32>
    %v524.post = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v524.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v524.buf.out, %v530.buf.out, %v540.buf.out, %l_self_modules_layer3_modules_0_modules_downsample_modules_1_parameters_bias_ : tensor<2x256x7x2x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v524.post : tensor<2x256x7x2x14xf32>) {
        ^bb0(%acc_555: f32, %in_552: f32, %in_553: f32, %in_554: f32, %post_556: f32):
          %v557 = arith.mulf %acc_555, %in_552 : f32
          %v558 = arith.subf %v557, %in_553 : f32
          %v559 = arith.addf %v558, %in_554 : f32
          linalg.yield %v559 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %v496.post = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v496.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v496.buf.out, %v502.buf.out, %v512.buf.out, %l_self_modules_layer3_modules_0_modules_bn2_parameters_bias_, %v524.post.out : tensor<2x256x7x2x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<2x256x7x2x14xf32>)
      outs(%v496.post : tensor<2x256x7x2x14xf32>) {
        ^bb0(%acc_564: f32, %in_560: f32, %in_561: f32, %in_562: f32, %in_563: f32, %post_565: f32):
          %v566 = arith.mulf %acc_564, %in_560 : f32
          %v567 = arith.subf %v566, %in_561 : f32
          %v568 = arith.addf %v567, %in_562 : f32
          %v569 = arith.addf %v568, %in_563 : f32
          %v570 = arith.maxnumf %init, %v569 : f32
          linalg.yield %v570 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %out_34.buf = tensor.empty() : tensor<2x256x14x14xf32>
    %out_34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v496.post.out : tensor<2x256x7x2x14xf32>)
      outs(%out_34.buf : tensor<2x256x14x14xf32>) {
        ^bb0(%in_571: f32, %acc_572: f32):
          linalg.yield %in_571 : f32
      }
    -> tensor<2x256x14x14xf32>
    %padded_12 = tensor.pad %out_34.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i573: index, %pad_i574: index, %pad_i575: index, %pad_i576: index):
        tensor.yield %init : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %v577.empty = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v577.buf = linalg.fill ins(%init : f32) outs(%v577.empty : tensor<2x256x7x2x14xf32>) -> tensor<2x256x7x2x14xf32>
    %v577.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_12, %l_self_modules_layer3_modules_1_modules_conv1_parameters_weight_ : tensor<2x256x16x16xf32>, tensor<256x256x3x3xf32>)
      outs(%v577.buf : tensor<2x256x7x2x14xf32>) {
        ^bb0(%in_578: f32, %in_579: f32, %acc_580: f32):
          %v581 = arith.mulf %in_578, %in_579 : f32
          %v582 = arith.addf %v581, %acc_580 : f32
          linalg.yield %v582 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %v583.buf = tensor.empty() : tensor<256xf32>
    %v583.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer3_modules_1_modules_bn1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v583.buf : tensor<256xf32>) {
        ^bb0(%in_584: f32, %in_585: f32, %acc_586: f32):
          %v587 = arith.constant 1.0 : f32
          %v588 = arith.constant 9.999999747378752e-06 : f32
          %v589 = arith.addf %v588, %in_584 : f32
          %v590 = math.sqrt %v589 : f32
          %v591 = arith.divf %v587, %v590 : f32
          %v592 = arith.mulf %v591, %in_585 : f32
          linalg.yield %v592 : f32
      }
    -> tensor<256xf32>
    %v593.buf = tensor.empty() : tensor<256xf32>
    %v593.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_1_modules_bn1_buffers_running_mean_, %l_self_modules_layer3_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer3_modules_1_modules_bn1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v593.buf : tensor<256xf32>) {
        ^bb0(%in_594: f32, %in_595: f32, %in_596: f32, %acc_597: f32):
          %v598 = arith.constant 1.0 : f32
          %v599 = arith.constant 9.999999747378752e-06 : f32
          %v600 = arith.addf %v599, %in_595 : f32
          %v601 = math.sqrt %v600 : f32
          %v602 = arith.divf %v598, %v601 : f32
          %v603 = arith.mulf %v602, %in_596 : f32
          %v604 = arith.mulf %v603, %in_594 : f32
          linalg.yield %v604 : f32
      }
    -> tensor<256xf32>
    %v577.post = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v577.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v577.buf.out, %v583.buf.out, %v593.buf.out, %l_self_modules_layer3_modules_1_modules_bn1_parameters_bias_ : tensor<2x256x7x2x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v577.post : tensor<2x256x7x2x14xf32>) {
        ^bb0(%acc_608: f32, %in_605: f32, %in_606: f32, %in_607: f32, %post_609: f32):
          %v610 = arith.mulf %acc_608, %in_605 : f32
          %v611 = arith.subf %v610, %in_606 : f32
          %v612 = arith.addf %v611, %in_607 : f32
          %v613 = arith.maxnumf %init, %v612 : f32
          linalg.yield %v613 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %out_37.buf = tensor.empty() : tensor<2x256x14x14xf32>
    %out_37.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v577.post.out : tensor<2x256x7x2x14xf32>)
      outs(%out_37.buf : tensor<2x256x14x14xf32>) {
        ^bb0(%in_614: f32, %acc_615: f32):
          linalg.yield %in_614 : f32
      }
    -> tensor<2x256x14x14xf32>
    %padded_13 = tensor.pad %out_37.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i616: index, %pad_i617: index, %pad_i618: index, %pad_i619: index):
        tensor.yield %init : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %v620.empty = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v620.buf = linalg.fill ins(%init : f32) outs(%v620.empty : tensor<2x256x7x2x14xf32>) -> tensor<2x256x7x2x14xf32>
    %v620.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_13, %l_self_modules_layer3_modules_1_modules_conv2_parameters_weight_ : tensor<2x256x16x16xf32>, tensor<256x256x3x3xf32>)
      outs(%v620.buf : tensor<2x256x7x2x14xf32>) {
        ^bb0(%in_621: f32, %in_622: f32, %acc_623: f32):
          %v624 = arith.mulf %in_621, %in_622 : f32
          %v625 = arith.addf %v624, %acc_623 : f32
          linalg.yield %v625 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %v626.buf = tensor.empty() : tensor<256xf32>
    %v626.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer3_modules_1_modules_bn2_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v626.buf : tensor<256xf32>) {
        ^bb0(%in_627: f32, %in_628: f32, %acc_629: f32):
          %v630 = arith.constant 1.0 : f32
          %v631 = arith.constant 9.999999747378752e-06 : f32
          %v632 = arith.addf %v631, %in_627 : f32
          %v633 = math.sqrt %v632 : f32
          %v634 = arith.divf %v630, %v633 : f32
          %v635 = arith.mulf %v634, %in_628 : f32
          linalg.yield %v635 : f32
      }
    -> tensor<256xf32>
    %v636.buf = tensor.empty() : tensor<256xf32>
    %v636.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer3_modules_1_modules_bn2_buffers_running_mean_, %l_self_modules_layer3_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer3_modules_1_modules_bn2_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v636.buf : tensor<256xf32>) {
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
    -> tensor<256xf32>
    %v620.post = tensor.empty() : tensor<2x256x7x2x14xf32>
    %v620.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v620.buf.out, %v626.buf.out, %v636.buf.out, %l_self_modules_layer3_modules_1_modules_bn2_parameters_bias_, %v496.post.out : tensor<2x256x7x2x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<2x256x7x2x14xf32>)
      outs(%v620.post : tensor<2x256x7x2x14xf32>) {
        ^bb0(%acc_652: f32, %in_648: f32, %in_649: f32, %in_650: f32, %in_651: f32, %post_653: f32):
          %v654 = arith.mulf %acc_652, %in_648 : f32
          %v655 = arith.subf %v654, %in_649 : f32
          %v656 = arith.addf %v655, %in_650 : f32
          %v657 = arith.addf %v656, %in_651 : f32
          %v658 = arith.maxnumf %init, %v657 : f32
          linalg.yield %v658 : f32
      }
    -> tensor<2x256x7x2x14xf32>
    %out_41.buf = tensor.empty() : tensor<2x256x14x14xf32>
    %out_41.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v620.post.out : tensor<2x256x7x2x14xf32>)
      outs(%out_41.buf : tensor<2x256x14x14xf32>) {
        ^bb0(%in_659: f32, %acc_660: f32):
          linalg.yield %in_659 : f32
      }
    -> tensor<2x256x14x14xf32>
    %padded_14 = tensor.pad %out_41.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i661: index, %pad_i662: index, %pad_i663: index, %pad_i664: index):
        tensor.yield %init : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %v665.empty = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v665.buf = linalg.fill ins(%init : f32) outs(%v665.empty : tensor<2x512x7x1x7xf32>) -> tensor<2x512x7x1x7xf32>
    %v665.shape = tensor.empty() : tensor<7x1xf32>
    %v665.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_14, %l_self_modules_layer4_modules_0_modules_conv1_parameters_weight_, %v665.shape : tensor<2x256x16x16xf32>, tensor<512x256x3x3xf32>, tensor<7x1xf32>)
      outs(%v665.buf : tensor<2x512x7x1x7xf32>) {
        ^bb0(%in_667: f32, %in_668: f32, %shape_666: f32, %acc_669: f32):
          %v670 = arith.mulf %in_667, %in_668 : f32
          %v671 = arith.addf %v670, %acc_669 : f32
          linalg.yield %v671 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %v672.buf = tensor.empty() : tensor<512xf32>
    %v672.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer4_modules_0_modules_bn1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v672.buf : tensor<512xf32>) {
        ^bb0(%in_673: f32, %in_674: f32, %acc_675: f32):
          %v676 = arith.constant 1.0 : f32
          %v677 = arith.constant 9.999999747378752e-06 : f32
          %v678 = arith.addf %v677, %in_673 : f32
          %v679 = math.sqrt %v678 : f32
          %v680 = arith.divf %v676, %v679 : f32
          %v681 = arith.mulf %v680, %in_674 : f32
          linalg.yield %v681 : f32
      }
    -> tensor<512xf32>
    %v682.buf = tensor.empty() : tensor<512xf32>
    %v682.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_0_modules_bn1_buffers_running_mean_, %l_self_modules_layer4_modules_0_modules_bn1_buffers_running_var_, %l_self_modules_layer4_modules_0_modules_bn1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v682.buf : tensor<512xf32>) {
        ^bb0(%in_683: f32, %in_684: f32, %in_685: f32, %acc_686: f32):
          %v687 = arith.constant 1.0 : f32
          %v688 = arith.constant 9.999999747378752e-06 : f32
          %v689 = arith.addf %v688, %in_684 : f32
          %v690 = math.sqrt %v689 : f32
          %v691 = arith.divf %v687, %v690 : f32
          %v692 = arith.mulf %v691, %in_685 : f32
          %v693 = arith.mulf %v692, %in_683 : f32
          linalg.yield %v693 : f32
      }
    -> tensor<512xf32>
    %v665.post = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v665.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v665.buf.out, %v672.buf.out, %v682.buf.out, %l_self_modules_layer4_modules_0_modules_bn1_parameters_bias_ : tensor<2x512x7x1x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v665.post : tensor<2x512x7x1x7xf32>) {
        ^bb0(%acc_697: f32, %in_694: f32, %in_695: f32, %in_696: f32, %post_698: f32):
          %v699 = arith.mulf %acc_697, %in_694 : f32
          %v700 = arith.subf %v699, %in_695 : f32
          %v701 = arith.addf %v700, %in_696 : f32
          %v702 = arith.maxnumf %init, %v701 : f32
          linalg.yield %v702 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %out_44.buf = tensor.empty() : tensor<2x512x7x7xf32>
    %out_44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v665.post.out : tensor<2x512x7x1x7xf32>)
      outs(%out_44.buf : tensor<2x512x7x7xf32>) {
        ^bb0(%in_703: f32, %acc_704: f32):
          linalg.yield %in_703 : f32
      }
    -> tensor<2x512x7x7xf32>
    %padded_15 = tensor.pad %out_44.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i705: index, %pad_i706: index, %pad_i707: index, %pad_i708: index):
        tensor.yield %init : f32
    } : tensor<2x512x7x7xf32> to tensor<2x512x9x9xf32>
    %v709.empty = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v709.buf = linalg.fill ins(%init : f32) outs(%v709.empty : tensor<2x512x7x1x7xf32>) -> tensor<2x512x7x1x7xf32>
    %v709.shape = tensor.empty() : tensor<7x1xf32>
    %v709.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_15, %l_self_modules_layer4_modules_0_modules_conv2_parameters_weight_, %v709.shape : tensor<2x512x9x9xf32>, tensor<512x512x3x3xf32>, tensor<7x1xf32>)
      outs(%v709.buf : tensor<2x512x7x1x7xf32>) {
        ^bb0(%in_711: f32, %in_712: f32, %shape_710: f32, %acc_713: f32):
          %v714 = arith.mulf %in_711, %in_712 : f32
          %v715 = arith.addf %v714, %acc_713 : f32
          linalg.yield %v715 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %v716.buf = tensor.empty() : tensor<512xf32>
    %v716.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer4_modules_0_modules_bn2_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v716.buf : tensor<512xf32>) {
        ^bb0(%in_717: f32, %in_718: f32, %acc_719: f32):
          %v720 = arith.constant 1.0 : f32
          %v721 = arith.constant 9.999999747378752e-06 : f32
          %v722 = arith.addf %v721, %in_717 : f32
          %v723 = math.sqrt %v722 : f32
          %v724 = arith.divf %v720, %v723 : f32
          %v725 = arith.mulf %v724, %in_718 : f32
          linalg.yield %v725 : f32
      }
    -> tensor<512xf32>
    %v726.buf = tensor.empty() : tensor<512xf32>
    %v726.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_0_modules_bn2_buffers_running_mean_, %l_self_modules_layer4_modules_0_modules_bn2_buffers_running_var_, %l_self_modules_layer4_modules_0_modules_bn2_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v726.buf : tensor<512xf32>) {
        ^bb0(%in_727: f32, %in_728: f32, %in_729: f32, %acc_730: f32):
          %v731 = arith.constant 1.0 : f32
          %v732 = arith.constant 9.999999747378752e-06 : f32
          %v733 = arith.addf %v732, %in_728 : f32
          %v734 = math.sqrt %v733 : f32
          %v735 = arith.divf %v731, %v734 : f32
          %v736 = arith.mulf %v735, %in_729 : f32
          %v737 = arith.mulf %v736, %in_727 : f32
          linalg.yield %v737 : f32
      }
    -> tensor<512xf32>
    %v620.post.out.slice = tensor.extract_slice %v620.post.out[0, 0, 0, 0, 0] [2, 256, 7, 1, 14] [1, 1, 1, 1, 1] : tensor<2x256x7x2x14xf32> to tensor<2x256x7x1x14xf32>
    %l_self_modules_layer4_modules_0_modules_downsample_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_layer4_modules_0_modules_downsample_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 256, 1, 1] : tensor<512x256xf32> into tensor<512x256x1x1xf32>
    %v738.empty = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v738.buf = linalg.fill ins(%init : f32) outs(%v738.empty : tensor<2x512x7x1x7xf32>) -> tensor<2x512x7x1x7xf32>
    %v738.shape = tensor.empty() : tensor<7x1xf32>
    %v738.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3, d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v620.post.out.slice, %l_self_modules_layer4_modules_0_modules_downsample_modules_0_parameters_weight_.expanded, %v738.shape : tensor<2x256x7x1x14xf32>, tensor<512x256x1x1xf32>, tensor<7x1xf32>)
      outs(%v738.buf : tensor<2x512x7x1x7xf32>) {
        ^bb0(%in_740: f32, %in_741: f32, %shape_739: f32, %acc_742: f32):
          %v743 = arith.mulf %in_740, %in_741 : f32
          %v744 = arith.addf %v743, %acc_742 : f32
          linalg.yield %v744 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %v745.buf = tensor.empty() : tensor<512xf32>
    %v745.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_0_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v745.buf : tensor<512xf32>) {
        ^bb0(%in_746: f32, %in_747: f32, %acc_748: f32):
          %v749 = arith.constant 1.0 : f32
          %v750 = arith.constant 9.999999747378752e-06 : f32
          %v751 = arith.addf %v750, %in_746 : f32
          %v752 = math.sqrt %v751 : f32
          %v753 = arith.divf %v749, %v752 : f32
          %v754 = arith.mulf %v753, %in_747 : f32
          linalg.yield %v754 : f32
      }
    -> tensor<512xf32>
    %v755.buf = tensor.empty() : tensor<512xf32>
    %v755.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_0_modules_downsample_modules_1_buffers_running_mean_, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v755.buf : tensor<512xf32>) {
        ^bb0(%in_756: f32, %in_757: f32, %in_758: f32, %acc_759: f32):
          %v760 = arith.constant 1.0 : f32
          %v761 = arith.constant 9.999999747378752e-06 : f32
          %v762 = arith.addf %v761, %in_757 : f32
          %v763 = math.sqrt %v762 : f32
          %v764 = arith.divf %v760, %v763 : f32
          %v765 = arith.mulf %v764, %in_758 : f32
          %v766 = arith.mulf %v765, %in_756 : f32
          linalg.yield %v766 : f32
      }
    -> tensor<512xf32>
    %v738.post = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v738.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v738.buf.out, %v745.buf.out, %v755.buf.out, %l_self_modules_layer4_modules_0_modules_downsample_modules_1_parameters_bias_ : tensor<2x512x7x1x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v738.post : tensor<2x512x7x1x7xf32>) {
        ^bb0(%acc_770: f32, %in_767: f32, %in_768: f32, %in_769: f32, %post_771: f32):
          %v772 = arith.mulf %acc_770, %in_767 : f32
          %v773 = arith.subf %v772, %in_768 : f32
          %v774 = arith.addf %v773, %in_769 : f32
          linalg.yield %v774 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %v709.post = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v709.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v709.buf.out, %v716.buf.out, %v726.buf.out, %l_self_modules_layer4_modules_0_modules_bn2_parameters_bias_, %v738.post.out : tensor<2x512x7x1x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<2x512x7x1x7xf32>)
      outs(%v709.post : tensor<2x512x7x1x7xf32>) {
        ^bb0(%acc_779: f32, %in_775: f32, %in_776: f32, %in_777: f32, %in_778: f32, %post_780: f32):
          %v781 = arith.mulf %acc_779, %in_775 : f32
          %v782 = arith.subf %v781, %in_776 : f32
          %v783 = arith.addf %v782, %in_777 : f32
          %v784 = arith.addf %v783, %in_778 : f32
          %v785 = arith.maxnumf %init, %v784 : f32
          linalg.yield %v785 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %out_48.buf = tensor.empty() : tensor<2x512x7x7xf32>
    %out_48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v709.post.out : tensor<2x512x7x1x7xf32>)
      outs(%out_48.buf : tensor<2x512x7x7xf32>) {
        ^bb0(%in_786: f32, %acc_787: f32):
          linalg.yield %in_786 : f32
      }
    -> tensor<2x512x7x7xf32>
    %padded_16 = tensor.pad %out_48.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i788: index, %pad_i789: index, %pad_i790: index, %pad_i791: index):
        tensor.yield %init : f32
    } : tensor<2x512x7x7xf32> to tensor<2x512x9x9xf32>
    %v792.empty = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v792.buf = linalg.fill ins(%init : f32) outs(%v792.empty : tensor<2x512x7x1x7xf32>) -> tensor<2x512x7x1x7xf32>
    %v792.shape = tensor.empty() : tensor<7x1xf32>
    %v792.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_16, %l_self_modules_layer4_modules_1_modules_conv1_parameters_weight_, %v792.shape : tensor<2x512x9x9xf32>, tensor<512x512x3x3xf32>, tensor<7x1xf32>)
      outs(%v792.buf : tensor<2x512x7x1x7xf32>) {
        ^bb0(%in_794: f32, %in_795: f32, %shape_793: f32, %acc_796: f32):
          %v797 = arith.mulf %in_794, %in_795 : f32
          %v798 = arith.addf %v797, %acc_796 : f32
          linalg.yield %v798 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %v799.buf = tensor.empty() : tensor<512xf32>
    %v799.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer4_modules_1_modules_bn1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v799.buf : tensor<512xf32>) {
        ^bb0(%in_800: f32, %in_801: f32, %acc_802: f32):
          %v803 = arith.constant 1.0 : f32
          %v804 = arith.constant 9.999999747378752e-06 : f32
          %v805 = arith.addf %v804, %in_800 : f32
          %v806 = math.sqrt %v805 : f32
          %v807 = arith.divf %v803, %v806 : f32
          %v808 = arith.mulf %v807, %in_801 : f32
          linalg.yield %v808 : f32
      }
    -> tensor<512xf32>
    %v809.buf = tensor.empty() : tensor<512xf32>
    %v809.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_1_modules_bn1_buffers_running_mean_, %l_self_modules_layer4_modules_1_modules_bn1_buffers_running_var_, %l_self_modules_layer4_modules_1_modules_bn1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v809.buf : tensor<512xf32>) {
        ^bb0(%in_810: f32, %in_811: f32, %in_812: f32, %acc_813: f32):
          %v814 = arith.constant 1.0 : f32
          %v815 = arith.constant 9.999999747378752e-06 : f32
          %v816 = arith.addf %v815, %in_811 : f32
          %v817 = math.sqrt %v816 : f32
          %v818 = arith.divf %v814, %v817 : f32
          %v819 = arith.mulf %v818, %in_812 : f32
          %v820 = arith.mulf %v819, %in_810 : f32
          linalg.yield %v820 : f32
      }
    -> tensor<512xf32>
    %v792.post = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v792.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v792.buf.out, %v799.buf.out, %v809.buf.out, %l_self_modules_layer4_modules_1_modules_bn1_parameters_bias_ : tensor<2x512x7x1x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v792.post : tensor<2x512x7x1x7xf32>) {
        ^bb0(%acc_824: f32, %in_821: f32, %in_822: f32, %in_823: f32, %post_825: f32):
          %v826 = arith.mulf %acc_824, %in_821 : f32
          %v827 = arith.subf %v826, %in_822 : f32
          %v828 = arith.addf %v827, %in_823 : f32
          %v829 = arith.maxnumf %init, %v828 : f32
          linalg.yield %v829 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %out_51.buf = tensor.empty() : tensor<2x512x7x7xf32>
    %out_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v792.post.out : tensor<2x512x7x1x7xf32>)
      outs(%out_51.buf : tensor<2x512x7x7xf32>) {
        ^bb0(%in_830: f32, %acc_831: f32):
          linalg.yield %in_830 : f32
      }
    -> tensor<2x512x7x7xf32>
    %padded_17 = tensor.pad %out_51.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i832: index, %pad_i833: index, %pad_i834: index, %pad_i835: index):
        tensor.yield %init : f32
    } : tensor<2x512x7x7xf32> to tensor<2x512x9x9xf32>
    %v836.empty = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v836.buf = linalg.fill ins(%init : f32) outs(%v836.empty : tensor<2x512x7x1x7xf32>) -> tensor<2x512x7x1x7xf32>
    %v836.shape = tensor.empty() : tensor<7x1xf32>
    %v836.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_17, %l_self_modules_layer4_modules_1_modules_conv2_parameters_weight_, %v836.shape : tensor<2x512x9x9xf32>, tensor<512x512x3x3xf32>, tensor<7x1xf32>)
      outs(%v836.buf : tensor<2x512x7x1x7xf32>) {
        ^bb0(%in_838: f32, %in_839: f32, %shape_837: f32, %acc_840: f32):
          %v841 = arith.mulf %in_838, %in_839 : f32
          %v842 = arith.addf %v841, %acc_840 : f32
          linalg.yield %v842 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %v843.buf = tensor.empty() : tensor<512xf32>
    %v843.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer4_modules_1_modules_bn2_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v843.buf : tensor<512xf32>) {
        ^bb0(%in_844: f32, %in_845: f32, %acc_846: f32):
          %v847 = arith.constant 1.0 : f32
          %v848 = arith.constant 9.999999747378752e-06 : f32
          %v849 = arith.addf %v848, %in_844 : f32
          %v850 = math.sqrt %v849 : f32
          %v851 = arith.divf %v847, %v850 : f32
          %v852 = arith.mulf %v851, %in_845 : f32
          linalg.yield %v852 : f32
      }
    -> tensor<512xf32>
    %v853.buf = tensor.empty() : tensor<512xf32>
    %v853.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layer4_modules_1_modules_bn2_buffers_running_mean_, %l_self_modules_layer4_modules_1_modules_bn2_buffers_running_var_, %l_self_modules_layer4_modules_1_modules_bn2_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v853.buf : tensor<512xf32>) {
        ^bb0(%in_854: f32, %in_855: f32, %in_856: f32, %acc_857: f32):
          %v858 = arith.constant 1.0 : f32
          %v859 = arith.constant 9.999999747378752e-06 : f32
          %v860 = arith.addf %v859, %in_855 : f32
          %v861 = math.sqrt %v860 : f32
          %v862 = arith.divf %v858, %v861 : f32
          %v863 = arith.mulf %v862, %in_856 : f32
          %v864 = arith.mulf %v863, %in_854 : f32
          linalg.yield %v864 : f32
      }
    -> tensor<512xf32>
    %v836.post = tensor.empty() : tensor<2x512x7x1x7xf32>
    %v836.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v836.buf.out, %v843.buf.out, %v853.buf.out, %l_self_modules_layer4_modules_1_modules_bn2_parameters_bias_, %v709.post.out : tensor<2x512x7x1x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<2x512x7x1x7xf32>)
      outs(%v836.post : tensor<2x512x7x1x7xf32>) {
        ^bb0(%acc_869: f32, %in_865: f32, %in_866: f32, %in_867: f32, %in_868: f32, %post_870: f32):
          %v871 = arith.mulf %acc_869, %in_865 : f32
          %v872 = arith.subf %v871, %in_866 : f32
          %v873 = arith.addf %v872, %in_867 : f32
          %v874 = arith.addf %v873, %in_868 : f32
          %v875 = arith.maxnumf %init, %v874 : f32
          linalg.yield %v875 : f32
      }
    -> tensor<2x512x7x1x7xf32>
    %v876.empty = tensor.empty() : tensor<2x512xf32>
    %v876.buf = linalg.fill ins(%init : f32) outs(%v876.empty : tensor<2x512xf32>) -> tensor<2x512xf32>
    %v876.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%v836.post.out : tensor<2x512x7x1x7xf32>)
      outs(%v876.buf : tensor<2x512xf32>) {
        ^bb0(%in_877: f32, %acc_878: f32):
          %v879 = arith.addf %in_877, %acc_878 : f32
          linalg.yield %v879 : f32
      }
    -> tensor<2x512xf32>
    %v876.post = tensor.empty() : tensor<2x512xf32>
    %v876.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v876.buf.out : tensor<2x512xf32>)
      outs(%v876.post : tensor<2x512xf32>) {
        ^bb0(%acc_880: f32, %post_881: f32):
          %v882 = arith.constant 49.0 : f32
          %v883 = arith.divf %acc_880, %v882 : f32
          linalg.yield %v883 : f32
      }
    -> tensor<2x512xf32>
    %v884.empty = tensor.empty() : tensor<2x1x250x4xf32>
    %v884.buf = linalg.fill ins(%init : f32) outs(%v884.empty : tensor<2x1x250x4xf32>) -> tensor<2x1x250x4xf32>
    %v884.shape = tensor.empty() : tensor<2x1xf32>
    %v884.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2)>, affine_map<(d0, d1, d2, d3, d4) -> (d0 + d2, 0, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v876.post.out, %l_self_modules_fc_parameters_weight_, %v884.shape : tensor<2x512xf32>, tensor<1000x512xf32>, tensor<2x1xf32>)
      outs(%v884.buf : tensor<2x1x250x4xf32>) {
        ^bb0(%in_886: f32, %in_887: f32, %shape_885: f32, %acc_888: f32):
          %v889 = arith.mulf %in_886, %in_887 : f32
          %v890 = arith.addf %v889, %acc_888 : f32
          linalg.yield %v890 : f32
      }
    -> tensor<2x1x250x4xf32>
    %v884.post = tensor.empty() : tensor<2x1x250x4xf32>
    %v884.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v884.buf.out, %l_self_modules_fc_parameters_bias_ : tensor<2x1x250x4xf32>, tensor<1000xf32>)
      outs(%v884.post : tensor<2x1x250x4xf32>) {
        ^bb0(%acc_892: f32, %in_891: f32, %post_893: f32):
          %v894 = arith.addf %acc_892, %in_891 : f32
          linalg.yield %v894 : f32
      }
    -> tensor<2x1x250x4xf32>
    %x_6.buf = tensor.empty() : tensor<2x1000xf32>
    %x_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, 0, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v884.post.out : tensor<2x1x250x4xf32>)
      outs(%x_6.buf : tensor<2x1000xf32>) {
        ^bb0(%in_895: f32, %acc_896: f32):
          linalg.yield %in_895 : f32
      }
    -> tensor<2x1000xf32>
    func.return %x_6.buf.out : tensor<2x1000xf32>
  }
}
