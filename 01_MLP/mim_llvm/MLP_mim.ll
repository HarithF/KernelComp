
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [8192 x float]]* @MLP([16384 x [16384 x float]]* %_96453, [16384 x float]* %fv_12_96345, [128 x [16384 x float]]* %_96443, [16384 x [16384 x float]]* %_96355, [16384 x float]* %fv_8_96226, [8192 x [16384 x float]]* %_96236, [8192 x float]* %fv_2_96094) {
mimir_graph_feefcef2aa7cde9e_95929:
    %_95941i8 = call i8* @malloc(i64 8388608)
    %_95941 = bitcast i8* %_95941i8 to [128 x [16384 x float]]*
    br label %head_95946

head_95946:
    %_95949 = phi i64 [ 0, %mimir_graph_feefcef2aa7cde9e_95929 ], [ %fv_8_96413, %new_exit_96410 ]
    %_95954 = icmp ult i64 %_95949, 128
    %fv_4_96427 = trunc i64 %_95949 to i7
    %fv_10_96445.zext = zext i7 %fv_4_96427 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_10_96445 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96443, i64 0, i8 %fv_10_96445.zext
    %_96429.zext = zext i7 %fv_4_96427 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96429 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95941, i64 0, i8 %_96429.zext
    br i1 %_95954, label %new_body_96401, label %new_exit_95957

new_body_96401:
    br label %head_96404

head_96404:
    %_96407 = phi i64 [ 0, %new_body_96401 ], [ %fv_6_96437, %new_exit_96425 ]
    %_96409 = icmp ult i64 %_96407, 16384
    %_96430 = trunc i64 %_96407 to i14
    %fv_0_96455.zext = zext i14 %_96430 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96455 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]]* %_96453, i64 0, i15 %fv_0_96455.zext
    %fv_9_96432.zext = zext i14 %_96430 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_9_96432 = getelementptr inbounds [16384 x float], [16384 x float]* %_96429, i64 0, i15 %fv_9_96432.zext
    %fv_6_96437 = add nuw nsw i64 1, %_96407
    br i1 %_96409, label %new_body_96416, label %new_exit_96410

new_body_96416:
    br label %head_96419

head_96419:
    %_96422 = phi i64 [ 0, %new_body_96416 ], [ %fv_2_96462, %new_body_96440 ]
    %fv_8_96433 = phi float [ 0x0000000000000000, %new_body_96416 ], [ %_96468, %new_body_96440 ]
    %_96424 = icmp ult i64 %_96422, 16384
    br i1 %_96424, label %new_body_96440, label %new_exit_96425

new_body_96440:
    %_96446 = trunc i64 %_96422 to i14
    %fv_7_96448.zext = zext i14 %_96446 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_7_96448 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_10_96445, i64 0, i15 %fv_7_96448.zext
    %_96450 = load float, float* %fv_7_96448
    %fv_14_96457.zext = zext i14 %_96446 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_14_96457 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_0_96455, i64 0, i15 %fv_14_96457.zext
    %_96459 = load float, float* %fv_14_96457
    %fv_2_96462 = add nuw nsw i64 1, %_96422
    %_96466 = fmul fast float %_96450, %_96459
    %_96468 = fadd fast float %_96466, %fv_8_96433
    br label %head_96419

new_exit_96425:
    store float %fv_8_96433, float* %fv_9_96432
    br label %head_96404

new_exit_96410:
    %fv_8_96413 = add nuw nsw i64 1, %_95949
    br label %head_95946

new_exit_95957:
    %_95960i8 = call i8* @malloc(i64 8388608)
    %_95960 = bitcast i8* %_95960i8 to [128 x [16384 x float]]*
    br label %head_95963

head_95963:
    %_95966 = phi i64 [ 0, %new_exit_95957 ], [ %fv_9_96298, %new_exit_96295 ]
    %_95968 = icmp ult i64 %_95966, 128
    %fv_3_96312 = trunc i64 %_95966 to i7
    %fv_2_96329.zext = zext i7 %fv_3_96312 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_2_96329 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95941, i64 0, i8 %fv_2_96329.zext
    %_96314.zext = zext i7 %fv_3_96312 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96314 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95960, i64 0, i8 %_96314.zext
    br i1 %_95968, label %new_body_96286, label %new_exit_95969

new_body_96286:
    br label %head_96289

