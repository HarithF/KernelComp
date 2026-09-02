module {
  func.func public @LeNet5(%l_self_modules_conv1_parameters_weight_: tensor<6x5x5xf32>, %l_self_modules_conv1_parameters_bias_: tensor<6xf32>, %l_x_: tensor<4096x32x32xf32>, %l_self_modules_conv2_parameters_weight_: tensor<16x6x5x5xf32>, %l_self_modules_conv2_parameters_bias_: tensor<16xf32>, %l_self_modules_fc1_parameters_weight_: tensor<120x400xf32>, %l_self_modules_fc1_parameters_bias_: tensor<120xf32>, %l_self_modules_fc2_parameters_weight_: tensor<84x120xf32>, %l_self_modules_fc2_parameters_bias_: tensor<84xf32>, %l_self_modules_fc3_parameters_weight_: tensor<20x84xf32>, %l_self_modules_fc3_parameters_bias_: tensor<20xf32>) -> tensor<4096x20xf32> {
    %l_x_.expanded = tensor.expand_shape %l_x_ [[0], [1, 2], [3]] output_shape [4096, 1, 32, 32] : tensor<4096x32x32xf32> into tensor<4096x1x32x32xf32>
    %l_self_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv1_parameters_weight_ [[0], [1, 2], [3]] output_shape [6, 1, 5, 5] : tensor<6x5x5xf32> into tensor<6x1x5x5xf32>
    %v0.empty = tensor.empty() : tensor<4096x6x28x28xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<4096x6x28x28xf32>) -> tensor<4096x6x28x28xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_.expanded, %l_self_modules_conv1_parameters_weight_.expanded : tensor<4096x1x32x32xf32>, tensor<6x1x5x5xf32>)
      outs(%v0.buf : tensor<4096x6x28x28xf32>) {
        ^bb0(%in_2: f32, %in_3: f32, %acc_4: f32):
          %v5 = arith.mulf %in_2, %in_3 : f32
          %v6 = arith.addf %v5, %acc_4 : f32
          linalg.yield %v6 : f32
      }
    -> tensor<4096x6x28x28xf32>
    %v7.buf = tensor.empty() : tensor<1x6x1x1xf32>
    %v7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv1_parameters_bias_ : tensor<6xf32>)
      outs(%v7.buf : tensor<1x6x1x1xf32>) {
        ^bb0(%in_8: f32, %acc_9: f32):
          linalg.yield %in_8 : f32
      }
    -> tensor<1x6x1x1xf32>
    %v10.collapsed = tensor.collapse_shape %v7.buf.out [[0, 1, 2, 3]] : tensor<1x6x1x1xf32> into tensor<6xf32>
    %v10.buf = tensor.empty() : tensor<4096x6x28x28xf32>
    %v10 = linalg.broadcast ins(%v10.collapsed : tensor<6xf32>)
      outs(%v10.buf : tensor<4096x6x28x28xf32>)
      dimensions = [0, 2, 3]
    %x_1.empty = tensor.empty() : tensor<4096x6x14x14xf32>
    %init = arith.constant 0xFF800000 : f32
    %x_1.buf = linalg.fill ins(%init : f32) outs(%x_1.empty : tensor<4096x6x14x14xf32>) -> tensor<4096x6x14x14xf32>
    %x_1.shape = tensor.empty() : tensor<2x2xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v0.buf.out, %v10, %x_1.shape : tensor<4096x6x28x28xf32>, tensor<4096x6x28x28xf32>, tensor<2x2xf32>)
      outs(%x_1.buf : tensor<4096x6x14x14xf32>) {
        ^bb0(%in_12: f32, %in_13: f32, %shape_11: f32, %acc_14: f32):
          %v15 = arith.addf %in_12, %in_13 : f32
          %v16 = arith.maxnumf %v1, %v15 : f32
          %v17 = arith.maxnumf %v16, %acc_14 : f32
          linalg.yield %v17 : f32
      }
    -> tensor<4096x6x14x14xf32>
    %v18.empty = tensor.empty() : tensor<4096x16x10x10xf32>
    %v18.buf = linalg.fill ins(%v1 : f32) outs(%v18.empty : tensor<4096x16x10x10xf32>) -> tensor<4096x16x10x10xf32>
    %v18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_1.buf.out, %l_self_modules_conv2_parameters_weight_ : tensor<4096x6x14x14xf32>, tensor<16x6x5x5xf32>)
      outs(%v18.buf : tensor<4096x16x10x10xf32>) {
        ^bb0(%in_19: f32, %in_20: f32, %acc_21: f32):
          %v22 = arith.mulf %in_19, %in_20 : f32
          %v23 = arith.addf %v22, %acc_21 : f32
          linalg.yield %v23 : f32
      }
    -> tensor<4096x16x10x10xf32>
    %v24.buf = tensor.empty() : tensor<1x16x1x1xf32>
    %v24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv2_parameters_bias_ : tensor<16xf32>)
      outs(%v24.buf : tensor<1x16x1x1xf32>) {
        ^bb0(%in_25: f32, %acc_26: f32):
          linalg.yield %in_25 : f32
      }
    -> tensor<1x16x1x1xf32>
    %v27.collapsed = tensor.collapse_shape %v24.buf.out [[0, 1, 2, 3]] : tensor<1x16x1x1xf32> into tensor<16xf32>
    %v27.buf = tensor.empty() : tensor<4096x16x10x10xf32>
    %v27 = linalg.broadcast ins(%v27.collapsed : tensor<16xf32>)
      outs(%v27.buf : tensor<4096x16x10x10xf32>)
      dimensions = [0, 2, 3]
    %x_3.empty = tensor.empty() : tensor<4096x16x5x5xf32>
    %x_3.buf = linalg.fill ins(%init : f32) outs(%x_3.empty : tensor<4096x16x5x5xf32>) -> tensor<4096x16x5x5xf32>
    %x_3.shape = tensor.empty() : tensor<2x2xf32>
    %x_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v18.buf.out, %v27, %x_3.shape : tensor<4096x16x10x10xf32>, tensor<4096x16x10x10xf32>, tensor<2x2xf32>)
      outs(%x_3.buf : tensor<4096x16x5x5xf32>) {
        ^bb0(%in_29: f32, %in_30: f32, %shape_28: f32, %acc_31: f32):
          %v32 = arith.addf %in_29, %in_30 : f32
          %v33 = arith.maxnumf %v1, %v32 : f32
          %v34 = arith.maxnumf %v33, %acc_31 : f32
          linalg.yield %v34 : f32
      }
    -> tensor<4096x16x5x5xf32>
    %v35.empty = tensor.empty() : tensor<4096x120xf32>
    %v35.buf = linalg.fill ins(%v1 : f32) outs(%v35.empty : tensor<4096x120xf32>) -> tensor<4096x120xf32>
    %v35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, (d2 + d0 * 400) floordiv 25 mod 16, (d2 + d0 * 400) floordiv 5 mod 5, d2 mod 5)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_3.buf.out, %l_self_modules_fc1_parameters_weight_ : tensor<4096x16x5x5xf32>, tensor<120x400xf32>)
      outs(%v35.buf : tensor<4096x120xf32>) {
        ^bb0(%in_36: f32, %in_37: f32, %acc_38: f32):
          %v39 = arith.mulf %in_36, %in_37 : f32
          %v40 = arith.addf %v39, %acc_38 : f32
          linalg.yield %v40 : f32
      }
    -> tensor<4096x120xf32>
    %v41.empty = tensor.empty() : tensor<4096x84xf32>
    %v41.buf = linalg.fill ins(%v1 : f32) outs(%v41.empty : tensor<4096x84xf32>) -> tensor<4096x84xf32>
    %v41.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v35.buf.out, %l_self_modules_fc1_parameters_bias_, %l_self_modules_fc2_parameters_weight_ : tensor<4096x120xf32>, tensor<120xf32>, tensor<84x120xf32>)
      outs(%v41.buf : tensor<4096x84xf32>) {
        ^bb0(%in_42: f32, %in_43: f32, %in_44: f32, %acc_45: f32):
          %v46 = arith.addf %in_42, %in_43 : f32
          %v47 = arith.maxnumf %v1, %v46 : f32
          %v48 = arith.mulf %v47, %in_44 : f32
          %v49 = arith.addf %v48, %acc_45 : f32
          linalg.yield %v49 : f32
      }
    -> tensor<4096x84xf32>
    %v50.empty = tensor.empty() : tensor<4096x20xf32>
    %v50.buf = linalg.fill ins(%v1 : f32) outs(%v50.empty : tensor<4096x20xf32>) -> tensor<4096x20xf32>
    %v50.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v41.buf.out, %l_self_modules_fc2_parameters_bias_, %l_self_modules_fc3_parameters_weight_ : tensor<4096x84xf32>, tensor<84xf32>, tensor<20x84xf32>)
      outs(%v50.buf : tensor<4096x20xf32>) {
        ^bb0(%in_51: f32, %in_52: f32, %in_53: f32, %acc_54: f32):
          %v55 = arith.addf %in_51, %in_52 : f32
          %v56 = arith.maxnumf %v1, %v55 : f32
          %v57 = arith.mulf %v56, %in_53 : f32
          %v58 = arith.addf %v57, %acc_54 : f32
          linalg.yield %v58 : f32
      }
    -> tensor<4096x20xf32>
    %x_7.buf = tensor.empty() : tensor<4096x20xf32>
    %x_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v50.buf.out, %l_self_modules_fc3_parameters_bias_ : tensor<4096x20xf32>, tensor<20xf32>)
      outs(%x_7.buf : tensor<4096x20xf32>) {
        ^bb0(%in_59: f32, %in_60: f32, %acc_61: f32):
          %v62 = arith.addf %in_60, %in_59 : f32
          linalg.yield %v62 : f32
      }
    -> tensor<4096x20xf32>
    func.return %x_7.buf.out : tensor<4096x20xf32>
  }
}
