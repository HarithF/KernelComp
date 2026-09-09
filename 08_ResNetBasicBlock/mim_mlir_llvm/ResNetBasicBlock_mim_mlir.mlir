module {
  func.func public @ResNetBasicBlock(%l_self_modules_conv1_parameters_weight_: tensor<64x3x3x3xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_bn1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_bn1_buffers_running_var_: tensor<64xf32>, %l_self_modules_bn1_parameters_weight_: tensor<64xf32>, %l_self_modules_bn1_parameters_bias_: tensor<64xf32>, %l_self_modules_conv2_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_bn2_buffers_running_mean_: tensor<64xf32>, %l_self_modules_bn2_buffers_running_var_: tensor<64xf32>, %l_self_modules_bn2_parameters_weight_: tensor<64xf32>, %l_self_modules_bn2_parameters_bias_: tensor<64xf32>, %l_self_modules_downsample_modules_0_parameters_weight_: tensor<64x3xf32>, %l_self_modules_downsample_modules_1_buffers_running_mean_: tensor<64xf32>, %l_self_modules_downsample_modules_1_buffers_running_var_: tensor<64xf32>, %l_self_modules_downsample_modules_1_parameters_weight_: tensor<64xf32>, %l_self_modules_downsample_modules_1_parameters_bias_: tensor<64xf32>) -> tensor<10x64x224x224xf32> {
    %v0 = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1: index, %pad_i2: index, %pad_i3: index, %pad_i4: index):
        tensor.yield %v0 : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %v5.empty = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v5.buf = linalg.fill ins(%v0 : f32) outs(%v5.empty : tensor<10x64x224x1x224xf32>) -> tensor<10x64x224x1x224xf32>
    %v5.shape = tensor.empty() : tensor<224x1xf32>
    %v5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_, %v5.shape : tensor<10x3x226x226xf32>, tensor<64x3x3x3xf32>, tensor<224x1xf32>)
      outs(%v5.buf : tensor<10x64x224x1x224xf32>) {
        ^bb0(%in_7: f32, %in_8: f32, %shape_6: f32, %acc_9: f32):
          %v10 = arith.mulf %in_7, %in_8 : f32
          %v11 = arith.addf %v10, %acc_9 : f32
          linalg.yield %v11 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %v12.buf = tensor.empty() : tensor<64xf32>
    %v12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v12.buf : tensor<64xf32>) {
        ^bb0(%in_13: f32, %in_14: f32, %acc_15: f32):
          %v16 = arith.constant 1.0 : f32
          %v17 = arith.constant 9.999999747378752e-06 : f32
          %v18 = arith.addf %v17, %in_13 : f32
          %v19 = math.sqrt %v18 : f32
          %v20 = arith.divf %v16, %v19 : f32
          %v21 = arith.mulf %v20, %in_14 : f32
          linalg.yield %v21 : f32
      }
    -> tensor<64xf32>
    %v22.buf = tensor.empty() : tensor<64xf32>
    %v22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_mean_, %l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v22.buf : tensor<64xf32>) {
        ^bb0(%in_23: f32, %in_24: f32, %in_25: f32, %acc_26: f32):
          %v27 = arith.constant 1.0 : f32
          %v28 = arith.constant 9.999999747378752e-06 : f32
          %v29 = arith.addf %v28, %in_24 : f32
          %v30 = math.sqrt %v29 : f32
          %v31 = arith.divf %v27, %v30 : f32
          %v32 = arith.mulf %v31, %in_25 : f32
          %v33 = arith.mulf %v32, %in_23 : f32
          linalg.yield %v33 : f32
      }
    -> tensor<64xf32>
    %v5.post = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v5.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.buf.out, %v12.buf.out, %v22.buf.out, %l_self_modules_bn1_parameters_bias_ : tensor<10x64x224x1x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v5.post : tensor<10x64x224x1x224xf32>) {
        ^bb0(%acc_37: f32, %in_34: f32, %in_35: f32, %in_36: f32, %post_38: f32):
          %v39 = arith.mulf %acc_37, %in_34 : f32
          %v40 = arith.subf %v39, %in_35 : f32
          %v41 = arith.addf %v40, %in_36 : f32
          %v42 = arith.maxnumf %v0, %v41 : f32
          linalg.yield %v42 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %out_2.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %out_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.post.out : tensor<10x64x224x1x224xf32>)
      outs(%out_2.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_43: f32, %acc_44: f32):
          linalg.yield %in_43 : f32
      }
    -> tensor<10x64x224x224xf32>
    %padded_1 = tensor.pad %out_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i45: index, %pad_i46: index, %pad_i47: index, %pad_i48: index):
        tensor.yield %v0 : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %v49.empty = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v49.buf = linalg.fill ins(%v0 : f32) outs(%v49.empty : tensor<10x64x224x1x224xf32>) -> tensor<10x64x224x1x224xf32>
    %v49.shape = tensor.empty() : tensor<224x1xf32>
    %v49.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_conv2_parameters_weight_, %v49.shape : tensor<10x64x226x226xf32>, tensor<64x64x3x3xf32>, tensor<224x1xf32>)
      outs(%v49.buf : tensor<10x64x224x1x224xf32>) {
        ^bb0(%in_51: f32, %in_52: f32, %shape_50: f32, %acc_53: f32):
          %v54 = arith.mulf %in_51, %in_52 : f32
          %v55 = arith.addf %v54, %acc_53 : f32
          linalg.yield %v55 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %v56.buf = tensor.empty() : tensor<64xf32>
    %v56.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v56.buf : tensor<64xf32>) {
        ^bb0(%in_57: f32, %in_58: f32, %acc_59: f32):
          %v60 = arith.constant 1.0 : f32
          %v61 = arith.constant 9.999999747378752e-06 : f32
          %v62 = arith.addf %v61, %in_57 : f32
          %v63 = math.sqrt %v62 : f32
          %v64 = arith.divf %v60, %v63 : f32
          %v65 = arith.mulf %v64, %in_58 : f32
          linalg.yield %v65 : f32
      }
    -> tensor<64xf32>
    %v66.buf = tensor.empty() : tensor<64xf32>
    %v66.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_mean_, %l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v66.buf : tensor<64xf32>) {
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
    -> tensor<64xf32>
    %l_self_modules_downsample_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_downsample_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 3, 1, 1] : tensor<64x3xf32> into tensor<64x3x1x1xf32>
    %v78.empty = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v78.buf = linalg.fill ins(%v0 : f32) outs(%v78.empty : tensor<10x64x224x1x224xf32>) -> tensor<10x64x224x1x224xf32>
    %v78.shape = tensor.empty() : tensor<224x1xf32>
    %v78.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_downsample_modules_0_parameters_weight_.expanded, %v78.shape : tensor<10x3x224x224xf32>, tensor<64x3x1x1xf32>, tensor<224x1xf32>)
      outs(%v78.buf : tensor<10x64x224x1x224xf32>) {
        ^bb0(%in_80: f32, %in_81: f32, %shape_79: f32, %acc_82: f32):
          %v83 = arith.mulf %in_80, %in_81 : f32
          %v84 = arith.addf %v83, %acc_82 : f32
          linalg.yield %v84 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %v85.buf = tensor.empty() : tensor<64xf32>
    %v85.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_downsample_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>)
      outs(%v85.buf : tensor<64xf32>) {
        ^bb0(%in_86: f32, %in_87: f32, %acc_88: f32):
          %v89 = arith.constant 1.0 : f32
          %v90 = arith.constant 9.999999747378752e-06 : f32
          %v91 = arith.addf %v90, %in_86 : f32
          %v92 = math.sqrt %v91 : f32
          %v93 = arith.divf %v89, %v92 : f32
          %v94 = arith.mulf %v93, %in_87 : f32
          linalg.yield %v94 : f32
      }
    -> tensor<64xf32>
    %v95.buf = tensor.empty() : tensor<64xf32>
    %v95.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_downsample_modules_1_buffers_running_mean_, %l_self_modules_downsample_modules_1_buffers_running_var_, %l_self_modules_downsample_modules_1_parameters_weight_ : tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v95.buf : tensor<64xf32>) {
        ^bb0(%in_96: f32, %in_97: f32, %in_98: f32, %acc_99: f32):
          %v100 = arith.constant 1.0 : f32
          %v101 = arith.constant 9.999999747378752e-06 : f32
          %v102 = arith.addf %v101, %in_97 : f32
          %v103 = math.sqrt %v102 : f32
          %v104 = arith.divf %v100, %v103 : f32
          %v105 = arith.mulf %v104, %in_98 : f32
          %v106 = arith.mulf %v105, %in_96 : f32
          linalg.yield %v106 : f32
      }
    -> tensor<64xf32>
    %v78.post = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v78.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v78.buf.out, %v85.buf.out, %v95.buf.out, %l_self_modules_downsample_modules_1_parameters_bias_ : tensor<10x64x224x1x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>)
      outs(%v78.post : tensor<10x64x224x1x224xf32>) {
        ^bb0(%acc_110: f32, %in_107: f32, %in_108: f32, %in_109: f32, %post_111: f32):
          %v112 = arith.mulf %acc_110, %in_107 : f32
          %v113 = arith.subf %v112, %in_108 : f32
          %v114 = arith.addf %v113, %in_109 : f32
          linalg.yield %v114 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %v49.post = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v49.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, 0, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v49.buf.out, %v56.buf.out, %v66.buf.out, %l_self_modules_bn2_parameters_bias_, %v78.post.out : tensor<10x64x224x1x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<10x64x224x1x224xf32>)
      outs(%v49.post : tensor<10x64x224x1x224xf32>) {
        ^bb0(%acc_119: f32, %in_115: f32, %in_116: f32, %in_117: f32, %in_118: f32, %post_120: f32):
          %v121 = arith.mulf %acc_119, %in_115 : f32
          %v122 = arith.subf %v121, %in_116 : f32
          %v123 = arith.addf %v122, %in_117 : f32
          %v124 = arith.addf %v123, %in_118 : f32
          %v125 = arith.maxnumf %v0, %v124 : f32
          linalg.yield %v125 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %out_6.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %out_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v49.post.out : tensor<10x64x224x1x224xf32>)
      outs(%out_6.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_126: f32, %acc_127: f32):
          linalg.yield %in_126 : f32
      }
    -> tensor<10x64x224x224xf32>
    func.return %out_6.buf.out : tensor<10x64x224x224xf32>
  }
}