head_96289:
    %_96292 = phi i64 [ 0, %new_body_96286 ], [ %fv_4_96322, %new_exit_96310 ]
    %_96294 = icmp ult i64 %_96292, 16384
    %_96315 = trunc i64 %_96292 to i14
    %fv_9_96368.zext = zext i14 %_96315 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_9_96368 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]]* %_96355, i64 0, i15 %fv_9_96368.zext
    %fv_2_96317.zext = zext i14 %_96315 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_2_96317 = getelementptr inbounds [16384 x float], [16384 x float]* %_96314, i64 0, i15 %fv_2_96317.zext
    %fv_4_96322 = add nuw nsw i64 1, %_96292
    br i1 %_96294, label %new_body_96301, label %new_exit_96295

new_body_96301:
    br label %head_96304

head_96304:
    %fv_14_96307 = phi i64 [ 0, %new_body_96301 ], [ %fv_2_96375, %new_body_96325 ]
    %fv_6_96318 = phi float [ 0x0000000000000000, %new_body_96301 ], [ %_96386, %new_body_96325 ]
    %_96309 = icmp ult i64 %fv_14_96307, 16384
    br i1 %_96309, label %new_body_96325, label %new_exit_96310

new_body_96325:
    %_96330 = trunc i64 %fv_14_96307 to i14
    %fv_10_96332.zext = zext i14 %_96330 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_10_96332 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_2_96329, i64 0, i15 %fv_10_96332.zext
    %_96334 = load float, float* %fv_10_96332
    %_96337 = urem i64 %fv_14_96307, 16384
    %_96342 = urem i64 %_96337, 16384
    %_96347 = trunc i64 %_96342 to i14
    %_96349.zext = zext i14 %_96347 to i15 ; add one more bit for gep index as it is treated as signed value
    %_96349 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_12_96345, i64 0, i15 %_96349.zext
    %_96351 = load float, float* %_96349
    %fv_17_96370.zext = zext i14 %_96330 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_17_96370 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_9_96368, i64 0, i15 %fv_17_96370.zext
    %_96372 = load float, float* %fv_17_96370
    %fv_2_96375 = add nuw nsw i64 1, %fv_14_96307
    %_96379 = fadd fast float %_96351, %_96334
    %_96381 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96379)
    %_96384 = fmul fast float %_96381, %_96372
    %_96386 = fadd fast float %_96384, %fv_6_96318
    br label %head_96304

new_exit_96310:
    store float %fv_6_96318, float* %fv_2_96317
    br label %head_96289

new_exit_96295:
    %fv_9_96298 = add nuw nsw i64 1, %_95966
    br label %head_95963

new_exit_95969:
    %_95975i8 = call i8* @malloc(i64 4194304)
    %_95975 = bitcast i8* %_95975i8 to [128 x [8192 x float]]*
    br label %head_95978

head_95978:
    %_95981 = phi i64 [ 0, %new_exit_95969 ], [ %fv_7_96147, %new_exit_96144 ]
    %_95983 = icmp ult i64 %_95981, 128
    %fv_1_96164 = trunc i64 %_95981 to i7
    %fv_4_96195.zext = zext i7 %fv_1_96164 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_4_96195 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95960, i64 0, i8 %fv_4_96195.zext
    %_96166.zext = zext i7 %fv_1_96164 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96166 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]]* %_95975, i64 0, i8 %_96166.zext
    br i1 %_95983, label %new_body_96135, label %new_exit_95984

new_body_96135:
    br label %head_96138

head_96138:
    %_96141 = phi i64 [ 0, %new_body_96135 ], [ %fv_7_96174, %new_exit_96162 ]
    %_96143 = icmp ult i64 %_96141, 8192
    %_96167 = trunc i64 %_96141 to i13
    %fv_2_96249.zext = zext i13 %_96167 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_2_96249 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]]* %_96236, i64 0, i14 %fv_2_96249.zext
    %fv_8_96169.zext = zext i13 %_96167 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_8_96169 = getelementptr inbounds [8192 x float], [8192 x float]* %_96166, i64 0, i14 %fv_8_96169.zext
    %fv_7_96174 = add nuw nsw i64 1, %_96141
    br i1 %_96143, label %new_body_96150, label %new_exit_96144

new_body_96150:
    br label %head_96155

