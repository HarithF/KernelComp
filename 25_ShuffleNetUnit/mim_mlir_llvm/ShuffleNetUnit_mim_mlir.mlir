module {
  func.func public @ShuffleNetUnit(%l_self_modules_conv1_parameters_weight_: tensor<120x80xf32>, %l_x_: tensor<10x240x224x224xf32>, %l_self_modules_bn1_buffers_running_mean_: tensor<120xf32>, %l_self_modules_bn1_buffers_running_var_: tensor<120xf32>, %l_self_modules_bn1_parameters_weight_: tensor<120xf32>, %l_self_modules_bn1_parameters_bias_: tensor<120xf32>, %l_self_modules_conv2_parameters_weight_: tensor<120x3x3xf32>, %l_self_modules_bn2_buffers_running_mean_: tensor<120xf32>, %l_self_modules_bn2_buffers_running_var_: tensor<120xf32>, %l_self_modules_bn2_parameters_weight_: tensor<120xf32>, %l_self_modules_bn2_parameters_bias_: tensor<120xf32>, %l_self_modules_conv3_parameters_weight_: tensor<480x40xf32>, %l_self_modules_bn3_buffers_running_mean_: tensor<480xf32>, %l_self_modules_bn3_buffers_running_var_: tensor<480xf32>, %l_self_modules_bn3_parameters_weight_: tensor<480xf32>, %l_self_modules_bn3_parameters_bias_: tensor<480xf32>, %l_self_modules_shortcut_modules_0_parameters_weight_: tensor<480x240xf32>, %l_self_modules_shortcut_modules_1_buffers_running_mean_: tensor<480xf32>, %l_self_modules_shortcut_modules_1_buffers_running_var_: tensor<480xf32>, %l_self_modules_shortcut_modules_1_parameters_weight_: tensor<480xf32>, %l_self_modules_shortcut_modules_1_parameters_bias_: tensor<480xf32>) -> tensor<10x480x224x224xf32> {
    %l_self_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv1_parameters_weight_ [[0], [1, 2, 3]] output_shape [120, 80, 1, 1] : tensor<120x80xf32> into tensor<120x80x1x1xf32>
    %out.empty = tensor.empty() : tensor<10x120x224x224xf32>
    %init = arith.constant 0.0 : f32
    %out.buf = linalg.fill ins(%init : f32) outs(%out.empty : tensor<10x120x224x224xf32>) -> tensor<10x120x224x224xf32>
    %out.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 floordiv 40 * 80 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_conv1_parameters_weight_.expanded : tensor<10x240x224x224xf32>, tensor<120x80x1x1xf32>)
      outs(%out.buf : tensor<10x120x224x224xf32>) {
        ^bb0(%in_0: f32, %in_1: f32, %acc_2: f32):
          %v3 = arith.mulf %in_0, %in_1 : f32
          %v4 = arith.addf %v3, %acc_2 : f32
          linalg.yield %v4 : f32
      }
    -> tensor<10x120x224x224xf32>
    %v5.buf = tensor.empty() : tensor<120xf32>
    %v5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v5.buf : tensor<120xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %acc_8: f32):
          %v9 = arith.constant 1.0 : f32
          %v10 = arith.constant 9.999999747378752e-06 : f32
          %v11 = arith.addf %v10, %in_6 : f32
          %v12 = math.sqrt %v11 : f32
          %v13 = arith.divf %v9, %v12 : f32
          %v14 = arith.mulf %v13, %in_7 : f32
          linalg.yield %v14 : f32
      }
    -> tensor<120xf32>
    %v15.buf = tensor.empty() : tensor<120xf32>
    %v15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_mean_, %l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v15.buf : tensor<120xf32>) {
        ^bb0(%in_16: f32, %in_17: f32, %in_18: f32, %acc_19: f32):
          %v20 = arith.constant 1.0 : f32
          %v21 = arith.constant 9.999999747378752e-06 : f32
          %v22 = arith.addf %v21, %in_17 : f32
          %v23 = math.sqrt %v22 : f32
          %v24 = arith.divf %v20, %v23 : f32
          %v25 = arith.mulf %v24, %in_18 : f32
          %v26 = arith.mulf %v25, %in_16 : f32
          linalg.yield %v26 : f32
      }
    -> tensor<120xf32>
    %out.post = tensor.empty() : tensor<10x120x224x224xf32>
    %out.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out.buf.out, %v5.buf.out, %v15.buf.out, %l_self_modules_bn1_parameters_bias_ : tensor<10x120x224x224xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out.post : tensor<10x120x224x224xf32>) {
        ^bb0(%acc_30: f32, %in_27: f32, %in_28: f32, %in_29: f32, %post_31: f32):
          %v32 = arith.mulf %acc_30, %in_27 : f32
          %v33 = arith.subf %v32, %in_28 : f32
          %v34 = arith.addf %v33, %in_29 : f32
          %v35 = arith.maxnumf %init, %v34 : f32
          linalg.yield %v35 : f32
      }
    -> tensor<10x120x224x224xf32>
    %v40 = tensor.pad %out.post.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i36: index, %pad_i37: index, %pad_i38: index, %pad_i39: index):
        tensor.yield %init : f32
    } : tensor<10x120x224x224xf32> to tensor<10x120x226x226xf32>
    %l_self_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv2_parameters_weight_ [[0], [1, 2], [3]] output_shape [120, 1, 3, 3] : tensor<120x3x3xf32> into tensor<120x1x3x3xf32>
    %out_1.empty = tensor.empty() : tensor<10x120x224x224xf32>
    %out_1.buf = linalg.fill ins(%init : f32) outs(%out_1.empty : tensor<10x120x224x224xf32>) -> tensor<10x120x224x224xf32>
    %out_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v40, %l_self_modules_conv2_parameters_weight_.expanded : tensor<10x120x226x226xf32>, tensor<120x1x3x3xf32>)
      outs(%out_1.buf : tensor<10x120x224x224xf32>) {
        ^bb0(%in_41: f32, %in_42: f32, %acc_43: f32):
          %v44 = arith.mulf %in_41, %in_42 : f32
          %v45 = arith.addf %v44, %acc_43 : f32
          linalg.yield %v45 : f32
      }
    -> tensor<10x120x224x224xf32>
    %v46.buf = tensor.empty() : tensor<120xf32>
    %v46.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>)
      outs(%v46.buf : tensor<120xf32>) {
        ^bb0(%in_47: f32, %in_48: f32, %acc_49: f32):
          %v50 = arith.constant 1.0 : f32
          %v51 = arith.constant 9.999999747378752e-06 : f32
          %v52 = arith.addf %v51, %in_47 : f32
          %v53 = math.sqrt %v52 : f32
          %v54 = arith.divf %v50, %v53 : f32
          %v55 = arith.mulf %v54, %in_48 : f32
          linalg.yield %v55 : f32
      }
    -> tensor<120xf32>
    %v56.buf = tensor.empty() : tensor<120xf32>
    %v56.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_mean_, %l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%v56.buf : tensor<120xf32>) {
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
    -> tensor<120xf32>
    %out_1.post = tensor.empty() : tensor<10x120x224x224xf32>
    %out_1.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_1.buf.out, %v46.buf.out, %v56.buf.out, %l_self_modules_bn2_parameters_bias_ : tensor<10x120x224x224xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>)
      outs(%out_1.post : tensor<10x120x224x224xf32>) {
        ^bb0(%acc_71: f32, %in_68: f32, %in_69: f32, %in_70: f32, %post_72: f32):
          %v73 = arith.mulf %acc_71, %in_68 : f32
          %v74 = arith.subf %v73, %in_69 : f32
          %v75 = arith.addf %v74, %in_70 : f32
          linalg.yield %v75 : f32
      }
    -> tensor<10x120x224x224xf32>
    %transpose.buf = tensor.empty() : tensor<10x40x3x224x224xf32>
    %transpose.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1 + d2 * 40, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%out_1.post.out : tensor<10x120x224x224xf32>)
      outs(%transpose.buf : tensor<10x40x3x224x224xf32>) {
        ^bb0(%in_76: f32, %acc_77: f32):
          linalg.yield %in_76 : f32
      }
    -> tensor<10x40x3x224x224xf32>
    %l_self_modules_conv3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv3_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 40, 1, 1] : tensor<480x40xf32> into tensor<480x40x1x1xf32>
    %out_3.empty = tensor.empty() : tensor<10x480x224x224xf32>
    %out_3.buf = linalg.fill ins(%init : f32) outs(%out_3.empty : tensor<10x480x224x224xf32>) -> tensor<10x480x224x224xf32>
    %out_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, (d1 floordiv 160 * 40 + d4) floordiv 3, (d1 floordiv 160 * 40 + d4) mod 3, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%transpose.buf.out, %l_self_modules_conv3_parameters_weight_.expanded : tensor<10x40x3x224x224xf32>, tensor<480x40x1x1xf32>)
      outs(%out_3.buf : tensor<10x480x224x224xf32>) {
        ^bb0(%in_78: f32, %in_79: f32, %acc_80: f32):
          %v81 = arith.mulf %in_78, %in_79 : f32
          %v82 = arith.addf %v81, %acc_80 : f32
          linalg.yield %v82 : f32
      }
    -> tensor<10x480x224x224xf32>
    %v83.buf = tensor.empty() : tensor<480xf32>
    %v83.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn3_buffers_running_var_, %l_self_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v83.buf : tensor<480xf32>) {
        ^bb0(%in_84: f32, %in_85: f32, %acc_86: f32):
          %v87 = arith.constant 1.0 : f32
          %v88 = arith.constant 9.999999747378752e-06 : f32
          %v89 = arith.addf %v88, %in_84 : f32
          %v90 = math.sqrt %v89 : f32
          %v91 = arith.divf %v87, %v90 : f32
          %v92 = arith.mulf %v91, %in_85 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<480xf32>
    %v93.buf = tensor.empty() : tensor<480xf32>
    %v93.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn3_buffers_running_mean_, %l_self_modules_bn3_buffers_running_var_, %l_self_modules_bn3_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v93.buf : tensor<480xf32>) {
        ^bb0(%in_94: f32, %in_95: f32, %in_96: f32, %acc_97: f32):
          %v98 = arith.constant 1.0 : f32
          %v99 = arith.constant 9.999999747378752e-06 : f32
          %v100 = arith.addf %v99, %in_95 : f32
          %v101 = math.sqrt %v100 : f32
          %v102 = arith.divf %v98, %v101 : f32
          %v103 = arith.mulf %v102, %in_96 : f32
          %v104 = arith.mulf %v103, %in_94 : f32
          linalg.yield %v104 : f32
      }
    -> tensor<480xf32>
    %l_self_modules_shortcut_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_shortcut_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 240, 1, 1] : tensor<480x240xf32> into tensor<480x240x1x1xf32>
    %v105.empty = tensor.empty() : tensor<10x480x224x1x224xf32>
    %v105.buf = linalg.fill ins(%init : f32) outs(%v105.empty : tensor<10x480x224x1x224xf32>) -> tensor<10x480x224x1x224xf32>
    %v105.shape = tensor.empty() : tensor<224x1xf32>
    %v105.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_shortcut_modules_0_parameters_weight_.expanded, %v105.shape : tensor<10x240x224x224xf32>, tensor<480x240x1x1xf32>, tensor<224x1xf32>)
      outs(%v105.buf : tensor<10x480x224x1x224xf32>) {
        ^bb0(%in_107: f32, %in_108: f32, %shape_106: f32, %acc_109: f32):
          %v110 = arith.mulf %in_107, %in_108 : f32
          %v111 = arith.addf %v110, %acc_109 : f32
          linalg.yield %v111 : f32
      }
    -> tensor<10x480x224x1x224xf32>
    %v112.buf = tensor.empty() : tensor<480xf32>
    %v112.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_shortcut_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v112.buf : tensor<480xf32>) {
        ^bb0(%in_113: f32, %in_114: f32, %acc_115: f32):
          %v116 = arith.constant 1.0 : f32
          %v117 = arith.constant 9.999999747378752e-06 : f32
          %v118 = arith.addf %v117, %in_113 : f32
          %v119 = math.sqrt %v118 : f32
          %v120 = arith.divf %v116, %v119 : f32
          %v121 = arith.mulf %v120, %in_114 : f32
          linalg.yield %v121 : f32
      }
    -> tensor<480xf32>
    %v122.buf = tensor.empty() : tensor<480xf32>
    %v122.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_shortcut_modules_1_buffers_running_mean_, %l_self_modules_shortcut_modules_1_buffers_running_var_, %l_self_modules_shortcut_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v122.buf : tensor<480xf32>) {
        ^bb0(%in_123: f32, %in_124: f32, %in_125: f32, %acc_126: f32):
          %v127 = arith.constant 1.0 : f32
          %v128 = arith.constant 9.999999747378752e-06 : f32
          %v129 = arith.addf %v128, %in_124 : f32
          %v130 = math.sqrt %v129 : f32
          %v131 = arith.divf %v127, %v130 : f32
          %v132 = arith.mulf %v131, %in_125 : f32
          %v133 = arith.mulf %v132, %in_123 : f32
          linalg.yield %v133 : f32
      }
    -> tensor<480xf32>
    %v105.post = tensor.empty() : tensor<10x480x224x1x224xf32>
    %v105.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v105.buf.out, %v112.buf.out, %v122.buf.out, %l_self_modules_shortcut_modules_1_parameters_bias_ : tensor<10x480x224x1x224xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v105.post : tensor<10x480x224x1x224xf32>) {
        ^bb0(%acc_137: f32, %in_134: f32, %in_135: f32, %in_136: f32, %post_138: f32):
          %v139 = arith.mulf %acc_137, %in_134 : f32
          %v140 = arith.subf %v139, %in_135 : f32
          %v141 = arith.addf %v140, %in_136 : f32
          linalg.yield %v141 : f32
      }
    -> tensor<10x480x224x1x224xf32>
    %out_3.post = tensor.empty() : tensor<10x480x224x224xf32>
    %out_3.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%out_3.buf.out, %v83.buf.out, %v93.buf.out, %l_self_modules_bn3_parameters_bias_, %v105.post.out : tensor<10x480x224x224xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<10x480x224x1x224xf32>)
      outs(%out_3.post : tensor<10x480x224x224xf32>) {
        ^bb0(%acc_146: f32, %in_142: f32, %in_143: f32, %in_144: f32, %in_145: f32, %post_147: f32):
          %v148 = arith.mulf %acc_146, %in_142 : f32
          %v149 = arith.subf %v148, %in_143 : f32
          %v150 = arith.addf %v149, %in_144 : f32
          %v151 = arith.maxnumf %init, %v150 : f32
          %v152 = arith.addf %v151, %in_145 : f32
          linalg.yield %v152 : f32
      }
    -> tensor<10x480x224x224xf32>
    func.return %out_3.post.out : tensor<10x480x224x224xf32>
  }
}
