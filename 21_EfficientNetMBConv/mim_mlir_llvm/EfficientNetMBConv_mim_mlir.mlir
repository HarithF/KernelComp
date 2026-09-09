module {
  func.func public @EfficientNetMBConv(%l_self_modules_expand_conv_modules_0_parameters_weight_: tensor<672x112xf32>, %l_x_: tensor<10x112x224x224xf32>, %l_self_modules_expand_conv_modules_1_buffers_running_mean_: tensor<672xf32>, %l_self_modules_expand_conv_modules_1_buffers_running_var_: tensor<672xf32>, %l_self_modules_expand_conv_modules_1_parameters_weight_: tensor<672xf32>, %l_self_modules_expand_conv_modules_1_parameters_bias_: tensor<672xf32>, %l_self_modules_depthwise_conv_modules_0_parameters_weight_: tensor<672x5x5xf32>, %l_self_modules_depthwise_conv_modules_1_buffers_running_mean_: tensor<672xf32>, %l_self_modules_depthwise_conv_modules_1_buffers_running_var_: tensor<672xf32>, %l_self_modules_depthwise_conv_modules_1_parameters_weight_: tensor<672xf32>, %l_self_modules_depthwise_conv_modules_1_parameters_bias_: tensor<672xf32>, %l_self_modules_project_conv_modules_0_parameters_weight_: tensor<192x672xf32>, %l_self_modules_project_conv_modules_1_buffers_running_mean_: tensor<192xf32>, %l_self_modules_project_conv_modules_1_buffers_running_var_: tensor<192xf32>, %l_self_modules_project_conv_modules_1_parameters_weight_: tensor<192xf32>, %l_self_modules_project_conv_modules_1_parameters_bias_: tensor<192xf32>) -> tensor<10x192x112x112xf32> {
    %l_self_modules_expand_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_expand_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [672, 112, 1, 1] : tensor<672x112xf32> into tensor<672x112x1x1xf32>
    %v0.empty = tensor.empty() : tensor<10x672x224x1x224xf32>
    %init = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%init : f32) outs(%v0.empty : tensor<10x672x224x1x224xf32>) -> tensor<10x672x224x1x224xf32>
    %v0.shape = tensor.empty() : tensor<224x1xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_expand_conv_modules_0_parameters_weight_.expanded, %v0.shape : tensor<10x112x224x224xf32>, tensor<672x112x1x1xf32>, tensor<224x1xf32>)
      outs(%v0.buf : tensor<10x672x224x1x224xf32>) {
        ^bb0(%in_2: f32, %in_3: f32, %shape_1: f32, %acc_4: f32):
          %v5 = arith.mulf %in_2, %in_3 : f32
          %v6 = arith.addf %v5, %acc_4 : f32
          linalg.yield %v6 : f32
      }
    -> tensor<10x672x224x1x224xf32>
    %v7.buf = tensor.empty() : tensor<672xf32>
    %v7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_expand_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v7.buf : tensor<672xf32>) {
        ^bb0(%in_8: f32, %in_9: f32, %acc_10: f32):
          %v11 = arith.constant 1.0 : f32
          %v12 = arith.constant 9.999999747378752e-06 : f32
          %v13 = arith.addf %v12, %in_8 : f32
          %v14 = math.sqrt %v13 : f32
          %v15 = arith.divf %v11, %v14 : f32
          %v16 = arith.mulf %v15, %in_9 : f32
          linalg.yield %v16 : f32
      }
    -> tensor<672xf32>
    %v17.buf = tensor.empty() : tensor<672xf32>
    %v17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_expand_conv_modules_1_buffers_running_mean_, %l_self_modules_expand_conv_modules_1_buffers_running_var_, %l_self_modules_expand_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v17.buf : tensor<672xf32>) {
        ^bb0(%in_18: f32, %in_19: f32, %in_20: f32, %acc_21: f32):
          %v22 = arith.constant 1.0 : f32
          %v23 = arith.constant 9.999999747378752e-06 : f32
          %v24 = arith.addf %v23, %in_19 : f32
          %v25 = math.sqrt %v24 : f32
          %v26 = arith.divf %v22, %v25 : f32
          %v27 = arith.mulf %v26, %in_20 : f32
          %v28 = arith.mulf %v27, %in_18 : f32
          linalg.yield %v28 : f32
      }
    -> tensor<672xf32>
    %v0.post = tensor.empty() : tensor<10x672x224x1x224xf32>
    %v0.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %v7.buf.out, %v17.buf.out, %l_self_modules_expand_conv_modules_1_parameters_bias_ : tensor<10x672x224x1x224xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v0.post : tensor<10x672x224x1x224xf32>) {
        ^bb0(%acc_32: f32, %in_29: f32, %in_30: f32, %in_31: f32, %post_33: f32):
          %v34 = arith.mulf %acc_32, %in_29 : f32
          %v35 = arith.subf %v34, %in_30 : f32
          %v36 = arith.addf %v35, %in_31 : f32
          %v37 = arith.maxnumf %init, %v36 : f32
          %v38 = arith.constant 6.0 : f32
          %v39 = arith.minnumf %v38, %v37 : f32
          linalg.yield %v39 : f32
      }
    -> tensor<10x672x224x1x224xf32>
    %input_3.buf = tensor.empty() : tensor<10x672x224x224xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.post.out : tensor<10x672x224x1x224xf32>)
      outs(%input_3.buf : tensor<10x672x224x224xf32>) {
        ^bb0(%in_40: f32, %acc_41: f32):
          linalg.yield %in_40 : f32
      }
    -> tensor<10x672x224x224xf32>
    %v46 = tensor.pad %input_3.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i42: index, %pad_i43: index, %pad_i44: index, %pad_i45: index):
        tensor.yield %init : f32
    } : tensor<10x672x224x224xf32> to tensor<10x672x228x228xf32>
    %l_self_modules_depthwise_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_depthwise_conv_modules_0_parameters_weight_ [[0], [1, 2], [3]] output_shape [672, 1, 5, 5] : tensor<672x5x5xf32> into tensor<672x1x5x5xf32>
    %input_6.empty = tensor.empty() : tensor<10x672x112x112xf32>
    %input_6.buf = linalg.fill ins(%init : f32) outs(%input_6.empty : tensor<10x672x112x112xf32>) -> tensor<10x672x112x112xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v46, %l_self_modules_depthwise_conv_modules_0_parameters_weight_.expanded : tensor<10x672x228x228xf32>, tensor<672x1x5x5xf32>)
      outs(%input_6.buf : tensor<10x672x112x112xf32>) {
        ^bb0(%in_47: f32, %in_48: f32, %acc_49: f32):
          %v50 = arith.mulf %in_47, %in_48 : f32
          %v51 = arith.addf %v50, %acc_49 : f32
          linalg.yield %v51 : f32
      }
    -> tensor<10x672x112x112xf32>
    %v52.buf = tensor.empty() : tensor<672xf32>
    %v52.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v52.buf : tensor<672xf32>) {
        ^bb0(%in_53: f32, %in_54: f32, %acc_55: f32):
          %v56 = arith.constant 1.0 : f32
          %v57 = arith.constant 9.999999747378752e-06 : f32
          %v58 = arith.addf %v57, %in_53 : f32
          %v59 = math.sqrt %v58 : f32
          %v60 = arith.divf %v56, %v59 : f32
          %v61 = arith.mulf %v60, %in_54 : f32
          linalg.yield %v61 : f32
      }
    -> tensor<672xf32>
    %v62.buf = tensor.empty() : tensor<672xf32>
    %v62.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_depthwise_conv_modules_1_buffers_running_mean_, %l_self_modules_depthwise_conv_modules_1_buffers_running_var_, %l_self_modules_depthwise_conv_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v62.buf : tensor<672xf32>) {
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
    -> tensor<672xf32>
    %input_6.post = tensor.empty() : tensor<10x672x112x112xf32>
    %input_6.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_6.buf.out, %v52.buf.out, %v62.buf.out, %l_self_modules_depthwise_conv_modules_1_parameters_bias_ : tensor<10x672x112x112xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%input_6.post : tensor<10x672x112x112xf32>) {
        ^bb0(%acc_77: f32, %in_74: f32, %in_75: f32, %in_76: f32, %post_78: f32):
          %v79 = arith.mulf %acc_77, %in_74 : f32
          %v80 = arith.subf %v79, %in_75 : f32
          %v81 = arith.addf %v80, %in_76 : f32
          %v82 = arith.maxnumf %init, %v81 : f32
          %v83 = arith.constant 6.0 : f32
          %v84 = arith.minnumf %v83, %v82 : f32
          linalg.yield %v84 : f32
      }
    -> tensor<10x672x112x112xf32>
    %l_self_modules_project_conv_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_project_conv_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 672, 1, 1] : tensor<192x672xf32> into tensor<192x672x1x1xf32>
    %v85.empty = tensor.empty() : tensor<10x192x112x1x112xf32>
    %v85.buf = linalg.fill ins(%init : f32) outs(%v85.empty : tensor<10x192x112x1x112xf32>) -> tensor<10x192x112x1x112xf32>
    %v85.shape = tensor.empty() : tensor<112x1xf32>
    %v85.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_6.post.out, %l_self_modules_project_conv_modules_0_parameters_weight_.expanded, %v85.shape : tensor<10x672x112x112xf32>, tensor<192x672x1x1xf32>, tensor<112x1xf32>)
      outs(%v85.buf : tensor<10x192x112x1x112xf32>) {
        ^bb0(%in_87: f32, %in_88: f32, %shape_86: f32, %acc_89: f32):
          %v90 = arith.mulf %in_87, %in_88 : f32
          %v91 = arith.addf %v90, %acc_89 : f32
          linalg.yield %v91 : f32
      }
    -> tensor<10x192x112x1x112xf32>
    %v92.buf = tensor.empty() : tensor<192xf32>
    %v92.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v92.buf : tensor<192xf32>) {
        ^bb0(%in_93: f32, %in_94: f32, %acc_95: f32):
          %v96 = arith.constant 1.0 : f32
          %v97 = arith.constant 9.999999747378752e-06 : f32
          %v98 = arith.addf %v97, %in_93 : f32
          %v99 = math.sqrt %v98 : f32
          %v100 = arith.divf %v96, %v99 : f32
          %v101 = arith.mulf %v100, %in_94 : f32
          linalg.yield %v101 : f32
      }
    -> tensor<192xf32>
    %v102.buf = tensor.empty() : tensor<192xf32>
    %v102.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_project_conv_modules_1_buffers_running_mean_, %l_self_modules_project_conv_modules_1_buffers_running_var_, %l_self_modules_project_conv_modules_1_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v102.buf : tensor<192xf32>) {
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
    -> tensor<192xf32>
    %v85.post = tensor.empty() : tensor<10x192x112x1x112xf32>
    %v85.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v85.buf.out, %v92.buf.out, %v102.buf.out, %l_self_modules_project_conv_modules_1_parameters_bias_ : tensor<10x192x112x1x112xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v85.post : tensor<10x192x112x1x112xf32>) {
        ^bb0(%acc_117: f32, %in_114: f32, %in_115: f32, %in_116: f32, %post_118: f32):
          %v119 = arith.mulf %acc_117, %in_114 : f32
          %v120 = arith.subf %v119, %in_115 : f32
          %v121 = arith.addf %v120, %in_116 : f32
          linalg.yield %v121 : f32
      }
    -> tensor<10x192x112x1x112xf32>
    %input_8.buf = tensor.empty() : tensor<10x192x112x112xf32>
    %input_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v85.post.out : tensor<10x192x112x1x112xf32>)
      outs(%input_8.buf : tensor<10x192x112x112xf32>) {
        ^bb0(%in_122: f32, %acc_123: f32):
          linalg.yield %in_122 : f32
      }
    -> tensor<10x192x112x112xf32>
    func.return %input_8.buf.out : tensor<10x192x112x112xf32>
  }
}
