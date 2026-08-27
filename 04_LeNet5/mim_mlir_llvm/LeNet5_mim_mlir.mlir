module {
  func.func public @LeNet5(%l_self_modules_conv1_parameters_weight_: tensor<6x5x5xf32>, %l_self_modules_conv1_parameters_bias_: tensor<6xf32>, %l_x_: tensor<4096x32x32xf32>, %l_self_modules_conv2_parameters_weight_: tensor<16x6x5x5xf32>, %l_self_modules_conv2_parameters_bias_: tensor<16xf32>, %l_self_modules_fc1_parameters_weight_: tensor<120x400xf32>, %l_self_modules_fc1_parameters_bias_: tensor<120xf32>, %l_self_modules_fc2_parameters_weight_: tensor<84x120xf32>, %l_self_modules_fc2_parameters_bias_: tensor<84xf32>, %l_self_modules_fc3_parameters_weight_: tensor<20x84xf32>, %l_self_modules_fc3_parameters_bias_: tensor<20xf32>) -> tensor<4096x20xf32> {
    %v0.empty = tensor.empty() : tensor<4096x6x28x28xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<4096x6x28x28xf32>) -> tensor<4096x6x28x28xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_conv1_parameters_weight_ : tensor<4096x32x32xf32>, tensor<6x5x5xf32>)
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
    %conv2d.buf = tensor.empty() : tensor<4096x6x28x28xf32>
    %conv2d.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %v10 : tensor<4096x6x28x28xf32>, tensor<4096x6x28x28xf32>)
      outs(%conv2d.buf : tensor<4096x6x28x28xf32>) {
        ^bb0(%in_11: f32, %in_12: f32, %acc_13: f32):
          %v14 = arith.addf %in_11, %in_12 : f32
          linalg.yield %v14 : f32
      }
    -> tensor<4096x6x28x28xf32>
    %x.buf = tensor.empty() : tensor<4096x6x28x28xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%conv2d.buf.out : tensor<4096x6x28x28xf32>)
      outs(%x.buf : tensor<4096x6x28x28xf32>) {
        ^bb0(%in_15: f32, %acc_16: f32):
          %v17 = arith.maxnumf %v1, %in_15 : f32
          linalg.yield %v17 : f32
      }
    -> tensor<4096x6x28x28xf32>
    %x_1.empty = tensor.empty() : tensor<4096x6x14x14xf32>
    %init = arith.constant 0xFF800000 : f32
    %x_1.buf = linalg.fill ins(%init : f32) outs(%x_1.empty : tensor<4096x6x14x14xf32>) -> tensor<4096x6x14x14xf32>
    %x_1.shape = tensor.empty() : tensor<2x2xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%x.buf.out, %x_1.shape : tensor<4096x6x28x28xf32>, tensor<2x2xf32>)
      outs(%x_1.buf : tensor<4096x6x14x14xf32>) {
        ^bb0(%in_19: f32, %shape_18: f32, %acc_20: f32):
          %v21 = arith.maxnumf %acc_20, %in_19 : f32
          linalg.yield %v21 : f32
      }
    -> tensor<4096x6x14x14xf32>
    %v22.empty = tensor.empty() : tensor<4096x16x10x10xf32>
    %v22.buf = linalg.fill ins(%v1 : f32) outs(%v22.empty : tensor<4096x16x10x10xf32>) -> tensor<4096x16x10x10xf32>
    %v22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_1.buf.out, %l_self_modules_conv2_parameters_weight_ : tensor<4096x6x14x14xf32>, tensor<16x6x5x5xf32>)
      outs(%v22.buf : tensor<4096x16x10x10xf32>) {
        ^bb0(%in_23: f32, %in_24: f32, %acc_25: f32):
          %v26 = arith.mulf %in_23, %in_24 : f32
          %v27 = arith.addf %v26, %acc_25 : f32
          linalg.yield %v27 : f32
      }
    -> tensor<4096x16x10x10xf32>
    %v28.buf = tensor.empty() : tensor<1x16x1x1xf32>
    %v28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv2_parameters_bias_ : tensor<16xf32>)
      outs(%v28.buf : tensor<1x16x1x1xf32>) {
        ^bb0(%in_29: f32, %acc_30: f32):
          linalg.yield %in_29 : f32
      }
    -> tensor<1x16x1x1xf32>
    %v31.collapsed = tensor.collapse_shape %v28.buf.out [[0, 1, 2, 3]] : tensor<1x16x1x1xf32> into tensor<16xf32>
    %v31.buf = tensor.empty() : tensor<4096x16x10x10xf32>
    %v31 = linalg.broadcast ins(%v31.collapsed : tensor<16xf32>)
      outs(%v31.buf : tensor<4096x16x10x10xf32>)
      dimensions = [0, 2, 3]
    %conv2d_1.buf = tensor.empty() : tensor<4096x16x10x10xf32>
    %conv2d_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v22.buf.out, %v31 : tensor<4096x16x10x10xf32>, tensor<4096x16x10x10xf32>)
      outs(%conv2d_1.buf : tensor<4096x16x10x10xf32>) {
        ^bb0(%in_32: f32, %in_33: f32, %acc_34: f32):
          %v35 = arith.addf %in_32, %in_33 : f32
          linalg.yield %v35 : f32
      }
    -> tensor<4096x16x10x10xf32>
    %x_2.buf = tensor.empty() : tensor<4096x16x10x10xf32>
    %x_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%conv2d_1.buf.out : tensor<4096x16x10x10xf32>)
      outs(%x_2.buf : tensor<4096x16x10x10xf32>) {
        ^bb0(%in_36: f32, %acc_37: f32):
          %v38 = arith.maxnumf %v1, %in_36 : f32
          linalg.yield %v38 : f32
      }
    -> tensor<4096x16x10x10xf32>
    %x_3.empty = tensor.empty() : tensor<4096x16x5x5xf32>
    %x_3.buf = linalg.fill ins(%init : f32) outs(%x_3.empty : tensor<4096x16x5x5xf32>) -> tensor<4096x16x5x5xf32>
    %x_3.shape = tensor.empty() : tensor<2x2xf32>
    %x_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%x_2.buf.out, %x_3.shape : tensor<4096x16x10x10xf32>, tensor<2x2xf32>)
      outs(%x_3.buf : tensor<4096x16x5x5xf32>) {
        ^bb0(%in_40: f32, %shape_39: f32, %acc_41: f32):
          %v42 = arith.maxnumf %acc_41, %in_40 : f32
          linalg.yield %v42 : f32
      }
    -> tensor<4096x16x5x5xf32>
    %x_4.buf = tensor.empty() : tensor<4096x400xf32>
    %x_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, (d1 + d0 * 400) floordiv 25 mod 16, (d1 + d0 * 400) floordiv 5 mod 5, d1 mod 5)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%x_3.buf.out : tensor<4096x16x5x5xf32>)
      outs(%x_4.buf : tensor<4096x400xf32>) {
        ^bb0(%in_43: f32, %acc_44: f32):
          linalg.yield %in_43 : f32
      }
    -> tensor<4096x400xf32>
    %v45.buf = tensor.empty() : tensor<400x120xf32>
    %v45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc1_parameters_weight_ : tensor<120x400xf32>)
      outs(%v45.buf : tensor<400x120xf32>) {
        ^bb0(%in_46: f32, %acc_47: f32):
          linalg.yield %in_46 : f32
      }
    -> tensor<400x120xf32>
    %v48.empty = tensor.empty() : tensor<4096x120xf32>
    %v48.buf = linalg.fill ins(%v1 : f32) outs(%v48.empty : tensor<4096x120xf32>) -> tensor<4096x120xf32>
    %v48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_4.buf.out, %v45.buf.out : tensor<4096x400xf32>, tensor<400x120xf32>)
      outs(%v48.buf : tensor<4096x120xf32>) {
        ^bb0(%in_49: f32, %in_50: f32, %acc_51: f32):
          %v52 = arith.mulf %in_49, %in_50 : f32
          %v53 = arith.addf %v52, %acc_51 : f32
          linalg.yield %v53 : f32
      }
    -> tensor<4096x120xf32>
    %v54.buf = tensor.empty() : tensor<1x120xf32>
    %v54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc1_parameters_bias_ : tensor<120xf32>)
      outs(%v54.buf : tensor<1x120xf32>) {
        ^bb0(%in_55: f32, %acc_56: f32):
          linalg.yield %in_55 : f32
      }
    -> tensor<1x120xf32>
    %v57.buf = tensor.empty() : tensor<4096x120xf32>
    %v57.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v54.buf.out : tensor<1x120xf32>)
      outs(%v57.buf : tensor<4096x120xf32>) {
        ^bb0(%in_58: f32, %acc_59: f32):
          linalg.yield %in_58 : f32
      }
    -> tensor<4096x120xf32>
    %linear.buf = tensor.empty() : tensor<4096x120xf32>
    %linear.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v48.buf.out, %v57.buf.out : tensor<4096x120xf32>, tensor<4096x120xf32>)
      outs(%linear.buf : tensor<4096x120xf32>) {
        ^bb0(%in_60: f32, %in_61: f32, %acc_62: f32):
          %v63 = arith.addf %in_60, %in_61 : f32
          linalg.yield %v63 : f32
      }
    -> tensor<4096x120xf32>
    %x_5.buf = tensor.empty() : tensor<4096x120xf32>
    %x_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%linear.buf.out : tensor<4096x120xf32>)
      outs(%x_5.buf : tensor<4096x120xf32>) {
        ^bb0(%in_64: f32, %acc_65: f32):
          %v66 = arith.maxnumf %v1, %in_64 : f32
          linalg.yield %v66 : f32
      }
    -> tensor<4096x120xf32>
    %v67.buf = tensor.empty() : tensor<120x84xf32>
    %v67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc2_parameters_weight_ : tensor<84x120xf32>)
      outs(%v67.buf : tensor<120x84xf32>) {
        ^bb0(%in_68: f32, %acc_69: f32):
          linalg.yield %in_68 : f32
      }
    -> tensor<120x84xf32>
    %v70.empty = tensor.empty() : tensor<4096x84xf32>
    %v70.buf = linalg.fill ins(%v1 : f32) outs(%v70.empty : tensor<4096x84xf32>) -> tensor<4096x84xf32>
    %v70.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_5.buf.out, %v67.buf.out : tensor<4096x120xf32>, tensor<120x84xf32>)
      outs(%v70.buf : tensor<4096x84xf32>) {
        ^bb0(%in_71: f32, %in_72: f32, %acc_73: f32):
          %v74 = arith.mulf %in_71, %in_72 : f32
          %v75 = arith.addf %v74, %acc_73 : f32
          linalg.yield %v75 : f32
      }
    -> tensor<4096x84xf32>
    %v76.buf = tensor.empty() : tensor<1x84xf32>
    %v76.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc2_parameters_bias_ : tensor<84xf32>)
      outs(%v76.buf : tensor<1x84xf32>) {
        ^bb0(%in_77: f32, %acc_78: f32):
          linalg.yield %in_77 : f32
      }
    -> tensor<1x84xf32>
    %v79.buf = tensor.empty() : tensor<4096x84xf32>
    %v79.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v76.buf.out : tensor<1x84xf32>)
      outs(%v79.buf : tensor<4096x84xf32>) {
        ^bb0(%in_80: f32, %acc_81: f32):
          linalg.yield %in_80 : f32
      }
    -> tensor<4096x84xf32>
    %linear_1.buf = tensor.empty() : tensor<4096x84xf32>
    %linear_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v70.buf.out, %v79.buf.out : tensor<4096x84xf32>, tensor<4096x84xf32>)
      outs(%linear_1.buf : tensor<4096x84xf32>) {
        ^bb0(%in_82: f32, %in_83: f32, %acc_84: f32):
          %v85 = arith.addf %in_82, %in_83 : f32
          linalg.yield %v85 : f32
      }
    -> tensor<4096x84xf32>
    %x_6.buf = tensor.empty() : tensor<4096x84xf32>
    %x_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%linear_1.buf.out : tensor<4096x84xf32>)
      outs(%x_6.buf : tensor<4096x84xf32>) {
        ^bb0(%in_86: f32, %acc_87: f32):
          %v88 = arith.maxnumf %v1, %in_86 : f32
          linalg.yield %v88 : f32
      }
    -> tensor<4096x84xf32>
    %v89.buf = tensor.empty() : tensor<84x20xf32>
    %v89.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc3_parameters_weight_ : tensor<20x84xf32>)
      outs(%v89.buf : tensor<84x20xf32>) {
        ^bb0(%in_90: f32, %acc_91: f32):
          linalg.yield %in_90 : f32
      }
    -> tensor<84x20xf32>
    %v92.empty = tensor.empty() : tensor<4096x20xf32>
    %v92.buf = linalg.fill ins(%v1 : f32) outs(%v92.empty : tensor<4096x20xf32>) -> tensor<4096x20xf32>
    %v92.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_6.buf.out, %v89.buf.out : tensor<4096x84xf32>, tensor<84x20xf32>)
      outs(%v92.buf : tensor<4096x20xf32>) {
        ^bb0(%in_93: f32, %in_94: f32, %acc_95: f32):
          %v96 = arith.mulf %in_93, %in_94 : f32
          %v97 = arith.addf %v96, %acc_95 : f32
          linalg.yield %v97 : f32
      }
    -> tensor<4096x20xf32>
    %v98.buf = tensor.empty() : tensor<1x20xf32>
    %v98.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc3_parameters_bias_ : tensor<20xf32>)
      outs(%v98.buf : tensor<1x20xf32>) {
        ^bb0(%in_99: f32, %acc_100: f32):
          linalg.yield %in_99 : f32
      }
    -> tensor<1x20xf32>
    %v101.buf = tensor.empty() : tensor<4096x20xf32>
    %v101.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v98.buf.out : tensor<1x20xf32>)
      outs(%v101.buf : tensor<4096x20xf32>) {
        ^bb0(%in_102: f32, %acc_103: f32):
          linalg.yield %in_102 : f32
      }
    -> tensor<4096x20xf32>
    %x_7.buf = tensor.empty() : tensor<4096x20xf32>
    %x_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v92.buf.out, %v101.buf.out : tensor<4096x20xf32>, tensor<4096x20xf32>)
      outs(%x_7.buf : tensor<4096x20xf32>) {
        ^bb0(%in_104: f32, %in_105: f32, %acc_106: f32):
          %v107 = arith.addf %in_104, %in_105 : f32
          linalg.yield %v107 : f32
      }
    -> tensor<4096x20xf32>
    func.return %x_7.buf.out : tensor<4096x20xf32>
  }
}
