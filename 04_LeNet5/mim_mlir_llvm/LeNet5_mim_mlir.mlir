module {
  func.func public @LeNet5(%l_self_modules_conv1_parameters_weight_: tensor<6x5x5xf32>, %l_self_modules_conv1_parameters_bias_: tensor<6xf32>, %l_x_: tensor<4096x32x32xf32>, %l_self_modules_conv2_parameters_weight_: tensor<16x6x5x5xf32>, %l_self_modules_conv2_parameters_bias_: tensor<16xf32>, %l_self_modules_fc1_parameters_weight_: tensor<120x400xf32>, %l_self_modules_fc1_parameters_bias_: tensor<120xf32>, %l_self_modules_fc2_parameters_weight_: tensor<84x120xf32>, %l_self_modules_fc2_parameters_bias_: tensor<84xf32>, %l_self_modules_fc3_parameters_weight_: tensor<20x84xf32>, %l_self_modules_fc3_parameters_bias_: tensor<20xf32>) -> tensor<4096x20xf32> {
    %l_x_.expanded = tensor.expand_shape %l_x_ [[0], [1, 2], [3]] output_shape [4096, 1, 32, 32] : tensor<4096x32x32xf32> into tensor<4096x1x32x32xf32>
    %l_self_modules_conv1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv1_parameters_weight_ [[0], [1, 2], [3]] output_shape [6, 1, 5, 5] : tensor<6x5x5xf32> into tensor<6x1x5x5xf32>
    %v0.empty = tensor.empty() : tensor<4096x6x28x1x28xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<4096x6x28x1x28xf32>) -> tensor<4096x6x28x1x28xf32>
    %v0.shape = tensor.empty() : tensor<28x1xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_.expanded, %l_self_modules_conv1_parameters_weight_.expanded, %v0.shape : tensor<4096x1x32x32xf32>, tensor<6x1x5x5xf32>, tensor<28x1xf32>)
      outs(%v0.buf : tensor<4096x6x28x1x28xf32>) {
        ^bb0(%in_3: f32, %in_4: f32, %shape_2: f32, %acc_5: f32):
          %v6 = arith.mulf %in_3, %in_4 : f32
          %v7 = arith.addf %v6, %acc_5 : f32
          linalg.yield %v7 : f32
      }
    -> tensor<4096x6x28x1x28xf32>
    %v0.post = tensor.empty() : tensor<4096x6x28x1x28xf32>
    %v0.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %l_self_modules_conv1_parameters_bias_ : tensor<4096x6x28x1x28xf32>, tensor<6xf32>)
      outs(%v0.post : tensor<4096x6x28x1x28xf32>) {
        ^bb0(%acc_9: f32, %in_8: f32, %post_10: f32):
          %v11 = arith.addf %acc_9, %in_8 : f32
          %v12 = arith.maxnumf %v1, %v11 : f32
          linalg.yield %v12 : f32
      }
    -> tensor<4096x6x28x1x28xf32>
    %x_1.empty = tensor.empty() : tensor<4096x6x14x14xf32>
    %init = arith.constant 0xFF800000 : f32
    %x_1.buf = linalg.fill ins(%init : f32) outs(%x_1.empty : tensor<4096x6x14x14xf32>) -> tensor<4096x6x14x14xf32>
    %x_1.shape = tensor.empty() : tensor<2x2xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v0.post.out, %x_1.shape : tensor<4096x6x28x1x28xf32>, tensor<2x2xf32>)
      outs(%x_1.buf : tensor<4096x6x14x14xf32>) {
        ^bb0(%in_14: f32, %shape_13: f32, %acc_15: f32):
          %v16 = arith.maxnumf %acc_15, %in_14 : f32
          linalg.yield %v16 : f32
      }
    -> tensor<4096x6x14x14xf32>
    %v17.empty = tensor.empty() : tensor<4096x16x5x2x10xf32>
    %v17.buf = linalg.fill ins(%v1 : f32) outs(%v17.empty : tensor<4096x16x5x2x10xf32>) -> tensor<4096x16x5x2x10xf32>
    %v17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_1.buf.out, %l_self_modules_conv2_parameters_weight_ : tensor<4096x6x14x14xf32>, tensor<16x6x5x5xf32>)
      outs(%v17.buf : tensor<4096x16x5x2x10xf32>) {
        ^bb0(%in_18: f32, %in_19: f32, %acc_20: f32):
          %v21 = arith.mulf %in_18, %in_19 : f32
          %v22 = arith.addf %v21, %acc_20 : f32
          linalg.yield %v22 : f32
      }
    -> tensor<4096x16x5x2x10xf32>
    %v17.post = tensor.empty() : tensor<4096x16x5x2x10xf32>
    %v17.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v17.buf.out, %l_self_modules_conv2_parameters_bias_ : tensor<4096x16x5x2x10xf32>, tensor<16xf32>)
      outs(%v17.post : tensor<4096x16x5x2x10xf32>) {
        ^bb0(%acc_24: f32, %in_23: f32, %post_25: f32):
          %v26 = arith.addf %acc_24, %in_23 : f32
          %v27 = arith.maxnumf %v1, %v26 : f32
          linalg.yield %v27 : f32
      }
    -> tensor<4096x16x5x2x10xf32>
    %x_3.empty = tensor.empty() : tensor<4096x16x5x5xf32>
    %x_3.buf = linalg.fill ins(%init : f32) outs(%x_3.empty : tensor<4096x16x5x5xf32>) -> tensor<4096x16x5x5xf32>
    %x_3.shape = tensor.empty() : tensor<2xf32>
    %x_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, (d3 * 2 + d5 + (d2 * 2 + d4) * 10 + d1 * 100 + d0 * 1600) floordiv 20 mod 5, d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v17.post.out, %x_3.shape : tensor<4096x16x5x2x10xf32>, tensor<2xf32>)
      outs(%x_3.buf : tensor<4096x16x5x5xf32>) {
        ^bb0(%in_29: f32, %shape_28: f32, %acc_30: f32):
          %v31 = arith.maxnumf %acc_30, %in_29 : f32
          linalg.yield %v31 : f32
      }
    -> tensor<4096x16x5x5xf32>
    %v32.empty = tensor.empty() : tensor<2048x2x30x4xf32>
    %v32.buf = linalg.fill ins(%v1 : f32) outs(%v32.empty : tensor<2048x2x30x4xf32>) -> tensor<2048x2x30x4xf32>
    %v32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, (d4 + (d0 * 2 + d2) * 400) floordiv 25 mod 16, (d4 + (d0 * 2 + d2) * 400) floordiv 5 mod 5, d4 mod 5)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%x_3.buf.out, %l_self_modules_fc1_parameters_weight_ : tensor<4096x16x5x5xf32>, tensor<120x400xf32>)
      outs(%v32.buf : tensor<2048x2x30x4xf32>) {
        ^bb0(%in_33: f32, %in_34: f32, %acc_35: f32):
          %v36 = arith.mulf %in_33, %in_34 : f32
          %v37 = arith.addf %v36, %acc_35 : f32
          linalg.yield %v37 : f32
      }
    -> tensor<2048x2x30x4xf32>
    %v32.post = tensor.empty() : tensor<2048x2x30x4xf32>
    %v32.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v32.buf.out, %l_self_modules_fc1_parameters_bias_ : tensor<2048x2x30x4xf32>, tensor<120xf32>)
      outs(%v32.post : tensor<2048x2x30x4xf32>) {
        ^bb0(%acc_39: f32, %in_38: f32, %post_40: f32):
          %v41 = arith.addf %acc_39, %in_38 : f32
          %v42 = arith.maxnumf %v1, %v41 : f32
          linalg.yield %v42 : f32
      }
    -> tensor<2048x2x30x4xf32>
    %v43.empty = tensor.empty() : tensor<2048x2x21x4xf32>
    %v43.buf = linalg.fill ins(%v1 : f32) outs(%v43.empty : tensor<2048x2x21x4xf32>) -> tensor<2048x2x21x4xf32>
    %v43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 120) floordiv 240, d2, (d4 + (d0 * 2 + d2) * 120) floordiv 4 mod 30, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v32.post.out, %l_self_modules_fc2_parameters_weight_ : tensor<2048x2x30x4xf32>, tensor<84x120xf32>)
      outs(%v43.buf : tensor<2048x2x21x4xf32>) {
        ^bb0(%in_44: f32, %in_45: f32, %acc_46: f32):
          %v47 = arith.mulf %in_44, %in_45 : f32
          %v48 = arith.addf %v47, %acc_46 : f32
          linalg.yield %v48 : f32
      }
    -> tensor<2048x2x21x4xf32>
    %v43.post = tensor.empty() : tensor<2048x2x21x4xf32>
    %v43.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v43.buf.out, %l_self_modules_fc2_parameters_bias_ : tensor<2048x2x21x4xf32>, tensor<84xf32>)
      outs(%v43.post : tensor<2048x2x21x4xf32>) {
        ^bb0(%acc_50: f32, %in_49: f32, %post_51: f32):
          %v52 = arith.addf %acc_50, %in_49 : f32
          %v53 = arith.maxnumf %v1, %v52 : f32
          linalg.yield %v53 : f32
      }
    -> tensor<2048x2x21x4xf32>
    %v54.empty = tensor.empty() : tensor<2048x2x5x4xf32>
    %v54.buf = linalg.fill ins(%v1 : f32) outs(%v54.empty : tensor<2048x2x5x4xf32>) -> tensor<2048x2x5x4xf32>
    %v54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 84) floordiv 168, d2, (d4 + (d0 * 2 + d2) * 84) floordiv 4 mod 21, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v43.post.out, %l_self_modules_fc3_parameters_weight_ : tensor<2048x2x21x4xf32>, tensor<20x84xf32>)
      outs(%v54.buf : tensor<2048x2x5x4xf32>) {
        ^bb0(%in_55: f32, %in_56: f32, %acc_57: f32):
          %v58 = arith.mulf %in_55, %in_56 : f32
          %v59 = arith.addf %v58, %acc_57 : f32
          linalg.yield %v59 : f32
      }
    -> tensor<2048x2x5x4xf32>
    %v54.post = tensor.empty() : tensor<2048x2x5x4xf32>
    %v54.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v54.buf.out, %l_self_modules_fc3_parameters_bias_ : tensor<2048x2x5x4xf32>, tensor<20xf32>)
      outs(%v54.post : tensor<2048x2x5x4xf32>) {
        ^bb0(%acc_61: f32, %in_60: f32, %post_62: f32):
          %v63 = arith.addf %acc_61, %in_60 : f32
          linalg.yield %v63 : f32
      }
    -> tensor<2048x2x5x4xf32>
    %x_7.buf = tensor.empty() : tensor<4096x20xf32>
    %x_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ((d1 + d0 * 20) floordiv 40, d0 mod 2, (d1 + d0 * 20) floordiv 4 mod 5, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v54.post.out : tensor<2048x2x5x4xf32>)
      outs(%x_7.buf : tensor<4096x20xf32>) {
        ^bb0(%in_64: f32, %acc_65: f32):
          linalg.yield %in_64 : f32
      }
    -> tensor<4096x20xf32>
    func.return %x_7.buf.out : tensor<4096x20xf32>
  }
}
