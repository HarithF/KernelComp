module {
  func.func public @MobileNetV1(%l_self_modules_model_modules_0_modules_0_parameters_weight_: tensor<32x3x3x3xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_model_modules_0_modules_1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_model_modules_0_modules_1_buffers_running_var_: tensor<32xf32>, %l_self_modules_model_modules_0_modules_1_parameters_weight_: tensor<32xf32>, %l_self_modules_model_modules_0_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_model_modules_1_modules_0_parameters_weight_: tensor<32x3x3xf32>, %l_self_modules_model_modules_1_modules_1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_model_modules_1_modules_1_buffers_running_var_: tensor<32xf32>, %l_self_modules_model_modules_1_modules_1_parameters_weight_: tensor<32xf32>, %l_self_modules_model_modules_1_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_model_modules_1_modules_3_parameters_weight_: tensor<64x32xf32>, %l_self_modules_model_modules_1_modules_4_buffers_running_mean_: tensor<64xf32>, %l_self_modules_model_modules_1_modules_4_buffers_running_var_: tensor<64xf32>, %l_self_modules_model_modules_1_modules_4_parameters_weight_: tensor<64xf32>, %l_self_modules_model_modules_1_modules_4_parameters_bias_: tensor<64xf32>, %l_self_modules_model_modules_2_modules_0_parameters_weight_: tensor<64x3x3xf32>, %l_self_modules_model_modules_2_modules_1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_model_modules_2_modules_1_buffers_running_var_: tensor<64xf32>, %l_self_modules_model_modules_2_modules_1_parameters_weight_: tensor<64xf32>, %l_self_modules_model_modules_2_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_model_modules_2_modules_3_parameters_weight_: tensor<128x64xf32>, %l_self_modules_model_modules_2_modules_4_buffers_running_mean_: tensor<128xf32>, %l_self_modules_model_modules_2_modules_4_buffers_running_var_: tensor<128xf32>, %l_self_modules_model_modules_2_modules_4_parameters_weight_: tensor<128xf32>, %l_self_modules_model_modules_2_modules_4_parameters_bias_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_0_parameters_weight_: tensor<128x3x3xf32>, %l_self_modules_model_modules_3_modules_1_buffers_running_mean_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_1_buffers_running_var_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_1_parameters_weight_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_3_parameters_weight_: tensor<128x128xf32>, %l_self_modules_model_modules_3_modules_4_buffers_running_mean_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_4_buffers_running_var_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_4_parameters_weight_: tensor<128xf32>, %l_self_modules_model_modules_3_modules_4_parameters_bias_: tensor<128xf32>, %l_self_modules_model_modules_4_modules_0_parameters_weight_: tensor<128x3x3xf32>, %l_self_modules_model_modules_4_modules_1_buffers_running_mean_: tensor<128xf32>, %l_self_modules_model_modules_4_modules_1_buffers_running_var_: tensor<128xf32>, %l_self_modules_model_modules_4_modules_1_parameters_weight_: tensor<128xf32>, %l_self_modules_model_modules_4_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_model_modules_4_modules_3_parameters_weight_: tensor<256x128xf32>, %l_self_modules_model_modules_4_modules_4_buffers_running_mean_: tensor<256xf32>, %l_self_modules_model_modules_4_modules_4_buffers_running_var_: tensor<256xf32>, %l_self_modules_model_modules_4_modules_4_parameters_weight_: tensor<256xf32>, %l_self_modules_model_modules_4_modules_4_parameters_bias_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_0_parameters_weight_: tensor<256x3x3xf32>, %l_self_modules_model_modules_5_modules_1_buffers_running_mean_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_1_buffers_running_var_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_1_parameters_weight_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_1_parameters_bias_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_3_parameters_weight_: tensor<256x256xf32>, %l_self_modules_model_modules_5_modules_4_buffers_running_mean_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_4_buffers_running_var_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_4_parameters_weight_: tensor<256xf32>, %l_self_modules_model_modules_5_modules_4_parameters_bias_: tensor<256xf32>, %l_self_modules_model_modules_6_modules_0_parameters_weight_: tensor<256x3x3xf32>, %l_self_modules_model_modules_6_modules_1_buffers_running_mean_: tensor<256xf32>, %l_self_modules_model_modules_6_modules_1_buffers_running_var_: tensor<256xf32>, %l_self_modules_model_modules_6_modules_1_parameters_weight_: tensor<256xf32>, %l_self_modules_model_modules_6_modules_1_parameters_bias_: tensor<256xf32>, %l_self_modules_model_modules_6_modules_3_parameters_weight_: tensor<512x256xf32>, %l_self_modules_model_modules_6_modules_4_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_6_modules_4_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_6_modules_4_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_6_modules_4_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_0_parameters_weight_: tensor<512x3x3xf32>, %l_self_modules_model_modules_7_modules_1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_1_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_1_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_1_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_3_parameters_weight_: tensor<512x512xf32>, %l_self_modules_model_modules_7_modules_4_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_4_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_4_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_7_modules_4_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_0_parameters_weight_: tensor<512x3x3xf32>, %l_self_modules_model_modules_8_modules_1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_1_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_1_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_1_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_3_parameters_weight_: tensor<512x512xf32>, %l_self_modules_model_modules_8_modules_4_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_4_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_4_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_8_modules_4_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_0_parameters_weight_: tensor<512x3x3xf32>, %l_self_modules_model_modules_9_modules_1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_1_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_1_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_1_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_3_parameters_weight_: tensor<512x512xf32>, %l_self_modules_model_modules_9_modules_4_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_4_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_4_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_9_modules_4_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_0_parameters_weight_: tensor<512x3x3xf32>, %l_self_modules_model_modules_10_modules_1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_1_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_1_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_1_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_3_parameters_weight_: tensor<512x512xf32>, %l_self_modules_model_modules_10_modules_4_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_4_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_4_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_10_modules_4_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_0_parameters_weight_: tensor<512x3x3xf32>, %l_self_modules_model_modules_11_modules_1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_1_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_1_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_1_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_3_parameters_weight_: tensor<512x512xf32>, %l_self_modules_model_modules_11_modules_4_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_4_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_4_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_11_modules_4_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_12_modules_0_parameters_weight_: tensor<512x3x3xf32>, %l_self_modules_model_modules_12_modules_1_buffers_running_mean_: tensor<512xf32>, %l_self_modules_model_modules_12_modules_1_buffers_running_var_: tensor<512xf32>, %l_self_modules_model_modules_12_modules_1_parameters_weight_: tensor<512xf32>, %l_self_modules_model_modules_12_modules_1_parameters_bias_: tensor<512xf32>, %l_self_modules_model_modules_12_modules_3_parameters_weight_: tensor<1024x512xf32>, %l_self_modules_model_modules_12_modules_4_buffers_running_mean_: tensor<1024xf32>, %l_self_modules_model_modules_12_modules_4_buffers_running_var_: tensor<1024xf32>, %l_self_modules_model_modules_12_modules_4_parameters_weight_: tensor<1024xf32>, %l_self_modules_model_modules_12_modules_4_parameters_bias_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_0_parameters_weight_: tensor<1024x3x3xf32>, %l_self_modules_model_modules_13_modules_1_buffers_running_mean_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_1_buffers_running_var_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_1_parameters_weight_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_1_parameters_bias_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_3_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_model_modules_13_modules_4_buffers_running_mean_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_4_buffers_running_var_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_4_parameters_weight_: tensor<1024xf32>, %l_self_modules_model_modules_13_modules_4_parameters_bias_: tensor<1024xf32>, %l_self_modules_fc_parameters_weight_: tensor<1000x1024xf32>, %l_self_modules_fc_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %v4.empty = tensor.empty() : tensor<10x32x112x1x112xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<10x32x112x1x112xf32>) -> tensor<10x32x112x1x112xf32>
    %v4.shape = tensor.empty() : tensor<112x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_model_modules_0_modules_0_parameters_weight_, %v4.shape : tensor<10x3x226x226xf32>, tensor<32x3x3x3xf32>, tensor<112x1xf32>)
      outs(%v4.buf : tensor<10x32x112x1x112xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x32x112x1x112xf32>
    %v11.buf = tensor.empty() : tensor<32xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_0_modules_1_buffers_running_var_, %l_self_modules_model_modules_0_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
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
      ins(%l_self_modules_model_modules_0_modules_1_buffers_running_mean_, %l_self_modules_model_modules_0_modules_1_buffers_running_var_, %l_self_modules_model_modules_0_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
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
      ins(%v4.buf.out, %v11.buf.out, %v21.buf.out, %l_self_modules_model_modules_0_modules_1_parameters_bias_ : tensor<10x32x112x1x112xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v4.post : tensor<10x32x112x1x112xf32>) {
        ^bb0(%acc_36: f32, %in_33: f32, %in_34: f32, %in_35: f32, %post_37: f32):
          %v38 = arith.mulf %acc_36, %in_33 : f32
          %v39 = arith.subf %v38, %in_34 : f32
          %v40 = arith.addf %v39, %in_35 : f32
          %v41 = arith.maxnumf %init, %v40 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<10x32x112x1x112xf32>
    %input_3.buf = tensor.empty() : tensor<10x32x112x112xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<10x32x112x1x112xf32>)
      outs(%input_3.buf : tensor<10x32x112x112xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          linalg.yield %in_42 : f32
      }
    -> tensor<10x32x112x112xf32>
    %v48 = tensor.pad %input_3.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i44: index, %pad_i45: index, %pad_i46: index, %pad_i47: index):
        tensor.yield %init : f32
    } : tensor<10x32x112x112xf32> to tensor<10x32x114x114xf32>
    %l_self_modules_model_modules_1_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_1_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [32, 1, 3, 3] : tensor<32x3x3xf32> into tensor<32x1x3x3xf32>
    %input_6.empty = tensor.empty() : tensor<10x32x112x112xf32>
    %input_6.buf = linalg.fill ins(%init : f32) outs(%input_6.empty : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v48, %l_self_modules_model_modules_1_modules_0_parameters_weight_.expanded : tensor<10x32x114x114xf32>, tensor<32x1x3x3xf32>)
      outs(%input_6.buf : tensor<10x32x112x112xf32>) {
        ^bb0(%in_49: f32, %in_50: f32, %acc_51: f32):
          %v52 = arith.mulf %in_49, %in_50 : f32
          %v53 = arith.addf %v52, %acc_51 : f32
          linalg.yield %v53 : f32
      }
    -> tensor<10x32x112x112xf32>
    %v54.buf = tensor.empty() : tensor<32xf32>
    %v54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_1_modules_1_buffers_running_var_, %l_self_modules_model_modules_1_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
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
      ins(%l_self_modules_model_modules_1_modules_1_buffers_running_mean_, %l_self_modules_model_modules_1_modules_1_buffers_running_var_, %l_self_modules_model_modules_1_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
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
    %input_6.post = tensor.empty() : tensor<10x32x112x112xf32>
    %input_6.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_6.buf.out, %v54.buf.out, %v64.buf.out, %l_self_modules_model_modules_1_modules_1_parameters_bias_ : tensor<10x32x112x112xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%input_6.post : tensor<10x32x112x112xf32>) {
        ^bb0(%acc_79: f32, %in_76: f32, %in_77: f32, %in_78: f32, %post_80: f32):
          %v81 = arith.mulf %acc_79, %in_76 : f32
          %v82 = arith.subf %v81, %in_77 : f32
          %v83 = arith.addf %v82, %in_78 : f32
          %v84 = arith.maxnumf %init, %v83 : f32
          linalg.yield %v84 : f32
      }
    -> tensor<10x32x112x112xf32>
    %l_self_modules_model_modules_1_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_1_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 32, 1, 1] : tensor<64x32xf32> into tensor<64x32x1x1xf32>
    %v85.empty = tensor.empty() : tensor<10x64x112x1x112xf32>
    %v85.buf = linalg.fill ins(%init : f32) outs(%v85.empty : tensor<10x64x112x1x112xf32>) -> tensor<10x64x112x1x112xf32>
    %v85.shape = tensor.empty() : tensor<112x1xf32>
    %v85.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_6.post.out, %l_self_modules_model_modules_1_modules_3_parameters_weight_.expanded, %v85.shape : tensor<10x32x112x112xf32>, tensor<64x32x1x1xf32>, tensor<112x1xf32>)
      outs(%v85.buf : tensor<10x64x112x1x112xf32>) {
        ^bb0(%in_87: f32, %in_88: f32, %shape_86: f32, %acc_89: f32):
          %v90 = arith.mulf %in_87, %in_88 : f32
          %v91 = arith.addf %v90, %acc_89 : f32
          linalg.yield %v91 : f32
      }
    -> tensor<10x64x112x1x112xf32>
    %v92.buf = tensor.empty() : tensor<64xf32>
    %v92.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_1_modules_4_buffers_running_var_, %l_self_modules_model_modules_1_modules_4_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v92.buf : tensor<64xf32>) {
        ^bb0(%in_93: f32, %in_94: f32, %acc_95: f32):
          %v96 = arith.constant 1.0 : f32
          %v97 = arith.constant 9.999999747378752e-06 : f32
          %v98 = arith.addf %v97, %in_93 : f32
          %v99 = math.sqrt %v98 : f32
          %v100 = arith.divf %v96, %v99 : f32
          %v101 = arith.mulf %v100, %in_94 : f32
          linalg.yield %v101 : f32
      }
    -> tensor<64xf32>
    %v102.buf = tensor.empty() : tensor<64xf32>
    %v102.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_1_modules_4_buffers_running_mean_, %l_self_modules_model_modules_1_modules_4_buffers_running_var_, %l_self_modules_model_modules_1_modules_4_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v102.buf : tensor<64xf32>) {
        ^bb0(%in_103: f32, %in_104: f32, %in_105: f32, %acc_106: f32):
          %v107 = arith.constant 1.0 : f32
          %v108 = arith.constant 9.999999747378752e-06 : f32
          %v109 = arith.addf %v108, %in_104 : f32
          %v110 = math.sqrt %v109 : f32
          %v111 = arith.divf %v107, %v110 : f32
          %v112 = arith.mulf %v111, %in_105 : f32
          %v113 = arith.mulf %v112, %in_103 : f32
          linalg.yield %v113 : f32
      }
    -> tensor<64xf32>
    %v85.post = tensor.empty() : tensor<10x64x112x1x112xf32>
    %v85.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v85.buf.out, %v92.buf.out, %v102.buf.out, %l_self_modules_model_modules_1_modules_4_parameters_bias_ : tensor<10x64x112x1x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v85.post : tensor<10x64x112x1x112xf32>) {
        ^bb0(%acc_117: f32, %in_114: f32, %in_115: f32, %in_116: f32, %post_118: f32):
          %v119 = arith.mulf %acc_117, %in_114 : f32
          %v120 = arith.subf %v119, %in_115 : f32
          %v121 = arith.addf %v120, %in_116 : f32
          %v122 = arith.maxnumf %init, %v121 : f32
          linalg.yield %v122 : f32
      }
    -> tensor<10x64x112x1x112xf32>
    %input_9.buf = tensor.empty() : tensor<10x64x112x112xf32>
    %input_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v85.post.out : tensor<10x64x112x1x112xf32>)
      outs(%input_9.buf : tensor<10x64x112x112xf32>) {
        ^bb0(%in_123: f32, %acc_124: f32):
          linalg.yield %in_123 : f32
      }
    -> tensor<10x64x112x112xf32>
    %v129 = tensor.pad %input_9.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i125: index, %pad_i126: index, %pad_i127: index, %pad_i128: index):
        tensor.yield %init : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %l_self_modules_model_modules_2_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_2_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [64, 1, 3, 3] : tensor<64x3x3xf32> into tensor<64x1x3x3xf32>
    %input_12.empty = tensor.empty() : tensor<10x64x56x56xf32>
    %input_12.buf = linalg.fill ins(%init : f32) outs(%input_12.empty : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %input_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v129, %l_self_modules_model_modules_2_modules_0_parameters_weight_.expanded : tensor<10x64x114x114xf32>, tensor<64x1x3x3xf32>)
      outs(%input_12.buf : tensor<10x64x56x56xf32>) {
        ^bb0(%in_130: f32, %in_131: f32, %acc_132: f32):
          %v133 = arith.mulf %in_130, %in_131 : f32
          %v134 = arith.addf %v133, %acc_132 : f32
          linalg.yield %v134 : f32
      }
    -> tensor<10x64x56x56xf32>
    %v135.buf = tensor.empty() : tensor<64xf32>
    %v135.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_2_modules_1_buffers_running_var_, %l_self_modules_model_modules_2_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v135.buf : tensor<64xf32>) {
        ^bb0(%in_136: f32, %in_137: f32, %acc_138: f32):
          %v139 = arith.constant 1.0 : f32
          %v140 = arith.constant 9.999999747378752e-06 : f32
          %v141 = arith.addf %v140, %in_136 : f32
          %v142 = math.sqrt %v141 : f32
          %v143 = arith.divf %v139, %v142 : f32
          %v144 = arith.mulf %v143, %in_137 : f32
          linalg.yield %v144 : f32
      }
    -> tensor<64xf32>
    %v145.buf = tensor.empty() : tensor<64xf32>
    %v145.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_2_modules_1_buffers_running_mean_, %l_self_modules_model_modules_2_modules_1_buffers_running_var_, %l_self_modules_model_modules_2_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v145.buf : tensor<64xf32>) {
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
    -> tensor<64xf32>
    %input_12.post = tensor.empty() : tensor<10x64x56x56xf32>
    %input_12.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_12.buf.out, %v135.buf.out, %v145.buf.out, %l_self_modules_model_modules_2_modules_1_parameters_bias_ : tensor<10x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%input_12.post : tensor<10x64x56x56xf32>) {
        ^bb0(%acc_160: f32, %in_157: f32, %in_158: f32, %in_159: f32, %post_161: f32):
          %v162 = arith.mulf %acc_160, %in_157 : f32
          %v163 = arith.subf %v162, %in_158 : f32
          %v164 = arith.addf %v163, %in_159 : f32
          %v165 = arith.maxnumf %init, %v164 : f32
          linalg.yield %v165 : f32
      }
    -> tensor<10x64x56x56xf32>
    %l_self_modules_model_modules_2_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_2_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 64, 1, 1] : tensor<128x64xf32> into tensor<128x64x1x1xf32>
    %v166.empty = tensor.empty() : tensor<10x128x56x1x56xf32>
    %v166.buf = linalg.fill ins(%init : f32) outs(%v166.empty : tensor<10x128x56x1x56xf32>) -> tensor<10x128x56x1x56xf32>
    %v166.shape = tensor.empty() : tensor<56x1xf32>
    %v166.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_12.post.out, %l_self_modules_model_modules_2_modules_3_parameters_weight_.expanded, %v166.shape : tensor<10x64x56x56xf32>, tensor<128x64x1x1xf32>, tensor<56x1xf32>)
      outs(%v166.buf : tensor<10x128x56x1x56xf32>) {
        ^bb0(%in_168: f32, %in_169: f32, %shape_167: f32, %acc_170: f32):
          %v171 = arith.mulf %in_168, %in_169 : f32
          %v172 = arith.addf %v171, %acc_170 : f32
          linalg.yield %v172 : f32
      }
    -> tensor<10x128x56x1x56xf32>
    %v173.buf = tensor.empty() : tensor<128xf32>
    %v173.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_2_modules_4_buffers_running_var_, %l_self_modules_model_modules_2_modules_4_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v173.buf : tensor<128xf32>) {
        ^bb0(%in_174: f32, %in_175: f32, %acc_176: f32):
          %v177 = arith.constant 1.0 : f32
          %v178 = arith.constant 9.999999747378752e-06 : f32
          %v179 = arith.addf %v178, %in_174 : f32
          %v180 = math.sqrt %v179 : f32
          %v181 = arith.divf %v177, %v180 : f32
          %v182 = arith.mulf %v181, %in_175 : f32
          linalg.yield %v182 : f32
      }
    -> tensor<128xf32>
    %v183.buf = tensor.empty() : tensor<128xf32>
    %v183.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_2_modules_4_buffers_running_mean_, %l_self_modules_model_modules_2_modules_4_buffers_running_var_, %l_self_modules_model_modules_2_modules_4_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v183.buf : tensor<128xf32>) {
        ^bb0(%in_184: f32, %in_185: f32, %in_186: f32, %acc_187: f32):
          %v188 = arith.constant 1.0 : f32
          %v189 = arith.constant 9.999999747378752e-06 : f32
          %v190 = arith.addf %v189, %in_185 : f32
          %v191 = math.sqrt %v190 : f32
          %v192 = arith.divf %v188, %v191 : f32
          %v193 = arith.mulf %v192, %in_186 : f32
          %v194 = arith.mulf %v193, %in_184 : f32
          linalg.yield %v194 : f32
      }
    -> tensor<128xf32>
    %v166.post = tensor.empty() : tensor<10x128x56x1x56xf32>
    %v166.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v166.buf.out, %v173.buf.out, %v183.buf.out, %l_self_modules_model_modules_2_modules_4_parameters_bias_ : tensor<10x128x56x1x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v166.post : tensor<10x128x56x1x56xf32>) {
        ^bb0(%acc_198: f32, %in_195: f32, %in_196: f32, %in_197: f32, %post_199: f32):
          %v200 = arith.mulf %acc_198, %in_195 : f32
          %v201 = arith.subf %v200, %in_196 : f32
          %v202 = arith.addf %v201, %in_197 : f32
          %v203 = arith.maxnumf %init, %v202 : f32
          linalg.yield %v203 : f32
      }
    -> tensor<10x128x56x1x56xf32>
    %input_15.buf = tensor.empty() : tensor<10x128x56x56xf32>
    %input_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v166.post.out : tensor<10x128x56x1x56xf32>)
      outs(%input_15.buf : tensor<10x128x56x56xf32>) {
        ^bb0(%in_204: f32, %acc_205: f32):
          linalg.yield %in_204 : f32
      }
    -> tensor<10x128x56x56xf32>
    %v210 = tensor.pad %input_15.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i206: index, %pad_i207: index, %pad_i208: index, %pad_i209: index):
        tensor.yield %init : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %l_self_modules_model_modules_3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_3_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [128, 1, 3, 3] : tensor<128x3x3xf32> into tensor<128x1x3x3xf32>
    %input_18.empty = tensor.empty() : tensor<10x128x56x56xf32>
    %input_18.buf = linalg.fill ins(%init : f32) outs(%input_18.empty : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %input_18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v210, %l_self_modules_model_modules_3_modules_0_parameters_weight_.expanded : tensor<10x128x58x58xf32>, tensor<128x1x3x3xf32>)
      outs(%input_18.buf : tensor<10x128x56x56xf32>) {
        ^bb0(%in_211: f32, %in_212: f32, %acc_213: f32):
          %v214 = arith.mulf %in_211, %in_212 : f32
          %v215 = arith.addf %v214, %acc_213 : f32
          linalg.yield %v215 : f32
      }
    -> tensor<10x128x56x56xf32>
    %v216.buf = tensor.empty() : tensor<128xf32>
    %v216.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_3_modules_1_buffers_running_var_, %l_self_modules_model_modules_3_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v216.buf : tensor<128xf32>) {
        ^bb0(%in_217: f32, %in_218: f32, %acc_219: f32):
          %v220 = arith.constant 1.0 : f32
          %v221 = arith.constant 9.999999747378752e-06 : f32
          %v222 = arith.addf %v221, %in_217 : f32
          %v223 = math.sqrt %v222 : f32
          %v224 = arith.divf %v220, %v223 : f32
          %v225 = arith.mulf %v224, %in_218 : f32
          linalg.yield %v225 : f32
      }
    -> tensor<128xf32>
    %v226.buf = tensor.empty() : tensor<128xf32>
    %v226.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_3_modules_1_buffers_running_mean_, %l_self_modules_model_modules_3_modules_1_buffers_running_var_, %l_self_modules_model_modules_3_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v226.buf : tensor<128xf32>) {
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
    -> tensor<128xf32>
    %input_18.post = tensor.empty() : tensor<10x128x56x56xf32>
    %input_18.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_18.buf.out, %v216.buf.out, %v226.buf.out, %l_self_modules_model_modules_3_modules_1_parameters_bias_ : tensor<10x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%input_18.post : tensor<10x128x56x56xf32>) {
        ^bb0(%acc_241: f32, %in_238: f32, %in_239: f32, %in_240: f32, %post_242: f32):
          %v243 = arith.mulf %acc_241, %in_238 : f32
          %v244 = arith.subf %v243, %in_239 : f32
          %v245 = arith.addf %v244, %in_240 : f32
          %v246 = arith.maxnumf %init, %v245 : f32
          linalg.yield %v246 : f32
      }
    -> tensor<10x128x56x56xf32>
    %l_self_modules_model_modules_3_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_3_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 128, 1, 1] : tensor<128x128xf32> into tensor<128x128x1x1xf32>
    %v247.empty = tensor.empty() : tensor<10x128x56x1x56xf32>
    %v247.buf = linalg.fill ins(%init : f32) outs(%v247.empty : tensor<10x128x56x1x56xf32>) -> tensor<10x128x56x1x56xf32>
    %v247.shape = tensor.empty() : tensor<56x1xf32>
    %v247.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_18.post.out, %l_self_modules_model_modules_3_modules_3_parameters_weight_.expanded, %v247.shape : tensor<10x128x56x56xf32>, tensor<128x128x1x1xf32>, tensor<56x1xf32>)
      outs(%v247.buf : tensor<10x128x56x1x56xf32>) {
        ^bb0(%in_249: f32, %in_250: f32, %shape_248: f32, %acc_251: f32):
          %v252 = arith.mulf %in_249, %in_250 : f32
          %v253 = arith.addf %v252, %acc_251 : f32
          linalg.yield %v253 : f32
      }
    -> tensor<10x128x56x1x56xf32>
    %v254.buf = tensor.empty() : tensor<128xf32>
    %v254.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_3_modules_4_buffers_running_var_, %l_self_modules_model_modules_3_modules_4_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v254.buf : tensor<128xf32>) {
        ^bb0(%in_255: f32, %in_256: f32, %acc_257: f32):
          %v258 = arith.constant 1.0 : f32
          %v259 = arith.constant 9.999999747378752e-06 : f32
          %v260 = arith.addf %v259, %in_255 : f32
          %v261 = math.sqrt %v260 : f32
          %v262 = arith.divf %v258, %v261 : f32
          %v263 = arith.mulf %v262, %in_256 : f32
          linalg.yield %v263 : f32
      }
    -> tensor<128xf32>
    %v264.buf = tensor.empty() : tensor<128xf32>
    %v264.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_3_modules_4_buffers_running_mean_, %l_self_modules_model_modules_3_modules_4_buffers_running_var_, %l_self_modules_model_modules_3_modules_4_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v264.buf : tensor<128xf32>) {
        ^bb0(%in_265: f32, %in_266: f32, %in_267: f32, %acc_268: f32):
          %v269 = arith.constant 1.0 : f32
          %v270 = arith.constant 9.999999747378752e-06 : f32
          %v271 = arith.addf %v270, %in_266 : f32
          %v272 = math.sqrt %v271 : f32
          %v273 = arith.divf %v269, %v272 : f32
          %v274 = arith.mulf %v273, %in_267 : f32
          %v275 = arith.mulf %v274, %in_265 : f32
          linalg.yield %v275 : f32
      }
    -> tensor<128xf32>
    %v247.post = tensor.empty() : tensor<10x128x56x1x56xf32>
    %v247.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v247.buf.out, %v254.buf.out, %v264.buf.out, %l_self_modules_model_modules_3_modules_4_parameters_bias_ : tensor<10x128x56x1x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v247.post : tensor<10x128x56x1x56xf32>) {
        ^bb0(%acc_279: f32, %in_276: f32, %in_277: f32, %in_278: f32, %post_280: f32):
          %v281 = arith.mulf %acc_279, %in_276 : f32
          %v282 = arith.subf %v281, %in_277 : f32
          %v283 = arith.addf %v282, %in_278 : f32
          %v284 = arith.maxnumf %init, %v283 : f32
          linalg.yield %v284 : f32
      }
    -> tensor<10x128x56x1x56xf32>
    %input_21.buf = tensor.empty() : tensor<10x128x56x56xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v247.post.out : tensor<10x128x56x1x56xf32>)
      outs(%input_21.buf : tensor<10x128x56x56xf32>) {
        ^bb0(%in_285: f32, %acc_286: f32):
          linalg.yield %in_285 : f32
      }
    -> tensor<10x128x56x56xf32>
    %v291 = tensor.pad %input_21.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i287: index, %pad_i288: index, %pad_i289: index, %pad_i290: index):
        tensor.yield %init : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %l_self_modules_model_modules_4_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_4_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [128, 1, 3, 3] : tensor<128x3x3xf32> into tensor<128x1x3x3xf32>
    %input_24.empty = tensor.empty() : tensor<10x128x28x28xf32>
    %input_24.buf = linalg.fill ins(%init : f32) outs(%input_24.empty : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %input_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v291, %l_self_modules_model_modules_4_modules_0_parameters_weight_.expanded : tensor<10x128x58x58xf32>, tensor<128x1x3x3xf32>)
      outs(%input_24.buf : tensor<10x128x28x28xf32>) {
        ^bb0(%in_292: f32, %in_293: f32, %acc_294: f32):
          %v295 = arith.mulf %in_292, %in_293 : f32
          %v296 = arith.addf %v295, %acc_294 : f32
          linalg.yield %v296 : f32
      }
    -> tensor<10x128x28x28xf32>
    %v297.buf = tensor.empty() : tensor<128xf32>
    %v297.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_4_modules_1_buffers_running_var_, %l_self_modules_model_modules_4_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v297.buf : tensor<128xf32>) {
        ^bb0(%in_298: f32, %in_299: f32, %acc_300: f32):
          %v301 = arith.constant 1.0 : f32
          %v302 = arith.constant 9.999999747378752e-06 : f32
          %v303 = arith.addf %v302, %in_298 : f32
          %v304 = math.sqrt %v303 : f32
          %v305 = arith.divf %v301, %v304 : f32
          %v306 = arith.mulf %v305, %in_299 : f32
          linalg.yield %v306 : f32
      }
    -> tensor<128xf32>
    %v307.buf = tensor.empty() : tensor<128xf32>
    %v307.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_4_modules_1_buffers_running_mean_, %l_self_modules_model_modules_4_modules_1_buffers_running_var_, %l_self_modules_model_modules_4_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v307.buf : tensor<128xf32>) {
        ^bb0(%in_308: f32, %in_309: f32, %in_310: f32, %acc_311: f32):
          %v312 = arith.constant 1.0 : f32
          %v313 = arith.constant 9.999999747378752e-06 : f32
          %v314 = arith.addf %v313, %in_309 : f32
          %v315 = math.sqrt %v314 : f32
          %v316 = arith.divf %v312, %v315 : f32
          %v317 = arith.mulf %v316, %in_310 : f32
          %v318 = arith.mulf %v317, %in_308 : f32
          linalg.yield %v318 : f32
      }
    -> tensor<128xf32>
    %input_24.post = tensor.empty() : tensor<10x128x28x28xf32>
    %input_24.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_24.buf.out, %v297.buf.out, %v307.buf.out, %l_self_modules_model_modules_4_modules_1_parameters_bias_ : tensor<10x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%input_24.post : tensor<10x128x28x28xf32>) {
        ^bb0(%acc_322: f32, %in_319: f32, %in_320: f32, %in_321: f32, %post_323: f32):
          %v324 = arith.mulf %acc_322, %in_319 : f32
          %v325 = arith.subf %v324, %in_320 : f32
          %v326 = arith.addf %v325, %in_321 : f32
          %v327 = arith.maxnumf %init, %v326 : f32
          linalg.yield %v327 : f32
      }
    -> tensor<10x128x28x28xf32>
    %l_self_modules_model_modules_4_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_4_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [256, 128, 1, 1] : tensor<256x128xf32> into tensor<256x128x1x1xf32>
    %v328.empty = tensor.empty() : tensor<10x256x28x1x28xf32>
    %v328.buf = linalg.fill ins(%init : f32) outs(%v328.empty : tensor<10x256x28x1x28xf32>) -> tensor<10x256x28x1x28xf32>
    %v328.shape = tensor.empty() : tensor<28x1xf32>
    %v328.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_24.post.out, %l_self_modules_model_modules_4_modules_3_parameters_weight_.expanded, %v328.shape : tensor<10x128x28x28xf32>, tensor<256x128x1x1xf32>, tensor<28x1xf32>)
      outs(%v328.buf : tensor<10x256x28x1x28xf32>) {
        ^bb0(%in_330: f32, %in_331: f32, %shape_329: f32, %acc_332: f32):
          %v333 = arith.mulf %in_330, %in_331 : f32
          %v334 = arith.addf %v333, %acc_332 : f32
          linalg.yield %v334 : f32
      }
    -> tensor<10x256x28x1x28xf32>
    %v335.buf = tensor.empty() : tensor<256xf32>
    %v335.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_4_modules_4_buffers_running_var_, %l_self_modules_model_modules_4_modules_4_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v335.buf : tensor<256xf32>) {
        ^bb0(%in_336: f32, %in_337: f32, %acc_338: f32):
          %v339 = arith.constant 1.0 : f32
          %v340 = arith.constant 9.999999747378752e-06 : f32
          %v341 = arith.addf %v340, %in_336 : f32
          %v342 = math.sqrt %v341 : f32
          %v343 = arith.divf %v339, %v342 : f32
          %v344 = arith.mulf %v343, %in_337 : f32
          linalg.yield %v344 : f32
      }
    -> tensor<256xf32>
    %v345.buf = tensor.empty() : tensor<256xf32>
    %v345.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_4_modules_4_buffers_running_mean_, %l_self_modules_model_modules_4_modules_4_buffers_running_var_, %l_self_modules_model_modules_4_modules_4_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v345.buf : tensor<256xf32>) {
        ^bb0(%in_346: f32, %in_347: f32, %in_348: f32, %acc_349: f32):
          %v350 = arith.constant 1.0 : f32
          %v351 = arith.constant 9.999999747378752e-06 : f32
          %v352 = arith.addf %v351, %in_347 : f32
          %v353 = math.sqrt %v352 : f32
          %v354 = arith.divf %v350, %v353 : f32
          %v355 = arith.mulf %v354, %in_348 : f32
          %v356 = arith.mulf %v355, %in_346 : f32
          linalg.yield %v356 : f32
      }
    -> tensor<256xf32>
    %v328.post = tensor.empty() : tensor<10x256x28x1x28xf32>
    %v328.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v328.buf.out, %v335.buf.out, %v345.buf.out, %l_self_modules_model_modules_4_modules_4_parameters_bias_ : tensor<10x256x28x1x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v328.post : tensor<10x256x28x1x28xf32>) {
        ^bb0(%acc_360: f32, %in_357: f32, %in_358: f32, %in_359: f32, %post_361: f32):
          %v362 = arith.mulf %acc_360, %in_357 : f32
          %v363 = arith.subf %v362, %in_358 : f32
          %v364 = arith.addf %v363, %in_359 : f32
          %v365 = arith.maxnumf %init, %v364 : f32
          linalg.yield %v365 : f32
      }
    -> tensor<10x256x28x1x28xf32>
    %input_27.buf = tensor.empty() : tensor<10x256x28x28xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v328.post.out : tensor<10x256x28x1x28xf32>)
      outs(%input_27.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_366: f32, %acc_367: f32):
          linalg.yield %in_366 : f32
      }
    -> tensor<10x256x28x28xf32>
    %v372 = tensor.pad %input_27.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i368: index, %pad_i369: index, %pad_i370: index, %pad_i371: index):
        tensor.yield %init : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %l_self_modules_model_modules_5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_5_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [256, 1, 3, 3] : tensor<256x3x3xf32> into tensor<256x1x3x3xf32>
    %input_30.empty = tensor.empty() : tensor<10x256x28x28xf32>
    %input_30.buf = linalg.fill ins(%init : f32) outs(%input_30.empty : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v372, %l_self_modules_model_modules_5_modules_0_parameters_weight_.expanded : tensor<10x256x30x30xf32>, tensor<256x1x3x3xf32>)
      outs(%input_30.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_373: f32, %in_374: f32, %acc_375: f32):
          %v376 = arith.mulf %in_373, %in_374 : f32
          %v377 = arith.addf %v376, %acc_375 : f32
          linalg.yield %v377 : f32
      }
    -> tensor<10x256x28x28xf32>
    %v378.buf = tensor.empty() : tensor<256xf32>
    %v378.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_5_modules_1_buffers_running_var_, %l_self_modules_model_modules_5_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v378.buf : tensor<256xf32>) {
        ^bb0(%in_379: f32, %in_380: f32, %acc_381: f32):
          %v382 = arith.constant 1.0 : f32
          %v383 = arith.constant 9.999999747378752e-06 : f32
          %v384 = arith.addf %v383, %in_379 : f32
          %v385 = math.sqrt %v384 : f32
          %v386 = arith.divf %v382, %v385 : f32
          %v387 = arith.mulf %v386, %in_380 : f32
          linalg.yield %v387 : f32
      }
    -> tensor<256xf32>
    %v388.buf = tensor.empty() : tensor<256xf32>
    %v388.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_5_modules_1_buffers_running_mean_, %l_self_modules_model_modules_5_modules_1_buffers_running_var_, %l_self_modules_model_modules_5_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v388.buf : tensor<256xf32>) {
        ^bb0(%in_389: f32, %in_390: f32, %in_391: f32, %acc_392: f32):
          %v393 = arith.constant 1.0 : f32
          %v394 = arith.constant 9.999999747378752e-06 : f32
          %v395 = arith.addf %v394, %in_390 : f32
          %v396 = math.sqrt %v395 : f32
          %v397 = arith.divf %v393, %v396 : f32
          %v398 = arith.mulf %v397, %in_391 : f32
          %v399 = arith.mulf %v398, %in_389 : f32
          linalg.yield %v399 : f32
      }
    -> tensor<256xf32>
    %input_30.post = tensor.empty() : tensor<10x256x28x28xf32>
    %input_30.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_30.buf.out, %v378.buf.out, %v388.buf.out, %l_self_modules_model_modules_5_modules_1_parameters_bias_ : tensor<10x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%input_30.post : tensor<10x256x28x28xf32>) {
        ^bb0(%acc_403: f32, %in_400: f32, %in_401: f32, %in_402: f32, %post_404: f32):
          %v405 = arith.mulf %acc_403, %in_400 : f32
          %v406 = arith.subf %v405, %in_401 : f32
          %v407 = arith.addf %v406, %in_402 : f32
          %v408 = arith.maxnumf %init, %v407 : f32
          linalg.yield %v408 : f32
      }
    -> tensor<10x256x28x28xf32>
    %l_self_modules_model_modules_5_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_5_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [256, 256, 1, 1] : tensor<256x256xf32> into tensor<256x256x1x1xf32>
    %v409.empty = tensor.empty() : tensor<10x256x28x1x28xf32>
    %v409.buf = linalg.fill ins(%init : f32) outs(%v409.empty : tensor<10x256x28x1x28xf32>) -> tensor<10x256x28x1x28xf32>
    %v409.shape = tensor.empty() : tensor<28x1xf32>
    %v409.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_30.post.out, %l_self_modules_model_modules_5_modules_3_parameters_weight_.expanded, %v409.shape : tensor<10x256x28x28xf32>, tensor<256x256x1x1xf32>, tensor<28x1xf32>)
      outs(%v409.buf : tensor<10x256x28x1x28xf32>) {
        ^bb0(%in_411: f32, %in_412: f32, %shape_410: f32, %acc_413: f32):
          %v414 = arith.mulf %in_411, %in_412 : f32
          %v415 = arith.addf %v414, %acc_413 : f32
          linalg.yield %v415 : f32
      }
    -> tensor<10x256x28x1x28xf32>
    %v416.buf = tensor.empty() : tensor<256xf32>
    %v416.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_5_modules_4_buffers_running_var_, %l_self_modules_model_modules_5_modules_4_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v416.buf : tensor<256xf32>) {
        ^bb0(%in_417: f32, %in_418: f32, %acc_419: f32):
          %v420 = arith.constant 1.0 : f32
          %v421 = arith.constant 9.999999747378752e-06 : f32
          %v422 = arith.addf %v421, %in_417 : f32
          %v423 = math.sqrt %v422 : f32
          %v424 = arith.divf %v420, %v423 : f32
          %v425 = arith.mulf %v424, %in_418 : f32
          linalg.yield %v425 : f32
      }
    -> tensor<256xf32>
    %v426.buf = tensor.empty() : tensor<256xf32>
    %v426.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_5_modules_4_buffers_running_mean_, %l_self_modules_model_modules_5_modules_4_buffers_running_var_, %l_self_modules_model_modules_5_modules_4_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v426.buf : tensor<256xf32>) {
        ^bb0(%in_427: f32, %in_428: f32, %in_429: f32, %acc_430: f32):
          %v431 = arith.constant 1.0 : f32
          %v432 = arith.constant 9.999999747378752e-06 : f32
          %v433 = arith.addf %v432, %in_428 : f32
          %v434 = math.sqrt %v433 : f32
          %v435 = arith.divf %v431, %v434 : f32
          %v436 = arith.mulf %v435, %in_429 : f32
          %v437 = arith.mulf %v436, %in_427 : f32
          linalg.yield %v437 : f32
      }
    -> tensor<256xf32>
    %v409.post = tensor.empty() : tensor<10x256x28x1x28xf32>
    %v409.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v409.buf.out, %v416.buf.out, %v426.buf.out, %l_self_modules_model_modules_5_modules_4_parameters_bias_ : tensor<10x256x28x1x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v409.post : tensor<10x256x28x1x28xf32>) {
        ^bb0(%acc_441: f32, %in_438: f32, %in_439: f32, %in_440: f32, %post_442: f32):
          %v443 = arith.mulf %acc_441, %in_438 : f32
          %v444 = arith.subf %v443, %in_439 : f32
          %v445 = arith.addf %v444, %in_440 : f32
          %v446 = arith.maxnumf %init, %v445 : f32
          linalg.yield %v446 : f32
      }
    -> tensor<10x256x28x1x28xf32>
    %input_33.buf = tensor.empty() : tensor<10x256x28x28xf32>
    %input_33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v409.post.out : tensor<10x256x28x1x28xf32>)
      outs(%input_33.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_447: f32, %acc_448: f32):
          linalg.yield %in_447 : f32
      }
    -> tensor<10x256x28x28xf32>
    %v453 = tensor.pad %input_33.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i449: index, %pad_i450: index, %pad_i451: index, %pad_i452: index):
        tensor.yield %init : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %l_self_modules_model_modules_6_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_6_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [256, 1, 3, 3] : tensor<256x3x3xf32> into tensor<256x1x3x3xf32>
    %input_36.empty = tensor.empty() : tensor<10x256x14x14xf32>
    %input_36.buf = linalg.fill ins(%init : f32) outs(%input_36.empty : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %input_36.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v453, %l_self_modules_model_modules_6_modules_0_parameters_weight_.expanded : tensor<10x256x30x30xf32>, tensor<256x1x3x3xf32>)
      outs(%input_36.buf : tensor<10x256x14x14xf32>) {
        ^bb0(%in_454: f32, %in_455: f32, %acc_456: f32):
          %v457 = arith.mulf %in_454, %in_455 : f32
          %v458 = arith.addf %v457, %acc_456 : f32
          linalg.yield %v458 : f32
      }
    -> tensor<10x256x14x14xf32>
    %v459.buf = tensor.empty() : tensor<256xf32>
    %v459.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_6_modules_1_buffers_running_var_, %l_self_modules_model_modules_6_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
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
      ins(%l_self_modules_model_modules_6_modules_1_buffers_running_mean_, %l_self_modules_model_modules_6_modules_1_buffers_running_var_, %l_self_modules_model_modules_6_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
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
    %input_36.post = tensor.empty() : tensor<10x256x14x14xf32>
    %input_36.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_36.buf.out, %v459.buf.out, %v469.buf.out, %l_self_modules_model_modules_6_modules_1_parameters_bias_ : tensor<10x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%input_36.post : tensor<10x256x14x14xf32>) {
        ^bb0(%acc_484: f32, %in_481: f32, %in_482: f32, %in_483: f32, %post_485: f32):
          %v486 = arith.mulf %acc_484, %in_481 : f32
          %v487 = arith.subf %v486, %in_482 : f32
          %v488 = arith.addf %v487, %in_483 : f32
          %v489 = arith.maxnumf %init, %v488 : f32
          linalg.yield %v489 : f32
      }
    -> tensor<10x256x14x14xf32>
    %l_self_modules_model_modules_6_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_6_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 256, 1, 1] : tensor<512x256xf32> into tensor<512x256x1x1xf32>
    %v490.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v490.buf = linalg.fill ins(%init : f32) outs(%v490.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v490.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_36.post.out, %l_self_modules_model_modules_6_modules_3_parameters_weight_.expanded : tensor<10x256x14x14xf32>, tensor<512x256x1x1xf32>)
      outs(%v490.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_491: f32, %in_492: f32, %acc_493: f32):
          %v494 = arith.mulf %in_491, %in_492 : f32
          %v495 = arith.addf %v494, %acc_493 : f32
          linalg.yield %v495 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v496.buf = tensor.empty() : tensor<512xf32>
    %v496.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_6_modules_4_buffers_running_var_, %l_self_modules_model_modules_6_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v496.buf : tensor<512xf32>) {
        ^bb0(%in_497: f32, %in_498: f32, %acc_499: f32):
          %v500 = arith.constant 1.0 : f32
          %v501 = arith.constant 9.999999747378752e-06 : f32
          %v502 = arith.addf %v501, %in_497 : f32
          %v503 = math.sqrt %v502 : f32
          %v504 = arith.divf %v500, %v503 : f32
          %v505 = arith.mulf %v504, %in_498 : f32
          linalg.yield %v505 : f32
      }
    -> tensor<512xf32>
    %v506.buf = tensor.empty() : tensor<512xf32>
    %v506.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_6_modules_4_buffers_running_mean_, %l_self_modules_model_modules_6_modules_4_buffers_running_var_, %l_self_modules_model_modules_6_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v506.buf : tensor<512xf32>) {
        ^bb0(%in_507: f32, %in_508: f32, %in_509: f32, %acc_510: f32):
          %v511 = arith.constant 1.0 : f32
          %v512 = arith.constant 9.999999747378752e-06 : f32
          %v513 = arith.addf %v512, %in_508 : f32
          %v514 = math.sqrt %v513 : f32
          %v515 = arith.divf %v511, %v514 : f32
          %v516 = arith.mulf %v515, %in_509 : f32
          %v517 = arith.mulf %v516, %in_507 : f32
          linalg.yield %v517 : f32
      }
    -> tensor<512xf32>
    %v490.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v490.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v490.buf.out, %v496.buf.out, %v506.buf.out, %l_self_modules_model_modules_6_modules_4_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v490.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_521: f32, %in_518: f32, %in_519: f32, %in_520: f32, %post_522: f32):
          %v523 = arith.mulf %acc_521, %in_518 : f32
          %v524 = arith.subf %v523, %in_519 : f32
          %v525 = arith.addf %v524, %in_520 : f32
          %v526 = arith.maxnumf %init, %v525 : f32
          linalg.yield %v526 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_39.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_39.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v490.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_39.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_527: f32, %acc_528: f32):
          linalg.yield %in_527 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v533 = tensor.pad %input_39.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i529: index, %pad_i530: index, %pad_i531: index, %pad_i532: index):
        tensor.yield %init : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %l_self_modules_model_modules_7_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_7_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [512, 1, 3, 3] : tensor<512x3x3xf32> into tensor<512x1x3x3xf32>
    %input_42.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_42.buf = linalg.fill ins(%init : f32) outs(%input_42.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_42.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v533, %l_self_modules_model_modules_7_modules_0_parameters_weight_.expanded : tensor<10x512x16x16xf32>, tensor<512x1x3x3xf32>)
      outs(%input_42.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_534: f32, %in_535: f32, %acc_536: f32):
          %v537 = arith.mulf %in_534, %in_535 : f32
          %v538 = arith.addf %v537, %acc_536 : f32
          linalg.yield %v538 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v539.buf = tensor.empty() : tensor<512xf32>
    %v539.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_7_modules_1_buffers_running_var_, %l_self_modules_model_modules_7_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v539.buf : tensor<512xf32>) {
        ^bb0(%in_540: f32, %in_541: f32, %acc_542: f32):
          %v543 = arith.constant 1.0 : f32
          %v544 = arith.constant 9.999999747378752e-06 : f32
          %v545 = arith.addf %v544, %in_540 : f32
          %v546 = math.sqrt %v545 : f32
          %v547 = arith.divf %v543, %v546 : f32
          %v548 = arith.mulf %v547, %in_541 : f32
          linalg.yield %v548 : f32
      }
    -> tensor<512xf32>
    %v549.buf = tensor.empty() : tensor<512xf32>
    %v549.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_7_modules_1_buffers_running_mean_, %l_self_modules_model_modules_7_modules_1_buffers_running_var_, %l_self_modules_model_modules_7_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v549.buf : tensor<512xf32>) {
        ^bb0(%in_550: f32, %in_551: f32, %in_552: f32, %acc_553: f32):
          %v554 = arith.constant 1.0 : f32
          %v555 = arith.constant 9.999999747378752e-06 : f32
          %v556 = arith.addf %v555, %in_551 : f32
          %v557 = math.sqrt %v556 : f32
          %v558 = arith.divf %v554, %v557 : f32
          %v559 = arith.mulf %v558, %in_552 : f32
          %v560 = arith.mulf %v559, %in_550 : f32
          linalg.yield %v560 : f32
      }
    -> tensor<512xf32>
    %input_42.post = tensor.empty() : tensor<10x512x14x14xf32>
    %input_42.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_42.buf.out, %v539.buf.out, %v549.buf.out, %l_self_modules_model_modules_7_modules_1_parameters_bias_ : tensor<10x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_42.post : tensor<10x512x14x14xf32>) {
        ^bb0(%acc_564: f32, %in_561: f32, %in_562: f32, %in_563: f32, %post_565: f32):
          %v566 = arith.mulf %acc_564, %in_561 : f32
          %v567 = arith.subf %v566, %in_562 : f32
          %v568 = arith.addf %v567, %in_563 : f32
          %v569 = arith.maxnumf %init, %v568 : f32
          linalg.yield %v569 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_model_modules_7_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_7_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 512, 1, 1] : tensor<512x512xf32> into tensor<512x512x1x1xf32>
    %v570.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v570.buf = linalg.fill ins(%init : f32) outs(%v570.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v570.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_42.post.out, %l_self_modules_model_modules_7_modules_3_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>)
      outs(%v570.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_571: f32, %in_572: f32, %acc_573: f32):
          %v574 = arith.mulf %in_571, %in_572 : f32
          %v575 = arith.addf %v574, %acc_573 : f32
          linalg.yield %v575 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v576.buf = tensor.empty() : tensor<512xf32>
    %v576.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_7_modules_4_buffers_running_var_, %l_self_modules_model_modules_7_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v576.buf : tensor<512xf32>) {
        ^bb0(%in_577: f32, %in_578: f32, %acc_579: f32):
          %v580 = arith.constant 1.0 : f32
          %v581 = arith.constant 9.999999747378752e-06 : f32
          %v582 = arith.addf %v581, %in_577 : f32
          %v583 = math.sqrt %v582 : f32
          %v584 = arith.divf %v580, %v583 : f32
          %v585 = arith.mulf %v584, %in_578 : f32
          linalg.yield %v585 : f32
      }
    -> tensor<512xf32>
    %v586.buf = tensor.empty() : tensor<512xf32>
    %v586.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_7_modules_4_buffers_running_mean_, %l_self_modules_model_modules_7_modules_4_buffers_running_var_, %l_self_modules_model_modules_7_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v586.buf : tensor<512xf32>) {
        ^bb0(%in_587: f32, %in_588: f32, %in_589: f32, %acc_590: f32):
          %v591 = arith.constant 1.0 : f32
          %v592 = arith.constant 9.999999747378752e-06 : f32
          %v593 = arith.addf %v592, %in_588 : f32
          %v594 = math.sqrt %v593 : f32
          %v595 = arith.divf %v591, %v594 : f32
          %v596 = arith.mulf %v595, %in_589 : f32
          %v597 = arith.mulf %v596, %in_587 : f32
          linalg.yield %v597 : f32
      }
    -> tensor<512xf32>
    %v570.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v570.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v570.buf.out, %v576.buf.out, %v586.buf.out, %l_self_modules_model_modules_7_modules_4_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v570.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_601: f32, %in_598: f32, %in_599: f32, %in_600: f32, %post_602: f32):
          %v603 = arith.mulf %acc_601, %in_598 : f32
          %v604 = arith.subf %v603, %in_599 : f32
          %v605 = arith.addf %v604, %in_600 : f32
          %v606 = arith.maxnumf %init, %v605 : f32
          linalg.yield %v606 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_45.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v570.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_45.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_607: f32, %acc_608: f32):
          linalg.yield %in_607 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v613 = tensor.pad %input_45.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i609: index, %pad_i610: index, %pad_i611: index, %pad_i612: index):
        tensor.yield %init : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %l_self_modules_model_modules_8_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_8_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [512, 1, 3, 3] : tensor<512x3x3xf32> into tensor<512x1x3x3xf32>
    %input_48.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_48.buf = linalg.fill ins(%init : f32) outs(%input_48.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v613, %l_self_modules_model_modules_8_modules_0_parameters_weight_.expanded : tensor<10x512x16x16xf32>, tensor<512x1x3x3xf32>)
      outs(%input_48.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_614: f32, %in_615: f32, %acc_616: f32):
          %v617 = arith.mulf %in_614, %in_615 : f32
          %v618 = arith.addf %v617, %acc_616 : f32
          linalg.yield %v618 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v619.buf = tensor.empty() : tensor<512xf32>
    %v619.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_8_modules_1_buffers_running_var_, %l_self_modules_model_modules_8_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v619.buf : tensor<512xf32>) {
        ^bb0(%in_620: f32, %in_621: f32, %acc_622: f32):
          %v623 = arith.constant 1.0 : f32
          %v624 = arith.constant 9.999999747378752e-06 : f32
          %v625 = arith.addf %v624, %in_620 : f32
          %v626 = math.sqrt %v625 : f32
          %v627 = arith.divf %v623, %v626 : f32
          %v628 = arith.mulf %v627, %in_621 : f32
          linalg.yield %v628 : f32
      }
    -> tensor<512xf32>
    %v629.buf = tensor.empty() : tensor<512xf32>
    %v629.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_8_modules_1_buffers_running_mean_, %l_self_modules_model_modules_8_modules_1_buffers_running_var_, %l_self_modules_model_modules_8_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v629.buf : tensor<512xf32>) {
        ^bb0(%in_630: f32, %in_631: f32, %in_632: f32, %acc_633: f32):
          %v634 = arith.constant 1.0 : f32
          %v635 = arith.constant 9.999999747378752e-06 : f32
          %v636 = arith.addf %v635, %in_631 : f32
          %v637 = math.sqrt %v636 : f32
          %v638 = arith.divf %v634, %v637 : f32
          %v639 = arith.mulf %v638, %in_632 : f32
          %v640 = arith.mulf %v639, %in_630 : f32
          linalg.yield %v640 : f32
      }
    -> tensor<512xf32>
    %input_48.post = tensor.empty() : tensor<10x512x14x14xf32>
    %input_48.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_48.buf.out, %v619.buf.out, %v629.buf.out, %l_self_modules_model_modules_8_modules_1_parameters_bias_ : tensor<10x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_48.post : tensor<10x512x14x14xf32>) {
        ^bb0(%acc_644: f32, %in_641: f32, %in_642: f32, %in_643: f32, %post_645: f32):
          %v646 = arith.mulf %acc_644, %in_641 : f32
          %v647 = arith.subf %v646, %in_642 : f32
          %v648 = arith.addf %v647, %in_643 : f32
          %v649 = arith.maxnumf %init, %v648 : f32
          linalg.yield %v649 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_model_modules_8_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_8_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 512, 1, 1] : tensor<512x512xf32> into tensor<512x512x1x1xf32>
    %v650.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v650.buf = linalg.fill ins(%init : f32) outs(%v650.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v650.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_48.post.out, %l_self_modules_model_modules_8_modules_3_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>)
      outs(%v650.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_651: f32, %in_652: f32, %acc_653: f32):
          %v654 = arith.mulf %in_651, %in_652 : f32
          %v655 = arith.addf %v654, %acc_653 : f32
          linalg.yield %v655 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v656.buf = tensor.empty() : tensor<512xf32>
    %v656.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_8_modules_4_buffers_running_var_, %l_self_modules_model_modules_8_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v656.buf : tensor<512xf32>) {
        ^bb0(%in_657: f32, %in_658: f32, %acc_659: f32):
          %v660 = arith.constant 1.0 : f32
          %v661 = arith.constant 9.999999747378752e-06 : f32
          %v662 = arith.addf %v661, %in_657 : f32
          %v663 = math.sqrt %v662 : f32
          %v664 = arith.divf %v660, %v663 : f32
          %v665 = arith.mulf %v664, %in_658 : f32
          linalg.yield %v665 : f32
      }
    -> tensor<512xf32>
    %v666.buf = tensor.empty() : tensor<512xf32>
    %v666.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_8_modules_4_buffers_running_mean_, %l_self_modules_model_modules_8_modules_4_buffers_running_var_, %l_self_modules_model_modules_8_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v666.buf : tensor<512xf32>) {
        ^bb0(%in_667: f32, %in_668: f32, %in_669: f32, %acc_670: f32):
          %v671 = arith.constant 1.0 : f32
          %v672 = arith.constant 9.999999747378752e-06 : f32
          %v673 = arith.addf %v672, %in_668 : f32
          %v674 = math.sqrt %v673 : f32
          %v675 = arith.divf %v671, %v674 : f32
          %v676 = arith.mulf %v675, %in_669 : f32
          %v677 = arith.mulf %v676, %in_667 : f32
          linalg.yield %v677 : f32
      }
    -> tensor<512xf32>
    %v650.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v650.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v650.buf.out, %v656.buf.out, %v666.buf.out, %l_self_modules_model_modules_8_modules_4_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v650.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_681: f32, %in_678: f32, %in_679: f32, %in_680: f32, %post_682: f32):
          %v683 = arith.mulf %acc_681, %in_678 : f32
          %v684 = arith.subf %v683, %in_679 : f32
          %v685 = arith.addf %v684, %in_680 : f32
          %v686 = arith.maxnumf %init, %v685 : f32
          linalg.yield %v686 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_51.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v650.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_51.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_687: f32, %acc_688: f32):
          linalg.yield %in_687 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v693 = tensor.pad %input_51.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i689: index, %pad_i690: index, %pad_i691: index, %pad_i692: index):
        tensor.yield %init : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %l_self_modules_model_modules_9_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_9_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [512, 1, 3, 3] : tensor<512x3x3xf32> into tensor<512x1x3x3xf32>
    %input_54.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_54.buf = linalg.fill ins(%init : f32) outs(%input_54.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v693, %l_self_modules_model_modules_9_modules_0_parameters_weight_.expanded : tensor<10x512x16x16xf32>, tensor<512x1x3x3xf32>)
      outs(%input_54.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_694: f32, %in_695: f32, %acc_696: f32):
          %v697 = arith.mulf %in_694, %in_695 : f32
          %v698 = arith.addf %v697, %acc_696 : f32
          linalg.yield %v698 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v699.buf = tensor.empty() : tensor<512xf32>
    %v699.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_9_modules_1_buffers_running_var_, %l_self_modules_model_modules_9_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v699.buf : tensor<512xf32>) {
        ^bb0(%in_700: f32, %in_701: f32, %acc_702: f32):
          %v703 = arith.constant 1.0 : f32
          %v704 = arith.constant 9.999999747378752e-06 : f32
          %v705 = arith.addf %v704, %in_700 : f32
          %v706 = math.sqrt %v705 : f32
          %v707 = arith.divf %v703, %v706 : f32
          %v708 = arith.mulf %v707, %in_701 : f32
          linalg.yield %v708 : f32
      }
    -> tensor<512xf32>
    %v709.buf = tensor.empty() : tensor<512xf32>
    %v709.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_9_modules_1_buffers_running_mean_, %l_self_modules_model_modules_9_modules_1_buffers_running_var_, %l_self_modules_model_modules_9_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v709.buf : tensor<512xf32>) {
        ^bb0(%in_710: f32, %in_711: f32, %in_712: f32, %acc_713: f32):
          %v714 = arith.constant 1.0 : f32
          %v715 = arith.constant 9.999999747378752e-06 : f32
          %v716 = arith.addf %v715, %in_711 : f32
          %v717 = math.sqrt %v716 : f32
          %v718 = arith.divf %v714, %v717 : f32
          %v719 = arith.mulf %v718, %in_712 : f32
          %v720 = arith.mulf %v719, %in_710 : f32
          linalg.yield %v720 : f32
      }
    -> tensor<512xf32>
    %input_54.post = tensor.empty() : tensor<10x512x14x14xf32>
    %input_54.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_54.buf.out, %v699.buf.out, %v709.buf.out, %l_self_modules_model_modules_9_modules_1_parameters_bias_ : tensor<10x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_54.post : tensor<10x512x14x14xf32>) {
        ^bb0(%acc_724: f32, %in_721: f32, %in_722: f32, %in_723: f32, %post_725: f32):
          %v726 = arith.mulf %acc_724, %in_721 : f32
          %v727 = arith.subf %v726, %in_722 : f32
          %v728 = arith.addf %v727, %in_723 : f32
          %v729 = arith.maxnumf %init, %v728 : f32
          linalg.yield %v729 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_model_modules_9_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_9_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 512, 1, 1] : tensor<512x512xf32> into tensor<512x512x1x1xf32>
    %v730.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v730.buf = linalg.fill ins(%init : f32) outs(%v730.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v730.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_54.post.out, %l_self_modules_model_modules_9_modules_3_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>)
      outs(%v730.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_731: f32, %in_732: f32, %acc_733: f32):
          %v734 = arith.mulf %in_731, %in_732 : f32
          %v735 = arith.addf %v734, %acc_733 : f32
          linalg.yield %v735 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v736.buf = tensor.empty() : tensor<512xf32>
    %v736.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_9_modules_4_buffers_running_var_, %l_self_modules_model_modules_9_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v736.buf : tensor<512xf32>) {
        ^bb0(%in_737: f32, %in_738: f32, %acc_739: f32):
          %v740 = arith.constant 1.0 : f32
          %v741 = arith.constant 9.999999747378752e-06 : f32
          %v742 = arith.addf %v741, %in_737 : f32
          %v743 = math.sqrt %v742 : f32
          %v744 = arith.divf %v740, %v743 : f32
          %v745 = arith.mulf %v744, %in_738 : f32
          linalg.yield %v745 : f32
      }
    -> tensor<512xf32>
    %v746.buf = tensor.empty() : tensor<512xf32>
    %v746.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_9_modules_4_buffers_running_mean_, %l_self_modules_model_modules_9_modules_4_buffers_running_var_, %l_self_modules_model_modules_9_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v746.buf : tensor<512xf32>) {
        ^bb0(%in_747: f32, %in_748: f32, %in_749: f32, %acc_750: f32):
          %v751 = arith.constant 1.0 : f32
          %v752 = arith.constant 9.999999747378752e-06 : f32
          %v753 = arith.addf %v752, %in_748 : f32
          %v754 = math.sqrt %v753 : f32
          %v755 = arith.divf %v751, %v754 : f32
          %v756 = arith.mulf %v755, %in_749 : f32
          %v757 = arith.mulf %v756, %in_747 : f32
          linalg.yield %v757 : f32
      }
    -> tensor<512xf32>
    %v730.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v730.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v730.buf.out, %v736.buf.out, %v746.buf.out, %l_self_modules_model_modules_9_modules_4_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v730.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_761: f32, %in_758: f32, %in_759: f32, %in_760: f32, %post_762: f32):
          %v763 = arith.mulf %acc_761, %in_758 : f32
          %v764 = arith.subf %v763, %in_759 : f32
          %v765 = arith.addf %v764, %in_760 : f32
          %v766 = arith.maxnumf %init, %v765 : f32
          linalg.yield %v766 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_57.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_57.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v730.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_57.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_767: f32, %acc_768: f32):
          linalg.yield %in_767 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v773 = tensor.pad %input_57.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i769: index, %pad_i770: index, %pad_i771: index, %pad_i772: index):
        tensor.yield %init : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %l_self_modules_model_modules_10_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_10_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [512, 1, 3, 3] : tensor<512x3x3xf32> into tensor<512x1x3x3xf32>
    %input_60.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_60.buf = linalg.fill ins(%init : f32) outs(%input_60.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_60.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v773, %l_self_modules_model_modules_10_modules_0_parameters_weight_.expanded : tensor<10x512x16x16xf32>, tensor<512x1x3x3xf32>)
      outs(%input_60.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_774: f32, %in_775: f32, %acc_776: f32):
          %v777 = arith.mulf %in_774, %in_775 : f32
          %v778 = arith.addf %v777, %acc_776 : f32
          linalg.yield %v778 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v779.buf = tensor.empty() : tensor<512xf32>
    %v779.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_10_modules_1_buffers_running_var_, %l_self_modules_model_modules_10_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v779.buf : tensor<512xf32>) {
        ^bb0(%in_780: f32, %in_781: f32, %acc_782: f32):
          %v783 = arith.constant 1.0 : f32
          %v784 = arith.constant 9.999999747378752e-06 : f32
          %v785 = arith.addf %v784, %in_780 : f32
          %v786 = math.sqrt %v785 : f32
          %v787 = arith.divf %v783, %v786 : f32
          %v788 = arith.mulf %v787, %in_781 : f32
          linalg.yield %v788 : f32
      }
    -> tensor<512xf32>
    %v789.buf = tensor.empty() : tensor<512xf32>
    %v789.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_10_modules_1_buffers_running_mean_, %l_self_modules_model_modules_10_modules_1_buffers_running_var_, %l_self_modules_model_modules_10_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v789.buf : tensor<512xf32>) {
        ^bb0(%in_790: f32, %in_791: f32, %in_792: f32, %acc_793: f32):
          %v794 = arith.constant 1.0 : f32
          %v795 = arith.constant 9.999999747378752e-06 : f32
          %v796 = arith.addf %v795, %in_791 : f32
          %v797 = math.sqrt %v796 : f32
          %v798 = arith.divf %v794, %v797 : f32
          %v799 = arith.mulf %v798, %in_792 : f32
          %v800 = arith.mulf %v799, %in_790 : f32
          linalg.yield %v800 : f32
      }
    -> tensor<512xf32>
    %input_60.post = tensor.empty() : tensor<10x512x14x14xf32>
    %input_60.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_60.buf.out, %v779.buf.out, %v789.buf.out, %l_self_modules_model_modules_10_modules_1_parameters_bias_ : tensor<10x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_60.post : tensor<10x512x14x14xf32>) {
        ^bb0(%acc_804: f32, %in_801: f32, %in_802: f32, %in_803: f32, %post_805: f32):
          %v806 = arith.mulf %acc_804, %in_801 : f32
          %v807 = arith.subf %v806, %in_802 : f32
          %v808 = arith.addf %v807, %in_803 : f32
          %v809 = arith.maxnumf %init, %v808 : f32
          linalg.yield %v809 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_model_modules_10_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_10_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 512, 1, 1] : tensor<512x512xf32> into tensor<512x512x1x1xf32>
    %v810.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v810.buf = linalg.fill ins(%init : f32) outs(%v810.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v810.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_60.post.out, %l_self_modules_model_modules_10_modules_3_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>)
      outs(%v810.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_811: f32, %in_812: f32, %acc_813: f32):
          %v814 = arith.mulf %in_811, %in_812 : f32
          %v815 = arith.addf %v814, %acc_813 : f32
          linalg.yield %v815 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v816.buf = tensor.empty() : tensor<512xf32>
    %v816.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_10_modules_4_buffers_running_var_, %l_self_modules_model_modules_10_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v816.buf : tensor<512xf32>) {
        ^bb0(%in_817: f32, %in_818: f32, %acc_819: f32):
          %v820 = arith.constant 1.0 : f32
          %v821 = arith.constant 9.999999747378752e-06 : f32
          %v822 = arith.addf %v821, %in_817 : f32
          %v823 = math.sqrt %v822 : f32
          %v824 = arith.divf %v820, %v823 : f32
          %v825 = arith.mulf %v824, %in_818 : f32
          linalg.yield %v825 : f32
      }
    -> tensor<512xf32>
    %v826.buf = tensor.empty() : tensor<512xf32>
    %v826.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_10_modules_4_buffers_running_mean_, %l_self_modules_model_modules_10_modules_4_buffers_running_var_, %l_self_modules_model_modules_10_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v826.buf : tensor<512xf32>) {
        ^bb0(%in_827: f32, %in_828: f32, %in_829: f32, %acc_830: f32):
          %v831 = arith.constant 1.0 : f32
          %v832 = arith.constant 9.999999747378752e-06 : f32
          %v833 = arith.addf %v832, %in_828 : f32
          %v834 = math.sqrt %v833 : f32
          %v835 = arith.divf %v831, %v834 : f32
          %v836 = arith.mulf %v835, %in_829 : f32
          %v837 = arith.mulf %v836, %in_827 : f32
          linalg.yield %v837 : f32
      }
    -> tensor<512xf32>
    %v810.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v810.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v810.buf.out, %v816.buf.out, %v826.buf.out, %l_self_modules_model_modules_10_modules_4_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v810.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_841: f32, %in_838: f32, %in_839: f32, %in_840: f32, %post_842: f32):
          %v843 = arith.mulf %acc_841, %in_838 : f32
          %v844 = arith.subf %v843, %in_839 : f32
          %v845 = arith.addf %v844, %in_840 : f32
          %v846 = arith.maxnumf %init, %v845 : f32
          linalg.yield %v846 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_63.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_63.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v810.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_63.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_847: f32, %acc_848: f32):
          linalg.yield %in_847 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v853 = tensor.pad %input_63.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i849: index, %pad_i850: index, %pad_i851: index, %pad_i852: index):
        tensor.yield %init : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %l_self_modules_model_modules_11_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_11_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [512, 1, 3, 3] : tensor<512x3x3xf32> into tensor<512x1x3x3xf32>
    %input_66.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_66.buf = linalg.fill ins(%init : f32) outs(%input_66.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_66.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v853, %l_self_modules_model_modules_11_modules_0_parameters_weight_.expanded : tensor<10x512x16x16xf32>, tensor<512x1x3x3xf32>)
      outs(%input_66.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_854: f32, %in_855: f32, %acc_856: f32):
          %v857 = arith.mulf %in_854, %in_855 : f32
          %v858 = arith.addf %v857, %acc_856 : f32
          linalg.yield %v858 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v859.buf = tensor.empty() : tensor<512xf32>
    %v859.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_11_modules_1_buffers_running_var_, %l_self_modules_model_modules_11_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v859.buf : tensor<512xf32>) {
        ^bb0(%in_860: f32, %in_861: f32, %acc_862: f32):
          %v863 = arith.constant 1.0 : f32
          %v864 = arith.constant 9.999999747378752e-06 : f32
          %v865 = arith.addf %v864, %in_860 : f32
          %v866 = math.sqrt %v865 : f32
          %v867 = arith.divf %v863, %v866 : f32
          %v868 = arith.mulf %v867, %in_861 : f32
          linalg.yield %v868 : f32
      }
    -> tensor<512xf32>
    %v869.buf = tensor.empty() : tensor<512xf32>
    %v869.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_11_modules_1_buffers_running_mean_, %l_self_modules_model_modules_11_modules_1_buffers_running_var_, %l_self_modules_model_modules_11_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v869.buf : tensor<512xf32>) {
        ^bb0(%in_870: f32, %in_871: f32, %in_872: f32, %acc_873: f32):
          %v874 = arith.constant 1.0 : f32
          %v875 = arith.constant 9.999999747378752e-06 : f32
          %v876 = arith.addf %v875, %in_871 : f32
          %v877 = math.sqrt %v876 : f32
          %v878 = arith.divf %v874, %v877 : f32
          %v879 = arith.mulf %v878, %in_872 : f32
          %v880 = arith.mulf %v879, %in_870 : f32
          linalg.yield %v880 : f32
      }
    -> tensor<512xf32>
    %input_66.post = tensor.empty() : tensor<10x512x14x14xf32>
    %input_66.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_66.buf.out, %v859.buf.out, %v869.buf.out, %l_self_modules_model_modules_11_modules_1_parameters_bias_ : tensor<10x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_66.post : tensor<10x512x14x14xf32>) {
        ^bb0(%acc_884: f32, %in_881: f32, %in_882: f32, %in_883: f32, %post_885: f32):
          %v886 = arith.mulf %acc_884, %in_881 : f32
          %v887 = arith.subf %v886, %in_882 : f32
          %v888 = arith.addf %v887, %in_883 : f32
          %v889 = arith.maxnumf %init, %v888 : f32
          linalg.yield %v889 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_model_modules_11_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_11_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [512, 512, 1, 1] : tensor<512x512xf32> into tensor<512x512x1x1xf32>
    %v890.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v890.buf = linalg.fill ins(%init : f32) outs(%v890.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v890.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_66.post.out, %l_self_modules_model_modules_11_modules_3_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>)
      outs(%v890.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_891: f32, %in_892: f32, %acc_893: f32):
          %v894 = arith.mulf %in_891, %in_892 : f32
          %v895 = arith.addf %v894, %acc_893 : f32
          linalg.yield %v895 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v896.buf = tensor.empty() : tensor<512xf32>
    %v896.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_11_modules_4_buffers_running_var_, %l_self_modules_model_modules_11_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v896.buf : tensor<512xf32>) {
        ^bb0(%in_897: f32, %in_898: f32, %acc_899: f32):
          %v900 = arith.constant 1.0 : f32
          %v901 = arith.constant 9.999999747378752e-06 : f32
          %v902 = arith.addf %v901, %in_897 : f32
          %v903 = math.sqrt %v902 : f32
          %v904 = arith.divf %v900, %v903 : f32
          %v905 = arith.mulf %v904, %in_898 : f32
          linalg.yield %v905 : f32
      }
    -> tensor<512xf32>
    %v906.buf = tensor.empty() : tensor<512xf32>
    %v906.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_11_modules_4_buffers_running_mean_, %l_self_modules_model_modules_11_modules_4_buffers_running_var_, %l_self_modules_model_modules_11_modules_4_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v906.buf : tensor<512xf32>) {
        ^bb0(%in_907: f32, %in_908: f32, %in_909: f32, %acc_910: f32):
          %v911 = arith.constant 1.0 : f32
          %v912 = arith.constant 9.999999747378752e-06 : f32
          %v913 = arith.addf %v912, %in_908 : f32
          %v914 = math.sqrt %v913 : f32
          %v915 = arith.divf %v911, %v914 : f32
          %v916 = arith.mulf %v915, %in_909 : f32
          %v917 = arith.mulf %v916, %in_907 : f32
          linalg.yield %v917 : f32
      }
    -> tensor<512xf32>
    %v890.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v890.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v890.buf.out, %v896.buf.out, %v906.buf.out, %l_self_modules_model_modules_11_modules_4_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v890.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_921: f32, %in_918: f32, %in_919: f32, %in_920: f32, %post_922: f32):
          %v923 = arith.mulf %acc_921, %in_918 : f32
          %v924 = arith.subf %v923, %in_919 : f32
          %v925 = arith.addf %v924, %in_920 : f32
          %v926 = arith.maxnumf %init, %v925 : f32
          linalg.yield %v926 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_69.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_69.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v890.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_69.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_927: f32, %acc_928: f32):
          linalg.yield %in_927 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v933 = tensor.pad %input_69.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i929: index, %pad_i930: index, %pad_i931: index, %pad_i932: index):
        tensor.yield %init : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %l_self_modules_model_modules_12_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_12_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [512, 1, 3, 3] : tensor<512x3x3xf32> into tensor<512x1x3x3xf32>
    %input_72.empty = tensor.empty() : tensor<10x512x7x7xf32>
    %input_72.buf = linalg.fill ins(%init : f32) outs(%input_72.empty : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %input_72.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v933, %l_self_modules_model_modules_12_modules_0_parameters_weight_.expanded : tensor<10x512x16x16xf32>, tensor<512x1x3x3xf32>)
      outs(%input_72.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_934: f32, %in_935: f32, %acc_936: f32):
          %v937 = arith.mulf %in_934, %in_935 : f32
          %v938 = arith.addf %v937, %acc_936 : f32
          linalg.yield %v938 : f32
      }
    -> tensor<10x512x7x7xf32>
    %v939.buf = tensor.empty() : tensor<512xf32>
    %v939.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_12_modules_1_buffers_running_var_, %l_self_modules_model_modules_12_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>)
      outs(%v939.buf : tensor<512xf32>) {
        ^bb0(%in_940: f32, %in_941: f32, %acc_942: f32):
          %v943 = arith.constant 1.0 : f32
          %v944 = arith.constant 9.999999747378752e-06 : f32
          %v945 = arith.addf %v944, %in_940 : f32
          %v946 = math.sqrt %v945 : f32
          %v947 = arith.divf %v943, %v946 : f32
          %v948 = arith.mulf %v947, %in_941 : f32
          linalg.yield %v948 : f32
      }
    -> tensor<512xf32>
    %v949.buf = tensor.empty() : tensor<512xf32>
    %v949.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_12_modules_1_buffers_running_mean_, %l_self_modules_model_modules_12_modules_1_buffers_running_var_, %l_self_modules_model_modules_12_modules_1_parameters_weight_ : tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%v949.buf : tensor<512xf32>) {
        ^bb0(%in_950: f32, %in_951: f32, %in_952: f32, %acc_953: f32):
          %v954 = arith.constant 1.0 : f32
          %v955 = arith.constant 9.999999747378752e-06 : f32
          %v956 = arith.addf %v955, %in_951 : f32
          %v957 = math.sqrt %v956 : f32
          %v958 = arith.divf %v954, %v957 : f32
          %v959 = arith.mulf %v958, %in_952 : f32
          %v960 = arith.mulf %v959, %in_950 : f32
          linalg.yield %v960 : f32
      }
    -> tensor<512xf32>
    %input_72.post = tensor.empty() : tensor<10x512x7x7xf32>
    %input_72.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_72.buf.out, %v939.buf.out, %v949.buf.out, %l_self_modules_model_modules_12_modules_1_parameters_bias_ : tensor<10x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>)
      outs(%input_72.post : tensor<10x512x7x7xf32>) {
        ^bb0(%acc_964: f32, %in_961: f32, %in_962: f32, %in_963: f32, %post_965: f32):
          %v966 = arith.mulf %acc_964, %in_961 : f32
          %v967 = arith.subf %v966, %in_962 : f32
          %v968 = arith.addf %v967, %in_963 : f32
          %v969 = arith.maxnumf %init, %v968 : f32
          linalg.yield %v969 : f32
      }
    -> tensor<10x512x7x7xf32>
    %l_self_modules_model_modules_12_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_12_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [1024, 512, 1, 1] : tensor<1024x512xf32> into tensor<1024x512x1x1xf32>
    %v970.empty = tensor.empty() : tensor<10x1024x7x1x7xf32>
    %v970.buf = linalg.fill ins(%init : f32) outs(%v970.empty : tensor<10x1024x7x1x7xf32>) -> tensor<10x1024x7x1x7xf32>
    %v970.shape = tensor.empty() : tensor<7x1xf32>
    %v970.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_72.post.out, %l_self_modules_model_modules_12_modules_3_parameters_weight_.expanded, %v970.shape : tensor<10x512x7x7xf32>, tensor<1024x512x1x1xf32>, tensor<7x1xf32>)
      outs(%v970.buf : tensor<10x1024x7x1x7xf32>) {
        ^bb0(%in_972: f32, %in_973: f32, %shape_971: f32, %acc_974: f32):
          %v975 = arith.mulf %in_972, %in_973 : f32
          %v976 = arith.addf %v975, %acc_974 : f32
          linalg.yield %v976 : f32
      }
    -> tensor<10x1024x7x1x7xf32>
    %v977.buf = tensor.empty() : tensor<1024xf32>
    %v977.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_12_modules_4_buffers_running_var_, %l_self_modules_model_modules_12_modules_4_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>)
      outs(%v977.buf : tensor<1024xf32>) {
        ^bb0(%in_978: f32, %in_979: f32, %acc_980: f32):
          %v981 = arith.constant 1.0 : f32
          %v982 = arith.constant 9.999999747378752e-06 : f32
          %v983 = arith.addf %v982, %in_978 : f32
          %v984 = math.sqrt %v983 : f32
          %v985 = arith.divf %v981, %v984 : f32
          %v986 = arith.mulf %v985, %in_979 : f32
          linalg.yield %v986 : f32
      }
    -> tensor<1024xf32>
    %v987.buf = tensor.empty() : tensor<1024xf32>
    %v987.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_12_modules_4_buffers_running_mean_, %l_self_modules_model_modules_12_modules_4_buffers_running_var_, %l_self_modules_model_modules_12_modules_4_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v987.buf : tensor<1024xf32>) {
        ^bb0(%in_988: f32, %in_989: f32, %in_990: f32, %acc_991: f32):
          %v992 = arith.constant 1.0 : f32
          %v993 = arith.constant 9.999999747378752e-06 : f32
          %v994 = arith.addf %v993, %in_989 : f32
          %v995 = math.sqrt %v994 : f32
          %v996 = arith.divf %v992, %v995 : f32
          %v997 = arith.mulf %v996, %in_990 : f32
          %v998 = arith.mulf %v997, %in_988 : f32
          linalg.yield %v998 : f32
      }
    -> tensor<1024xf32>
    %v970.post = tensor.empty() : tensor<10x1024x7x1x7xf32>
    %v970.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v970.buf.out, %v977.buf.out, %v987.buf.out, %l_self_modules_model_modules_12_modules_4_parameters_bias_ : tensor<10x1024x7x1x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v970.post : tensor<10x1024x7x1x7xf32>) {
        ^bb0(%acc_1002: f32, %in_999: f32, %in_1000: f32, %in_1001: f32, %post_1003: f32):
          %v1004 = arith.mulf %acc_1002, %in_999 : f32
          %v1005 = arith.subf %v1004, %in_1000 : f32
          %v1006 = arith.addf %v1005, %in_1001 : f32
          %v1007 = arith.maxnumf %init, %v1006 : f32
          linalg.yield %v1007 : f32
      }
    -> tensor<10x1024x7x1x7xf32>
    %input_75.buf = tensor.empty() : tensor<10x1024x7x7xf32>
    %input_75.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v970.post.out : tensor<10x1024x7x1x7xf32>)
      outs(%input_75.buf : tensor<10x1024x7x7xf32>) {
        ^bb0(%in_1008: f32, %acc_1009: f32):
          linalg.yield %in_1008 : f32
      }
    -> tensor<10x1024x7x7xf32>
    %v1014 = tensor.pad %input_75.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1010: index, %pad_i1011: index, %pad_i1012: index, %pad_i1013: index):
        tensor.yield %init : f32
    } : tensor<10x1024x7x7xf32> to tensor<10x1024x9x9xf32>
    %l_self_modules_model_modules_13_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_13_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [1024, 1, 3, 3] : tensor<1024x3x3xf32> into tensor<1024x1x3x3xf32>
    %input_78.empty = tensor.empty() : tensor<10x1024x7x7xf32>
    %input_78.buf = linalg.fill ins(%init : f32) outs(%input_78.empty : tensor<10x1024x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %input_78.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v1014, %l_self_modules_model_modules_13_modules_0_parameters_weight_.expanded : tensor<10x1024x9x9xf32>, tensor<1024x1x3x3xf32>)
      outs(%input_78.buf : tensor<10x1024x7x7xf32>) {
        ^bb0(%in_1015: f32, %in_1016: f32, %acc_1017: f32):
          %v1018 = arith.mulf %in_1015, %in_1016 : f32
          %v1019 = arith.addf %v1018, %acc_1017 : f32
          linalg.yield %v1019 : f32
      }
    -> tensor<10x1024x7x7xf32>
    %v1020.buf = tensor.empty() : tensor<1024xf32>
    %v1020.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_13_modules_1_buffers_running_var_, %l_self_modules_model_modules_13_modules_1_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1020.buf : tensor<1024xf32>) {
        ^bb0(%in_1021: f32, %in_1022: f32, %acc_1023: f32):
          %v1024 = arith.constant 1.0 : f32
          %v1025 = arith.constant 9.999999747378752e-06 : f32
          %v1026 = arith.addf %v1025, %in_1021 : f32
          %v1027 = math.sqrt %v1026 : f32
          %v1028 = arith.divf %v1024, %v1027 : f32
          %v1029 = arith.mulf %v1028, %in_1022 : f32
          linalg.yield %v1029 : f32
      }
    -> tensor<1024xf32>
    %v1030.buf = tensor.empty() : tensor<1024xf32>
    %v1030.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_13_modules_1_buffers_running_mean_, %l_self_modules_model_modules_13_modules_1_buffers_running_var_, %l_self_modules_model_modules_13_modules_1_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1030.buf : tensor<1024xf32>) {
        ^bb0(%in_1031: f32, %in_1032: f32, %in_1033: f32, %acc_1034: f32):
          %v1035 = arith.constant 1.0 : f32
          %v1036 = arith.constant 9.999999747378752e-06 : f32
          %v1037 = arith.addf %v1036, %in_1032 : f32
          %v1038 = math.sqrt %v1037 : f32
          %v1039 = arith.divf %v1035, %v1038 : f32
          %v1040 = arith.mulf %v1039, %in_1033 : f32
          %v1041 = arith.mulf %v1040, %in_1031 : f32
          linalg.yield %v1041 : f32
      }
    -> tensor<1024xf32>
    %input_78.post = tensor.empty() : tensor<10x1024x7x7xf32>
    %input_78.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_78.buf.out, %v1020.buf.out, %v1030.buf.out, %l_self_modules_model_modules_13_modules_1_parameters_bias_ : tensor<10x1024x7x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%input_78.post : tensor<10x1024x7x7xf32>) {
        ^bb0(%acc_1045: f32, %in_1042: f32, %in_1043: f32, %in_1044: f32, %post_1046: f32):
          %v1047 = arith.mulf %acc_1045, %in_1042 : f32
          %v1048 = arith.subf %v1047, %in_1043 : f32
          %v1049 = arith.addf %v1048, %in_1044 : f32
          %v1050 = arith.maxnumf %init, %v1049 : f32
          linalg.yield %v1050 : f32
      }
    -> tensor<10x1024x7x7xf32>
    %l_self_modules_model_modules_13_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_model_modules_13_modules_3_parameters_weight_ [[0], [1, 2, 3]] output_shape [1024, 1024, 1, 1] : tensor<1024x1024xf32> into tensor<1024x1024x1x1xf32>
    %v1051.empty = tensor.empty() : tensor<10x1024x7x1x7xf32>
    %v1051.buf = linalg.fill ins(%init : f32) outs(%v1051.empty : tensor<10x1024x7x1x7xf32>) -> tensor<10x1024x7x1x7xf32>
    %v1051.shape = tensor.empty() : tensor<7x1xf32>
    %v1051.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_78.post.out, %l_self_modules_model_modules_13_modules_3_parameters_weight_.expanded, %v1051.shape : tensor<10x1024x7x7xf32>, tensor<1024x1024x1x1xf32>, tensor<7x1xf32>)
      outs(%v1051.buf : tensor<10x1024x7x1x7xf32>) {
        ^bb0(%in_1053: f32, %in_1054: f32, %shape_1052: f32, %acc_1055: f32):
          %v1056 = arith.mulf %in_1053, %in_1054 : f32
          %v1057 = arith.addf %v1056, %acc_1055 : f32
          linalg.yield %v1057 : f32
      }
    -> tensor<10x1024x7x1x7xf32>
    %v1058.buf = tensor.empty() : tensor<1024xf32>
    %v1058.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_13_modules_4_buffers_running_var_, %l_self_modules_model_modules_13_modules_4_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1058.buf : tensor<1024xf32>) {
        ^bb0(%in_1059: f32, %in_1060: f32, %acc_1061: f32):
          %v1062 = arith.constant 1.0 : f32
          %v1063 = arith.constant 9.999999747378752e-06 : f32
          %v1064 = arith.addf %v1063, %in_1059 : f32
          %v1065 = math.sqrt %v1064 : f32
          %v1066 = arith.divf %v1062, %v1065 : f32
          %v1067 = arith.mulf %v1066, %in_1060 : f32
          linalg.yield %v1067 : f32
      }
    -> tensor<1024xf32>
    %v1068.buf = tensor.empty() : tensor<1024xf32>
    %v1068.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_model_modules_13_modules_4_buffers_running_mean_, %l_self_modules_model_modules_13_modules_4_buffers_running_var_, %l_self_modules_model_modules_13_modules_4_parameters_weight_ : tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1068.buf : tensor<1024xf32>) {
        ^bb0(%in_1069: f32, %in_1070: f32, %in_1071: f32, %acc_1072: f32):
          %v1073 = arith.constant 1.0 : f32
          %v1074 = arith.constant 9.999999747378752e-06 : f32
          %v1075 = arith.addf %v1074, %in_1070 : f32
          %v1076 = math.sqrt %v1075 : f32
          %v1077 = arith.divf %v1073, %v1076 : f32
          %v1078 = arith.mulf %v1077, %in_1071 : f32
          %v1079 = arith.mulf %v1078, %in_1069 : f32
          linalg.yield %v1079 : f32
      }
    -> tensor<1024xf32>
    %v1051.post = tensor.empty() : tensor<10x1024x7x1x7xf32>
    %v1051.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v1051.buf.out, %v1058.buf.out, %v1068.buf.out, %l_self_modules_model_modules_13_modules_4_parameters_bias_ : tensor<10x1024x7x1x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>)
      outs(%v1051.post : tensor<10x1024x7x1x7xf32>) {
        ^bb0(%acc_1083: f32, %in_1080: f32, %in_1081: f32, %in_1082: f32, %post_1084: f32):
          %v1085 = arith.mulf %acc_1083, %in_1080 : f32
          %v1086 = arith.subf %v1085, %in_1081 : f32
          %v1087 = arith.addf %v1086, %in_1082 : f32
          %v1088 = arith.maxnumf %init, %v1087 : f32
          linalg.yield %v1088 : f32
      }
    -> tensor<10x1024x7x1x7xf32>
    %input_82.empty = tensor.empty() : tensor<10x1024x1x1xf32>
    %input_82.buf = linalg.fill ins(%init : f32) outs(%input_82.empty : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %input_82.shape = tensor.empty() : tensor<7xf32>
    %input_82.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3 + d4, 0, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v1051.post.out, %input_82.shape : tensor<10x1024x7x1x7xf32>, tensor<7xf32>)
      outs(%input_82.buf : tensor<10x1024x1x1xf32>) {
        ^bb0(%in_1090: f32, %shape_1089: f32, %acc_1091: f32):
          %v1092 = arith.addf %acc_1091, %in_1090 : f32
          linalg.yield %v1092 : f32
      }
    -> tensor<10x1024x1x1xf32>
    %input_82.post = tensor.empty() : tensor<10x1024x1x1xf32>
    %input_82.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_82.buf.out : tensor<10x1024x1x1xf32>)
      outs(%input_82.post : tensor<10x1024x1x1xf32>) {
        ^bb0(%acc_1093: f32, %post_1094: f32):
          %v1095 = arith.constant 0.020408162847161293 : f32
          %v1096 = arith.mulf %v1095, %acc_1093 : f32
          linalg.yield %v1096 : f32
      }
    -> tensor<10x1024x1x1xf32>
    %v1097.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v1097.buf = linalg.fill ins(%init : f32) outs(%v1097.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v1097.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4, 0, 0)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%input_82.post.out, %l_self_modules_fc_parameters_weight_ : tensor<10x1024x1x1xf32>, tensor<1000x1024xf32>)
      outs(%v1097.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_1098: f32, %in_1099: f32, %acc_1100: f32):
          %v1101 = arith.mulf %in_1098, %in_1099 : f32
          %v1102 = arith.addf %v1101, %acc_1100 : f32
          linalg.yield %v1102 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v1097.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v1097.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v1097.buf.out, %l_self_modules_fc_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v1097.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_1104: f32, %in_1103: f32, %post_1105: f32):
          %v1106 = arith.addf %acc_1104, %in_1103 : f32
          linalg.yield %v1106 : f32
      }
    -> tensor<5x2x250x4xf32>
    %x_1.buf = tensor.empty() : tensor<10x1000xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v1097.post.out : tensor<5x2x250x4xf32>)
      outs(%x_1.buf : tensor<10x1000xf32>) {
        ^bb0(%in_1107: f32, %acc_1108: f32):
          linalg.yield %in_1107 : f32
      }
    -> tensor<10x1000xf32>
    func.return %x_1.buf.out : tensor<10x1000xf32>
  }
}
