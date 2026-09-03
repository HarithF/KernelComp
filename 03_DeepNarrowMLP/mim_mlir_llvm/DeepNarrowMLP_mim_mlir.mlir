module {
  func.func public @DeepNarrowMLP(%l_self_modules_network_modules_0_parameters_weight_: tensor<1024x8192xf32>, %l_self_modules_network_modules_0_parameters_bias_: tensor<1024xf32>, %l_x_: tensor<1024x8192xf32>, %l_self_modules_network_modules_2_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_2_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_4_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_4_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_6_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_6_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_8_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_8_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_10_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_10_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_12_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_12_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_14_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_14_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_16_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_16_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_18_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_18_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_20_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_20_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_22_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_22_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_24_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_24_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_26_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_26_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_28_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_28_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_30_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_30_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_32_parameters_weight_: tensor<8192x1024xf32>, %l_self_modules_network_modules_32_parameters_bias_: tensor<8192xf32>) -> tensor<1024x8192xf32> {
    %v0.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%l_x_, %l_self_modules_network_modules_0_parameters_weight_ : tensor<1024x8192xf32>, tensor<1024x8192xf32>)
      outs(%v0.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_2: f32, %in_3: f32, %acc_4: f32):
          %v5 = arith.mulf %in_2, %in_3 : f32
          %v6 = arith.addf %v5, %acc_4 : f32
          linalg.yield %v6 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v0.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v0.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %l_self_modules_network_modules_0_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v0.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_8: f32, %in_7: f32, %post_9: f32):
          %v10 = arith.addf %acc_8, %in_7 : f32
          %v11 = arith.maxnumf %v1, %v10 : f32
          linalg.yield %v11 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v12.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v12.buf = linalg.fill ins(%v1 : f32) outs(%v12.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v0.post.out, %l_self_modules_network_modules_2_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v12.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_13: f32, %in_14: f32, %acc_15: f32):
          %v16 = arith.mulf %in_13, %in_14 : f32
          %v17 = arith.addf %v16, %acc_15 : f32
          linalg.yield %v17 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v12.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v12.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v12.buf.out, %l_self_modules_network_modules_2_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v12.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_19: f32, %in_18: f32, %post_20: f32):
          %v21 = arith.addf %acc_19, %in_18 : f32
          %v22 = arith.maxnumf %v1, %v21 : f32
          linalg.yield %v22 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v23.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v23.buf = linalg.fill ins(%v1 : f32) outs(%v23.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v12.post.out, %l_self_modules_network_modules_4_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v23.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_24: f32, %in_25: f32, %acc_26: f32):
          %v27 = arith.mulf %in_24, %in_25 : f32
          %v28 = arith.addf %v27, %acc_26 : f32
          linalg.yield %v28 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v23.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v23.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v23.buf.out, %l_self_modules_network_modules_4_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v23.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_30: f32, %in_29: f32, %post_31: f32):
          %v32 = arith.addf %acc_30, %in_29 : f32
          %v33 = arith.maxnumf %v1, %v32 : f32
          linalg.yield %v33 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v34.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v34.buf = linalg.fill ins(%v1 : f32) outs(%v34.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v23.post.out, %l_self_modules_network_modules_6_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v34.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_35: f32, %in_36: f32, %acc_37: f32):
          %v38 = arith.mulf %in_35, %in_36 : f32
          %v39 = arith.addf %v38, %acc_37 : f32
          linalg.yield %v39 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v34.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v34.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v34.buf.out, %l_self_modules_network_modules_6_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v34.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_41: f32, %in_40: f32, %post_42: f32):
          %v43 = arith.addf %acc_41, %in_40 : f32
          %v44 = arith.maxnumf %v1, %v43 : f32
          linalg.yield %v44 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v45.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v45.buf = linalg.fill ins(%v1 : f32) outs(%v45.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v34.post.out, %l_self_modules_network_modules_8_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v45.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_46: f32, %in_47: f32, %acc_48: f32):
          %v49 = arith.mulf %in_46, %in_47 : f32
          %v50 = arith.addf %v49, %acc_48 : f32
          linalg.yield %v50 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v45.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v45.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v45.buf.out, %l_self_modules_network_modules_8_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v45.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_52: f32, %in_51: f32, %post_53: f32):
          %v54 = arith.addf %acc_52, %in_51 : f32
          %v55 = arith.maxnumf %v1, %v54 : f32
          linalg.yield %v55 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v56.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v56.buf = linalg.fill ins(%v1 : f32) outs(%v56.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v56.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v45.post.out, %l_self_modules_network_modules_10_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v56.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_57: f32, %in_58: f32, %acc_59: f32):
          %v60 = arith.mulf %in_57, %in_58 : f32
          %v61 = arith.addf %v60, %acc_59 : f32
          linalg.yield %v61 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v56.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v56.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v56.buf.out, %l_self_modules_network_modules_10_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v56.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_63: f32, %in_62: f32, %post_64: f32):
          %v65 = arith.addf %acc_63, %in_62 : f32
          %v66 = arith.maxnumf %v1, %v65 : f32
          linalg.yield %v66 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v67.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v67.buf = linalg.fill ins(%v1 : f32) outs(%v67.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v56.post.out, %l_self_modules_network_modules_12_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v67.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_68: f32, %in_69: f32, %acc_70: f32):
          %v71 = arith.mulf %in_68, %in_69 : f32
          %v72 = arith.addf %v71, %acc_70 : f32
          linalg.yield %v72 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v67.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v67.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v67.buf.out, %l_self_modules_network_modules_12_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v67.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_74: f32, %in_73: f32, %post_75: f32):
          %v76 = arith.addf %acc_74, %in_73 : f32
          %v77 = arith.maxnumf %v1, %v76 : f32
          linalg.yield %v77 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v78.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v78.buf = linalg.fill ins(%v1 : f32) outs(%v78.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v78.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v67.post.out, %l_self_modules_network_modules_14_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v78.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_79: f32, %in_80: f32, %acc_81: f32):
          %v82 = arith.mulf %in_79, %in_80 : f32
          %v83 = arith.addf %v82, %acc_81 : f32
          linalg.yield %v83 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v78.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v78.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v78.buf.out, %l_self_modules_network_modules_14_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v78.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_85: f32, %in_84: f32, %post_86: f32):
          %v87 = arith.addf %acc_85, %in_84 : f32
          %v88 = arith.maxnumf %v1, %v87 : f32
          linalg.yield %v88 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v89.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v89.buf = linalg.fill ins(%v1 : f32) outs(%v89.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v89.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v78.post.out, %l_self_modules_network_modules_16_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v89.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_90: f32, %in_91: f32, %acc_92: f32):
          %v93 = arith.mulf %in_90, %in_91 : f32
          %v94 = arith.addf %v93, %acc_92 : f32
          linalg.yield %v94 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v89.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v89.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v89.buf.out, %l_self_modules_network_modules_16_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v89.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_96: f32, %in_95: f32, %post_97: f32):
          %v98 = arith.addf %acc_96, %in_95 : f32
          %v99 = arith.maxnumf %v1, %v98 : f32
          linalg.yield %v99 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v100.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v100.buf = linalg.fill ins(%v1 : f32) outs(%v100.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v100.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v89.post.out, %l_self_modules_network_modules_18_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v100.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_101: f32, %in_102: f32, %acc_103: f32):
          %v104 = arith.mulf %in_101, %in_102 : f32
          %v105 = arith.addf %v104, %acc_103 : f32
          linalg.yield %v105 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v100.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v100.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v100.buf.out, %l_self_modules_network_modules_18_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v100.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_107: f32, %in_106: f32, %post_108: f32):
          %v109 = arith.addf %acc_107, %in_106 : f32
          %v110 = arith.maxnumf %v1, %v109 : f32
          linalg.yield %v110 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v111.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v111.buf = linalg.fill ins(%v1 : f32) outs(%v111.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v111.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v100.post.out, %l_self_modules_network_modules_20_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v111.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_112: f32, %in_113: f32, %acc_114: f32):
          %v115 = arith.mulf %in_112, %in_113 : f32
          %v116 = arith.addf %v115, %acc_114 : f32
          linalg.yield %v116 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v111.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v111.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v111.buf.out, %l_self_modules_network_modules_20_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v111.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_118: f32, %in_117: f32, %post_119: f32):
          %v120 = arith.addf %acc_118, %in_117 : f32
          %v121 = arith.maxnumf %v1, %v120 : f32
          linalg.yield %v121 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v122.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v122.buf = linalg.fill ins(%v1 : f32) outs(%v122.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v122.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v111.post.out, %l_self_modules_network_modules_22_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v122.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_123: f32, %in_124: f32, %acc_125: f32):
          %v126 = arith.mulf %in_123, %in_124 : f32
          %v127 = arith.addf %v126, %acc_125 : f32
          linalg.yield %v127 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v122.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v122.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v122.buf.out, %l_self_modules_network_modules_22_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v122.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_129: f32, %in_128: f32, %post_130: f32):
          %v131 = arith.addf %acc_129, %in_128 : f32
          %v132 = arith.maxnumf %v1, %v131 : f32
          linalg.yield %v132 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v133.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v133.buf = linalg.fill ins(%v1 : f32) outs(%v133.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v133.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v122.post.out, %l_self_modules_network_modules_24_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v133.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_134: f32, %in_135: f32, %acc_136: f32):
          %v137 = arith.mulf %in_134, %in_135 : f32
          %v138 = arith.addf %v137, %acc_136 : f32
          linalg.yield %v138 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v133.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v133.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v133.buf.out, %l_self_modules_network_modules_24_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v133.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_140: f32, %in_139: f32, %post_141: f32):
          %v142 = arith.addf %acc_140, %in_139 : f32
          %v143 = arith.maxnumf %v1, %v142 : f32
          linalg.yield %v143 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v144.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v144.buf = linalg.fill ins(%v1 : f32) outs(%v144.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v144.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v133.post.out, %l_self_modules_network_modules_26_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v144.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_145: f32, %in_146: f32, %acc_147: f32):
          %v148 = arith.mulf %in_145, %in_146 : f32
          %v149 = arith.addf %v148, %acc_147 : f32
          linalg.yield %v149 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v144.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v144.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v144.buf.out, %l_self_modules_network_modules_26_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v144.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_151: f32, %in_150: f32, %post_152: f32):
          %v153 = arith.addf %acc_151, %in_150 : f32
          %v154 = arith.maxnumf %v1, %v153 : f32
          linalg.yield %v154 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v155.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v155.buf = linalg.fill ins(%v1 : f32) outs(%v155.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v155.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v144.post.out, %l_self_modules_network_modules_28_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v155.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_156: f32, %in_157: f32, %acc_158: f32):
          %v159 = arith.mulf %in_156, %in_157 : f32
          %v160 = arith.addf %v159, %acc_158 : f32
          linalg.yield %v160 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v155.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v155.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v155.buf.out, %l_self_modules_network_modules_28_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v155.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_162: f32, %in_161: f32, %post_163: f32):
          %v164 = arith.addf %acc_162, %in_161 : f32
          %v165 = arith.maxnumf %v1, %v164 : f32
          linalg.yield %v165 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v166.empty = tensor.empty() : tensor<512x2x256x4xf32>
    %v166.buf = linalg.fill ins(%v1 : f32) outs(%v166.empty : tensor<512x2x256x4xf32>) -> tensor<512x2x256x4xf32>
    %v166.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v155.post.out, %l_self_modules_network_modules_30_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<1024x1024xf32>)
      outs(%v166.buf : tensor<512x2x256x4xf32>) {
        ^bb0(%in_167: f32, %in_168: f32, %acc_169: f32):
          %v170 = arith.mulf %in_167, %in_168 : f32
          %v171 = arith.addf %v170, %acc_169 : f32
          linalg.yield %v171 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v166.post = tensor.empty() : tensor<512x2x256x4xf32>
    %v166.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v166.buf.out, %l_self_modules_network_modules_30_parameters_bias_ : tensor<512x2x256x4xf32>, tensor<1024xf32>)
      outs(%v166.post : tensor<512x2x256x4xf32>) {
        ^bb0(%acc_173: f32, %in_172: f32, %post_174: f32):
          %v175 = arith.addf %acc_173, %in_172 : f32
          %v176 = arith.maxnumf %v1, %v175 : f32
          linalg.yield %v176 : f32
      }
    -> tensor<512x2x256x4xf32>
    %v177.empty = tensor.empty() : tensor<512x2x2048x4xf32>
    %v177.buf = linalg.fill ins(%v1 : f32) outs(%v177.empty : tensor<512x2x2048x4xf32>) -> tensor<512x2x2048x4xf32>
    %v177.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 1024) floordiv 2048, d2, (d4 + (d0 * 2 + d2) * 1024) floordiv 4 mod 256, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v166.post.out, %l_self_modules_network_modules_32_parameters_weight_ : tensor<512x2x256x4xf32>, tensor<8192x1024xf32>)
      outs(%v177.buf : tensor<512x2x2048x4xf32>) {
        ^bb0(%in_178: f32, %in_179: f32, %acc_180: f32):
          %v181 = arith.mulf %in_178, %in_179 : f32
          %v182 = arith.addf %v181, %acc_180 : f32
          linalg.yield %v182 : f32
      }
    -> tensor<512x2x2048x4xf32>
    %v177.post = tensor.empty() : tensor<512x2x2048x4xf32>
    %v177.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v177.buf.out, %l_self_modules_network_modules_32_parameters_bias_ : tensor<512x2x2048x4xf32>, tensor<8192xf32>)
      outs(%v177.post : tensor<512x2x2048x4xf32>) {
        ^bb0(%acc_184: f32, %in_183: f32, %post_185: f32):
          %v186 = arith.addf %acc_184, %in_183 : f32
          linalg.yield %v186 : f32
      }
    -> tensor<512x2x2048x4xf32>
    %input_33.buf = tensor.empty() : tensor<1024x8192xf32>
    %input_33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ((d1 + d0 * 8192) floordiv 16384, d0 mod 2, (d1 + d0 * 8192) floordiv 4 mod 2048, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v177.post.out : tensor<512x2x2048x4xf32>)
      outs(%input_33.buf : tensor<1024x8192xf32>) {
        ^bb0(%in_187: f32, %acc_188: f32):
          linalg.yield %in_187 : f32
      }
    -> tensor<1024x8192xf32>
    func.return %input_33.buf.out : tensor<1024x8192xf32>
  }
}
