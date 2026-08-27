module {
  func.func public @ShallowWideMLP(%l_self_modules_network_modules_0_parameters_weight_: tensor<32768x16384xf32>, %l_self_modules_network_modules_0_parameters_bias_: tensor<32768xf32>, %l_x_: tensor<128x16384xf32>, %l_self_modules_network_modules_2_parameters_weight_: tensor<32768x32768xf32>, %l_self_modules_network_modules_2_parameters_bias_: tensor<32768xf32>, %l_self_modules_network_modules_4_parameters_weight_: tensor<16384x32768xf32>, %l_self_modules_network_modules_4_parameters_bias_: tensor<16384xf32>) -> tensor<128x16384xf32> {
    %v0.buf = tensor.empty() : tensor<16384x32768xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_0_parameters_weight_ : tensor<32768x16384xf32>)
      outs(%v0.buf : tensor<16384x32768xf32>) {
        ^bb0(%in_1: f32, %acc_2: f32):
          linalg.yield %in_1 : f32
      }
    -> tensor<16384x32768xf32>
    %v3.empty = tensor.empty() : tensor<128x32768xf32>
    %v4 = arith.constant 0.0 : f32
    %v3.buf = linalg.fill ins(%v4 : f32) outs(%v3.empty : tensor<128x32768xf32>) -> tensor<128x32768xf32>
    %v3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%l_x_, %v0.buf.out : tensor<128x16384xf32>, tensor<16384x32768xf32>)
      outs(%v3.buf : tensor<128x32768xf32>) {
        ^bb0(%in_5: f32, %in_6: f32, %acc_7: f32):
          %v8 = arith.mulf %in_5, %in_6 : f32
          %v9 = arith.addf %v8, %acc_7 : f32
          linalg.yield %v9 : f32
      }
    -> tensor<128x32768xf32>
    %v10.buf = tensor.empty() : tensor<1x32768xf32>
    %v10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_0_parameters_bias_ : tensor<32768xf32>)
      outs(%v10.buf : tensor<1x32768xf32>) {
        ^bb0(%in_11: f32, %acc_12: f32):
          linalg.yield %in_11 : f32
      }
    -> tensor<1x32768xf32>
    %v13.buf = tensor.empty() : tensor<128x32768xf32>
    %v13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v10.buf.out : tensor<1x32768xf32>)
      outs(%v13.buf : tensor<128x32768xf32>) {
        ^bb0(%in_14: f32, %acc_15: f32):
          linalg.yield %in_14 : f32
      }
    -> tensor<128x32768xf32>
    %input_1.buf = tensor.empty() : tensor<128x32768xf32>
    %input_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v3.buf.out, %v13.buf.out : tensor<128x32768xf32>, tensor<128x32768xf32>)
      outs(%input_1.buf : tensor<128x32768xf32>) {
        ^bb0(%in_16: f32, %in_17: f32, %acc_18: f32):
          %v19 = arith.addf %in_16, %in_17 : f32
          linalg.yield %v19 : f32
      }
    -> tensor<128x32768xf32>
    %input_2.buf = tensor.empty() : tensor<128x32768xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_1.buf.out : tensor<128x32768xf32>)
      outs(%input_2.buf : tensor<128x32768xf32>) {
        ^bb0(%in_20: f32, %acc_21: f32):
          %v22 = arith.maxnumf %v4, %in_20 : f32
          linalg.yield %v22 : f32
      }
    -> tensor<128x32768xf32>
    %v23.buf = tensor.empty() : tensor<32768x32768xf32>
    %v23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_2_parameters_weight_ : tensor<32768x32768xf32>)
      outs(%v23.buf : tensor<32768x32768xf32>) {
        ^bb0(%in_24: f32, %acc_25: f32):
          linalg.yield %in_24 : f32
      }
    -> tensor<32768x32768xf32>
    %v26.empty = tensor.empty() : tensor<128x32768xf32>
    %v26.buf = linalg.fill ins(%v4 : f32) outs(%v26.empty : tensor<128x32768xf32>) -> tensor<128x32768xf32>
    %v26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_2.buf.out, %v23.buf.out : tensor<128x32768xf32>, tensor<32768x32768xf32>)
      outs(%v26.buf : tensor<128x32768xf32>) {
        ^bb0(%in_27: f32, %in_28: f32, %acc_29: f32):
          %v30 = arith.mulf %in_27, %in_28 : f32
          %v31 = arith.addf %v30, %acc_29 : f32
          linalg.yield %v31 : f32
      }
    -> tensor<128x32768xf32>
    %v32.buf = tensor.empty() : tensor<1x32768xf32>
    %v32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_2_parameters_bias_ : tensor<32768xf32>)
      outs(%v32.buf : tensor<1x32768xf32>) {
        ^bb0(%in_33: f32, %acc_34: f32):
          linalg.yield %in_33 : f32
      }
    -> tensor<1x32768xf32>
    %v35.buf = tensor.empty() : tensor<128x32768xf32>
    %v35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v32.buf.out : tensor<1x32768xf32>)
      outs(%v35.buf : tensor<128x32768xf32>) {
        ^bb0(%in_36: f32, %acc_37: f32):
          linalg.yield %in_36 : f32
      }
    -> tensor<128x32768xf32>
    %input_3.buf = tensor.empty() : tensor<128x32768xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v26.buf.out, %v35.buf.out : tensor<128x32768xf32>, tensor<128x32768xf32>)
      outs(%input_3.buf : tensor<128x32768xf32>) {
        ^bb0(%in_38: f32, %in_39: f32, %acc_40: f32):
          %v41 = arith.addf %in_38, %in_39 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<128x32768xf32>
    %input_4.buf = tensor.empty() : tensor<128x32768xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_3.buf.out : tensor<128x32768xf32>)
      outs(%input_4.buf : tensor<128x32768xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          %v44 = arith.maxnumf %v4, %in_42 : f32
          linalg.yield %v44 : f32
      }
    -> tensor<128x32768xf32>
    %v45.buf = tensor.empty() : tensor<32768x16384xf32>
    %v45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_4_parameters_weight_ : tensor<16384x32768xf32>)
      outs(%v45.buf : tensor<32768x16384xf32>) {
        ^bb0(%in_46: f32, %acc_47: f32):
          linalg.yield %in_46 : f32
      }
    -> tensor<32768x16384xf32>
    %v48.empty = tensor.empty() : tensor<128x16384xf32>
    %v48.buf = linalg.fill ins(%v4 : f32) outs(%v48.empty : tensor<128x16384xf32>) -> tensor<128x16384xf32>
    %v48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_4.buf.out, %v45.buf.out : tensor<128x32768xf32>, tensor<32768x16384xf32>)
      outs(%v48.buf : tensor<128x16384xf32>) {
        ^bb0(%in_49: f32, %in_50: f32, %acc_51: f32):
          %v52 = arith.mulf %in_49, %in_50 : f32
          %v53 = arith.addf %v52, %acc_51 : f32
          linalg.yield %v53 : f32
      }
    -> tensor<128x16384xf32>
    %v54.buf = tensor.empty() : tensor<1x16384xf32>
    %v54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_4_parameters_bias_ : tensor<16384xf32>)
      outs(%v54.buf : tensor<1x16384xf32>) {
        ^bb0(%in_55: f32, %acc_56: f32):
          linalg.yield %in_55 : f32
      }
    -> tensor<1x16384xf32>
    %v57.buf = tensor.empty() : tensor<128x16384xf32>
    %v57.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v54.buf.out : tensor<1x16384xf32>)
      outs(%v57.buf : tensor<128x16384xf32>) {
        ^bb0(%in_58: f32, %acc_59: f32):
          linalg.yield %in_58 : f32
      }
    -> tensor<128x16384xf32>
    %input_5.buf = tensor.empty() : tensor<128x16384xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v48.buf.out, %v57.buf.out : tensor<128x16384xf32>, tensor<128x16384xf32>)
      outs(%input_5.buf : tensor<128x16384xf32>) {
        ^bb0(%in_60: f32, %in_61: f32, %acc_62: f32):
          %v63 = arith.addf %in_60, %in_61 : f32
          linalg.yield %v63 : f32
      }
    -> tensor<128x16384xf32>
    func.return %input_5.buf.out : tensor<128x16384xf32>
  }
}
