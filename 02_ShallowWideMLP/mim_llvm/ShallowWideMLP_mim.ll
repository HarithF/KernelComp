
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [16384 x float]]* @ShallowWideMLP([32768 x [16384 x float]]* %_96556, [32768 x float]* %fv_2_96447, [128 x [16384 x float]]* %_96545, [32768 x [32768 x float]]* %_96457, [32768 x float]* %fv_9_96328, [16384 x [32768 x float]]* %_96338, [16384 x float]* %fv_2_96199) {
mimir_graph_081192c5b4251efb_96031:
    %_96046i8 = call i8* @malloc(i64 16777216)
    %_96046 = bitcast i8* %_96046i8 to [128 x [32768 x float]]*
    br label %head_96051

head_96051:
    %_96054 = phi i64 [ 0, %mimir_graph_081192c5b4251efb_96031 ], [ %fv_0_96515, %new_exit_96512 ]
    %_96059 = icmp ult i64 %_96054, 128
    %fv_4_96529 = trunc i64 %_96054 to i7
    %fv_3_96547.zext = zext i7 %fv_4_96529 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_3_96547 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96545, i64 0, i8 %fv_3_96547.zext
    %_96531.zext = zext i7 %fv_4_96529 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96531 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96046, i64 0, i8 %_96531.zext
    br i1 %_96059, label %new_body_96503, label %new_exit_96062

new_body_96503:
    br label %head_96506

head_96506:
    %_96509 = phi i64 [ 0, %new_body_96503 ], [ %fv_2_96539, %new_exit_96527 ]
    %_96511 = icmp ult i64 %_96509, 32768
    %_96532 = trunc i64 %_96509 to i15
    %fv_6_96569.zext = zext i15 %_96532 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_6_96569 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]]* %_96556, i64 0, i16 %fv_6_96569.zext
    %fv_5_96534.zext = zext i15 %_96532 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_5_96534 = getelementptr inbounds [32768 x float], [32768 x float]* %_96531, i64 0, i16 %fv_5_96534.zext
    %fv_2_96539 = add nuw nsw i64 1, %_96509
    br i1 %_96511, label %new_body_96518, label %new_exit_96512

new_body_96518:
    br label %head_96521

head_96521:
    %fv_9_96535 = phi float [ 0x0000000000000000, %new_body_96518 ], [ %_96582, %new_body_96542 ]
    %_96524 = phi i64 [ 0, %new_body_96518 ], [ %fv_0_96576, %new_body_96542 ]
    %_96526 = icmp ult i64 %_96524, 16384
    br i1 %_96526, label %new_body_96542, label %new_exit_96527

new_body_96542:
    %_96548 = trunc i64 %_96524 to i14
    %fv_7_96550.zext = zext i14 %_96548 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_7_96550 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_3_96547, i64 0, i15 %fv_7_96550.zext
    %_96552 = load float, float* %fv_7_96550
    %fv_2_96571.zext = zext i14 %_96548 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_2_96571 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_6_96569, i64 0, i15 %fv_2_96571.zext
    %_96573 = load float, float* %fv_2_96571
    %fv_0_96576 = add nuw nsw i64 1, %_96524
    %_96580 = fmul float %_96552, %_96573
    %_96582 = fadd float %_96580, %fv_9_96535
    br label %head_96521

new_exit_96527:
    store float %fv_9_96535, float* %fv_5_96534
    br label %head_96506

new_exit_96512:
    %fv_0_96515 = add nuw nsw i64 1, %_96054
    br label %head_96051

new_exit_96062:
    %_96065i8 = call i8* @malloc(i64 16777216)
    %_96065 = bitcast i8* %_96065i8 to [128 x [32768 x float]]*
    br label %head_96068

head_96068:
    %_96071 = phi i64 [ 0, %new_exit_96062 ], [ %fv_3_96400, %new_exit_96397 ]
    %_96073 = icmp ult i64 %_96071, 128
    %fv_5_96414 = trunc i64 %_96071 to i7
    %fv_8_96431.zext = zext i7 %fv_5_96414 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_8_96431 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96046, i64 0, i8 %fv_8_96431.zext
    %_96416.zext = zext i7 %fv_5_96414 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96416 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96065, i64 0, i8 %_96416.zext
    br i1 %_96073, label %new_body_96388, label %new_exit_96074

