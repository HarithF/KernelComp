module {
  func.func public @ShallowWideMLP(%l_self_modules_network_modules_0_parameters_weight_: tensor<32768x16384xf32>, %l_self_modules_network_modules_0_parameters_bias_: tensor<32768xf32>, %l_x_: tensor<128x16384xf32>, %l_self_modules_network_modules_2_parameters_weight_: tensor<32768x32768xf32>, %l_self_modules_network_modules_2_parameters_bias_: tensor<32768xf32>, %l_self_modules_network_modules_4_parameters_weight_: tensor<16384x32768xf32>, %l_self_modules_network_modules_4_parameters_bias_: tensor<16384xf32>) -> tensor<128x16384xf32> {
    %v0.empty = tensor.empty() : tensor<64x2x8192x4xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<64x2x8192x4xf32>) -> tensor<64x2x8192x4xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%l_x_, %l_self_modules_network_modules_0_parameters_weight_ : tensor<128x16384xf32>, tensor<32768x16384xf32>)
      outs(%v0.buf : tensor<64x2x8192x4xf32>) {
        ^bb0(%in_2: f32, %in_3: f32, %acc_4: f32):
          %v5 = arith.mulf %in_2, %in_3 : f32
          %v6 = arith.addf %v5, %acc_4 : f32
          linalg.yield %v6 : f32
      }
    -> tensor<64x2x8192x4xf32>
    %v0.post = tensor.empty() : tensor<64x2x8192x4xf32>
    %v0.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %l_self_modules_network_modules_0_parameters_bias_ : tensor<64x2x8192x4xf32>, tensor<32768xf32>)
      outs(%v0.post : tensor<64x2x8192x4xf32>) {
        ^bb0(%acc_8: f32, %in_7: f32, %post_9: f32):
          %v10 = arith.addf %acc_8, %in_7 : f32
          %v11 = arith.maxnumf %v1, %v10 : f32
          linalg.yield %v11 : f32
      }
    -> tensor<64x2x8192x4xf32>
    %v12.empty = tensor.empty() : tensor<64x2x8192x4xf32>
    %v12.buf = linalg.fill ins(%v1 : f32) outs(%v12.empty : tensor<64x2x8192x4xf32>) -> tensor<64x2x8192x4xf32>
    %v12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 32768) floordiv 65536, d2, (d4 + (d0 * 2 + d2) * 32768) floordiv 4 mod 8192, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v0.post.out, %l_self_modules_network_modules_2_parameters_weight_ : tensor<64x2x8192x4xf32>, tensor<32768x32768xf32>)
      outs(%v12.buf : tensor<64x2x8192x4xf32>) {
        ^bb0(%in_13: f32, %in_14: f32, %acc_15: f32):
          %v16 = arith.mulf %in_13, %in_14 : f32
          %v17 = arith.addf %v16, %acc_15 : f32
          linalg.yield %v17 : f32
      }
    -> tensor<64x2x8192x4xf32>
    %v12.post = tensor.empty() : tensor<64x2x8192x4xf32>
    %v12.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v12.buf.out, %l_self_modules_network_modules_2_parameters_bias_ : tensor<64x2x8192x4xf32>, tensor<32768xf32>)
      outs(%v12.post : tensor<64x2x8192x4xf32>) {
        ^bb0(%acc_19: f32, %in_18: f32, %post_20: f32):
          %v21 = arith.addf %acc_19, %in_18 : f32
          %v22 = arith.maxnumf %v1, %v21 : f32
          linalg.yield %v22 : f32
      }
    -> tensor<64x2x8192x4xf32>
    %v23.empty = tensor.empty() : tensor<64x2x4096x4xf32>
    %v23.buf = linalg.fill ins(%v1 : f32) outs(%v23.empty : tensor<64x2x4096x4xf32>) -> tensor<64x2x4096x4xf32>
    %v23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 32768) floordiv 65536, d2, (d4 + (d0 * 2 + d2) * 32768) floordiv 4 mod 8192, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v12.post.out, %l_self_modules_network_modules_4_parameters_weight_ : tensor<64x2x8192x4xf32>, tensor<16384x32768xf32>)
      outs(%v23.buf : tensor<64x2x4096x4xf32>) {
        ^bb0(%in_24: f32, %in_25: f32, %acc_26: f32):
          %v27 = arith.mulf %in_24, %in_25 : f32
          %v28 = arith.addf %v27, %acc_26 : f32
          linalg.yield %v28 : f32
      }
    -> tensor<64x2x4096x4xf32>
    %v23.post = tensor.empty() : tensor<64x2x4096x4xf32>
    %v23.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v23.buf.out, %l_self_modules_network_modules_4_parameters_bias_ : tensor<64x2x4096x4xf32>, tensor<16384xf32>)
      outs(%v23.post : tensor<64x2x4096x4xf32>) {
        ^bb0(%acc_30: f32, %in_29: f32, %post_31: f32):
          %v32 = arith.addf %acc_30, %in_29 : f32
          linalg.yield %v32 : f32
      }
    -> tensor<64x2x4096x4xf32>
    %input_5.buf = tensor.empty() : tensor<128x16384xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ((d1 + d0 * 16384) floordiv 32768, d0 mod 2, (d1 + d0 * 16384) floordiv 4 mod 4096, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v23.post.out : tensor<64x2x4096x4xf32>)
      outs(%input_5.buf : tensor<128x16384xf32>) {
        ^bb0(%in_33: f32, %acc_34: f32):
          linalg.yield %in_33 : f32
      }
    -> tensor<128x16384xf32>
    func.return %input_5.buf.out : tensor<128x16384xf32>
  }
}
