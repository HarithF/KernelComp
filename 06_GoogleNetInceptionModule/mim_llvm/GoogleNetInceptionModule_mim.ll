
declare float @llvm.maxnum.f32(float, float)
declare i64 @llvm.smax.i64(i64, i64)
declare i64 @llvm.smin.i64(i64, i64)
declare i8* @malloc(i64)


define  [10 x [512 x [224 x [224 x float]]]] addrspace(0)* @GoogleNetInceptionModule([192 x [480 x float]] addrspace(0)* %l_self_modules_branch1x1_parameters_weight__357469, [192 x float] addrspace(0)* %l_self_modules_branch1x1_parameters_bias__357339, [10 x [480 x [224 x [224 x float]]]] addrspace(0)* %l_x__354093, [96 x [480 x float]] addrspace(0)* %l_self_modules_branch3x3_modules_0_parameters_weight__357018, [96 x float] addrspace(0)* %l_self_modules_branch3x3_modules_0_parameters_bias__356888, [208 x [96 x [3 x [3 x float]]]] addrspace(0)* %l_self_modules_branch3x3_modules_1_parameters_weight__356242, [208 x float] addrspace(0)* %l_self_modules_branch3x3_modules_1_parameters_bias__356074, [16 x [480 x float]] addrspace(0)* %l_self_modules_branch5x5_modules_0_parameters_weight__355753, [16 x float] addrspace(0)* %l_self_modules_branch5x5_modules_0_parameters_bias__355625, [48 x [16 x [5 x [5 x float]]]] addrspace(0)* %l_self_modules_branch5x5_modules_1_parameters_weight__354702, [48 x float] addrspace(0)* %l_self_modules_branch5x5_modules_1_parameters_bias__354491, [64 x [480 x float]] addrspace(0)* %l_self_modules_branch_pool_modules_1_parameters_weight__353777, [64 x float] addrspace(0)* %l_self_modules_branch_pool_modules_1_parameters_bias__353610) {
mimir_graph_41b82d3a95d9b301_352600:
    %_352617i8 = call i8* @malloc(i64 385351680)
    %_352617 = bitcast i8* %_352617i8 to [10 x [192 x [224 x [224 x float]]]] addrspace(0)*
    %_352626i8 = call i8* @malloc(i64 896)
    %_352626 = bitcast i8* %_352626i8 to [224 x float] addrspace(0)*
    br label %head_352630

head_352630:
    %iv_352634 = phi i32 [ 0, %mimir_graph_41b82d3a95d9b301_352600 ], [ %fv_13_357257, %new_exit_357255 ]
    %_352639 = icmp ult i32 %iv_352634, 10
    %_357345 = trunc i32 %iv_352634 to i4
    %_357456.zext = zext i4 %_357345 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357456 = getelementptr inbounds [10 x [480 x [224 x [224 x float]]]], [10 x [480 x [224 x [224 x float]]]] addrspace(0)* %l_x__354093, i64 0, i5 %_357456.zext
    %_357346 = zext i4 %_357345 to i64
    %_357348 = mul i64 9633792, %_357346
    %_357410.zext = zext i4 %_357345 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357410 = getelementptr inbounds [10 x [192 x [224 x [224 x float]]]], [10 x [192 x [224 x [224 x float]]]] addrspace(0)* %_352617, i64 0, i5 %_357410.zext
    br i1 %_352639, label %new_body_357246, label %new_exit_352642

new_body_357246:
    br label %head_357249

head_357249:
    %iv_357252 = phi i32 [ 0, %new_body_357246 ], [ %fv_13_357272, %new_exit_357270 ]
    %_357254 = icmp ult i32 %iv_357252, 192
    %_357349 = trunc i32 %iv_357252 to i8
    %_357480.zext = zext i8 %_357349 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357480 = getelementptr inbounds [192 x [480 x float]], [192 x [480 x float]] addrspace(0)* %l_self_modules_branch1x1_parameters_weight__357469, i64 0, i9 %_357480.zext
    %_357350 = zext i8 %_357349 to i64
    %_357352 = mul i64 50176, %_357350
    %_357354 = add i64 %_357348, %_357352
    %_357412.zext = zext i8 %_357349 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357412 = getelementptr inbounds [192 x [224 x [224 x float]]], [192 x [224 x [224 x float]]] addrspace(0)* %_357410, i64 0, i9 %_357412.zext
    br i1 %_357254, label %new_body_357261, label %new_exit_357255

new_body_357261:
    br label %head_357264

head_357264:
    %iv_357267 = phi i32 [ 0, %new_body_357261 ], [ %fv_13_357287, %new_exit_357285 ]
    %_357269 = icmp ult i32 %iv_357267, 224
    %_357341 = trunc i32 %iv_357267 to i8
    %t_357342 = zext i8 %_357341 to i64
    %_357344 = mul i64 224, %t_357342
    %_357356 = add i64 %_357344, %_357354
    %_357414.zext = zext i8 %_357341 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357414 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_357412, i64 0, i9 %_357414.zext
    br i1 %_357269, label %new_body_357276, label %new_exit_357270

new_body_357276:
    br label %head_357279

head_357279:
    %iv_357282 = phi i32 [ 0, %new_body_357276 ], [ %fv_13_357322, %new_exit_357320 ]
    %_357284 = icmp ult i32 %iv_357282, 1
    br i1 %_357284, label %new_body_357291, label %new_exit_357285

new_body_357291:
    br label %head_357294, !llvm.loop !1001

head_357294:
    %iv_357297 = phi i32 [ 0, %new_body_357291 ], [ %fv_10_357507, %new_body_357505 ]
    %_357299 = icmp ult i32 %iv_357297, 224
    br i1 %_357299, label %new_body_357505, label %new_exit_357301

new_body_357505:
    %fv_10_357507 = add nuw nsw i32 1, %iv_357297
    %_357509 = trunc i32 %iv_357297 to i8
    %_357511.zext = zext i8 %_357509 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357511 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352626, i64 0, i9 %_357511.zext
    store float 0x0000000000000000, float addrspace(0)* %_357511
    br label %head_357294, !llvm.loop !1001

new_exit_357301:
    br label %head_357304

head_357304:
    %iv_357307 = phi i32 [ 0, %new_exit_357301 ], [ %fv_12_357441, %new_exit_357439 ]
    %_357309 = icmp ult i32 %iv_357307, 480
    %_357457 = trunc i32 %iv_357307 to i9
    %_357459.zext = zext i9 %_357457 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357459 = getelementptr inbounds [480 x [224 x [224 x float]]], [480 x [224 x [224 x float]]] addrspace(0)* %_357456, i64 0, i10 %_357459.zext
    %_357461.zext = zext i8 %_357341 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357461 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_357459, i64 0, i9 %_357461.zext
    %_357482.zext = zext i9 %_357457 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357482 = getelementptr inbounds [480 x float], [480 x float] addrspace(0)* %_357480, i64 0, i10 %_357482.zext
    br i1 %_357309, label %new_body_357429, label %new_exit_357310

new_body_357429:
    br label %head_357432, !llvm.loop !1002

head_357432:
    %iv_357435 = phi i32 [ 0, %new_body_357429 ], [ %fv_12_357447, %new_body_357445 ]
    %_357437 = icmp ult i32 %iv_357435, 224
    br i1 %_357437, label %new_body_357445, label %new_exit_357439

new_body_357445:
    %fv_12_357447 = add nuw nsw i32 1, %iv_357435
    %_357449 = trunc i32 %iv_357435 to i8
    %_357451.zext = zext i8 %_357449 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357451 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352626, i64 0, i9 %_357451.zext
    %_357453 = load float, float addrspace(0)* %_357451
    %_357463.zext = zext i8 %_357449 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357463 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_357461, i64 0, i9 %_357463.zext
    %_357465 = load float, float addrspace(0)* %_357463
    %_357484 = load float, float addrspace(0)* %_357482
    %_357489 = fmul fast float %_357465, %_357484
    %accn_357492 = fadd fast float %_357489, %_357453
    store float %accn_357492, float addrspace(0)* %_357451
    br label %head_357432, !llvm.loop !1002

new_exit_357439:
    %fv_12_357441 = add nuw nsw i32 1, %iv_357307
    br label %head_357304

new_exit_357310:
    br label %head_357313, !llvm.loop !1003

head_357313:
    %iv_357316 = phi i32 [ 0, %new_exit_357310 ], [ %fv_11_357328, %new_body_357326 ]
    %_357318 = icmp ult i32 %iv_357316, 224
    br i1 %_357318, label %new_body_357326, label %new_exit_357320

new_body_357326:
    %fv_11_357328 = add nuw nsw i32 1, %iv_357316
    %_357331 = trunc i32 %iv_357316 to i8
    %_357333.zext = zext i8 %_357331 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357333 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352626, i64 0, i9 %_357333.zext
    %_357335 = load float, float addrspace(0)* %_357333
    %_357340 = zext i8 %_357331 to i64
    %_357358 = add i64 %_357340, %_357356
    %_357361 = udiv i64 %_357358, 9633792
    %_357366 = urem i64 %_357361, 10
    %_357370 = udiv i64 %_357358, 50176
    %_357375 = urem i64 %_357370, 192
    %_357379 = udiv i64 %_357358, 224
    %_357384 = urem i64 %_357379, 224
    %_357387 = urem i64 %_357358, 224
    %_357392 = urem i64 %_357375, 192
    %_357394 = trunc i64 %_357392 to i8
    %_357405.zext = zext i8 %_357394 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357405 = getelementptr inbounds [192 x float], [192 x float] addrspace(0)* %l_self_modules_branch1x1_parameters_bias__357339, i64 0, i9 %_357405.zext
    %_357407 = load float, float addrspace(0)* %_357405
    %_357416.zext = zext i8 %_357331 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357416 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_357414, i64 0, i9 %_357416.zext
    %_357420 = fadd fast float %_357335, %_357407
    store float %_357420, float addrspace(0)* %_357416
    br label %head_357313, !llvm.loop !1003

new_exit_357320:
    %fv_13_357322 = add nuw nsw i32 1, %iv_357282
    br label %head_357279

new_exit_357285:
    %fv_13_357287 = add nuw nsw i32 1, %iv_357267
    br label %head_357264

new_exit_357270:
    %fv_13_357272 = add nuw nsw i32 1, %iv_357252
    br label %head_357249

new_exit_357255:
    %fv_13_357257 = add nuw nsw i32 1, %iv_352634
    br label %head_352630

new_exit_352642:
    %_352645i8 = call i8* @malloc(i64 385351680)
    %_352645 = bitcast i8* %_352645i8 to [10 x [192 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352648

head_352648:
    %iv_352651 = phi i32 [ 0, %new_exit_352642 ], [ %fv_6_357097, %new_exit_357095 ]
    %_352653 = icmp ult i32 %iv_352651, 10
    %_357143 = trunc i32 %iv_352651 to i4
    %_357144 = zext i4 %_357143 to i64
    %_357146 = mul i64 9633792, %_357144
    %_357218.zext = zext i4 %_357143 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357218 = getelementptr inbounds [10 x [192 x [224 x [224 x float]]]], [10 x [192 x [224 x [224 x float]]]] addrspace(0)* %_352645, i64 0, i5 %_357218.zext
    br i1 %_352653, label %new_body_357085, label %new_exit_352654

new_body_357085:
    br label %head_357088

head_357088:
    %iv_357091 = phi i32 [ 0, %new_body_357085 ], [ %fv_6_357112, %new_exit_357110 ]
    %_357094 = icmp ult i32 %iv_357091, 192
    %_357149 = trunc i32 %iv_357091 to i8
    %_357157 = zext i8 %_357149 to i64
    %_357159 = mul i64 50176, %_357157
    %_357161 = add i64 %_357146, %_357159
    %_357220.zext = zext i8 %_357149 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357220 = getelementptr inbounds [192 x [224 x [224 x float]]], [192 x [224 x [224 x float]]] addrspace(0)* %_357218, i64 0, i9 %_357220.zext
    br i1 %_357094, label %new_body_357101, label %new_exit_357095

new_body_357101:
    br label %head_357104

head_357104:
    %iv_357107 = phi i32 [ 0, %new_body_357101 ], [ %fv_6_357127, %new_exit_357125 ]
    %_357109 = icmp ult i32 %iv_357107, 224
    %_357138 = trunc i32 %iv_357107 to i8
    %_357139 = zext i8 %_357138 to i64
    %_357141 = mul i64 224, %_357139
    %_357163 = add i64 %_357141, %_357161
    %_357222.zext = zext i8 %_357138 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357222 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_357220, i64 0, i9 %_357222.zext
    br i1 %_357109, label %new_body_357116, label %new_exit_357110

new_body_357116:
    br label %head_357119

head_357119:
    %iv_357122 = phi i32 [ 0, %new_body_357116 ], [ %fv_6_357133, %new_body_357131 ]
    %_357124 = icmp ult i32 %iv_357122, 224
    br i1 %_357124, label %new_body_357131, label %new_exit_357125

new_body_357131:
    %fv_6_357133 = add nuw nsw i32 1, %iv_357122
    %_357136 = trunc i32 %iv_357122 to i8
    %_357137 = zext i8 %_357136 to i64
    %_357165 = add i64 %_357137, %_357163
    %_357168 = udiv i64 %_357165, 9633792
    %_357173 = urem i64 %_357168, 10
    %_357175 = trunc i64 %_357173 to i4
    %_357177.zext = zext i4 %_357175 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357177 = getelementptr inbounds [10 x [192 x [224 x [224 x float]]]], [10 x [192 x [224 x [224 x float]]]] addrspace(0)* %_352617, i64 0, i5 %_357177.zext
    %_357181 = udiv i64 %_357165, 50176
    %_357186 = urem i64 %_357181, 192
    %_357188 = trunc i64 %_357186 to i8
    %_357190.zext = zext i8 %_357188 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357190 = getelementptr inbounds [192 x [224 x [224 x float]]], [192 x [224 x [224 x float]]] addrspace(0)* %_357177, i64 0, i9 %_357190.zext
    %_357194 = udiv i64 %_357165, 224
    %_357199 = urem i64 %_357194, 224
    %_357201 = trunc i64 %_357199 to i8
    %_357203.zext = zext i8 %_357201 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357203 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_357190, i64 0, i9 %_357203.zext
    %_357206 = udiv i64 %_357165, 224
    %_357209 = urem i64 %_357165, 224
    %_357211 = trunc i64 %_357209 to i8
    %_357213.zext = zext i8 %_357211 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357213 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_357203, i64 0, i9 %_357213.zext
    %_357215 = load float, float addrspace(0)* %_357213
    %_357224.zext = zext i8 %_357136 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357224 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_357222, i64 0, i9 %_357224.zext
    store float %_357215, float addrspace(0)* %_357224
    br label %head_357119

new_exit_357125:
    %fv_6_357127 = add nuw nsw i32 1, %iv_357107
    br label %head_357104

new_exit_357110:
    %fv_6_357112 = add nuw nsw i32 1, %iv_357091
    br label %head_357088

new_exit_357095:
    %fv_6_357097 = add nuw nsw i32 1, %iv_352651
    br label %head_352648

new_exit_352654:
    %_352665i8 = call i8* @malloc(i64 192675840)
    %_352665 = bitcast i8* %_352665i8 to [10 x [96 x [224 x [224 x float]]]] addrspace(0)*
    %_352668i8 = call i8* @malloc(i64 896)
    %_352668 = bitcast i8* %_352668i8 to [224 x float] addrspace(0)*
    br label %head_352671

head_352671:
    %iv_352674 = phi i32 [ 0, %new_exit_352654 ], [ %fv_13_356806, %new_exit_356804 ]
    %_352676 = icmp ult i32 %iv_352674, 10
    %_356894 = trunc i32 %iv_352674 to i4
    %_357005.zext = zext i4 %_356894 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357005 = getelementptr inbounds [10 x [480 x [224 x [224 x float]]]], [10 x [480 x [224 x [224 x float]]]] addrspace(0)* %l_x__354093, i64 0, i5 %_357005.zext
    %_356895 = zext i4 %_356894 to i64
    %_356897 = mul i64 4816896, %_356895
    %_356959.zext = zext i4 %_356894 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356959 = getelementptr inbounds [10 x [96 x [224 x [224 x float]]]], [10 x [96 x [224 x [224 x float]]]] addrspace(0)* %_352665, i64 0, i5 %_356959.zext
    br i1 %_352676, label %new_body_356795, label %new_exit_352677

new_body_356795:
    br label %head_356798

head_356798:
    %iv_356801 = phi i32 [ 0, %new_body_356795 ], [ %fv_13_356821, %new_exit_356819 ]
    %_356803 = icmp ult i32 %iv_356801, 96
    %_356898 = trunc i32 %iv_356801 to i7
    %_357029.zext = zext i7 %_356898 to i8 ; add one more bit for gep index as it is treated as signed value
    %_357029 = getelementptr inbounds [96 x [480 x float]], [96 x [480 x float]] addrspace(0)* %l_self_modules_branch3x3_modules_0_parameters_weight__357018, i64 0, i8 %_357029.zext
    %_356899 = zext i7 %_356898 to i64
    %_356901 = mul i64 50176, %_356899
    %_356903 = add i64 %_356897, %_356901
    %_356961.zext = zext i7 %_356898 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356961 = getelementptr inbounds [96 x [224 x [224 x float]]], [96 x [224 x [224 x float]]] addrspace(0)* %_356959, i64 0, i8 %_356961.zext
    br i1 %_356803, label %new_body_356810, label %new_exit_356804

new_body_356810:
    br label %head_356813

head_356813:
    %iv_356816 = phi i32 [ 0, %new_body_356810 ], [ %fv_13_356836, %new_exit_356834 ]
    %_356818 = icmp ult i32 %iv_356816, 224
    %_356890 = trunc i32 %iv_356816 to i8
    %t_356891 = zext i8 %_356890 to i64
    %_356893 = mul i64 224, %t_356891
    %_356905 = add i64 %_356893, %_356903
    %_356963.zext = zext i8 %_356890 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356963 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_356961, i64 0, i9 %_356963.zext
    br i1 %_356818, label %new_body_356825, label %new_exit_356819

new_body_356825:
    br label %head_356828

head_356828:
    %iv_356831 = phi i32 [ 0, %new_body_356825 ], [ %fv_13_356871, %new_exit_356869 ]
    %_356833 = icmp ult i32 %iv_356831, 1
    br i1 %_356833, label %new_body_356840, label %new_exit_356834

new_body_356840:
    br label %head_356843, !llvm.loop !1004

head_356843:
    %iv_356846 = phi i32 [ 0, %new_body_356840 ], [ %fv_10_357056, %new_body_357054 ]
    %_356848 = icmp ult i32 %iv_356846, 224
    br i1 %_356848, label %new_body_357054, label %new_exit_356850

new_body_357054:
    %fv_10_357056 = add nuw nsw i32 1, %iv_356846
    %_357058 = trunc i32 %iv_356846 to i8
    %_357060.zext = zext i8 %_357058 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357060 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352668, i64 0, i9 %_357060.zext
    store float 0x0000000000000000, float addrspace(0)* %_357060
    br label %head_356843, !llvm.loop !1004

new_exit_356850:
    br label %head_356853

head_356853:
    %iv_356856 = phi i32 [ 0, %new_exit_356850 ], [ %fv_12_356990, %new_exit_356988 ]
    %_356858 = icmp ult i32 %iv_356856, 480
    %_357006 = trunc i32 %iv_356856 to i9
    %_357008.zext = zext i9 %_357006 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357008 = getelementptr inbounds [480 x [224 x [224 x float]]], [480 x [224 x [224 x float]]] addrspace(0)* %_357005, i64 0, i10 %_357008.zext
    %_357010.zext = zext i8 %_356890 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357010 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_357008, i64 0, i9 %_357010.zext
    %_357031.zext = zext i9 %_357006 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357031 = getelementptr inbounds [480 x float], [480 x float] addrspace(0)* %_357029, i64 0, i10 %_357031.zext
    br i1 %_356858, label %new_body_356978, label %new_exit_356859

new_body_356978:
    br label %head_356981, !llvm.loop !1005

head_356981:
    %iv_356984 = phi i32 [ 0, %new_body_356978 ], [ %fv_12_356996, %new_body_356994 ]
    %_356986 = icmp ult i32 %iv_356984, 224
    br i1 %_356986, label %new_body_356994, label %new_exit_356988

new_body_356994:
    %fv_12_356996 = add nuw nsw i32 1, %iv_356984
    %_356998 = trunc i32 %iv_356984 to i8
    %_357000.zext = zext i8 %_356998 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357000 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352668, i64 0, i9 %_357000.zext
    %_357002 = load float, float addrspace(0)* %_357000
    %_357012.zext = zext i8 %_356998 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357012 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_357010, i64 0, i9 %_357012.zext
    %_357014 = load float, float addrspace(0)* %_357012
    %_357033 = load float, float addrspace(0)* %_357031
    %_357038 = fmul fast float %_357014, %_357033
    %accn_357041 = fadd fast float %_357038, %_357002
    store float %accn_357041, float addrspace(0)* %_357000
    br label %head_356981, !llvm.loop !1005

new_exit_356988:
    %fv_12_356990 = add nuw nsw i32 1, %iv_356856
    br label %head_356853

new_exit_356859:
    br label %head_356862, !llvm.loop !1006

head_356862:
    %iv_356865 = phi i32 [ 0, %new_exit_356859 ], [ %fv_11_356877, %new_body_356875 ]
    %_356867 = icmp ult i32 %iv_356865, 224
    br i1 %_356867, label %new_body_356875, label %new_exit_356869

new_body_356875:
    %fv_11_356877 = add nuw nsw i32 1, %iv_356865
    %_356880 = trunc i32 %iv_356865 to i8
    %_356882.zext = zext i8 %_356880 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356882 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352668, i64 0, i9 %_356882.zext
    %_356884 = load float, float addrspace(0)* %_356882
    %_356889 = zext i8 %_356880 to i64
    %_356907 = add i64 %_356889, %_356905
    %_356910 = udiv i64 %_356907, 4816896
    %_356915 = urem i64 %_356910, 10
    %_356919 = udiv i64 %_356907, 50176
    %_356924 = urem i64 %_356919, 96
    %_356928 = udiv i64 %_356907, 224
    %_356933 = urem i64 %_356928, 224
    %_356936 = urem i64 %_356907, 224
    %_356941 = urem i64 %_356924, 96
    %_356943 = trunc i64 %_356941 to i7
    %_356954.zext = zext i7 %_356943 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356954 = getelementptr inbounds [96 x float], [96 x float] addrspace(0)* %l_self_modules_branch3x3_modules_0_parameters_bias__356888, i64 0, i8 %_356954.zext
    %_356956 = load float, float addrspace(0)* %_356954
    %_356965.zext = zext i8 %_356880 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356965 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_356963, i64 0, i9 %_356965.zext
    %_356969 = fadd fast float %_356884, %_356956
    store float %_356969, float addrspace(0)* %_356965
    br label %head_356862, !llvm.loop !1006

new_exit_356869:
    %fv_13_356871 = add nuw nsw i32 1, %iv_356831
    br label %head_356828

new_exit_356834:
    %fv_13_356836 = add nuw nsw i32 1, %iv_356816
    br label %head_356813

new_exit_356819:
    %fv_13_356821 = add nuw nsw i32 1, %iv_356801
    br label %head_356798

new_exit_356804:
    %fv_13_356806 = add nuw nsw i32 1, %iv_352674
    br label %head_352671

new_exit_352677:
    %_352680i8 = call i8* @malloc(i64 192675840)
    %_352680 = bitcast i8* %_352680i8 to [10 x [96 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352683

head_352683:
    %iv_352686 = phi i32 [ 0, %new_exit_352677 ], [ %fv_6_356648, %new_exit_356646 ]
    %_352688 = icmp ult i32 %iv_352686, 10
    %_356694 = trunc i32 %iv_352686 to i4
    %_356695 = zext i4 %_356694 to i64
    %_356697 = mul i64 4816896, %_356695
    %_356767.zext = zext i4 %_356694 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356767 = getelementptr inbounds [10 x [96 x [224 x [224 x float]]]], [10 x [96 x [224 x [224 x float]]]] addrspace(0)* %_352680, i64 0, i5 %_356767.zext
    br i1 %_352688, label %new_body_356637, label %new_exit_352689

new_body_356637:
    br label %head_356640

head_356640:
    %iv_356643 = phi i32 [ 0, %new_body_356637 ], [ %fv_6_356663, %new_exit_356661 ]
    %_356645 = icmp ult i32 %iv_356643, 96
    %_356698 = trunc i32 %iv_356643 to i7
    %_356706 = zext i7 %_356698 to i64
    %_356708 = mul i64 50176, %_356706
    %_356710 = add i64 %_356697, %_356708
    %_356769.zext = zext i7 %_356698 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356769 = getelementptr inbounds [96 x [224 x [224 x float]]], [96 x [224 x [224 x float]]] addrspace(0)* %_356767, i64 0, i8 %_356769.zext
    br i1 %_356645, label %new_body_356652, label %new_exit_356646

new_body_356652:
    br label %head_356655

head_356655:
    %iv_356658 = phi i32 [ 0, %new_body_356652 ], [ %fv_6_356678, %new_exit_356676 ]
    %_356660 = icmp ult i32 %iv_356658, 224
    %_356689 = trunc i32 %iv_356658 to i8
    %_356690 = zext i8 %_356689 to i64
    %_356692 = mul i64 224, %_356690
    %_356712 = add i64 %_356692, %_356710
    %_356771.zext = zext i8 %_356689 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356771 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_356769, i64 0, i9 %_356771.zext
    br i1 %_356660, label %new_body_356667, label %new_exit_356661

new_body_356667:
    br label %head_356670

head_356670:
    %iv_356673 = phi i32 [ 0, %new_body_356667 ], [ %fv_6_356684, %new_body_356682 ]
    %_356675 = icmp ult i32 %iv_356673, 224
    br i1 %_356675, label %new_body_356682, label %new_exit_356676

new_body_356682:
    %fv_6_356684 = add nuw nsw i32 1, %iv_356673
    %_356687 = trunc i32 %iv_356673 to i8
    %_356688 = zext i8 %_356687 to i64
    %_356714 = add i64 %_356688, %_356712
    %_356717 = udiv i64 %_356714, 4816896
    %_356722 = urem i64 %_356717, 10
    %_356724 = trunc i64 %_356722 to i4
    %_356726.zext = zext i4 %_356724 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356726 = getelementptr inbounds [10 x [96 x [224 x [224 x float]]]], [10 x [96 x [224 x [224 x float]]]] addrspace(0)* %_352665, i64 0, i5 %_356726.zext
    %_356730 = udiv i64 %_356714, 50176
    %_356735 = urem i64 %_356730, 96
    %_356737 = trunc i64 %_356735 to i7
    %_356739.zext = zext i7 %_356737 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356739 = getelementptr inbounds [96 x [224 x [224 x float]]], [96 x [224 x [224 x float]]] addrspace(0)* %_356726, i64 0, i8 %_356739.zext
    %_356743 = udiv i64 %_356714, 224
    %_356748 = urem i64 %_356743, 224
    %_356750 = trunc i64 %_356748 to i8
    %_356752.zext = zext i8 %_356750 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356752 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_356739, i64 0, i9 %_356752.zext
    %_356755 = udiv i64 %_356714, 224
    %_356758 = urem i64 %_356714, 224
    %_356760 = trunc i64 %_356758 to i8
    %_356762.zext = zext i8 %_356760 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356762 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_356752, i64 0, i9 %_356762.zext
    %_356764 = load float, float addrspace(0)* %_356762
    %_356773.zext = zext i8 %_356687 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356773 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_356771, i64 0, i9 %_356773.zext
    store float %_356764, float addrspace(0)* %_356773
    br label %head_356670

new_exit_356676:
    %fv_6_356678 = add nuw nsw i32 1, %iv_356658
    br label %head_356655

new_exit_356661:
    %fv_6_356663 = add nuw nsw i32 1, %iv_356643
    br label %head_356640

new_exit_356646:
    %fv_6_356648 = add nuw nsw i32 1, %iv_352686
    br label %head_352683

new_exit_352689:
    %_352706i8 = call i8* @malloc(i64 196131840)
    %_352706 = bitcast i8* %_352706i8 to [10 x [96 x [226 x [226 x float]]]] addrspace(0)*
    br label %head_352710

head_352710:
    %_352714 = phi i64 [ 0, %new_exit_352689 ], [ %fv_10_356518, %new_exit_356517 ]
    %fv_13_352719 = icmp ult i64 %_352714, 10
    br i1 %fv_13_352719, label %new_body_356486, label %new_exit_352720

new_body_356486:
    %fv_11_356491 = add nuw nsw i64 1, %_352714
    %_356495 = select i1 %fv_13_352719, i64 %_352714, i64 0
    %_356496 = trunc i64 %_356495 to i4
    %fv_14_356505.zext = zext i4 %_356496 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_14_356505 = getelementptr inbounds [10 x [96 x [224 x [224 x float]]]], [10 x [96 x [224 x [224 x float]]]] addrspace(0)* %_352680, i64 0, i5 %fv_14_356505.zext
    %fv_15_356506 = trunc i64 %_352714 to i4
    br label %head_356510

head_356510:
    %fv_12_356532 = phi i1 [ %fv_13_352719, %new_body_356486 ], [ %fv_12_356532, %new_exit_356531 ]
    %fv_10_356518 = phi i64 [ %fv_11_356491, %new_body_356486 ], [ %fv_10_356518, %new_exit_356531 ]
    %fv_13_356533 = phi [96 x [224 x [224 x float]]] addrspace(0)* [ %fv_14_356505, %new_body_356486 ], [ %fv_13_356533, %new_exit_356531 ]
    %_356513 = phi i64 [ 0, %new_body_356486 ], [ %fv_12_356536, %new_exit_356531 ]
    %fv_14_356534 = phi i4 [ %fv_15_356506, %new_body_356486 ], [ %fv_14_356534, %new_exit_356531 ]
    %fv_19_356516 = icmp ult i64 %_356513, 96
    %_356561 = select i1 %fv_19_356516, i64 %_356513, i64 0
    %_356564 = trunc i64 %_356561 to i7
    %fv_16_356575.zext = zext i7 %_356564 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_16_356575 = getelementptr inbounds [96 x [224 x [224 x float]]], [96 x [224 x [224 x float]]] addrspace(0)* %fv_13_356533, i64 0, i8 %fv_16_356575.zext
    %_356598.zext = zext i4 %fv_14_356534 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356598 = getelementptr inbounds [10 x [96 x [226 x [226 x float]]]], [10 x [96 x [226 x [226 x float]]]] addrspace(0)* %_352706, i64 0, i5 %_356598.zext
    %fv_18_356599 = trunc i64 %_356513 to i7
    %_356601.zext = zext i7 %fv_18_356599 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356601 = getelementptr inbounds [96 x [226 x [226 x float]]], [96 x [226 x [226 x float]]] addrspace(0)* %_356598, i64 0, i8 %_356601.zext
    %fv_19_356609 = and i1 %fv_19_356516, %fv_12_356532
    br i1 %fv_19_356516, label %new_body_356522, label %new_exit_356517

new_body_356522:
    br label %head_356525

head_356525:
    %_356528 = phi i64 [ 0, %new_body_356522 ], [ %fv_13_356551, %new_exit_356549 ]
    %_356530 = icmp ult i64 %_356528, 226
    %_356577 = add i64 18446744073709551615, %_356528
    %fv_23_356579 = icmp ult i64 %_356577, 224
    %_356581 = select i1 %fv_23_356579, i64 %_356577, i64 0
    %_356582 = trunc i64 %_356581 to i8
    %fv_18_356584.zext = zext i8 %_356582 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_18_356584 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %fv_16_356575, i64 0, i9 %fv_18_356584.zext
    %fv_21_356602 = trunc i64 %_356528 to i8
    %_356604.zext = zext i8 %fv_21_356602 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356604 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_356601, i64 0, i9 %_356604.zext
    %fv_23_356611 = and i1 %fv_23_356579, %fv_19_356609
    br i1 %_356530, label %new_body_356540, label %new_exit_356531

new_body_356540:
    br label %head_356543

head_356543:
    %_356546 = phi i64 [ 0, %new_body_356540 ], [ %fv_14_356557, %new_body_356555 ]
    %_356548 = icmp ult i64 %_356546, 226
    br i1 %_356548, label %new_body_356555, label %new_exit_356549

new_body_356555:
    %fv_14_356557 = add nuw nsw i64 1, %_356546
    %_356586 = add i64 18446744073709551615, %_356546
    %_356588 = icmp ult i64 %_356586, 224
    %_356590 = select i1 %_356588, i64 %_356586, i64 0
    %_356591 = trunc i64 %_356590 to i8
    %fv_20_356593.zext = zext i8 %_356591 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_20_356593 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %fv_18_356584, i64 0, i9 %fv_20_356593.zext
    %_356595 = load float, float addrspace(0)* %fv_20_356593
    %_356605 = trunc i64 %_356546 to i8
    %fv_24_356607.zext = zext i8 %_356605 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_24_356607 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356604, i64 0, i9 %fv_24_356607.zext
    %fv_27_356613 = and i1 %_356588, %fv_23_356611
    %_356616 = select i1 %fv_27_356613, float %_356595, float 0x0000000000000000
    store float %_356616, float addrspace(0)* %fv_24_356607
    br label %head_356543

new_exit_356549:
    %fv_13_356551 = add nuw nsw i64 1, %_356528
    br label %head_356525

new_exit_356531:
    %fv_12_356536 = add nuw nsw i64 1, %_356513
    br label %head_356510

new_exit_356517:
    br label %head_352710

new_exit_352720:
    %_352731i8 = call i8* @malloc(i64 417464320)
    %_352731 = bitcast i8* %_352731i8 to [10 x [208 x [224 x [224 x float]]]] addrspace(0)*
    %_352734i8 = call i8* @malloc(i64 896)
    %_352734 = bitcast i8* %_352734i8 to [224 x float] addrspace(0)*
    br label %head_352737

head_352737:
    %iv_352740 = phi i32 [ 0, %new_exit_352720 ], [ %fv_13_355991, %new_exit_355989 ]
    %_352742 = icmp ult i32 %iv_352740, 10
    %_356080 = trunc i32 %iv_352740 to i4
    %_356204.zext = zext i4 %_356080 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356204 = getelementptr inbounds [10 x [96 x [226 x [226 x float]]]], [10 x [96 x [226 x [226 x float]]]] addrspace(0)* %_352706, i64 0, i5 %_356204.zext
    %_356081 = zext i4 %_356080 to i64
    %_356083 = mul i64 10436608, %_356081
    %_356145.zext = zext i4 %_356080 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356145 = getelementptr inbounds [10 x [208 x [224 x [224 x float]]]], [10 x [208 x [224 x [224 x float]]]] addrspace(0)* %_352731, i64 0, i5 %_356145.zext
    br i1 %_352742, label %new_body_355980, label %new_exit_352743

new_body_355980:
    br label %head_355983

head_355983:
    %iv_355986 = phi i32 [ 0, %new_body_355980 ], [ %fv_13_356006, %new_exit_356004 ]
    %_355988 = icmp ult i32 %iv_355986, 208
    %_356084 = trunc i32 %iv_355986 to i8
    %_356253.zext = zext i8 %_356084 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356253 = getelementptr inbounds [208 x [96 x [3 x [3 x float]]]], [208 x [96 x [3 x [3 x float]]]] addrspace(0)* %l_self_modules_branch3x3_modules_1_parameters_weight__356242, i64 0, i9 %_356253.zext
    %_356085 = zext i8 %_356084 to i64
    %_356087 = mul i64 50176, %_356085
    %_356089 = add i64 %_356083, %_356087
    %_356147.zext = zext i8 %_356084 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356147 = getelementptr inbounds [208 x [224 x [224 x float]]], [208 x [224 x [224 x float]]] addrspace(0)* %_356145, i64 0, i9 %_356147.zext
    br i1 %_355988, label %new_body_355995, label %new_exit_355989

new_body_355995:
    br label %head_355998

head_355998:
    %iv_356001 = phi i32 [ 0, %new_body_355995 ], [ %fv_13_356021, %new_exit_356019 ]
    %_356003 = icmp ult i32 %iv_356001, 224
    %_356076 = trunc i32 %iv_356001 to i8
    %t_356077 = zext i8 %_356076 to i64
    %_356221 = trunc i64 %t_356077 to i8
    %_356315 = add i64 1, %t_356077
    %_356316 = trunc i64 %_356315 to i8
    %_356352 = add i64 2, %t_356077
    %_356353 = trunc i64 %_356352 to i8
    %_356079 = mul i64 224, %t_356077
    %_356091 = add i64 %_356079, %_356089
    %_356149.zext = zext i8 %_356076 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356149 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_356147, i64 0, i9 %_356149.zext
    br i1 %_356003, label %new_body_356010, label %new_exit_356004

new_body_356010:
    br label %head_356013

head_356013:
    %iv_356016 = phi i32 [ 0, %new_body_356010 ], [ %fv_13_356057, %new_exit_356055 ]
    %_356018 = icmp ult i32 %iv_356016, 1
    br i1 %_356018, label %new_body_356025, label %new_exit_356019

new_body_356025:
    br label %head_356028, !llvm.loop !1007

head_356028:
    %iv_356031 = phi i32 [ 0, %new_body_356025 ], [ %fv_10_356457, %new_body_356455 ]
    %_356033 = icmp ult i32 %iv_356031, 224
    br i1 %_356033, label %new_body_356455, label %new_exit_356035

new_body_356455:
    %fv_10_356457 = add nuw nsw i32 1, %iv_356031
    %_356459 = trunc i32 %iv_356031 to i8
    %_356461.zext = zext i8 %_356459 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356461 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352734, i64 0, i9 %_356461.zext
    store float 0x0000000000000000, float addrspace(0)* %_356461
    br label %head_356028, !llvm.loop !1007

new_exit_356035:
    br label %head_356038

head_356038:
    %iv_356041 = phi i32 [ 0, %new_exit_356035 ], [ %fv_12_356176, %new_exit_356174 ]
    %_356044 = icmp ult i32 %iv_356041, 96
    %_356207 = trunc i32 %iv_356041 to i7
    %_356220.zext = zext i7 %_356207 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356220 = getelementptr inbounds [96 x [226 x [226 x float]]], [96 x [226 x [226 x float]]] addrspace(0)* %_356204, i64 0, i8 %_356220.zext
    %_356223.zext = zext i8 %_356221 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356223 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_356220, i64 0, i9 %_356223.zext
    %_356264.zext = zext i7 %_356207 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356264 = getelementptr inbounds [96 x [3 x [3 x float]]], [96 x [3 x [3 x float]]] addrspace(0)* %_356253, i64 0, i8 %_356264.zext
    %_356275.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356275 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]] addrspace(0)* %_356264, i64 0, i3 %_356275.zext
    %_356284.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356284 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356275, i64 0, i3 %_356284.zext
    %_356297.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356297 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356275, i64 0, i3 %_356297.zext
    %_356310.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356310 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356275, i64 0, i3 %_356310.zext
    %_356318.zext = zext i8 %_356316 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356318 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_356220, i64 0, i9 %_356318.zext
    %_356325.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356325 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]] addrspace(0)* %_356264, i64 0, i3 %_356325.zext
    %_356327.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356327 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356325, i64 0, i3 %_356327.zext
    %_356337.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356337 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356325, i64 0, i3 %_356337.zext
    %_356347.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356347 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356325, i64 0, i3 %_356347.zext
    %_356355.zext = zext i8 %_356353 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356355 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_356220, i64 0, i9 %_356355.zext
    %_356362.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356362 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]] addrspace(0)* %_356264, i64 0, i3 %_356362.zext
    %_356364.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356364 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356362, i64 0, i3 %_356364.zext
    %_356374.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356374 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356362, i64 0, i3 %_356374.zext
    %_356384.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356384 = getelementptr inbounds [3 x float], [3 x float] addrspace(0)* %_356362, i64 0, i3 %_356384.zext
    br i1 %_356044, label %new_body_356164, label %new_exit_356045

