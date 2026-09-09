module {
  func.func public @DenseNet121TransitionLayer(%l_x_: tensor<128x32x256x256xf32>, %l_self_modules_transition_modules_0_buffers_running_mean_: tensor<32xf32>, %l_self_modules_transition_modules_0_buffers_running_var_: tensor<32xf32>, %l_self_modules_transition_modules_0_parameters_weight_: tensor<32xf32>, %l_self_modules_transition_modules_0_parameters_bias_: tensor<32xf32>, %l_self_modules_transition_modules_2_parameters_weight_: tensor<64x32xf32>) -> tensor<128x64x128x128xf32> {
    %v0.buf = tensor.empty() : tensor<32xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_modules_0_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
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
      ins(%l_self_modules_transition_modules_0_buffers_running_mean_, %l_self_modules_transition_modules_0_buffers_running_var_, %l_self_modules_transition_modules_0_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
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
    %input_2.buf = tensor.empty() : tensor<128x32x256x256xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_x_, %v0.buf.out, %v10.buf.out, %l_self_modules_transition_modules_0_parameters_bias_ : tensor<128x32x256x256xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%input_2.buf : tensor<128x32x256x256xf32>) {
        ^bb0(%in_22: f32, %in_23: f32, %in_24: f32, %in_25: f32, %acc_26: f32):
          %v27 = arith.mulf %in_22, %in_23 : f32
          %v28 = arith.subf %v27, %in_24 : f32
          %v29 = arith.addf %v28, %in_25 : f32
          %init = arith.constant 0.0 : f32
          %v30 = arith.maxnumf %init, %v29 : f32
          linalg.yield %v30 : f32
      }
    -> tensor<128x32x256x256xf32>
    %l_self_modules_transition_modules_2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_transition_modules_2_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 32, 1, 1] : tensor<64x32xf32> into tensor<64x32x1x1xf32>
    %v31.empty = tensor.empty() : tensor<128x64x256x1x256xf32>
    %init_1 = arith.constant 0.0 : f32
    %v31.buf = linalg.fill ins(%init_1 : f32) outs(%v31.empty : tensor<128x64x256x1x256xf32>) -> tensor<128x64x256x1x256xf32>
    %v31.shape = tensor.empty() : tensor<256x1xf32>
    %v31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_2.buf.out, %l_self_modules_transition_modules_2_parameters_weight_.expanded, %v31.shape : tensor<128x32x256x256xf32>, tensor<64x32x1x1xf32>, tensor<256x1xf32>)
      outs(%v31.buf : tensor<128x64x256x1x256xf32>) {
        ^bb0(%in_33: f32, %in_34: f32, %shape_32: f32, %acc_35: f32):
          %v36 = arith.mulf %in_33, %in_34 : f32
          %v37 = arith.addf %v36, %acc_35 : f32
          linalg.yield %v37 : f32
      }
    -> tensor<128x64x256x1x256xf32>
    %input_4.empty = tensor.empty() : tensor<128x64x128x128xf32>
    %input_4.buf = linalg.fill ins(%init_1 : f32) outs(%input_4.empty : tensor<128x64x128x128xf32>) -> tensor<128x64x128x128xf32>
    %input_4.shape = tensor.empty() : tensor<2x2xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v31.buf.out, %input_4.shape : tensor<128x64x256x1x256xf32>, tensor<2x2xf32>)
      outs(%input_4.buf : tensor<128x64x128x128xf32>) {
        ^bb0(%in_39: f32, %shape_38: f32, %acc_40: f32):
          %v41 = arith.addf %acc_40, %in_39 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<128x64x128x128xf32>
    %input_4.post = tensor.empty() : tensor<128x64x128x128xf32>
    %input_4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_4.buf.out : tensor<128x64x128x128xf32>)
      outs(%input_4.post : tensor<128x64x128x128xf32>) {
        ^bb0(%acc_42: f32, %post_43: f32):
          %v44 = arith.constant 0.25 : f32
          %v45 = arith.mulf %v44, %acc_42 : f32
          linalg.yield %v45 : f32
      }
    -> tensor<128x64x128x128xf32>
    func.return %input_4.post.out : tensor<128x64x128x128xf32>
  }
}
