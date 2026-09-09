module {
  func.func public @NetVladNoGhostClusters(%l_x_: tensor<2048x100x512xf32>, %l_self_parameters_clusters_: tensor<512x32xf32>, %l_self_modules_batch_norm_buffers_running_mean_: tensor<32xf32>, %l_self_modules_batch_norm_buffers_running_var_: tensor<32xf32>, %l_self_modules_batch_norm_parameters_weight_: tensor<32xf32>, %l_self_modules_batch_norm_parameters_bias_: tensor<32xf32>, %l_self_parameters_clusters2_: tensor<512x32xf32>) -> tensor<2048x16384xf32> {
    %assignment_1.empty = tensor.empty() : tensor<204800x32xf32>
    %init = arith.constant 0.0 : f32
    %assignment_1.buf = linalg.fill ins(%init : f32) outs(%assignment_1.empty : tensor<204800x32xf32>) -> tensor<204800x32xf32>
    %assignment_1.shape = tensor.empty() : tensor<128x4xf32>
    %assignment_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0 floordiv 100, d0 mod 100, d2 * 4 + d3)>, affine_map<(d0, d1, d2, d3) -> (d2 * 4 + d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%l_x_, %l_self_parameters_clusters_, %assignment_1.shape : tensor<2048x100x512xf32>, tensor<512x32xf32>, tensor<128x4xf32>)
      outs(%assignment_1.buf : tensor<204800x32xf32>) {
        ^bb0(%in_1: f32, %in_2: f32, %shape_0: f32, %acc_3: f32):
          %v4 = arith.mulf %in_1, %in_2 : f32
          %v5 = arith.addf %v4, %acc_3 : f32
          linalg.yield %v5 : f32
      }
    -> tensor<204800x32xf32>
    %v6.buf = tensor.empty() : tensor<32xf32>
    %v6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_batch_norm_buffers_running_var_, %l_self_modules_batch_norm_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v6.buf : tensor<32xf32>) {
        ^bb0(%in_7: f32, %in_8: f32, %acc_9: f32):
          %v10 = arith.constant 1.0 : f32
          %v11 = arith.constant 9.999999747378752e-06 : f32
          %v12 = arith.addf %v11, %in_7 : f32
          %v13 = math.sqrt %v12 : f32
          %v14 = arith.divf %v10, %v13 : f32
          %v15 = arith.mulf %v14, %in_8 : f32
          linalg.yield %v15 : f32
      }
    -> tensor<32xf32>
    %v16.buf = tensor.empty() : tensor<32xf32>
    %v16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_batch_norm_buffers_running_mean_, %l_self_modules_batch_norm_buffers_running_var_, %l_self_modules_batch_norm_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v16.buf : tensor<32xf32>) {
        ^bb0(%in_17: f32, %in_18: f32, %in_19: f32, %acc_20: f32):
          %v21 = arith.constant 1.0 : f32
          %v22 = arith.constant 9.999999747378752e-06 : f32
          %v23 = arith.addf %v22, %in_18 : f32
          %v24 = math.sqrt %v23 : f32
          %v25 = arith.divf %v21, %v24 : f32
          %v26 = arith.mulf %v25, %in_19 : f32
          %v27 = arith.mulf %v26, %in_17 : f32
          linalg.yield %v27 : f32
      }
    -> tensor<32xf32>
    %assignment_1.post = tensor.empty() : tensor<204800x32xf32>
    %assignment_1.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%assignment_1.buf.out, %v6.buf.out, %v16.buf.out, %l_self_modules_batch_norm_parameters_bias_ : tensor<204800x32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%assignment_1.post : tensor<204800x32xf32>) {
        ^bb0(%acc_31: f32, %in_28: f32, %in_29: f32, %in_30: f32, %post_32: f32):
          %v33 = arith.mulf %acc_31, %in_28 : f32
          %v34 = arith.subf %v33, %in_29 : f32
          %v35 = arith.addf %v34, %in_30 : f32
          linalg.yield %v35 : f32
      }
    -> tensor<204800x32xf32>
    %input.empty = tensor.empty() : tensor<204800xf32>
    %init_1 = arith.constant 0xFF800000 : f32
    %input.buf = linalg.fill ins(%init_1 : f32) outs(%input.empty : tensor<204800xf32>) -> tensor<204800xf32>
    %input.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]}
      ins(%assignment_1.post.out : tensor<204800x32xf32>)
      outs(%input.buf : tensor<204800xf32>) {
        ^bb0(%in_36: f32, %acc_37: f32):
          %v38 = arith.maxnumf %acc_37, %in_36 : f32
          linalg.yield %v38 : f32
      }
    -> tensor<204800xf32>
    %input_1.empty = tensor.empty() : tensor<204800xf32>
    %input_1.buf = linalg.fill ins(%init : f32) outs(%input_1.empty : tensor<204800xf32>) -> tensor<204800xf32>
    %input_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]}
      ins(%assignment_1.post.out, %input.buf.out : tensor<204800x32xf32>, tensor<204800xf32>)
      outs(%input_1.buf : tensor<204800xf32>) {
        ^bb0(%in_39: f32, %in_40: f32, %acc_41: f32):
          %v42 = arith.subf %in_39, %in_40 : f32
          %v43 = math.exp %v42 : f32
          %v44 = arith.addf %v43, %acc_41 : f32
          linalg.yield %v44 : f32
      }
    -> tensor<204800xf32>
    %assignment_2.buf = tensor.empty() : tensor<204800x32xf32>
    %assignment_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%assignment_1.post.out, %input.buf.out, %input_1.buf.out : tensor<204800x32xf32>, tensor<204800xf32>, tensor<204800xf32>)
      outs(%assignment_2.buf : tensor<204800x32xf32>) {
        ^bb0(%in_45: f32, %in_46: f32, %in_47: f32, %acc_48: f32):
          %v49 = arith.subf %in_45, %in_46 : f32
          %v50 = math.exp %v49 : f32
          %v51 = arith.divf %v50, %in_47 : f32
          linalg.yield %v51 : f32
      }
    -> tensor<204800x32xf32>
    %assignment_5.buf = tensor.empty() : tensor<2048x32x100xf32>
    %assignment_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2 + d0 * 100, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]}
      ins(%assignment_2.buf.out : tensor<204800x32xf32>)
      outs(%assignment_5.buf : tensor<2048x32x100xf32>) {
        ^bb0(%in_52: f32, %acc_53: f32):
          linalg.yield %in_52 : f32
      }
    -> tensor<2048x32x100xf32>
    %vlad.empty = tensor.empty() : tensor<2048x32x512xf32>
    %vlad.buf = linalg.fill ins(%init : f32) outs(%vlad.empty : tensor<2048x32x512xf32>) -> tensor<2048x32x512xf32>
    %vlad.shape = tensor.empty() : tensor<25x4xf32>
    %vlad.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d3 * 4 + d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d3 * 4 + d4, d2)>, affine_map<(d0, d1, d2, d3, d4) -> (d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%assignment_5.buf.out, %l_x_, %vlad.shape : tensor<2048x32x100xf32>, tensor<2048x100x512xf32>, tensor<25x4xf32>)
      outs(%vlad.buf : tensor<2048x32x512xf32>) {
        ^bb0(%in_55: f32, %in_56: f32, %shape_54: f32, %acc_57: f32):
          %v58 = arith.mulf %in_55, %in_56 : f32
          %v59 = arith.addf %v58, %acc_57 : f32
          linalg.yield %v59 : f32
      }
    -> tensor<2048x32x512xf32>
    %a_sum.empty = tensor.empty() : tensor<2048x1x32xf32>
    %a_sum.buf = linalg.fill ins(%init : f32) outs(%a_sum.empty : tensor<2048x1x32xf32>) -> tensor<2048x1x32xf32>
    %a_sum.shape = tensor.empty() : tensor<100xf32>
    %a_sum.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3 + d0 * 100, d2)>, affine_map<(d0, d1, d2, d3) -> (d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]}
      ins(%assignment_2.buf.out, %a_sum.shape : tensor<204800x32xf32>, tensor<100xf32>)
      outs(%a_sum.buf : tensor<2048x1x32xf32>) {
        ^bb0(%in_61: f32, %shape_60: f32, %acc_62: f32):
          %v63 = arith.addf %acc_62, %in_61 : f32
          linalg.yield %v63 : f32
      }
    -> tensor<2048x1x32xf32>
    %l_self_parameters_clusters2_.expanded = tensor.expand_shape %l_self_parameters_clusters2_ [[0, 1], [2]] output_shape [1, 512, 32] : tensor<512x32xf32> into tensor<1x512x32xf32>
    %l_self_parameters_clusters2_.expanded_1 = tensor.expand_shape %l_self_parameters_clusters2_ [[0, 1], [2]] output_shape [1, 512, 32] : tensor<512x32xf32> into tensor<1x512x32xf32>
    %l_self_parameters_clusters2_.expanded_2 = tensor.expand_shape %l_self_parameters_clusters2_ [[0, 1], [2]] output_shape [1, 512, 32] : tensor<512x32xf32> into tensor<1x512x32xf32>
    %input_2.empty = tensor.empty() : tensor<2048x32xf32>
    %input_2.buf = linalg.fill ins(%init : f32) outs(%input_2.empty : tensor<2048x32xf32>) -> tensor<2048x32xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, 0, d1)>, affine_map<(d0, d1, d2) -> (0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, 0, d1)>, affine_map<(d0, d1, d2) -> (0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%vlad.buf.out, %a_sum.buf.out, %l_self_parameters_clusters2_.expanded_1, %vlad.buf.out, %a_sum.buf.out, %l_self_parameters_clusters2_.expanded_2 : tensor<2048x32x512xf32>, tensor<2048x1x32xf32>, tensor<1x512x32xf32>, tensor<2048x32x512xf32>, tensor<2048x1x32xf32>, tensor<1x512x32xf32>)
      outs(%input_2.buf : tensor<2048x32xf32>) {
        ^bb0(%in_64: f32, %in_65: f32, %in_66: f32, %in_67: f32, %in_68: f32, %in_69: f32, %acc_70: f32):
          %v71 = arith.mulf %in_65, %in_66 : f32
          %v72 = arith.subf %in_64, %v71 : f32
          %v73 = arith.mulf %in_68, %in_69 : f32
          %v74 = arith.subf %in_67, %v73 : f32
          %v75 = arith.mulf %v72, %v74 : f32
          %v76 = arith.addf %v75, %acc_70 : f32
          linalg.yield %v76 : f32
      }
    -> tensor<2048x32xf32>
    %input_2.post = tensor.empty() : tensor<2048x32xf32>
    %input_2.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_2.buf.out : tensor<2048x32xf32>)
      outs(%input_2.post : tensor<2048x32xf32>) {
        ^bb0(%acc_77: f32, %post_78: f32):
          %v79 = math.sqrt %acc_77 : f32
          %v80 = arith.constant 9.999999960041972e-13 : f32
          %v81 = arith.maxnumf %v80, %v79 : f32
          linalg.yield %v81 : f32
      }
    -> tensor<2048x32xf32>
    %vlad_3.buf = tensor.empty() : tensor<2048x512x32xf32>
    %vlad_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, 0, d2)>, affine_map<(d0, d1, d2) -> (0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]}
      ins(%vlad.buf.out, %a_sum.buf.out, %l_self_parameters_clusters2_.expanded, %input_2.post.out : tensor<2048x32x512xf32>, tensor<2048x1x32xf32>, tensor<1x512x32xf32>, tensor<2048x32xf32>)
      outs(%vlad_3.buf : tensor<2048x512x32xf32>) {
        ^bb0(%in_82: f32, %in_83: f32, %in_84: f32, %in_85: f32, %acc_86: f32):
          %v87 = arith.mulf %in_83, %in_84 : f32
          %v88 = arith.subf %in_82, %v87 : f32
          %v89 = arith.divf %v88, %in_85 : f32
          linalg.yield %v89 : f32
      }
    -> tensor<2048x512x32xf32>
    %input_3.empty = tensor.empty() : tensor<2048xf32>
    %input_3.buf = linalg.fill ins(%init : f32) outs(%input_3.empty : tensor<2048xf32>) -> tensor<2048xf32>
    %input_3.shape = tensor.empty() : tensor<16384xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, (d1 + d0 * 16384) floordiv 32 mod 512, d1 mod 32)>, affine_map<(d0, d1) -> (d0, (d1 + d0 * 16384) floordiv 32 mod 512, d1 mod 32)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]}
      ins(%vlad_3.buf.out, %vlad_3.buf.out, %input_3.shape : tensor<2048x512x32xf32>, tensor<2048x512x32xf32>, tensor<16384xf32>)
      outs(%input_3.buf : tensor<2048xf32>) {
        ^bb0(%in_91: f32, %in_92: f32, %shape_90: f32, %acc_93: f32):
          %v94 = arith.mulf %in_91, %in_92 : f32
          %v95 = arith.addf %v94, %acc_93 : f32
          linalg.yield %v95 : f32
      }
    -> tensor<2048xf32>
    %input_3.post = tensor.empty() : tensor<2048xf32>
    %input_3.post.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%input_3.buf.out : tensor<2048xf32>)
      outs(%input_3.post : tensor<2048xf32>) {
        ^bb0(%acc_96: f32, %post_97: f32):
          %v98 = math.sqrt %acc_96 : f32
          %v99 = arith.constant 9.999999960041972e-13 : f32
          %v100 = arith.maxnumf %v99, %v98 : f32
          linalg.yield %v100 : f32
      }
    -> tensor<2048xf32>
    %vlad_5.buf = tensor.empty() : tensor<2048x16384xf32>
    %vlad_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, (d1 + d0 * 16384) floordiv 32 mod 512, d1 mod 32)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%vlad_3.buf.out, %input_3.post.out : tensor<2048x512x32xf32>, tensor<2048xf32>)
      outs(%vlad_5.buf : tensor<2048x16384xf32>) {
        ^bb0(%in_101: f32, %in_102: f32, %acc_103: f32):
          %v104 = arith.divf %in_101, %in_102 : f32
          linalg.yield %v104 : f32
      }
    -> tensor<2048x16384xf32>
    func.return %vlad_5.buf.out : tensor<2048x16384xf32>
  }
}