new_body_356164:
    br label %head_356167, !llvm.loop !1008

head_356167:
    %iv_356170 = phi i32 [ 0, %new_body_356164 ], [ %fv_12_356182, %new_body_356180 ]
    %_356172 = icmp ult i32 %iv_356170, 224
    br i1 %_356172, label %new_body_356180, label %new_exit_356174

new_body_356180:
    %fv_12_356182 = add nuw nsw i32 1, %iv_356170
    %_356184 = trunc i32 %iv_356170 to i8
    %_356186.zext = zext i8 %_356184 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356186 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352734, i64 0, i9 %_356186.zext
    %_356188 = load float, float addrspace(0)* %_356186
    %_356224 = zext i8 %_356184 to i64
    %_356225 = trunc i64 %_356224 to i8
    %_356227.zext = zext i8 %_356225 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356227 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356223, i64 0, i9 %_356227.zext
    %_356229 = load float, float addrspace(0)* %_356227
    %_356286 = load float, float addrspace(0)* %_356284
    %_356289 = add i64 1, %_356224
    %_356290 = trunc i64 %_356289 to i8
    %_356292.zext = zext i8 %_356290 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356292 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356223, i64 0, i9 %_356292.zext
    %_356294 = load float, float addrspace(0)* %_356292
    %_356299 = load float, float addrspace(0)* %_356297
    %_356302 = add i64 2, %_356224
    %_356303 = trunc i64 %_356302 to i8
    %_356305.zext = zext i8 %_356303 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356305 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356223, i64 0, i9 %_356305.zext
    %_356307 = load float, float addrspace(0)* %_356305
    %_356312 = load float, float addrspace(0)* %_356310
    %_356320.zext = zext i8 %_356225 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356320 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356318, i64 0, i9 %_356320.zext
    %_356322 = load float, float addrspace(0)* %_356320
    %_356329 = load float, float addrspace(0)* %_356327
    %_356332.zext = zext i8 %_356290 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356332 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356318, i64 0, i9 %_356332.zext
    %_356334 = load float, float addrspace(0)* %_356332
    %_356339 = load float, float addrspace(0)* %_356337
    %_356342.zext = zext i8 %_356303 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356342 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356318, i64 0, i9 %_356342.zext
    %_356344 = load float, float addrspace(0)* %_356342
    %_356349 = load float, float addrspace(0)* %_356347
    %_356357.zext = zext i8 %_356225 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356357 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356355, i64 0, i9 %_356357.zext
    %_356359 = load float, float addrspace(0)* %_356357
    %_356366 = load float, float addrspace(0)* %_356364
    %_356369.zext = zext i8 %_356290 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356369 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356355, i64 0, i9 %_356369.zext
    %_356371 = load float, float addrspace(0)* %_356369
    %_356376 = load float, float addrspace(0)* %_356374
    %_356379.zext = zext i8 %_356303 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356379 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_356355, i64 0, i9 %_356379.zext
    %_356381 = load float, float addrspace(0)* %_356379
    %_356386 = load float, float addrspace(0)* %_356384
    %_356391 = fmul fast float %_356299, %_356294
    %_356395 = fmul fast float %_356286, %_356229
    %a2_356398 = fadd fast float %_356395, %_356188
    %a2_356400 = fadd fast float %_356391, %a2_356398
    %_356404 = fmul fast float %_356312, %_356307
    %a2_356406 = fadd fast float %a2_356400, %_356404
    %_356410 = fmul fast float %_356329, %_356322
    %a2_356412 = fadd fast float %a2_356406, %_356410
    %_356416 = fmul fast float %_356339, %_356334
    %a2_356418 = fadd fast float %a2_356412, %_356416
    %_356422 = fmul fast float %_356349, %_356344
    %a2_356424 = fadd fast float %a2_356418, %_356422
    %_356428 = fmul fast float %_356366, %_356359
    %a2_356430 = fadd fast float %a2_356424, %_356428
    %_356434 = fmul fast float %_356376, %_356371
    %a2_356436 = fadd fast float %a2_356430, %_356434
    %_356440 = fmul fast float %_356386, %_356381
    %accn_356442 = fadd fast float %a2_356436, %_356440
    store float %accn_356442, float addrspace(0)* %_356186
    br label %head_356167, !llvm.loop !1008

