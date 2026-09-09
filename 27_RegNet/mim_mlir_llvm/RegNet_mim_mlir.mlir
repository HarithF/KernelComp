module {
  func.func public @RegNet(%l_self_modules_feature_extractor_modules_0_modules_0_parameters_weight_: tensor<64x3x3x3xf32>, %l_self_modules_feature_extractor_modules_0_modules_0_parameters_bias_: tensor<64xf32>, %l_x_: tensor<8x3x224x224xf32>, %l_self_modules_feature_extractor_modules_0_modules_1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_1_buffers_running_var_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_1_parameters_weight_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_3_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_feature_extractor_modules_0_modules_3_parameters_bias_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_4_buffers_running_mean_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_4_buffers_running_var_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_4_parameters_weight_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_0_modules_4_parameters_bias_: tensor<64xf32>, %l_self_modules_feature_extractor_modules_1_modules_0_parameters_weight_: tensor<128x64x3x3xf32>, %l_self_modules_feature_extractor_modules_1_modules_0_parameters_bias_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_1_buffers_running_mean_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_1_buffers_running_var_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_1_parameters_weight_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_3_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_feature_extractor_modules_1_modules_3_parameters_bias_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_4_buffers_running_mean_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_4_buffers_running_var_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_4_parameters_weight_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_1_modules_4_parameters_bias_: tensor<128xf32>, %l_self_modules_feature_extractor_modules_2_modules_0_parameters_weight_: tensor<256x128x3x3xf32>, %l_self_modules_feature_extractor_modules_2_modules_0_parameters_bias_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_1_buffers_running_mean_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_1_buffers_running_var_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_1_parameters_weight_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_1_parameters_bias_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_3_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_feature_extractor_modules_2_modules_3_parameters_bias_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_4_buffers_running_mean_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_4_buffers_running_var_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_4_parameters_weight_: tensor<256xf32>, %l_self_modules_feature_extractor_modules_2_modules_4_parameters_bias_: tensor<256xf32>, %l_self_modules_fc_parameters_weight_: tensor<10x256xf32>, %l_self_modules_fc_parameters_bias_: tensor<10xf32>) -> tensor<8x10xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<8x3x224x224xf32> to tensor<8x3x226x226xf32>
    %v4.empty = tensor.empty() : tensor<8x64x224x1x224xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<8x64x224x1x224xf32>) -> tensor<8x64x224x1x224xf32>
    %v4.shape = tensor.empty() : tensor<224x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_feature_extractor_modules_0_modules_0_parameters_weight_, %v4.shape : tensor<8x3x226x226xf32>, tensor<64x3x3x3xf32>, tensor<224x1xf32>)
      outs(%v4.buf : tensor<8x64x224x1x224xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<8x64x224x1x224xf32>
    %v11.buf = tensor.empty() : tensor<64xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_0_modules_1_buffers_running_var_, %l_self_modules_feature_extractor_modules_0_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
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
      ins(%l_self_modules_feature_extractor_modules_0_modules_1_buffers_running_mean_, %l_self_modules_feature_extractor_modules_0_modules_1_buffers_running_var_, %l_self_modules_feature_extractor_modules_0_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
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
    %v4.post = tensor.empty() : tensor<8x64x224x1x224xf32>
    %v4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.buf.out, %l_self_modules_feature_extractor_modules_0_modules_0_parameters_bias_, %v11.buf.out, %v21.buf.out, %l_self_modules_feature_extractor_modules_0_modules_1_parameters_bias_ : tensor<8x64x224x1x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v4.post : tensor<8x64x224x1x224xf32>) {
        ^bb0(%acc_37: f32, %in_33: f32, %in_34: f32, %in_35: f32, %in_36: f32, %post_38: f32):
          %v39 = arith.addf %acc_37, %in_33 : f32
          %v40 = arith.mulf %v39, %in_34 : f32
          %v41 = arith.subf %v40, %in_35 : f32
          %v42 = arith.addf %v41, %in_36 : f32
          %v43 = arith.maxnumf %init, %v42 : f32
          linalg.yield %v43 : f32
      }
    -> tensor<8x64x224x1x224xf32>
    %input_3.buf = tensor.empty() : tensor<8x64x224x224xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<8x64x224x1x224xf32>)
      outs(%input_3.buf : tensor<8x64x224x224xf32>) {
        ^bb0(%in_44: f32, %acc_45: f32):
          linalg.yield %in_44 : f32
      }
    -> tensor<8x64x224x224xf32>
    %padded_1 = tensor.pad %input_3.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i46: index, %pad_i47: index, %pad_i48: index, %pad_i49: index):
        tensor.yield %init : f32
    } : tensor<8x64x224x224xf32> to tensor<8x64x226x226xf32>
    %v50.empty = tensor.empty() : tensor<8x64x224x1x224xf32>
    %v50.buf = linalg.fill ins(%init : f32) outs(%v50.empty : tensor<8x64x224x1x224xf32>) -> tensor<8x64x224x1x224xf32>
    %v50.shape = tensor.empty() : tensor<224x1xf32>
    %v50.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_feature_extractor_modules_0_modules_3_parameters_weight_, %v50.shape : tensor<8x64x226x226xf32>, tensor<64x64x3x3xf32>, tensor<224x1xf32>)
      outs(%v50.buf : tensor<8x64x224x1x224xf32>) {
        ^bb0(%in_52: f32, %in_53: f32, %shape_51: f32, %acc_54: f32):
          %v55 = arith.mulf %in_52, %in_53 : f32
          %v56 = arith.addf %v55, %acc_54 : f32
          linalg.yield %v56 : f32
      }
    -> tensor<8x64x224x1x224xf32>
    %v57.buf = tensor.empty() : tensor<64xf32>
    %v57.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_0_modules_4_buffers_running_var_, %l_self_modules_feature_extractor_modules_0_modules_4_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v57.buf : tensor<64xf32>) {
        ^bb0(%in_58: f32, %in_59: f32, %acc_60: f32):
          %v61 = arith.constant 1.0 : f32
          %v62 = arith.constant 9.999999747378752e-06 : f32
          %v63 = arith.addf %v62, %in_58 : f32
          %v64 = math.sqrt %v63 : f32
          %v65 = arith.divf %v61, %v64 : f32
          %v66 = arith.mulf %v65, %in_59 : f32
          linalg.yield %v66 : f32
      }
    -> tensor<64xf32>
    %v67.buf = tensor.empty() : tensor<64xf32>
    %v67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_0_modules_4_buffers_running_mean_, %l_self_modules_feature_extractor_modules_0_modules_4_buffers_running_var_, %l_self_modules_feature_extractor_modules_0_modules_4_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v67.buf : tensor<64xf32>) {
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
    -> tensor<64xf32>
    %v50.post = tensor.empty() : tensor<8x64x224x1x224xf32>
    %v50.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v50.buf.out, %l_self_modules_feature_extractor_modules_0_modules_3_parameters_bias_, %v57.buf.out, %v67.buf.out, %l_self_modules_feature_extractor_modules_0_modules_4_parameters_bias_ : tensor<8x64x224x1x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v50.post : tensor<8x64x224x1x224xf32>) {
        ^bb0(%acc_83: f32, %in_79: f32, %in_80: f32, %in_81: f32, %in_82: f32, %post_84: f32):
          %v85 = arith.addf %acc_83, %in_79 : f32
          %v86 = arith.mulf %v85, %in_80 : f32
          %v87 = arith.subf %v86, %in_81 : f32
          %v88 = arith.addf %v87, %in_82 : f32
          %v89 = arith.maxnumf %init, %v88 : f32
          linalg.yield %v89 : f32
      }
    -> tensor<8x64x224x1x224xf32>
    %input_7.empty = tensor.empty() : tensor<8x64x112x112xf32>
    %init_1 = arith.constant 0xFF800000 : f32
    %input_7.buf = linalg.fill ins(%init_1 : f32) outs(%input_7.empty : tensor<8x64x112x112xf32>) -> tensor<8x64x112x112xf32>
    %input_7.shape = tensor.empty() : tensor<2x2xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v50.post.out, %input_7.shape : tensor<8x64x224x1x224xf32>, tensor<2x2xf32>)
      outs(%input_7.buf : tensor<8x64x112x112xf32>) {
        ^bb0(%in_91: f32, %shape_90: f32, %acc_92: f32):
          %v93 = arith.maxnumf %acc_92, %in_91 : f32
          linalg.yield %v93 : f32
      }
    -> tensor<8x64x112x112xf32>
    %padded_2 = tensor.pad %input_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i94: index, %pad_i95: index, %pad_i96: index, %pad_i97: index):
        tensor.yield %init : f32
    } : tensor<8x64x112x112xf32> to tensor<8x64x114x114xf32>
    %v98.empty = tensor.empty() : tensor<8x128x112x1x112xf32>
    %v98.buf = linalg.fill ins(%init : f32) outs(%v98.empty : tensor<8x128x112x1x112xf32>) -> tensor<8x128x112x1x112xf32>
    %v98.shape = tensor.empty() : tensor<112x1xf32>
    %v98.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_feature_extractor_modules_1_modules_0_parameters_weight_, %v98.shape : tensor<8x64x114x114xf32>, tensor<128x64x3x3xf32>, tensor<112x1xf32>)
      outs(%v98.buf : tensor<8x128x112x1x112xf32>) {
        ^bb0(%in_100: f32, %in_101: f32, %shape_99: f32, %acc_102: f32):
          %v103 = arith.mulf %in_100, %in_101 : f32
          %v104 = arith.addf %v103, %acc_102 : f32
          linalg.yield %v104 : f32
      }
    -> tensor<8x128x112x1x112xf32>
    %v105.buf = tensor.empty() : tensor<128xf32>
    %v105.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_1_modules_1_buffers_running_var_, %l_self_modules_feature_extractor_modules_1_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v105.buf : tensor<128xf32>) {
        ^bb0(%in_106: f32, %in_107: f32, %acc_108: f32):
          %v109 = arith.constant 1.0 : f32
          %v110 = arith.constant 9.999999747378752e-06 : f32
          %v111 = arith.addf %v110, %in_106 : f32
          %v112 = math.sqrt %v111 : f32
          %v113 = arith.divf %v109, %v112 : f32
          %v114 = arith.mulf %v113, %in_107 : f32
          linalg.yield %v114 : f32
      }
    -> tensor<128xf32>
    %v115.buf = tensor.empty() : tensor<128xf32>
    %v115.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_1_modules_1_buffers_running_mean_, %l_self_modules_feature_extractor_modules_1_modules_1_buffers_running_var_, %l_self_modules_feature_extractor_modules_1_modules_1_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v115.buf : tensor<128xf32>) {
        ^bb0(%in_116: f32, %in_117: f32, %in_118: f32, %acc_119: f32):
          %v120 = arith.constant 1.0 : f32
          %v121 = arith.constant 9.999999747378752e-06 : f32
          %v122 = arith.addf %v121, %in_117 : f32
          %v123 = math.sqrt %v122 : f32
          %v124 = arith.divf %v120, %v123 : f32
          %v125 = arith.mulf %v124, %in_118 : f32
          %v126 = arith.mulf %v125, %in_116 : f32
          linalg.yield %v126 : f32
      }
    -> tensor<128xf32>
    %v98.post = tensor.empty() : tensor<8x128x112x1x112xf32>
    %v98.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v98.buf.out, %l_self_modules_feature_extractor_modules_1_modules_0_parameters_bias_, %v105.buf.out, %v115.buf.out, %l_self_modules_feature_extractor_modules_1_modules_1_parameters_bias_ : tensor<8x128x112x1x112xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v98.post : tensor<8x128x112x1x112xf32>) {
        ^bb0(%acc_131: f32, %in_127: f32, %in_128: f32, %in_129: f32, %in_130: f32, %post_132: f32):
          %v133 = arith.addf %acc_131, %in_127 : f32
          %v134 = arith.mulf %v133, %in_128 : f32
          %v135 = arith.subf %v134, %in_129 : f32
          %v136 = arith.addf %v135, %in_130 : f32
          %v137 = arith.maxnumf %init, %v136 : f32
          linalg.yield %v137 : f32
      }
    -> tensor<8x128x112x1x112xf32>
    %input_10.buf = tensor.empty() : tensor<8x128x112x112xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v98.post.out : tensor<8x128x112x1x112xf32>)
      outs(%input_10.buf : tensor<8x128x112x112xf32>) {
        ^bb0(%in_138: f32, %acc_139: f32):
          linalg.yield %in_138 : f32
      }
    -> tensor<8x128x112x112xf32>
    %padded_3 = tensor.pad %input_10.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i140: index, %pad_i141: index, %pad_i142: index, %pad_i143: index):
        tensor.yield %init : f32
    } : tensor<8x128x112x112xf32> to tensor<8x128x114x114xf32>
    %v144.empty = tensor.empty() : tensor<8x128x112x1x112xf32>
    %v144.buf = linalg.fill ins(%init : f32) outs(%v144.empty : tensor<8x128x112x1x112xf32>) -> tensor<8x128x112x1x112xf32>
    %v144.shape = tensor.empty() : tensor<112x1xf32>
    %v144.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_feature_extractor_modules_1_modules_3_parameters_weight_, %v144.shape : tensor<8x128x114x114xf32>, tensor<128x128x3x3xf32>, tensor<112x1xf32>)
      outs(%v144.buf : tensor<8x128x112x1x112xf32>) {
        ^bb0(%in_146: f32, %in_147: f32, %shape_145: f32, %acc_148: f32):
          %v149 = arith.mulf %in_146, %in_147 : f32
          %v150 = arith.addf %v149, %acc_148 : f32
          linalg.yield %v150 : f32
      }
    -> tensor<8x128x112x1x112xf32>
    %v151.buf = tensor.empty() : tensor<128xf32>
    %v151.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_1_modules_4_buffers_running_var_, %l_self_modules_feature_extractor_modules_1_modules_4_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v151.buf : tensor<128xf32>) {
        ^bb0(%in_152: f32, %in_153: f32, %acc_154: f32):
          %v155 = arith.constant 1.0 : f32
          %v156 = arith.constant 9.999999747378752e-06 : f32
          %v157 = arith.addf %v156, %in_152 : f32
          %v158 = math.sqrt %v157 : f32
          %v159 = arith.divf %v155, %v158 : f32
          %v160 = arith.mulf %v159, %in_153 : f32
          linalg.yield %v160 : f32
      }
    -> tensor<128xf32>
    %v161.buf = tensor.empty() : tensor<128xf32>
    %v161.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_1_modules_4_buffers_running_mean_, %l_self_modules_feature_extractor_modules_1_modules_4_buffers_running_var_, %l_self_modules_feature_extractor_modules_1_modules_4_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v161.buf : tensor<128xf32>) {
        ^bb0(%in_162: f32, %in_163: f32, %in_164: f32, %acc_165: f32):
          %v166 = arith.constant 1.0 : f32
          %v167 = arith.constant 9.999999747378752e-06 : f32
          %v168 = arith.addf %v167, %in_163 : f32
          %v169 = math.sqrt %v168 : f32
          %v170 = arith.divf %v166, %v169 : f32
          %v171 = arith.mulf %v170, %in_164 : f32
          %v172 = arith.mulf %v171, %in_162 : f32
          linalg.yield %v172 : f32
      }
    -> tensor<128xf32>
    %v144.post = tensor.empty() : tensor<8x128x112x1x112xf32>
    %v144.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v144.buf.out, %l_self_modules_feature_extractor_modules_1_modules_3_parameters_bias_, %v151.buf.out, %v161.buf.out, %l_self_modules_feature_extractor_modules_1_modules_4_parameters_bias_ : tensor<8x128x112x1x112xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v144.post : tensor<8x128x112x1x112xf32>) {
        ^bb0(%acc_177: f32, %in_173: f32, %in_174: f32, %in_175: f32, %in_176: f32, %post_178: f32):
          %v179 = arith.addf %acc_177, %in_173 : f32
          %v180 = arith.mulf %v179, %in_174 : f32
          %v181 = arith.subf %v180, %in_175 : f32
          %v182 = arith.addf %v181, %in_176 : f32
          %v183 = arith.maxnumf %init, %v182 : f32
          linalg.yield %v183 : f32
      }
    -> tensor<8x128x112x1x112xf32>
    %input_14.empty = tensor.empty() : tensor<8x128x56x56xf32>
    %input_14.buf = linalg.fill ins(%init_1 : f32) outs(%input_14.empty : tensor<8x128x56x56xf32>) -> tensor<8x128x56x56xf32>
    %input_14.shape = tensor.empty() : tensor<2x2xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v144.post.out, %input_14.shape : tensor<8x128x112x1x112xf32>, tensor<2x2xf32>)
      outs(%input_14.buf : tensor<8x128x56x56xf32>) {
        ^bb0(%in_185: f32, %shape_184: f32, %acc_186: f32):
          %v187 = arith.maxnumf %acc_186, %in_185 : f32
          linalg.yield %v187 : f32
      }
    -> tensor<8x128x56x56xf32>
    %padded_4 = tensor.pad %input_14.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i188: index, %pad_i189: index, %pad_i190: index, %pad_i191: index):
        tensor.yield %init : f32
    } : tensor<8x128x56x56xf32> to tensor<8x128x58x58xf32>
    %v192.empty = tensor.empty() : tensor<8x256x56x1x56xf32>
    %v192.buf = linalg.fill ins(%init : f32) outs(%v192.empty : tensor<8x256x56x1x56xf32>) -> tensor<8x256x56x1x56xf32>
    %v192.shape = tensor.empty() : tensor<56x1xf32>
    %v192.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_feature_extractor_modules_2_modules_0_parameters_weight_, %v192.shape : tensor<8x128x58x58xf32>, tensor<256x128x3x3xf32>, tensor<56x1xf32>)
      outs(%v192.buf : tensor<8x256x56x1x56xf32>) {
        ^bb0(%in_194: f32, %in_195: f32, %shape_193: f32, %acc_196: f32):
          %v197 = arith.mulf %in_194, %in_195 : f32
          %v198 = arith.addf %v197, %acc_196 : f32
          linalg.yield %v198 : f32
      }
    -> tensor<8x256x56x1x56xf32>
    %v199.buf = tensor.empty() : tensor<256xf32>
    %v199.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_2_modules_1_buffers_running_var_, %l_self_modules_feature_extractor_modules_2_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v199.buf : tensor<256xf32>) {
        ^bb0(%in_200: f32, %in_201: f32, %acc_202: f32):
          %v203 = arith.constant 1.0 : f32
          %v204 = arith.constant 9.999999747378752e-06 : f32
          %v205 = arith.addf %v204, %in_200 : f32
          %v206 = math.sqrt %v205 : f32
          %v207 = arith.divf %v203, %v206 : f32
          %v208 = arith.mulf %v207, %in_201 : f32
          linalg.yield %v208 : f32
      }
    -> tensor<256xf32>
    %v209.buf = tensor.empty() : tensor<256xf32>
    %v209.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_2_modules_1_buffers_running_mean_, %l_self_modules_feature_extractor_modules_2_modules_1_buffers_running_var_, %l_self_modules_feature_extractor_modules_2_modules_1_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v209.buf : tensor<256xf32>) {
        ^bb0(%in_210: f32, %in_211: f32, %in_212: f32, %acc_213: f32):
          %v214 = arith.constant 1.0 : f32
          %v215 = arith.constant 9.999999747378752e-06 : f32
          %v216 = arith.addf %v215, %in_211 : f32
          %v217 = math.sqrt %v216 : f32
          %v218 = arith.divf %v214, %v217 : f32
          %v219 = arith.mulf %v218, %in_212 : f32
          %v220 = arith.mulf %v219, %in_210 : f32
          linalg.yield %v220 : f32
      }
    -> tensor<256xf32>
    %v192.post = tensor.empty() : tensor<8x256x56x1x56xf32>
    %v192.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v192.buf.out, %l_self_modules_feature_extractor_modules_2_modules_0_parameters_bias_, %v199.buf.out, %v209.buf.out, %l_self_modules_feature_extractor_modules_2_modules_1_parameters_bias_ : tensor<8x256x56x1x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v192.post : tensor<8x256x56x1x56xf32>) {
        ^bb0(%acc_225: f32, %in_221: f32, %in_222: f32, %in_223: f32, %in_224: f32, %post_226: f32):
          %v227 = arith.addf %acc_225, %in_221 : f32
          %v228 = arith.mulf %v227, %in_222 : f32
          %v229 = arith.subf %v228, %in_223 : f32
          %v230 = arith.addf %v229, %in_224 : f32
          %v231 = arith.maxnumf %init, %v230 : f32
          linalg.yield %v231 : f32
      }
    -> tensor<8x256x56x1x56xf32>
    %input_17.buf = tensor.empty() : tensor<8x256x56x56xf32>
    %input_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v192.post.out : tensor<8x256x56x1x56xf32>)
      outs(%input_17.buf : tensor<8x256x56x56xf32>) {
        ^bb0(%in_232: f32, %acc_233: f32):
          linalg.yield %in_232 : f32
      }
    -> tensor<8x256x56x56xf32>
    %padded_5 = tensor.pad %input_17.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i234: index, %pad_i235: index, %pad_i236: index, %pad_i237: index):
        tensor.yield %init : f32
    } : tensor<8x256x56x56xf32> to tensor<8x256x58x58xf32>
    %v238.empty = tensor.empty() : tensor<8x256x56x1x56xf32>
    %v238.buf = linalg.fill ins(%init : f32) outs(%v238.empty : tensor<8x256x56x1x56xf32>) -> tensor<8x256x56x1x56xf32>
    %v238.shape = tensor.empty() : tensor<56x1xf32>
    %v238.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_feature_extractor_modules_2_modules_3_parameters_weight_, %v238.shape : tensor<8x256x58x58xf32>, tensor<256x256x3x3xf32>, tensor<56x1xf32>)
      outs(%v238.buf : tensor<8x256x56x1x56xf32>) {
        ^bb0(%in_240: f32, %in_241: f32, %shape_239: f32, %acc_242: f32):
          %v243 = arith.mulf %in_240, %in_241 : f32
          %v244 = arith.addf %v243, %acc_242 : f32
          linalg.yield %v244 : f32
      }
    -> tensor<8x256x56x1x56xf32>
    %v245.buf = tensor.empty() : tensor<256xf32>
    %v245.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_2_modules_4_buffers_running_var_, %l_self_modules_feature_extractor_modules_2_modules_4_parameters_weight_ : tensor<256xf32>, tensor<256xf32>)
      outs(%v245.buf : tensor<256xf32>) {
        ^bb0(%in_246: f32, %in_247: f32, %acc_248: f32):
          %v249 = arith.constant 1.0 : f32
          %v250 = arith.constant 9.999999747378752e-06 : f32
          %v251 = arith.addf %v250, %in_246 : f32
          %v252 = math.sqrt %v251 : f32
          %v253 = arith.divf %v249, %v252 : f32
          %v254 = arith.mulf %v253, %in_247 : f32
          linalg.yield %v254 : f32
      }
    -> tensor<256xf32>
    %v255.buf = tensor.empty() : tensor<256xf32>
    %v255.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_feature_extractor_modules_2_modules_4_buffers_running_mean_, %l_self_modules_feature_extractor_modules_2_modules_4_buffers_running_var_, %l_self_modules_feature_extractor_modules_2_modules_4_parameters_weight_ : tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v255.buf : tensor<256xf32>) {
        ^bb0(%in_256: f32, %in_257: f32, %in_258: f32, %acc_259: f32):
          %v260 = arith.constant 1.0 : f32
          %v261 = arith.constant 9.999999747378752e-06 : f32
          %v262 = arith.addf %v261, %in_257 : f32
          %v263 = math.sqrt %v262 : f32
          %v264 = arith.divf %v260, %v263 : f32
          %v265 = arith.mulf %v264, %in_258 : f32
          %v266 = arith.mulf %v265, %in_256 : f32
          linalg.yield %v266 : f32
      }
    -> tensor<256xf32>
    %v238.post = tensor.empty() : tensor<8x256x56x1x56xf32>
    %v238.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v238.buf.out, %l_self_modules_feature_extractor_modules_2_modules_3_parameters_bias_, %v245.buf.out, %v255.buf.out, %l_self_modules_feature_extractor_modules_2_modules_4_parameters_bias_ : tensor<8x256x56x1x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>)
      outs(%v238.post : tensor<8x256x56x1x56xf32>) {
        ^bb0(%acc_271: f32, %in_267: f32, %in_268: f32, %in_269: f32, %in_270: f32, %post_272: f32):
          %v273 = arith.addf %acc_271, %in_267 : f32
          %v274 = arith.mulf %v273, %in_268 : f32
          %v275 = arith.subf %v274, %in_269 : f32
          %v276 = arith.addf %v275, %in_270 : f32
          %v277 = arith.maxnumf %init, %v276 : f32
          linalg.yield %v277 : f32
      }
    -> tensor<8x256x56x1x56xf32>
    %input_21.empty = tensor.empty() : tensor<8x256x28x28xf32>
    %input_21.buf = linalg.fill ins(%init_1 : f32) outs(%input_21.empty : tensor<8x256x28x28xf32>) -> tensor<8x256x28x28xf32>
    %input_21.shape = tensor.empty() : tensor<2x2xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v238.post.out, %input_21.shape : tensor<8x256x56x1x56xf32>, tensor<2x2xf32>)
      outs(%input_21.buf : tensor<8x256x28x28xf32>) {
        ^bb0(%in_279: f32, %shape_278: f32, %acc_280: f32):
          %v281 = arith.maxnumf %acc_280, %in_279 : f32
          linalg.yield %v281 : f32
      }
    -> tensor<8x256x28x28xf32>
    %x.empty = tensor.empty() : tensor<8x256xf32>
    %x.buf = linalg.fill ins(%init : f32) outs(%x.empty : tensor<8x256xf32>) -> tensor<8x256xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%input_21.buf.out : tensor<8x256x28x28xf32>)
      outs(%x.buf : tensor<8x256xf32>) {
        ^bb0(%in_282: f32, %acc_283: f32):
          %v284 = arith.addf %acc_283, %in_282 : f32
          linalg.yield %v284 : f32
      }
    -> tensor<8x256xf32>
    %x.post = tensor.empty() : tensor<8x256xf32>
    %x.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%x.buf.out : tensor<8x256xf32>)
      outs(%x.post : tensor<8x256xf32>) {
        ^bb0(%acc_285: f32, %post_286: f32):
          %v287 = arith.constant 784.0 : f32
          %v288 = arith.divf %acc_285, %v287 : f32
          linalg.yield %v288 : f32
      }
    -> tensor<8x256xf32>
    %v289.empty = tensor.empty() : tensor<4x2x5x2xf32>
    %v289.buf = linalg.fill ins(%init : f32) outs(%v289.empty : tensor<4x2x5x2xf32>) -> tensor<4x2x5x2xf32>
    %v289.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 2 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%x.post.out, %l_self_modules_fc_parameters_weight_ : tensor<8x256xf32>, tensor<10x256xf32>)
      outs(%v289.buf : tensor<4x2x5x2xf32>) {
        ^bb0(%in_290: f32, %in_291: f32, %acc_292: f32):
          %v293 = arith.mulf %in_290, %in_291 : f32
          %v294 = arith.addf %v293, %acc_292 : f32
          linalg.yield %v294 : f32
      }
    -> tensor<4x2x5x2xf32>
    %v289.post = tensor.empty() : tensor<4x2x5x2xf32>
    %v289.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v289.buf.out, %l_self_modules_fc_parameters_bias_ : tensor<4x2x5x2xf32>, tensor<10xf32>)
      outs(%v289.post : tensor<4x2x5x2xf32>) {
        ^bb0(%acc_296: f32, %in_295: f32, %post_297: f32):
          %v298 = arith.addf %acc_296, %in_295 : f32
          linalg.yield %v298 : f32
      }
    -> tensor<4x2x5x2xf32>
    %x_1.buf = tensor.empty() : tensor<8x10xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 10) floordiv 2 mod 5, d1 mod 2)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v289.post.out : tensor<4x2x5x2xf32>)
      outs(%x_1.buf : tensor<8x10xf32>) {
        ^bb0(%in_299: f32, %acc_300: f32):
          linalg.yield %in_299 : f32
      }
    -> tensor<8x10xf32>
    func.return %x_1.buf.out : tensor<8x10xf32>
  }
}
