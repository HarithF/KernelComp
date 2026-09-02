module {
  func.func public @ShallowWideMLP(%l_self_modules_network_modules_0_parameters_weight_: tensor<32768x16384xf32>, %l_self_modules_network_modules_0_parameters_bias_: tensor<32768xf32>, %l_x_: tensor<128x16384xf32>, %l_self_modules_network_modules_2_parameters_weight_: tensor<32768x32768xf32>, %l_self_modules_network_modules_2_parameters_bias_: tensor<32768xf32>, %l_self_modules_network_modules_4_parameters_weight_: tensor<16384x32768xf32>, %l_self_modules_network_modules_4_parameters_bias_: tensor<16384xf32>) -> tensor<128x16384xf32> {
    %v0.empty = tensor.empty() : tensor<128x32768xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<128x32768xf32>) -> tensor<128x32768xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%l_x_, %l_self_modules_network_modules_0_parameters_weight_ : tensor<128x16384xf32>, tensor<32768x16384xf32>)
      outs(%v0.buf : tensor<128x32768xf32>) {
        ^bb0(%in_2: f32, %in_3: f32, %acc_4: f32):
          %v5 = arith.mulf %in_3, %in_2 : f32
          %v6 = arith.addf %v5, %acc_4 : f32
          linalg.yield %v6 : f32
      }
    -> tensor<128x32768xf32>
    %v7.empty = tensor.empty() : tensor<128x32768xf32>
    %v7.buf = linalg.fill ins(%v1 : f32) outs(%v7.empty : tensor<128x32768xf32>) -> tensor<128x32768xf32>
    %v7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v0.buf.out, %l_self_modules_network_modules_0_parameters_bias_, %l_self_modules_network_modules_2_parameters_weight_ : tensor<128x32768xf32>, tensor<32768xf32>, tensor<32768x32768xf32>)
      outs(%v7.buf : tensor<128x32768xf32>) {
        ^bb0(%in_8: f32, %in_9: f32, %in_10: f32, %acc_11: f32):
          %v12 = arith.addf %in_8, %in_9 : f32
          %v13 = arith.maxnumf %v1, %v12 : f32
          %v14 = arith.mulf %v13, %in_10 : f32
          %v15 = arith.addf %v14, %acc_11 : f32
          linalg.yield %v15 : f32
      }
    -> tensor<128x32768xf32>
    %v16.empty = tensor.empty() : tensor<128x16384xf32>
    %v16.buf = linalg.fill ins(%v1 : f32) outs(%v16.empty : tensor<128x16384xf32>) -> tensor<128x16384xf32>
    %v16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v7.buf.out, %l_self_modules_network_modules_2_parameters_bias_, %l_self_modules_network_modules_4_parameters_weight_ : tensor<128x32768xf32>, tensor<32768xf32>, tensor<16384x32768xf32>)
      outs(%v16.buf : tensor<128x16384xf32>) {
        ^bb0(%in_17: f32, %in_18: f32, %in_19: f32, %acc_20: f32):
          %v21 = arith.addf %in_17, %in_18 : f32
          %v22 = arith.maxnumf %v1, %v21 : f32
          %v23 = arith.mulf %v22, %in_19 : f32
          %v24 = arith.addf %v23, %acc_20 : f32
          linalg.yield %v24 : f32
      }
    -> tensor<128x16384xf32>
    %input_5.buf = tensor.empty() : tensor<128x16384xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v16.buf.out, %l_self_modules_network_modules_4_parameters_bias_ : tensor<128x16384xf32>, tensor<16384xf32>)
      outs(%input_5.buf : tensor<128x16384xf32>) {
        ^bb0(%in_25: f32, %in_26: f32, %acc_27: f32):
          %v28 = arith.addf %in_26, %in_25 : f32
          linalg.yield %v28 : f32
      }
    -> tensor<128x16384xf32>
    func.return %input_5.buf.out : tensor<128x16384xf32>
  }
}
