module {
  func.func public @SqueezeNetFireModule(%l_self_modules_squeeze_parameters_weight_: tensor<6x3xf32>, %l_self_modules_squeeze_parameters_bias_: tensor<6xf32>, %l_x_: tensor<128x3x256x256xf32>, %l_self_modules_expand1x1_parameters_weight_: tensor<64x6xf32>, %l_self_modules_expand1x1_parameters_bias_: tensor<64xf32>, %l_self_modules_expand3x3_parameters_weight_: tensor<64x6x3x3xf32>, %l_self_modules_expand3x3_parameters_bias_: tensor<64xf32>) -> tensor<128x128x256x256xf32> {
    %l_self_modules_squeeze_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_squeeze_parameters_weight_ [[0], [1, 2, 3]] output_shape [6, 3, 1, 1] : tensor<6x3xf32> into tensor<6x3x1x1xf32>
    %v0.empty = tensor.empty() : tensor<128x6x256x1x256xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<128x6x256x1x256xf32>) -> tensor<128x6x256x1x256xf32>
    %v0.shape = tensor.empty() : tensor<256x1xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%l_x_, %l_self_modules_squeeze_parameters_weight_.expanded, %v0.shape : tensor<128x3x256x256xf32>, tensor<6x3x1x1xf32>, tensor<256x1xf32>)
      outs(%v0.buf : tensor<128x6x256x1x256xf32>) {
        ^bb0(%in_3: f32, %in_4: f32, %shape_2: f32, %acc_5: f32):
          %v6 = arith.mulf %in_3, %in_4 : f32
          %v7 = arith.addf %v6, %acc_5 : f32
          linalg.yield %v7 : f32
      }
    -> tensor<128x6x256x1x256xf32>
    %v0.post = tensor.empty() : tensor<128x6x256x1x256xf32>
    %v0.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.buf.out, %l_self_modules_squeeze_parameters_bias_ : tensor<128x6x256x1x256xf32>, tensor<6xf32>)
      outs(%v0.post : tensor<128x6x256x1x256xf32>) {
        ^bb0(%acc_9: f32, %in_8: f32, %post_10: f32):
          %v11 = arith.addf %acc_9, %in_8 : f32
          %v12 = arith.maxnumf %v1, %v11 : f32
          linalg.yield %v12 : f32
      }
    -> tensor<128x6x256x1x256xf32>
    %l_self_modules_expand1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_expand1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 6, 1, 1] : tensor<64x6xf32> into tensor<64x6x1x1xf32>
    %v13.empty = tensor.empty() : tensor<128x64x256x1x256xf32>
    %v13.buf = linalg.fill ins(%v1 : f32) outs(%v13.empty : tensor<128x64x256x1x256xf32>) -> tensor<128x64x256x1x256xf32>
    %v13.shape = tensor.empty() : tensor<256x1xf32>
    %v13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v0.post.out, %l_self_modules_expand1x1_parameters_weight_.expanded, %v13.shape : tensor<128x6x256x1x256xf32>, tensor<64x6x1x1xf32>, tensor<256x1xf32>)
      outs(%v13.buf : tensor<128x64x256x1x256xf32>) {
        ^bb0(%in_15: f32, %in_16: f32, %shape_14: f32, %acc_17: f32):
          %v18 = arith.mulf %in_15, %in_16 : f32
          %v19 = arith.addf %v18, %acc_17 : f32
          linalg.yield %v19 : f32
      }
    -> tensor<128x64x256x1x256xf32>
    %v13.post = tensor.empty() : tensor<128x64x256x1x256xf32>
    %v13.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v13.buf.out, %l_self_modules_expand1x1_parameters_bias_ : tensor<128x64x256x1x256xf32>, tensor<64xf32>)
      outs(%v13.post : tensor<128x64x256x1x256xf32>) {
        ^bb0(%acc_21: f32, %in_20: f32, %post_22: f32):
          %v23 = arith.addf %acc_21, %in_20 : f32
          %v24 = arith.maxnumf %v1, %v23 : f32
          linalg.yield %v24 : f32
      }
    -> tensor<128x64x256x1x256xf32>
    %relu_1.buf = tensor.empty() : tensor<128x64x256x256xf32>
    %relu_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v13.post.out : tensor<128x64x256x1x256xf32>)
      outs(%relu_1.buf : tensor<128x64x256x256xf32>) {
        ^bb0(%in_25: f32, %acc_26: f32):
          linalg.yield %in_25 : f32
      }
    -> tensor<128x64x256x256xf32>
    %x.buf = tensor.empty() : tensor<128x6x256x256xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v0.post.out : tensor<128x6x256x1x256xf32>)
      outs(%x.buf : tensor<128x6x256x256xf32>) {
        ^bb0(%in_27: f32, %acc_28: f32):
          linalg.yield %in_27 : f32
      }
    -> tensor<128x6x256x256xf32>
    %padded = tensor.pad %x.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i29: index, %pad_i30: index, %pad_i31: index, %pad_i32: index):
        tensor.yield %v1 : f32
    } : tensor<128x6x256x256xf32> to tensor<128x6x258x258xf32>
    %v33.empty = tensor.empty() : tensor<128x64x256x1x256xf32>
    %v33.buf = linalg.fill ins(%v1 : f32) outs(%v33.empty : tensor<128x64x256x1x256xf32>) -> tensor<128x64x256x1x256xf32>
    %v33.shape = tensor.empty() : tensor<256x1xf32>
    %v33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_expand3x3_parameters_weight_, %v33.shape : tensor<128x6x258x258xf32>, tensor<64x6x3x3xf32>, tensor<256x1xf32>)
      outs(%v33.buf : tensor<128x64x256x1x256xf32>) {
        ^bb0(%in_35: f32, %in_36: f32, %shape_34: f32, %acc_37: f32):
          %v38 = arith.mulf %in_35, %in_36 : f32
          %v39 = arith.addf %v38, %acc_37 : f32
          linalg.yield %v39 : f32
      }
    -> tensor<128x64x256x1x256xf32>
    %v33.post = tensor.empty() : tensor<128x64x256x1x256xf32>
    %v33.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v33.buf.out, %l_self_modules_expand3x3_parameters_bias_ : tensor<128x64x256x1x256xf32>, tensor<64xf32>)
      outs(%v33.post : tensor<128x64x256x1x256xf32>) {
        ^bb0(%acc_41: f32, %in_40: f32, %post_42: f32):
          %v43 = arith.addf %acc_41, %in_40 : f32
          %v44 = arith.maxnumf %v1, %v43 : f32
          linalg.yield %v44 : f32
      }
    -> tensor<128x64x256x1x256xf32>
    %relu_2.buf = tensor.empty() : tensor<128x64x256x256xf32>
    %relu_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v33.post.out : tensor<128x64x256x1x256xf32>)
      outs(%relu_2.buf : tensor<128x64x256x256xf32>) {
        ^bb0(%in_45: f32, %acc_46: f32):
          linalg.yield %in_45 : f32
      }
    -> tensor<128x64x256x256xf32>
    %cat = tensor.concat dim(1) %relu_1.buf.out, %relu_2.buf.out : (tensor<128x64x256x256xf32>, tensor<128x64x256x256xf32>) -> tensor<128x128x256x256xf32>
    func.return %cat : tensor<128x128x256x256xf32>
  }
}
