module {
  func.func public @DenseNet121DenseBlock(%l_x_: tensor<10x32x224x224xf32>, %l_self_modules_layers_modules_0_modules_0_buffers_running_mean_: tensor<32xf32>, %l_self_modules_layers_modules_0_modules_0_buffers_running_var_: tensor<32xf32>, %l_self_modules_layers_modules_0_modules_0_parameters_weight_: tensor<32xf32>, %l_self_modules_layers_modules_0_modules_0_parameters_bias_: tensor<32xf32>, %l_self_modules_layers_modules_0_modules_2_parameters_weight_: tensor<32x32x3x3xf32>, %l_self_modules_layers_modules_1_modules_0_buffers_running_mean_: tensor<64xf32>, %l_self_modules_layers_modules_1_modules_0_buffers_running_var_: tensor<64xf32>, %l_self_modules_layers_modules_1_modules_0_parameters_weight_: tensor<64xf32>, %l_self_modules_layers_modules_1_modules_0_parameters_bias_: tensor<64xf32>, %l_self_modules_layers_modules_1_modules_2_parameters_weight_: tensor<32x64x3x3xf32>, %l_self_modules_layers_modules_2_modules_0_buffers_running_mean_: tensor<96xf32>, %l_self_modules_layers_modules_2_modules_0_buffers_running_var_: tensor<96xf32>, %l_self_modules_layers_modules_2_modules_0_parameters_weight_: tensor<96xf32>, %l_self_modules_layers_modules_2_modules_0_parameters_bias_: tensor<96xf32>, %l_self_modules_layers_modules_2_modules_2_parameters_weight_: tensor<32x96x3x3xf32>, %l_self_modules_layers_modules_3_modules_0_buffers_running_mean_: tensor<128xf32>, %l_self_modules_layers_modules_3_modules_0_buffers_running_var_: tensor<128xf32>, %l_self_modules_layers_modules_3_modules_0_parameters_weight_: tensor<128xf32>, %l_self_modules_layers_modules_3_modules_0_parameters_bias_: tensor<128xf32>, %l_self_modules_layers_modules_3_modules_2_parameters_weight_: tensor<32x128x3x3xf32>, %l_self_modules_layers_modules_4_modules_0_buffers_running_mean_: tensor<160xf32>, %l_self_modules_layers_modules_4_modules_0_buffers_running_var_: tensor<160xf32>, %l_self_modules_layers_modules_4_modules_0_parameters_weight_: tensor<160xf32>, %l_self_modules_layers_modules_4_modules_0_parameters_bias_: tensor<160xf32>, %l_self_modules_layers_modules_4_modules_2_parameters_weight_: tensor<32x160x3x3xf32>, %l_self_modules_layers_modules_5_modules_0_buffers_running_mean_: tensor<192xf32>, %l_self_modules_layers_modules_5_modules_0_buffers_running_var_: tensor<192xf32>, %l_self_modules_layers_modules_5_modules_0_parameters_weight_: tensor<192xf32>, %l_self_modules_layers_modules_5_modules_0_parameters_bias_: tensor<192xf32>, %l_self_modules_layers_modules_5_modules_2_parameters_weight_: tensor<32x192x3x3xf32>) -> tensor<10x224x224x224xf32> {
    %v0.buf = tensor.empty() : tensor<32xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v0.buf : tensor<32xf32>) {
        ^bb0(%in_1: f32, %in_2: f32, %acc_3: f32):
          %v4 = arith.constant 1.0 : f32
          %v5 = arith.constant 9.999999747378752e-06 : f32
          %v6 = arith.addf %v5, %in_1 : f32
          %v7 = math.sqrt %v6 : f32
          %v8 = arith.divf %v4, %v7 : f32
          %v9 = arith.mulf %v8, %in_2 : f32
          linalg.yield %v9 : f32
      }
    -> tensor<32xf32>
    %v10.buf = tensor.empty() : tensor<32xf32>
    %v10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_0_modules_0_buffers_running_mean_, %l_self_modules_layers_modules_0_modules_0_buffers_running_var_, %l_self_modules_layers_modules_0_modules_0_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v10.buf : tensor<32xf32>) {
        ^bb0(%in_11: f32, %in_12: f32, %in_13: f32, %acc_14: f32):
          %v15 = arith.constant 1.0 : f32
          %v16 = arith.constant 9.999999747378752e-06 : f32
          %v17 = arith.addf %v16, %in_12 : f32
          %v18 = math.sqrt %v17 : f32
          %v19 = arith.divf %v15, %v18 : f32
          %v20 = arith.mulf %v19, %in_13 : f32
          %v21 = arith.mulf %v20, %in_11 : f32
          linalg.yield %v21 : f32
      }
    -> tensor<32xf32>
    %input_2.buf = tensor.empty() : tensor<10x32x224x224xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_x_, %v0.buf.out, %v10.buf.out, %l_self_modules_layers_modules_0_modules_0_parameters_bias_ : tensor<10x32x224x224xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%input_2.buf : tensor<10x32x224x224xf32>) {
        ^bb0(%in_22: f32, %in_23: f32, %in_24: f32, %in_25: f32, %acc_26: f32):
          %v27 = arith.mulf %in_22, %in_23 : f32
          %v28 = arith.subf %v27, %in_24 : f32
          %v29 = arith.addf %v28, %in_25 : f32
          %v30 = arith.constant 0.0 : f32
          %v31 = arith.maxnumf %v30, %v29 : f32
          linalg.yield %v31 : f32
      }
    -> tensor<10x32x224x224xf32>
    %v32 = arith.constant 0.0 : f32
    %padded = tensor.pad %input_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i33: index, %pad_i34: index, %pad_i35: index, %pad_i36: index):
        tensor.yield %v32 : f32
    } : tensor<10x32x224x224xf32> to tensor<10x32x226x226xf32>
    %v37.empty = tensor.empty() : tensor<10x32x224x1x224xf32>
    %v37.buf = linalg.fill ins(%v32 : f32) outs(%v37.empty : tensor<10x32x224x1x224xf32>) -> tensor<10x32x224x1x224xf32>
    %v37.shape = tensor.empty() : tensor<224x1xf32>
    %v37.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_layers_modules_0_modules_2_parameters_weight_, %v37.shape : tensor<10x32x226x226xf32>, tensor<32x32x3x3xf32>, tensor<224x1xf32>)
      outs(%v37.buf : tensor<10x32x224x1x224xf32>) {
        ^bb0(%in_39: f32, %in_40: f32, %shape_38: f32, %acc_41: f32):
          %v42 = arith.mulf %in_39, %in_40 : f32
          %v43 = arith.addf %v42, %acc_41 : f32
          linalg.yield %v43 : f32
      }
    -> tensor<10x32x224x1x224xf32>
    %input_3.buf = tensor.empty() : tensor<10x32x224x224xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v37.buf.out : tensor<10x32x224x1x224xf32>)
      outs(%input_3.buf : tensor<10x32x224x224xf32>) {
        ^bb0(%in_44: f32, %acc_45: f32):
          linalg.yield %in_44 : f32
      }
    -> tensor<10x32x224x224xf32>
    %x = tensor.concat dim(1) %l_x_, %input_3.buf.out : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x64x224x224xf32>
    %v46.buf = tensor.empty() : tensor<64xf32>
    %v46.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v46.buf : tensor<64xf32>) {
        ^bb0(%in_47: f32, %in_48: f32, %acc_49: f32):
          %v50 = arith.constant 1.0 : f32
          %v51 = arith.constant 9.999999747378752e-06 : f32
          %v52 = arith.addf %v51, %in_47 : f32
          %v53 = math.sqrt %v52 : f32
          %v54 = arith.divf %v50, %v53 : f32
          %v55 = arith.mulf %v54, %in_48 : f32
          linalg.yield %v55 : f32
      }
    -> tensor<64xf32>
    %v56.buf = tensor.empty() : tensor<64xf32>
    %v56.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_1_modules_0_buffers_running_mean_, %l_self_modules_layers_modules_1_modules_0_buffers_running_var_, %l_self_modules_layers_modules_1_modules_0_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v56.buf : tensor<64xf32>) {
        ^bb0(%in_57: f32, %in_58: f32, %in_59: f32, %acc_60: f32):
          %v61 = arith.constant 1.0 : f32
          %v62 = arith.constant 9.999999747378752e-06 : f32
          %v63 = arith.addf %v62, %in_58 : f32
          %v64 = math.sqrt %v63 : f32
          %v65 = arith.divf %v61, %v64 : f32
          %v66 = arith.mulf %v65, %in_59 : f32
          %v67 = arith.mulf %v66, %in_57 : f32
          linalg.yield %v67 : f32
      }
    -> tensor<64xf32>
    %input_6.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x, %v46.buf.out, %v56.buf.out, %l_self_modules_layers_modules_1_modules_0_parameters_bias_ : tensor<10x64x224x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%input_6.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_68: f32, %in_69: f32, %in_70: f32, %in_71: f32, %acc_72: f32):
          %v73 = arith.mulf %in_68, %in_69 : f32
          %v74 = arith.subf %v73, %in_70 : f32
          %v75 = arith.addf %v74, %in_71 : f32
          %v76 = arith.maxnumf %v32, %v75 : f32
          linalg.yield %v76 : f32
      }
    -> tensor<10x64x224x224xf32>
    %padded_1 = tensor.pad %input_6.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i77: index, %pad_i78: index, %pad_i79: index, %pad_i80: index):
        tensor.yield %v32 : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %v81.empty = tensor.empty() : tensor<10x32x224x1x224xf32>
    %v81.buf = linalg.fill ins(%v32 : f32) outs(%v81.empty : tensor<10x32x224x1x224xf32>) -> tensor<10x32x224x1x224xf32>
    %v81.shape = tensor.empty() : tensor<224x1xf32>
    %v81.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_layers_modules_1_modules_2_parameters_weight_, %v81.shape : tensor<10x64x226x226xf32>, tensor<32x64x3x3xf32>, tensor<224x1xf32>)
      outs(%v81.buf : tensor<10x32x224x1x224xf32>) {
        ^bb0(%in_83: f32, %in_84: f32, %shape_82: f32, %acc_85: f32):
          %v86 = arith.mulf %in_83, %in_84 : f32
          %v87 = arith.addf %v86, %acc_85 : f32
          linalg.yield %v87 : f32
      }
    -> tensor<10x32x224x1x224xf32>
    %input_7.buf = tensor.empty() : tensor<10x32x224x224xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v81.buf.out : tensor<10x32x224x1x224xf32>)
      outs(%input_7.buf : tensor<10x32x224x224xf32>) {
        ^bb0(%in_88: f32, %acc_89: f32):
          linalg.yield %in_88 : f32
      }
    -> tensor<10x32x224x224xf32>
    %x_1 = tensor.concat dim(1) %l_x_, %input_3.buf.out, %input_7.buf.out : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x96x224x224xf32>
    %v90.buf = tensor.empty() : tensor<96xf32>
    %v90.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v90.buf : tensor<96xf32>) {
        ^bb0(%in_91: f32, %in_92: f32, %acc_93: f32):
          %v94 = arith.constant 1.0 : f32
          %v95 = arith.constant 9.999999747378752e-06 : f32
          %v96 = arith.addf %v95, %in_91 : f32
          %v97 = math.sqrt %v96 : f32
          %v98 = arith.divf %v94, %v97 : f32
          %v99 = arith.mulf %v98, %in_92 : f32
          linalg.yield %v99 : f32
      }
    -> tensor<96xf32>
    %v100.buf = tensor.empty() : tensor<96xf32>
    %v100.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_2_modules_0_buffers_running_mean_, %l_self_modules_layers_modules_2_modules_0_buffers_running_var_, %l_self_modules_layers_modules_2_modules_0_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v100.buf : tensor<96xf32>) {
        ^bb0(%in_101: f32, %in_102: f32, %in_103: f32, %acc_104: f32):
          %v105 = arith.constant 1.0 : f32
          %v106 = arith.constant 9.999999747378752e-06 : f32
          %v107 = arith.addf %v106, %in_102 : f32
          %v108 = math.sqrt %v107 : f32
          %v109 = arith.divf %v105, %v108 : f32
          %v110 = arith.mulf %v109, %in_103 : f32
          %v111 = arith.mulf %v110, %in_101 : f32
          linalg.yield %v111 : f32
      }
    -> tensor<96xf32>
    %input_10.buf = tensor.empty() : tensor<10x96x224x224xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_1, %v90.buf.out, %v100.buf.out, %l_self_modules_layers_modules_2_modules_0_parameters_bias_ : tensor<10x96x224x224xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%input_10.buf : tensor<10x96x224x224xf32>) {
        ^bb0(%in_112: f32, %in_113: f32, %in_114: f32, %in_115: f32, %acc_116: f32):
          %v117 = arith.mulf %in_112, %in_113 : f32
          %v118 = arith.subf %v117, %in_114 : f32
          %v119 = arith.addf %v118, %in_115 : f32
          %v120 = arith.maxnumf %v32, %v119 : f32
          linalg.yield %v120 : f32
      }
    -> tensor<10x96x224x224xf32>
    %padded_2 = tensor.pad %input_10.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i121: index, %pad_i122: index, %pad_i123: index, %pad_i124: index):
        tensor.yield %v32 : f32
    } : tensor<10x96x224x224xf32> to tensor<10x96x226x226xf32>
    %v125.empty = tensor.empty() : tensor<10x32x224x1x224xf32>
    %v125.buf = linalg.fill ins(%v32 : f32) outs(%v125.empty : tensor<10x32x224x1x224xf32>) -> tensor<10x32x224x1x224xf32>
    %v125.shape = tensor.empty() : tensor<224x1xf32>
    %v125.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_layers_modules_2_modules_2_parameters_weight_, %v125.shape : tensor<10x96x226x226xf32>, tensor<32x96x3x3xf32>, tensor<224x1xf32>)
      outs(%v125.buf : tensor<10x32x224x1x224xf32>) {
        ^bb0(%in_127: f32, %in_128: f32, %shape_126: f32, %acc_129: f32):
          %v130 = arith.mulf %in_127, %in_128 : f32
          %v131 = arith.addf %v130, %acc_129 : f32
          linalg.yield %v131 : f32
      }
    -> tensor<10x32x224x1x224xf32>
    %input_11.buf = tensor.empty() : tensor<10x32x224x224xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v125.buf.out : tensor<10x32x224x1x224xf32>)
      outs(%input_11.buf : tensor<10x32x224x224xf32>) {
        ^bb0(%in_132: f32, %acc_133: f32):
          linalg.yield %in_132 : f32
      }
    -> tensor<10x32x224x224xf32>
    %x_2 = tensor.concat dim(1) %l_x_, %input_3.buf.out, %input_7.buf.out, %input_11.buf.out : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x128x224x224xf32>
    %v134.buf = tensor.empty() : tensor<128xf32>
    %v134.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<128xf32>, tensor<128xf32>)
      outs(%v134.buf : tensor<128xf32>) {
        ^bb0(%in_135: f32, %in_136: f32, %acc_137: f32):
          %v138 = arith.constant 1.0 : f32
          %v139 = arith.constant 9.999999747378752e-06 : f32
          %v140 = arith.addf %v139, %in_135 : f32
          %v141 = math.sqrt %v140 : f32
          %v142 = arith.divf %v138, %v141 : f32
          %v143 = arith.mulf %v142, %in_136 : f32
          linalg.yield %v143 : f32
      }
    -> tensor<128xf32>
    %v144.buf = tensor.empty() : tensor<128xf32>
    %v144.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_3_modules_0_buffers_running_mean_, %l_self_modules_layers_modules_3_modules_0_buffers_running_var_, %l_self_modules_layers_modules_3_modules_0_parameters_weight_ : tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%v144.buf : tensor<128xf32>) {
        ^bb0(%in_145: f32, %in_146: f32, %in_147: f32, %acc_148: f32):
          %v149 = arith.constant 1.0 : f32
          %v150 = arith.constant 9.999999747378752e-06 : f32
          %v151 = arith.addf %v150, %in_146 : f32
          %v152 = math.sqrt %v151 : f32
          %v153 = arith.divf %v149, %v152 : f32
          %v154 = arith.mulf %v153, %in_147 : f32
          %v155 = arith.mulf %v154, %in_145 : f32
          linalg.yield %v155 : f32
      }
    -> tensor<128xf32>
    %input_14.buf = tensor.empty() : tensor<10x128x224x224xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_2, %v134.buf.out, %v144.buf.out, %l_self_modules_layers_modules_3_modules_0_parameters_bias_ : tensor<10x128x224x224xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>)
      outs(%input_14.buf : tensor<10x128x224x224xf32>) {
        ^bb0(%in_156: f32, %in_157: f32, %in_158: f32, %in_159: f32, %acc_160: f32):
          %v161 = arith.mulf %in_156, %in_157 : f32
          %v162 = arith.subf %v161, %in_158 : f32
          %v163 = arith.addf %v162, %in_159 : f32
          %v164 = arith.maxnumf %v32, %v163 : f32
          linalg.yield %v164 : f32
      }
    -> tensor<10x128x224x224xf32>
    %padded_3 = tensor.pad %input_14.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i165: index, %pad_i166: index, %pad_i167: index, %pad_i168: index):
        tensor.yield %v32 : f32
    } : tensor<10x128x224x224xf32> to tensor<10x128x226x226xf32>
    %v169.empty = tensor.empty() : tensor<10x32x224x1x224xf32>
    %v169.buf = linalg.fill ins(%v32 : f32) outs(%v169.empty : tensor<10x32x224x1x224xf32>) -> tensor<10x32x224x1x224xf32>
    %v169.shape = tensor.empty() : tensor<224x1xf32>
    %v169.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_layers_modules_3_modules_2_parameters_weight_, %v169.shape : tensor<10x128x226x226xf32>, tensor<32x128x3x3xf32>, tensor<224x1xf32>)
      outs(%v169.buf : tensor<10x32x224x1x224xf32>) {
        ^bb0(%in_171: f32, %in_172: f32, %shape_170: f32, %acc_173: f32):
          %v174 = arith.mulf %in_171, %in_172 : f32
          %v175 = arith.addf %v174, %acc_173 : f32
          linalg.yield %v175 : f32
      }
    -> tensor<10x32x224x1x224xf32>
    %input_15.buf = tensor.empty() : tensor<10x32x224x224xf32>
    %input_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v169.buf.out : tensor<10x32x224x1x224xf32>)
      outs(%input_15.buf : tensor<10x32x224x224xf32>) {
        ^bb0(%in_176: f32, %acc_177: f32):
          linalg.yield %in_176 : f32
      }
    -> tensor<10x32x224x224xf32>
    %x_3 = tensor.concat dim(1) %l_x_, %input_3.buf.out, %input_7.buf.out, %input_11.buf.out, %input_15.buf.out : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x160x224x224xf32>
    %v178.buf = tensor.empty() : tensor<160xf32>
    %v178.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<160xf32>, tensor<160xf32>)
      outs(%v178.buf : tensor<160xf32>) {
        ^bb0(%in_179: f32, %in_180: f32, %acc_181: f32):
          %v182 = arith.constant 1.0 : f32
          %v183 = arith.constant 9.999999747378752e-06 : f32
          %v184 = arith.addf %v183, %in_179 : f32
          %v185 = math.sqrt %v184 : f32
          %v186 = arith.divf %v182, %v185 : f32
          %v187 = arith.mulf %v186, %in_180 : f32
          linalg.yield %v187 : f32
      }
    -> tensor<160xf32>
    %v188.buf = tensor.empty() : tensor<160xf32>
    %v188.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_4_modules_0_buffers_running_mean_, %l_self_modules_layers_modules_4_modules_0_buffers_running_var_, %l_self_modules_layers_modules_4_modules_0_parameters_weight_ : tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%v188.buf : tensor<160xf32>) {
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
    -> tensor<160xf32>
    %input_18.buf = tensor.empty() : tensor<10x160x224x224xf32>
    %input_18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_3, %v178.buf.out, %v188.buf.out, %l_self_modules_layers_modules_4_modules_0_parameters_bias_ : tensor<10x160x224x224xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>)
      outs(%input_18.buf : tensor<10x160x224x224xf32>) {
        ^bb0(%in_200: f32, %in_201: f32, %in_202: f32, %in_203: f32, %acc_204: f32):
          %v205 = arith.mulf %in_200, %in_201 : f32
          %v206 = arith.subf %v205, %in_202 : f32
          %v207 = arith.addf %v206, %in_203 : f32
          %v208 = arith.maxnumf %v32, %v207 : f32
          linalg.yield %v208 : f32
      }
    -> tensor<10x160x224x224xf32>
    %padded_4 = tensor.pad %input_18.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i209: index, %pad_i210: index, %pad_i211: index, %pad_i212: index):
        tensor.yield %v32 : f32
    } : tensor<10x160x224x224xf32> to tensor<10x160x226x226xf32>
    %v213.empty = tensor.empty() : tensor<10x32x224x1x224xf32>
    %v213.buf = linalg.fill ins(%v32 : f32) outs(%v213.empty : tensor<10x32x224x1x224xf32>) -> tensor<10x32x224x1x224xf32>
    %v213.shape = tensor.empty() : tensor<224x1xf32>
    %v213.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_layers_modules_4_modules_2_parameters_weight_, %v213.shape : tensor<10x160x226x226xf32>, tensor<32x160x3x3xf32>, tensor<224x1xf32>)
      outs(%v213.buf : tensor<10x32x224x1x224xf32>) {
        ^bb0(%in_215: f32, %in_216: f32, %shape_214: f32, %acc_217: f32):
          %v218 = arith.mulf %in_215, %in_216 : f32
          %v219 = arith.addf %v218, %acc_217 : f32
          linalg.yield %v219 : f32
      }
    -> tensor<10x32x224x1x224xf32>
    %input_19.buf = tensor.empty() : tensor<10x32x224x224xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v213.buf.out : tensor<10x32x224x1x224xf32>)
      outs(%input_19.buf : tensor<10x32x224x224xf32>) {
        ^bb0(%in_220: f32, %acc_221: f32):
          linalg.yield %in_220 : f32
      }
    -> tensor<10x32x224x224xf32>
    %x_4 = tensor.concat dim(1) %l_x_, %input_3.buf.out, %input_7.buf.out, %input_11.buf.out, %input_15.buf.out, %input_19.buf.out : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x192x224x224xf32>
    %v222.buf = tensor.empty() : tensor<192xf32>
    %v222.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v222.buf : tensor<192xf32>) {
        ^bb0(%in_223: f32, %in_224: f32, %acc_225: f32):
          %v226 = arith.constant 1.0 : f32
          %v227 = arith.constant 9.999999747378752e-06 : f32
          %v228 = arith.addf %v227, %in_223 : f32
          %v229 = math.sqrt %v228 : f32
          %v230 = arith.divf %v226, %v229 : f32
          %v231 = arith.mulf %v230, %in_224 : f32
          linalg.yield %v231 : f32
      }
    -> tensor<192xf32>
    %v232.buf = tensor.empty() : tensor<192xf32>
    %v232.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_layers_modules_5_modules_0_buffers_running_mean_, %l_self_modules_layers_modules_5_modules_0_buffers_running_var_, %l_self_modules_layers_modules_5_modules_0_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v232.buf : tensor<192xf32>) {
        ^bb0(%in_233: f32, %in_234: f32, %in_235: f32, %acc_236: f32):
          %v237 = arith.constant 1.0 : f32
          %v238 = arith.constant 9.999999747378752e-06 : f32
          %v239 = arith.addf %v238, %in_234 : f32
          %v240 = math.sqrt %v239 : f32
          %v241 = arith.divf %v237, %v240 : f32
          %v242 = arith.mulf %v241, %in_235 : f32
          %v243 = arith.mulf %v242, %in_233 : f32
          linalg.yield %v243 : f32
      }
    -> tensor<192xf32>
    %input_22.buf = tensor.empty() : tensor<10x192x224x224xf32>
    %input_22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_4, %v222.buf.out, %v232.buf.out, %l_self_modules_layers_modules_5_modules_0_parameters_bias_ : tensor<10x192x224x224xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%input_22.buf : tensor<10x192x224x224xf32>) {
        ^bb0(%in_244: f32, %in_245: f32, %in_246: f32, %in_247: f32, %acc_248: f32):
          %v249 = arith.mulf %in_244, %in_245 : f32
          %v250 = arith.subf %v249, %in_246 : f32
          %v251 = arith.addf %v250, %in_247 : f32
          %v252 = arith.maxnumf %v32, %v251 : f32
          linalg.yield %v252 : f32
      }
    -> tensor<10x192x224x224xf32>
    %padded_5 = tensor.pad %input_22.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i253: index, %pad_i254: index, %pad_i255: index, %pad_i256: index):
        tensor.yield %v32 : f32
    } : tensor<10x192x224x224xf32> to tensor<10x192x226x226xf32>
    %v257.empty = tensor.empty() : tensor<10x32x224x1x224xf32>
    %v257.buf = linalg.fill ins(%v32 : f32) outs(%v257.empty : tensor<10x32x224x1x224xf32>) -> tensor<10x32x224x1x224xf32>
    %v257.shape = tensor.empty() : tensor<224x1xf32>
    %v257.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_layers_modules_5_modules_2_parameters_weight_, %v257.shape : tensor<10x192x226x226xf32>, tensor<32x192x3x3xf32>, tensor<224x1xf32>)
      outs(%v257.buf : tensor<10x32x224x1x224xf32>) {
        ^bb0(%in_259: f32, %in_260: f32, %shape_258: f32, %acc_261: f32):
          %v262 = arith.mulf %in_259, %in_260 : f32
          %v263 = arith.addf %v262, %acc_261 : f32
          linalg.yield %v263 : f32
      }
    -> tensor<10x32x224x1x224xf32>
    %input_23.buf = tensor.empty() : tensor<10x32x224x224xf32>
    %input_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v257.buf.out : tensor<10x32x224x1x224xf32>)
      outs(%input_23.buf : tensor<10x32x224x224xf32>) {
        ^bb0(%in_264: f32, %acc_265: f32):
          linalg.yield %in_264 : f32
      }
    -> tensor<10x32x224x224xf32>
    %x_5 = tensor.concat dim(1) %l_x_, %input_3.buf.out, %input_7.buf.out, %input_11.buf.out, %input_15.buf.out, %input_19.buf.out, %input_23.buf.out : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x224x224x224xf32>
    func.return %x_5 : tensor<10x224x224x224xf32>
  }
}