new_exit_356174:
    %fv_12_356176 = add nuw nsw i32 1, %iv_356041
    br label %head_356038

new_exit_356045:
    br label %head_356048, !llvm.loop !1009

head_356048:
    %iv_356051 = phi i32 [ 0, %new_exit_356045 ], [ %fv_11_356063, %new_body_356061 ]
    %_356053 = icmp ult i32 %iv_356051, 224
    br i1 %_356053, label %new_body_356061, label %new_exit_356055

new_body_356061:
    %fv_11_356063 = add nuw nsw i32 1, %iv_356051
    %_356066 = trunc i32 %iv_356051 to i8
    %_356068.zext = zext i8 %_356066 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356068 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352734, i64 0, i9 %_356068.zext
    %_356070 = load float, float addrspace(0)* %_356068
    %_356075 = zext i8 %_356066 to i64
    %_356093 = add i64 %_356075, %_356091
    %_356096 = udiv i64 %_356093, 10436608
    %_356101 = urem i64 %_356096, 10
    %_356105 = udiv i64 %_356093, 50176
    %_356110 = urem i64 %_356105, 208
    %_356114 = udiv i64 %_356093, 224
    %_356119 = urem i64 %_356114, 224
    %_356122 = urem i64 %_356093, 224
    %_356127 = urem i64 %_356110, 208
    %_356129 = trunc i64 %_356127 to i8
    %_356140.zext = zext i8 %_356129 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356140 = getelementptr inbounds [208 x float], [208 x float] addrspace(0)* %l_self_modules_branch3x3_modules_1_parameters_bias__356074, i64 0, i9 %_356140.zext
    %_356142 = load float, float addrspace(0)* %_356140
    %_356151.zext = zext i8 %_356066 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356151 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_356149, i64 0, i9 %_356151.zext
    %_356155 = fadd fast float %_356070, %_356142
    store float %_356155, float addrspace(0)* %_356151
    br label %head_356048, !llvm.loop !1009

new_exit_356055:
    %fv_13_356057 = add nuw nsw i32 1, %iv_356016
    br label %head_356013

new_exit_356019:
    %fv_13_356021 = add nuw nsw i32 1, %iv_356001
    br label %head_355998

new_exit_356004:
    %fv_13_356006 = add nuw nsw i32 1, %iv_355986
    br label %head_355983

new_exit_355989:
    %fv_13_355991 = add nuw nsw i32 1, %iv_352740
    br label %head_352737