new_body_96388:
    br label %head_96391

head_96391:
    %_96394 = phi i64 [ 0, %new_body_96388 ], [ %fv_12_96424, %new_exit_96412 ]
    %_96396 = icmp ult i64 %_96394, 32768
    %_96417 = trunc i64 %_96394 to i15
    %fv_0_96470.zext = zext i15 %_96417 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96470 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]]* %_96457, i64 0, i16 %fv_0_96470.zext
    %fv_11_96419.zext = zext i15 %_96417 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_11_96419 = getelementptr inbounds [32768 x float], [32768 x float]* %_96416, i64 0, i16 %fv_11_96419.zext
    %fv_12_96424 = add nuw nsw i64 1, %_96394
    br i1 %_96396, label %new_body_96403, label %new_exit_96397

new_body_96403:
    br label %head_96406

head_96406:
    %fv_10_96420 = phi float [ 0x0000000000000000, %new_body_96403 ], [ %_96488, %new_body_96427 ]
    %fv_14_96409 = phi i64 [ 0, %new_body_96403 ], [ %fv_13_96477, %new_body_96427 ]
    %_96411 = icmp ult i64 %fv_14_96409, 32768
    br i1 %_96411, label %new_body_96427, label %new_exit_96412

new_body_96427:
    %_96432 = trunc i64 %fv_14_96409 to i15
    %fv_6_96434.zext = zext i15 %_96432 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_6_96434 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_8_96431, i64 0, i16 %fv_6_96434.zext
    %_96436 = load float, float* %fv_6_96434
    %_96439 = urem i64 %fv_14_96409, 32768
    %_96444 = urem i64 %_96439, 32768
    %_96449 = trunc i64 %_96444 to i15
    %_96451.zext = zext i15 %_96449 to i16 ; add one more bit for gep index as it is treated as signed value
    %_96451 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_2_96447, i64 0, i16 %_96451.zext
    %_96453 = load float, float* %_96451
    %fv_9_96472.zext = zext i15 %_96432 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_9_96472 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_0_96470, i64 0, i16 %fv_9_96472.zext
    %_96474 = load float, float* %fv_9_96472
    %fv_13_96477 = add nuw nsw i64 1, %fv_14_96409
    %_96481 = fadd float %_96453, %_96436
    %_96483 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96481)
    %_96486 = fmul float %_96483, %_96474
    %_96488 = fadd float %_96486, %fv_10_96420
    br label %head_96406

new_exit_96412:
    store float %fv_10_96420, float* %fv_11_96419
    br label %head_96391

new_exit_96397:
    %fv_3_96400 = add nuw nsw i64 1, %_96071
    br label %head_96068

new_exit_96074:
    %_96080i8 = call i8* @malloc(i64 8388608)
    %_96080 = bitcast i8* %_96080i8 to [128 x [16384 x float]]*
    br label %head_96083

head_96083:
    %_96086 = phi i64 [ 0, %new_exit_96074 ], [ %fv_1_96248, %new_exit_96245 ]
    %_96088 = icmp ult i64 %_96086, 128
    %fv_2_96266 = trunc i64 %_96086 to i7
    %fv_4_96297.zext = zext i7 %fv_2_96266 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_4_96297 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96065, i64 0, i8 %fv_4_96297.zext
    %_96268.zext = zext i7 %fv_2_96266 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96268 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96080, i64 0, i8 %_96268.zext
    br i1 %_96088, label %new_body_96236, label %new_exit_96089

new_body_96236:
    br label %head_96239

head_96239:
    %_96242 = phi i64 [ 0, %new_body_96236 ], [ %fv_4_96276, %new_exit_96264 ]
    %_96244 = icmp ult i64 %_96242, 16384
    %_96269 = trunc i64 %_96242 to i14
    %fv_3_96351.zext = zext i14 %_96269 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_3_96351 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]]* %_96338, i64 0, i15 %fv_3_96351.zext
    %fv_5_96271.zext = zext i14 %_96269 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_5_96271 = getelementptr inbounds [16384 x float], [16384 x float]* %_96268, i64 0, i15 %fv_5_96271.zext
    %fv_4_96276 = add nuw nsw i64 1, %_96242
    br i1 %_96244, label %new_body_96251, label %new_exit_96245

