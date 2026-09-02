module {
  func.func public @GoogleNetInceptionModule(%l_self_modules_branch1x1_parameters_weight_: tensor<192x480xf32>, %l_self_modules_branch1x1_parameters_bias_: tensor<192xf32>, %l_x_: tensor<10x480x224x224xf32>, %l_self_modules_branch3x3_modules_0_parameters_weight_: tensor<96x480xf32>, %l_self_modules_branch3x3_modules_0_parameters_bias_: tensor<96xf32>, %l_self_modules_branch3x3_modules_1_parameters_weight_: tensor<208x96x3x3xf32>, %l_self_modules_branch3x3_modules_1_parameters_bias_: tensor<208xf32>, %l_self_modules_branch5x5_modules_0_parameters_weight_: tensor<16x480xf32>, %l_self_modules_branch5x5_modules_0_parameters_bias_: tensor<16xf32>, %l_self_modules_branch5x5_modules_1_parameters_weight_: tensor<48x16x5x5xf32>, %l_self_modules_branch5x5_modules_1_parameters_bias_: tensor<48xf32>, %l_self_modules_branch_pool_modules_1_parameters_weight_: tensor<64x480xf32>, %l_self_modules_branch_pool_modules_1_parameters_bias_: tensor<64xf32>) -> tensor<10x512x224x224xf32> {
    %l_self_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 480, 1, 1] : tensor<192x480xf32> into tensor<192x480x1x1xf32>
    %v0.empty = tensor.empty() : tensor<10x192x224x224xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<10x192x224x224xf32>) -> tensor<10x192x224x224xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_branch1x1_parameters_weight_.expanded : tensor<10x480x224x224xf32>, tensor<192x480x1x1xf32>)
      outs(%v0.buf : tensor<10x192x224x224xf32>) {
        ^bb0(%in_2: f32, %in_3: f32, %acc_4: f32):
          %v5 = arith.mulf %in_2, %in_3 : f32
          %v6 = arith.addf %v5, %acc_4 : f32
          linalg.yield %v6 : f32
      }
    -> tensor<10x192x224x224xf32>
    %v7.buf = tensor.empty() : tensor<1x192x1x1xf32>
    %v7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_branch1x1_parameters_bias_ : tensor<192xf32>)
      outs(%v7.buf : tensor<1x192x1x1xf32>) {
        ^bb0(%in_8: f32, %acc_9: f32):
          linalg.yield %in_8 : f32
      }
    -> tensor<1x192x1x1xf32>
    %v10.collapsed = tensor.collapse_shape %v7.buf.out [[0, 1, 2, 3]] : tensor<1x192x1x1xf32> into tensor<192xf32>
    %v10.buf = tensor.empty() : tensor<10x192x224x224xf32>
    %v10 = linalg.broadcast ins(%v10.collapsed : tensor<192xf32>)
      outs(%v10.buf : tensor<10x192x224x224xf32>)
      dimensions = [0, 2, 3]
    %branch1x1.buf = tensor.empty() : tensor<10x192x224x224xf32>
    %branch1x1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %v10 : tensor<10x192x224x224xf32>, tensor<10x192x224x224xf32>)
      outs(%branch1x1.buf : tensor<10x192x224x224xf32>) {
        ^bb0(%in_11: f32, %in_12: f32, %acc_13: f32):
          %v14 = arith.addf %in_11, %in_12 : f32
          linalg.yield %v14 : f32
      }
    -> tensor<10x192x224x224xf32>
    %l_self_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 480, 1, 1] : tensor<96x480xf32> into tensor<96x480x1x1xf32>
    %v15.empty = tensor.empty() : tensor<10x96x224x224xf32>
    %v15.buf = linalg.fill ins(%v1 : f32) outs(%v15.empty : tensor<10x96x224x224xf32>) -> tensor<10x96x224x224xf32>
    %v15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_branch3x3_modules_0_parameters_weight_.expanded : tensor<10x480x224x224xf32>, tensor<96x480x1x1xf32>)
      outs(%v15.buf : tensor<10x96x224x224xf32>) {
        ^bb0(%in_16: f32, %in_17: f32, %acc_18: f32):
          %v19 = arith.mulf %in_16, %in_17 : f32
          %v20 = arith.addf %v19, %acc_18 : f32
          linalg.yield %v20 : f32
      }
    -> tensor<10x96x224x224xf32>
    %v21.buf = tensor.empty() : tensor<1x96x1x1xf32>
    %v21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_branch3x3_modules_0_parameters_bias_ : tensor<96xf32>)
      outs(%v21.buf : tensor<1x96x1x1xf32>) {
        ^bb0(%in_22: f32, %acc_23: f32):
          linalg.yield %in_22 : f32
      }
    -> tensor<1x96x1x1xf32>
    %v24.collapsed = tensor.collapse_shape %v21.buf.out [[0, 1, 2, 3]] : tensor<1x96x1x1xf32> into tensor<96xf32>
    %v24.buf = tensor.empty() : tensor<10x96x224x224xf32>
    %v24 = linalg.broadcast ins(%v24.collapsed : tensor<96xf32>)
      outs(%v24.buf : tensor<10x96x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_1.buf = tensor.empty() : tensor<10x96x224x224xf32>
    %input_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v15.buf.out, %v24 : tensor<10x96x224x224xf32>, tensor<10x96x224x224xf32>)
      outs(%input_1.buf : tensor<10x96x224x224xf32>) {
        ^bb0(%in_25: f32, %in_26: f32, %acc_27: f32):
          %v28 = arith.addf %in_25, %in_26 : f32
          linalg.yield %v28 : f32
      }
    -> tensor<10x96x224x224xf32>
    %padded = tensor.pad %input_1.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i29: index, %pad_i30: index, %pad_i31: index, %pad_i32: index):
        tensor.yield %v1 : f32
    } : tensor<10x96x224x224xf32> to tensor<10x96x226x226xf32>
    %v33.empty = tensor.empty() : tensor<10x208x224x224xf32>
    %v33.buf = linalg.fill ins(%v1 : f32) outs(%v33.empty : tensor<10x208x224x224xf32>) -> tensor<10x208x224x224xf32>
    %v33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_branch3x3_modules_1_parameters_weight_ : tensor<10x96x226x226xf32>, tensor<208x96x3x3xf32>)
      outs(%v33.buf : tensor<10x208x224x224xf32>) {
        ^bb0(%in_34: f32, %in_35: f32, %acc_36: f32):
          %v37 = arith.mulf %in_34, %in_35 : f32
          %v38 = arith.addf %v37, %acc_36 : f32
          linalg.yield %v38 : f32
      }
    -> tensor<10x208x224x224xf32>
    %v39.buf = tensor.empty() : tensor<1x208x1x1xf32>
    %v39.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_branch3x3_modules_1_parameters_bias_ : tensor<208xf32>)
      outs(%v39.buf : tensor<1x208x1x1xf32>) {
        ^bb0(%in_40: f32, %acc_41: f32):
          linalg.yield %in_40 : f32
      }
    -> tensor<1x208x1x1xf32>
    %v42.collapsed = tensor.collapse_shape %v39.buf.out [[0, 1, 2, 3]] : tensor<1x208x1x1xf32> into tensor<208xf32>
    %v42.buf = tensor.empty() : tensor<10x208x224x224xf32>
    %v42 = linalg.broadcast ins(%v42.collapsed : tensor<208xf32>)
      outs(%v42.buf : tensor<10x208x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_2.buf = tensor.empty() : tensor<10x208x224x224xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v33.buf.out, %v42 : tensor<10x208x224x224xf32>, tensor<10x208x224x224xf32>)
      outs(%input_2.buf : tensor<10x208x224x224xf32>) {
        ^bb0(%in_43: f32, %in_44: f32, %acc_45: f32):
          %v46 = arith.addf %in_43, %in_44 : f32
          linalg.yield %v46 : f32
      }
    -> tensor<10x208x224x224xf32>
    %l_self_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [16, 480, 1, 1] : tensor<16x480xf32> into tensor<16x480x1x1xf32>
    %v47.empty = tensor.empty() : tensor<10x16x224x224xf32>
    %v47.buf = linalg.fill ins(%v1 : f32) outs(%v47.empty : tensor<10x16x224x224xf32>) -> tensor<10x16x224x224xf32>
    %v47.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_branch5x5_modules_0_parameters_weight_.expanded : tensor<10x480x224x224xf32>, tensor<16x480x1x1xf32>)
      outs(%v47.buf : tensor<10x16x224x224xf32>) {
        ^bb0(%in_48: f32, %in_49: f32, %acc_50: f32):
          %v51 = arith.mulf %in_48, %in_49 : f32
          %v52 = arith.addf %v51, %acc_50 : f32
          linalg.yield %v52 : f32
      }
    -> tensor<10x16x224x224xf32>
    %v53.buf = tensor.empty() : tensor<1x16x1x1xf32>
    %v53.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_branch5x5_modules_0_parameters_bias_ : tensor<16xf32>)
      outs(%v53.buf : tensor<1x16x1x1xf32>) {
        ^bb0(%in_54: f32, %acc_55: f32):
          linalg.yield %in_54 : f32
      }
    -> tensor<1x16x1x1xf32>
    %v56.collapsed = tensor.collapse_shape %v53.buf.out [[0, 1, 2, 3]] : tensor<1x16x1x1xf32> into tensor<16xf32>
    %v56.buf = tensor.empty() : tensor<10x16x224x224xf32>
    %v56 = linalg.broadcast ins(%v56.collapsed : tensor<16xf32>)
      outs(%v56.buf : tensor<10x16x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_3.buf = tensor.empty() : tensor<10x16x224x224xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v47.buf.out, %v56 : tensor<10x16x224x224xf32>, tensor<10x16x224x224xf32>)
      outs(%input_3.buf : tensor<10x16x224x224xf32>) {
        ^bb0(%in_57: f32, %in_58: f32, %acc_59: f32):
          %v60 = arith.addf %in_57, %in_58 : f32
          linalg.yield %v60 : f32
      }
    -> tensor<10x16x224x224xf32>
    %padded_1 = tensor.pad %input_3.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i61: index, %pad_i62: index, %pad_i63: index, %pad_i64: index):
        tensor.yield %v1 : f32
    } : tensor<10x16x224x224xf32> to tensor<10x16x228x228xf32>
    %v65.empty = tensor.empty() : tensor<10x48x224x224xf32>
    %v65.buf = linalg.fill ins(%v1 : f32) outs(%v65.empty : tensor<10x48x224x224xf32>) -> tensor<10x48x224x224xf32>
    %v65.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_branch5x5_modules_1_parameters_weight_ : tensor<10x16x228x228xf32>, tensor<48x16x5x5xf32>)
      outs(%v65.buf : tensor<10x48x224x224xf32>) {
        ^bb0(%in_66: f32, %in_67: f32, %acc_68: f32):
          %v69 = arith.mulf %in_66, %in_67 : f32
          %v70 = arith.addf %v69, %acc_68 : f32
          linalg.yield %v70 : f32
      }
    -> tensor<10x48x224x224xf32>
    %v71.buf = tensor.empty() : tensor<1x48x1x1xf32>
    %v71.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_branch5x5_modules_1_parameters_bias_ : tensor<48xf32>)
      outs(%v71.buf : tensor<1x48x1x1xf32>) {
        ^bb0(%in_72: f32, %acc_73: f32):
          linalg.yield %in_72 : f32
      }
    -> tensor<1x48x1x1xf32>
    %v74.collapsed = tensor.collapse_shape %v71.buf.out [[0, 1, 2, 3]] : tensor<1x48x1x1xf32> into tensor<48xf32>
    %v74.buf = tensor.empty() : tensor<10x48x224x224xf32>
    %v74 = linalg.broadcast ins(%v74.collapsed : tensor<48xf32>)
      outs(%v74.buf : tensor<10x48x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_4.buf = tensor.empty() : tensor<10x48x224x224xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v65.buf.out, %v74 : tensor<10x48x224x224xf32>, tensor<10x48x224x224xf32>)
      outs(%input_4.buf : tensor<10x48x224x224xf32>) {
        ^bb0(%in_75: f32, %in_76: f32, %acc_77: f32):
          %v78 = arith.addf %in_75, %in_76 : f32
          linalg.yield %v78 : f32
      }
    -> tensor<10x48x224x224xf32>
    %init = arith.constant 0xFF800000 : f32
    %padded_2 = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i79: index, %pad_i80: index, %pad_i81: index, %pad_i82: index):
        tensor.yield %init : f32
    } : tensor<10x480x224x224xf32> to tensor<10x480x226x226xf32>
    %input_5.empty = tensor.empty() : tensor<10x480x224x224xf32>
    %input_5.buf = linalg.fill ins(%init : f32) outs(%input_5.empty : tensor<10x480x224x224xf32>) -> tensor<10x480x224x224xf32>
    %input_5.shape = tensor.empty() : tensor<3x3xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_2, %input_5.shape : tensor<10x480x226x226xf32>, tensor<3x3xf32>)
      outs(%input_5.buf : tensor<10x480x224x224xf32>) {
        ^bb0(%in_84: f32, %shape_83: f32, %acc_85: f32):
          %v86 = arith.maxnumf %acc_85, %in_84 : f32
          linalg.yield %v86 : f32
      }
    -> tensor<10x480x224x224xf32>
    %l_self_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 480, 1, 1] : tensor<64x480xf32> into tensor<64x480x1x1xf32>
    %v87.empty = tensor.empty() : tensor<10x64x224x224xf32>
    %v87.buf = linalg.fill ins(%v1 : f32) outs(%v87.empty : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %v87.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_5.buf.out, %l_self_modules_branch_pool_modules_1_parameters_weight_.expanded : tensor<10x480x224x224xf32>, tensor<64x480x1x1xf32>)
      outs(%v87.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_88: f32, %in_89: f32, %acc_90: f32):
          %v91 = arith.mulf %in_88, %in_89 : f32
          %v92 = arith.addf %v91, %acc_90 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<10x64x224x224xf32>
    %v93.buf = tensor.empty() : tensor<1x64x1x1xf32>
    %v93.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_branch_pool_modules_1_parameters_bias_ : tensor<64xf32>)
      outs(%v93.buf : tensor<1x64x1x1xf32>) {
        ^bb0(%in_94: f32, %acc_95: f32):
          linalg.yield %in_94 : f32
      }
    -> tensor<1x64x1x1xf32>
    %v96.collapsed = tensor.collapse_shape %v93.buf.out [[0, 1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<64xf32>
    %v96.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %v96 = linalg.broadcast ins(%v96.collapsed : tensor<64xf32>)
      outs(%v96.buf : tensor<10x64x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_6.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v87.buf.out, %v96 : tensor<10x64x224x224xf32>, tensor<10x64x224x224xf32>)
      outs(%input_6.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_97: f32, %in_98: f32, %acc_99: f32):
          %v100 = arith.addf %in_97, %in_98 : f32
          linalg.yield %v100 : f32
      }
    -> tensor<10x64x224x224xf32>
    %cat = tensor.concat dim(1) %branch1x1.buf.out, %input_2.buf.out, %input_4.buf.out, %input_6.buf.out : (tensor<10x192x224x224xf32>, tensor<10x208x224x224xf32>, tensor<10x48x224x224xf32>, tensor<10x64x224x224xf32>) -> tensor<10x512x224x224xf32>
    func.return %cat : tensor<10x512x224x224xf32>
  }
}