new_exit_352743:
    %_352746i8 = call i8* @malloc(i64 417464320)
    %_352746 = bitcast i8* %_352746i8 to [10 x [208 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352749

head_352749:
    %iv_352752 = phi i32 [ 0, %new_exit_352743 ], [ %fv_6_355830, %new_exit_355828 ]
    %_352754 = icmp ult i32 %iv_352752, 10
    %_355876 = trunc i32 %iv_352752 to i4
    %_355877 = zext i4 %_355876 to i64
    %_355879 = mul i64 10436608, %_355877
    %_355952.zext = zext i4 %_355876 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355952 = getelementptr inbounds [10 x [208 x [224 x [224 x float]]]], [10 x [208 x [224 x [224 x float]]]] addrspace(0)* %_352746, i64 0, i5 %_355952.zext
    br i1 %_352754, label %new_body_355818, label %new_exit_352755

new_body_355818:
    br label %head_355821

head_355821:
    %iv_355824 = phi i32 [ 0, %new_body_355818 ], [ %fv_6_355845, %new_exit_355843 ]
    %_355827 = icmp ult i32 %iv_355824, 208
    %_355882 = trunc i32 %iv_355824 to i8
    %_355890 = zext i8 %_355882 to i64
    %_355892 = mul i64 50176, %_355890
    %_355894 = add i64 %_355879, %_355892
    %_355954.zext = zext i8 %_355882 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355954 = getelementptr inbounds [208 x [224 x [224 x float]]], [208 x [224 x [224 x float]]] addrspace(0)* %_355952, i64 0, i9 %_355954.zext
    br i1 %_355827, label %new_body_355834, label %new_exit_355828

new_body_355834:
    br label %head_355837

head_355837:
    %iv_355840 = phi i32 [ 0, %new_body_355834 ], [ %fv_6_355860, %new_exit_355858 ]
    %_355842 = icmp ult i32 %iv_355840, 224
    %_355871 = trunc i32 %iv_355840 to i8
    %_355872 = zext i8 %_355871 to i64
    %_355874 = mul i64 224, %_355872
    %_355896 = add i64 %_355874, %_355894
    %_355956.zext = zext i8 %_355871 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355956 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_355954, i64 0, i9 %_355956.zext
    br i1 %_355842, label %new_body_355849, label %new_exit_355843

new_body_355849:
    br label %head_355852

head_355852:
    %iv_355855 = phi i32 [ 0, %new_body_355849 ], [ %fv_6_355866, %new_body_355864 ]
    %_355857 = icmp ult i32 %iv_355855, 224
    br i1 %_355857, label %new_body_355864, label %new_exit_355858

new_body_355864:
    %fv_6_355866 = add nuw nsw i32 1, %iv_355855
    %_355869 = trunc i32 %iv_355855 to i8
    %_355870 = zext i8 %_355869 to i64
    %_355898 = add i64 %_355870, %_355896
    %_355901 = udiv i64 %_355898, 10436608
    %_355906 = urem i64 %_355901, 10
    %_355908 = trunc i64 %_355906 to i4
    %_355910.zext = zext i4 %_355908 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355910 = getelementptr inbounds [10 x [208 x [224 x [224 x float]]]], [10 x [208 x [224 x [224 x float]]]] addrspace(0)* %_352731, i64 0, i5 %_355910.zext
    %_355914 = udiv i64 %_355898, 50176
    %_355920 = urem i64 %_355914, 208
    %_355922 = trunc i64 %_355920 to i8
    %_355924.zext = zext i8 %_355922 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355924 = getelementptr inbounds [208 x [224 x [224 x float]]], [208 x [224 x [224 x float]]] addrspace(0)* %_355910, i64 0, i9 %_355924.zext
    %_355928 = udiv i64 %_355898, 224
    %_355933 = urem i64 %_355928, 224
    %_355935 = trunc i64 %_355933 to i8
    %_355937.zext = zext i8 %_355935 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355937 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_355924, i64 0, i9 %_355937.zext
    %_355940 = udiv i64 %_355898, 224
    %_355943 = urem i64 %_355898, 224
    %_355945 = trunc i64 %_355943 to i8
    %_355947.zext = zext i8 %_355945 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355947 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_355937, i64 0, i9 %_355947.zext
    %_355949 = load float, float addrspace(0)* %_355947
    %_355958.zext = zext i8 %_355869 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355958 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_355956, i64 0, i9 %_355958.zext
    store float %_355949, float addrspace(0)* %_355958
    br label %head_355852

new_exit_355858:
    %fv_6_355860 = add nuw nsw i32 1, %iv_355840
    br label %head_355837

new_exit_355843:
    %fv_6_355845 = add nuw nsw i32 1, %iv_355824
    br label %head_355821

new_exit_355828:
    %fv_6_355830 = add nuw nsw i32 1, %iv_352752
    br label %head_352749

new_exit_352755:
    %_352766i8 = call i8* @malloc(i64 32112640)
    %_352766 = bitcast i8* %_352766i8 to [10 x [16 x [224 x [224 x float]]]] addrspace(0)*
    %_352769i8 = call i8* @malloc(i64 896)
    %_352769 = bitcast i8* %_352769i8 to [224 x float] addrspace(0)*
    br label %head_352772

head_352772:
    %iv_352775 = phi i32 [ 0, %new_exit_352755 ], [ %fv_13_355543, %new_exit_355541 ]
    %_352777 = icmp ult i32 %iv_352775, 10
    %_355631 = trunc i32 %iv_352775 to i4
    %_355740.zext = zext i4 %_355631 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355740 = getelementptr inbounds [10 x [480 x [224 x [224 x float]]]], [10 x [480 x [224 x [224 x float]]]] addrspace(0)* %l_x__354093, i64 0, i5 %_355740.zext
    %_355632 = zext i4 %_355631 to i64
    %_355634 = mul i64 802816, %_355632
    %_355694.zext = zext i4 %_355631 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355694 = getelementptr inbounds [10 x [16 x [224 x [224 x float]]]], [10 x [16 x [224 x [224 x float]]]] addrspace(0)* %_352766, i64 0, i5 %_355694.zext
    br i1 %_352777, label %new_body_355532, label %new_exit_352778

new_body_355532:
    br label %head_355535

head_355535:
    %iv_355538 = phi i32 [ 0, %new_body_355532 ], [ %fv_13_355558, %new_exit_355556 ]
    %_355540 = icmp ult i32 %iv_355538, 16
    %_355635 = trunc i32 %iv_355538 to i4
    %_355762.zext = zext i4 %_355635 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355762 = getelementptr inbounds [16 x [480 x float]], [16 x [480 x float]] addrspace(0)* %l_self_modules_branch5x5_modules_0_parameters_weight__355753, i64 0, i5 %_355762.zext
    %_355636 = zext i4 %_355635 to i64
    %_355638 = mul i64 50176, %_355636
    %_355640 = add i64 %_355634, %_355638
    %_355696.zext = zext i4 %_355635 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355696 = getelementptr inbounds [16 x [224 x [224 x float]]], [16 x [224 x [224 x float]]] addrspace(0)* %_355694, i64 0, i5 %_355696.zext
    br i1 %_355540, label %new_body_355547, label %new_exit_355541

new_body_355547:
    br label %head_355550

head_355550:
    %iv_355553 = phi i32 [ 0, %new_body_355547 ], [ %fv_13_355573, %new_exit_355571 ]
    %_355555 = icmp ult i32 %iv_355553, 224
    %_355627 = trunc i32 %iv_355553 to i8
    %t_355628 = zext i8 %_355627 to i64
    %_355630 = mul i64 224, %t_355628
    %_355642 = add i64 %_355630, %_355640
    %_355698.zext = zext i8 %_355627 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355698 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_355696, i64 0, i9 %_355698.zext
    br i1 %_355555, label %new_body_355562, label %new_exit_355556

new_body_355562:
    br label %head_355565

head_355565:
    %iv_355568 = phi i32 [ 0, %new_body_355562 ], [ %fv_13_355608, %new_exit_355606 ]
    %_355570 = icmp ult i32 %iv_355568, 1
    br i1 %_355570, label %new_body_355577, label %new_exit_355571

new_body_355577:
    br label %head_355580, !llvm.loop !1010

head_355580:
    %iv_355583 = phi i32 [ 0, %new_body_355577 ], [ %fv_10_355789, %new_body_355787 ]
    %_355585 = icmp ult i32 %iv_355583, 224
    br i1 %_355585, label %new_body_355787, label %new_exit_355587

new_body_355787:
    %fv_10_355789 = add nuw nsw i32 1, %iv_355583
    %_355791 = trunc i32 %iv_355583 to i8
    %_355793.zext = zext i8 %_355791 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355793 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352769, i64 0, i9 %_355793.zext
    store float 0x0000000000000000, float addrspace(0)* %_355793
    br label %head_355580, !llvm.loop !1010

new_exit_355587:
    br label %head_355590

head_355590:
    %iv_355593 = phi i32 [ 0, %new_exit_355587 ], [ %fv_12_355725, %new_exit_355723 ]
    %_355595 = icmp ult i32 %iv_355593, 480
    %_355741 = trunc i32 %iv_355593 to i9
    %_355743.zext = zext i9 %_355741 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355743 = getelementptr inbounds [480 x [224 x [224 x float]]], [480 x [224 x [224 x float]]] addrspace(0)* %_355740, i64 0, i10 %_355743.zext
    %_355745.zext = zext i8 %_355627 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355745 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_355743, i64 0, i9 %_355745.zext
    %_355764.zext = zext i9 %_355741 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355764 = getelementptr inbounds [480 x float], [480 x float] addrspace(0)* %_355762, i64 0, i10 %_355764.zext
    br i1 %_355595, label %new_body_355713, label %new_exit_355596

new_body_355713:
    br label %head_355716, !llvm.loop !1011

head_355716:
    %iv_355719 = phi i32 [ 0, %new_body_355713 ], [ %fv_12_355731, %new_body_355729 ]
    %_355721 = icmp ult i32 %iv_355719, 224
    br i1 %_355721, label %new_body_355729, label %new_exit_355723

new_body_355729:
    %fv_12_355731 = add nuw nsw i32 1, %iv_355719
    %_355733 = trunc i32 %iv_355719 to i8
    %_355735.zext = zext i8 %_355733 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355735 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352769, i64 0, i9 %_355735.zext
    %_355737 = load float, float addrspace(0)* %_355735
    %_355747.zext = zext i8 %_355733 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355747 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_355745, i64 0, i9 %_355747.zext
    %_355749 = load float, float addrspace(0)* %_355747
    %_355766 = load float, float addrspace(0)* %_355764
    %_355771 = fmul fast float %_355749, %_355766
    %accn_355774 = fadd fast float %_355771, %_355737
    store float %accn_355774, float addrspace(0)* %_355735
    br label %head_355716, !llvm.loop !1011

new_exit_355723:
    %fv_12_355725 = add nuw nsw i32 1, %iv_355593
    br label %head_355590

new_exit_355596:
    br label %head_355599, !llvm.loop !1012

head_355599:
    %iv_355602 = phi i32 [ 0, %new_exit_355596 ], [ %fv_11_355614, %new_body_355612 ]
    %_355604 = icmp ult i32 %iv_355602, 224
    br i1 %_355604, label %new_body_355612, label %new_exit_355606

new_body_355612:
    %fv_11_355614 = add nuw nsw i32 1, %iv_355602
    %_355617 = trunc i32 %iv_355602 to i8
    %_355619.zext = zext i8 %_355617 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355619 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352769, i64 0, i9 %_355619.zext
    %_355621 = load float, float addrspace(0)* %_355619
    %_355626 = zext i8 %_355617 to i64
    %_355644 = add i64 %_355626, %_355642
    %_355647 = udiv i64 %_355644, 802816
    %_355652 = urem i64 %_355647, 10
    %_355656 = udiv i64 %_355644, 50176
    %_355661 = urem i64 %_355656, 16
    %_355665 = udiv i64 %_355644, 224
    %_355670 = urem i64 %_355665, 224
    %_355673 = urem i64 %_355644, 224
    %_355678 = urem i64 %_355661, 16
    %_355680 = trunc i64 %_355678 to i4
    %_355689.zext = zext i4 %_355680 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355689 = getelementptr inbounds [16 x float], [16 x float] addrspace(0)* %l_self_modules_branch5x5_modules_0_parameters_bias__355625, i64 0, i5 %_355689.zext
    %_355691 = load float, float addrspace(0)* %_355689
    %_355700.zext = zext i8 %_355617 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355700 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_355698, i64 0, i9 %_355700.zext
    %_355704 = fadd fast float %_355621, %_355691
    store float %_355704, float addrspace(0)* %_355700
    br label %head_355599, !llvm.loop !1012

new_exit_355606:
    %fv_13_355608 = add nuw nsw i32 1, %iv_355568
    br label %head_355565

new_exit_355571:
    %fv_13_355573 = add nuw nsw i32 1, %iv_355553
    br label %head_355550

new_exit_355556:
    %fv_13_355558 = add nuw nsw i32 1, %iv_355538
    br label %head_355535

new_exit_355541:
    %fv_13_355543 = add nuw nsw i32 1, %iv_352775
    br label %head_352772

new_exit_352778:
    %_352781i8 = call i8* @malloc(i64 32112640)
    %_352781 = bitcast i8* %_352781i8 to [10 x [16 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352784

head_352784:
    %iv_352787 = phi i32 [ 0, %new_exit_352778 ], [ %fv_6_355385, %new_exit_355383 ]
    %_352789 = icmp ult i32 %iv_352787, 10
    %_355431 = trunc i32 %iv_352787 to i4
    %_355432 = zext i4 %_355431 to i64
    %_355434 = mul i64 802816, %_355432
    %_355504.zext = zext i4 %_355431 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355504 = getelementptr inbounds [10 x [16 x [224 x [224 x float]]]], [10 x [16 x [224 x [224 x float]]]] addrspace(0)* %_352781, i64 0, i5 %_355504.zext
    br i1 %_352789, label %new_body_355374, label %new_exit_352790

new_body_355374:
    br label %head_355377

head_355377:
    %iv_355380 = phi i32 [ 0, %new_body_355374 ], [ %fv_6_355400, %new_exit_355398 ]
    %_355382 = icmp ult i32 %iv_355380, 16
    %_355435 = trunc i32 %iv_355380 to i4
    %_355443 = zext i4 %_355435 to i64
    %_355445 = mul i64 50176, %_355443
    %_355447 = add i64 %_355434, %_355445
    %_355506.zext = zext i4 %_355435 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355506 = getelementptr inbounds [16 x [224 x [224 x float]]], [16 x [224 x [224 x float]]] addrspace(0)* %_355504, i64 0, i5 %_355506.zext
    br i1 %_355382, label %new_body_355389, label %new_exit_355383

new_body_355389:
    br label %head_355392

head_355392:
    %iv_355395 = phi i32 [ 0, %new_body_355389 ], [ %fv_6_355415, %new_exit_355413 ]
    %_355397 = icmp ult i32 %iv_355395, 224
    %_355426 = trunc i32 %iv_355395 to i8
    %_355427 = zext i8 %_355426 to i64
    %_355429 = mul i64 224, %_355427
    %_355449 = add i64 %_355429, %_355447
    %_355508.zext = zext i8 %_355426 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355508 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_355506, i64 0, i9 %_355508.zext
    br i1 %_355397, label %new_body_355404, label %new_exit_355398

new_body_355404:
    br label %head_355407

head_355407:
    %iv_355410 = phi i32 [ 0, %new_body_355404 ], [ %fv_6_355421, %new_body_355419 ]
    %_355412 = icmp ult i32 %iv_355410, 224
    br i1 %_355412, label %new_body_355419, label %new_exit_355413

new_body_355419:
    %fv_6_355421 = add nuw nsw i32 1, %iv_355410
    %_355424 = trunc i32 %iv_355410 to i8
    %_355425 = zext i8 %_355424 to i64
    %_355451 = add i64 %_355425, %_355449
    %_355454 = udiv i64 %_355451, 802816
    %_355459 = urem i64 %_355454, 10
    %_355461 = trunc i64 %_355459 to i4
    %_355463.zext = zext i4 %_355461 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355463 = getelementptr inbounds [10 x [16 x [224 x [224 x float]]]], [10 x [16 x [224 x [224 x float]]]] addrspace(0)* %_352766, i64 0, i5 %_355463.zext
    %_355467 = udiv i64 %_355451, 50176
    %_355472 = urem i64 %_355467, 16
    %_355474 = trunc i64 %_355472 to i4
    %_355476.zext = zext i4 %_355474 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355476 = getelementptr inbounds [16 x [224 x [224 x float]]], [16 x [224 x [224 x float]]] addrspace(0)* %_355463, i64 0, i5 %_355476.zext
    %_355480 = udiv i64 %_355451, 224
    %_355485 = urem i64 %_355480, 224
    %_355487 = trunc i64 %_355485 to i8
    %_355489.zext = zext i8 %_355487 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355489 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_355476, i64 0, i9 %_355489.zext
    %_355492 = udiv i64 %_355451, 224
    %_355495 = urem i64 %_355451, 224
    %_355497 = trunc i64 %_355495 to i8
    %_355499.zext = zext i8 %_355497 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355499 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_355489, i64 0, i9 %_355499.zext
    %_355501 = load float, float addrspace(0)* %_355499
    %_355510.zext = zext i8 %_355424 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355510 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_355508, i64 0, i9 %_355510.zext
    store float %_355501, float addrspace(0)* %_355510
    br label %head_355407

new_exit_355413:
    %fv_6_355415 = add nuw nsw i32 1, %iv_355395
    br label %head_355392

new_exit_355398:
    %fv_6_355400 = add nuw nsw i32 1, %iv_355380
    br label %head_355377

new_exit_355383:
    %fv_6_355385 = add nuw nsw i32 1, %iv_352787
    br label %head_352784

new_exit_352790:
    %_352804i8 = call i8* @malloc(i64 33269760)
    %_352804 = bitcast i8* %_352804i8 to [10 x [16 x [228 x [228 x float]]]] addrspace(0)*
    br label %head_352807

head_352807:
    %_352810 = phi i64 [ 0, %new_exit_352790 ], [ %fv_7_355255, %new_exit_355254 ]
    %fv_10_352812 = icmp ult i64 %_352810, 10
    br i1 %fv_10_352812, label %new_body_355223, label %new_exit_352813

new_body_355223:
    %fv_8_355228 = add nuw nsw i64 1, %_352810
    %_355232 = select i1 %fv_10_352812, i64 %_352810, i64 0
    %_355233 = trunc i64 %_355232 to i4
    %fv_11_355242.zext = zext i4 %_355233 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_11_355242 = getelementptr inbounds [10 x [16 x [224 x [224 x float]]]], [10 x [16 x [224 x [224 x float]]]] addrspace(0)* %_352781, i64 0, i5 %fv_11_355242.zext
    %fv_12_355243 = trunc i64 %_352810 to i4
    br label %head_355247

head_355247:
    %fv_11_355272 = phi i4 [ %fv_12_355243, %new_body_355223 ], [ %fv_11_355272, %new_exit_355269 ]
    %fv_9_355270 = phi i1 [ %fv_10_352812, %new_body_355223 ], [ %fv_9_355270, %new_exit_355269 ]
    %fv_7_355255 = phi i64 [ %fv_8_355228, %new_body_355223 ], [ %fv_7_355255, %new_exit_355269 ]
    %fv_10_355271 = phi [16 x [224 x [224 x float]]] addrspace(0)* [ %fv_11_355242, %new_body_355223 ], [ %fv_10_355271, %new_exit_355269 ]
    %_355250 = phi i64 [ 0, %new_body_355223 ], [ %fv_9_355274, %new_exit_355269 ]
    %fv_16_355253 = icmp ult i64 %_355250, 16
    %_355299 = select i1 %fv_16_355253, i64 %_355250, i64 0
    %_355302 = trunc i64 %_355299 to i4
    %fv_13_355311.zext = zext i4 %_355302 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_13_355311 = getelementptr inbounds [16 x [224 x [224 x float]]], [16 x [224 x [224 x float]]] addrspace(0)* %fv_10_355271, i64 0, i5 %fv_13_355311.zext
    %_355335.zext = zext i4 %fv_11_355272 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355335 = getelementptr inbounds [10 x [16 x [228 x [228 x float]]]], [10 x [16 x [228 x [228 x float]]]] addrspace(0)* %_352804, i64 0, i5 %_355335.zext
    %fv_15_355336 = trunc i64 %_355250 to i4
    %_355338.zext = zext i4 %fv_15_355336 to i5 ; add one more bit for gep index as it is treated as signed value
    %_355338 = getelementptr inbounds [16 x [228 x [228 x float]]], [16 x [228 x [228 x float]]] addrspace(0)* %_355335, i64 0, i5 %_355338.zext
    %fv_16_355346 = and i1 %fv_16_355253, %fv_9_355270
    br i1 %fv_16_355253, label %new_body_355259, label %new_exit_355254

new_body_355259:
    br label %head_355262

head_355262:
    %_355265 = phi i64 [ 0, %new_body_355259 ], [ %fv_10_355289, %new_exit_355287 ]
    %_355268 = icmp ult i64 %_355265, 228
    %_355314 = add i64 18446744073709551614, %_355265
    %fv_20_355316 = icmp ult i64 %_355314, 224
    %_355318 = select i1 %fv_20_355316, i64 %_355314, i64 0
    %_355319 = trunc i64 %_355318 to i8
    %fv_15_355321.zext = zext i8 %_355319 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_15_355321 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %fv_13_355311, i64 0, i9 %fv_15_355321.zext
    %fv_18_355339 = trunc i64 %_355265 to i8
    %_355341.zext = zext i8 %fv_18_355339 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355341 = getelementptr inbounds [228 x [228 x float]], [228 x [228 x float]] addrspace(0)* %_355338, i64 0, i9 %_355341.zext
    %fv_20_355348 = and i1 %fv_20_355316, %fv_16_355346
    br i1 %_355268, label %new_body_355278, label %new_exit_355269

new_body_355278:
    br label %head_355281

head_355281:
    %_355284 = phi i64 [ 0, %new_body_355278 ], [ %fv_11_355295, %new_body_355293 ]
    %_355286 = icmp ult i64 %_355284, 228
    br i1 %_355286, label %new_body_355293, label %new_exit_355287

new_body_355293:
    %fv_11_355295 = add nuw nsw i64 1, %_355284
    %_355323 = add i64 18446744073709551614, %_355284
    %_355325 = icmp ult i64 %_355323, 224
    %_355327 = select i1 %_355325, i64 %_355323, i64 0
    %_355328 = trunc i64 %_355327 to i8
    %fv_17_355330.zext = zext i8 %_355328 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_17_355330 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %fv_15_355321, i64 0, i9 %fv_17_355330.zext
    %_355332 = load float, float addrspace(0)* %fv_17_355330
    %_355342 = trunc i64 %_355284 to i8
    %fv_21_355344.zext = zext i8 %_355342 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_21_355344 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_355341, i64 0, i9 %fv_21_355344.zext
    %fv_24_355350 = and i1 %_355325, %fv_20_355348
    %_355353 = select i1 %fv_24_355350, float %_355332, float 0x0000000000000000
    store float %_355353, float addrspace(0)* %fv_21_355344
    br label %head_355281

new_exit_355287:
    %fv_10_355289 = add nuw nsw i64 1, %_355265
    br label %head_355262

new_exit_355269:
    %fv_9_355274 = add nuw nsw i64 1, %_355250
    br label %head_355247

new_exit_355254:
    br label %head_352807

new_exit_352813:
    %_352824i8 = call i8* @malloc(i64 96337920)
    %_352824 = bitcast i8* %_352824i8 to [10 x [48 x [224 x [224 x float]]]] addrspace(0)*
    %_352827i8 = call i8* @malloc(i64 896)
    %_352827 = bitcast i8* %_352827i8 to [224 x float] addrspace(0)*
    br label %head_352830

head_352830:
    %iv_352833 = phi i32 [ 0, %new_exit_352813 ], [ %fv_13_354408, %new_exit_354406 ]
    %_352835 = icmp ult i32 %iv_352833, 10
    %_354497 = trunc i32 %iv_352833 to i4
    %_354628.zext = zext i4 %_354497 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354628 = getelementptr inbounds [10 x [16 x [228 x [228 x float]]]], [10 x [16 x [228 x [228 x float]]]] addrspace(0)* %_352804, i64 0, i5 %_354628.zext
    %_354498 = zext i4 %_354497 to i64
    %_354500 = mul i64 2408448, %_354498
    %_354562.zext = zext i4 %_354497 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354562 = getelementptr inbounds [10 x [48 x [224 x [224 x float]]]], [10 x [48 x [224 x [224 x float]]]] addrspace(0)* %_352824, i64 0, i5 %_354562.zext
    br i1 %_352835, label %new_body_354397, label %new_exit_352836

new_body_354397:
    br label %head_354400

head_354400:
    %iv_354403 = phi i32 [ 0, %new_body_354397 ], [ %fv_13_354423, %new_exit_354421 ]
    %_354405 = icmp ult i32 %iv_354403, 48
    %_354501 = trunc i32 %iv_354403 to i6
    %_354713.zext = zext i6 %_354501 to i7 ; add one more bit for gep index as it is treated as signed value
    %_354713 = getelementptr inbounds [48 x [16 x [5 x [5 x float]]]], [48 x [16 x [5 x [5 x float]]]] addrspace(0)* %l_self_modules_branch5x5_modules_1_parameters_weight__354702, i64 0, i7 %_354713.zext
    %_354502 = zext i6 %_354501 to i64
    %_354504 = mul i64 50176, %_354502
    %_354506 = add i64 %_354500, %_354504
    %_354564.zext = zext i6 %_354501 to i7 ; add one more bit for gep index as it is treated as signed value
    %_354564 = getelementptr inbounds [48 x [224 x [224 x float]]], [48 x [224 x [224 x float]]] addrspace(0)* %_354562, i64 0, i7 %_354564.zext
    br i1 %_354405, label %new_body_354412, label %new_exit_354406

new_body_354412:
    br label %head_354415

head_354415:
    %iv_354418 = phi i32 [ 0, %new_body_354412 ], [ %fv_13_354438, %new_exit_354436 ]
    %_354420 = icmp ult i32 %iv_354418, 224
    %_354493 = trunc i32 %iv_354418 to i8
    %t_354494 = zext i8 %_354493 to i64
    %_354661 = trunc i64 %t_354494 to i8
    %_354802 = add i64 1, %t_354494
    %_354803 = trunc i64 %_354802 to i8
    %_354859 = add i64 2, %t_354494
    %_354860 = trunc i64 %_354859 to i8
    %_354916 = add i64 3, %t_354494
    %_354917 = trunc i64 %_354916 to i8
    %_354973 = add i64 4, %t_354494
    %_354974 = trunc i64 %_354973 to i8
    %_354496 = mul i64 224, %t_354494
    %_354508 = add i64 %_354496, %_354506
    %_354566.zext = zext i8 %_354493 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354566 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_354564, i64 0, i9 %_354566.zext
    br i1 %_354420, label %new_body_354427, label %new_exit_354421

new_body_354427:
    br label %head_354430

head_354430:
    %iv_354433 = phi i32 [ 0, %new_body_354427 ], [ %fv_13_354474, %new_exit_354472 ]
    %_354435 = icmp ult i32 %iv_354433, 1
    br i1 %_354435, label %new_body_354442, label %new_exit_354436

new_body_354442:
    br label %head_354445, !llvm.loop !1013

head_354445:
    %iv_354448 = phi i32 [ 0, %new_body_354442 ], [ %fv_10_355194, %new_body_355192 ]
    %_354450 = icmp ult i32 %iv_354448, 224
    br i1 %_354450, label %new_body_355192, label %new_exit_354452

new_body_355192:
    %fv_10_355194 = add nuw nsw i32 1, %iv_354448
    %_355196 = trunc i32 %iv_354448 to i8
    %_355198.zext = zext i8 %_355196 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355198 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352827, i64 0, i9 %_355198.zext
    store float 0x0000000000000000, float addrspace(0)* %_355198
    br label %head_354445, !llvm.loop !1013

new_exit_354452:
    br label %head_354455

head_354455:
    %iv_354458 = phi i32 [ 0, %new_exit_354452 ], [ %fv_12_354593, %new_exit_354591 ]
    %_354461 = icmp ult i32 %iv_354458, 16
    %_354631 = trunc i32 %iv_354458 to i4
    %_354658.zext = zext i4 %_354631 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354658 = getelementptr inbounds [16 x [228 x [228 x float]]], [16 x [228 x [228 x float]]] addrspace(0)* %_354628, i64 0, i5 %_354658.zext
    %_354674.zext = zext i8 %_354661 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354674 = getelementptr inbounds [228 x [228 x float]], [228 x [228 x float]] addrspace(0)* %_354658, i64 0, i9 %_354674.zext
    %_354722.zext = zext i4 %_354631 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354722 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_354713, i64 0, i5 %_354722.zext
    %_354734.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354734 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_354722, i64 0, i4 %_354734.zext
    %_354743.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354743 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354734, i64 0, i4 %_354743.zext
    %_354756.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354756 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354734, i64 0, i4 %_354756.zext
    %_354769.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354769 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354734, i64 0, i4 %_354769.zext
    %_354783.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354783 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354734, i64 0, i4 %_354783.zext
    %_354797.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354797 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354734, i64 0, i4 %_354797.zext
    %_354805.zext = zext i8 %_354803 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354805 = getelementptr inbounds [228 x [228 x float]], [228 x [228 x float]] addrspace(0)* %_354658, i64 0, i9 %_354805.zext
    %_354812.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354812 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_354722, i64 0, i4 %_354812.zext
    %_354814.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354814 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354812, i64 0, i4 %_354814.zext
    %_354824.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354824 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354812, i64 0, i4 %_354824.zext
    %_354834.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354834 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354812, i64 0, i4 %_354834.zext
    %_354844.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354844 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354812, i64 0, i4 %_354844.zext
    %_354854.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354854 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354812, i64 0, i4 %_354854.zext
    %_354862.zext = zext i8 %_354860 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354862 = getelementptr inbounds [228 x [228 x float]], [228 x [228 x float]] addrspace(0)* %_354658, i64 0, i9 %_354862.zext
    %_354869.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354869 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_354722, i64 0, i4 %_354869.zext
    %_354871.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354871 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354869, i64 0, i4 %_354871.zext
    %_354881.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354881 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354869, i64 0, i4 %_354881.zext
    %_354891.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354891 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354869, i64 0, i4 %_354891.zext
    %_354901.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354901 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354869, i64 0, i4 %_354901.zext
    %_354911.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354911 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354869, i64 0, i4 %_354911.zext
    %_354919.zext = zext i8 %_354917 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354919 = getelementptr inbounds [228 x [228 x float]], [228 x [228 x float]] addrspace(0)* %_354658, i64 0, i9 %_354919.zext
    %_354926.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354926 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_354722, i64 0, i4 %_354926.zext
    %_354928.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354928 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354926, i64 0, i4 %_354928.zext
    %_354938.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354938 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354926, i64 0, i4 %_354938.zext
    %_354948.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354948 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354926, i64 0, i4 %_354948.zext
    %_354958.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354958 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354926, i64 0, i4 %_354958.zext
    %_354968.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354968 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354926, i64 0, i4 %_354968.zext
    %_354976.zext = zext i8 %_354974 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354976 = getelementptr inbounds [228 x [228 x float]], [228 x [228 x float]] addrspace(0)* %_354658, i64 0, i9 %_354976.zext
    %_354983.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354983 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_354722, i64 0, i4 %_354983.zext
    %_354985.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354985 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354983, i64 0, i4 %_354985.zext
    %_354995.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_354995 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354983, i64 0, i4 %_354995.zext
    %_355005.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_355005 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354983, i64 0, i4 %_355005.zext
    %_355015.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_355015 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354983, i64 0, i4 %_355015.zext
    %_355025.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_355025 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_354983, i64 0, i4 %_355025.zext
    br i1 %_354461, label %new_body_354581, label %new_exit_354462

new_body_354581:
    br label %head_354584, !llvm.loop !1014

head_354584:
    %iv_354587 = phi i32 [ 0, %new_body_354581 ], [ %fv_12_354599, %new_body_354597 ]
    %_354589 = icmp ult i32 %iv_354587, 224
    br i1 %_354589, label %new_body_354597, label %new_exit_354591

new_body_354597:
    %fv_12_354599 = add nuw nsw i32 1, %iv_354587
    %_354601 = trunc i32 %iv_354587 to i8
    %_354603.zext = zext i8 %_354601 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354603 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352827, i64 0, i9 %_354603.zext
    %_354605 = load float, float addrspace(0)* %_354603
    %_354675 = zext i8 %_354601 to i64
    %_354676 = trunc i64 %_354675 to i8
    %_354687.zext = zext i8 %_354676 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354687 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354674, i64 0, i9 %_354687.zext
    %_354689 = load float, float addrspace(0)* %_354687
    %_354745 = load float, float addrspace(0)* %_354743
    %_354748 = add i64 1, %_354675
    %_354749 = trunc i64 %_354748 to i8
    %_354751.zext = zext i8 %_354749 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354751 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354674, i64 0, i9 %_354751.zext
    %_354753 = load float, float addrspace(0)* %_354751
    %_354758 = load float, float addrspace(0)* %_354756
    %_354761 = add i64 2, %_354675
    %_354762 = trunc i64 %_354761 to i8
    %_354764.zext = zext i8 %_354762 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354764 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354674, i64 0, i9 %_354764.zext
    %_354766 = load float, float addrspace(0)* %_354764
    %_354771 = load float, float addrspace(0)* %_354769
    %_354775 = add i64 3, %_354675
    %_354776 = trunc i64 %_354775 to i8
    %_354778.zext = zext i8 %_354776 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354778 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354674, i64 0, i9 %_354778.zext
    %_354780 = load float, float addrspace(0)* %_354778
    %_354785 = load float, float addrspace(0)* %_354783
    %_354789 = add i64 4, %_354675
    %_354790 = trunc i64 %_354789 to i8
    %_354792.zext = zext i8 %_354790 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354792 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354674, i64 0, i9 %_354792.zext
    %_354794 = load float, float addrspace(0)* %_354792
    %_354799 = load float, float addrspace(0)* %_354797
    %_354807.zext = zext i8 %_354676 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354807 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354805, i64 0, i9 %_354807.zext
    %_354809 = load float, float addrspace(0)* %_354807
    %_354816 = load float, float addrspace(0)* %_354814
    %_354819.zext = zext i8 %_354749 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354819 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354805, i64 0, i9 %_354819.zext
    %_354821 = load float, float addrspace(0)* %_354819
    %_354826 = load float, float addrspace(0)* %_354824
    %_354829.zext = zext i8 %_354762 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354829 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354805, i64 0, i9 %_354829.zext
    %_354831 = load float, float addrspace(0)* %_354829
    %_354836 = load float, float addrspace(0)* %_354834
    %_354839.zext = zext i8 %_354776 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354839 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354805, i64 0, i9 %_354839.zext
    %_354841 = load float, float addrspace(0)* %_354839
    %_354846 = load float, float addrspace(0)* %_354844
    %_354849.zext = zext i8 %_354790 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354849 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354805, i64 0, i9 %_354849.zext
    %_354851 = load float, float addrspace(0)* %_354849
    %_354856 = load float, float addrspace(0)* %_354854
    %_354864.zext = zext i8 %_354676 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354864 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354862, i64 0, i9 %_354864.zext
    %_354866 = load float, float addrspace(0)* %_354864
    %_354873 = load float, float addrspace(0)* %_354871
    %_354876.zext = zext i8 %_354749 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354876 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354862, i64 0, i9 %_354876.zext
    %_354878 = load float, float addrspace(0)* %_354876
    %_354883 = load float, float addrspace(0)* %_354881
    %_354886.zext = zext i8 %_354762 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354886 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354862, i64 0, i9 %_354886.zext
    %_354888 = load float, float addrspace(0)* %_354886
    %_354893 = load float, float addrspace(0)* %_354891
    %_354896.zext = zext i8 %_354776 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354896 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354862, i64 0, i9 %_354896.zext
    %_354898 = load float, float addrspace(0)* %_354896
    %_354903 = load float, float addrspace(0)* %_354901
    %_354906.zext = zext i8 %_354790 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354906 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354862, i64 0, i9 %_354906.zext
    %_354908 = load float, float addrspace(0)* %_354906
    %_354913 = load float, float addrspace(0)* %_354911
    %_354921.zext = zext i8 %_354676 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354921 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354919, i64 0, i9 %_354921.zext
    %_354923 = load float, float addrspace(0)* %_354921
    %_354930 = load float, float addrspace(0)* %_354928
    %_354933.zext = zext i8 %_354749 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354933 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354919, i64 0, i9 %_354933.zext
    %_354935 = load float, float addrspace(0)* %_354933
    %_354940 = load float, float addrspace(0)* %_354938
    %_354943.zext = zext i8 %_354762 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354943 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354919, i64 0, i9 %_354943.zext
    %_354945 = load float, float addrspace(0)* %_354943
    %_354950 = load float, float addrspace(0)* %_354948
    %_354953.zext = zext i8 %_354776 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354953 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354919, i64 0, i9 %_354953.zext
    %_354955 = load float, float addrspace(0)* %_354953
    %_354960 = load float, float addrspace(0)* %_354958
    %_354963.zext = zext i8 %_354790 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354963 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354919, i64 0, i9 %_354963.zext
    %_354965 = load float, float addrspace(0)* %_354963
    %_354970 = load float, float addrspace(0)* %_354968
    %_354978.zext = zext i8 %_354676 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354978 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354976, i64 0, i9 %_354978.zext
    %_354980 = load float, float addrspace(0)* %_354978
    %_354987 = load float, float addrspace(0)* %_354985
    %_354990.zext = zext i8 %_354749 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354990 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354976, i64 0, i9 %_354990.zext
    %_354992 = load float, float addrspace(0)* %_354990
    %_354997 = load float, float addrspace(0)* %_354995
    %_355000.zext = zext i8 %_354762 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355000 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354976, i64 0, i9 %_355000.zext
    %_355002 = load float, float addrspace(0)* %_355000
    %_355007 = load float, float addrspace(0)* %_355005
    %_355010.zext = zext i8 %_354776 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355010 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354976, i64 0, i9 %_355010.zext
    %_355012 = load float, float addrspace(0)* %_355010
    %_355017 = load float, float addrspace(0)* %_355015
    %_355020.zext = zext i8 %_354790 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355020 = getelementptr inbounds [228 x float], [228 x float] addrspace(0)* %_354976, i64 0, i9 %_355020.zext
    %_355022 = load float, float addrspace(0)* %_355020
    %_355027 = load float, float addrspace(0)* %_355025
    %_355032 = fmul fast float %_354758, %_354753
    %_355036 = fmul fast float %_354745, %_354689
    %a2_355039 = fadd fast float %_355036, %_354605
    %a2_355041 = fadd fast float %_355032, %a2_355039
    %_355045 = fmul fast float %_354771, %_354766
    %a2_355047 = fadd fast float %a2_355041, %_355045
    %_355051 = fmul fast float %_354785, %_354780
    %a2_355053 = fadd fast float %a2_355047, %_355051
    %_355057 = fmul fast float %_354799, %_354794
    %a2_355059 = fadd fast float %a2_355053, %_355057
    %_355063 = fmul fast float %_354816, %_354809
    %a2_355065 = fadd fast float %a2_355059, %_355063
    %_355069 = fmul fast float %_354826, %_354821
    %a2_355071 = fadd fast float %a2_355065, %_355069
    %_355075 = fmul fast float %_354836, %_354831
    %a2_355077 = fadd fast float %a2_355071, %_355075
    %_355081 = fmul fast float %_354846, %_354841
    %a2_355083 = fadd fast float %a2_355077, %_355081
    %_355087 = fmul fast float %_354856, %_354851
    %a2_355089 = fadd fast float %a2_355083, %_355087
    %_355093 = fmul fast float %_354873, %_354866
    %a2_355095 = fadd fast float %a2_355089, %_355093
    %_355099 = fmul fast float %_354883, %_354878
    %a2_355101 = fadd fast float %a2_355095, %_355099
    %_355105 = fmul fast float %_354893, %_354888
    %a2_355107 = fadd fast float %a2_355101, %_355105
    %_355111 = fmul fast float %_354903, %_354898
    %a2_355113 = fadd fast float %a2_355107, %_355111
    %_355117 = fmul fast float %_354913, %_354908
    %a2_355119 = fadd fast float %a2_355113, %_355117
    %_355123 = fmul fast float %_354930, %_354923
    %a2_355125 = fadd fast float %a2_355119, %_355123
    %_355129 = fmul fast float %_354940, %_354935
    %a2_355131 = fadd fast float %a2_355125, %_355129
    %_355135 = fmul fast float %_354950, %_354945
    %a2_355137 = fadd fast float %a2_355131, %_355135
    %_355141 = fmul fast float %_354960, %_354955
    %a2_355143 = fadd fast float %a2_355137, %_355141
    %_355147 = fmul fast float %_354970, %_354965
    %a2_355149 = fadd fast float %a2_355143, %_355147
    %_355153 = fmul fast float %_354987, %_354980
    %a2_355155 = fadd fast float %a2_355149, %_355153
    %_355159 = fmul fast float %_354997, %_354992
    %a2_355161 = fadd fast float %a2_355155, %_355159
    %_355165 = fmul fast float %_355007, %_355002
    %a2_355167 = fadd fast float %a2_355161, %_355165
    %_355171 = fmul fast float %_355017, %_355012
    %a2_355173 = fadd fast float %a2_355167, %_355171
    %_355177 = fmul fast float %_355027, %_355022
    %accn_355179 = fadd fast float %a2_355173, %_355177
    store float %accn_355179, float addrspace(0)* %_354603
    br label %head_354584, !llvm.loop !1014

new_exit_354591:
    %fv_12_354593 = add nuw nsw i32 1, %iv_354458
    br label %head_354455

new_exit_354462:
    br label %head_354465, !llvm.loop !1015

head_354465:
    %iv_354468 = phi i32 [ 0, %new_exit_354462 ], [ %fv_11_354480, %new_body_354478 ]
    %_354470 = icmp ult i32 %iv_354468, 224
    br i1 %_354470, label %new_body_354478, label %new_exit_354472

new_body_354478:
    %fv_11_354480 = add nuw nsw i32 1, %iv_354468
    %_354483 = trunc i32 %iv_354468 to i8
    %_354485.zext = zext i8 %_354483 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354485 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352827, i64 0, i9 %_354485.zext
    %_354487 = load float, float addrspace(0)* %_354485
    %_354492 = zext i8 %_354483 to i64
    %_354510 = add i64 %_354492, %_354508
    %_354513 = udiv i64 %_354510, 2408448
    %_354518 = urem i64 %_354513, 10
    %_354522 = udiv i64 %_354510, 50176
    %_354527 = urem i64 %_354522, 48
    %_354531 = udiv i64 %_354510, 224
    %_354536 = urem i64 %_354531, 224
    %_354539 = urem i64 %_354510, 224
    %_354544 = urem i64 %_354527, 48
    %_354546 = trunc i64 %_354544 to i6
    %_354557.zext = zext i6 %_354546 to i7 ; add one more bit for gep index as it is treated as signed value
    %_354557 = getelementptr inbounds [48 x float], [48 x float] addrspace(0)* %l_self_modules_branch5x5_modules_1_parameters_bias__354491, i64 0, i7 %_354557.zext
    %_354559 = load float, float addrspace(0)* %_354557
    %_354568.zext = zext i8 %_354483 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354568 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_354566, i64 0, i9 %_354568.zext
    %_354572 = fadd fast float %_354487, %_354559
    store float %_354572, float addrspace(0)* %_354568
    br label %head_354465, !llvm.loop !1015

new_exit_354472:
    %fv_13_354474 = add nuw nsw i32 1, %iv_354433
    br label %head_354430

new_exit_354436:
    %fv_13_354438 = add nuw nsw i32 1, %iv_354418
    br label %head_354415

new_exit_354421:
    %fv_13_354423 = add nuw nsw i32 1, %iv_354403
    br label %head_354400

new_exit_354406:
    %fv_13_354408 = add nuw nsw i32 1, %iv_352833
    br label %head_352830

new_exit_352836:
    %_352839i8 = call i8* @malloc(i64 96337920)
    %_352839 = bitcast i8* %_352839i8 to [10 x [48 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352842

head_352842:
    %iv_352845 = phi i32 [ 0, %new_exit_352836 ], [ %fv_6_354247, %new_exit_354245 ]
    %_352847 = icmp ult i32 %iv_352845, 10
    %_354293 = trunc i32 %iv_352845 to i4
    %_354294 = zext i4 %_354293 to i64
    %_354296 = mul i64 2408448, %_354294
    %_354369.zext = zext i4 %_354293 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354369 = getelementptr inbounds [10 x [48 x [224 x [224 x float]]]], [10 x [48 x [224 x [224 x float]]]] addrspace(0)* %_352839, i64 0, i5 %_354369.zext
    br i1 %_352847, label %new_body_354235, label %new_exit_352848

new_body_354235:
    br label %head_354238

head_354238:
    %iv_354241 = phi i32 [ 0, %new_body_354235 ], [ %fv_6_354262, %new_exit_354260 ]
    %_354244 = icmp ult i32 %iv_354241, 48
    %_354299 = trunc i32 %iv_354241 to i6
    %_354307 = zext i6 %_354299 to i64
    %_354309 = mul i64 50176, %_354307
    %_354311 = add i64 %_354296, %_354309
    %_354371.zext = zext i6 %_354299 to i7 ; add one more bit for gep index as it is treated as signed value
    %_354371 = getelementptr inbounds [48 x [224 x [224 x float]]], [48 x [224 x [224 x float]]] addrspace(0)* %_354369, i64 0, i7 %_354371.zext
    br i1 %_354244, label %new_body_354251, label %new_exit_354245

new_body_354251:
    br label %head_354254

head_354254:
    %iv_354257 = phi i32 [ 0, %new_body_354251 ], [ %fv_6_354277, %new_exit_354275 ]
    %_354259 = icmp ult i32 %iv_354257, 224
    %_354288 = trunc i32 %iv_354257 to i8
    %_354289 = zext i8 %_354288 to i64
    %_354291 = mul i64 224, %_354289
    %_354313 = add i64 %_354291, %_354311
    %_354373.zext = zext i8 %_354288 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354373 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_354371, i64 0, i9 %_354373.zext
    br i1 %_354259, label %new_body_354266, label %new_exit_354260

new_body_354266:
    br label %head_354269

head_354269:
    %iv_354272 = phi i32 [ 0, %new_body_354266 ], [ %fv_6_354283, %new_body_354281 ]
    %_354274 = icmp ult i32 %iv_354272, 224
    br i1 %_354274, label %new_body_354281, label %new_exit_354275

new_body_354281:
    %fv_6_354283 = add nuw nsw i32 1, %iv_354272
    %_354286 = trunc i32 %iv_354272 to i8
    %_354287 = zext i8 %_354286 to i64
    %_354315 = add i64 %_354287, %_354313
    %_354318 = udiv i64 %_354315, 2408448
    %_354323 = urem i64 %_354318, 10
    %_354325 = trunc i64 %_354323 to i4
    %_354327.zext = zext i4 %_354325 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354327 = getelementptr inbounds [10 x [48 x [224 x [224 x float]]]], [10 x [48 x [224 x [224 x float]]]] addrspace(0)* %_352824, i64 0, i5 %_354327.zext
    %_354331 = udiv i64 %_354315, 50176
    %_354337 = urem i64 %_354331, 48
    %_354339 = trunc i64 %_354337 to i6
    %_354341.zext = zext i6 %_354339 to i7 ; add one more bit for gep index as it is treated as signed value
    %_354341 = getelementptr inbounds [48 x [224 x [224 x float]]], [48 x [224 x [224 x float]]] addrspace(0)* %_354327, i64 0, i7 %_354341.zext
    %_354345 = udiv i64 %_354315, 224
    %_354350 = urem i64 %_354345, 224
    %_354352 = trunc i64 %_354350 to i8
    %_354354.zext = zext i8 %_354352 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354354 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_354341, i64 0, i9 %_354354.zext
    %_354357 = udiv i64 %_354315, 224
    %_354360 = urem i64 %_354315, 224
    %_354362 = trunc i64 %_354360 to i8
    %_354364.zext = zext i8 %_354362 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354364 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_354354, i64 0, i9 %_354364.zext
    %_354366 = load float, float addrspace(0)* %_354364
    %_354375.zext = zext i8 %_354286 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354375 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_354373, i64 0, i9 %_354375.zext
    store float %_354366, float addrspace(0)* %_354375
    br label %head_354269

new_exit_354275:
    %fv_6_354277 = add nuw nsw i32 1, %iv_354257
    br label %head_354254

new_exit_354260:
    %fv_6_354262 = add nuw nsw i32 1, %iv_354241
    br label %head_354238

new_exit_354245:
    %fv_6_354247 = add nuw nsw i32 1, %iv_352845
    br label %head_352842

new_exit_352848:
    %_352859i8 = call i8* @malloc(i64 980659200)
    %_352859 = bitcast i8* %_352859i8 to [10 x [480 x [226 x [226 x float]]]] addrspace(0)*
    br label %head_352862

head_352862:
    %_352865 = phi i64 [ 0, %new_exit_352848 ], [ %fv_6_354116, %new_exit_354114 ]
    %fv_8_352867 = icmp ult i64 %_352865, 10
    br i1 %fv_8_352867, label %new_body_354088, label %new_exit_352868

new_body_354088:
    %fv_7_354091 = add nuw nsw i64 1, %_352865
    %_354095 = select i1 %fv_8_352867, i64 %_352865, i64 0
    %_354096 = trunc i64 %_354095 to i4
    %fv_9_354098.zext = zext i4 %_354096 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_9_354098 = getelementptr inbounds [10 x [480 x [224 x [224 x float]]]], [10 x [480 x [224 x [224 x float]]]] addrspace(0)* %l_x__354093, i64 0, i5 %fv_9_354098.zext
    %fv_10_354099 = trunc i64 %_352865 to i4
    br label %head_354103

head_354103:
    %_354110 = phi i64 [ 0, %new_body_354088 ], [ %fv_8_354138, %new_exit_354130 ]
    %fv_7_354132 = phi i1 [ %fv_8_352867, %new_body_354088 ], [ %fv_7_354132, %new_exit_354130 ]
    %fv_6_354116 = phi i64 [ %fv_7_354091, %new_body_354088 ], [ %fv_6_354116, %new_exit_354130 ]
    %fv_8_354134 = phi [480 x [224 x [224 x float]]] addrspace(0)* [ %fv_9_354098, %new_body_354088 ], [ %fv_8_354134, %new_exit_354130 ]
    %fv_9_354136 = phi i4 [ %fv_10_354099, %new_body_354088 ], [ %fv_9_354136, %new_exit_354130 ]
    %fv_14_354113 = icmp ult i64 %_354110, 480
    %_354162 = select i1 %fv_14_354113, i64 %_354110, i64 0
    %_354165 = trunc i64 %_354162 to i9
    %fv_11_354167.zext = zext i9 %_354165 to i10 ; add one more bit for gep index as it is treated as signed value
    %fv_11_354167 = getelementptr inbounds [480 x [224 x [224 x float]]], [480 x [224 x [224 x float]]] addrspace(0)* %fv_8_354134, i64 0, i10 %fv_11_354167.zext
    %_354191.zext = zext i4 %fv_9_354136 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354191 = getelementptr inbounds [10 x [480 x [226 x [226 x float]]]], [10 x [480 x [226 x [226 x float]]]] addrspace(0)* %_352859, i64 0, i5 %_354191.zext
    %fv_13_354192 = trunc i64 %_354110 to i9
    %_354194.zext = zext i9 %fv_13_354192 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354194 = getelementptr inbounds [480 x [226 x [226 x float]]], [480 x [226 x [226 x float]]] addrspace(0)* %_354191, i64 0, i10 %_354194.zext
    %fv_14_354207 = and i1 %fv_14_354113, %fv_7_354132
    br i1 %fv_14_354113, label %new_body_354120, label %new_exit_354114

new_body_354120:
    br label %head_354123

head_354123:
    %_354126 = phi i64 [ 0, %new_body_354120 ], [ %fv_9_354153, %new_exit_354151 ]
    %_354129 = icmp ult i64 %_354126, 226
    %_354170 = add i64 18446744073709551615, %_354126
    %fv_18_354172 = icmp ult i64 %_354170, 224
    %_354174 = select i1 %fv_18_354172, i64 %_354170, i64 0
    %_354175 = trunc i64 %_354174 to i8
    %fv_13_354177.zext = zext i8 %_354175 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_13_354177 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %fv_11_354167, i64 0, i9 %fv_13_354177.zext
    %fv_16_354195 = trunc i64 %_354126 to i8
    %_354197.zext = zext i8 %fv_16_354195 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354197 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_354194, i64 0, i9 %_354197.zext
    %fv_18_354209 = and i1 %fv_18_354172, %fv_14_354207
    br i1 %_354129, label %new_body_354142, label %new_exit_354130

new_body_354142:
    br label %head_354145

head_354145:
    %_354148 = phi i64 [ 0, %new_body_354142 ], [ %fv_10_354159, %new_body_354157 ]
    %_354150 = icmp ult i64 %_354148, 226
    br i1 %_354150, label %new_body_354157, label %new_exit_354151

new_body_354157:
    %fv_10_354159 = add nuw nsw i64 1, %_354148
    %_354179 = add i64 18446744073709551615, %_354148
    %_354181 = icmp ult i64 %_354179, 224
    %_354183 = select i1 %_354181, i64 %_354179, i64 0
    %_354184 = trunc i64 %_354183 to i8
    %fv_15_354186.zext = zext i8 %_354184 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_15_354186 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %fv_13_354177, i64 0, i9 %fv_15_354186.zext
    %_354188 = load float, float addrspace(0)* %fv_15_354186
    %_354198 = trunc i64 %_354148 to i8
    %fv_19_354200.zext = zext i8 %_354198 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_19_354200 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_354197, i64 0, i9 %fv_19_354200.zext
    %fv_22_354211 = and i1 %_354181, %fv_18_354209
    %_354214 = select i1 %fv_22_354211, float %_354188, float 0xfff0000000000000
    store float %_354214, float addrspace(0)* %fv_19_354200
    br label %head_354145

new_exit_354151:
    %fv_9_354153 = add nuw nsw i64 1, %_354126
    br label %head_354123

new_exit_354130:
    %fv_8_354138 = add nuw nsw i64 1, %_354110
    br label %head_354103

new_exit_354114:
    br label %head_352862

new_exit_352868:
    %_352875i8 = call i8* @malloc(i64 963379200)
    %_352875 = bitcast i8* %_352875i8 to [10 x [480 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352878

head_352878:
    %iv_352881 = phi i32 [ 0, %new_exit_352868 ], [ %fv_8_353866, %new_exit_353864 ]
    %_352883 = icmp ult i32 %iv_352881, 10
    %_353916 = trunc i32 %iv_352881 to i4
    %_353925.zext = zext i4 %_353916 to i5 ; add one more bit for gep index as it is treated as signed value
    %_353925 = getelementptr inbounds [10 x [480 x [226 x [226 x float]]]], [10 x [480 x [226 x [226 x float]]]] addrspace(0)* %_352859, i64 0, i5 %_353925.zext
    %_354031.zext = zext i4 %_353916 to i5 ; add one more bit for gep index as it is treated as signed value
    %_354031 = getelementptr inbounds [10 x [480 x [224 x [224 x float]]]], [10 x [480 x [224 x [224 x float]]]] addrspace(0)* %_352875, i64 0, i5 %_354031.zext
    br i1 %_352883, label %new_body_353855, label %new_exit_352884

new_body_353855:
    br label %head_353858

head_353858:
    %iv_353861 = phi i32 [ 0, %new_body_353855 ], [ %fv_8_353881, %new_exit_353879 ]
    %_353863 = icmp ult i32 %iv_353861, 480
    %_353926 = trunc i32 %iv_353861 to i9
    %_353937.zext = zext i9 %_353926 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353937 = getelementptr inbounds [480 x [226 x [226 x float]]], [480 x [226 x [226 x float]]] addrspace(0)* %_353925, i64 0, i10 %_353937.zext
    %_354033.zext = zext i9 %_353926 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354033 = getelementptr inbounds [480 x [224 x [224 x float]]], [480 x [224 x [224 x float]]] addrspace(0)* %_354031, i64 0, i10 %_354033.zext
    br i1 %_353863, label %new_body_353870, label %new_exit_353864

new_body_353870:
    br label %head_353873

head_353873:
    %iv_353876 = phi i32 [ 0, %new_body_353870 ], [ %fv_8_353896, %new_exit_353894 ]
    %_353878 = icmp ult i32 %iv_353876, 224
    %_353938 = trunc i32 %iv_353876 to i8
    %_353939 = zext i8 %_353938 to i64
    %_353942 = trunc i64 %_353939 to i8
    %_353955.zext = zext i8 %_353942 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353955 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_353937, i64 0, i9 %_353955.zext
    %_353991 = add i64 1, %_353939
    %_353992 = trunc i64 %_353991 to i8
    %_353994.zext = zext i8 %_353992 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353994 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_353937, i64 0, i9 %_353994.zext
    %_354011 = add i64 2, %_353939
    %_354012 = trunc i64 %_354011 to i8
    %_354014.zext = zext i8 %_354012 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354014 = getelementptr inbounds [226 x [226 x float]], [226 x [226 x float]] addrspace(0)* %_353937, i64 0, i9 %_354014.zext
    %_354035.zext = zext i8 %_353938 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354035 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_354033, i64 0, i9 %_354035.zext
    br i1 %_353878, label %new_body_353885, label %new_exit_353879

new_body_353885:
    br label %head_353888

head_353888:
    %iv_353891 = phi i32 [ 0, %new_body_353885 ], [ %fv_8_353902, %new_body_353900 ]
    %_353893 = icmp ult i32 %iv_353891, 224
    br i1 %_353893, label %new_body_353900, label %new_exit_353894

new_body_353900:
    %fv_8_353902 = add nuw nsw i32 1, %iv_353891
    %_353956 = trunc i32 %iv_353891 to i8
    %_353957 = zext i8 %_353956 to i64
    %_353958 = trunc i64 %_353957 to i8
    %_353969.zext = zext i8 %_353958 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353969 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_353955, i64 0, i9 %_353969.zext
    %_353971 = load float, float addrspace(0)* %_353969
    %_353974 = add i64 1, %_353957
    %_353975 = trunc i64 %_353974 to i8
    %_353977.zext = zext i8 %_353975 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353977 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_353955, i64 0, i9 %_353977.zext
    %_353979 = load float, float addrspace(0)* %_353977
    %_353983 = add i64 2, %_353957
    %_353984 = trunc i64 %_353983 to i8
    %_353986.zext = zext i8 %_353984 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353986 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_353955, i64 0, i9 %_353986.zext
    %_353988 = load float, float addrspace(0)* %_353986
    %_353996.zext = zext i8 %_353958 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353996 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_353994, i64 0, i9 %_353996.zext
    %_353998 = load float, float addrspace(0)* %_353996
    %_354001.zext = zext i8 %_353975 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354001 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_353994, i64 0, i9 %_354001.zext
    %_354003 = load float, float addrspace(0)* %_354001
    %_354006.zext = zext i8 %_353984 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354006 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_353994, i64 0, i9 %_354006.zext
    %_354008 = load float, float addrspace(0)* %_354006
    %_354016.zext = zext i8 %_353958 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354016 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_354014, i64 0, i9 %_354016.zext
    %_354018 = load float, float addrspace(0)* %_354016
    %_354021.zext = zext i8 %_353975 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354021 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_354014, i64 0, i9 %_354021.zext
    %_354023 = load float, float addrspace(0)* %_354021
    %_354026.zext = zext i8 %_353984 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354026 = getelementptr inbounds [226 x float], [226 x float] addrspace(0)* %_354014, i64 0, i9 %_354026.zext
    %_354028 = load float, float addrspace(0)* %_354026
    %_354037.zext = zext i8 %_353956 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354037 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_354035, i64 0, i9 %_354037.zext
    %a2_354043 = tail call float @llvm.maxnum.f32(float 0xfff0000000000000, float %_353971)
    %a2_354046 = tail call float @llvm.maxnum.f32(float %a2_354043, float %_353979)
    %a2_354049 = tail call float @llvm.maxnum.f32(float %a2_354046, float %_353988)
    %a2_354052 = tail call float @llvm.maxnum.f32(float %a2_354049, float %_353998)
    %a2_354055 = tail call float @llvm.maxnum.f32(float %a2_354052, float %_354003)
    %a2_354058 = tail call float @llvm.maxnum.f32(float %a2_354055, float %_354008)
    %a2_354061 = tail call float @llvm.maxnum.f32(float %a2_354058, float %_354018)
    %a2_354064 = tail call float @llvm.maxnum.f32(float %a2_354061, float %_354023)
    %v_354067 = tail call float @llvm.maxnum.f32(float %a2_354064, float %_354028)
    store float %v_354067, float addrspace(0)* %_354037
    br label %head_353888

new_exit_353894:
    %fv_8_353896 = add nuw nsw i32 1, %iv_353876
    br label %head_353873

new_exit_353879:
    %fv_8_353881 = add nuw nsw i32 1, %iv_353861
    br label %head_353858

new_exit_353864:
    %fv_8_353866 = add nuw nsw i32 1, %iv_352881
    br label %head_352878

new_exit_352884:
    %_352895i8 = call i8* @malloc(i64 128450560)
    %_352895 = bitcast i8* %_352895i8 to [10 x [64 x [224 x [224 x float]]]] addrspace(0)*
    %_352898i8 = call i8* @malloc(i64 896)
    %_352898 = bitcast i8* %_352898i8 to [224 x float] addrspace(0)*
    br label %head_352901

head_352901:
    %iv_352904 = phi i32 [ 0, %new_exit_352884 ], [ %fv_13_353526, %new_exit_353524 ]
    %_352906 = icmp ult i32 %iv_352904, 10
    %_353616 = trunc i32 %iv_352904 to i4
    %_353748.zext = zext i4 %_353616 to i5 ; add one more bit for gep index as it is treated as signed value
    %_353748 = getelementptr inbounds [10 x [480 x [224 x [224 x float]]]], [10 x [480 x [224 x [224 x float]]]] addrspace(0)* %_352875, i64 0, i5 %_353748.zext
    %_353617 = zext i4 %_353616 to i64
    %_353619 = mul i64 3211264, %_353617
    %_353681.zext = zext i4 %_353616 to i5 ; add one more bit for gep index as it is treated as signed value
    %_353681 = getelementptr inbounds [10 x [64 x [224 x [224 x float]]]], [10 x [64 x [224 x [224 x float]]]] addrspace(0)* %_352895, i64 0, i5 %_353681.zext
    br i1 %_352906, label %new_body_353515, label %new_exit_352907

new_body_353515:
    br label %head_353518

head_353518:
    %iv_353521 = phi i32 [ 0, %new_body_353515 ], [ %fv_13_353541, %new_exit_353539 ]
    %_353523 = icmp ult i32 %iv_353521, 64
    %_353620 = trunc i32 %iv_353521 to i6
    %_353788.zext = zext i6 %_353620 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353788 = getelementptr inbounds [64 x [480 x float]], [64 x [480 x float]] addrspace(0)* %l_self_modules_branch_pool_modules_1_parameters_weight__353777, i64 0, i7 %_353788.zext
    %_353621 = zext i6 %_353620 to i64
    %_353623 = mul i64 50176, %_353621
    %_353625 = add i64 %_353619, %_353623
    %_353683.zext = zext i6 %_353620 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353683 = getelementptr inbounds [64 x [224 x [224 x float]]], [64 x [224 x [224 x float]]] addrspace(0)* %_353681, i64 0, i7 %_353683.zext
    br i1 %_353523, label %new_body_353530, label %new_exit_353524

new_body_353530:
    br label %head_353533

head_353533:
    %iv_353536 = phi i32 [ 0, %new_body_353530 ], [ %fv_13_353556, %new_exit_353554 ]
    %_353538 = icmp ult i32 %iv_353536, 224
    %_353612 = trunc i32 %iv_353536 to i8
    %t_353613 = zext i8 %_353612 to i64
    %_353615 = mul i64 224, %t_353613
    %_353627 = add i64 %_353615, %_353625
    %_353685.zext = zext i8 %_353612 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353685 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_353683, i64 0, i9 %_353685.zext
    br i1 %_353538, label %new_body_353545, label %new_exit_353539

new_body_353545:
    br label %head_353548

head_353548:
    %iv_353551 = phi i32 [ 0, %new_body_353545 ], [ %fv_13_353593, %new_exit_353591 ]
    %_353553 = icmp ult i32 %iv_353551, 1
    br i1 %_353553, label %new_body_353560, label %new_exit_353554

new_body_353560:
    br label %head_353563, !llvm.loop !1016

head_353563:
    %iv_353566 = phi i32 [ 0, %new_body_353560 ], [ %fv_10_353826, %new_body_353824 ]
    %_353568 = icmp ult i32 %iv_353566, 224
    br i1 %_353568, label %new_body_353824, label %new_exit_353571

new_body_353824:
    %fv_10_353826 = add nuw nsw i32 1, %iv_353566
    %_353828 = trunc i32 %iv_353566 to i8
    %_353830.zext = zext i8 %_353828 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353830 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352898, i64 0, i9 %_353830.zext
    store float 0x0000000000000000, float addrspace(0)* %_353830
    br label %head_353563, !llvm.loop !1016

new_exit_353571:
    br label %head_353574

head_353574:
    %iv_353577 = phi i32 [ 0, %new_exit_353571 ], [ %fv_12_353720, %new_exit_353718 ]
    %_353580 = icmp ult i32 %iv_353577, 480
    %_353751 = trunc i32 %iv_353577 to i9
    %_353764.zext = zext i9 %_353751 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353764 = getelementptr inbounds [480 x [224 x [224 x float]]], [480 x [224 x [224 x float]]] addrspace(0)* %_353748, i64 0, i10 %_353764.zext
    %_353766.zext = zext i8 %_353612 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353766 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_353764, i64 0, i9 %_353766.zext
    %_353799.zext = zext i9 %_353751 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353799 = getelementptr inbounds [480 x float], [480 x float] addrspace(0)* %_353788, i64 0, i10 %_353799.zext
    br i1 %_353580, label %new_body_353708, label %new_exit_353581

new_body_353708:
    br label %head_353711, !llvm.loop !1017

head_353711:
    %iv_353714 = phi i32 [ 0, %new_body_353708 ], [ %fv_12_353726, %new_body_353724 ]
    %_353716 = icmp ult i32 %iv_353714, 224
    br i1 %_353716, label %new_body_353724, label %new_exit_353718

new_body_353724:
    %fv_12_353726 = add nuw nsw i32 1, %iv_353714
    %_353728 = trunc i32 %iv_353714 to i8
    %_353730.zext = zext i8 %_353728 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353730 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352898, i64 0, i9 %_353730.zext
    %_353732 = load float, float addrspace(0)* %_353730
    %_353768.zext = zext i8 %_353728 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353768 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_353766, i64 0, i9 %_353768.zext
    %_353770 = load float, float addrspace(0)* %_353768
    %_353801 = load float, float addrspace(0)* %_353799
    %_353808 = fmul fast float %_353770, %_353801
    %accn_353811 = fadd fast float %_353808, %_353732
    store float %accn_353811, float addrspace(0)* %_353730
    br label %head_353711, !llvm.loop !1017

new_exit_353718:
    %fv_12_353720 = add nuw nsw i32 1, %iv_353577
    br label %head_353574

new_exit_353581:
    br label %head_353584, !llvm.loop !1018

head_353584:
    %iv_353587 = phi i32 [ 0, %new_exit_353581 ], [ %fv_11_353599, %new_body_353597 ]
    %_353589 = icmp ult i32 %iv_353587, 224
    br i1 %_353589, label %new_body_353597, label %new_exit_353591

new_body_353597:
    %fv_11_353599 = add nuw nsw i32 1, %iv_353587
    %_353602 = trunc i32 %iv_353587 to i8
    %_353604.zext = zext i8 %_353602 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353604 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_352898, i64 0, i9 %_353604.zext
    %_353606 = load float, float addrspace(0)* %_353604
    %_353611 = zext i8 %_353602 to i64
    %_353629 = add i64 %_353611, %_353627
    %_353632 = udiv i64 %_353629, 3211264
    %_353637 = urem i64 %_353632, 10
    %_353641 = udiv i64 %_353629, 50176
    %_353646 = urem i64 %_353641, 64
    %_353650 = udiv i64 %_353629, 224
    %_353655 = urem i64 %_353650, 224
    %_353658 = urem i64 %_353629, 224
    %_353663 = urem i64 %_353646, 64
    %_353665 = trunc i64 %_353663 to i6
    %_353676.zext = zext i6 %_353665 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353676 = getelementptr inbounds [64 x float], [64 x float] addrspace(0)* %l_self_modules_branch_pool_modules_1_parameters_bias__353610, i64 0, i7 %_353676.zext
    %_353678 = load float, float addrspace(0)* %_353676
    %_353687.zext = zext i8 %_353602 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353687 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_353685, i64 0, i9 %_353687.zext
    %_353699 = fadd fast float %_353606, %_353678
    store float %_353699, float addrspace(0)* %_353687
    br label %head_353584, !llvm.loop !1018

new_exit_353591:
    %fv_13_353593 = add nuw nsw i32 1, %iv_353551
    br label %head_353548

new_exit_353554:
    %fv_13_353556 = add nuw nsw i32 1, %iv_353536
    br label %head_353533

new_exit_353539:
    %fv_13_353541 = add nuw nsw i32 1, %iv_353521
    br label %head_353518

new_exit_353524:
    %fv_13_353526 = add nuw nsw i32 1, %iv_352904
    br label %head_352901

new_exit_352907:
    %_352910i8 = call i8* @malloc(i64 128450560)
    %_352910 = bitcast i8* %_352910i8 to [10 x [64 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352913

head_352913:
    %iv_352916 = phi i32 [ 0, %new_exit_352907 ], [ %fv_6_353332, %new_exit_353325 ]
    %_352918 = icmp ult i32 %iv_352916, 10
    %_353398 = trunc i32 %iv_352916 to i4
    %_353406 = zext i4 %_353398 to i64
    %_353408 = mul i64 3211264, %_353406
    %_353487.zext = zext i4 %_353398 to i5 ; add one more bit for gep index as it is treated as signed value
    %_353487 = getelementptr inbounds [10 x [64 x [224 x [224 x float]]]], [10 x [64 x [224 x [224 x float]]]] addrspace(0)* %_352910, i64 0, i5 %_353487.zext
    br i1 %_352918, label %new_body_353315, label %new_exit_352919

new_body_353315:
    br label %head_353318

head_353318:
    %iv_353321 = phi i32 [ 0, %new_body_353315 ], [ %fv_6_353348, %new_exit_353346 ]
    %_353324 = icmp ult i32 %iv_353321, 64
    %_353412 = trunc i32 %iv_353321 to i6
    %_353420 = zext i6 %_353412 to i64
    %_353422 = mul i64 50176, %_353420
    %_353424 = add i64 %_353408, %_353422
    %_353489.zext = zext i6 %_353412 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353489 = getelementptr inbounds [64 x [224 x [224 x float]]], [64 x [224 x [224 x float]]] addrspace(0)* %_353487, i64 0, i7 %_353489.zext
    br i1 %_353324, label %new_body_353336, label %new_exit_353325

new_body_353336:
    br label %head_353339

head_353339:
    %iv_353342 = phi i32 [ 0, %new_body_353336 ], [ %fv_6_353363, %new_exit_353361 ]
    %_353345 = icmp ult i32 %iv_353342, 224
    %_353389 = trunc i32 %iv_353342 to i8
    %_353390 = zext i8 %_353389 to i64
    %_353394 = mul i64 224, %_353390
    %_353426 = add i64 %_353394, %_353424
    %_353491.zext = zext i8 %_353389 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353491 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_353489, i64 0, i9 %_353491.zext
    br i1 %_353345, label %new_body_353352, label %new_exit_353346

new_body_353352:
    br label %head_353355

head_353355:
    %iv_353358 = phi i32 [ 0, %new_body_353352 ], [ %fv_6_353369, %new_body_353367 ]
    %_353360 = icmp ult i32 %iv_353358, 224
    br i1 %_353360, label %new_body_353367, label %new_exit_353361

new_body_353367:
    %fv_6_353369 = add nuw nsw i32 1, %iv_353358
    %_353380 = trunc i32 %iv_353358 to i8
    %_353388 = zext i8 %_353380 to i64
    %_353428 = add i64 %_353388, %_353426
    %_353435 = udiv i64 %_353428, 3211264
    %_353441 = urem i64 %_353435, 10
    %_353443 = trunc i64 %_353441 to i4
    %_353445.zext = zext i4 %_353443 to i5 ; add one more bit for gep index as it is treated as signed value
    %_353445 = getelementptr inbounds [10 x [64 x [224 x [224 x float]]]], [10 x [64 x [224 x [224 x float]]]] addrspace(0)* %_352895, i64 0, i5 %_353445.zext
    %_353449 = udiv i64 %_353428, 50176
    %_353455 = urem i64 %_353449, 64
    %_353457 = trunc i64 %_353455 to i6
    %_353459.zext = zext i6 %_353457 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353459 = getelementptr inbounds [64 x [224 x [224 x float]]], [64 x [224 x [224 x float]]] addrspace(0)* %_353445, i64 0, i7 %_353459.zext
    %_353463 = udiv i64 %_353428, 224
    %_353468 = urem i64 %_353463, 224
    %_353470 = trunc i64 %_353468 to i8
    %_353472.zext = zext i8 %_353470 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353472 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_353459, i64 0, i9 %_353472.zext
    %_353475 = udiv i64 %_353428, 224
    %_353478 = urem i64 %_353428, 224
    %_353480 = trunc i64 %_353478 to i8
    %_353482.zext = zext i8 %_353480 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353482 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_353472, i64 0, i9 %_353482.zext
    %_353484 = load float, float addrspace(0)* %_353482
    %_353493.zext = zext i8 %_353380 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353493 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_353491, i64 0, i9 %_353493.zext
    store float %_353484, float addrspace(0)* %_353493
    br label %head_353355

new_exit_353361:
    %fv_6_353363 = add nuw nsw i32 1, %iv_353342
    br label %head_353339

new_exit_353346:
    %fv_6_353348 = add nuw nsw i32 1, %iv_353321
    br label %head_353318

new_exit_353325:
    %fv_6_353332 = add nuw nsw i32 1, %iv_352916
    br label %head_352913

new_exit_352919:
    %_352925i8 = call i8* @malloc(i64 1027604480)
    %_352925 = bitcast i8* %_352925i8 to [10 x [512 x [224 x [224 x float]]]] addrspace(0)*
    br label %head_352928

head_352928:
    %_352931 = phi i64 [ 0, %new_exit_352919 ], [ %fv_1_352958, %new_exit_352951 ]
    %_352933 = icmp ult i64 %_352931, 10
    %fv_3_353020 = trunc i64 %_352931 to i4
    %fv_4_353041.zext = zext i4 %fv_3_353020 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_4_353041 = getelementptr inbounds [10 x [192 x [224 x [224 x float]]]], [10 x [192 x [224 x [224 x float]]]] addrspace(0)* %_352645, i64 0, i5 %fv_4_353041.zext
    %fv_6_353113.zext = zext i4 %fv_3_353020 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_6_353113 = getelementptr inbounds [10 x [208 x [224 x [224 x float]]]], [10 x [208 x [224 x [224 x float]]]] addrspace(0)* %_352746, i64 0, i5 %fv_6_353113.zext
    %fv_8_353160.zext = zext i4 %fv_3_353020 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_8_353160 = getelementptr inbounds [10 x [48 x [224 x [224 x float]]]], [10 x [48 x [224 x [224 x float]]]] addrspace(0)* %_352839, i64 0, i5 %fv_8_353160.zext
    %fv_10_353206.zext = zext i4 %fv_3_353020 to i5 ; add one more bit for gep index as it is treated as signed value
    %fv_10_353206 = getelementptr inbounds [10 x [64 x [224 x [224 x float]]]], [10 x [64 x [224 x [224 x float]]]] addrspace(0)* %_352910, i64 0, i5 %fv_10_353206.zext
    %_353251.zext = zext i4 %fv_3_353020 to i5 ; add one more bit for gep index as it is treated as signed value
    %_353251 = getelementptr inbounds [10 x [512 x [224 x [224 x float]]]], [10 x [512 x [224 x [224 x float]]]] addrspace(0)* %_352925, i64 0, i5 %_353251.zext
    br i1 %_352933, label %new_body_352941, label %new_exit_352934

new_body_352941:
    br label %head_352944

head_352944:
    %_352947 = phi i64 [ 0, %new_body_352941 ], [ %fv_2_352974, %new_exit_352972 ]
    %_352950 = icmp ult i64 %_352947, 512
    %_353045 = tail call i64 @llvm.smin.i64(i64 %_352947, i64 191)
    %_353048 = tail call i64 @llvm.smax.i64(i64 0, i64 %_353045)
    %_353051 = trunc i64 %_353048 to i8
    %fv_6_353064.zext = zext i8 %_353051 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_6_353064 = getelementptr inbounds [192 x [224 x [224 x float]]], [192 x [224 x [224 x float]]] addrspace(0)* %fv_4_353041, i64 0, i9 %fv_6_353064.zext
    %_353117 = add i64 18446744073709551424, %_352947
    %_353120 = tail call i64 @llvm.smin.i64(i64 %_353117, i64 207)
    %_353122 = tail call i64 @llvm.smax.i64(i64 0, i64 %_353120)
    %_353125 = trunc i64 %_353122 to i8
    %fv_9_353138.zext = zext i8 %_353125 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_9_353138 = getelementptr inbounds [208 x [224 x [224 x float]]], [208 x [224 x [224 x float]]] addrspace(0)* %fv_6_353113, i64 0, i9 %fv_9_353138.zext
    %_353163 = add i64 18446744073709551216, %_352947
    %_353166 = tail call i64 @llvm.smin.i64(i64 %_353163, i64 47)
    %_353168 = tail call i64 @llvm.smax.i64(i64 0, i64 %_353166)
    %_353171 = trunc i64 %_353168 to i6
    %fv_12_353184.zext = zext i6 %_353171 to i7 ; add one more bit for gep index as it is treated as signed value
    %fv_12_353184 = getelementptr inbounds [48 x [224 x [224 x float]]], [48 x [224 x [224 x float]]] addrspace(0)* %fv_8_353160, i64 0, i7 %fv_12_353184.zext
    %_353209 = add i64 18446744073709551168, %_352947
    %_353212 = tail call i64 @llvm.smin.i64(i64 %_353209, i64 63)
    %_353214 = tail call i64 @llvm.smax.i64(i64 0, i64 %_353212)
    %_353217 = trunc i64 %_353214 to i6
    %fv_15_353230.zext = zext i6 %_353217 to i7 ; add one more bit for gep index as it is treated as signed value
    %fv_15_353230 = getelementptr inbounds [64 x [224 x [224 x float]]], [64 x [224 x [224 x float]]] addrspace(0)* %fv_10_353206, i64 0, i7 %fv_15_353230.zext
    %fv_16_353254 = trunc i64 %_352947 to i9
    %_353267.zext = zext i9 %fv_16_353254 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353267 = getelementptr inbounds [512 x [224 x [224 x float]]], [512 x [224 x [224 x float]]] addrspace(0)* %_353251, i64 0, i10 %_353267.zext
    %fv_19_353282 = icmp uge i64 %_352947, 192
    %fv_18_353279 = icmp uge i64 %_352947, 400
    %fv_17_353275 = icmp uge i64 %_352947, 448
    br i1 %_352950, label %new_body_352962, label %new_exit_352951

new_body_352962:
    br label %head_352965

head_352965:
    %_352968 = phi i64 [ 0, %new_body_352962 ], [ %fv_3_352989, %new_exit_352987 ]
    %_352971 = icmp ult i64 %_352968, 224
    %fv_8_353067 = trunc i64 %_352968 to i8
    %fv_9_353080.zext = zext i8 %fv_8_353067 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_9_353080 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %fv_6_353064, i64 0, i9 %fv_9_353080.zext
    %fv_13_353140.zext = zext i8 %fv_8_353067 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_13_353140 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %fv_9_353138, i64 0, i9 %fv_13_353140.zext
    %fv_17_353186.zext = zext i8 %fv_8_353067 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_17_353186 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %fv_12_353184, i64 0, i9 %fv_17_353186.zext
    %fv_21_353232.zext = zext i8 %fv_8_353067 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_21_353232 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %fv_15_353230, i64 0, i9 %fv_21_353232.zext
    %_353269.zext = zext i8 %fv_8_353067 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353269 = getelementptr inbounds [224 x [224 x float]], [224 x [224 x float]] addrspace(0)* %_353267, i64 0, i9 %_353269.zext
    br i1 %_352971, label %new_body_352978, label %new_exit_352972

new_body_352978:
    br label %head_352981

head_352981:
    %_352984 = phi i64 [ 0, %new_body_352978 ], [ %fv_4_352995, %new_body_352993 ]
    %_352986 = icmp ult i64 %_352984, 224
    br i1 %_352986, label %new_body_352993, label %new_exit_352987

new_body_352993:
    %fv_4_352995 = add nuw nsw i64 1, %_352984
    %_353081 = trunc i64 %_352984 to i8
    %fv_11_353092.zext = zext i8 %_353081 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_11_353092 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %fv_9_353080, i64 0, i9 %fv_11_353092.zext
    %_353097 = load float, float addrspace(0)* %fv_11_353092
    %fv_16_353142.zext = zext i8 %_353081 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_16_353142 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %fv_13_353140, i64 0, i9 %fv_16_353142.zext
    %_353144 = load float, float addrspace(0)* %fv_16_353142
    %fv_21_353188.zext = zext i8 %_353081 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_21_353188 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %fv_17_353186, i64 0, i9 %fv_21_353188.zext
    %_353190 = load float, float addrspace(0)* %fv_21_353188
    %fv_26_353234.zext = zext i8 %_353081 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_26_353234 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %fv_21_353232, i64 0, i9 %fv_26_353234.zext
    %_353236 = load float, float addrspace(0)* %fv_26_353234
    %fv_28_353271.zext = zext i8 %_353081 to i9 ; add one more bit for gep index as it is treated as signed value
    %fv_28_353271 = getelementptr inbounds [224 x float], [224 x float] addrspace(0)* %_353269, i64 0, i9 %fv_28_353271.zext
    %_353286 = select i1 %fv_19_353282, float %_353144, float %_353097
    %_353289 = select i1 %fv_18_353279, float %_353190, float %_353286
    %_353292 = select i1 %fv_17_353275, float %_353236, float %_353289
    store float %_353292, float addrspace(0)* %fv_28_353271
    br label %head_352981

new_exit_352987:
    %fv_3_352989 = add nuw nsw i64 1, %_352968
    br label %head_352965

new_exit_352972:
    %fv_2_352974 = add nuw nsw i64 1, %_352947
    br label %head_352944

new_exit_352951:
    %fv_1_352958 = add nuw nsw i64 1, %_352931
    br label %head_352928

new_exit_352934:
    ret [10 x [512 x [224 x [224 x float]]]] addrspace(0)* %_352925

}


!1000 = !{!"llvm.loop.vectorize.enable", i1 true}
!1017 = distinct !{!1017, !1000}
!1018 = distinct !{!1018, !1000}
!1010 = distinct !{!1010, !1000}
!1012 = distinct !{!1012, !1000}
!1015 = distinct !{!1015, !1000}
!1014 = distinct !{!1014, !1000}
!1016 = distinct !{!1016, !1000}
!1006 = distinct !{!1006, !1000}
!1003 = distinct !{!1003, !1000}
!1001 = distinct !{!1001, !1000}
!1002 = distinct !{!1002, !1000}
!1005 = distinct !{!1005, !1000}
!1007 = distinct !{!1007, !1000}
!1004 = distinct !{!1004, !1000}
!1009 = distinct !{!1009, !1000}
!1011 = distinct !{!1011, !1000}
!1013 = distinct !{!1013, !1000}
!1008 = distinct !{!1008, !1000}