new_body_96251:
    br label %head_96257

head_96257:
    %fv_14_96260 = phi i64 [ 0, %new_body_96251 ], [ %fv_1_96358, %new_body_96279 ]
    %fv_3_96272 = phi float [ 0x0000000000000000, %new_body_96251 ], [ %_96373, %new_body_96279 ]
    %_96263 = icmp ult i64 %fv_14_96260, 32768
    br i1 %_96263, label %new_body_96279, label %new_exit_96264

new_body_96279:
    %_96300 = trunc i64 %fv_14_96260 to i15
    %fv_7_96315.zext = zext i15 %_96300 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_7_96315 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_4_96297, i64 0, i16 %fv_7_96315.zext
    %_96317 = load float, float* %fv_7_96315
    %_96320 = urem i64 %fv_14_96260, 32768
    %_96325 = urem i64 %_96320, 32768
    %_96330 = trunc i64 %_96325 to i15
    %_96332.zext = zext i15 %_96330 to i16 ; add one more bit for gep index as it is treated as signed value
    %_96332 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_9_96328, i64 0, i16 %_96332.zext
    %_96334 = load float, float* %_96332
    %fv_8_96353.zext = zext i15 %_96300 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_8_96353 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_3_96351, i64 0, i16 %fv_8_96353.zext
    %_96355 = load float, float* %fv_8_96353
    %fv_1_96358 = add nuw nsw i64 1, %fv_14_96260
    %_96362 = fadd float %_96334, %_96317
    %_96366 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96362)
    %_96371 = fmul float %_96366, %_96355
    %_96373 = fadd float %_96371, %fv_3_96272
    br label %head_96257

new_exit_96264:
    store float %fv_3_96272, float* %fv_5_96271
    br label %head_96239

new_exit_96245:
    %fv_1_96248 = add nuw nsw i64 1, %_96086
    br label %head_96083

new_exit_96089:
    %_96092i8 = call i8* @malloc(i64 8388608)
    %_96092 = bitcast i8* %_96092i8 to [128 x [16384 x float]]*
    br label %head_96095

head_96095:
    %_96098 = phi i64 [ 0, %new_exit_96089 ], [ %fv_3_96125, %new_exit_96118 ]
    %_96100 = icmp ult i64 %_96098, 128
    %fv_5_96147 = trunc i64 %_96098 to i7
    %fv_2_96162.zext = zext i7 %fv_5_96147 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_2_96162 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96080, i64 0, i8 %fv_2_96162.zext
    %_96208.zext = zext i7 %fv_5_96147 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96208 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96092, i64 0, i8 %_96208.zext
    br i1 %_96100, label %new_body_96108, label %new_exit_96101

new_body_96108:
    br label %head_96111

head_96111:
    %fv_6_96114 = phi i64 [ 0, %new_body_96108 ], [ %fv_9_96225, %new_body_96128 ]
    %_96117 = icmp ult i64 %fv_6_96114, 16384
    br i1 %_96117, label %new_body_96128, label %new_exit_96118

new_body_96128:
    %_96165 = trunc i64 %fv_6_96114 to i14
    %fv_1_96180.zext = zext i14 %_96165 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_1_96180 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_2_96162, i64 0, i15 %fv_1_96180.zext
    %_96185 = load float, float* %fv_1_96180
    %_96191 = urem i64 %fv_6_96114, 16384
    %_96196 = urem i64 %_96191, 16384
    %_96201 = trunc i64 %_96196 to i14
    %_96203.zext = zext i14 %_96201 to i15 ; add one more bit for gep index as it is treated as signed value
    %_96203 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_2_96199, i64 0, i15 %_96203.zext
    %_96205 = load float, float* %_96203
    %fv_3_96210.zext = zext i14 %_96165 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_3_96210 = getelementptr inbounds [16384 x float], [16384 x float]* %_96208, i64 0, i15 %fv_3_96210.zext
    %_96219 = fadd float %_96205, %_96185
    store float %_96219, float* %fv_3_96210
    %fv_9_96225 = add nuw nsw i64 1, %fv_6_96114
    br label %head_96111

new_exit_96118:
    %fv_3_96125 = add nuw nsw i64 1, %_96098
    br label %head_96095

new_exit_96101:
    ret [128 x [16384 x float]]* %_96092

}