head_96155:
    %fv_6_96158 = phi i64 [ 0, %new_body_96150 ], [ %fv_7_96256, %new_body_96177 ]
    %fv_4_96170 = phi float [ 0x0000000000000000, %new_body_96150 ], [ %_96271, %new_body_96177 ]
    %_96161 = icmp ult i64 %fv_6_96158, 16384
    br i1 %_96161, label %new_body_96177, label %new_exit_96162

new_body_96177:
    %_96198 = trunc i64 %fv_6_96158 to i14
    %fv_0_96213.zext = zext i14 %_96198 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96213 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_4_96195, i64 0, i15 %fv_0_96213.zext
    %_96215 = load float, float* %fv_0_96213
    %_96218 = urem i64 %fv_6_96158, 16384
    %_96223 = urem i64 %_96218, 16384
    %_96228 = trunc i64 %_96223 to i14
    %_96230.zext = zext i14 %_96228 to i15 ; add one more bit for gep index as it is treated as signed value
    %_96230 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_8_96226, i64 0, i15 %_96230.zext
    %_96232 = load float, float* %_96230
    %fv_5_96251.zext = zext i14 %_96198 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_5_96251 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_2_96249, i64 0, i15 %fv_5_96251.zext
    %_96253 = load float, float* %fv_5_96251
    %fv_7_96256 = add nuw nsw i64 1, %fv_6_96158
    %_96260 = fadd fast float %_96232, %_96215
    %_96264 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96260)
    %_96269 = fmul fast float %_96264, %_96253
    %_96271 = fadd fast float %_96269, %fv_4_96170
    br label %head_96155

new_exit_96162:
    store float %fv_4_96170, float* %fv_8_96169
    br label %head_96138

new_exit_96144:
    %fv_7_96147 = add nuw nsw i64 1, %_95981
    br label %head_95978

new_exit_95984:
    %_95987i8 = call i8* @malloc(i64 4194304)
    %_95987 = bitcast i8* %_95987i8 to [128 x [8192 x float]]*
    br label %head_95990

head_95990:
    %_95993 = phi i64 [ 0, %new_exit_95984 ], [ %fv_5_96020, %new_exit_96013 ]
    %_95995 = icmp ult i64 %_95993, 128
    %fv_4_96042 = trunc i64 %_95993 to i7
    %fv_1_96057.zext = zext i7 %fv_4_96042 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_1_96057 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]]* %_95975, i64 0, i8 %fv_1_96057.zext
    %_96103.zext = zext i7 %fv_4_96042 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96103 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]]* %_95987, i64 0, i8 %_96103.zext
    br i1 %_95995, label %new_body_96003, label %new_exit_95996

new_body_96003:
    br label %head_96006

head_96006:
    %fv_9_96009 = phi i64 [ 0, %new_body_96003 ], [ %fv_4_96124, %new_body_96023 ]
    %_96012 = icmp ult i64 %fv_9_96009, 8192
    br i1 %_96012, label %new_body_96023, label %new_exit_96013

new_body_96023:
    %_96060 = trunc i64 %fv_9_96009 to i13
    %fv_5_96075.zext = zext i13 %_96060 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_5_96075 = getelementptr inbounds [8192 x float], [8192 x float]* %fv_1_96057, i64 0, i14 %fv_5_96075.zext
    %_96080 = load float, float* %fv_5_96075
    %_96086 = urem i64 %fv_9_96009, 8192
    %_96091 = urem i64 %_96086, 8192
    %_96096 = trunc i64 %_96091 to i13
    %_96098.zext = zext i13 %_96096 to i14 ; add one more bit for gep index as it is treated as signed value
    %_96098 = getelementptr inbounds [8192 x float], [8192 x float]* %fv_2_96094, i64 0, i14 %_96098.zext
    %_96100 = load float, float* %_96098
    %fv_3_96105.zext = zext i13 %_96060 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_3_96105 = getelementptr inbounds [8192 x float], [8192 x float]* %_96103, i64 0, i14 %fv_3_96105.zext
    %_96118 = fadd fast float %_96100, %_96080
    store float %_96118, float* %fv_3_96105
    %fv_4_96124 = add nuw nsw i64 1, %fv_9_96009
    br label %head_96006

new_exit_96013:
    %fv_5_96020 = add nuw nsw i64 1, %_95993
    br label %head_95990

new_exit_95996:
    ret [128 x [8192 x float]]* %_95987

}


