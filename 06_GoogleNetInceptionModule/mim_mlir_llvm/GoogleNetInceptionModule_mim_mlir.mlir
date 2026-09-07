module {
  func.func public @GoogleNetInceptionModule(%l_self_modules_branch1x1_parameters_weight_: tensor<192x480xf32>, %l_self_modules_branch1x1_parameters_bias_: tensor<192xf32>, %l_x_: tensor<10x480x224x224xf32>, %l_self_modules_branch3x3_modules_0_parameters_weight_: tensor<96x480xf32>, %l_self_modules_branch3x3_modules_0_parameters_bias_: tensor<96xf32>, %l_self_modules_branch3x3_modules_1_parameters_weight_: tensor<208x96x3x3xf32>, %l_self_modules_branch3x3_modules_1_parameters_bias_: tensor<208xf32>, %l_self_modules_branch5x5_modules_0_parameters_weight_: tensor<16x480xf32>, %l_self_modules_branch5x5_modules_0_parameters_bias_: tensor<16xf32>, %l_self_modules_branch5x5_modules_1_parameters_weight_: tensor<48x16x5x5xf32>, %l_self_modules_branch5x5_modules_1_parameters_bias_: tensor<48xf32>, %l_self_modules_branch_pool_modules_1_parameters_weight_: tensor<64x480xf32>, %l_self_modules_branch_pool_modules_1_parameters_bias_: tensor<64xf32>) -> tensor<10x512x224x224xf32> {
    %l_self_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 480, 1, 1] : tensor<192x480xf32> into tensor<192x480x1x1xf32>
    %v0.empty = tensor.empty() : tensor<10x192x224x1x224xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<10x192x224x1x224xf32>) -> tensor<10x192x224x1x224xf32>
    %v0.shape = tensor.empty() : tensor<224x1xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_branch1x1_parameters_weight_.expanded, %v0.shape : tensor<10x480x224x224xf32>, tensor<192x480x1x1xf32>, tensor<224x1xf32>)
      outs(%v0.buf : tensor<10x192x224x1x224xf32>) {
        ^bb0(%in_3: f32, %in_4: f32, %shape_2: f32, %acc_5: f32):
          %v6 = arith.mulf %in_3, %in_4 : f32
          %v7 = arith.addf %v6, %acc_5 : f32
          linalg.yield %v7 : f32
      }
    -> tensor<10x192x224x1x224xf32>
    %v0.post = tensor.empty() : tensor<10x192x224x1x224xf32>
    %v0.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %l_self_modules_branch1x1_parameters_bias_ : tensor<10x192x224x1x224xf32>, tensor<192xf32>)
      outs(%v0.post : tensor<10x192x224x1x224xf32>) {
        ^bb0(%acc_9: f32, %in_8: f32, %post_10: f32):
          %v11 = arith.addf %acc_9, %in_8 : f32
          linalg.yield %v11 : f32
      }
    -> tensor<10x192x224x1x224xf32>
    %branch1x1.buf = tensor.empty() : tensor<10x192x224x224xf32>
    %branch1x1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.post.out : tensor<10x192x224x1x224xf32>)
      outs(%branch1x1.buf : tensor<10x192x224x224xf32>) {
        ^bb0(%in_12: f32, %acc_13: f32):
          linalg.yield %in_12 : f32
      }
    -> tensor<10x192x224x224xf32>
    %l_self_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 480, 1, 1] : tensor<96x480xf32> into tensor<96x480x1x1xf32>
    %v14.empty = tensor.empty() : tensor<10x96x224x1x224xf32>
    %v14.buf = linalg.fill ins(%v1 : f32) outs(%v14.empty : tensor<10x96x224x1x224xf32>) -> tensor<10x96x224x1x224xf32>
    %v14.shape = tensor.empty() : tensor<224x1xf32>
    %v14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_branch3x3_modules_0_parameters_weight_.expanded, %v14.shape : tensor<10x480x224x224xf32>, tensor<96x480x1x1xf32>, tensor<224x1xf32>)
      outs(%v14.buf : tensor<10x96x224x1x224xf32>) {
        ^bb0(%in_16: f32, %in_17: f32, %shape_15: f32, %acc_18: f32):
          %v19 = arith.mulf %in_16, %in_17 : f32
          %v20 = arith.addf %v19, %acc_18 : f32
          linalg.yield %v20 : f32
      }
    -> tensor<10x96x224x1x224xf32>
    %v14.post = tensor.empty() : tensor<10x96x224x1x224xf32>
    %v14.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v14.buf.out, %l_self_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x96x224x1x224xf32>, tensor<96xf32>)
      outs(%v14.post : tensor<10x96x224x1x224xf32>) {
        ^bb0(%acc_22: f32, %in_21: f32, %post_23: f32):
          %v24 = arith.addf %acc_22, %in_21 : f32
          linalg.yield %v24 : f32
      }
    -> tensor<10x96x224x1x224xf32>
    %input_1.buf = tensor.empty() : tensor<10x96x224x224xf32>
    %input_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v14.post.out : tensor<10x96x224x1x224xf32>)
      outs(%input_1.buf : tensor<10x96x224x224xf32>) {
        ^bb0(%in_25: f32, %acc_26: f32):
          linalg.yield %in_25 : f32
      }
    -> tensor<10x96x224x224xf32>
    %padded = tensor.pad %input_1.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i27: index, %pad_i28: index, %pad_i29: index, %pad_i30: index):
        tensor.yield %v1 : f32
    } : tensor<10x96x224x224xf32> to tensor<10x96x226x226xf32>
    %v31.empty = tensor.empty() : tensor<10x208x224x1x224xf32>
    %v31.buf = linalg.fill ins(%v1 : f32) outs(%v31.empty : tensor<10x208x224x1x224xf32>) -> tensor<10x208x224x1x224xf32>
    %v31.shape = tensor.empty() : tensor<224x1xf32>
    %v31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_branch3x3_modules_1_parameters_weight_, %v31.shape : tensor<10x96x226x226xf32>, tensor<208x96x3x3xf32>, tensor<224x1xf32>)
      outs(%v31.buf : tensor<10x208x224x1x224xf32>) {
        ^bb0(%in_33: f32, %in_34: f32, %shape_32: f32, %acc_35: f32):
          %v36 = arith.mulf %in_33, %in_34 : f32
          %v37 = arith.addf %v36, %acc_35 : f32
          linalg.yield %v37 : f32
      }
    -> tensor<10x208x224x1x224xf32>
    %v31.post = tensor.empty() : tensor<10x208x224x1x224xf32>
    %v31.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v31.buf.out, %l_self_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x208x224x1x224xf32>, tensor<208xf32>)
      outs(%v31.post : tensor<10x208x224x1x224xf32>) {
        ^bb0(%acc_39: f32, %in_38: f32, %post_40: f32):
          %v41 = arith.addf %acc_39, %in_38 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<10x208x224x1x224xf32>
    %input_2.buf = tensor.empty() : tensor<10x208x224x224xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v31.post.out : tensor<10x208x224x1x224xf32>)
      outs(%input_2.buf : tensor<10x208x224x224xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          linalg.yield %in_42 : f32
      }
    -> tensor<10x208x224x224xf32>
    %l_self_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [16, 480, 1, 1] : tensor<16x480xf32> into tensor<16x480x1x1xf32>
    %v44.empty = tensor.empty() : tensor<10x16x224x1x224xf32>
    %v44.buf = linalg.fill ins(%v1 : f32) outs(%v44.empty : tensor<10x16x224x1x224xf32>) -> tensor<10x16x224x1x224xf32>
    %v44.shape = tensor.empty() : tensor<224x1xf32>
    %v44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_branch5x5_modules_0_parameters_weight_.expanded, %v44.shape : tensor<10x480x224x224xf32>, tensor<16x480x1x1xf32>, tensor<224x1xf32>)
      outs(%v44.buf : tensor<10x16x224x1x224xf32>) {
        ^bb0(%in_46: f32, %in_47: f32, %shape_45: f32, %acc_48: f32):
          %v49 = arith.mulf %in_46, %in_47 : f32
          %v50 = arith.addf %v49, %acc_48 : f32
          linalg.yield %v50 : f32
      }
    -> tensor<10x16x224x1x224xf32>
    %v44.post = tensor.empty() : tensor<10x16x224x1x224xf32>
    %v44.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v44.buf.out, %l_self_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x16x224x1x224xf32>, tensor<16xf32>)
      outs(%v44.post : tensor<10x16x224x1x224xf32>) {
        ^bb0(%acc_52: f32, %in_51: f32, %post_53: f32):
          %v54 = arith.addf %acc_52, %in_51 : f32
          linalg.yield %v54 : f32
      }
    -> tensor<10x16x224x1x224xf32>
    %input_3.buf = tensor.empty() : tensor<10x16x224x224xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v44.post.out : tensor<10x16x224x1x224xf32>)
      outs(%input_3.buf : tensor<10x16x224x224xf32>) {
        ^bb0(%in_55: f32, %acc_56: f32):
          linalg.yield %in_55 : f32
      }
    -> tensor<10x16x224x224xf32>
    %padded_1 = tensor.pad %input_3.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i57: index, %pad_i58: index, %pad_i59: index, %pad_i60: index):
        tensor.yield %v1 : f32
    } : tensor<10x16x224x224xf32> to tensor<10x16x228x228xf32>
    %v61.empty = tensor.empty() : tensor<10x48x224x1x224xf32>
    %v61.buf = linalg.fill ins(%v1 : f32) outs(%v61.empty : tensor<10x48x224x1x224xf32>) -> tensor<10x48x224x1x224xf32>
    %v61.shape = tensor.empty() : tensor<224x1xf32>
    %v61.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_branch5x5_modules_1_parameters_weight_, %v61.shape : tensor<10x16x228x228xf32>, tensor<48x16x5x5xf32>, tensor<224x1xf32>)
      outs(%v61.buf : tensor<10x48x224x1x224xf32>) {
        ^bb0(%in_63: f32, %in_64: f32, %shape_62: f32, %acc_65: f32):
          %v66 = arith.mulf %in_63, %in_64 : f32
          %v67 = arith.addf %v66, %acc_65 : f32
          linalg.yield %v67 : f32
      }
    -> tensor<10x48x224x1x224xf32>
    %v61.post = tensor.empty() : tensor<10x48x224x1x224xf32>
    %v61.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v61.buf.out, %l_self_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x48x224x1x224xf32>, tensor<48xf32>)
      outs(%v61.post : tensor<10x48x224x1x224xf32>) {
        ^bb0(%acc_69: f32, %in_68: f32, %post_70: f32):
          %v71 = arith.addf %acc_69, %in_68 : f32
          linalg.yield %v71 : f32
      }
    -> tensor<10x48x224x1x224xf32>
    %input_4.buf = tensor.empty() : tensor<10x48x224x224xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v61.post.out : tensor<10x48x224x1x224xf32>)
      outs(%input_4.buf : tensor<10x48x224x224xf32>) {
        ^bb0(%in_72: f32, %acc_73: f32):
          linalg.yield %in_72 : f32
      }
    -> tensor<10x48x224x224xf32>
    %init = arith.constant 0xFF800000 : f32
    %padded_2 = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i74: index, %pad_i75: index, %pad_i76: index, %pad_i77: index):
        tensor.yield %init : f32
    } : tensor<10x480x224x224xf32> to tensor<10x480x226x226xf32>
    %input_5.empty = tensor.empty() : tensor<10x480x224x224xf32>
    %input_5.buf = linalg.fill ins(%init : f32) outs(%input_5.empty : tensor<10x480x224x224xf32>) -> tensor<10x480x224x224xf32>
    %input_5.shape = tensor.empty() : tensor<3x3xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_2, %input_5.shape : tensor<10x480x226x226xf32>, tensor<3x3xf32>)
      outs(%input_5.buf : tensor<10x480x224x224xf32>) {
        ^bb0(%in_79: f32, %shape_78: f32, %acc_80: f32):
          %v81 = arith.maxnumf %acc_80, %in_79 : f32
          linalg.yield %v81 : f32
      }
    -> tensor<10x480x224x224xf32>
    %l_self_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 480, 1, 1] : tensor<64x480xf32> into tensor<64x480x1x1xf32>
    %v82.empty = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v82.buf = linalg.fill ins(%v1 : f32) outs(%v82.empty : tensor<10x64x224x1x224xf32>) -> tensor<10x64x224x1x224xf32>
    %v82.shape = tensor.empty() : tensor<224x1xf32>
    %v82.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_5.buf.out, %l_self_modules_branch_pool_modules_1_parameters_weight_.expanded, %v82.shape : tensor<10x480x224x224xf32>, tensor<64x480x1x1xf32>, tensor<224x1xf32>)
      outs(%v82.buf : tensor<10x64x224x1x224xf32>) {
        ^bb0(%in_84: f32, %in_85: f32, %shape_83: f32, %acc_86: f32):
          %v87 = arith.mulf %in_84, %in_85 : f32
          %v88 = arith.addf %v87, %acc_86 : f32
          linalg.yield %v88 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %v82.post = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v82.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v82.buf.out, %l_self_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x64x224x1x224xf32>, tensor<64xf32>)
      outs(%v82.post : tensor<10x64x224x1x224xf32>) {
        ^bb0(%acc_90: f32, %in_89: f32, %post_91: f32):
          %v92 = arith.addf %acc_90, %in_89 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %input_6.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v82.post.out : tensor<10x64x224x1x224xf32>)
      outs(%input_6.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_93: f32, %acc_94: f32):
          linalg.yield %in_93 : f32
      }
    -> tensor<10x64x224x224xf32>
    %cat = tensor.concat dim(1) %branch1x1.buf.out, %input_2.buf.out, %input_4.buf.out, %input_6.buf.out : (tensor<10x192x224x224xf32>, tensor<10x208x224x224xf32>, tensor<10x48x224x224xf32>, tensor<10x64x224x224xf32>) -> tensor<10x512x224x224xf32>
    func.return %cat : tensor<10x512x224x224xf32>
  }
}
