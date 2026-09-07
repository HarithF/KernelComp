
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [1024 x [8192 x float]] addrspace(0)* @DeepNarrowMLP([1024 x [8192 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__363693, [1024 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__363510, [1024 x [8192 x float]] addrspace(0)* %l_x__363679, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__363041, [1024 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__362827, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__362358, [1024 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__362144, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_6_parameters_weight__361675, [1024 x float] addrspace(0)* %l_self_modules_network_modules_6_parameters_bias__361461, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_8_parameters_weight__360992, [1024 x float] addrspace(0)* %l_self_modules_network_modules_8_parameters_bias__360778, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_10_parameters_weight__360309, [1024 x float] addrspace(0)* %l_self_modules_network_modules_10_parameters_bias__360095, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_12_parameters_weight__359626, [1024 x float] addrspace(0)* %l_self_modules_network_modules_12_parameters_bias__359412, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_14_parameters_weight__358943, [1024 x float] addrspace(0)* %l_self_modules_network_modules_14_parameters_bias__358729, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_16_parameters_weight__358260, [1024 x float] addrspace(0)* %l_self_modules_network_modules_16_parameters_bias__358046, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_18_parameters_weight__357577, [1024 x float] addrspace(0)* %l_self_modules_network_modules_18_parameters_bias__357363, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_20_parameters_weight__356894, [1024 x float] addrspace(0)* %l_self_modules_network_modules_20_parameters_bias__356680, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_22_parameters_weight__356211, [1024 x float] addrspace(0)* %l_self_modules_network_modules_22_parameters_bias__355997, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_24_parameters_weight__355528, [1024 x float] addrspace(0)* %l_self_modules_network_modules_24_parameters_bias__355314, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_26_parameters_weight__354845, [1024 x float] addrspace(0)* %l_self_modules_network_modules_26_parameters_bias__354631, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_28_parameters_weight__354162, [1024 x float] addrspace(0)* %l_self_modules_network_modules_28_parameters_bias__353948, [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_30_parameters_weight__353470, [1024 x float] addrspace(0)* %l_self_modules_network_modules_30_parameters_bias__353242, [8192 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_32_parameters_weight__352751, [8192 x float] addrspace(0)* %l_self_modules_network_modules_32_parameters_bias__352484) {
mimir_graph_86c1b71c108e799e_351836:
    %_351857i8 = call i8* @malloc(i64 4194304)
    %_351857 = bitcast i8* %_351857i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351867i8 = call i8* @malloc(i64 32)
    %_351867 = bitcast i8* %_351867i8 to [8 x float] addrspace(0)*
    %fv_0_363463.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363463 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363463.zext
    %fv_0_363467.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363467 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363467.zext
    %fv_0_363471.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363471 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363471.zext
    %fv_0_363475.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363475 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363475.zext
    %fv_0_363479.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363479 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363479.zext
    %fv_0_363483.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363483 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363483.zext
    %fv_0_363487.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363487 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363487.zext
    %fv_0_363491.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_363491 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351867, i64 0, i4 %fv_0_363491.zext
    br label %head_351871

head_351871:
    %iv_351875 = phi i32 [ 0, %mimir_graph_86c1b71c108e799e_351836 ], [ %fv_10_363455, %new_exit_363453 ]
    %_351880 = icmp ult i32 %iv_351875, 512
    %_363521 = trunc i32 %iv_351875 to i9
    %_363680 = zext i9 %_363521 to i64
    %t_363682 = mul i64 2, %_363680
    %_363683 = trunc i64 %t_363682 to i10
    %_363685.zext = zext i10 %_363683 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363685 = getelementptr inbounds [1024 x [8192 x float]], [1024 x [8192 x float]] addrspace(0)* %l_x__363679, i64 0, i11 %_363685.zext
    %t_363780 = add i64 1, %t_363682
    %_363781 = trunc i64 %t_363780 to i10
    %_363783.zext = zext i10 %_363781 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363783 = getelementptr inbounds [1024 x [8192 x float]], [1024 x [8192 x float]] addrspace(0)* %l_x__363679, i64 0, i11 %_363783.zext
    %_363523.zext = zext i9 %_363521 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363523 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363523.zext
    %_363525.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363525 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363523, i64 0, i2 %_363525.zext
    %_363608.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363608 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363523, i64 0, i2 %_363608.zext
    br i1 %_351880, label %new_body_363444, label %new_exit_351883

new_body_363444:
    br label %head_363447

head_363447:
    %iv_363450 = phi i32 [ 0, %new_body_363444 ], [ %fv_10_363504, %new_exit_363502 ]
    %_363452 = icmp ult i32 %iv_363450, 256
    %_363511 = trunc i32 %iv_363450 to i8
    %t_363512 = zext i8 %_363511 to i64
    %t_363514 = mul i64 4, %t_363512
    %_363515 = trunc i64 %t_363514 to i10
    %_363695.zext = zext i10 %_363515 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363695 = getelementptr inbounds [1024 x [8192 x float]], [1024 x [8192 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__363693, i64 0, i11 %_363695.zext
    %t_363542 = add i64 1, %t_363514
    %_363543 = trunc i64 %t_363542 to i10
    %_363717.zext = zext i10 %_363543 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363717 = getelementptr inbounds [1024 x [8192 x float]], [1024 x [8192 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__363693, i64 0, i11 %_363717.zext
    %t_363563 = add i64 2, %t_363514
    %_363564 = trunc i64 %t_363563 to i10
    %_363739.zext = zext i10 %_363564 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363739 = getelementptr inbounds [1024 x [8192 x float]], [1024 x [8192 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__363693, i64 0, i11 %_363739.zext
    %t_363584 = add i64 3, %t_363514
    %_363585 = trunc i64 %t_363584 to i10
    %_363761.zext = zext i10 %_363585 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363761 = getelementptr inbounds [1024 x [8192 x float]], [1024 x [8192 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__363693, i64 0, i11 %_363761.zext
    br i1 %_363452, label %new_body_363459, label %new_exit_363453

new_body_363459:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363463
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363467
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363471
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363475
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363479
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363483
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363487
    store float 0x0000000000000000, float addrspace(0)* %fv_0_363491
    br label %head_363495, !llvm.loop !1001

head_363495:
    %iv_363498 = phi i32 [ 0, %new_body_363459 ], [ %fv_9_363673, %new_body_363671 ]
    %_363500 = icmp ult i32 %iv_363498, 8192
    br i1 %_363500, label %new_body_363671, label %new_exit_363502

new_body_363671:
    %fv_9_363673 = add nuw nsw i32 1, %iv_363498
    %_363676 = load float, float addrspace(0)* %fv_0_363463
    %_363686 = trunc i32 %iv_363498 to i13
    %_363688.zext = zext i13 %_363686 to i14 ; add one more bit for gep index as it is treated as signed value
    %_363688 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_363685, i64 0, i14 %_363688.zext
    %_363690 = load float, float addrspace(0)* %_363688
    %_363697.zext = zext i13 %_363686 to i14 ; add one more bit for gep index as it is treated as signed value
    %_363697 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_363695, i64 0, i14 %_363697.zext
    %_363699 = load float, float addrspace(0)* %_363697
    %_363704 = fmul fast float %_363699, %_363690
    %accn_363707 = fadd fast float %_363704, %_363676
    store float %accn_363707, float addrspace(0)* %fv_0_363463
    %_363711 = load float, float addrspace(0)* %fv_0_363467
    %_363714 = load float, float addrspace(0)* %_363688
    %_363719.zext = zext i13 %_363686 to i14 ; add one more bit for gep index as it is treated as signed value
    %_363719 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_363717, i64 0, i14 %_363719.zext
    %_363721 = load float, float addrspace(0)* %_363719
    %_363726 = fmul fast float %_363714, %_363721
    %accn_363729 = fadd fast float %_363726, %_363711
    store float %accn_363729, float addrspace(0)* %fv_0_363467
    %_363733 = load float, float addrspace(0)* %fv_0_363471
    %_363736 = load float, float addrspace(0)* %_363688
    %_363741.zext = zext i13 %_363686 to i14 ; add one more bit for gep index as it is treated as signed value
    %_363741 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_363739, i64 0, i14 %_363741.zext
    %_363743 = load float, float addrspace(0)* %_363741
    %_363748 = fmul fast float %_363736, %_363743
    %accn_363751 = fadd fast float %_363748, %_363733
    store float %accn_363751, float addrspace(0)* %fv_0_363471
    %_363755 = load float, float addrspace(0)* %fv_0_363475
    %_363758 = load float, float addrspace(0)* %_363688
    %_363763.zext = zext i13 %_363686 to i14 ; add one more bit for gep index as it is treated as signed value
    %_363763 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_363761, i64 0, i14 %_363763.zext
    %_363765 = load float, float addrspace(0)* %_363763
    %_363770 = fmul fast float %_363758, %_363765
    %accn_363773 = fadd fast float %_363770, %_363755
    store float %accn_363773, float addrspace(0)* %fv_0_363475
    %_363777 = load float, float addrspace(0)* %fv_0_363479
    %_363785.zext = zext i13 %_363686 to i14 ; add one more bit for gep index as it is treated as signed value
    %_363785 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_363783, i64 0, i14 %_363785.zext
    %_363787 = load float, float addrspace(0)* %_363785
    %_363790 = load float, float addrspace(0)* %_363697
    %_363795 = fmul fast float %_363790, %_363787
    %accn_363798 = fadd fast float %_363795, %_363777
    store float %accn_363798, float addrspace(0)* %fv_0_363479
    %_363802 = load float, float addrspace(0)* %fv_0_363483
    %_363805 = load float, float addrspace(0)* %_363785
    %_363808 = load float, float addrspace(0)* %_363719
    %_363813 = fmul fast float %_363808, %_363805
    %accn_363816 = fadd fast float %_363813, %_363802
    store float %accn_363816, float addrspace(0)* %fv_0_363483
    %_363820 = load float, float addrspace(0)* %fv_0_363487
    %_363823 = load float, float addrspace(0)* %_363785
    %_363826 = load float, float addrspace(0)* %_363741
    %_363831 = fmul fast float %_363826, %_363823
    %accn_363834 = fadd fast float %_363831, %_363820
    store float %accn_363834, float addrspace(0)* %fv_0_363487
    %_363838 = load float, float addrspace(0)* %fv_0_363491
    %_363841 = load float, float addrspace(0)* %_363785
    %_363844 = load float, float addrspace(0)* %_363763
    %_363849 = fmul fast float %_363844, %_363841
    %accn_363852 = fadd fast float %_363849, %_363838
    store float %accn_363852, float addrspace(0)* %fv_0_363491
    br label %head_363495, !llvm.loop !1001

new_exit_363502:
    %fv_10_363504 = add nuw nsw i32 1, %iv_363450
    %_363507 = load float, float addrspace(0)* %fv_0_363463
    %_363517.zext = zext i10 %_363515 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363517 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__363510, i64 0, i11 %_363517.zext
    %_363519 = load float, float addrspace(0)* %_363517
    %_363527.zext = zext i8 %_363511 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363527 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363525, i64 0, i9 %_363527.zext
    %_363529.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363529 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363527, i64 0, i3 %_363529.zext
    %_363533 = fadd fast float %_363507, %_363519
    %_363535 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363533)
    store float %_363535, float addrspace(0)* %_363529
    %_363539 = load float, float addrspace(0)* %fv_0_363467
    %_363545.zext = zext i10 %_363543 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363545 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__363510, i64 0, i11 %_363545.zext
    %_363547 = load float, float addrspace(0)* %_363545
    %_363550.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363550 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363527, i64 0, i3 %_363550.zext
    %_363554 = fadd fast float %_363539, %_363547
    %_363556 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363554)
    store float %_363556, float addrspace(0)* %_363550
    %_363560 = load float, float addrspace(0)* %fv_0_363471
    %_363566.zext = zext i10 %_363564 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363566 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__363510, i64 0, i11 %_363566.zext
    %_363568 = load float, float addrspace(0)* %_363566
    %_363571.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363571 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363527, i64 0, i3 %_363571.zext
    %_363575 = fadd fast float %_363560, %_363568
    %_363577 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363575)
    store float %_363577, float addrspace(0)* %_363571
    %_363581 = load float, float addrspace(0)* %fv_0_363475
    %_363587.zext = zext i10 %_363585 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363587 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__363510, i64 0, i11 %_363587.zext
    %_363589 = load float, float addrspace(0)* %_363587
    %_363592.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363592 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363527, i64 0, i3 %_363592.zext
    %_363596 = fadd fast float %_363581, %_363589
    %_363598 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363596)
    store float %_363598, float addrspace(0)* %_363592
    %_363602 = load float, float addrspace(0)* %fv_0_363479
    %_363605 = load float, float addrspace(0)* %_363517
    %_363610.zext = zext i8 %_363511 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363610 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363608, i64 0, i9 %_363610.zext
    %_363612.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363612 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363610, i64 0, i3 %_363612.zext
    %_363616 = fadd fast float %_363602, %_363605
    %_363618 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363616)
    store float %_363618, float addrspace(0)* %_363612
    %_363622 = load float, float addrspace(0)* %fv_0_363483
    %_363625 = load float, float addrspace(0)* %_363545
    %_363628.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363628 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363610, i64 0, i3 %_363628.zext
    %_363632 = fadd fast float %_363622, %_363625
    %_363634 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363632)
    store float %_363634, float addrspace(0)* %_363628
    %_363638 = load float, float addrspace(0)* %fv_0_363487
    %_363641 = load float, float addrspace(0)* %_363566
    %_363644.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363644 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363610, i64 0, i3 %_363644.zext
    %_363648 = fadd fast float %_363638, %_363641
    %_363650 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363648)
    store float %_363650, float addrspace(0)* %_363644
    %_363654 = load float, float addrspace(0)* %fv_0_363491
    %_363657 = load float, float addrspace(0)* %_363587
    %_363660.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363660 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363610, i64 0, i3 %_363660.zext
    %_363664 = fadd fast float %_363654, %_363657
    %_363666 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_363664)
    store float %_363666, float addrspace(0)* %_363660
    br label %head_363447

new_exit_363453:
    %fv_10_363455 = add nuw nsw i32 1, %iv_351875
    br label %head_351871

new_exit_351883:
    %_351886i8 = call i8* @malloc(i64 4194304)
    %_351886 = bitcast i8* %_351886i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351889i8 = call i8* @malloc(i64 32)
    %_351889 = bitcast i8* %_351889i8 to [8 x float] addrspace(0)*
    %fv_0_362780.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362780 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362780.zext
    %fv_0_362784.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362784 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362784.zext
    %fv_0_362788.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362788 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362788.zext
    %fv_0_362792.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362792 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362792.zext
    %fv_0_362796.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362796 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362796.zext
    %fv_0_362800.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362800 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362800.zext
    %fv_0_362804.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362804 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362804.zext
    %fv_0_362808.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362808 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351889, i64 0, i4 %fv_0_362808.zext
    br label %head_351892

head_351892:
    %iv_351895 = phi i32 [ 0, %new_exit_351883 ], [ %fv_10_362772, %new_exit_362770 ]
    %_351897 = icmp ult i32 %iv_351895, 512
    %_362838 = trunc i32 %iv_351895 to i9
    %_362998 = zext i9 %_362838 to i64
    %_363000 = mul i64 2048, %_362998
    %t_363224 = mul i64 2, %_362998
    %t_363226 = add i64 1, %t_363224
    %_363228 = mul i64 1024, %t_363226
    %_362840.zext = zext i9 %_362838 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362840 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362840.zext
    %_362842.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362842 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362840, i64 0, i2 %_362842.zext
    %_362925.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362925 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362840, i64 0, i2 %_362925.zext
    br i1 %_351897, label %new_body_362761, label %new_exit_351898

new_body_362761:
    br label %head_362764

head_362764:
    %iv_362767 = phi i32 [ 0, %new_body_362761 ], [ %fv_10_362821, %new_exit_362819 ]
    %_362769 = icmp ult i32 %iv_362767, 256
    %_362828 = trunc i32 %iv_362767 to i8
    %t_362829 = zext i8 %_362828 to i64
    %t_362831 = mul i64 4, %t_362829
    %_362832 = trunc i64 %t_362831 to i10
    %_363043.zext = zext i10 %_362832 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363043 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__363041, i64 0, i11 %_363043.zext
    %t_362859 = add i64 1, %t_362831
    %_362860 = trunc i64 %t_362859 to i10
    %_363097.zext = zext i10 %_362860 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363097 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__363041, i64 0, i11 %_363097.zext
    %t_362880 = add i64 2, %t_362831
    %_362881 = trunc i64 %t_362880 to i10
    %_363151.zext = zext i10 %_362881 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363151 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__363041, i64 0, i11 %_363151.zext
    %t_362901 = add i64 3, %t_362831
    %_362902 = trunc i64 %t_362901 to i10
    %_363205.zext = zext i10 %_362902 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363205 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__363041, i64 0, i11 %_363205.zext
    br i1 %_362769, label %new_body_362776, label %new_exit_362770

new_body_362776:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362780
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362784
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362788
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362792
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362796
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362800
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362804
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362808
    br label %head_362812, !llvm.loop !1002

head_362812:
    %iv_362815 = phi i32 [ 0, %new_body_362776 ], [ %fv_9_362990, %new_body_362988 ]
    %_362817 = icmp ult i32 %iv_362815, 1024
    br i1 %_362817, label %new_body_362988, label %new_exit_362819

new_body_362988:
    %fv_9_362990 = add nuw nsw i32 1, %iv_362815
    %_362993 = load float, float addrspace(0)* %fv_0_362780
    %_362996 = trunc i32 %iv_362815 to i10
    %_362997 = zext i10 %_362996 to i64
    %_363002 = add i64 %_362997, %_363000
    %_363005 = udiv i64 %_363002, 2048
    %_363010 = urem i64 %_363005, 512
    %_363012 = trunc i64 %_363010 to i9
    %_363014.zext = zext i9 %_363012 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363014 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363014.zext
    %_363016.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363016 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363014, i64 0, i2 %_363016.zext
    %_363020 = udiv i64 %_363002, 4
    %_363025 = urem i64 %_363020, 256
    %_363027 = trunc i64 %_363025 to i8
    %_363029.zext = zext i8 %_363027 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363029 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363016, i64 0, i9 %_363029.zext
    %_363032 = urem i64 %_363002, 4
    %_363034 = trunc i64 %_363032 to i2
    %_363036.zext = zext i2 %_363034 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363036 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363029, i64 0, i3 %_363036.zext
    %_363038 = load float, float addrspace(0)* %_363036
    %_363045.zext = zext i10 %_362996 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363045 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_363043, i64 0, i11 %_363045.zext
    %_363047 = load float, float addrspace(0)* %_363045
    %_363052 = fmul fast float %_363047, %_363038
    %accn_363055 = fadd fast float %_363052, %_362993
    store float %accn_363055, float addrspace(0)* %fv_0_362780
    %_363059 = load float, float addrspace(0)* %fv_0_362784
    %_363062 = udiv i64 %_363002, 2048
    %_363067 = urem i64 %_363062, 512
    %_363069 = trunc i64 %_363067 to i9
    %_363071.zext = zext i9 %_363069 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363071 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363071.zext
    %_363073.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363073 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363071, i64 0, i2 %_363073.zext
    %_363076 = udiv i64 %_363002, 4
    %_363081 = urem i64 %_363076, 256
    %_363083 = trunc i64 %_363081 to i8
    %_363085.zext = zext i8 %_363083 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363085 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363073, i64 0, i9 %_363085.zext
    %_363088 = urem i64 %_363002, 4
    %_363090 = trunc i64 %_363088 to i2
    %_363092.zext = zext i2 %_363090 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363092 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363085, i64 0, i3 %_363092.zext
    %_363094 = load float, float addrspace(0)* %_363092
    %_363099.zext = zext i10 %_362996 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363099 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_363097, i64 0, i11 %_363099.zext
    %_363101 = load float, float addrspace(0)* %_363099
    %_363106 = fmul fast float %_363101, %_363094
    %accn_363109 = fadd fast float %_363106, %_363059
    store float %accn_363109, float addrspace(0)* %fv_0_362784
    %_363113 = load float, float addrspace(0)* %fv_0_362788
    %_363116 = udiv i64 %_363002, 2048
    %_363121 = urem i64 %_363116, 512
    %_363123 = trunc i64 %_363121 to i9
    %_363125.zext = zext i9 %_363123 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363125 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363125.zext
    %_363127.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363127 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363125, i64 0, i2 %_363127.zext
    %_363130 = udiv i64 %_363002, 4
    %_363135 = urem i64 %_363130, 256
    %_363137 = trunc i64 %_363135 to i8
    %_363139.zext = zext i8 %_363137 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363139 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363127, i64 0, i9 %_363139.zext
    %_363142 = urem i64 %_363002, 4
    %_363144 = trunc i64 %_363142 to i2
    %_363146.zext = zext i2 %_363144 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363146 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363139, i64 0, i3 %_363146.zext
    %_363148 = load float, float addrspace(0)* %_363146
    %_363153.zext = zext i10 %_362996 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363153 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_363151, i64 0, i11 %_363153.zext
    %_363155 = load float, float addrspace(0)* %_363153
    %_363160 = fmul fast float %_363155, %_363148
    %accn_363163 = fadd fast float %_363160, %_363113
    store float %accn_363163, float addrspace(0)* %fv_0_362788
    %_363167 = load float, float addrspace(0)* %fv_0_362792
    %_363170 = udiv i64 %_363002, 2048
    %_363175 = urem i64 %_363170, 512
    %_363177 = trunc i64 %_363175 to i9
    %_363179.zext = zext i9 %_363177 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363179 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363179.zext
    %_363181.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363181 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363179, i64 0, i2 %_363181.zext
    %_363184 = udiv i64 %_363002, 4
    %_363189 = urem i64 %_363184, 256
    %_363191 = trunc i64 %_363189 to i8
    %_363193.zext = zext i8 %_363191 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363193 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363181, i64 0, i9 %_363193.zext
    %_363196 = urem i64 %_363002, 4
    %_363198 = trunc i64 %_363196 to i2
    %_363200.zext = zext i2 %_363198 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363200 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363193, i64 0, i3 %_363200.zext
    %_363202 = load float, float addrspace(0)* %_363200
    %_363207.zext = zext i10 %_362996 to i11 ; add one more bit for gep index as it is treated as signed value
    %_363207 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_363205, i64 0, i11 %_363207.zext
    %_363209 = load float, float addrspace(0)* %_363207
    %_363214 = fmul fast float %_363209, %_363202
    %accn_363217 = fadd fast float %_363214, %_363167
    store float %accn_363217, float addrspace(0)* %fv_0_362792
    %_363221 = load float, float addrspace(0)* %fv_0_362796
    %_363230 = add i64 %_362997, %_363228
    %_363233 = udiv i64 %_363230, 2048
    %_363238 = urem i64 %_363233, 512
    %_363240 = trunc i64 %_363238 to i9
    %_363242.zext = zext i9 %_363240 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363242 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363242.zext
    %_363244.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363244 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363242, i64 0, i2 %_363244.zext
    %_363248 = udiv i64 %_363230, 4
    %_363253 = urem i64 %_363248, 256
    %_363255 = trunc i64 %_363253 to i8
    %_363257.zext = zext i8 %_363255 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363257 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363244, i64 0, i9 %_363257.zext
    %_363260 = urem i64 %_363230, 4
    %_363262 = trunc i64 %_363260 to i2
    %_363264.zext = zext i2 %_363262 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363264 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363257, i64 0, i3 %_363264.zext
    %_363266 = load float, float addrspace(0)* %_363264
    %_363269 = load float, float addrspace(0)* %_363045
    %_363274 = fmul fast float %_363269, %_363266
    %accn_363277 = fadd fast float %_363274, %_363221
    store float %accn_363277, float addrspace(0)* %fv_0_362796
    %_363281 = load float, float addrspace(0)* %fv_0_362800
    %_363284 = udiv i64 %_363230, 2048
    %_363289 = urem i64 %_363284, 512
    %_363291 = trunc i64 %_363289 to i9
    %_363293.zext = zext i9 %_363291 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363293 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363293.zext
    %_363295.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363295 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363293, i64 0, i2 %_363295.zext
    %_363298 = udiv i64 %_363230, 4
    %_363303 = urem i64 %_363298, 256
    %_363305 = trunc i64 %_363303 to i8
    %_363307.zext = zext i8 %_363305 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363307 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363295, i64 0, i9 %_363307.zext
    %_363310 = urem i64 %_363230, 4
    %_363312 = trunc i64 %_363310 to i2
    %_363314.zext = zext i2 %_363312 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363314 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363307, i64 0, i3 %_363314.zext
    %_363316 = load float, float addrspace(0)* %_363314
    %_363319 = load float, float addrspace(0)* %_363099
    %_363324 = fmul fast float %_363319, %_363316
    %accn_363327 = fadd fast float %_363324, %_363281
    store float %accn_363327, float addrspace(0)* %fv_0_362800
    %_363331 = load float, float addrspace(0)* %fv_0_362804
    %_363334 = udiv i64 %_363230, 2048
    %_363339 = urem i64 %_363334, 512
    %_363341 = trunc i64 %_363339 to i9
    %_363343.zext = zext i9 %_363341 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363343 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363343.zext
    %_363345.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363345 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363343, i64 0, i2 %_363345.zext
    %_363348 = udiv i64 %_363230, 4
    %_363353 = urem i64 %_363348, 256
    %_363355 = trunc i64 %_363353 to i8
    %_363357.zext = zext i8 %_363355 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363357 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363345, i64 0, i9 %_363357.zext
    %_363360 = urem i64 %_363230, 4
    %_363362 = trunc i64 %_363360 to i2
    %_363364.zext = zext i2 %_363362 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363364 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363357, i64 0, i3 %_363364.zext
    %_363366 = load float, float addrspace(0)* %_363364
    %_363369 = load float, float addrspace(0)* %_363153
    %_363374 = fmul fast float %_363369, %_363366
    %accn_363377 = fadd fast float %_363374, %_363331
    store float %accn_363377, float addrspace(0)* %fv_0_362804
    %_363381 = load float, float addrspace(0)* %fv_0_362808
    %_363384 = udiv i64 %_363230, 2048
    %_363389 = urem i64 %_363384, 512
    %_363391 = trunc i64 %_363389 to i9
    %_363393.zext = zext i9 %_363391 to i10 ; add one more bit for gep index as it is treated as signed value
    %_363393 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351857, i64 0, i10 %_363393.zext
    %_363395.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_363395 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_363393, i64 0, i2 %_363395.zext
    %_363398 = udiv i64 %_363230, 4
    %_363403 = urem i64 %_363398, 256
    %_363405 = trunc i64 %_363403 to i8
    %_363407.zext = zext i8 %_363405 to i9 ; add one more bit for gep index as it is treated as signed value
    %_363407 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_363395, i64 0, i9 %_363407.zext
    %_363410 = urem i64 %_363230, 4
    %_363412 = trunc i64 %_363410 to i2
    %_363414.zext = zext i2 %_363412 to i3 ; add one more bit for gep index as it is treated as signed value
    %_363414 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_363407, i64 0, i3 %_363414.zext
    %_363416 = load float, float addrspace(0)* %_363414
    %_363419 = load float, float addrspace(0)* %_363207
    %_363424 = fmul fast float %_363419, %_363416
    %accn_363427 = fadd fast float %_363424, %_363381
    store float %accn_363427, float addrspace(0)* %fv_0_362808
    br label %head_362812, !llvm.loop !1002

new_exit_362819:
    %fv_10_362821 = add nuw nsw i32 1, %iv_362767
    %_362824 = load float, float addrspace(0)* %fv_0_362780
    %_362834.zext = zext i10 %_362832 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362834 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__362827, i64 0, i11 %_362834.zext
    %_362836 = load float, float addrspace(0)* %_362834
    %_362844.zext = zext i8 %_362828 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362844 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362842, i64 0, i9 %_362844.zext
    %_362846.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362846 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362844, i64 0, i3 %_362846.zext
    %_362850 = fadd fast float %_362824, %_362836
    %_362852 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362850)
    store float %_362852, float addrspace(0)* %_362846
    %_362856 = load float, float addrspace(0)* %fv_0_362784
    %_362862.zext = zext i10 %_362860 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362862 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__362827, i64 0, i11 %_362862.zext
    %_362864 = load float, float addrspace(0)* %_362862
    %_362867.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362867 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362844, i64 0, i3 %_362867.zext
    %_362871 = fadd fast float %_362856, %_362864
    %_362873 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362871)
    store float %_362873, float addrspace(0)* %_362867
    %_362877 = load float, float addrspace(0)* %fv_0_362788
    %_362883.zext = zext i10 %_362881 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362883 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__362827, i64 0, i11 %_362883.zext
    %_362885 = load float, float addrspace(0)* %_362883
    %_362888.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362888 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362844, i64 0, i3 %_362888.zext
    %_362892 = fadd fast float %_362877, %_362885
    %_362894 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362892)
    store float %_362894, float addrspace(0)* %_362888
    %_362898 = load float, float addrspace(0)* %fv_0_362792
    %_362904.zext = zext i10 %_362902 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362904 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__362827, i64 0, i11 %_362904.zext
    %_362906 = load float, float addrspace(0)* %_362904
    %_362909.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362909 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362844, i64 0, i3 %_362909.zext
    %_362913 = fadd fast float %_362898, %_362906
    %_362915 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362913)
    store float %_362915, float addrspace(0)* %_362909
    %_362919 = load float, float addrspace(0)* %fv_0_362796
    %_362922 = load float, float addrspace(0)* %_362834
    %_362927.zext = zext i8 %_362828 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362927 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362925, i64 0, i9 %_362927.zext
    %_362929.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362929 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362927, i64 0, i3 %_362929.zext
    %_362933 = fadd fast float %_362919, %_362922
    %_362935 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362933)
    store float %_362935, float addrspace(0)* %_362929
    %_362939 = load float, float addrspace(0)* %fv_0_362800
    %_362942 = load float, float addrspace(0)* %_362862
    %_362945.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362945 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362927, i64 0, i3 %_362945.zext
    %_362949 = fadd fast float %_362939, %_362942
    %_362951 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362949)
    store float %_362951, float addrspace(0)* %_362945
    %_362955 = load float, float addrspace(0)* %fv_0_362804
    %_362958 = load float, float addrspace(0)* %_362883
    %_362961.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362961 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362927, i64 0, i3 %_362961.zext
    %_362965 = fadd fast float %_362955, %_362958
    %_362967 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362965)
    store float %_362967, float addrspace(0)* %_362961
    %_362971 = load float, float addrspace(0)* %fv_0_362808
    %_362974 = load float, float addrspace(0)* %_362904
    %_362977.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362977 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362927, i64 0, i3 %_362977.zext
    %_362981 = fadd fast float %_362971, %_362974
    %_362983 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362981)
    store float %_362983, float addrspace(0)* %_362977
    br label %head_362764

new_exit_362770:
    %fv_10_362772 = add nuw nsw i32 1, %iv_351895
    br label %head_351892

new_exit_351898:
    %_351901i8 = call i8* @malloc(i64 4194304)
    %_351901 = bitcast i8* %_351901i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351904i8 = call i8* @malloc(i64 32)
    %_351904 = bitcast i8* %_351904i8 to [8 x float] addrspace(0)*
    %fv_0_362097.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362097 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362097.zext
    %fv_0_362101.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362101 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362101.zext
    %fv_0_362105.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362105 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362105.zext
    %fv_0_362109.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362109 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362109.zext
    %fv_0_362113.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362113 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362113.zext
    %fv_0_362117.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362117 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362117.zext
    %fv_0_362121.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362121 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362121.zext
    %fv_0_362125.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_362125 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351904, i64 0, i4 %fv_0_362125.zext
    br label %head_351907

head_351907:
    %iv_351910 = phi i32 [ 0, %new_exit_351898 ], [ %fv_10_362089, %new_exit_362087 ]
    %_351912 = icmp ult i32 %iv_351910, 512
    %_362155 = trunc i32 %iv_351910 to i9
    %_362315 = zext i9 %_362155 to i64
    %_362317 = mul i64 2048, %_362315
    %t_362541 = mul i64 2, %_362315
    %t_362543 = add i64 1, %t_362541
    %_362545 = mul i64 1024, %t_362543
    %_362157.zext = zext i9 %_362155 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362157 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_362157.zext
    %_362159.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362159 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362157, i64 0, i2 %_362159.zext
    %_362242.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362242 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362157, i64 0, i2 %_362242.zext
    br i1 %_351912, label %new_body_362078, label %new_exit_351913

new_body_362078:
    br label %head_362081

head_362081:
    %iv_362084 = phi i32 [ 0, %new_body_362078 ], [ %fv_10_362138, %new_exit_362136 ]
    %_362086 = icmp ult i32 %iv_362084, 256
    %_362145 = trunc i32 %iv_362084 to i8
    %t_362146 = zext i8 %_362145 to i64
    %t_362148 = mul i64 4, %t_362146
    %_362149 = trunc i64 %t_362148 to i10
    %_362360.zext = zext i10 %_362149 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362360 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__362358, i64 0, i11 %_362360.zext
    %t_362176 = add i64 1, %t_362148
    %_362177 = trunc i64 %t_362176 to i10
    %_362414.zext = zext i10 %_362177 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362414 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__362358, i64 0, i11 %_362414.zext
    %t_362197 = add i64 2, %t_362148
    %_362198 = trunc i64 %t_362197 to i10
    %_362468.zext = zext i10 %_362198 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362468 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__362358, i64 0, i11 %_362468.zext
    %t_362218 = add i64 3, %t_362148
    %_362219 = trunc i64 %t_362218 to i10
    %_362522.zext = zext i10 %_362219 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362522 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__362358, i64 0, i11 %_362522.zext
    br i1 %_362086, label %new_body_362093, label %new_exit_362087

new_body_362093:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362097
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362101
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362105
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362109
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362113
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362117
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362121
    store float 0x0000000000000000, float addrspace(0)* %fv_0_362125
    br label %head_362129, !llvm.loop !1003

head_362129:
    %iv_362132 = phi i32 [ 0, %new_body_362093 ], [ %fv_9_362307, %new_body_362305 ]
    %_362134 = icmp ult i32 %iv_362132, 1024
    br i1 %_362134, label %new_body_362305, label %new_exit_362136

new_body_362305:
    %fv_9_362307 = add nuw nsw i32 1, %iv_362132
    %_362310 = load float, float addrspace(0)* %fv_0_362097
    %_362313 = trunc i32 %iv_362132 to i10
    %_362314 = zext i10 %_362313 to i64
    %_362319 = add i64 %_362314, %_362317
    %_362322 = udiv i64 %_362319, 2048
    %_362327 = urem i64 %_362322, 512
    %_362329 = trunc i64 %_362327 to i9
    %_362331.zext = zext i9 %_362329 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362331 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362331.zext
    %_362333.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362333 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362331, i64 0, i2 %_362333.zext
    %_362337 = udiv i64 %_362319, 4
    %_362342 = urem i64 %_362337, 256
    %_362344 = trunc i64 %_362342 to i8
    %_362346.zext = zext i8 %_362344 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362346 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362333, i64 0, i9 %_362346.zext
    %_362349 = urem i64 %_362319, 4
    %_362351 = trunc i64 %_362349 to i2
    %_362353.zext = zext i2 %_362351 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362353 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362346, i64 0, i3 %_362353.zext
    %_362355 = load float, float addrspace(0)* %_362353
    %_362362.zext = zext i10 %_362313 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362362 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_362360, i64 0, i11 %_362362.zext
    %_362364 = load float, float addrspace(0)* %_362362
    %_362369 = fmul fast float %_362364, %_362355
    %accn_362372 = fadd fast float %_362369, %_362310
    store float %accn_362372, float addrspace(0)* %fv_0_362097
    %_362376 = load float, float addrspace(0)* %fv_0_362101
    %_362379 = udiv i64 %_362319, 2048
    %_362384 = urem i64 %_362379, 512
    %_362386 = trunc i64 %_362384 to i9
    %_362388.zext = zext i9 %_362386 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362388 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362388.zext
    %_362390.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362390 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362388, i64 0, i2 %_362390.zext
    %_362393 = udiv i64 %_362319, 4
    %_362398 = urem i64 %_362393, 256
    %_362400 = trunc i64 %_362398 to i8
    %_362402.zext = zext i8 %_362400 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362402 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362390, i64 0, i9 %_362402.zext
    %_362405 = urem i64 %_362319, 4
    %_362407 = trunc i64 %_362405 to i2
    %_362409.zext = zext i2 %_362407 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362409 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362402, i64 0, i3 %_362409.zext
    %_362411 = load float, float addrspace(0)* %_362409
    %_362416.zext = zext i10 %_362313 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362416 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_362414, i64 0, i11 %_362416.zext
    %_362418 = load float, float addrspace(0)* %_362416
    %_362423 = fmul fast float %_362418, %_362411
    %accn_362426 = fadd fast float %_362423, %_362376
    store float %accn_362426, float addrspace(0)* %fv_0_362101
    %_362430 = load float, float addrspace(0)* %fv_0_362105
    %_362433 = udiv i64 %_362319, 2048
    %_362438 = urem i64 %_362433, 512
    %_362440 = trunc i64 %_362438 to i9
    %_362442.zext = zext i9 %_362440 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362442 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362442.zext
    %_362444.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362444 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362442, i64 0, i2 %_362444.zext
    %_362447 = udiv i64 %_362319, 4
    %_362452 = urem i64 %_362447, 256
    %_362454 = trunc i64 %_362452 to i8
    %_362456.zext = zext i8 %_362454 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362456 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362444, i64 0, i9 %_362456.zext
    %_362459 = urem i64 %_362319, 4
    %_362461 = trunc i64 %_362459 to i2
    %_362463.zext = zext i2 %_362461 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362463 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362456, i64 0, i3 %_362463.zext
    %_362465 = load float, float addrspace(0)* %_362463
    %_362470.zext = zext i10 %_362313 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362470 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_362468, i64 0, i11 %_362470.zext
    %_362472 = load float, float addrspace(0)* %_362470
    %_362477 = fmul fast float %_362472, %_362465
    %accn_362480 = fadd fast float %_362477, %_362430
    store float %accn_362480, float addrspace(0)* %fv_0_362105
    %_362484 = load float, float addrspace(0)* %fv_0_362109
    %_362487 = udiv i64 %_362319, 2048
    %_362492 = urem i64 %_362487, 512
    %_362494 = trunc i64 %_362492 to i9
    %_362496.zext = zext i9 %_362494 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362496 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362496.zext
    %_362498.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362498 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362496, i64 0, i2 %_362498.zext
    %_362501 = udiv i64 %_362319, 4
    %_362506 = urem i64 %_362501, 256
    %_362508 = trunc i64 %_362506 to i8
    %_362510.zext = zext i8 %_362508 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362510 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362498, i64 0, i9 %_362510.zext
    %_362513 = urem i64 %_362319, 4
    %_362515 = trunc i64 %_362513 to i2
    %_362517.zext = zext i2 %_362515 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362517 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362510, i64 0, i3 %_362517.zext
    %_362519 = load float, float addrspace(0)* %_362517
    %_362524.zext = zext i10 %_362313 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362524 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_362522, i64 0, i11 %_362524.zext
    %_362526 = load float, float addrspace(0)* %_362524
    %_362531 = fmul fast float %_362526, %_362519
    %accn_362534 = fadd fast float %_362531, %_362484
    store float %accn_362534, float addrspace(0)* %fv_0_362109
    %_362538 = load float, float addrspace(0)* %fv_0_362113
    %_362547 = add i64 %_362314, %_362545
    %_362550 = udiv i64 %_362547, 2048
    %_362555 = urem i64 %_362550, 512
    %_362557 = trunc i64 %_362555 to i9
    %_362559.zext = zext i9 %_362557 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362559 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362559.zext
    %_362561.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362561 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362559, i64 0, i2 %_362561.zext
    %_362565 = udiv i64 %_362547, 4
    %_362570 = urem i64 %_362565, 256
    %_362572 = trunc i64 %_362570 to i8
    %_362574.zext = zext i8 %_362572 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362574 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362561, i64 0, i9 %_362574.zext
    %_362577 = urem i64 %_362547, 4
    %_362579 = trunc i64 %_362577 to i2
    %_362581.zext = zext i2 %_362579 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362581 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362574, i64 0, i3 %_362581.zext
    %_362583 = load float, float addrspace(0)* %_362581
    %_362586 = load float, float addrspace(0)* %_362362
    %_362591 = fmul fast float %_362586, %_362583
    %accn_362594 = fadd fast float %_362591, %_362538
    store float %accn_362594, float addrspace(0)* %fv_0_362113
    %_362598 = load float, float addrspace(0)* %fv_0_362117
    %_362601 = udiv i64 %_362547, 2048
    %_362606 = urem i64 %_362601, 512
    %_362608 = trunc i64 %_362606 to i9
    %_362610.zext = zext i9 %_362608 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362610 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362610.zext
    %_362612.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362612 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362610, i64 0, i2 %_362612.zext
    %_362615 = udiv i64 %_362547, 4
    %_362620 = urem i64 %_362615, 256
    %_362622 = trunc i64 %_362620 to i8
    %_362624.zext = zext i8 %_362622 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362624 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362612, i64 0, i9 %_362624.zext
    %_362627 = urem i64 %_362547, 4
    %_362629 = trunc i64 %_362627 to i2
    %_362631.zext = zext i2 %_362629 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362631 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362624, i64 0, i3 %_362631.zext
    %_362633 = load float, float addrspace(0)* %_362631
    %_362636 = load float, float addrspace(0)* %_362416
    %_362641 = fmul fast float %_362636, %_362633
    %accn_362644 = fadd fast float %_362641, %_362598
    store float %accn_362644, float addrspace(0)* %fv_0_362117
    %_362648 = load float, float addrspace(0)* %fv_0_362121
    %_362651 = udiv i64 %_362547, 2048
    %_362656 = urem i64 %_362651, 512
    %_362658 = trunc i64 %_362656 to i9
    %_362660.zext = zext i9 %_362658 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362660 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362660.zext
    %_362662.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362662 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362660, i64 0, i2 %_362662.zext
    %_362665 = udiv i64 %_362547, 4
    %_362670 = urem i64 %_362665, 256
    %_362672 = trunc i64 %_362670 to i8
    %_362674.zext = zext i8 %_362672 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362674 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362662, i64 0, i9 %_362674.zext
    %_362677 = urem i64 %_362547, 4
    %_362679 = trunc i64 %_362677 to i2
    %_362681.zext = zext i2 %_362679 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362681 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362674, i64 0, i3 %_362681.zext
    %_362683 = load float, float addrspace(0)* %_362681
    %_362686 = load float, float addrspace(0)* %_362470
    %_362691 = fmul fast float %_362686, %_362683
    %accn_362694 = fadd fast float %_362691, %_362648
    store float %accn_362694, float addrspace(0)* %fv_0_362121
    %_362698 = load float, float addrspace(0)* %fv_0_362125
    %_362701 = udiv i64 %_362547, 2048
    %_362706 = urem i64 %_362701, 512
    %_362708 = trunc i64 %_362706 to i9
    %_362710.zext = zext i9 %_362708 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362710 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351886, i64 0, i10 %_362710.zext
    %_362712.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362712 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362710, i64 0, i2 %_362712.zext
    %_362715 = udiv i64 %_362547, 4
    %_362720 = urem i64 %_362715, 256
    %_362722 = trunc i64 %_362720 to i8
    %_362724.zext = zext i8 %_362722 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362724 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362712, i64 0, i9 %_362724.zext
    %_362727 = urem i64 %_362547, 4
    %_362729 = trunc i64 %_362727 to i2
    %_362731.zext = zext i2 %_362729 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362731 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362724, i64 0, i3 %_362731.zext
    %_362733 = load float, float addrspace(0)* %_362731
    %_362736 = load float, float addrspace(0)* %_362524
    %_362741 = fmul fast float %_362736, %_362733
    %accn_362744 = fadd fast float %_362741, %_362698
    store float %accn_362744, float addrspace(0)* %fv_0_362125
    br label %head_362129, !llvm.loop !1003

new_exit_362136:
    %fv_10_362138 = add nuw nsw i32 1, %iv_362084
    %_362141 = load float, float addrspace(0)* %fv_0_362097
    %_362151.zext = zext i10 %_362149 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362151 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__362144, i64 0, i11 %_362151.zext
    %_362153 = load float, float addrspace(0)* %_362151
    %_362161.zext = zext i8 %_362145 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362161 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362159, i64 0, i9 %_362161.zext
    %_362163.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362163 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362161, i64 0, i3 %_362163.zext
    %_362167 = fadd fast float %_362141, %_362153
    %_362169 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362167)
    store float %_362169, float addrspace(0)* %_362163
    %_362173 = load float, float addrspace(0)* %fv_0_362101
    %_362179.zext = zext i10 %_362177 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362179 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__362144, i64 0, i11 %_362179.zext
    %_362181 = load float, float addrspace(0)* %_362179
    %_362184.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362184 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362161, i64 0, i3 %_362184.zext
    %_362188 = fadd fast float %_362173, %_362181
    %_362190 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362188)
    store float %_362190, float addrspace(0)* %_362184
    %_362194 = load float, float addrspace(0)* %fv_0_362105
    %_362200.zext = zext i10 %_362198 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362200 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__362144, i64 0, i11 %_362200.zext
    %_362202 = load float, float addrspace(0)* %_362200
    %_362205.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362205 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362161, i64 0, i3 %_362205.zext
    %_362209 = fadd fast float %_362194, %_362202
    %_362211 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362209)
    store float %_362211, float addrspace(0)* %_362205
    %_362215 = load float, float addrspace(0)* %fv_0_362109
    %_362221.zext = zext i10 %_362219 to i11 ; add one more bit for gep index as it is treated as signed value
    %_362221 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__362144, i64 0, i11 %_362221.zext
    %_362223 = load float, float addrspace(0)* %_362221
    %_362226.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362226 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362161, i64 0, i3 %_362226.zext
    %_362230 = fadd fast float %_362215, %_362223
    %_362232 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362230)
    store float %_362232, float addrspace(0)* %_362226
    %_362236 = load float, float addrspace(0)* %fv_0_362113
    %_362239 = load float, float addrspace(0)* %_362151
    %_362244.zext = zext i8 %_362145 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362244 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362242, i64 0, i9 %_362244.zext
    %_362246.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362246 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362244, i64 0, i3 %_362246.zext
    %_362250 = fadd fast float %_362236, %_362239
    %_362252 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362250)
    store float %_362252, float addrspace(0)* %_362246
    %_362256 = load float, float addrspace(0)* %fv_0_362117
    %_362259 = load float, float addrspace(0)* %_362179
    %_362262.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362262 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362244, i64 0, i3 %_362262.zext
    %_362266 = fadd fast float %_362256, %_362259
    %_362268 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362266)
    store float %_362268, float addrspace(0)* %_362262
    %_362272 = load float, float addrspace(0)* %fv_0_362121
    %_362275 = load float, float addrspace(0)* %_362200
    %_362278.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362278 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362244, i64 0, i3 %_362278.zext
    %_362282 = fadd fast float %_362272, %_362275
    %_362284 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362282)
    store float %_362284, float addrspace(0)* %_362278
    %_362288 = load float, float addrspace(0)* %fv_0_362125
    %_362291 = load float, float addrspace(0)* %_362221
    %_362294.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362294 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362244, i64 0, i3 %_362294.zext
    %_362298 = fadd fast float %_362288, %_362291
    %_362300 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_362298)
    store float %_362300, float addrspace(0)* %_362294
    br label %head_362081

new_exit_362087:
    %fv_10_362089 = add nuw nsw i32 1, %iv_351910
    br label %head_351907

new_exit_351913:
    %_351916i8 = call i8* @malloc(i64 4194304)
    %_351916 = bitcast i8* %_351916i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351919i8 = call i8* @malloc(i64 32)
    %_351919 = bitcast i8* %_351919i8 to [8 x float] addrspace(0)*
    %fv_0_361414.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361414 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361414.zext
    %fv_0_361418.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361418 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361418.zext
    %fv_0_361422.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361422 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361422.zext
    %fv_0_361426.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361426 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361426.zext
    %fv_0_361430.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361430 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361430.zext
    %fv_0_361434.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361434 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361434.zext
    %fv_0_361438.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361438 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361438.zext
    %fv_0_361442.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_361442 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351919, i64 0, i4 %fv_0_361442.zext
    br label %head_351922

head_351922:
    %iv_351925 = phi i32 [ 0, %new_exit_351913 ], [ %fv_10_361406, %new_exit_361404 ]
    %_351927 = icmp ult i32 %iv_351925, 512
    %_361472 = trunc i32 %iv_351925 to i9
    %_361632 = zext i9 %_361472 to i64
    %_361634 = mul i64 2048, %_361632
    %t_361858 = mul i64 2, %_361632
    %t_361860 = add i64 1, %t_361858
    %_361862 = mul i64 1024, %t_361860
    %_361474.zext = zext i9 %_361472 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361474 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361474.zext
    %_361476.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361476 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361474, i64 0, i2 %_361476.zext
    %_361559.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361559 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361474, i64 0, i2 %_361559.zext
    br i1 %_351927, label %new_body_361395, label %new_exit_351928

new_body_361395:
    br label %head_361398

head_361398:
    %iv_361401 = phi i32 [ 0, %new_body_361395 ], [ %fv_10_361455, %new_exit_361453 ]
    %_361403 = icmp ult i32 %iv_361401, 256
    %_361462 = trunc i32 %iv_361401 to i8
    %t_361463 = zext i8 %_361462 to i64
    %t_361465 = mul i64 4, %t_361463
    %_361466 = trunc i64 %t_361465 to i10
    %_361677.zext = zext i10 %_361466 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361677 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_6_parameters_weight__361675, i64 0, i11 %_361677.zext
    %t_361493 = add i64 1, %t_361465
    %_361494 = trunc i64 %t_361493 to i10
    %_361731.zext = zext i10 %_361494 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361731 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_6_parameters_weight__361675, i64 0, i11 %_361731.zext
    %t_361514 = add i64 2, %t_361465
    %_361515 = trunc i64 %t_361514 to i10
    %_361785.zext = zext i10 %_361515 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361785 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_6_parameters_weight__361675, i64 0, i11 %_361785.zext
    %t_361535 = add i64 3, %t_361465
    %_361536 = trunc i64 %t_361535 to i10
    %_361839.zext = zext i10 %_361536 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361839 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_6_parameters_weight__361675, i64 0, i11 %_361839.zext
    br i1 %_361403, label %new_body_361410, label %new_exit_361404

new_body_361410:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361414
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361418
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361422
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361426
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361430
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361434
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361438
    store float 0x0000000000000000, float addrspace(0)* %fv_0_361442
    br label %head_361446, !llvm.loop !1004

head_361446:
    %iv_361449 = phi i32 [ 0, %new_body_361410 ], [ %fv_9_361624, %new_body_361622 ]
    %_361451 = icmp ult i32 %iv_361449, 1024
    br i1 %_361451, label %new_body_361622, label %new_exit_361453

new_body_361622:
    %fv_9_361624 = add nuw nsw i32 1, %iv_361449
    %_361627 = load float, float addrspace(0)* %fv_0_361414
    %_361630 = trunc i32 %iv_361449 to i10
    %_361631 = zext i10 %_361630 to i64
    %_361636 = add i64 %_361631, %_361634
    %_361639 = udiv i64 %_361636, 2048
    %_361644 = urem i64 %_361639, 512
    %_361646 = trunc i64 %_361644 to i9
    %_361648.zext = zext i9 %_361646 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361648 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_361648.zext
    %_361650.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361650 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361648, i64 0, i2 %_361650.zext
    %_361654 = udiv i64 %_361636, 4
    %_361659 = urem i64 %_361654, 256
    %_361661 = trunc i64 %_361659 to i8
    %_361663.zext = zext i8 %_361661 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361663 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361650, i64 0, i9 %_361663.zext
    %_361666 = urem i64 %_361636, 4
    %_361668 = trunc i64 %_361666 to i2
    %_361670.zext = zext i2 %_361668 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361670 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361663, i64 0, i3 %_361670.zext
    %_361672 = load float, float addrspace(0)* %_361670
    %_361679.zext = zext i10 %_361630 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361679 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_361677, i64 0, i11 %_361679.zext
    %_361681 = load float, float addrspace(0)* %_361679
    %_361686 = fmul fast float %_361681, %_361672
    %accn_361689 = fadd fast float %_361686, %_361627
    store float %accn_361689, float addrspace(0)* %fv_0_361414
    %_361693 = load float, float addrspace(0)* %fv_0_361418
    %_361696 = udiv i64 %_361636, 2048
    %_361701 = urem i64 %_361696, 512
    %_361703 = trunc i64 %_361701 to i9
    %_361705.zext = zext i9 %_361703 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361705 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_361705.zext
    %_361707.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361707 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361705, i64 0, i2 %_361707.zext
    %_361710 = udiv i64 %_361636, 4
    %_361715 = urem i64 %_361710, 256
    %_361717 = trunc i64 %_361715 to i8
    %_361719.zext = zext i8 %_361717 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361719 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361707, i64 0, i9 %_361719.zext
    %_361722 = urem i64 %_361636, 4
    %_361724 = trunc i64 %_361722 to i2
    %_361726.zext = zext i2 %_361724 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361726 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361719, i64 0, i3 %_361726.zext
    %_361728 = load float, float addrspace(0)* %_361726
    %_361733.zext = zext i10 %_361630 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361733 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_361731, i64 0, i11 %_361733.zext
    %_361735 = load float, float addrspace(0)* %_361733
    %_361740 = fmul fast float %_361735, %_361728
    %accn_361743 = fadd fast float %_361740, %_361693
    store float %accn_361743, float addrspace(0)* %fv_0_361418
    %_361747 = load float, float addrspace(0)* %fv_0_361422
    %_361750 = udiv i64 %_361636, 2048
    %_361755 = urem i64 %_361750, 512
    %_361757 = trunc i64 %_361755 to i9
    %_361759.zext = zext i9 %_361757 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361759 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_361759.zext
    %_361761.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361761 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361759, i64 0, i2 %_361761.zext
    %_361764 = udiv i64 %_361636, 4
    %_361769 = urem i64 %_361764, 256
    %_361771 = trunc i64 %_361769 to i8
    %_361773.zext = zext i8 %_361771 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361773 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361761, i64 0, i9 %_361773.zext
    %_361776 = urem i64 %_361636, 4
    %_361778 = trunc i64 %_361776 to i2
    %_361780.zext = zext i2 %_361778 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361780 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361773, i64 0, i3 %_361780.zext
    %_361782 = load float, float addrspace(0)* %_361780
    %_361787.zext = zext i10 %_361630 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361787 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_361785, i64 0, i11 %_361787.zext
    %_361789 = load float, float addrspace(0)* %_361787
    %_361794 = fmul fast float %_361789, %_361782
    %accn_361797 = fadd fast float %_361794, %_361747
    store float %accn_361797, float addrspace(0)* %fv_0_361422
    %_361801 = load float, float addrspace(0)* %fv_0_361426
    %_361804 = udiv i64 %_361636, 2048
    %_361809 = urem i64 %_361804, 512
    %_361811 = trunc i64 %_361809 to i9
    %_361813.zext = zext i9 %_361811 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361813 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_361813.zext
    %_361815.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361815 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361813, i64 0, i2 %_361815.zext
    %_361818 = udiv i64 %_361636, 4
    %_361823 = urem i64 %_361818, 256
    %_361825 = trunc i64 %_361823 to i8
    %_361827.zext = zext i8 %_361825 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361827 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361815, i64 0, i9 %_361827.zext
    %_361830 = urem i64 %_361636, 4
    %_361832 = trunc i64 %_361830 to i2
    %_361834.zext = zext i2 %_361832 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361834 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361827, i64 0, i3 %_361834.zext
    %_361836 = load float, float addrspace(0)* %_361834
    %_361841.zext = zext i10 %_361630 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361841 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_361839, i64 0, i11 %_361841.zext
    %_361843 = load float, float addrspace(0)* %_361841
    %_361848 = fmul fast float %_361843, %_361836
    %accn_361851 = fadd fast float %_361848, %_361801
    store float %accn_361851, float addrspace(0)* %fv_0_361426
    %_361855 = load float, float addrspace(0)* %fv_0_361430
    %_361864 = add i64 %_361631, %_361862
    %_361867 = udiv i64 %_361864, 2048
    %_361872 = urem i64 %_361867, 512
    %_361874 = trunc i64 %_361872 to i9
    %_361876.zext = zext i9 %_361874 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361876 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_361876.zext
    %_361878.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361878 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361876, i64 0, i2 %_361878.zext
    %_361882 = udiv i64 %_361864, 4
    %_361887 = urem i64 %_361882, 256
    %_361889 = trunc i64 %_361887 to i8
    %_361891.zext = zext i8 %_361889 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361891 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361878, i64 0, i9 %_361891.zext
    %_361894 = urem i64 %_361864, 4
    %_361896 = trunc i64 %_361894 to i2
    %_361898.zext = zext i2 %_361896 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361898 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361891, i64 0, i3 %_361898.zext
    %_361900 = load float, float addrspace(0)* %_361898
    %_361903 = load float, float addrspace(0)* %_361679
    %_361908 = fmul fast float %_361903, %_361900
    %accn_361911 = fadd fast float %_361908, %_361855
    store float %accn_361911, float addrspace(0)* %fv_0_361430
    %_361915 = load float, float addrspace(0)* %fv_0_361434
    %_361918 = udiv i64 %_361864, 2048
    %_361923 = urem i64 %_361918, 512
    %_361925 = trunc i64 %_361923 to i9
    %_361927.zext = zext i9 %_361925 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361927 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_361927.zext
    %_361929.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361929 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361927, i64 0, i2 %_361929.zext
    %_361932 = udiv i64 %_361864, 4
    %_361937 = urem i64 %_361932, 256
    %_361939 = trunc i64 %_361937 to i8
    %_361941.zext = zext i8 %_361939 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361941 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361929, i64 0, i9 %_361941.zext
    %_361944 = urem i64 %_361864, 4
    %_361946 = trunc i64 %_361944 to i2
    %_361948.zext = zext i2 %_361946 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361948 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361941, i64 0, i3 %_361948.zext
    %_361950 = load float, float addrspace(0)* %_361948
    %_361953 = load float, float addrspace(0)* %_361733
    %_361958 = fmul fast float %_361953, %_361950
    %accn_361961 = fadd fast float %_361958, %_361915
    store float %accn_361961, float addrspace(0)* %fv_0_361434
    %_361965 = load float, float addrspace(0)* %fv_0_361438
    %_361968 = udiv i64 %_361864, 2048
    %_361973 = urem i64 %_361968, 512
    %_361975 = trunc i64 %_361973 to i9
    %_361977.zext = zext i9 %_361975 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361977 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_361977.zext
    %_361979.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361979 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361977, i64 0, i2 %_361979.zext
    %_361982 = udiv i64 %_361864, 4
    %_361987 = urem i64 %_361982, 256
    %_361989 = trunc i64 %_361987 to i8
    %_361991.zext = zext i8 %_361989 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361991 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361979, i64 0, i9 %_361991.zext
    %_361994 = urem i64 %_361864, 4
    %_361996 = trunc i64 %_361994 to i2
    %_361998.zext = zext i2 %_361996 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361998 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361991, i64 0, i3 %_361998.zext
    %_362000 = load float, float addrspace(0)* %_361998
    %_362003 = load float, float addrspace(0)* %_361787
    %_362008 = fmul fast float %_362003, %_362000
    %accn_362011 = fadd fast float %_362008, %_361965
    store float %accn_362011, float addrspace(0)* %fv_0_361438
    %_362015 = load float, float addrspace(0)* %fv_0_361442
    %_362018 = udiv i64 %_361864, 2048
    %_362023 = urem i64 %_362018, 512
    %_362025 = trunc i64 %_362023 to i9
    %_362027.zext = zext i9 %_362025 to i10 ; add one more bit for gep index as it is treated as signed value
    %_362027 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351901, i64 0, i10 %_362027.zext
    %_362029.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_362029 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_362027, i64 0, i2 %_362029.zext
    %_362032 = udiv i64 %_361864, 4
    %_362037 = urem i64 %_362032, 256
    %_362039 = trunc i64 %_362037 to i8
    %_362041.zext = zext i8 %_362039 to i9 ; add one more bit for gep index as it is treated as signed value
    %_362041 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_362029, i64 0, i9 %_362041.zext
    %_362044 = urem i64 %_361864, 4
    %_362046 = trunc i64 %_362044 to i2
    %_362048.zext = zext i2 %_362046 to i3 ; add one more bit for gep index as it is treated as signed value
    %_362048 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_362041, i64 0, i3 %_362048.zext
    %_362050 = load float, float addrspace(0)* %_362048
    %_362053 = load float, float addrspace(0)* %_361841
    %_362058 = fmul fast float %_362053, %_362050
    %accn_362061 = fadd fast float %_362058, %_362015
    store float %accn_362061, float addrspace(0)* %fv_0_361442
    br label %head_361446, !llvm.loop !1004

new_exit_361453:
    %fv_10_361455 = add nuw nsw i32 1, %iv_361401
    %_361458 = load float, float addrspace(0)* %fv_0_361414
    %_361468.zext = zext i10 %_361466 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361468 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_6_parameters_bias__361461, i64 0, i11 %_361468.zext
    %_361470 = load float, float addrspace(0)* %_361468
    %_361478.zext = zext i8 %_361462 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361478 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361476, i64 0, i9 %_361478.zext
    %_361480.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361480 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361478, i64 0, i3 %_361480.zext
    %_361484 = fadd fast float %_361458, %_361470
    %_361486 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361484)
    store float %_361486, float addrspace(0)* %_361480
    %_361490 = load float, float addrspace(0)* %fv_0_361418
    %_361496.zext = zext i10 %_361494 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361496 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_6_parameters_bias__361461, i64 0, i11 %_361496.zext
    %_361498 = load float, float addrspace(0)* %_361496
    %_361501.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361501 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361478, i64 0, i3 %_361501.zext
    %_361505 = fadd fast float %_361490, %_361498
    %_361507 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361505)
    store float %_361507, float addrspace(0)* %_361501
    %_361511 = load float, float addrspace(0)* %fv_0_361422
    %_361517.zext = zext i10 %_361515 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361517 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_6_parameters_bias__361461, i64 0, i11 %_361517.zext
    %_361519 = load float, float addrspace(0)* %_361517
    %_361522.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361522 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361478, i64 0, i3 %_361522.zext
    %_361526 = fadd fast float %_361511, %_361519
    %_361528 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361526)
    store float %_361528, float addrspace(0)* %_361522
    %_361532 = load float, float addrspace(0)* %fv_0_361426
    %_361538.zext = zext i10 %_361536 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361538 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_6_parameters_bias__361461, i64 0, i11 %_361538.zext
    %_361540 = load float, float addrspace(0)* %_361538
    %_361543.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361543 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361478, i64 0, i3 %_361543.zext
    %_361547 = fadd fast float %_361532, %_361540
    %_361549 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361547)
    store float %_361549, float addrspace(0)* %_361543
    %_361553 = load float, float addrspace(0)* %fv_0_361430
    %_361556 = load float, float addrspace(0)* %_361468
    %_361561.zext = zext i8 %_361462 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361561 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361559, i64 0, i9 %_361561.zext
    %_361563.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361563 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361561, i64 0, i3 %_361563.zext
    %_361567 = fadd fast float %_361553, %_361556
    %_361569 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361567)
    store float %_361569, float addrspace(0)* %_361563
    %_361573 = load float, float addrspace(0)* %fv_0_361434
    %_361576 = load float, float addrspace(0)* %_361496
    %_361579.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361579 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361561, i64 0, i3 %_361579.zext
    %_361583 = fadd fast float %_361573, %_361576
    %_361585 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361583)
    store float %_361585, float addrspace(0)* %_361579
    %_361589 = load float, float addrspace(0)* %fv_0_361438
    %_361592 = load float, float addrspace(0)* %_361517
    %_361595.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361595 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361561, i64 0, i3 %_361595.zext
    %_361599 = fadd fast float %_361589, %_361592
    %_361601 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361599)
    store float %_361601, float addrspace(0)* %_361595
    %_361605 = load float, float addrspace(0)* %fv_0_361442
    %_361608 = load float, float addrspace(0)* %_361538
    %_361611.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361611 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361561, i64 0, i3 %_361611.zext
    %_361615 = fadd fast float %_361605, %_361608
    %_361617 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_361615)
    store float %_361617, float addrspace(0)* %_361611
    br label %head_361398

new_exit_361404:
    %fv_10_361406 = add nuw nsw i32 1, %iv_351925
    br label %head_351922

new_exit_351928:
    %_351931i8 = call i8* @malloc(i64 4194304)
    %_351931 = bitcast i8* %_351931i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351934i8 = call i8* @malloc(i64 32)
    %_351934 = bitcast i8* %_351934i8 to [8 x float] addrspace(0)*
    %fv_0_360731.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360731 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360731.zext
    %fv_0_360735.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360735 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360735.zext
    %fv_0_360739.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360739 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360739.zext
    %fv_0_360743.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360743 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360743.zext
    %fv_0_360747.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360747 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360747.zext
    %fv_0_360751.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360751 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360751.zext
    %fv_0_360755.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360755 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360755.zext
    %fv_0_360759.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360759 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351934, i64 0, i4 %fv_0_360759.zext
    br label %head_351937

head_351937:
    %iv_351940 = phi i32 [ 0, %new_exit_351928 ], [ %fv_10_360723, %new_exit_360721 ]
    %_351942 = icmp ult i32 %iv_351940, 512
    %_360789 = trunc i32 %iv_351940 to i9
    %_360949 = zext i9 %_360789 to i64
    %_360951 = mul i64 2048, %_360949
    %t_361175 = mul i64 2, %_360949
    %t_361177 = add i64 1, %t_361175
    %_361179 = mul i64 1024, %t_361177
    %_360791.zext = zext i9 %_360789 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360791 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360791.zext
    %_360793.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360793 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360791, i64 0, i2 %_360793.zext
    %_360876.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360876 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360791, i64 0, i2 %_360876.zext
    br i1 %_351942, label %new_body_360712, label %new_exit_351943

new_body_360712:
    br label %head_360715

head_360715:
    %iv_360718 = phi i32 [ 0, %new_body_360712 ], [ %fv_10_360772, %new_exit_360770 ]
    %_360720 = icmp ult i32 %iv_360718, 256
    %_360779 = trunc i32 %iv_360718 to i8
    %t_360780 = zext i8 %_360779 to i64
    %t_360782 = mul i64 4, %t_360780
    %_360783 = trunc i64 %t_360782 to i10
    %_360994.zext = zext i10 %_360783 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360994 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_8_parameters_weight__360992, i64 0, i11 %_360994.zext
    %t_360810 = add i64 1, %t_360782
    %_360811 = trunc i64 %t_360810 to i10
    %_361048.zext = zext i10 %_360811 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361048 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_8_parameters_weight__360992, i64 0, i11 %_361048.zext
    %t_360831 = add i64 2, %t_360782
    %_360832 = trunc i64 %t_360831 to i10
    %_361102.zext = zext i10 %_360832 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361102 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_8_parameters_weight__360992, i64 0, i11 %_361102.zext
    %t_360852 = add i64 3, %t_360782
    %_360853 = trunc i64 %t_360852 to i10
    %_361156.zext = zext i10 %_360853 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361156 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_8_parameters_weight__360992, i64 0, i11 %_361156.zext
    br i1 %_360720, label %new_body_360727, label %new_exit_360721

new_body_360727:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360731
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360735
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360739
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360743
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360747
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360751
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360755
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360759
    br label %head_360763, !llvm.loop !1005

head_360763:
    %iv_360766 = phi i32 [ 0, %new_body_360727 ], [ %fv_9_360941, %new_body_360939 ]
    %_360768 = icmp ult i32 %iv_360766, 1024
    br i1 %_360768, label %new_body_360939, label %new_exit_360770

new_body_360939:
    %fv_9_360941 = add nuw nsw i32 1, %iv_360766
    %_360944 = load float, float addrspace(0)* %fv_0_360731
    %_360947 = trunc i32 %iv_360766 to i10
    %_360948 = zext i10 %_360947 to i64
    %_360953 = add i64 %_360948, %_360951
    %_360956 = udiv i64 %_360953, 2048
    %_360961 = urem i64 %_360956, 512
    %_360963 = trunc i64 %_360961 to i9
    %_360965.zext = zext i9 %_360963 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360965 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_360965.zext
    %_360967.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360967 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360965, i64 0, i2 %_360967.zext
    %_360971 = udiv i64 %_360953, 4
    %_360976 = urem i64 %_360971, 256
    %_360978 = trunc i64 %_360976 to i8
    %_360980.zext = zext i8 %_360978 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360980 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360967, i64 0, i9 %_360980.zext
    %_360983 = urem i64 %_360953, 4
    %_360985 = trunc i64 %_360983 to i2
    %_360987.zext = zext i2 %_360985 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360987 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360980, i64 0, i3 %_360987.zext
    %_360989 = load float, float addrspace(0)* %_360987
    %_360996.zext = zext i10 %_360947 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360996 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_360994, i64 0, i11 %_360996.zext
    %_360998 = load float, float addrspace(0)* %_360996
    %_361003 = fmul fast float %_360998, %_360989
    %accn_361006 = fadd fast float %_361003, %_360944
    store float %accn_361006, float addrspace(0)* %fv_0_360731
    %_361010 = load float, float addrspace(0)* %fv_0_360735
    %_361013 = udiv i64 %_360953, 2048
    %_361018 = urem i64 %_361013, 512
    %_361020 = trunc i64 %_361018 to i9
    %_361022.zext = zext i9 %_361020 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361022 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361022.zext
    %_361024.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361024 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361022, i64 0, i2 %_361024.zext
    %_361027 = udiv i64 %_360953, 4
    %_361032 = urem i64 %_361027, 256
    %_361034 = trunc i64 %_361032 to i8
    %_361036.zext = zext i8 %_361034 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361036 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361024, i64 0, i9 %_361036.zext
    %_361039 = urem i64 %_360953, 4
    %_361041 = trunc i64 %_361039 to i2
    %_361043.zext = zext i2 %_361041 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361043 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361036, i64 0, i3 %_361043.zext
    %_361045 = load float, float addrspace(0)* %_361043
    %_361050.zext = zext i10 %_360947 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361050 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_361048, i64 0, i11 %_361050.zext
    %_361052 = load float, float addrspace(0)* %_361050
    %_361057 = fmul fast float %_361052, %_361045
    %accn_361060 = fadd fast float %_361057, %_361010
    store float %accn_361060, float addrspace(0)* %fv_0_360735
    %_361064 = load float, float addrspace(0)* %fv_0_360739
    %_361067 = udiv i64 %_360953, 2048
    %_361072 = urem i64 %_361067, 512
    %_361074 = trunc i64 %_361072 to i9
    %_361076.zext = zext i9 %_361074 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361076 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361076.zext
    %_361078.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361078 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361076, i64 0, i2 %_361078.zext
    %_361081 = udiv i64 %_360953, 4
    %_361086 = urem i64 %_361081, 256
    %_361088 = trunc i64 %_361086 to i8
    %_361090.zext = zext i8 %_361088 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361090 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361078, i64 0, i9 %_361090.zext
    %_361093 = urem i64 %_360953, 4
    %_361095 = trunc i64 %_361093 to i2
    %_361097.zext = zext i2 %_361095 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361097 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361090, i64 0, i3 %_361097.zext
    %_361099 = load float, float addrspace(0)* %_361097
    %_361104.zext = zext i10 %_360947 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361104 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_361102, i64 0, i11 %_361104.zext
    %_361106 = load float, float addrspace(0)* %_361104
    %_361111 = fmul fast float %_361106, %_361099
    %accn_361114 = fadd fast float %_361111, %_361064
    store float %accn_361114, float addrspace(0)* %fv_0_360739
    %_361118 = load float, float addrspace(0)* %fv_0_360743
    %_361121 = udiv i64 %_360953, 2048
    %_361126 = urem i64 %_361121, 512
    %_361128 = trunc i64 %_361126 to i9
    %_361130.zext = zext i9 %_361128 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361130 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361130.zext
    %_361132.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361132 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361130, i64 0, i2 %_361132.zext
    %_361135 = udiv i64 %_360953, 4
    %_361140 = urem i64 %_361135, 256
    %_361142 = trunc i64 %_361140 to i8
    %_361144.zext = zext i8 %_361142 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361144 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361132, i64 0, i9 %_361144.zext
    %_361147 = urem i64 %_360953, 4
    %_361149 = trunc i64 %_361147 to i2
    %_361151.zext = zext i2 %_361149 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361151 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361144, i64 0, i3 %_361151.zext
    %_361153 = load float, float addrspace(0)* %_361151
    %_361158.zext = zext i10 %_360947 to i11 ; add one more bit for gep index as it is treated as signed value
    %_361158 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_361156, i64 0, i11 %_361158.zext
    %_361160 = load float, float addrspace(0)* %_361158
    %_361165 = fmul fast float %_361160, %_361153
    %accn_361168 = fadd fast float %_361165, %_361118
    store float %accn_361168, float addrspace(0)* %fv_0_360743
    %_361172 = load float, float addrspace(0)* %fv_0_360747
    %_361181 = add i64 %_360948, %_361179
    %_361184 = udiv i64 %_361181, 2048
    %_361189 = urem i64 %_361184, 512
    %_361191 = trunc i64 %_361189 to i9
    %_361193.zext = zext i9 %_361191 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361193 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361193.zext
    %_361195.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361195 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361193, i64 0, i2 %_361195.zext
    %_361199 = udiv i64 %_361181, 4
    %_361204 = urem i64 %_361199, 256
    %_361206 = trunc i64 %_361204 to i8
    %_361208.zext = zext i8 %_361206 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361208 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361195, i64 0, i9 %_361208.zext
    %_361211 = urem i64 %_361181, 4
    %_361213 = trunc i64 %_361211 to i2
    %_361215.zext = zext i2 %_361213 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361215 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361208, i64 0, i3 %_361215.zext
    %_361217 = load float, float addrspace(0)* %_361215
    %_361220 = load float, float addrspace(0)* %_360996
    %_361225 = fmul fast float %_361220, %_361217
    %accn_361228 = fadd fast float %_361225, %_361172
    store float %accn_361228, float addrspace(0)* %fv_0_360747
    %_361232 = load float, float addrspace(0)* %fv_0_360751
    %_361235 = udiv i64 %_361181, 2048
    %_361240 = urem i64 %_361235, 512
    %_361242 = trunc i64 %_361240 to i9
    %_361244.zext = zext i9 %_361242 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361244 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361244.zext
    %_361246.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361246 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361244, i64 0, i2 %_361246.zext
    %_361249 = udiv i64 %_361181, 4
    %_361254 = urem i64 %_361249, 256
    %_361256 = trunc i64 %_361254 to i8
    %_361258.zext = zext i8 %_361256 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361258 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361246, i64 0, i9 %_361258.zext
    %_361261 = urem i64 %_361181, 4
    %_361263 = trunc i64 %_361261 to i2
    %_361265.zext = zext i2 %_361263 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361265 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361258, i64 0, i3 %_361265.zext
    %_361267 = load float, float addrspace(0)* %_361265
    %_361270 = load float, float addrspace(0)* %_361050
    %_361275 = fmul fast float %_361270, %_361267
    %accn_361278 = fadd fast float %_361275, %_361232
    store float %accn_361278, float addrspace(0)* %fv_0_360751
    %_361282 = load float, float addrspace(0)* %fv_0_360755
    %_361285 = udiv i64 %_361181, 2048
    %_361290 = urem i64 %_361285, 512
    %_361292 = trunc i64 %_361290 to i9
    %_361294.zext = zext i9 %_361292 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361294 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361294.zext
    %_361296.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361296 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361294, i64 0, i2 %_361296.zext
    %_361299 = udiv i64 %_361181, 4
    %_361304 = urem i64 %_361299, 256
    %_361306 = trunc i64 %_361304 to i8
    %_361308.zext = zext i8 %_361306 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361308 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361296, i64 0, i9 %_361308.zext
    %_361311 = urem i64 %_361181, 4
    %_361313 = trunc i64 %_361311 to i2
    %_361315.zext = zext i2 %_361313 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361315 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361308, i64 0, i3 %_361315.zext
    %_361317 = load float, float addrspace(0)* %_361315
    %_361320 = load float, float addrspace(0)* %_361104
    %_361325 = fmul fast float %_361320, %_361317
    %accn_361328 = fadd fast float %_361325, %_361282
    store float %accn_361328, float addrspace(0)* %fv_0_360755
    %_361332 = load float, float addrspace(0)* %fv_0_360759
    %_361335 = udiv i64 %_361181, 2048
    %_361340 = urem i64 %_361335, 512
    %_361342 = trunc i64 %_361340 to i9
    %_361344.zext = zext i9 %_361342 to i10 ; add one more bit for gep index as it is treated as signed value
    %_361344 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351916, i64 0, i10 %_361344.zext
    %_361346.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_361346 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_361344, i64 0, i2 %_361346.zext
    %_361349 = udiv i64 %_361181, 4
    %_361354 = urem i64 %_361349, 256
    %_361356 = trunc i64 %_361354 to i8
    %_361358.zext = zext i8 %_361356 to i9 ; add one more bit for gep index as it is treated as signed value
    %_361358 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_361346, i64 0, i9 %_361358.zext
    %_361361 = urem i64 %_361181, 4
    %_361363 = trunc i64 %_361361 to i2
    %_361365.zext = zext i2 %_361363 to i3 ; add one more bit for gep index as it is treated as signed value
    %_361365 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_361358, i64 0, i3 %_361365.zext
    %_361367 = load float, float addrspace(0)* %_361365
    %_361370 = load float, float addrspace(0)* %_361158
    %_361375 = fmul fast float %_361370, %_361367
    %accn_361378 = fadd fast float %_361375, %_361332
    store float %accn_361378, float addrspace(0)* %fv_0_360759
    br label %head_360763, !llvm.loop !1005

new_exit_360770:
    %fv_10_360772 = add nuw nsw i32 1, %iv_360718
    %_360775 = load float, float addrspace(0)* %fv_0_360731
    %_360785.zext = zext i10 %_360783 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360785 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_8_parameters_bias__360778, i64 0, i11 %_360785.zext
    %_360787 = load float, float addrspace(0)* %_360785
    %_360795.zext = zext i8 %_360779 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360795 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360793, i64 0, i9 %_360795.zext
    %_360797.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360797 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360795, i64 0, i3 %_360797.zext
    %_360801 = fadd fast float %_360775, %_360787
    %_360803 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360801)
    store float %_360803, float addrspace(0)* %_360797
    %_360807 = load float, float addrspace(0)* %fv_0_360735
    %_360813.zext = zext i10 %_360811 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360813 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_8_parameters_bias__360778, i64 0, i11 %_360813.zext
    %_360815 = load float, float addrspace(0)* %_360813
    %_360818.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360818 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360795, i64 0, i3 %_360818.zext
    %_360822 = fadd fast float %_360807, %_360815
    %_360824 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360822)
    store float %_360824, float addrspace(0)* %_360818
    %_360828 = load float, float addrspace(0)* %fv_0_360739
    %_360834.zext = zext i10 %_360832 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360834 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_8_parameters_bias__360778, i64 0, i11 %_360834.zext
    %_360836 = load float, float addrspace(0)* %_360834
    %_360839.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360839 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360795, i64 0, i3 %_360839.zext
    %_360843 = fadd fast float %_360828, %_360836
    %_360845 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360843)
    store float %_360845, float addrspace(0)* %_360839
    %_360849 = load float, float addrspace(0)* %fv_0_360743
    %_360855.zext = zext i10 %_360853 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360855 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_8_parameters_bias__360778, i64 0, i11 %_360855.zext
    %_360857 = load float, float addrspace(0)* %_360855
    %_360860.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360860 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360795, i64 0, i3 %_360860.zext
    %_360864 = fadd fast float %_360849, %_360857
    %_360866 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360864)
    store float %_360866, float addrspace(0)* %_360860
    %_360870 = load float, float addrspace(0)* %fv_0_360747
    %_360873 = load float, float addrspace(0)* %_360785
    %_360878.zext = zext i8 %_360779 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360878 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360876, i64 0, i9 %_360878.zext
    %_360880.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360880 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360878, i64 0, i3 %_360880.zext
    %_360884 = fadd fast float %_360870, %_360873
    %_360886 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360884)
    store float %_360886, float addrspace(0)* %_360880
    %_360890 = load float, float addrspace(0)* %fv_0_360751
    %_360893 = load float, float addrspace(0)* %_360813
    %_360896.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360896 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360878, i64 0, i3 %_360896.zext
    %_360900 = fadd fast float %_360890, %_360893
    %_360902 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360900)
    store float %_360902, float addrspace(0)* %_360896
    %_360906 = load float, float addrspace(0)* %fv_0_360755
    %_360909 = load float, float addrspace(0)* %_360834
    %_360912.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360912 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360878, i64 0, i3 %_360912.zext
    %_360916 = fadd fast float %_360906, %_360909
    %_360918 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360916)
    store float %_360918, float addrspace(0)* %_360912
    %_360922 = load float, float addrspace(0)* %fv_0_360759
    %_360925 = load float, float addrspace(0)* %_360855
    %_360928.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360928 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360878, i64 0, i3 %_360928.zext
    %_360932 = fadd fast float %_360922, %_360925
    %_360934 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360932)
    store float %_360934, float addrspace(0)* %_360928
    br label %head_360715

new_exit_360721:
    %fv_10_360723 = add nuw nsw i32 1, %iv_351940
    br label %head_351937

new_exit_351943:
    %_351946i8 = call i8* @malloc(i64 4194304)
    %_351946 = bitcast i8* %_351946i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351949i8 = call i8* @malloc(i64 32)
    %_351949 = bitcast i8* %_351949i8 to [8 x float] addrspace(0)*
    %fv_0_360048.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360048 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360048.zext
    %fv_0_360052.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360052 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360052.zext
    %fv_0_360056.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360056 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360056.zext
    %fv_0_360060.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360060 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360060.zext
    %fv_0_360064.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360064 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360064.zext
    %fv_0_360068.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360068 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360068.zext
    %fv_0_360072.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360072 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360072.zext
    %fv_0_360076.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_360076 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351949, i64 0, i4 %fv_0_360076.zext
    br label %head_351952

head_351952:
    %iv_351955 = phi i32 [ 0, %new_exit_351943 ], [ %fv_10_360040, %new_exit_360038 ]
    %_351957 = icmp ult i32 %iv_351955, 512
    %_360106 = trunc i32 %iv_351955 to i9
    %_360266 = zext i9 %_360106 to i64
    %_360268 = mul i64 2048, %_360266
    %t_360492 = mul i64 2, %_360266
    %t_360494 = add i64 1, %t_360492
    %_360496 = mul i64 1024, %t_360494
    %_360108.zext = zext i9 %_360106 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360108 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_360108.zext
    %_360110.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360110 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360108, i64 0, i2 %_360110.zext
    %_360193.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360193 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360108, i64 0, i2 %_360193.zext
    br i1 %_351957, label %new_body_360029, label %new_exit_351958

new_body_360029:
    br label %head_360032

head_360032:
    %iv_360035 = phi i32 [ 0, %new_body_360029 ], [ %fv_10_360089, %new_exit_360087 ]
    %_360037 = icmp ult i32 %iv_360035, 256
    %_360096 = trunc i32 %iv_360035 to i8
    %t_360097 = zext i8 %_360096 to i64
    %t_360099 = mul i64 4, %t_360097
    %_360100 = trunc i64 %t_360099 to i10
    %_360311.zext = zext i10 %_360100 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360311 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_10_parameters_weight__360309, i64 0, i11 %_360311.zext
    %t_360127 = add i64 1, %t_360099
    %_360128 = trunc i64 %t_360127 to i10
    %_360365.zext = zext i10 %_360128 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360365 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_10_parameters_weight__360309, i64 0, i11 %_360365.zext
    %t_360148 = add i64 2, %t_360099
    %_360149 = trunc i64 %t_360148 to i10
    %_360419.zext = zext i10 %_360149 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360419 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_10_parameters_weight__360309, i64 0, i11 %_360419.zext
    %t_360169 = add i64 3, %t_360099
    %_360170 = trunc i64 %t_360169 to i10
    %_360473.zext = zext i10 %_360170 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360473 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_10_parameters_weight__360309, i64 0, i11 %_360473.zext
    br i1 %_360037, label %new_body_360044, label %new_exit_360038

new_body_360044:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360048
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360052
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360056
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360060
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360064
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360068
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360072
    store float 0x0000000000000000, float addrspace(0)* %fv_0_360076
    br label %head_360080, !llvm.loop !1006

head_360080:
    %iv_360083 = phi i32 [ 0, %new_body_360044 ], [ %fv_9_360258, %new_body_360256 ]
    %_360085 = icmp ult i32 %iv_360083, 1024
    br i1 %_360085, label %new_body_360256, label %new_exit_360087

new_body_360256:
    %fv_9_360258 = add nuw nsw i32 1, %iv_360083
    %_360261 = load float, float addrspace(0)* %fv_0_360048
    %_360264 = trunc i32 %iv_360083 to i10
    %_360265 = zext i10 %_360264 to i64
    %_360270 = add i64 %_360265, %_360268
    %_360273 = udiv i64 %_360270, 2048
    %_360278 = urem i64 %_360273, 512
    %_360280 = trunc i64 %_360278 to i9
    %_360282.zext = zext i9 %_360280 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360282 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360282.zext
    %_360284.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360284 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360282, i64 0, i2 %_360284.zext
    %_360288 = udiv i64 %_360270, 4
    %_360293 = urem i64 %_360288, 256
    %_360295 = trunc i64 %_360293 to i8
    %_360297.zext = zext i8 %_360295 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360297 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360284, i64 0, i9 %_360297.zext
    %_360300 = urem i64 %_360270, 4
    %_360302 = trunc i64 %_360300 to i2
    %_360304.zext = zext i2 %_360302 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360304 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360297, i64 0, i3 %_360304.zext
    %_360306 = load float, float addrspace(0)* %_360304
    %_360313.zext = zext i10 %_360264 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360313 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_360311, i64 0, i11 %_360313.zext
    %_360315 = load float, float addrspace(0)* %_360313
    %_360320 = fmul fast float %_360315, %_360306
    %accn_360323 = fadd fast float %_360320, %_360261
    store float %accn_360323, float addrspace(0)* %fv_0_360048
    %_360327 = load float, float addrspace(0)* %fv_0_360052
    %_360330 = udiv i64 %_360270, 2048
    %_360335 = urem i64 %_360330, 512
    %_360337 = trunc i64 %_360335 to i9
    %_360339.zext = zext i9 %_360337 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360339 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360339.zext
    %_360341.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360341 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360339, i64 0, i2 %_360341.zext
    %_360344 = udiv i64 %_360270, 4
    %_360349 = urem i64 %_360344, 256
    %_360351 = trunc i64 %_360349 to i8
    %_360353.zext = zext i8 %_360351 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360353 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360341, i64 0, i9 %_360353.zext
    %_360356 = urem i64 %_360270, 4
    %_360358 = trunc i64 %_360356 to i2
    %_360360.zext = zext i2 %_360358 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360360 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360353, i64 0, i3 %_360360.zext
    %_360362 = load float, float addrspace(0)* %_360360
    %_360367.zext = zext i10 %_360264 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360367 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_360365, i64 0, i11 %_360367.zext
    %_360369 = load float, float addrspace(0)* %_360367
    %_360374 = fmul fast float %_360369, %_360362
    %accn_360377 = fadd fast float %_360374, %_360327
    store float %accn_360377, float addrspace(0)* %fv_0_360052
    %_360381 = load float, float addrspace(0)* %fv_0_360056
    %_360384 = udiv i64 %_360270, 2048
    %_360389 = urem i64 %_360384, 512
    %_360391 = trunc i64 %_360389 to i9
    %_360393.zext = zext i9 %_360391 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360393 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360393.zext
    %_360395.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360395 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360393, i64 0, i2 %_360395.zext
    %_360398 = udiv i64 %_360270, 4
    %_360403 = urem i64 %_360398, 256
    %_360405 = trunc i64 %_360403 to i8
    %_360407.zext = zext i8 %_360405 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360407 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360395, i64 0, i9 %_360407.zext
    %_360410 = urem i64 %_360270, 4
    %_360412 = trunc i64 %_360410 to i2
    %_360414.zext = zext i2 %_360412 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360414 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360407, i64 0, i3 %_360414.zext
    %_360416 = load float, float addrspace(0)* %_360414
    %_360421.zext = zext i10 %_360264 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360421 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_360419, i64 0, i11 %_360421.zext
    %_360423 = load float, float addrspace(0)* %_360421
    %_360428 = fmul fast float %_360423, %_360416
    %accn_360431 = fadd fast float %_360428, %_360381
    store float %accn_360431, float addrspace(0)* %fv_0_360056
    %_360435 = load float, float addrspace(0)* %fv_0_360060
    %_360438 = udiv i64 %_360270, 2048
    %_360443 = urem i64 %_360438, 512
    %_360445 = trunc i64 %_360443 to i9
    %_360447.zext = zext i9 %_360445 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360447 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360447.zext
    %_360449.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360449 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360447, i64 0, i2 %_360449.zext
    %_360452 = udiv i64 %_360270, 4
    %_360457 = urem i64 %_360452, 256
    %_360459 = trunc i64 %_360457 to i8
    %_360461.zext = zext i8 %_360459 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360461 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360449, i64 0, i9 %_360461.zext
    %_360464 = urem i64 %_360270, 4
    %_360466 = trunc i64 %_360464 to i2
    %_360468.zext = zext i2 %_360466 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360468 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360461, i64 0, i3 %_360468.zext
    %_360470 = load float, float addrspace(0)* %_360468
    %_360475.zext = zext i10 %_360264 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360475 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_360473, i64 0, i11 %_360475.zext
    %_360477 = load float, float addrspace(0)* %_360475
    %_360482 = fmul fast float %_360477, %_360470
    %accn_360485 = fadd fast float %_360482, %_360435
    store float %accn_360485, float addrspace(0)* %fv_0_360060
    %_360489 = load float, float addrspace(0)* %fv_0_360064
    %_360498 = add i64 %_360265, %_360496
    %_360501 = udiv i64 %_360498, 2048
    %_360506 = urem i64 %_360501, 512
    %_360508 = trunc i64 %_360506 to i9
    %_360510.zext = zext i9 %_360508 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360510 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360510.zext
    %_360512.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360512 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360510, i64 0, i2 %_360512.zext
    %_360516 = udiv i64 %_360498, 4
    %_360521 = urem i64 %_360516, 256
    %_360523 = trunc i64 %_360521 to i8
    %_360525.zext = zext i8 %_360523 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360525 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360512, i64 0, i9 %_360525.zext
    %_360528 = urem i64 %_360498, 4
    %_360530 = trunc i64 %_360528 to i2
    %_360532.zext = zext i2 %_360530 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360532 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360525, i64 0, i3 %_360532.zext
    %_360534 = load float, float addrspace(0)* %_360532
    %_360537 = load float, float addrspace(0)* %_360313
    %_360542 = fmul fast float %_360537, %_360534
    %accn_360545 = fadd fast float %_360542, %_360489
    store float %accn_360545, float addrspace(0)* %fv_0_360064
    %_360549 = load float, float addrspace(0)* %fv_0_360068
    %_360552 = udiv i64 %_360498, 2048
    %_360557 = urem i64 %_360552, 512
    %_360559 = trunc i64 %_360557 to i9
    %_360561.zext = zext i9 %_360559 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360561 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360561.zext
    %_360563.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360563 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360561, i64 0, i2 %_360563.zext
    %_360566 = udiv i64 %_360498, 4
    %_360571 = urem i64 %_360566, 256
    %_360573 = trunc i64 %_360571 to i8
    %_360575.zext = zext i8 %_360573 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360575 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360563, i64 0, i9 %_360575.zext
    %_360578 = urem i64 %_360498, 4
    %_360580 = trunc i64 %_360578 to i2
    %_360582.zext = zext i2 %_360580 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360582 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360575, i64 0, i3 %_360582.zext
    %_360584 = load float, float addrspace(0)* %_360582
    %_360587 = load float, float addrspace(0)* %_360367
    %_360592 = fmul fast float %_360587, %_360584
    %accn_360595 = fadd fast float %_360592, %_360549
    store float %accn_360595, float addrspace(0)* %fv_0_360068
    %_360599 = load float, float addrspace(0)* %fv_0_360072
    %_360602 = udiv i64 %_360498, 2048
    %_360607 = urem i64 %_360602, 512
    %_360609 = trunc i64 %_360607 to i9
    %_360611.zext = zext i9 %_360609 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360611 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360611.zext
    %_360613.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360613 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360611, i64 0, i2 %_360613.zext
    %_360616 = udiv i64 %_360498, 4
    %_360621 = urem i64 %_360616, 256
    %_360623 = trunc i64 %_360621 to i8
    %_360625.zext = zext i8 %_360623 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360625 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360613, i64 0, i9 %_360625.zext
    %_360628 = urem i64 %_360498, 4
    %_360630 = trunc i64 %_360628 to i2
    %_360632.zext = zext i2 %_360630 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360632 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360625, i64 0, i3 %_360632.zext
    %_360634 = load float, float addrspace(0)* %_360632
    %_360637 = load float, float addrspace(0)* %_360421
    %_360642 = fmul fast float %_360637, %_360634
    %accn_360645 = fadd fast float %_360642, %_360599
    store float %accn_360645, float addrspace(0)* %fv_0_360072
    %_360649 = load float, float addrspace(0)* %fv_0_360076
    %_360652 = udiv i64 %_360498, 2048
    %_360657 = urem i64 %_360652, 512
    %_360659 = trunc i64 %_360657 to i9
    %_360661.zext = zext i9 %_360659 to i10 ; add one more bit for gep index as it is treated as signed value
    %_360661 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351931, i64 0, i10 %_360661.zext
    %_360663.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_360663 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_360661, i64 0, i2 %_360663.zext
    %_360666 = udiv i64 %_360498, 4
    %_360671 = urem i64 %_360666, 256
    %_360673 = trunc i64 %_360671 to i8
    %_360675.zext = zext i8 %_360673 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360675 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360663, i64 0, i9 %_360675.zext
    %_360678 = urem i64 %_360498, 4
    %_360680 = trunc i64 %_360678 to i2
    %_360682.zext = zext i2 %_360680 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360682 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360675, i64 0, i3 %_360682.zext
    %_360684 = load float, float addrspace(0)* %_360682
    %_360687 = load float, float addrspace(0)* %_360475
    %_360692 = fmul fast float %_360687, %_360684
    %accn_360695 = fadd fast float %_360692, %_360649
    store float %accn_360695, float addrspace(0)* %fv_0_360076
    br label %head_360080, !llvm.loop !1006

new_exit_360087:
    %fv_10_360089 = add nuw nsw i32 1, %iv_360035
    %_360092 = load float, float addrspace(0)* %fv_0_360048
    %_360102.zext = zext i10 %_360100 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360102 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_10_parameters_bias__360095, i64 0, i11 %_360102.zext
    %_360104 = load float, float addrspace(0)* %_360102
    %_360112.zext = zext i8 %_360096 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360112 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360110, i64 0, i9 %_360112.zext
    %_360114.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360114 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360112, i64 0, i3 %_360114.zext
    %_360118 = fadd fast float %_360092, %_360104
    %_360120 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360118)
    store float %_360120, float addrspace(0)* %_360114
    %_360124 = load float, float addrspace(0)* %fv_0_360052
    %_360130.zext = zext i10 %_360128 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360130 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_10_parameters_bias__360095, i64 0, i11 %_360130.zext
    %_360132 = load float, float addrspace(0)* %_360130
    %_360135.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360135 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360112, i64 0, i3 %_360135.zext
    %_360139 = fadd fast float %_360124, %_360132
    %_360141 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360139)
    store float %_360141, float addrspace(0)* %_360135
    %_360145 = load float, float addrspace(0)* %fv_0_360056
    %_360151.zext = zext i10 %_360149 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360151 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_10_parameters_bias__360095, i64 0, i11 %_360151.zext
    %_360153 = load float, float addrspace(0)* %_360151
    %_360156.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360156 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360112, i64 0, i3 %_360156.zext
    %_360160 = fadd fast float %_360145, %_360153
    %_360162 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360160)
    store float %_360162, float addrspace(0)* %_360156
    %_360166 = load float, float addrspace(0)* %fv_0_360060
    %_360172.zext = zext i10 %_360170 to i11 ; add one more bit for gep index as it is treated as signed value
    %_360172 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_10_parameters_bias__360095, i64 0, i11 %_360172.zext
    %_360174 = load float, float addrspace(0)* %_360172
    %_360177.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360177 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360112, i64 0, i3 %_360177.zext
    %_360181 = fadd fast float %_360166, %_360174
    %_360183 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360181)
    store float %_360183, float addrspace(0)* %_360177
    %_360187 = load float, float addrspace(0)* %fv_0_360064
    %_360190 = load float, float addrspace(0)* %_360102
    %_360195.zext = zext i8 %_360096 to i9 ; add one more bit for gep index as it is treated as signed value
    %_360195 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_360193, i64 0, i9 %_360195.zext
    %_360197.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360197 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360195, i64 0, i3 %_360197.zext
    %_360201 = fadd fast float %_360187, %_360190
    %_360203 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360201)
    store float %_360203, float addrspace(0)* %_360197
    %_360207 = load float, float addrspace(0)* %fv_0_360068
    %_360210 = load float, float addrspace(0)* %_360130
    %_360213.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360213 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360195, i64 0, i3 %_360213.zext
    %_360217 = fadd fast float %_360207, %_360210
    %_360219 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360217)
    store float %_360219, float addrspace(0)* %_360213
    %_360223 = load float, float addrspace(0)* %fv_0_360072
    %_360226 = load float, float addrspace(0)* %_360151
    %_360229.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360229 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360195, i64 0, i3 %_360229.zext
    %_360233 = fadd fast float %_360223, %_360226
    %_360235 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360233)
    store float %_360235, float addrspace(0)* %_360229
    %_360239 = load float, float addrspace(0)* %fv_0_360076
    %_360242 = load float, float addrspace(0)* %_360172
    %_360245.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_360245 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_360195, i64 0, i3 %_360245.zext
    %_360249 = fadd fast float %_360239, %_360242
    %_360251 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_360249)
    store float %_360251, float addrspace(0)* %_360245
    br label %head_360032

new_exit_360038:
    %fv_10_360040 = add nuw nsw i32 1, %iv_351955
    br label %head_351952

new_exit_351958:
    %_351961i8 = call i8* @malloc(i64 4194304)
    %_351961 = bitcast i8* %_351961i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351964i8 = call i8* @malloc(i64 32)
    %_351964 = bitcast i8* %_351964i8 to [8 x float] addrspace(0)*
    %fv_0_359365.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359365 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359365.zext
    %fv_0_359369.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359369 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359369.zext
    %fv_0_359373.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359373 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359373.zext
    %fv_0_359377.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359377 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359377.zext
    %fv_0_359381.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359381 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359381.zext
    %fv_0_359385.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359385 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359385.zext
    %fv_0_359389.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359389 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359389.zext
    %fv_0_359393.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_359393 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351964, i64 0, i4 %fv_0_359393.zext
    br label %head_351967

head_351967:
    %iv_351970 = phi i32 [ 0, %new_exit_351958 ], [ %fv_10_359357, %new_exit_359355 ]
    %_351972 = icmp ult i32 %iv_351970, 512
    %_359423 = trunc i32 %iv_351970 to i9
    %_359583 = zext i9 %_359423 to i64
    %_359585 = mul i64 2048, %_359583
    %t_359809 = mul i64 2, %_359583
    %t_359811 = add i64 1, %t_359809
    %_359813 = mul i64 1024, %t_359811
    %_359425.zext = zext i9 %_359423 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359425 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_359425.zext
    %_359427.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359427 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359425, i64 0, i2 %_359427.zext
    %_359510.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359510 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359425, i64 0, i2 %_359510.zext
    br i1 %_351972, label %new_body_359346, label %new_exit_351973

new_body_359346:
    br label %head_359349

head_359349:
    %iv_359352 = phi i32 [ 0, %new_body_359346 ], [ %fv_10_359406, %new_exit_359404 ]
    %_359354 = icmp ult i32 %iv_359352, 256
    %_359413 = trunc i32 %iv_359352 to i8
    %t_359414 = zext i8 %_359413 to i64
    %t_359416 = mul i64 4, %t_359414
    %_359417 = trunc i64 %t_359416 to i10
    %_359628.zext = zext i10 %_359417 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359628 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_12_parameters_weight__359626, i64 0, i11 %_359628.zext
    %t_359444 = add i64 1, %t_359416
    %_359445 = trunc i64 %t_359444 to i10
    %_359682.zext = zext i10 %_359445 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359682 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_12_parameters_weight__359626, i64 0, i11 %_359682.zext
    %t_359465 = add i64 2, %t_359416
    %_359466 = trunc i64 %t_359465 to i10
    %_359736.zext = zext i10 %_359466 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359736 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_12_parameters_weight__359626, i64 0, i11 %_359736.zext
    %t_359486 = add i64 3, %t_359416
    %_359487 = trunc i64 %t_359486 to i10
    %_359790.zext = zext i10 %_359487 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359790 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_12_parameters_weight__359626, i64 0, i11 %_359790.zext
    br i1 %_359354, label %new_body_359361, label %new_exit_359355

new_body_359361:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359365
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359369
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359373
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359377
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359381
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359385
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359389
    store float 0x0000000000000000, float addrspace(0)* %fv_0_359393
    br label %head_359397, !llvm.loop !1007

head_359397:
    %iv_359400 = phi i32 [ 0, %new_body_359361 ], [ %fv_9_359575, %new_body_359573 ]
    %_359402 = icmp ult i32 %iv_359400, 1024
    br i1 %_359402, label %new_body_359573, label %new_exit_359404

new_body_359573:
    %fv_9_359575 = add nuw nsw i32 1, %iv_359400
    %_359578 = load float, float addrspace(0)* %fv_0_359365
    %_359581 = trunc i32 %iv_359400 to i10
    %_359582 = zext i10 %_359581 to i64
    %_359587 = add i64 %_359582, %_359585
    %_359590 = udiv i64 %_359587, 2048
    %_359595 = urem i64 %_359590, 512
    %_359597 = trunc i64 %_359595 to i9
    %_359599.zext = zext i9 %_359597 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359599 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359599.zext
    %_359601.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359601 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359599, i64 0, i2 %_359601.zext
    %_359605 = udiv i64 %_359587, 4
    %_359610 = urem i64 %_359605, 256
    %_359612 = trunc i64 %_359610 to i8
    %_359614.zext = zext i8 %_359612 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359614 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359601, i64 0, i9 %_359614.zext
    %_359617 = urem i64 %_359587, 4
    %_359619 = trunc i64 %_359617 to i2
    %_359621.zext = zext i2 %_359619 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359621 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359614, i64 0, i3 %_359621.zext
    %_359623 = load float, float addrspace(0)* %_359621
    %_359630.zext = zext i10 %_359581 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359630 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_359628, i64 0, i11 %_359630.zext
    %_359632 = load float, float addrspace(0)* %_359630
    %_359637 = fmul fast float %_359632, %_359623
    %accn_359640 = fadd fast float %_359637, %_359578
    store float %accn_359640, float addrspace(0)* %fv_0_359365
    %_359644 = load float, float addrspace(0)* %fv_0_359369
    %_359647 = udiv i64 %_359587, 2048
    %_359652 = urem i64 %_359647, 512
    %_359654 = trunc i64 %_359652 to i9
    %_359656.zext = zext i9 %_359654 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359656 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359656.zext
    %_359658.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359658 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359656, i64 0, i2 %_359658.zext
    %_359661 = udiv i64 %_359587, 4
    %_359666 = urem i64 %_359661, 256
    %_359668 = trunc i64 %_359666 to i8
    %_359670.zext = zext i8 %_359668 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359670 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359658, i64 0, i9 %_359670.zext
    %_359673 = urem i64 %_359587, 4
    %_359675 = trunc i64 %_359673 to i2
    %_359677.zext = zext i2 %_359675 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359677 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359670, i64 0, i3 %_359677.zext
    %_359679 = load float, float addrspace(0)* %_359677
    %_359684.zext = zext i10 %_359581 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359684 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_359682, i64 0, i11 %_359684.zext
    %_359686 = load float, float addrspace(0)* %_359684
    %_359691 = fmul fast float %_359686, %_359679
    %accn_359694 = fadd fast float %_359691, %_359644
    store float %accn_359694, float addrspace(0)* %fv_0_359369
    %_359698 = load float, float addrspace(0)* %fv_0_359373
    %_359701 = udiv i64 %_359587, 2048
    %_359706 = urem i64 %_359701, 512
    %_359708 = trunc i64 %_359706 to i9
    %_359710.zext = zext i9 %_359708 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359710 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359710.zext
    %_359712.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359712 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359710, i64 0, i2 %_359712.zext
    %_359715 = udiv i64 %_359587, 4
    %_359720 = urem i64 %_359715, 256
    %_359722 = trunc i64 %_359720 to i8
    %_359724.zext = zext i8 %_359722 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359724 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359712, i64 0, i9 %_359724.zext
    %_359727 = urem i64 %_359587, 4
    %_359729 = trunc i64 %_359727 to i2
    %_359731.zext = zext i2 %_359729 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359731 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359724, i64 0, i3 %_359731.zext
    %_359733 = load float, float addrspace(0)* %_359731
    %_359738.zext = zext i10 %_359581 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359738 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_359736, i64 0, i11 %_359738.zext
    %_359740 = load float, float addrspace(0)* %_359738
    %_359745 = fmul fast float %_359740, %_359733
    %accn_359748 = fadd fast float %_359745, %_359698
    store float %accn_359748, float addrspace(0)* %fv_0_359373
    %_359752 = load float, float addrspace(0)* %fv_0_359377
    %_359755 = udiv i64 %_359587, 2048
    %_359760 = urem i64 %_359755, 512
    %_359762 = trunc i64 %_359760 to i9
    %_359764.zext = zext i9 %_359762 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359764 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359764.zext
    %_359766.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359766 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359764, i64 0, i2 %_359766.zext
    %_359769 = udiv i64 %_359587, 4
    %_359774 = urem i64 %_359769, 256
    %_359776 = trunc i64 %_359774 to i8
    %_359778.zext = zext i8 %_359776 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359778 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359766, i64 0, i9 %_359778.zext
    %_359781 = urem i64 %_359587, 4
    %_359783 = trunc i64 %_359781 to i2
    %_359785.zext = zext i2 %_359783 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359785 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359778, i64 0, i3 %_359785.zext
    %_359787 = load float, float addrspace(0)* %_359785
    %_359792.zext = zext i10 %_359581 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359792 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_359790, i64 0, i11 %_359792.zext
    %_359794 = load float, float addrspace(0)* %_359792
    %_359799 = fmul fast float %_359794, %_359787
    %accn_359802 = fadd fast float %_359799, %_359752
    store float %accn_359802, float addrspace(0)* %fv_0_359377
    %_359806 = load float, float addrspace(0)* %fv_0_359381
    %_359815 = add i64 %_359582, %_359813
    %_359818 = udiv i64 %_359815, 2048
    %_359823 = urem i64 %_359818, 512
    %_359825 = trunc i64 %_359823 to i9
    %_359827.zext = zext i9 %_359825 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359827 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359827.zext
    %_359829.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359829 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359827, i64 0, i2 %_359829.zext
    %_359833 = udiv i64 %_359815, 4
    %_359838 = urem i64 %_359833, 256
    %_359840 = trunc i64 %_359838 to i8
    %_359842.zext = zext i8 %_359840 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359842 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359829, i64 0, i9 %_359842.zext
    %_359845 = urem i64 %_359815, 4
    %_359847 = trunc i64 %_359845 to i2
    %_359849.zext = zext i2 %_359847 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359849 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359842, i64 0, i3 %_359849.zext
    %_359851 = load float, float addrspace(0)* %_359849
    %_359854 = load float, float addrspace(0)* %_359630
    %_359859 = fmul fast float %_359854, %_359851
    %accn_359862 = fadd fast float %_359859, %_359806
    store float %accn_359862, float addrspace(0)* %fv_0_359381
    %_359866 = load float, float addrspace(0)* %fv_0_359385
    %_359869 = udiv i64 %_359815, 2048
    %_359874 = urem i64 %_359869, 512
    %_359876 = trunc i64 %_359874 to i9
    %_359878.zext = zext i9 %_359876 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359878 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359878.zext
    %_359880.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359880 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359878, i64 0, i2 %_359880.zext
    %_359883 = udiv i64 %_359815, 4
    %_359888 = urem i64 %_359883, 256
    %_359890 = trunc i64 %_359888 to i8
    %_359892.zext = zext i8 %_359890 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359892 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359880, i64 0, i9 %_359892.zext
    %_359895 = urem i64 %_359815, 4
    %_359897 = trunc i64 %_359895 to i2
    %_359899.zext = zext i2 %_359897 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359899 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359892, i64 0, i3 %_359899.zext
    %_359901 = load float, float addrspace(0)* %_359899
    %_359904 = load float, float addrspace(0)* %_359684
    %_359909 = fmul fast float %_359904, %_359901
    %accn_359912 = fadd fast float %_359909, %_359866
    store float %accn_359912, float addrspace(0)* %fv_0_359385
    %_359916 = load float, float addrspace(0)* %fv_0_359389
    %_359919 = udiv i64 %_359815, 2048
    %_359924 = urem i64 %_359919, 512
    %_359926 = trunc i64 %_359924 to i9
    %_359928.zext = zext i9 %_359926 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359928 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359928.zext
    %_359930.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359930 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359928, i64 0, i2 %_359930.zext
    %_359933 = udiv i64 %_359815, 4
    %_359938 = urem i64 %_359933, 256
    %_359940 = trunc i64 %_359938 to i8
    %_359942.zext = zext i8 %_359940 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359942 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359930, i64 0, i9 %_359942.zext
    %_359945 = urem i64 %_359815, 4
    %_359947 = trunc i64 %_359945 to i2
    %_359949.zext = zext i2 %_359947 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359949 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359942, i64 0, i3 %_359949.zext
    %_359951 = load float, float addrspace(0)* %_359949
    %_359954 = load float, float addrspace(0)* %_359738
    %_359959 = fmul fast float %_359954, %_359951
    %accn_359962 = fadd fast float %_359959, %_359916
    store float %accn_359962, float addrspace(0)* %fv_0_359389
    %_359966 = load float, float addrspace(0)* %fv_0_359393
    %_359969 = udiv i64 %_359815, 2048
    %_359974 = urem i64 %_359969, 512
    %_359976 = trunc i64 %_359974 to i9
    %_359978.zext = zext i9 %_359976 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359978 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351946, i64 0, i10 %_359978.zext
    %_359980.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359980 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359978, i64 0, i2 %_359980.zext
    %_359983 = udiv i64 %_359815, 4
    %_359988 = urem i64 %_359983, 256
    %_359990 = trunc i64 %_359988 to i8
    %_359992.zext = zext i8 %_359990 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359992 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359980, i64 0, i9 %_359992.zext
    %_359995 = urem i64 %_359815, 4
    %_359997 = trunc i64 %_359995 to i2
    %_359999.zext = zext i2 %_359997 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359999 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359992, i64 0, i3 %_359999.zext
    %_360001 = load float, float addrspace(0)* %_359999
    %_360004 = load float, float addrspace(0)* %_359792
    %_360009 = fmul fast float %_360004, %_360001
    %accn_360012 = fadd fast float %_360009, %_359966
    store float %accn_360012, float addrspace(0)* %fv_0_359393
    br label %head_359397, !llvm.loop !1007

new_exit_359404:
    %fv_10_359406 = add nuw nsw i32 1, %iv_359352
    %_359409 = load float, float addrspace(0)* %fv_0_359365
    %_359419.zext = zext i10 %_359417 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359419 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_12_parameters_bias__359412, i64 0, i11 %_359419.zext
    %_359421 = load float, float addrspace(0)* %_359419
    %_359429.zext = zext i8 %_359413 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359429 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359427, i64 0, i9 %_359429.zext
    %_359431.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359431 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359429, i64 0, i3 %_359431.zext
    %_359435 = fadd fast float %_359409, %_359421
    %_359437 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359435)
    store float %_359437, float addrspace(0)* %_359431
    %_359441 = load float, float addrspace(0)* %fv_0_359369
    %_359447.zext = zext i10 %_359445 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359447 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_12_parameters_bias__359412, i64 0, i11 %_359447.zext
    %_359449 = load float, float addrspace(0)* %_359447
    %_359452.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359452 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359429, i64 0, i3 %_359452.zext
    %_359456 = fadd fast float %_359441, %_359449
    %_359458 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359456)
    store float %_359458, float addrspace(0)* %_359452
    %_359462 = load float, float addrspace(0)* %fv_0_359373
    %_359468.zext = zext i10 %_359466 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359468 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_12_parameters_bias__359412, i64 0, i11 %_359468.zext
    %_359470 = load float, float addrspace(0)* %_359468
    %_359473.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359473 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359429, i64 0, i3 %_359473.zext
    %_359477 = fadd fast float %_359462, %_359470
    %_359479 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359477)
    store float %_359479, float addrspace(0)* %_359473
    %_359483 = load float, float addrspace(0)* %fv_0_359377
    %_359489.zext = zext i10 %_359487 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359489 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_12_parameters_bias__359412, i64 0, i11 %_359489.zext
    %_359491 = load float, float addrspace(0)* %_359489
    %_359494.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359494 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359429, i64 0, i3 %_359494.zext
    %_359498 = fadd fast float %_359483, %_359491
    %_359500 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359498)
    store float %_359500, float addrspace(0)* %_359494
    %_359504 = load float, float addrspace(0)* %fv_0_359381
    %_359507 = load float, float addrspace(0)* %_359419
    %_359512.zext = zext i8 %_359413 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359512 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359510, i64 0, i9 %_359512.zext
    %_359514.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359514 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359512, i64 0, i3 %_359514.zext
    %_359518 = fadd fast float %_359504, %_359507
    %_359520 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359518)
    store float %_359520, float addrspace(0)* %_359514
    %_359524 = load float, float addrspace(0)* %fv_0_359385
    %_359527 = load float, float addrspace(0)* %_359447
    %_359530.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359530 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359512, i64 0, i3 %_359530.zext
    %_359534 = fadd fast float %_359524, %_359527
    %_359536 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359534)
    store float %_359536, float addrspace(0)* %_359530
    %_359540 = load float, float addrspace(0)* %fv_0_359389
    %_359543 = load float, float addrspace(0)* %_359468
    %_359546.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359546 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359512, i64 0, i3 %_359546.zext
    %_359550 = fadd fast float %_359540, %_359543
    %_359552 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359550)
    store float %_359552, float addrspace(0)* %_359546
    %_359556 = load float, float addrspace(0)* %fv_0_359393
    %_359559 = load float, float addrspace(0)* %_359489
    %_359562.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359562 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359512, i64 0, i3 %_359562.zext
    %_359566 = fadd fast float %_359556, %_359559
    %_359568 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359566)
    store float %_359568, float addrspace(0)* %_359562
    br label %head_359349

new_exit_359355:
    %fv_10_359357 = add nuw nsw i32 1, %iv_351970
    br label %head_351967

new_exit_351973:
    %_351976i8 = call i8* @malloc(i64 4194304)
    %_351976 = bitcast i8* %_351976i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351979i8 = call i8* @malloc(i64 32)
    %_351979 = bitcast i8* %_351979i8 to [8 x float] addrspace(0)*
    %fv_0_358682.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358682 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358682.zext
    %fv_0_358686.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358686 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358686.zext
    %fv_0_358690.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358690 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358690.zext
    %fv_0_358694.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358694 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358694.zext
    %fv_0_358698.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358698 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358698.zext
    %fv_0_358702.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358702 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358702.zext
    %fv_0_358706.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358706 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358706.zext
    %fv_0_358710.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358710 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351979, i64 0, i4 %fv_0_358710.zext
    br label %head_351982

head_351982:
    %iv_351985 = phi i32 [ 0, %new_exit_351973 ], [ %fv_10_358674, %new_exit_358672 ]
    %_351987 = icmp ult i32 %iv_351985, 512
    %_358740 = trunc i32 %iv_351985 to i9
    %_358900 = zext i9 %_358740 to i64
    %_358902 = mul i64 2048, %_358900
    %t_359126 = mul i64 2, %_358900
    %t_359128 = add i64 1, %t_359126
    %_359130 = mul i64 1024, %t_359128
    %_358742.zext = zext i9 %_358740 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358742 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358742.zext
    %_358744.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358744 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358742, i64 0, i2 %_358744.zext
    %_358827.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358827 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358742, i64 0, i2 %_358827.zext
    br i1 %_351987, label %new_body_358663, label %new_exit_351988

new_body_358663:
    br label %head_358666

head_358666:
    %iv_358669 = phi i32 [ 0, %new_body_358663 ], [ %fv_10_358723, %new_exit_358721 ]
    %_358671 = icmp ult i32 %iv_358669, 256
    %_358730 = trunc i32 %iv_358669 to i8
    %t_358731 = zext i8 %_358730 to i64
    %t_358733 = mul i64 4, %t_358731
    %_358734 = trunc i64 %t_358733 to i10
    %_358945.zext = zext i10 %_358734 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358945 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_14_parameters_weight__358943, i64 0, i11 %_358945.zext
    %t_358761 = add i64 1, %t_358733
    %_358762 = trunc i64 %t_358761 to i10
    %_358999.zext = zext i10 %_358762 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358999 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_14_parameters_weight__358943, i64 0, i11 %_358999.zext
    %t_358782 = add i64 2, %t_358733
    %_358783 = trunc i64 %t_358782 to i10
    %_359053.zext = zext i10 %_358783 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359053 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_14_parameters_weight__358943, i64 0, i11 %_359053.zext
    %t_358803 = add i64 3, %t_358733
    %_358804 = trunc i64 %t_358803 to i10
    %_359107.zext = zext i10 %_358804 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359107 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_14_parameters_weight__358943, i64 0, i11 %_359107.zext
    br i1 %_358671, label %new_body_358678, label %new_exit_358672

new_body_358678:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358682
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358686
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358690
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358694
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358698
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358702
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358706
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358710
    br label %head_358714, !llvm.loop !1008

head_358714:
    %iv_358717 = phi i32 [ 0, %new_body_358678 ], [ %fv_9_358892, %new_body_358890 ]
    %_358719 = icmp ult i32 %iv_358717, 1024
    br i1 %_358719, label %new_body_358890, label %new_exit_358721

new_body_358890:
    %fv_9_358892 = add nuw nsw i32 1, %iv_358717
    %_358895 = load float, float addrspace(0)* %fv_0_358682
    %_358898 = trunc i32 %iv_358717 to i10
    %_358899 = zext i10 %_358898 to i64
    %_358904 = add i64 %_358899, %_358902
    %_358907 = udiv i64 %_358904, 2048
    %_358912 = urem i64 %_358907, 512
    %_358914 = trunc i64 %_358912 to i9
    %_358916.zext = zext i9 %_358914 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358916 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_358916.zext
    %_358918.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358918 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358916, i64 0, i2 %_358918.zext
    %_358922 = udiv i64 %_358904, 4
    %_358927 = urem i64 %_358922, 256
    %_358929 = trunc i64 %_358927 to i8
    %_358931.zext = zext i8 %_358929 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358931 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358918, i64 0, i9 %_358931.zext
    %_358934 = urem i64 %_358904, 4
    %_358936 = trunc i64 %_358934 to i2
    %_358938.zext = zext i2 %_358936 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358938 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358931, i64 0, i3 %_358938.zext
    %_358940 = load float, float addrspace(0)* %_358938
    %_358947.zext = zext i10 %_358898 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358947 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_358945, i64 0, i11 %_358947.zext
    %_358949 = load float, float addrspace(0)* %_358947
    %_358954 = fmul fast float %_358949, %_358940
    %accn_358957 = fadd fast float %_358954, %_358895
    store float %accn_358957, float addrspace(0)* %fv_0_358682
    %_358961 = load float, float addrspace(0)* %fv_0_358686
    %_358964 = udiv i64 %_358904, 2048
    %_358969 = urem i64 %_358964, 512
    %_358971 = trunc i64 %_358969 to i9
    %_358973.zext = zext i9 %_358971 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358973 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_358973.zext
    %_358975.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358975 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358973, i64 0, i2 %_358975.zext
    %_358978 = udiv i64 %_358904, 4
    %_358983 = urem i64 %_358978, 256
    %_358985 = trunc i64 %_358983 to i8
    %_358987.zext = zext i8 %_358985 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358987 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358975, i64 0, i9 %_358987.zext
    %_358990 = urem i64 %_358904, 4
    %_358992 = trunc i64 %_358990 to i2
    %_358994.zext = zext i2 %_358992 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358994 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358987, i64 0, i3 %_358994.zext
    %_358996 = load float, float addrspace(0)* %_358994
    %_359001.zext = zext i10 %_358898 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359001 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_358999, i64 0, i11 %_359001.zext
    %_359003 = load float, float addrspace(0)* %_359001
    %_359008 = fmul fast float %_359003, %_358996
    %accn_359011 = fadd fast float %_359008, %_358961
    store float %accn_359011, float addrspace(0)* %fv_0_358686
    %_359015 = load float, float addrspace(0)* %fv_0_358690
    %_359018 = udiv i64 %_358904, 2048
    %_359023 = urem i64 %_359018, 512
    %_359025 = trunc i64 %_359023 to i9
    %_359027.zext = zext i9 %_359025 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359027 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_359027.zext
    %_359029.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359029 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359027, i64 0, i2 %_359029.zext
    %_359032 = udiv i64 %_358904, 4
    %_359037 = urem i64 %_359032, 256
    %_359039 = trunc i64 %_359037 to i8
    %_359041.zext = zext i8 %_359039 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359041 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359029, i64 0, i9 %_359041.zext
    %_359044 = urem i64 %_358904, 4
    %_359046 = trunc i64 %_359044 to i2
    %_359048.zext = zext i2 %_359046 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359048 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359041, i64 0, i3 %_359048.zext
    %_359050 = load float, float addrspace(0)* %_359048
    %_359055.zext = zext i10 %_358898 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359055 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_359053, i64 0, i11 %_359055.zext
    %_359057 = load float, float addrspace(0)* %_359055
    %_359062 = fmul fast float %_359057, %_359050
    %accn_359065 = fadd fast float %_359062, %_359015
    store float %accn_359065, float addrspace(0)* %fv_0_358690
    %_359069 = load float, float addrspace(0)* %fv_0_358694
    %_359072 = udiv i64 %_358904, 2048
    %_359077 = urem i64 %_359072, 512
    %_359079 = trunc i64 %_359077 to i9
    %_359081.zext = zext i9 %_359079 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359081 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_359081.zext
    %_359083.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359083 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359081, i64 0, i2 %_359083.zext
    %_359086 = udiv i64 %_358904, 4
    %_359091 = urem i64 %_359086, 256
    %_359093 = trunc i64 %_359091 to i8
    %_359095.zext = zext i8 %_359093 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359095 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359083, i64 0, i9 %_359095.zext
    %_359098 = urem i64 %_358904, 4
    %_359100 = trunc i64 %_359098 to i2
    %_359102.zext = zext i2 %_359100 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359102 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359095, i64 0, i3 %_359102.zext
    %_359104 = load float, float addrspace(0)* %_359102
    %_359109.zext = zext i10 %_358898 to i11 ; add one more bit for gep index as it is treated as signed value
    %_359109 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_359107, i64 0, i11 %_359109.zext
    %_359111 = load float, float addrspace(0)* %_359109
    %_359116 = fmul fast float %_359111, %_359104
    %accn_359119 = fadd fast float %_359116, %_359069
    store float %accn_359119, float addrspace(0)* %fv_0_358694
    %_359123 = load float, float addrspace(0)* %fv_0_358698
    %_359132 = add i64 %_358899, %_359130
    %_359135 = udiv i64 %_359132, 2048
    %_359140 = urem i64 %_359135, 512
    %_359142 = trunc i64 %_359140 to i9
    %_359144.zext = zext i9 %_359142 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359144 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_359144.zext
    %_359146.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359146 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359144, i64 0, i2 %_359146.zext
    %_359150 = udiv i64 %_359132, 4
    %_359155 = urem i64 %_359150, 256
    %_359157 = trunc i64 %_359155 to i8
    %_359159.zext = zext i8 %_359157 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359159 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359146, i64 0, i9 %_359159.zext
    %_359162 = urem i64 %_359132, 4
    %_359164 = trunc i64 %_359162 to i2
    %_359166.zext = zext i2 %_359164 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359166 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359159, i64 0, i3 %_359166.zext
    %_359168 = load float, float addrspace(0)* %_359166
    %_359171 = load float, float addrspace(0)* %_358947
    %_359176 = fmul fast float %_359171, %_359168
    %accn_359179 = fadd fast float %_359176, %_359123
    store float %accn_359179, float addrspace(0)* %fv_0_358698
    %_359183 = load float, float addrspace(0)* %fv_0_358702
    %_359186 = udiv i64 %_359132, 2048
    %_359191 = urem i64 %_359186, 512
    %_359193 = trunc i64 %_359191 to i9
    %_359195.zext = zext i9 %_359193 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359195 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_359195.zext
    %_359197.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359197 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359195, i64 0, i2 %_359197.zext
    %_359200 = udiv i64 %_359132, 4
    %_359205 = urem i64 %_359200, 256
    %_359207 = trunc i64 %_359205 to i8
    %_359209.zext = zext i8 %_359207 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359209 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359197, i64 0, i9 %_359209.zext
    %_359212 = urem i64 %_359132, 4
    %_359214 = trunc i64 %_359212 to i2
    %_359216.zext = zext i2 %_359214 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359216 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359209, i64 0, i3 %_359216.zext
    %_359218 = load float, float addrspace(0)* %_359216
    %_359221 = load float, float addrspace(0)* %_359001
    %_359226 = fmul fast float %_359221, %_359218
    %accn_359229 = fadd fast float %_359226, %_359183
    store float %accn_359229, float addrspace(0)* %fv_0_358702
    %_359233 = load float, float addrspace(0)* %fv_0_358706
    %_359236 = udiv i64 %_359132, 2048
    %_359241 = urem i64 %_359236, 512
    %_359243 = trunc i64 %_359241 to i9
    %_359245.zext = zext i9 %_359243 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359245 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_359245.zext
    %_359247.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359247 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359245, i64 0, i2 %_359247.zext
    %_359250 = udiv i64 %_359132, 4
    %_359255 = urem i64 %_359250, 256
    %_359257 = trunc i64 %_359255 to i8
    %_359259.zext = zext i8 %_359257 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359259 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359247, i64 0, i9 %_359259.zext
    %_359262 = urem i64 %_359132, 4
    %_359264 = trunc i64 %_359262 to i2
    %_359266.zext = zext i2 %_359264 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359266 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359259, i64 0, i3 %_359266.zext
    %_359268 = load float, float addrspace(0)* %_359266
    %_359271 = load float, float addrspace(0)* %_359055
    %_359276 = fmul fast float %_359271, %_359268
    %accn_359279 = fadd fast float %_359276, %_359233
    store float %accn_359279, float addrspace(0)* %fv_0_358706
    %_359283 = load float, float addrspace(0)* %fv_0_358710
    %_359286 = udiv i64 %_359132, 2048
    %_359291 = urem i64 %_359286, 512
    %_359293 = trunc i64 %_359291 to i9
    %_359295.zext = zext i9 %_359293 to i10 ; add one more bit for gep index as it is treated as signed value
    %_359295 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351961, i64 0, i10 %_359295.zext
    %_359297.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_359297 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_359295, i64 0, i2 %_359297.zext
    %_359300 = udiv i64 %_359132, 4
    %_359305 = urem i64 %_359300, 256
    %_359307 = trunc i64 %_359305 to i8
    %_359309.zext = zext i8 %_359307 to i9 ; add one more bit for gep index as it is treated as signed value
    %_359309 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_359297, i64 0, i9 %_359309.zext
    %_359312 = urem i64 %_359132, 4
    %_359314 = trunc i64 %_359312 to i2
    %_359316.zext = zext i2 %_359314 to i3 ; add one more bit for gep index as it is treated as signed value
    %_359316 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_359309, i64 0, i3 %_359316.zext
    %_359318 = load float, float addrspace(0)* %_359316
    %_359321 = load float, float addrspace(0)* %_359109
    %_359326 = fmul fast float %_359321, %_359318
    %accn_359329 = fadd fast float %_359326, %_359283
    store float %accn_359329, float addrspace(0)* %fv_0_358710
    br label %head_358714, !llvm.loop !1008

new_exit_358721:
    %fv_10_358723 = add nuw nsw i32 1, %iv_358669
    %_358726 = load float, float addrspace(0)* %fv_0_358682
    %_358736.zext = zext i10 %_358734 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358736 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_14_parameters_bias__358729, i64 0, i11 %_358736.zext
    %_358738 = load float, float addrspace(0)* %_358736
    %_358746.zext = zext i8 %_358730 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358746 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358744, i64 0, i9 %_358746.zext
    %_358748.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358748 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358746, i64 0, i3 %_358748.zext
    %_358752 = fadd fast float %_358726, %_358738
    %_358754 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358752)
    store float %_358754, float addrspace(0)* %_358748
    %_358758 = load float, float addrspace(0)* %fv_0_358686
    %_358764.zext = zext i10 %_358762 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358764 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_14_parameters_bias__358729, i64 0, i11 %_358764.zext
    %_358766 = load float, float addrspace(0)* %_358764
    %_358769.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358769 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358746, i64 0, i3 %_358769.zext
    %_358773 = fadd fast float %_358758, %_358766
    %_358775 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358773)
    store float %_358775, float addrspace(0)* %_358769
    %_358779 = load float, float addrspace(0)* %fv_0_358690
    %_358785.zext = zext i10 %_358783 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358785 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_14_parameters_bias__358729, i64 0, i11 %_358785.zext
    %_358787 = load float, float addrspace(0)* %_358785
    %_358790.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358790 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358746, i64 0, i3 %_358790.zext
    %_358794 = fadd fast float %_358779, %_358787
    %_358796 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358794)
    store float %_358796, float addrspace(0)* %_358790
    %_358800 = load float, float addrspace(0)* %fv_0_358694
    %_358806.zext = zext i10 %_358804 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358806 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_14_parameters_bias__358729, i64 0, i11 %_358806.zext
    %_358808 = load float, float addrspace(0)* %_358806
    %_358811.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358811 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358746, i64 0, i3 %_358811.zext
    %_358815 = fadd fast float %_358800, %_358808
    %_358817 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358815)
    store float %_358817, float addrspace(0)* %_358811
    %_358821 = load float, float addrspace(0)* %fv_0_358698
    %_358824 = load float, float addrspace(0)* %_358736
    %_358829.zext = zext i8 %_358730 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358829 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358827, i64 0, i9 %_358829.zext
    %_358831.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358831 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358829, i64 0, i3 %_358831.zext
    %_358835 = fadd fast float %_358821, %_358824
    %_358837 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358835)
    store float %_358837, float addrspace(0)* %_358831
    %_358841 = load float, float addrspace(0)* %fv_0_358702
    %_358844 = load float, float addrspace(0)* %_358764
    %_358847.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358847 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358829, i64 0, i3 %_358847.zext
    %_358851 = fadd fast float %_358841, %_358844
    %_358853 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358851)
    store float %_358853, float addrspace(0)* %_358847
    %_358857 = load float, float addrspace(0)* %fv_0_358706
    %_358860 = load float, float addrspace(0)* %_358785
    %_358863.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358863 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358829, i64 0, i3 %_358863.zext
    %_358867 = fadd fast float %_358857, %_358860
    %_358869 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358867)
    store float %_358869, float addrspace(0)* %_358863
    %_358873 = load float, float addrspace(0)* %fv_0_358710
    %_358876 = load float, float addrspace(0)* %_358806
    %_358879.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358879 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358829, i64 0, i3 %_358879.zext
    %_358883 = fadd fast float %_358873, %_358876
    %_358885 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358883)
    store float %_358885, float addrspace(0)* %_358879
    br label %head_358666

new_exit_358672:
    %fv_10_358674 = add nuw nsw i32 1, %iv_351985
    br label %head_351982

new_exit_351988:
    %_351991i8 = call i8* @malloc(i64 4194304)
    %_351991 = bitcast i8* %_351991i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_351994i8 = call i8* @malloc(i64 32)
    %_351994 = bitcast i8* %_351994i8 to [8 x float] addrspace(0)*
    %fv_0_357999.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357999 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_357999.zext
    %fv_0_358003.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358003 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_358003.zext
    %fv_0_358007.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358007 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_358007.zext
    %fv_0_358011.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358011 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_358011.zext
    %fv_0_358015.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358015 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_358015.zext
    %fv_0_358019.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358019 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_358019.zext
    %fv_0_358023.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358023 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_358023.zext
    %fv_0_358027.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_358027 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_351994, i64 0, i4 %fv_0_358027.zext
    br label %head_351997

head_351997:
    %iv_352000 = phi i32 [ 0, %new_exit_351988 ], [ %fv_10_357991, %new_exit_357989 ]
    %_352002 = icmp ult i32 %iv_352000, 512
    %_358057 = trunc i32 %iv_352000 to i9
    %_358217 = zext i9 %_358057 to i64
    %_358219 = mul i64 2048, %_358217
    %t_358443 = mul i64 2, %_358217
    %t_358445 = add i64 1, %t_358443
    %_358447 = mul i64 1024, %t_358445
    %_358059.zext = zext i9 %_358057 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358059 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_358059.zext
    %_358061.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358061 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358059, i64 0, i2 %_358061.zext
    %_358144.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358144 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358059, i64 0, i2 %_358144.zext
    br i1 %_352002, label %new_body_357980, label %new_exit_352003

new_body_357980:
    br label %head_357983

head_357983:
    %iv_357986 = phi i32 [ 0, %new_body_357980 ], [ %fv_10_358040, %new_exit_358038 ]
    %_357988 = icmp ult i32 %iv_357986, 256
    %_358047 = trunc i32 %iv_357986 to i8
    %t_358048 = zext i8 %_358047 to i64
    %t_358050 = mul i64 4, %t_358048
    %_358051 = trunc i64 %t_358050 to i10
    %_358262.zext = zext i10 %_358051 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358262 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_16_parameters_weight__358260, i64 0, i11 %_358262.zext
    %t_358078 = add i64 1, %t_358050
    %_358079 = trunc i64 %t_358078 to i10
    %_358316.zext = zext i10 %_358079 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358316 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_16_parameters_weight__358260, i64 0, i11 %_358316.zext
    %t_358099 = add i64 2, %t_358050
    %_358100 = trunc i64 %t_358099 to i10
    %_358370.zext = zext i10 %_358100 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358370 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_16_parameters_weight__358260, i64 0, i11 %_358370.zext
    %t_358120 = add i64 3, %t_358050
    %_358121 = trunc i64 %t_358120 to i10
    %_358424.zext = zext i10 %_358121 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358424 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_16_parameters_weight__358260, i64 0, i11 %_358424.zext
    br i1 %_357988, label %new_body_357995, label %new_exit_357989

new_body_357995:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357999
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358003
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358007
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358011
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358015
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358019
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358023
    store float 0x0000000000000000, float addrspace(0)* %fv_0_358027
    br label %head_358031, !llvm.loop !1009

head_358031:
    %iv_358034 = phi i32 [ 0, %new_body_357995 ], [ %fv_9_358209, %new_body_358207 ]
    %_358036 = icmp ult i32 %iv_358034, 1024
    br i1 %_358036, label %new_body_358207, label %new_exit_358038

new_body_358207:
    %fv_9_358209 = add nuw nsw i32 1, %iv_358034
    %_358212 = load float, float addrspace(0)* %fv_0_357999
    %_358215 = trunc i32 %iv_358034 to i10
    %_358216 = zext i10 %_358215 to i64
    %_358221 = add i64 %_358216, %_358219
    %_358224 = udiv i64 %_358221, 2048
    %_358229 = urem i64 %_358224, 512
    %_358231 = trunc i64 %_358229 to i9
    %_358233.zext = zext i9 %_358231 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358233 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358233.zext
    %_358235.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358235 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358233, i64 0, i2 %_358235.zext
    %_358239 = udiv i64 %_358221, 4
    %_358244 = urem i64 %_358239, 256
    %_358246 = trunc i64 %_358244 to i8
    %_358248.zext = zext i8 %_358246 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358248 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358235, i64 0, i9 %_358248.zext
    %_358251 = urem i64 %_358221, 4
    %_358253 = trunc i64 %_358251 to i2
    %_358255.zext = zext i2 %_358253 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358255 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358248, i64 0, i3 %_358255.zext
    %_358257 = load float, float addrspace(0)* %_358255
    %_358264.zext = zext i10 %_358215 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358264 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_358262, i64 0, i11 %_358264.zext
    %_358266 = load float, float addrspace(0)* %_358264
    %_358271 = fmul fast float %_358266, %_358257
    %accn_358274 = fadd fast float %_358271, %_358212
    store float %accn_358274, float addrspace(0)* %fv_0_357999
    %_358278 = load float, float addrspace(0)* %fv_0_358003
    %_358281 = udiv i64 %_358221, 2048
    %_358286 = urem i64 %_358281, 512
    %_358288 = trunc i64 %_358286 to i9
    %_358290.zext = zext i9 %_358288 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358290 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358290.zext
    %_358292.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358292 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358290, i64 0, i2 %_358292.zext
    %_358295 = udiv i64 %_358221, 4
    %_358300 = urem i64 %_358295, 256
    %_358302 = trunc i64 %_358300 to i8
    %_358304.zext = zext i8 %_358302 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358304 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358292, i64 0, i9 %_358304.zext
    %_358307 = urem i64 %_358221, 4
    %_358309 = trunc i64 %_358307 to i2
    %_358311.zext = zext i2 %_358309 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358311 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358304, i64 0, i3 %_358311.zext
    %_358313 = load float, float addrspace(0)* %_358311
    %_358318.zext = zext i10 %_358215 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358318 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_358316, i64 0, i11 %_358318.zext
    %_358320 = load float, float addrspace(0)* %_358318
    %_358325 = fmul fast float %_358320, %_358313
    %accn_358328 = fadd fast float %_358325, %_358278
    store float %accn_358328, float addrspace(0)* %fv_0_358003
    %_358332 = load float, float addrspace(0)* %fv_0_358007
    %_358335 = udiv i64 %_358221, 2048
    %_358340 = urem i64 %_358335, 512
    %_358342 = trunc i64 %_358340 to i9
    %_358344.zext = zext i9 %_358342 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358344 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358344.zext
    %_358346.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358346 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358344, i64 0, i2 %_358346.zext
    %_358349 = udiv i64 %_358221, 4
    %_358354 = urem i64 %_358349, 256
    %_358356 = trunc i64 %_358354 to i8
    %_358358.zext = zext i8 %_358356 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358358 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358346, i64 0, i9 %_358358.zext
    %_358361 = urem i64 %_358221, 4
    %_358363 = trunc i64 %_358361 to i2
    %_358365.zext = zext i2 %_358363 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358365 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358358, i64 0, i3 %_358365.zext
    %_358367 = load float, float addrspace(0)* %_358365
    %_358372.zext = zext i10 %_358215 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358372 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_358370, i64 0, i11 %_358372.zext
    %_358374 = load float, float addrspace(0)* %_358372
    %_358379 = fmul fast float %_358374, %_358367
    %accn_358382 = fadd fast float %_358379, %_358332
    store float %accn_358382, float addrspace(0)* %fv_0_358007
    %_358386 = load float, float addrspace(0)* %fv_0_358011
    %_358389 = udiv i64 %_358221, 2048
    %_358394 = urem i64 %_358389, 512
    %_358396 = trunc i64 %_358394 to i9
    %_358398.zext = zext i9 %_358396 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358398 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358398.zext
    %_358400.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358400 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358398, i64 0, i2 %_358400.zext
    %_358403 = udiv i64 %_358221, 4
    %_358408 = urem i64 %_358403, 256
    %_358410 = trunc i64 %_358408 to i8
    %_358412.zext = zext i8 %_358410 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358412 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358400, i64 0, i9 %_358412.zext
    %_358415 = urem i64 %_358221, 4
    %_358417 = trunc i64 %_358415 to i2
    %_358419.zext = zext i2 %_358417 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358419 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358412, i64 0, i3 %_358419.zext
    %_358421 = load float, float addrspace(0)* %_358419
    %_358426.zext = zext i10 %_358215 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358426 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_358424, i64 0, i11 %_358426.zext
    %_358428 = load float, float addrspace(0)* %_358426
    %_358433 = fmul fast float %_358428, %_358421
    %accn_358436 = fadd fast float %_358433, %_358386
    store float %accn_358436, float addrspace(0)* %fv_0_358011
    %_358440 = load float, float addrspace(0)* %fv_0_358015
    %_358449 = add i64 %_358216, %_358447
    %_358452 = udiv i64 %_358449, 2048
    %_358457 = urem i64 %_358452, 512
    %_358459 = trunc i64 %_358457 to i9
    %_358461.zext = zext i9 %_358459 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358461 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358461.zext
    %_358463.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358463 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358461, i64 0, i2 %_358463.zext
    %_358467 = udiv i64 %_358449, 4
    %_358472 = urem i64 %_358467, 256
    %_358474 = trunc i64 %_358472 to i8
    %_358476.zext = zext i8 %_358474 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358476 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358463, i64 0, i9 %_358476.zext
    %_358479 = urem i64 %_358449, 4
    %_358481 = trunc i64 %_358479 to i2
    %_358483.zext = zext i2 %_358481 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358483 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358476, i64 0, i3 %_358483.zext
    %_358485 = load float, float addrspace(0)* %_358483
    %_358488 = load float, float addrspace(0)* %_358264
    %_358493 = fmul fast float %_358488, %_358485
    %accn_358496 = fadd fast float %_358493, %_358440
    store float %accn_358496, float addrspace(0)* %fv_0_358015
    %_358500 = load float, float addrspace(0)* %fv_0_358019
    %_358503 = udiv i64 %_358449, 2048
    %_358508 = urem i64 %_358503, 512
    %_358510 = trunc i64 %_358508 to i9
    %_358512.zext = zext i9 %_358510 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358512 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358512.zext
    %_358514.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358514 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358512, i64 0, i2 %_358514.zext
    %_358517 = udiv i64 %_358449, 4
    %_358522 = urem i64 %_358517, 256
    %_358524 = trunc i64 %_358522 to i8
    %_358526.zext = zext i8 %_358524 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358526 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358514, i64 0, i9 %_358526.zext
    %_358529 = urem i64 %_358449, 4
    %_358531 = trunc i64 %_358529 to i2
    %_358533.zext = zext i2 %_358531 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358533 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358526, i64 0, i3 %_358533.zext
    %_358535 = load float, float addrspace(0)* %_358533
    %_358538 = load float, float addrspace(0)* %_358318
    %_358543 = fmul fast float %_358538, %_358535
    %accn_358546 = fadd fast float %_358543, %_358500
    store float %accn_358546, float addrspace(0)* %fv_0_358019
    %_358550 = load float, float addrspace(0)* %fv_0_358023
    %_358553 = udiv i64 %_358449, 2048
    %_358558 = urem i64 %_358553, 512
    %_358560 = trunc i64 %_358558 to i9
    %_358562.zext = zext i9 %_358560 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358562 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358562.zext
    %_358564.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358564 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358562, i64 0, i2 %_358564.zext
    %_358567 = udiv i64 %_358449, 4
    %_358572 = urem i64 %_358567, 256
    %_358574 = trunc i64 %_358572 to i8
    %_358576.zext = zext i8 %_358574 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358576 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358564, i64 0, i9 %_358576.zext
    %_358579 = urem i64 %_358449, 4
    %_358581 = trunc i64 %_358579 to i2
    %_358583.zext = zext i2 %_358581 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358583 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358576, i64 0, i3 %_358583.zext
    %_358585 = load float, float addrspace(0)* %_358583
    %_358588 = load float, float addrspace(0)* %_358372
    %_358593 = fmul fast float %_358588, %_358585
    %accn_358596 = fadd fast float %_358593, %_358550
    store float %accn_358596, float addrspace(0)* %fv_0_358023
    %_358600 = load float, float addrspace(0)* %fv_0_358027
    %_358603 = udiv i64 %_358449, 2048
    %_358608 = urem i64 %_358603, 512
    %_358610 = trunc i64 %_358608 to i9
    %_358612.zext = zext i9 %_358610 to i10 ; add one more bit for gep index as it is treated as signed value
    %_358612 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351976, i64 0, i10 %_358612.zext
    %_358614.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_358614 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_358612, i64 0, i2 %_358614.zext
    %_358617 = udiv i64 %_358449, 4
    %_358622 = urem i64 %_358617, 256
    %_358624 = trunc i64 %_358622 to i8
    %_358626.zext = zext i8 %_358624 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358626 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358614, i64 0, i9 %_358626.zext
    %_358629 = urem i64 %_358449, 4
    %_358631 = trunc i64 %_358629 to i2
    %_358633.zext = zext i2 %_358631 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358633 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358626, i64 0, i3 %_358633.zext
    %_358635 = load float, float addrspace(0)* %_358633
    %_358638 = load float, float addrspace(0)* %_358426
    %_358643 = fmul fast float %_358638, %_358635
    %accn_358646 = fadd fast float %_358643, %_358600
    store float %accn_358646, float addrspace(0)* %fv_0_358027
    br label %head_358031, !llvm.loop !1009

new_exit_358038:
    %fv_10_358040 = add nuw nsw i32 1, %iv_357986
    %_358043 = load float, float addrspace(0)* %fv_0_357999
    %_358053.zext = zext i10 %_358051 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358053 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_16_parameters_bias__358046, i64 0, i11 %_358053.zext
    %_358055 = load float, float addrspace(0)* %_358053
    %_358063.zext = zext i8 %_358047 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358063 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358061, i64 0, i9 %_358063.zext
    %_358065.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358065 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358063, i64 0, i3 %_358065.zext
    %_358069 = fadd fast float %_358043, %_358055
    %_358071 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358069)
    store float %_358071, float addrspace(0)* %_358065
    %_358075 = load float, float addrspace(0)* %fv_0_358003
    %_358081.zext = zext i10 %_358079 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358081 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_16_parameters_bias__358046, i64 0, i11 %_358081.zext
    %_358083 = load float, float addrspace(0)* %_358081
    %_358086.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358086 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358063, i64 0, i3 %_358086.zext
    %_358090 = fadd fast float %_358075, %_358083
    %_358092 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358090)
    store float %_358092, float addrspace(0)* %_358086
    %_358096 = load float, float addrspace(0)* %fv_0_358007
    %_358102.zext = zext i10 %_358100 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358102 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_16_parameters_bias__358046, i64 0, i11 %_358102.zext
    %_358104 = load float, float addrspace(0)* %_358102
    %_358107.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358107 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358063, i64 0, i3 %_358107.zext
    %_358111 = fadd fast float %_358096, %_358104
    %_358113 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358111)
    store float %_358113, float addrspace(0)* %_358107
    %_358117 = load float, float addrspace(0)* %fv_0_358011
    %_358123.zext = zext i10 %_358121 to i11 ; add one more bit for gep index as it is treated as signed value
    %_358123 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_16_parameters_bias__358046, i64 0, i11 %_358123.zext
    %_358125 = load float, float addrspace(0)* %_358123
    %_358128.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358128 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358063, i64 0, i3 %_358128.zext
    %_358132 = fadd fast float %_358117, %_358125
    %_358134 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358132)
    store float %_358134, float addrspace(0)* %_358128
    %_358138 = load float, float addrspace(0)* %fv_0_358015
    %_358141 = load float, float addrspace(0)* %_358053
    %_358146.zext = zext i8 %_358047 to i9 ; add one more bit for gep index as it is treated as signed value
    %_358146 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_358144, i64 0, i9 %_358146.zext
    %_358148.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358148 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358146, i64 0, i3 %_358148.zext
    %_358152 = fadd fast float %_358138, %_358141
    %_358154 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358152)
    store float %_358154, float addrspace(0)* %_358148
    %_358158 = load float, float addrspace(0)* %fv_0_358019
    %_358161 = load float, float addrspace(0)* %_358081
    %_358164.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358164 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358146, i64 0, i3 %_358164.zext
    %_358168 = fadd fast float %_358158, %_358161
    %_358170 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358168)
    store float %_358170, float addrspace(0)* %_358164
    %_358174 = load float, float addrspace(0)* %fv_0_358023
    %_358177 = load float, float addrspace(0)* %_358102
    %_358180.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358180 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358146, i64 0, i3 %_358180.zext
    %_358184 = fadd fast float %_358174, %_358177
    %_358186 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358184)
    store float %_358186, float addrspace(0)* %_358180
    %_358190 = load float, float addrspace(0)* %fv_0_358027
    %_358193 = load float, float addrspace(0)* %_358123
    %_358196.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_358196 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_358146, i64 0, i3 %_358196.zext
    %_358200 = fadd fast float %_358190, %_358193
    %_358202 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_358200)
    store float %_358202, float addrspace(0)* %_358196
    br label %head_357983

new_exit_357989:
    %fv_10_357991 = add nuw nsw i32 1, %iv_352000
    br label %head_351997

new_exit_352003:
    %_352006i8 = call i8* @malloc(i64 4194304)
    %_352006 = bitcast i8* %_352006i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_352009i8 = call i8* @malloc(i64 32)
    %_352009 = bitcast i8* %_352009i8 to [8 x float] addrspace(0)*
    %fv_0_357316.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357316 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357316.zext
    %fv_0_357320.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357320 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357320.zext
    %fv_0_357324.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357324 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357324.zext
    %fv_0_357328.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357328 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357328.zext
    %fv_0_357332.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357332 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357332.zext
    %fv_0_357336.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357336 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357336.zext
    %fv_0_357340.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357340 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357340.zext
    %fv_0_357344.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_357344 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352009, i64 0, i4 %fv_0_357344.zext
    br label %head_352012

head_352012:
    %iv_352015 = phi i32 [ 0, %new_exit_352003 ], [ %fv_10_357308, %new_exit_357306 ]
    %_352017 = icmp ult i32 %iv_352015, 512
    %_357374 = trunc i32 %iv_352015 to i9
    %_357534 = zext i9 %_357374 to i64
    %_357536 = mul i64 2048, %_357534
    %t_357760 = mul i64 2, %_357534
    %t_357762 = add i64 1, %t_357760
    %_357764 = mul i64 1024, %t_357762
    %_357376.zext = zext i9 %_357374 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357376 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_357376.zext
    %_357378.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357378 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357376, i64 0, i2 %_357378.zext
    %_357461.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357461 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357376, i64 0, i2 %_357461.zext
    br i1 %_352017, label %new_body_357297, label %new_exit_352018

new_body_357297:
    br label %head_357300

head_357300:
    %iv_357303 = phi i32 [ 0, %new_body_357297 ], [ %fv_10_357357, %new_exit_357355 ]
    %_357305 = icmp ult i32 %iv_357303, 256
    %_357364 = trunc i32 %iv_357303 to i8
    %t_357365 = zext i8 %_357364 to i64
    %t_357367 = mul i64 4, %t_357365
    %_357368 = trunc i64 %t_357367 to i10
    %_357579.zext = zext i10 %_357368 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357579 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_18_parameters_weight__357577, i64 0, i11 %_357579.zext
    %t_357395 = add i64 1, %t_357367
    %_357396 = trunc i64 %t_357395 to i10
    %_357633.zext = zext i10 %_357396 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357633 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_18_parameters_weight__357577, i64 0, i11 %_357633.zext
    %t_357416 = add i64 2, %t_357367
    %_357417 = trunc i64 %t_357416 to i10
    %_357687.zext = zext i10 %_357417 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357687 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_18_parameters_weight__357577, i64 0, i11 %_357687.zext
    %t_357437 = add i64 3, %t_357367
    %_357438 = trunc i64 %t_357437 to i10
    %_357741.zext = zext i10 %_357438 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357741 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_18_parameters_weight__357577, i64 0, i11 %_357741.zext
    br i1 %_357305, label %new_body_357312, label %new_exit_357306

new_body_357312:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357316
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357320
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357324
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357328
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357332
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357336
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357340
    store float 0x0000000000000000, float addrspace(0)* %fv_0_357344
    br label %head_357348, !llvm.loop !1010

head_357348:
    %iv_357351 = phi i32 [ 0, %new_body_357312 ], [ %fv_9_357526, %new_body_357524 ]
    %_357353 = icmp ult i32 %iv_357351, 1024
    br i1 %_357353, label %new_body_357524, label %new_exit_357355

new_body_357524:
    %fv_9_357526 = add nuw nsw i32 1, %iv_357351
    %_357529 = load float, float addrspace(0)* %fv_0_357316
    %_357532 = trunc i32 %iv_357351 to i10
    %_357533 = zext i10 %_357532 to i64
    %_357538 = add i64 %_357533, %_357536
    %_357541 = udiv i64 %_357538, 2048
    %_357546 = urem i64 %_357541, 512
    %_357548 = trunc i64 %_357546 to i9
    %_357550.zext = zext i9 %_357548 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357550 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357550.zext
    %_357552.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357552 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357550, i64 0, i2 %_357552.zext
    %_357556 = udiv i64 %_357538, 4
    %_357561 = urem i64 %_357556, 256
    %_357563 = trunc i64 %_357561 to i8
    %_357565.zext = zext i8 %_357563 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357565 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357552, i64 0, i9 %_357565.zext
    %_357568 = urem i64 %_357538, 4
    %_357570 = trunc i64 %_357568 to i2
    %_357572.zext = zext i2 %_357570 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357572 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357565, i64 0, i3 %_357572.zext
    %_357574 = load float, float addrspace(0)* %_357572
    %_357581.zext = zext i10 %_357532 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357581 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_357579, i64 0, i11 %_357581.zext
    %_357583 = load float, float addrspace(0)* %_357581
    %_357588 = fmul fast float %_357583, %_357574
    %accn_357591 = fadd fast float %_357588, %_357529
    store float %accn_357591, float addrspace(0)* %fv_0_357316
    %_357595 = load float, float addrspace(0)* %fv_0_357320
    %_357598 = udiv i64 %_357538, 2048
    %_357603 = urem i64 %_357598, 512
    %_357605 = trunc i64 %_357603 to i9
    %_357607.zext = zext i9 %_357605 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357607 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357607.zext
    %_357609.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357609 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357607, i64 0, i2 %_357609.zext
    %_357612 = udiv i64 %_357538, 4
    %_357617 = urem i64 %_357612, 256
    %_357619 = trunc i64 %_357617 to i8
    %_357621.zext = zext i8 %_357619 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357621 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357609, i64 0, i9 %_357621.zext
    %_357624 = urem i64 %_357538, 4
    %_357626 = trunc i64 %_357624 to i2
    %_357628.zext = zext i2 %_357626 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357628 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357621, i64 0, i3 %_357628.zext
    %_357630 = load float, float addrspace(0)* %_357628
    %_357635.zext = zext i10 %_357532 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357635 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_357633, i64 0, i11 %_357635.zext
    %_357637 = load float, float addrspace(0)* %_357635
    %_357642 = fmul fast float %_357637, %_357630
    %accn_357645 = fadd fast float %_357642, %_357595
    store float %accn_357645, float addrspace(0)* %fv_0_357320
    %_357649 = load float, float addrspace(0)* %fv_0_357324
    %_357652 = udiv i64 %_357538, 2048
    %_357657 = urem i64 %_357652, 512
    %_357659 = trunc i64 %_357657 to i9
    %_357661.zext = zext i9 %_357659 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357661 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357661.zext
    %_357663.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357663 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357661, i64 0, i2 %_357663.zext
    %_357666 = udiv i64 %_357538, 4
    %_357671 = urem i64 %_357666, 256
    %_357673 = trunc i64 %_357671 to i8
    %_357675.zext = zext i8 %_357673 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357675 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357663, i64 0, i9 %_357675.zext
    %_357678 = urem i64 %_357538, 4
    %_357680 = trunc i64 %_357678 to i2
    %_357682.zext = zext i2 %_357680 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357682 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357675, i64 0, i3 %_357682.zext
    %_357684 = load float, float addrspace(0)* %_357682
    %_357689.zext = zext i10 %_357532 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357689 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_357687, i64 0, i11 %_357689.zext
    %_357691 = load float, float addrspace(0)* %_357689
    %_357696 = fmul fast float %_357691, %_357684
    %accn_357699 = fadd fast float %_357696, %_357649
    store float %accn_357699, float addrspace(0)* %fv_0_357324
    %_357703 = load float, float addrspace(0)* %fv_0_357328
    %_357706 = udiv i64 %_357538, 2048
    %_357711 = urem i64 %_357706, 512
    %_357713 = trunc i64 %_357711 to i9
    %_357715.zext = zext i9 %_357713 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357715 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357715.zext
    %_357717.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357717 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357715, i64 0, i2 %_357717.zext
    %_357720 = udiv i64 %_357538, 4
    %_357725 = urem i64 %_357720, 256
    %_357727 = trunc i64 %_357725 to i8
    %_357729.zext = zext i8 %_357727 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357729 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357717, i64 0, i9 %_357729.zext
    %_357732 = urem i64 %_357538, 4
    %_357734 = trunc i64 %_357732 to i2
    %_357736.zext = zext i2 %_357734 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357736 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357729, i64 0, i3 %_357736.zext
    %_357738 = load float, float addrspace(0)* %_357736
    %_357743.zext = zext i10 %_357532 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357743 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_357741, i64 0, i11 %_357743.zext
    %_357745 = load float, float addrspace(0)* %_357743
    %_357750 = fmul fast float %_357745, %_357738
    %accn_357753 = fadd fast float %_357750, %_357703
    store float %accn_357753, float addrspace(0)* %fv_0_357328
    %_357757 = load float, float addrspace(0)* %fv_0_357332
    %_357766 = add i64 %_357533, %_357764
    %_357769 = udiv i64 %_357766, 2048
    %_357774 = urem i64 %_357769, 512
    %_357776 = trunc i64 %_357774 to i9
    %_357778.zext = zext i9 %_357776 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357778 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357778.zext
    %_357780.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357780 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357778, i64 0, i2 %_357780.zext
    %_357784 = udiv i64 %_357766, 4
    %_357789 = urem i64 %_357784, 256
    %_357791 = trunc i64 %_357789 to i8
    %_357793.zext = zext i8 %_357791 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357793 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357780, i64 0, i9 %_357793.zext
    %_357796 = urem i64 %_357766, 4
    %_357798 = trunc i64 %_357796 to i2
    %_357800.zext = zext i2 %_357798 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357800 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357793, i64 0, i3 %_357800.zext
    %_357802 = load float, float addrspace(0)* %_357800
    %_357805 = load float, float addrspace(0)* %_357581
    %_357810 = fmul fast float %_357805, %_357802
    %accn_357813 = fadd fast float %_357810, %_357757
    store float %accn_357813, float addrspace(0)* %fv_0_357332
    %_357817 = load float, float addrspace(0)* %fv_0_357336
    %_357820 = udiv i64 %_357766, 2048
    %_357825 = urem i64 %_357820, 512
    %_357827 = trunc i64 %_357825 to i9
    %_357829.zext = zext i9 %_357827 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357829 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357829.zext
    %_357831.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357831 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357829, i64 0, i2 %_357831.zext
    %_357834 = udiv i64 %_357766, 4
    %_357839 = urem i64 %_357834, 256
    %_357841 = trunc i64 %_357839 to i8
    %_357843.zext = zext i8 %_357841 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357843 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357831, i64 0, i9 %_357843.zext
    %_357846 = urem i64 %_357766, 4
    %_357848 = trunc i64 %_357846 to i2
    %_357850.zext = zext i2 %_357848 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357850 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357843, i64 0, i3 %_357850.zext
    %_357852 = load float, float addrspace(0)* %_357850
    %_357855 = load float, float addrspace(0)* %_357635
    %_357860 = fmul fast float %_357855, %_357852
    %accn_357863 = fadd fast float %_357860, %_357817
    store float %accn_357863, float addrspace(0)* %fv_0_357336
    %_357867 = load float, float addrspace(0)* %fv_0_357340
    %_357870 = udiv i64 %_357766, 2048
    %_357875 = urem i64 %_357870, 512
    %_357877 = trunc i64 %_357875 to i9
    %_357879.zext = zext i9 %_357877 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357879 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357879.zext
    %_357881.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357881 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357879, i64 0, i2 %_357881.zext
    %_357884 = udiv i64 %_357766, 4
    %_357889 = urem i64 %_357884, 256
    %_357891 = trunc i64 %_357889 to i8
    %_357893.zext = zext i8 %_357891 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357893 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357881, i64 0, i9 %_357893.zext
    %_357896 = urem i64 %_357766, 4
    %_357898 = trunc i64 %_357896 to i2
    %_357900.zext = zext i2 %_357898 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357900 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357893, i64 0, i3 %_357900.zext
    %_357902 = load float, float addrspace(0)* %_357900
    %_357905 = load float, float addrspace(0)* %_357689
    %_357910 = fmul fast float %_357905, %_357902
    %accn_357913 = fadd fast float %_357910, %_357867
    store float %accn_357913, float addrspace(0)* %fv_0_357340
    %_357917 = load float, float addrspace(0)* %fv_0_357344
    %_357920 = udiv i64 %_357766, 2048
    %_357925 = urem i64 %_357920, 512
    %_357927 = trunc i64 %_357925 to i9
    %_357929.zext = zext i9 %_357927 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357929 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_351991, i64 0, i10 %_357929.zext
    %_357931.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357931 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357929, i64 0, i2 %_357931.zext
    %_357934 = udiv i64 %_357766, 4
    %_357939 = urem i64 %_357934, 256
    %_357941 = trunc i64 %_357939 to i8
    %_357943.zext = zext i8 %_357941 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357943 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357931, i64 0, i9 %_357943.zext
    %_357946 = urem i64 %_357766, 4
    %_357948 = trunc i64 %_357946 to i2
    %_357950.zext = zext i2 %_357948 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357950 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357943, i64 0, i3 %_357950.zext
    %_357952 = load float, float addrspace(0)* %_357950
    %_357955 = load float, float addrspace(0)* %_357743
    %_357960 = fmul fast float %_357955, %_357952
    %accn_357963 = fadd fast float %_357960, %_357917
    store float %accn_357963, float addrspace(0)* %fv_0_357344
    br label %head_357348, !llvm.loop !1010

new_exit_357355:
    %fv_10_357357 = add nuw nsw i32 1, %iv_357303
    %_357360 = load float, float addrspace(0)* %fv_0_357316
    %_357370.zext = zext i10 %_357368 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357370 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_18_parameters_bias__357363, i64 0, i11 %_357370.zext
    %_357372 = load float, float addrspace(0)* %_357370
    %_357380.zext = zext i8 %_357364 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357380 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357378, i64 0, i9 %_357380.zext
    %_357382.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357382 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357380, i64 0, i3 %_357382.zext
    %_357386 = fadd fast float %_357360, %_357372
    %_357388 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357386)
    store float %_357388, float addrspace(0)* %_357382
    %_357392 = load float, float addrspace(0)* %fv_0_357320
    %_357398.zext = zext i10 %_357396 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357398 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_18_parameters_bias__357363, i64 0, i11 %_357398.zext
    %_357400 = load float, float addrspace(0)* %_357398
    %_357403.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357403 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357380, i64 0, i3 %_357403.zext
    %_357407 = fadd fast float %_357392, %_357400
    %_357409 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357407)
    store float %_357409, float addrspace(0)* %_357403
    %_357413 = load float, float addrspace(0)* %fv_0_357324
    %_357419.zext = zext i10 %_357417 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357419 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_18_parameters_bias__357363, i64 0, i11 %_357419.zext
    %_357421 = load float, float addrspace(0)* %_357419
    %_357424.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357424 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357380, i64 0, i3 %_357424.zext
    %_357428 = fadd fast float %_357413, %_357421
    %_357430 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357428)
    store float %_357430, float addrspace(0)* %_357424
    %_357434 = load float, float addrspace(0)* %fv_0_357328
    %_357440.zext = zext i10 %_357438 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357440 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_18_parameters_bias__357363, i64 0, i11 %_357440.zext
    %_357442 = load float, float addrspace(0)* %_357440
    %_357445.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357445 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357380, i64 0, i3 %_357445.zext
    %_357449 = fadd fast float %_357434, %_357442
    %_357451 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357449)
    store float %_357451, float addrspace(0)* %_357445
    %_357455 = load float, float addrspace(0)* %fv_0_357332
    %_357458 = load float, float addrspace(0)* %_357370
    %_357463.zext = zext i8 %_357364 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357463 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357461, i64 0, i9 %_357463.zext
    %_357465.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357465 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357463, i64 0, i3 %_357465.zext
    %_357469 = fadd fast float %_357455, %_357458
    %_357471 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357469)
    store float %_357471, float addrspace(0)* %_357465
    %_357475 = load float, float addrspace(0)* %fv_0_357336
    %_357478 = load float, float addrspace(0)* %_357398
    %_357481.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357481 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357463, i64 0, i3 %_357481.zext
    %_357485 = fadd fast float %_357475, %_357478
    %_357487 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357485)
    store float %_357487, float addrspace(0)* %_357481
    %_357491 = load float, float addrspace(0)* %fv_0_357340
    %_357494 = load float, float addrspace(0)* %_357419
    %_357497.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357497 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357463, i64 0, i3 %_357497.zext
    %_357501 = fadd fast float %_357491, %_357494
    %_357503 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357501)
    store float %_357503, float addrspace(0)* %_357497
    %_357507 = load float, float addrspace(0)* %fv_0_357344
    %_357510 = load float, float addrspace(0)* %_357440
    %_357513.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357513 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357463, i64 0, i3 %_357513.zext
    %_357517 = fadd fast float %_357507, %_357510
    %_357519 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357517)
    store float %_357519, float addrspace(0)* %_357513
    br label %head_357300

new_exit_357306:
    %fv_10_357308 = add nuw nsw i32 1, %iv_352015
    br label %head_352012

new_exit_352018:
    %_352021i8 = call i8* @malloc(i64 4194304)
    %_352021 = bitcast i8* %_352021i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_352024i8 = call i8* @malloc(i64 32)
    %_352024 = bitcast i8* %_352024i8 to [8 x float] addrspace(0)*
    %fv_0_356633.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356633 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356633.zext
    %fv_0_356637.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356637 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356637.zext
    %fv_0_356641.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356641 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356641.zext
    %fv_0_356645.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356645 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356645.zext
    %fv_0_356649.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356649 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356649.zext
    %fv_0_356653.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356653 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356653.zext
    %fv_0_356657.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356657 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356657.zext
    %fv_0_356661.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_356661 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352024, i64 0, i4 %fv_0_356661.zext
    br label %head_352027

head_352027:
    %iv_352030 = phi i32 [ 0, %new_exit_352018 ], [ %fv_10_356625, %new_exit_356623 ]
    %_352032 = icmp ult i32 %iv_352030, 512
    %_356691 = trunc i32 %iv_352030 to i9
    %_356851 = zext i9 %_356691 to i64
    %_356853 = mul i64 2048, %_356851
    %t_357077 = mul i64 2, %_356851
    %t_357079 = add i64 1, %t_357077
    %_357081 = mul i64 1024, %t_357079
    %_356693.zext = zext i9 %_356691 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356693 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356693.zext
    %_356695.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356695 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356693, i64 0, i2 %_356695.zext
    %_356778.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356778 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356693, i64 0, i2 %_356778.zext
    br i1 %_352032, label %new_body_356614, label %new_exit_352033

new_body_356614:
    br label %head_356617

head_356617:
    %iv_356620 = phi i32 [ 0, %new_body_356614 ], [ %fv_10_356674, %new_exit_356672 ]
    %_356622 = icmp ult i32 %iv_356620, 256
    %_356681 = trunc i32 %iv_356620 to i8
    %t_356682 = zext i8 %_356681 to i64
    %t_356684 = mul i64 4, %t_356682
    %_356685 = trunc i64 %t_356684 to i10
    %_356896.zext = zext i10 %_356685 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356896 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_20_parameters_weight__356894, i64 0, i11 %_356896.zext
    %t_356712 = add i64 1, %t_356684
    %_356713 = trunc i64 %t_356712 to i10
    %_356950.zext = zext i10 %_356713 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356950 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_20_parameters_weight__356894, i64 0, i11 %_356950.zext
    %t_356733 = add i64 2, %t_356684
    %_356734 = trunc i64 %t_356733 to i10
    %_357004.zext = zext i10 %_356734 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357004 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_20_parameters_weight__356894, i64 0, i11 %_357004.zext
    %t_356754 = add i64 3, %t_356684
    %_356755 = trunc i64 %t_356754 to i10
    %_357058.zext = zext i10 %_356755 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357058 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_20_parameters_weight__356894, i64 0, i11 %_357058.zext
    br i1 %_356622, label %new_body_356629, label %new_exit_356623

new_body_356629:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356633
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356637
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356641
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356645
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356649
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356653
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356657
    store float 0x0000000000000000, float addrspace(0)* %fv_0_356661
    br label %head_356665, !llvm.loop !1011

head_356665:
    %iv_356668 = phi i32 [ 0, %new_body_356629 ], [ %fv_9_356843, %new_body_356841 ]
    %_356670 = icmp ult i32 %iv_356668, 1024
    br i1 %_356670, label %new_body_356841, label %new_exit_356672

new_body_356841:
    %fv_9_356843 = add nuw nsw i32 1, %iv_356668
    %_356846 = load float, float addrspace(0)* %fv_0_356633
    %_356849 = trunc i32 %iv_356668 to i10
    %_356850 = zext i10 %_356849 to i64
    %_356855 = add i64 %_356850, %_356853
    %_356858 = udiv i64 %_356855, 2048
    %_356863 = urem i64 %_356858, 512
    %_356865 = trunc i64 %_356863 to i9
    %_356867.zext = zext i9 %_356865 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356867 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_356867.zext
    %_356869.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356869 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356867, i64 0, i2 %_356869.zext
    %_356873 = udiv i64 %_356855, 4
    %_356878 = urem i64 %_356873, 256
    %_356880 = trunc i64 %_356878 to i8
    %_356882.zext = zext i8 %_356880 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356882 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356869, i64 0, i9 %_356882.zext
    %_356885 = urem i64 %_356855, 4
    %_356887 = trunc i64 %_356885 to i2
    %_356889.zext = zext i2 %_356887 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356889 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356882, i64 0, i3 %_356889.zext
    %_356891 = load float, float addrspace(0)* %_356889
    %_356898.zext = zext i10 %_356849 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356898 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_356896, i64 0, i11 %_356898.zext
    %_356900 = load float, float addrspace(0)* %_356898
    %_356905 = fmul fast float %_356900, %_356891
    %accn_356908 = fadd fast float %_356905, %_356846
    store float %accn_356908, float addrspace(0)* %fv_0_356633
    %_356912 = load float, float addrspace(0)* %fv_0_356637
    %_356915 = udiv i64 %_356855, 2048
    %_356920 = urem i64 %_356915, 512
    %_356922 = trunc i64 %_356920 to i9
    %_356924.zext = zext i9 %_356922 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356924 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_356924.zext
    %_356926.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356926 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356924, i64 0, i2 %_356926.zext
    %_356929 = udiv i64 %_356855, 4
    %_356934 = urem i64 %_356929, 256
    %_356936 = trunc i64 %_356934 to i8
    %_356938.zext = zext i8 %_356936 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356938 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356926, i64 0, i9 %_356938.zext
    %_356941 = urem i64 %_356855, 4
    %_356943 = trunc i64 %_356941 to i2
    %_356945.zext = zext i2 %_356943 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356945 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356938, i64 0, i3 %_356945.zext
    %_356947 = load float, float addrspace(0)* %_356945
    %_356952.zext = zext i10 %_356849 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356952 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_356950, i64 0, i11 %_356952.zext
    %_356954 = load float, float addrspace(0)* %_356952
    %_356959 = fmul fast float %_356954, %_356947
    %accn_356962 = fadd fast float %_356959, %_356912
    store float %accn_356962, float addrspace(0)* %fv_0_356637
    %_356966 = load float, float addrspace(0)* %fv_0_356641
    %_356969 = udiv i64 %_356855, 2048
    %_356974 = urem i64 %_356969, 512
    %_356976 = trunc i64 %_356974 to i9
    %_356978.zext = zext i9 %_356976 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356978 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_356978.zext
    %_356980.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356980 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356978, i64 0, i2 %_356980.zext
    %_356983 = udiv i64 %_356855, 4
    %_356988 = urem i64 %_356983, 256
    %_356990 = trunc i64 %_356988 to i8
    %_356992.zext = zext i8 %_356990 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356992 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356980, i64 0, i9 %_356992.zext
    %_356995 = urem i64 %_356855, 4
    %_356997 = trunc i64 %_356995 to i2
    %_356999.zext = zext i2 %_356997 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356999 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356992, i64 0, i3 %_356999.zext
    %_357001 = load float, float addrspace(0)* %_356999
    %_357006.zext = zext i10 %_356849 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357006 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_357004, i64 0, i11 %_357006.zext
    %_357008 = load float, float addrspace(0)* %_357006
    %_357013 = fmul fast float %_357008, %_357001
    %accn_357016 = fadd fast float %_357013, %_356966
    store float %accn_357016, float addrspace(0)* %fv_0_356641
    %_357020 = load float, float addrspace(0)* %fv_0_356645
    %_357023 = udiv i64 %_356855, 2048
    %_357028 = urem i64 %_357023, 512
    %_357030 = trunc i64 %_357028 to i9
    %_357032.zext = zext i9 %_357030 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357032 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_357032.zext
    %_357034.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357034 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357032, i64 0, i2 %_357034.zext
    %_357037 = udiv i64 %_356855, 4
    %_357042 = urem i64 %_357037, 256
    %_357044 = trunc i64 %_357042 to i8
    %_357046.zext = zext i8 %_357044 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357046 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357034, i64 0, i9 %_357046.zext
    %_357049 = urem i64 %_356855, 4
    %_357051 = trunc i64 %_357049 to i2
    %_357053.zext = zext i2 %_357051 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357053 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357046, i64 0, i3 %_357053.zext
    %_357055 = load float, float addrspace(0)* %_357053
    %_357060.zext = zext i10 %_356849 to i11 ; add one more bit for gep index as it is treated as signed value
    %_357060 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_357058, i64 0, i11 %_357060.zext
    %_357062 = load float, float addrspace(0)* %_357060
    %_357067 = fmul fast float %_357062, %_357055
    %accn_357070 = fadd fast float %_357067, %_357020
    store float %accn_357070, float addrspace(0)* %fv_0_356645
    %_357074 = load float, float addrspace(0)* %fv_0_356649
    %_357083 = add i64 %_356850, %_357081
    %_357086 = udiv i64 %_357083, 2048
    %_357091 = urem i64 %_357086, 512
    %_357093 = trunc i64 %_357091 to i9
    %_357095.zext = zext i9 %_357093 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357095 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_357095.zext
    %_357097.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357097 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357095, i64 0, i2 %_357097.zext
    %_357101 = udiv i64 %_357083, 4
    %_357106 = urem i64 %_357101, 256
    %_357108 = trunc i64 %_357106 to i8
    %_357110.zext = zext i8 %_357108 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357110 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357097, i64 0, i9 %_357110.zext
    %_357113 = urem i64 %_357083, 4
    %_357115 = trunc i64 %_357113 to i2
    %_357117.zext = zext i2 %_357115 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357117 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357110, i64 0, i3 %_357117.zext
    %_357119 = load float, float addrspace(0)* %_357117
    %_357122 = load float, float addrspace(0)* %_356898
    %_357127 = fmul fast float %_357122, %_357119
    %accn_357130 = fadd fast float %_357127, %_357074
    store float %accn_357130, float addrspace(0)* %fv_0_356649
    %_357134 = load float, float addrspace(0)* %fv_0_356653
    %_357137 = udiv i64 %_357083, 2048
    %_357142 = urem i64 %_357137, 512
    %_357144 = trunc i64 %_357142 to i9
    %_357146.zext = zext i9 %_357144 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357146 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_357146.zext
    %_357148.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357148 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357146, i64 0, i2 %_357148.zext
    %_357151 = udiv i64 %_357083, 4
    %_357156 = urem i64 %_357151, 256
    %_357158 = trunc i64 %_357156 to i8
    %_357160.zext = zext i8 %_357158 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357160 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357148, i64 0, i9 %_357160.zext
    %_357163 = urem i64 %_357083, 4
    %_357165 = trunc i64 %_357163 to i2
    %_357167.zext = zext i2 %_357165 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357167 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357160, i64 0, i3 %_357167.zext
    %_357169 = load float, float addrspace(0)* %_357167
    %_357172 = load float, float addrspace(0)* %_356952
    %_357177 = fmul fast float %_357172, %_357169
    %accn_357180 = fadd fast float %_357177, %_357134
    store float %accn_357180, float addrspace(0)* %fv_0_356653
    %_357184 = load float, float addrspace(0)* %fv_0_356657
    %_357187 = udiv i64 %_357083, 2048
    %_357192 = urem i64 %_357187, 512
    %_357194 = trunc i64 %_357192 to i9
    %_357196.zext = zext i9 %_357194 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357196 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_357196.zext
    %_357198.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357198 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357196, i64 0, i2 %_357198.zext
    %_357201 = udiv i64 %_357083, 4
    %_357206 = urem i64 %_357201, 256
    %_357208 = trunc i64 %_357206 to i8
    %_357210.zext = zext i8 %_357208 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357210 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357198, i64 0, i9 %_357210.zext
    %_357213 = urem i64 %_357083, 4
    %_357215 = trunc i64 %_357213 to i2
    %_357217.zext = zext i2 %_357215 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357217 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357210, i64 0, i3 %_357217.zext
    %_357219 = load float, float addrspace(0)* %_357217
    %_357222 = load float, float addrspace(0)* %_357006
    %_357227 = fmul fast float %_357222, %_357219
    %accn_357230 = fadd fast float %_357227, %_357184
    store float %accn_357230, float addrspace(0)* %fv_0_356657
    %_357234 = load float, float addrspace(0)* %fv_0_356661
    %_357237 = udiv i64 %_357083, 2048
    %_357242 = urem i64 %_357237, 512
    %_357244 = trunc i64 %_357242 to i9
    %_357246.zext = zext i9 %_357244 to i10 ; add one more bit for gep index as it is treated as signed value
    %_357246 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352006, i64 0, i10 %_357246.zext
    %_357248.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357248 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_357246, i64 0, i2 %_357248.zext
    %_357251 = udiv i64 %_357083, 4
    %_357256 = urem i64 %_357251, 256
    %_357258 = trunc i64 %_357256 to i8
    %_357260.zext = zext i8 %_357258 to i9 ; add one more bit for gep index as it is treated as signed value
    %_357260 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_357248, i64 0, i9 %_357260.zext
    %_357263 = urem i64 %_357083, 4
    %_357265 = trunc i64 %_357263 to i2
    %_357267.zext = zext i2 %_357265 to i3 ; add one more bit for gep index as it is treated as signed value
    %_357267 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_357260, i64 0, i3 %_357267.zext
    %_357269 = load float, float addrspace(0)* %_357267
    %_357272 = load float, float addrspace(0)* %_357060
    %_357277 = fmul fast float %_357272, %_357269
    %accn_357280 = fadd fast float %_357277, %_357234
    store float %accn_357280, float addrspace(0)* %fv_0_356661
    br label %head_356665, !llvm.loop !1011

new_exit_356672:
    %fv_10_356674 = add nuw nsw i32 1, %iv_356620
    %_356677 = load float, float addrspace(0)* %fv_0_356633
    %_356687.zext = zext i10 %_356685 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356687 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_20_parameters_bias__356680, i64 0, i11 %_356687.zext
    %_356689 = load float, float addrspace(0)* %_356687
    %_356697.zext = zext i8 %_356681 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356697 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356695, i64 0, i9 %_356697.zext
    %_356699.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356699 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356697, i64 0, i3 %_356699.zext
    %_356703 = fadd fast float %_356677, %_356689
    %_356705 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356703)
    store float %_356705, float addrspace(0)* %_356699
    %_356709 = load float, float addrspace(0)* %fv_0_356637
    %_356715.zext = zext i10 %_356713 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356715 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_20_parameters_bias__356680, i64 0, i11 %_356715.zext
    %_356717 = load float, float addrspace(0)* %_356715
    %_356720.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356720 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356697, i64 0, i3 %_356720.zext
    %_356724 = fadd fast float %_356709, %_356717
    %_356726 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356724)
    store float %_356726, float addrspace(0)* %_356720
    %_356730 = load float, float addrspace(0)* %fv_0_356641
    %_356736.zext = zext i10 %_356734 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356736 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_20_parameters_bias__356680, i64 0, i11 %_356736.zext
    %_356738 = load float, float addrspace(0)* %_356736
    %_356741.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356741 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356697, i64 0, i3 %_356741.zext
    %_356745 = fadd fast float %_356730, %_356738
    %_356747 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356745)
    store float %_356747, float addrspace(0)* %_356741
    %_356751 = load float, float addrspace(0)* %fv_0_356645
    %_356757.zext = zext i10 %_356755 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356757 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_20_parameters_bias__356680, i64 0, i11 %_356757.zext
    %_356759 = load float, float addrspace(0)* %_356757
    %_356762.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356762 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356697, i64 0, i3 %_356762.zext
    %_356766 = fadd fast float %_356751, %_356759
    %_356768 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356766)
    store float %_356768, float addrspace(0)* %_356762
    %_356772 = load float, float addrspace(0)* %fv_0_356649
    %_356775 = load float, float addrspace(0)* %_356687
    %_356780.zext = zext i8 %_356681 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356780 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356778, i64 0, i9 %_356780.zext
    %_356782.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356782 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356780, i64 0, i3 %_356782.zext
    %_356786 = fadd fast float %_356772, %_356775
    %_356788 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356786)
    store float %_356788, float addrspace(0)* %_356782
    %_356792 = load float, float addrspace(0)* %fv_0_356653
    %_356795 = load float, float addrspace(0)* %_356715
    %_356798.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356798 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356780, i64 0, i3 %_356798.zext
    %_356802 = fadd fast float %_356792, %_356795
    %_356804 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356802)
    store float %_356804, float addrspace(0)* %_356798
    %_356808 = load float, float addrspace(0)* %fv_0_356657
    %_356811 = load float, float addrspace(0)* %_356736
    %_356814.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356814 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356780, i64 0, i3 %_356814.zext
    %_356818 = fadd fast float %_356808, %_356811
    %_356820 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356818)
    store float %_356820, float addrspace(0)* %_356814
    %_356824 = load float, float addrspace(0)* %fv_0_356661
    %_356827 = load float, float addrspace(0)* %_356757
    %_356830.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356830 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356780, i64 0, i3 %_356830.zext
    %_356834 = fadd fast float %_356824, %_356827
    %_356836 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356834)
    store float %_356836, float addrspace(0)* %_356830
    br label %head_356617

new_exit_356623:
    %fv_10_356625 = add nuw nsw i32 1, %iv_352030
    br label %head_352027

new_exit_352033:
    %_352036i8 = call i8* @malloc(i64 4194304)
    %_352036 = bitcast i8* %_352036i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_352039i8 = call i8* @malloc(i64 32)
    %_352039 = bitcast i8* %_352039i8 to [8 x float] addrspace(0)*
    %fv_0_355950.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355950 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355950.zext
    %fv_0_355954.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355954 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355954.zext
    %fv_0_355958.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355958 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355958.zext
    %fv_0_355962.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355962 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355962.zext
    %fv_0_355966.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355966 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355966.zext
    %fv_0_355970.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355970 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355970.zext
    %fv_0_355974.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355974 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355974.zext
    %fv_0_355978.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355978 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352039, i64 0, i4 %fv_0_355978.zext
    br label %head_352042

head_352042:
    %iv_352045 = phi i32 [ 0, %new_exit_352033 ], [ %fv_10_355942, %new_exit_355940 ]
    %_352047 = icmp ult i32 %iv_352045, 512
    %_356008 = trunc i32 %iv_352045 to i9
    %_356168 = zext i9 %_356008 to i64
    %_356170 = mul i64 2048, %_356168
    %t_356394 = mul i64 2, %_356168
    %t_356396 = add i64 1, %t_356394
    %_356398 = mul i64 1024, %t_356396
    %_356010.zext = zext i9 %_356008 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356010 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_356010.zext
    %_356012.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356012 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356010, i64 0, i2 %_356012.zext
    %_356095.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356095 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356010, i64 0, i2 %_356095.zext
    br i1 %_352047, label %new_body_355931, label %new_exit_352048

new_body_355931:
    br label %head_355934

head_355934:
    %iv_355937 = phi i32 [ 0, %new_body_355931 ], [ %fv_10_355991, %new_exit_355989 ]
    %_355939 = icmp ult i32 %iv_355937, 256
    %_355998 = trunc i32 %iv_355937 to i8
    %t_355999 = zext i8 %_355998 to i64
    %t_356001 = mul i64 4, %t_355999
    %_356002 = trunc i64 %t_356001 to i10
    %_356213.zext = zext i10 %_356002 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356213 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_22_parameters_weight__356211, i64 0, i11 %_356213.zext
    %t_356029 = add i64 1, %t_356001
    %_356030 = trunc i64 %t_356029 to i10
    %_356267.zext = zext i10 %_356030 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356267 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_22_parameters_weight__356211, i64 0, i11 %_356267.zext
    %t_356050 = add i64 2, %t_356001
    %_356051 = trunc i64 %t_356050 to i10
    %_356321.zext = zext i10 %_356051 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356321 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_22_parameters_weight__356211, i64 0, i11 %_356321.zext
    %t_356071 = add i64 3, %t_356001
    %_356072 = trunc i64 %t_356071 to i10
    %_356375.zext = zext i10 %_356072 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356375 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_22_parameters_weight__356211, i64 0, i11 %_356375.zext
    br i1 %_355939, label %new_body_355946, label %new_exit_355940

new_body_355946:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355950
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355954
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355958
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355962
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355966
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355970
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355974
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355978
    br label %head_355982, !llvm.loop !1012

head_355982:
    %iv_355985 = phi i32 [ 0, %new_body_355946 ], [ %fv_9_356160, %new_body_356158 ]
    %_355987 = icmp ult i32 %iv_355985, 1024
    br i1 %_355987, label %new_body_356158, label %new_exit_355989

new_body_356158:
    %fv_9_356160 = add nuw nsw i32 1, %iv_355985
    %_356163 = load float, float addrspace(0)* %fv_0_355950
    %_356166 = trunc i32 %iv_355985 to i10
    %_356167 = zext i10 %_356166 to i64
    %_356172 = add i64 %_356167, %_356170
    %_356175 = udiv i64 %_356172, 2048
    %_356180 = urem i64 %_356175, 512
    %_356182 = trunc i64 %_356180 to i9
    %_356184.zext = zext i9 %_356182 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356184 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356184.zext
    %_356186.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356186 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356184, i64 0, i2 %_356186.zext
    %_356190 = udiv i64 %_356172, 4
    %_356195 = urem i64 %_356190, 256
    %_356197 = trunc i64 %_356195 to i8
    %_356199.zext = zext i8 %_356197 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356199 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356186, i64 0, i9 %_356199.zext
    %_356202 = urem i64 %_356172, 4
    %_356204 = trunc i64 %_356202 to i2
    %_356206.zext = zext i2 %_356204 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356206 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356199, i64 0, i3 %_356206.zext
    %_356208 = load float, float addrspace(0)* %_356206
    %_356215.zext = zext i10 %_356166 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356215 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_356213, i64 0, i11 %_356215.zext
    %_356217 = load float, float addrspace(0)* %_356215
    %_356222 = fmul fast float %_356217, %_356208
    %accn_356225 = fadd fast float %_356222, %_356163
    store float %accn_356225, float addrspace(0)* %fv_0_355950
    %_356229 = load float, float addrspace(0)* %fv_0_355954
    %_356232 = udiv i64 %_356172, 2048
    %_356237 = urem i64 %_356232, 512
    %_356239 = trunc i64 %_356237 to i9
    %_356241.zext = zext i9 %_356239 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356241 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356241.zext
    %_356243.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356243 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356241, i64 0, i2 %_356243.zext
    %_356246 = udiv i64 %_356172, 4
    %_356251 = urem i64 %_356246, 256
    %_356253 = trunc i64 %_356251 to i8
    %_356255.zext = zext i8 %_356253 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356255 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356243, i64 0, i9 %_356255.zext
    %_356258 = urem i64 %_356172, 4
    %_356260 = trunc i64 %_356258 to i2
    %_356262.zext = zext i2 %_356260 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356262 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356255, i64 0, i3 %_356262.zext
    %_356264 = load float, float addrspace(0)* %_356262
    %_356269.zext = zext i10 %_356166 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356269 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_356267, i64 0, i11 %_356269.zext
    %_356271 = load float, float addrspace(0)* %_356269
    %_356276 = fmul fast float %_356271, %_356264
    %accn_356279 = fadd fast float %_356276, %_356229
    store float %accn_356279, float addrspace(0)* %fv_0_355954
    %_356283 = load float, float addrspace(0)* %fv_0_355958
    %_356286 = udiv i64 %_356172, 2048
    %_356291 = urem i64 %_356286, 512
    %_356293 = trunc i64 %_356291 to i9
    %_356295.zext = zext i9 %_356293 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356295 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356295.zext
    %_356297.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356297 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356295, i64 0, i2 %_356297.zext
    %_356300 = udiv i64 %_356172, 4
    %_356305 = urem i64 %_356300, 256
    %_356307 = trunc i64 %_356305 to i8
    %_356309.zext = zext i8 %_356307 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356309 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356297, i64 0, i9 %_356309.zext
    %_356312 = urem i64 %_356172, 4
    %_356314 = trunc i64 %_356312 to i2
    %_356316.zext = zext i2 %_356314 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356316 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356309, i64 0, i3 %_356316.zext
    %_356318 = load float, float addrspace(0)* %_356316
    %_356323.zext = zext i10 %_356166 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356323 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_356321, i64 0, i11 %_356323.zext
    %_356325 = load float, float addrspace(0)* %_356323
    %_356330 = fmul fast float %_356325, %_356318
    %accn_356333 = fadd fast float %_356330, %_356283
    store float %accn_356333, float addrspace(0)* %fv_0_355958
    %_356337 = load float, float addrspace(0)* %fv_0_355962
    %_356340 = udiv i64 %_356172, 2048
    %_356345 = urem i64 %_356340, 512
    %_356347 = trunc i64 %_356345 to i9
    %_356349.zext = zext i9 %_356347 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356349 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356349.zext
    %_356351.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356351 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356349, i64 0, i2 %_356351.zext
    %_356354 = udiv i64 %_356172, 4
    %_356359 = urem i64 %_356354, 256
    %_356361 = trunc i64 %_356359 to i8
    %_356363.zext = zext i8 %_356361 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356363 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356351, i64 0, i9 %_356363.zext
    %_356366 = urem i64 %_356172, 4
    %_356368 = trunc i64 %_356366 to i2
    %_356370.zext = zext i2 %_356368 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356370 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356363, i64 0, i3 %_356370.zext
    %_356372 = load float, float addrspace(0)* %_356370
    %_356377.zext = zext i10 %_356166 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356377 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_356375, i64 0, i11 %_356377.zext
    %_356379 = load float, float addrspace(0)* %_356377
    %_356384 = fmul fast float %_356379, %_356372
    %accn_356387 = fadd fast float %_356384, %_356337
    store float %accn_356387, float addrspace(0)* %fv_0_355962
    %_356391 = load float, float addrspace(0)* %fv_0_355966
    %_356400 = add i64 %_356167, %_356398
    %_356403 = udiv i64 %_356400, 2048
    %_356408 = urem i64 %_356403, 512
    %_356410 = trunc i64 %_356408 to i9
    %_356412.zext = zext i9 %_356410 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356412 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356412.zext
    %_356414.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356414 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356412, i64 0, i2 %_356414.zext
    %_356418 = udiv i64 %_356400, 4
    %_356423 = urem i64 %_356418, 256
    %_356425 = trunc i64 %_356423 to i8
    %_356427.zext = zext i8 %_356425 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356427 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356414, i64 0, i9 %_356427.zext
    %_356430 = urem i64 %_356400, 4
    %_356432 = trunc i64 %_356430 to i2
    %_356434.zext = zext i2 %_356432 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356434 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356427, i64 0, i3 %_356434.zext
    %_356436 = load float, float addrspace(0)* %_356434
    %_356439 = load float, float addrspace(0)* %_356215
    %_356444 = fmul fast float %_356439, %_356436
    %accn_356447 = fadd fast float %_356444, %_356391
    store float %accn_356447, float addrspace(0)* %fv_0_355966
    %_356451 = load float, float addrspace(0)* %fv_0_355970
    %_356454 = udiv i64 %_356400, 2048
    %_356459 = urem i64 %_356454, 512
    %_356461 = trunc i64 %_356459 to i9
    %_356463.zext = zext i9 %_356461 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356463 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356463.zext
    %_356465.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356465 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356463, i64 0, i2 %_356465.zext
    %_356468 = udiv i64 %_356400, 4
    %_356473 = urem i64 %_356468, 256
    %_356475 = trunc i64 %_356473 to i8
    %_356477.zext = zext i8 %_356475 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356477 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356465, i64 0, i9 %_356477.zext
    %_356480 = urem i64 %_356400, 4
    %_356482 = trunc i64 %_356480 to i2
    %_356484.zext = zext i2 %_356482 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356484 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356477, i64 0, i3 %_356484.zext
    %_356486 = load float, float addrspace(0)* %_356484
    %_356489 = load float, float addrspace(0)* %_356269
    %_356494 = fmul fast float %_356489, %_356486
    %accn_356497 = fadd fast float %_356494, %_356451
    store float %accn_356497, float addrspace(0)* %fv_0_355970
    %_356501 = load float, float addrspace(0)* %fv_0_355974
    %_356504 = udiv i64 %_356400, 2048
    %_356509 = urem i64 %_356504, 512
    %_356511 = trunc i64 %_356509 to i9
    %_356513.zext = zext i9 %_356511 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356513 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356513.zext
    %_356515.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356515 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356513, i64 0, i2 %_356515.zext
    %_356518 = udiv i64 %_356400, 4
    %_356523 = urem i64 %_356518, 256
    %_356525 = trunc i64 %_356523 to i8
    %_356527.zext = zext i8 %_356525 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356527 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356515, i64 0, i9 %_356527.zext
    %_356530 = urem i64 %_356400, 4
    %_356532 = trunc i64 %_356530 to i2
    %_356534.zext = zext i2 %_356532 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356534 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356527, i64 0, i3 %_356534.zext
    %_356536 = load float, float addrspace(0)* %_356534
    %_356539 = load float, float addrspace(0)* %_356323
    %_356544 = fmul fast float %_356539, %_356536
    %accn_356547 = fadd fast float %_356544, %_356501
    store float %accn_356547, float addrspace(0)* %fv_0_355974
    %_356551 = load float, float addrspace(0)* %fv_0_355978
    %_356554 = udiv i64 %_356400, 2048
    %_356559 = urem i64 %_356554, 512
    %_356561 = trunc i64 %_356559 to i9
    %_356563.zext = zext i9 %_356561 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356563 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352021, i64 0, i10 %_356563.zext
    %_356565.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356565 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_356563, i64 0, i2 %_356565.zext
    %_356568 = udiv i64 %_356400, 4
    %_356573 = urem i64 %_356568, 256
    %_356575 = trunc i64 %_356573 to i8
    %_356577.zext = zext i8 %_356575 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356577 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356565, i64 0, i9 %_356577.zext
    %_356580 = urem i64 %_356400, 4
    %_356582 = trunc i64 %_356580 to i2
    %_356584.zext = zext i2 %_356582 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356584 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356577, i64 0, i3 %_356584.zext
    %_356586 = load float, float addrspace(0)* %_356584
    %_356589 = load float, float addrspace(0)* %_356377
    %_356594 = fmul fast float %_356589, %_356586
    %accn_356597 = fadd fast float %_356594, %_356551
    store float %accn_356597, float addrspace(0)* %fv_0_355978
    br label %head_355982, !llvm.loop !1012

new_exit_355989:
    %fv_10_355991 = add nuw nsw i32 1, %iv_355937
    %_355994 = load float, float addrspace(0)* %fv_0_355950
    %_356004.zext = zext i10 %_356002 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356004 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_22_parameters_bias__355997, i64 0, i11 %_356004.zext
    %_356006 = load float, float addrspace(0)* %_356004
    %_356014.zext = zext i8 %_355998 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356014 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356012, i64 0, i9 %_356014.zext
    %_356016.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356016 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356014, i64 0, i3 %_356016.zext
    %_356020 = fadd fast float %_355994, %_356006
    %_356022 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356020)
    store float %_356022, float addrspace(0)* %_356016
    %_356026 = load float, float addrspace(0)* %fv_0_355954
    %_356032.zext = zext i10 %_356030 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356032 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_22_parameters_bias__355997, i64 0, i11 %_356032.zext
    %_356034 = load float, float addrspace(0)* %_356032
    %_356037.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356037 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356014, i64 0, i3 %_356037.zext
    %_356041 = fadd fast float %_356026, %_356034
    %_356043 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356041)
    store float %_356043, float addrspace(0)* %_356037
    %_356047 = load float, float addrspace(0)* %fv_0_355958
    %_356053.zext = zext i10 %_356051 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356053 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_22_parameters_bias__355997, i64 0, i11 %_356053.zext
    %_356055 = load float, float addrspace(0)* %_356053
    %_356058.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356058 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356014, i64 0, i3 %_356058.zext
    %_356062 = fadd fast float %_356047, %_356055
    %_356064 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356062)
    store float %_356064, float addrspace(0)* %_356058
    %_356068 = load float, float addrspace(0)* %fv_0_355962
    %_356074.zext = zext i10 %_356072 to i11 ; add one more bit for gep index as it is treated as signed value
    %_356074 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_22_parameters_bias__355997, i64 0, i11 %_356074.zext
    %_356076 = load float, float addrspace(0)* %_356074
    %_356079.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356079 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356014, i64 0, i3 %_356079.zext
    %_356083 = fadd fast float %_356068, %_356076
    %_356085 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356083)
    store float %_356085, float addrspace(0)* %_356079
    %_356089 = load float, float addrspace(0)* %fv_0_355966
    %_356092 = load float, float addrspace(0)* %_356004
    %_356097.zext = zext i8 %_355998 to i9 ; add one more bit for gep index as it is treated as signed value
    %_356097 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_356095, i64 0, i9 %_356097.zext
    %_356099.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356099 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356097, i64 0, i3 %_356099.zext
    %_356103 = fadd fast float %_356089, %_356092
    %_356105 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356103)
    store float %_356105, float addrspace(0)* %_356099
    %_356109 = load float, float addrspace(0)* %fv_0_355970
    %_356112 = load float, float addrspace(0)* %_356032
    %_356115.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356115 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356097, i64 0, i3 %_356115.zext
    %_356119 = fadd fast float %_356109, %_356112
    %_356121 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356119)
    store float %_356121, float addrspace(0)* %_356115
    %_356125 = load float, float addrspace(0)* %fv_0_355974
    %_356128 = load float, float addrspace(0)* %_356053
    %_356131.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356131 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356097, i64 0, i3 %_356131.zext
    %_356135 = fadd fast float %_356125, %_356128
    %_356137 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356135)
    store float %_356137, float addrspace(0)* %_356131
    %_356141 = load float, float addrspace(0)* %fv_0_355978
    %_356144 = load float, float addrspace(0)* %_356074
    %_356147.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_356147 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_356097, i64 0, i3 %_356147.zext
    %_356151 = fadd fast float %_356141, %_356144
    %_356153 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_356151)
    store float %_356153, float addrspace(0)* %_356147
    br label %head_355934

new_exit_355940:
    %fv_10_355942 = add nuw nsw i32 1, %iv_352045
    br label %head_352042

new_exit_352048:
    %_352051i8 = call i8* @malloc(i64 4194304)
    %_352051 = bitcast i8* %_352051i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_352054i8 = call i8* @malloc(i64 32)
    %_352054 = bitcast i8* %_352054i8 to [8 x float] addrspace(0)*
    %fv_0_355267.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355267 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355267.zext
    %fv_0_355271.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355271 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355271.zext
    %fv_0_355275.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355275 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355275.zext
    %fv_0_355279.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355279 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355279.zext
    %fv_0_355283.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355283 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355283.zext
    %fv_0_355287.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355287 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355287.zext
    %fv_0_355291.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355291 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355291.zext
    %fv_0_355295.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355295 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352054, i64 0, i4 %fv_0_355295.zext
    br label %head_352057

head_352057:
    %iv_352060 = phi i32 [ 0, %new_exit_352048 ], [ %fv_10_355259, %new_exit_355257 ]
    %_352062 = icmp ult i32 %iv_352060, 512
    %_355325 = trunc i32 %iv_352060 to i9
    %_355485 = zext i9 %_355325 to i64
    %_355487 = mul i64 2048, %_355485
    %t_355711 = mul i64 2, %_355485
    %t_355713 = add i64 1, %t_355711
    %_355715 = mul i64 1024, %t_355713
    %_355327.zext = zext i9 %_355325 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355327 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_355327.zext
    %_355329.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355329 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355327, i64 0, i2 %_355329.zext
    %_355412.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355412 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355327, i64 0, i2 %_355412.zext
    br i1 %_352062, label %new_body_355248, label %new_exit_352063

new_body_355248:
    br label %head_355251

head_355251:
    %iv_355254 = phi i32 [ 0, %new_body_355248 ], [ %fv_10_355308, %new_exit_355306 ]
    %_355256 = icmp ult i32 %iv_355254, 256
    %_355315 = trunc i32 %iv_355254 to i8
    %t_355316 = zext i8 %_355315 to i64
    %t_355318 = mul i64 4, %t_355316
    %_355319 = trunc i64 %t_355318 to i10
    %_355530.zext = zext i10 %_355319 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355530 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_24_parameters_weight__355528, i64 0, i11 %_355530.zext
    %t_355346 = add i64 1, %t_355318
    %_355347 = trunc i64 %t_355346 to i10
    %_355584.zext = zext i10 %_355347 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355584 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_24_parameters_weight__355528, i64 0, i11 %_355584.zext
    %t_355367 = add i64 2, %t_355318
    %_355368 = trunc i64 %t_355367 to i10
    %_355638.zext = zext i10 %_355368 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355638 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_24_parameters_weight__355528, i64 0, i11 %_355638.zext
    %t_355388 = add i64 3, %t_355318
    %_355389 = trunc i64 %t_355388 to i10
    %_355692.zext = zext i10 %_355389 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355692 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_24_parameters_weight__355528, i64 0, i11 %_355692.zext
    br i1 %_355256, label %new_body_355263, label %new_exit_355257

new_body_355263:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355267
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355271
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355275
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355279
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355283
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355287
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355291
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355295
    br label %head_355299, !llvm.loop !1013

head_355299:
    %iv_355302 = phi i32 [ 0, %new_body_355263 ], [ %fv_9_355477, %new_body_355475 ]
    %_355304 = icmp ult i32 %iv_355302, 1024
    br i1 %_355304, label %new_body_355475, label %new_exit_355306

new_body_355475:
    %fv_9_355477 = add nuw nsw i32 1, %iv_355302
    %_355480 = load float, float addrspace(0)* %fv_0_355267
    %_355483 = trunc i32 %iv_355302 to i10
    %_355484 = zext i10 %_355483 to i64
    %_355489 = add i64 %_355484, %_355487
    %_355492 = udiv i64 %_355489, 2048
    %_355497 = urem i64 %_355492, 512
    %_355499 = trunc i64 %_355497 to i9
    %_355501.zext = zext i9 %_355499 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355501 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355501.zext
    %_355503.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355503 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355501, i64 0, i2 %_355503.zext
    %_355507 = udiv i64 %_355489, 4
    %_355512 = urem i64 %_355507, 256
    %_355514 = trunc i64 %_355512 to i8
    %_355516.zext = zext i8 %_355514 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355516 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355503, i64 0, i9 %_355516.zext
    %_355519 = urem i64 %_355489, 4
    %_355521 = trunc i64 %_355519 to i2
    %_355523.zext = zext i2 %_355521 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355523 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355516, i64 0, i3 %_355523.zext
    %_355525 = load float, float addrspace(0)* %_355523
    %_355532.zext = zext i10 %_355483 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355532 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_355530, i64 0, i11 %_355532.zext
    %_355534 = load float, float addrspace(0)* %_355532
    %_355539 = fmul fast float %_355534, %_355525
    %accn_355542 = fadd fast float %_355539, %_355480
    store float %accn_355542, float addrspace(0)* %fv_0_355267
    %_355546 = load float, float addrspace(0)* %fv_0_355271
    %_355549 = udiv i64 %_355489, 2048
    %_355554 = urem i64 %_355549, 512
    %_355556 = trunc i64 %_355554 to i9
    %_355558.zext = zext i9 %_355556 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355558 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355558.zext
    %_355560.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355560 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355558, i64 0, i2 %_355560.zext
    %_355563 = udiv i64 %_355489, 4
    %_355568 = urem i64 %_355563, 256
    %_355570 = trunc i64 %_355568 to i8
    %_355572.zext = zext i8 %_355570 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355572 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355560, i64 0, i9 %_355572.zext
    %_355575 = urem i64 %_355489, 4
    %_355577 = trunc i64 %_355575 to i2
    %_355579.zext = zext i2 %_355577 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355579 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355572, i64 0, i3 %_355579.zext
    %_355581 = load float, float addrspace(0)* %_355579
    %_355586.zext = zext i10 %_355483 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355586 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_355584, i64 0, i11 %_355586.zext
    %_355588 = load float, float addrspace(0)* %_355586
    %_355593 = fmul fast float %_355588, %_355581
    %accn_355596 = fadd fast float %_355593, %_355546
    store float %accn_355596, float addrspace(0)* %fv_0_355271
    %_355600 = load float, float addrspace(0)* %fv_0_355275
    %_355603 = udiv i64 %_355489, 2048
    %_355608 = urem i64 %_355603, 512
    %_355610 = trunc i64 %_355608 to i9
    %_355612.zext = zext i9 %_355610 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355612 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355612.zext
    %_355614.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355614 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355612, i64 0, i2 %_355614.zext
    %_355617 = udiv i64 %_355489, 4
    %_355622 = urem i64 %_355617, 256
    %_355624 = trunc i64 %_355622 to i8
    %_355626.zext = zext i8 %_355624 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355626 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355614, i64 0, i9 %_355626.zext
    %_355629 = urem i64 %_355489, 4
    %_355631 = trunc i64 %_355629 to i2
    %_355633.zext = zext i2 %_355631 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355633 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355626, i64 0, i3 %_355633.zext
    %_355635 = load float, float addrspace(0)* %_355633
    %_355640.zext = zext i10 %_355483 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355640 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_355638, i64 0, i11 %_355640.zext
    %_355642 = load float, float addrspace(0)* %_355640
    %_355647 = fmul fast float %_355642, %_355635
    %accn_355650 = fadd fast float %_355647, %_355600
    store float %accn_355650, float addrspace(0)* %fv_0_355275
    %_355654 = load float, float addrspace(0)* %fv_0_355279
    %_355657 = udiv i64 %_355489, 2048
    %_355662 = urem i64 %_355657, 512
    %_355664 = trunc i64 %_355662 to i9
    %_355666.zext = zext i9 %_355664 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355666 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355666.zext
    %_355668.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355668 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355666, i64 0, i2 %_355668.zext
    %_355671 = udiv i64 %_355489, 4
    %_355676 = urem i64 %_355671, 256
    %_355678 = trunc i64 %_355676 to i8
    %_355680.zext = zext i8 %_355678 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355680 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355668, i64 0, i9 %_355680.zext
    %_355683 = urem i64 %_355489, 4
    %_355685 = trunc i64 %_355683 to i2
    %_355687.zext = zext i2 %_355685 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355687 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355680, i64 0, i3 %_355687.zext
    %_355689 = load float, float addrspace(0)* %_355687
    %_355694.zext = zext i10 %_355483 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355694 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_355692, i64 0, i11 %_355694.zext
    %_355696 = load float, float addrspace(0)* %_355694
    %_355701 = fmul fast float %_355696, %_355689
    %accn_355704 = fadd fast float %_355701, %_355654
    store float %accn_355704, float addrspace(0)* %fv_0_355279
    %_355708 = load float, float addrspace(0)* %fv_0_355283
    %_355717 = add i64 %_355484, %_355715
    %_355720 = udiv i64 %_355717, 2048
    %_355725 = urem i64 %_355720, 512
    %_355727 = trunc i64 %_355725 to i9
    %_355729.zext = zext i9 %_355727 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355729 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355729.zext
    %_355731.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355731 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355729, i64 0, i2 %_355731.zext
    %_355735 = udiv i64 %_355717, 4
    %_355740 = urem i64 %_355735, 256
    %_355742 = trunc i64 %_355740 to i8
    %_355744.zext = zext i8 %_355742 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355744 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355731, i64 0, i9 %_355744.zext
    %_355747 = urem i64 %_355717, 4
    %_355749 = trunc i64 %_355747 to i2
    %_355751.zext = zext i2 %_355749 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355751 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355744, i64 0, i3 %_355751.zext
    %_355753 = load float, float addrspace(0)* %_355751
    %_355756 = load float, float addrspace(0)* %_355532
    %_355761 = fmul fast float %_355756, %_355753
    %accn_355764 = fadd fast float %_355761, %_355708
    store float %accn_355764, float addrspace(0)* %fv_0_355283
    %_355768 = load float, float addrspace(0)* %fv_0_355287
    %_355771 = udiv i64 %_355717, 2048
    %_355776 = urem i64 %_355771, 512
    %_355778 = trunc i64 %_355776 to i9
    %_355780.zext = zext i9 %_355778 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355780 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355780.zext
    %_355782.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355782 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355780, i64 0, i2 %_355782.zext
    %_355785 = udiv i64 %_355717, 4
    %_355790 = urem i64 %_355785, 256
    %_355792 = trunc i64 %_355790 to i8
    %_355794.zext = zext i8 %_355792 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355794 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355782, i64 0, i9 %_355794.zext
    %_355797 = urem i64 %_355717, 4
    %_355799 = trunc i64 %_355797 to i2
    %_355801.zext = zext i2 %_355799 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355801 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355794, i64 0, i3 %_355801.zext
    %_355803 = load float, float addrspace(0)* %_355801
    %_355806 = load float, float addrspace(0)* %_355586
    %_355811 = fmul fast float %_355806, %_355803
    %accn_355814 = fadd fast float %_355811, %_355768
    store float %accn_355814, float addrspace(0)* %fv_0_355287
    %_355818 = load float, float addrspace(0)* %fv_0_355291
    %_355821 = udiv i64 %_355717, 2048
    %_355826 = urem i64 %_355821, 512
    %_355828 = trunc i64 %_355826 to i9
    %_355830.zext = zext i9 %_355828 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355830 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355830.zext
    %_355832.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355832 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355830, i64 0, i2 %_355832.zext
    %_355835 = udiv i64 %_355717, 4
    %_355840 = urem i64 %_355835, 256
    %_355842 = trunc i64 %_355840 to i8
    %_355844.zext = zext i8 %_355842 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355844 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355832, i64 0, i9 %_355844.zext
    %_355847 = urem i64 %_355717, 4
    %_355849 = trunc i64 %_355847 to i2
    %_355851.zext = zext i2 %_355849 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355851 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355844, i64 0, i3 %_355851.zext
    %_355853 = load float, float addrspace(0)* %_355851
    %_355856 = load float, float addrspace(0)* %_355640
    %_355861 = fmul fast float %_355856, %_355853
    %accn_355864 = fadd fast float %_355861, %_355818
    store float %accn_355864, float addrspace(0)* %fv_0_355291
    %_355868 = load float, float addrspace(0)* %fv_0_355295
    %_355871 = udiv i64 %_355717, 2048
    %_355876 = urem i64 %_355871, 512
    %_355878 = trunc i64 %_355876 to i9
    %_355880.zext = zext i9 %_355878 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355880 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352036, i64 0, i10 %_355880.zext
    %_355882.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355882 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355880, i64 0, i2 %_355882.zext
    %_355885 = udiv i64 %_355717, 4
    %_355890 = urem i64 %_355885, 256
    %_355892 = trunc i64 %_355890 to i8
    %_355894.zext = zext i8 %_355892 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355894 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355882, i64 0, i9 %_355894.zext
    %_355897 = urem i64 %_355717, 4
    %_355899 = trunc i64 %_355897 to i2
    %_355901.zext = zext i2 %_355899 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355901 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355894, i64 0, i3 %_355901.zext
    %_355903 = load float, float addrspace(0)* %_355901
    %_355906 = load float, float addrspace(0)* %_355694
    %_355911 = fmul fast float %_355906, %_355903
    %accn_355914 = fadd fast float %_355911, %_355868
    store float %accn_355914, float addrspace(0)* %fv_0_355295
    br label %head_355299, !llvm.loop !1013

new_exit_355306:
    %fv_10_355308 = add nuw nsw i32 1, %iv_355254
    %_355311 = load float, float addrspace(0)* %fv_0_355267
    %_355321.zext = zext i10 %_355319 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355321 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_24_parameters_bias__355314, i64 0, i11 %_355321.zext
    %_355323 = load float, float addrspace(0)* %_355321
    %_355331.zext = zext i8 %_355315 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355331 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355329, i64 0, i9 %_355331.zext
    %_355333.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355333 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355331, i64 0, i3 %_355333.zext
    %_355337 = fadd fast float %_355311, %_355323
    %_355339 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355337)
    store float %_355339, float addrspace(0)* %_355333
    %_355343 = load float, float addrspace(0)* %fv_0_355271
    %_355349.zext = zext i10 %_355347 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355349 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_24_parameters_bias__355314, i64 0, i11 %_355349.zext
    %_355351 = load float, float addrspace(0)* %_355349
    %_355354.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355354 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355331, i64 0, i3 %_355354.zext
    %_355358 = fadd fast float %_355343, %_355351
    %_355360 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355358)
    store float %_355360, float addrspace(0)* %_355354
    %_355364 = load float, float addrspace(0)* %fv_0_355275
    %_355370.zext = zext i10 %_355368 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355370 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_24_parameters_bias__355314, i64 0, i11 %_355370.zext
    %_355372 = load float, float addrspace(0)* %_355370
    %_355375.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355375 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355331, i64 0, i3 %_355375.zext
    %_355379 = fadd fast float %_355364, %_355372
    %_355381 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355379)
    store float %_355381, float addrspace(0)* %_355375
    %_355385 = load float, float addrspace(0)* %fv_0_355279
    %_355391.zext = zext i10 %_355389 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355391 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_24_parameters_bias__355314, i64 0, i11 %_355391.zext
    %_355393 = load float, float addrspace(0)* %_355391
    %_355396.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355396 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355331, i64 0, i3 %_355396.zext
    %_355400 = fadd fast float %_355385, %_355393
    %_355402 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355400)
    store float %_355402, float addrspace(0)* %_355396
    %_355406 = load float, float addrspace(0)* %fv_0_355283
    %_355409 = load float, float addrspace(0)* %_355321
    %_355414.zext = zext i8 %_355315 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355414 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355412, i64 0, i9 %_355414.zext
    %_355416.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355416 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355414, i64 0, i3 %_355416.zext
    %_355420 = fadd fast float %_355406, %_355409
    %_355422 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355420)
    store float %_355422, float addrspace(0)* %_355416
    %_355426 = load float, float addrspace(0)* %fv_0_355287
    %_355429 = load float, float addrspace(0)* %_355349
    %_355432.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355432 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355414, i64 0, i3 %_355432.zext
    %_355436 = fadd fast float %_355426, %_355429
    %_355438 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355436)
    store float %_355438, float addrspace(0)* %_355432
    %_355442 = load float, float addrspace(0)* %fv_0_355291
    %_355445 = load float, float addrspace(0)* %_355370
    %_355448.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355448 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355414, i64 0, i3 %_355448.zext
    %_355452 = fadd fast float %_355442, %_355445
    %_355454 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355452)
    store float %_355454, float addrspace(0)* %_355448
    %_355458 = load float, float addrspace(0)* %fv_0_355295
    %_355461 = load float, float addrspace(0)* %_355391
    %_355464.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355464 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355414, i64 0, i3 %_355464.zext
    %_355468 = fadd fast float %_355458, %_355461
    %_355470 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355468)
    store float %_355470, float addrspace(0)* %_355464
    br label %head_355251

new_exit_355257:
    %fv_10_355259 = add nuw nsw i32 1, %iv_352060
    br label %head_352057

new_exit_352063:
    %_352066i8 = call i8* @malloc(i64 4194304)
    %_352066 = bitcast i8* %_352066i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_352069i8 = call i8* @malloc(i64 32)
    %_352069 = bitcast i8* %_352069i8 to [8 x float] addrspace(0)*
    %fv_0_354584.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354584 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354584.zext
    %fv_0_354588.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354588 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354588.zext
    %fv_0_354592.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354592 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354592.zext
    %fv_0_354596.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354596 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354596.zext
    %fv_0_354600.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354600 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354600.zext
    %fv_0_354604.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354604 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354604.zext
    %fv_0_354608.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354608 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354608.zext
    %fv_0_354612.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_354612 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352069, i64 0, i4 %fv_0_354612.zext
    br label %head_352072

head_352072:
    %iv_352075 = phi i32 [ 0, %new_exit_352063 ], [ %fv_10_354576, %new_exit_354574 ]
    %_352077 = icmp ult i32 %iv_352075, 512
    %_354642 = trunc i32 %iv_352075 to i9
    %_354802 = zext i9 %_354642 to i64
    %_354804 = mul i64 2048, %_354802
    %t_355028 = mul i64 2, %_354802
    %t_355030 = add i64 1, %t_355028
    %_355032 = mul i64 1024, %t_355030
    %_354644.zext = zext i9 %_354642 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354644 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354644.zext
    %_354646.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354646 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354644, i64 0, i2 %_354646.zext
    %_354729.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354729 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354644, i64 0, i2 %_354729.zext
    br i1 %_352077, label %new_body_354565, label %new_exit_352078

new_body_354565:
    br label %head_354568

head_354568:
    %iv_354571 = phi i32 [ 0, %new_body_354565 ], [ %fv_10_354625, %new_exit_354623 ]
    %_354573 = icmp ult i32 %iv_354571, 256
    %_354632 = trunc i32 %iv_354571 to i8
    %t_354633 = zext i8 %_354632 to i64
    %t_354635 = mul i64 4, %t_354633
    %_354636 = trunc i64 %t_354635 to i10
    %_354847.zext = zext i10 %_354636 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354847 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_26_parameters_weight__354845, i64 0, i11 %_354847.zext
    %t_354663 = add i64 1, %t_354635
    %_354664 = trunc i64 %t_354663 to i10
    %_354901.zext = zext i10 %_354664 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354901 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_26_parameters_weight__354845, i64 0, i11 %_354901.zext
    %t_354684 = add i64 2, %t_354635
    %_354685 = trunc i64 %t_354684 to i10
    %_354955.zext = zext i10 %_354685 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354955 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_26_parameters_weight__354845, i64 0, i11 %_354955.zext
    %t_354705 = add i64 3, %t_354635
    %_354706 = trunc i64 %t_354705 to i10
    %_355009.zext = zext i10 %_354706 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355009 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_26_parameters_weight__354845, i64 0, i11 %_355009.zext
    br i1 %_354573, label %new_body_354580, label %new_exit_354574

new_body_354580:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354584
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354588
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354592
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354596
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354600
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354604
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354608
    store float 0x0000000000000000, float addrspace(0)* %fv_0_354612
    br label %head_354616, !llvm.loop !1014

head_354616:
    %iv_354619 = phi i32 [ 0, %new_body_354580 ], [ %fv_9_354794, %new_body_354792 ]
    %_354621 = icmp ult i32 %iv_354619, 1024
    br i1 %_354621, label %new_body_354792, label %new_exit_354623

new_body_354792:
    %fv_9_354794 = add nuw nsw i32 1, %iv_354619
    %_354797 = load float, float addrspace(0)* %fv_0_354584
    %_354800 = trunc i32 %iv_354619 to i10
    %_354801 = zext i10 %_354800 to i64
    %_354806 = add i64 %_354801, %_354804
    %_354809 = udiv i64 %_354806, 2048
    %_354814 = urem i64 %_354809, 512
    %_354816 = trunc i64 %_354814 to i9
    %_354818.zext = zext i9 %_354816 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354818 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_354818.zext
    %_354820.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354820 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354818, i64 0, i2 %_354820.zext
    %_354824 = udiv i64 %_354806, 4
    %_354829 = urem i64 %_354824, 256
    %_354831 = trunc i64 %_354829 to i8
    %_354833.zext = zext i8 %_354831 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354833 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354820, i64 0, i9 %_354833.zext
    %_354836 = urem i64 %_354806, 4
    %_354838 = trunc i64 %_354836 to i2
    %_354840.zext = zext i2 %_354838 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354840 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354833, i64 0, i3 %_354840.zext
    %_354842 = load float, float addrspace(0)* %_354840
    %_354849.zext = zext i10 %_354800 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354849 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_354847, i64 0, i11 %_354849.zext
    %_354851 = load float, float addrspace(0)* %_354849
    %_354856 = fmul fast float %_354851, %_354842
    %accn_354859 = fadd fast float %_354856, %_354797
    store float %accn_354859, float addrspace(0)* %fv_0_354584
    %_354863 = load float, float addrspace(0)* %fv_0_354588
    %_354866 = udiv i64 %_354806, 2048
    %_354871 = urem i64 %_354866, 512
    %_354873 = trunc i64 %_354871 to i9
    %_354875.zext = zext i9 %_354873 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354875 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_354875.zext
    %_354877.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354877 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354875, i64 0, i2 %_354877.zext
    %_354880 = udiv i64 %_354806, 4
    %_354885 = urem i64 %_354880, 256
    %_354887 = trunc i64 %_354885 to i8
    %_354889.zext = zext i8 %_354887 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354889 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354877, i64 0, i9 %_354889.zext
    %_354892 = urem i64 %_354806, 4
    %_354894 = trunc i64 %_354892 to i2
    %_354896.zext = zext i2 %_354894 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354896 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354889, i64 0, i3 %_354896.zext
    %_354898 = load float, float addrspace(0)* %_354896
    %_354903.zext = zext i10 %_354800 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354903 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_354901, i64 0, i11 %_354903.zext
    %_354905 = load float, float addrspace(0)* %_354903
    %_354910 = fmul fast float %_354905, %_354898
    %accn_354913 = fadd fast float %_354910, %_354863
    store float %accn_354913, float addrspace(0)* %fv_0_354588
    %_354917 = load float, float addrspace(0)* %fv_0_354592
    %_354920 = udiv i64 %_354806, 2048
    %_354925 = urem i64 %_354920, 512
    %_354927 = trunc i64 %_354925 to i9
    %_354929.zext = zext i9 %_354927 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354929 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_354929.zext
    %_354931.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354931 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354929, i64 0, i2 %_354931.zext
    %_354934 = udiv i64 %_354806, 4
    %_354939 = urem i64 %_354934, 256
    %_354941 = trunc i64 %_354939 to i8
    %_354943.zext = zext i8 %_354941 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354943 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354931, i64 0, i9 %_354943.zext
    %_354946 = urem i64 %_354806, 4
    %_354948 = trunc i64 %_354946 to i2
    %_354950.zext = zext i2 %_354948 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354950 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354943, i64 0, i3 %_354950.zext
    %_354952 = load float, float addrspace(0)* %_354950
    %_354957.zext = zext i10 %_354800 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354957 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_354955, i64 0, i11 %_354957.zext
    %_354959 = load float, float addrspace(0)* %_354957
    %_354964 = fmul fast float %_354959, %_354952
    %accn_354967 = fadd fast float %_354964, %_354917
    store float %accn_354967, float addrspace(0)* %fv_0_354592
    %_354971 = load float, float addrspace(0)* %fv_0_354596
    %_354974 = udiv i64 %_354806, 2048
    %_354979 = urem i64 %_354974, 512
    %_354981 = trunc i64 %_354979 to i9
    %_354983.zext = zext i9 %_354981 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354983 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_354983.zext
    %_354985.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354985 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354983, i64 0, i2 %_354985.zext
    %_354988 = udiv i64 %_354806, 4
    %_354993 = urem i64 %_354988, 256
    %_354995 = trunc i64 %_354993 to i8
    %_354997.zext = zext i8 %_354995 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354997 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354985, i64 0, i9 %_354997.zext
    %_355000 = urem i64 %_354806, 4
    %_355002 = trunc i64 %_355000 to i2
    %_355004.zext = zext i2 %_355002 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355004 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354997, i64 0, i3 %_355004.zext
    %_355006 = load float, float addrspace(0)* %_355004
    %_355011.zext = zext i10 %_354800 to i11 ; add one more bit for gep index as it is treated as signed value
    %_355011 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_355009, i64 0, i11 %_355011.zext
    %_355013 = load float, float addrspace(0)* %_355011
    %_355018 = fmul fast float %_355013, %_355006
    %accn_355021 = fadd fast float %_355018, %_354971
    store float %accn_355021, float addrspace(0)* %fv_0_354596
    %_355025 = load float, float addrspace(0)* %fv_0_354600
    %_355034 = add i64 %_354801, %_355032
    %_355037 = udiv i64 %_355034, 2048
    %_355042 = urem i64 %_355037, 512
    %_355044 = trunc i64 %_355042 to i9
    %_355046.zext = zext i9 %_355044 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355046 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_355046.zext
    %_355048.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355048 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355046, i64 0, i2 %_355048.zext
    %_355052 = udiv i64 %_355034, 4
    %_355057 = urem i64 %_355052, 256
    %_355059 = trunc i64 %_355057 to i8
    %_355061.zext = zext i8 %_355059 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355061 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355048, i64 0, i9 %_355061.zext
    %_355064 = urem i64 %_355034, 4
    %_355066 = trunc i64 %_355064 to i2
    %_355068.zext = zext i2 %_355066 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355068 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355061, i64 0, i3 %_355068.zext
    %_355070 = load float, float addrspace(0)* %_355068
    %_355073 = load float, float addrspace(0)* %_354849
    %_355078 = fmul fast float %_355073, %_355070
    %accn_355081 = fadd fast float %_355078, %_355025
    store float %accn_355081, float addrspace(0)* %fv_0_354600
    %_355085 = load float, float addrspace(0)* %fv_0_354604
    %_355088 = udiv i64 %_355034, 2048
    %_355093 = urem i64 %_355088, 512
    %_355095 = trunc i64 %_355093 to i9
    %_355097.zext = zext i9 %_355095 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355097 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_355097.zext
    %_355099.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355099 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355097, i64 0, i2 %_355099.zext
    %_355102 = udiv i64 %_355034, 4
    %_355107 = urem i64 %_355102, 256
    %_355109 = trunc i64 %_355107 to i8
    %_355111.zext = zext i8 %_355109 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355111 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355099, i64 0, i9 %_355111.zext
    %_355114 = urem i64 %_355034, 4
    %_355116 = trunc i64 %_355114 to i2
    %_355118.zext = zext i2 %_355116 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355118 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355111, i64 0, i3 %_355118.zext
    %_355120 = load float, float addrspace(0)* %_355118
    %_355123 = load float, float addrspace(0)* %_354903
    %_355128 = fmul fast float %_355123, %_355120
    %accn_355131 = fadd fast float %_355128, %_355085
    store float %accn_355131, float addrspace(0)* %fv_0_354604
    %_355135 = load float, float addrspace(0)* %fv_0_354608
    %_355138 = udiv i64 %_355034, 2048
    %_355143 = urem i64 %_355138, 512
    %_355145 = trunc i64 %_355143 to i9
    %_355147.zext = zext i9 %_355145 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355147 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_355147.zext
    %_355149.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355149 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355147, i64 0, i2 %_355149.zext
    %_355152 = udiv i64 %_355034, 4
    %_355157 = urem i64 %_355152, 256
    %_355159 = trunc i64 %_355157 to i8
    %_355161.zext = zext i8 %_355159 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355161 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355149, i64 0, i9 %_355161.zext
    %_355164 = urem i64 %_355034, 4
    %_355166 = trunc i64 %_355164 to i2
    %_355168.zext = zext i2 %_355166 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355168 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355161, i64 0, i3 %_355168.zext
    %_355170 = load float, float addrspace(0)* %_355168
    %_355173 = load float, float addrspace(0)* %_354957
    %_355178 = fmul fast float %_355173, %_355170
    %accn_355181 = fadd fast float %_355178, %_355135
    store float %accn_355181, float addrspace(0)* %fv_0_354608
    %_355185 = load float, float addrspace(0)* %fv_0_354612
    %_355188 = udiv i64 %_355034, 2048
    %_355193 = urem i64 %_355188, 512
    %_355195 = trunc i64 %_355193 to i9
    %_355197.zext = zext i9 %_355195 to i10 ; add one more bit for gep index as it is treated as signed value
    %_355197 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352051, i64 0, i10 %_355197.zext
    %_355199.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355199 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_355197, i64 0, i2 %_355199.zext
    %_355202 = udiv i64 %_355034, 4
    %_355207 = urem i64 %_355202, 256
    %_355209 = trunc i64 %_355207 to i8
    %_355211.zext = zext i8 %_355209 to i9 ; add one more bit for gep index as it is treated as signed value
    %_355211 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_355199, i64 0, i9 %_355211.zext
    %_355214 = urem i64 %_355034, 4
    %_355216 = trunc i64 %_355214 to i2
    %_355218.zext = zext i2 %_355216 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355218 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355211, i64 0, i3 %_355218.zext
    %_355220 = load float, float addrspace(0)* %_355218
    %_355223 = load float, float addrspace(0)* %_355011
    %_355228 = fmul fast float %_355223, %_355220
    %accn_355231 = fadd fast float %_355228, %_355185
    store float %accn_355231, float addrspace(0)* %fv_0_354612
    br label %head_354616, !llvm.loop !1014

new_exit_354623:
    %fv_10_354625 = add nuw nsw i32 1, %iv_354571
    %_354628 = load float, float addrspace(0)* %fv_0_354584
    %_354638.zext = zext i10 %_354636 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354638 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_26_parameters_bias__354631, i64 0, i11 %_354638.zext
    %_354640 = load float, float addrspace(0)* %_354638
    %_354648.zext = zext i8 %_354632 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354648 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354646, i64 0, i9 %_354648.zext
    %_354650.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354650 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354648, i64 0, i3 %_354650.zext
    %_354654 = fadd fast float %_354628, %_354640
    %_354656 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354654)
    store float %_354656, float addrspace(0)* %_354650
    %_354660 = load float, float addrspace(0)* %fv_0_354588
    %_354666.zext = zext i10 %_354664 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354666 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_26_parameters_bias__354631, i64 0, i11 %_354666.zext
    %_354668 = load float, float addrspace(0)* %_354666
    %_354671.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354671 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354648, i64 0, i3 %_354671.zext
    %_354675 = fadd fast float %_354660, %_354668
    %_354677 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354675)
    store float %_354677, float addrspace(0)* %_354671
    %_354681 = load float, float addrspace(0)* %fv_0_354592
    %_354687.zext = zext i10 %_354685 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354687 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_26_parameters_bias__354631, i64 0, i11 %_354687.zext
    %_354689 = load float, float addrspace(0)* %_354687
    %_354692.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354692 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354648, i64 0, i3 %_354692.zext
    %_354696 = fadd fast float %_354681, %_354689
    %_354698 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354696)
    store float %_354698, float addrspace(0)* %_354692
    %_354702 = load float, float addrspace(0)* %fv_0_354596
    %_354708.zext = zext i10 %_354706 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354708 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_26_parameters_bias__354631, i64 0, i11 %_354708.zext
    %_354710 = load float, float addrspace(0)* %_354708
    %_354713.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354713 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354648, i64 0, i3 %_354713.zext
    %_354717 = fadd fast float %_354702, %_354710
    %_354719 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354717)
    store float %_354719, float addrspace(0)* %_354713
    %_354723 = load float, float addrspace(0)* %fv_0_354600
    %_354726 = load float, float addrspace(0)* %_354638
    %_354731.zext = zext i8 %_354632 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354731 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354729, i64 0, i9 %_354731.zext
    %_354733.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354733 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354731, i64 0, i3 %_354733.zext
    %_354737 = fadd fast float %_354723, %_354726
    %_354739 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354737)
    store float %_354739, float addrspace(0)* %_354733
    %_354743 = load float, float addrspace(0)* %fv_0_354604
    %_354746 = load float, float addrspace(0)* %_354666
    %_354749.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354749 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354731, i64 0, i3 %_354749.zext
    %_354753 = fadd fast float %_354743, %_354746
    %_354755 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354753)
    store float %_354755, float addrspace(0)* %_354749
    %_354759 = load float, float addrspace(0)* %fv_0_354608
    %_354762 = load float, float addrspace(0)* %_354687
    %_354765.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354765 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354731, i64 0, i3 %_354765.zext
    %_354769 = fadd fast float %_354759, %_354762
    %_354771 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354769)
    store float %_354771, float addrspace(0)* %_354765
    %_354775 = load float, float addrspace(0)* %fv_0_354612
    %_354778 = load float, float addrspace(0)* %_354708
    %_354781.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354781 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354731, i64 0, i3 %_354781.zext
    %_354785 = fadd fast float %_354775, %_354778
    %_354787 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354785)
    store float %_354787, float addrspace(0)* %_354781
    br label %head_354568

new_exit_354574:
    %fv_10_354576 = add nuw nsw i32 1, %iv_352075
    br label %head_352072

new_exit_352078:
    %_352081i8 = call i8* @malloc(i64 4194304)
    %_352081 = bitcast i8* %_352081i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_352084i8 = call i8* @malloc(i64 32)
    %_352084 = bitcast i8* %_352084i8 to [8 x float] addrspace(0)*
    %fv_0_353901.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353901 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353901.zext
    %fv_0_353905.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353905 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353905.zext
    %fv_0_353909.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353909 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353909.zext
    %fv_0_353913.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353913 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353913.zext
    %fv_0_353917.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353917 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353917.zext
    %fv_0_353921.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353921 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353921.zext
    %fv_0_353925.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353925 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353925.zext
    %fv_0_353929.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353929 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352084, i64 0, i4 %fv_0_353929.zext
    br label %head_352087

head_352087:
    %iv_352090 = phi i32 [ 0, %new_exit_352078 ], [ %fv_10_353893, %new_exit_353891 ]
    %_352092 = icmp ult i32 %iv_352090, 512
    %_353959 = trunc i32 %iv_352090 to i9
    %_354119 = zext i9 %_353959 to i64
    %_354121 = mul i64 2048, %_354119
    %t_354345 = mul i64 2, %_354119
    %t_354347 = add i64 1, %t_354345
    %_354349 = mul i64 1024, %t_354347
    %_353961.zext = zext i9 %_353959 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353961 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353961.zext
    %_353963.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353963 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353961, i64 0, i2 %_353963.zext
    %_354046.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354046 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353961, i64 0, i2 %_354046.zext
    br i1 %_352092, label %new_body_353882, label %new_exit_352093

new_body_353882:
    br label %head_353885

head_353885:
    %iv_353888 = phi i32 [ 0, %new_body_353882 ], [ %fv_10_353942, %new_exit_353940 ]
    %_353890 = icmp ult i32 %iv_353888, 256
    %_353949 = trunc i32 %iv_353888 to i8
    %t_353950 = zext i8 %_353949 to i64
    %t_353952 = mul i64 4, %t_353950
    %_353953 = trunc i64 %t_353952 to i10
    %_354164.zext = zext i10 %_353953 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354164 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_28_parameters_weight__354162, i64 0, i11 %_354164.zext
    %t_353980 = add i64 1, %t_353952
    %_353981 = trunc i64 %t_353980 to i10
    %_354218.zext = zext i10 %_353981 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354218 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_28_parameters_weight__354162, i64 0, i11 %_354218.zext
    %t_354001 = add i64 2, %t_353952
    %_354002 = trunc i64 %t_354001 to i10
    %_354272.zext = zext i10 %_354002 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354272 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_28_parameters_weight__354162, i64 0, i11 %_354272.zext
    %t_354022 = add i64 3, %t_353952
    %_354023 = trunc i64 %t_354022 to i10
    %_354326.zext = zext i10 %_354023 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354326 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_28_parameters_weight__354162, i64 0, i11 %_354326.zext
    br i1 %_353890, label %new_body_353897, label %new_exit_353891

new_body_353897:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353901
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353905
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353909
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353913
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353917
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353921
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353925
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353929
    br label %head_353933, !llvm.loop !1015

head_353933:
    %iv_353936 = phi i32 [ 0, %new_body_353897 ], [ %fv_9_354111, %new_body_354109 ]
    %_353938 = icmp ult i32 %iv_353936, 1024
    br i1 %_353938, label %new_body_354109, label %new_exit_353940

new_body_354109:
    %fv_9_354111 = add nuw nsw i32 1, %iv_353936
    %_354114 = load float, float addrspace(0)* %fv_0_353901
    %_354117 = trunc i32 %iv_353936 to i10
    %_354118 = zext i10 %_354117 to i64
    %_354123 = add i64 %_354118, %_354121
    %_354126 = udiv i64 %_354123, 2048
    %_354131 = urem i64 %_354126, 512
    %_354133 = trunc i64 %_354131 to i9
    %_354135.zext = zext i9 %_354133 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354135 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354135.zext
    %_354137.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354137 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354135, i64 0, i2 %_354137.zext
    %_354141 = udiv i64 %_354123, 4
    %_354146 = urem i64 %_354141, 256
    %_354148 = trunc i64 %_354146 to i8
    %_354150.zext = zext i8 %_354148 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354150 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354137, i64 0, i9 %_354150.zext
    %_354153 = urem i64 %_354123, 4
    %_354155 = trunc i64 %_354153 to i2
    %_354157.zext = zext i2 %_354155 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354157 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354150, i64 0, i3 %_354157.zext
    %_354159 = load float, float addrspace(0)* %_354157
    %_354166.zext = zext i10 %_354117 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354166 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_354164, i64 0, i11 %_354166.zext
    %_354168 = load float, float addrspace(0)* %_354166
    %_354173 = fmul fast float %_354168, %_354159
    %accn_354176 = fadd fast float %_354173, %_354114
    store float %accn_354176, float addrspace(0)* %fv_0_353901
    %_354180 = load float, float addrspace(0)* %fv_0_353905
    %_354183 = udiv i64 %_354123, 2048
    %_354188 = urem i64 %_354183, 512
    %_354190 = trunc i64 %_354188 to i9
    %_354192.zext = zext i9 %_354190 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354192 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354192.zext
    %_354194.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354194 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354192, i64 0, i2 %_354194.zext
    %_354197 = udiv i64 %_354123, 4
    %_354202 = urem i64 %_354197, 256
    %_354204 = trunc i64 %_354202 to i8
    %_354206.zext = zext i8 %_354204 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354206 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354194, i64 0, i9 %_354206.zext
    %_354209 = urem i64 %_354123, 4
    %_354211 = trunc i64 %_354209 to i2
    %_354213.zext = zext i2 %_354211 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354213 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354206, i64 0, i3 %_354213.zext
    %_354215 = load float, float addrspace(0)* %_354213
    %_354220.zext = zext i10 %_354117 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354220 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_354218, i64 0, i11 %_354220.zext
    %_354222 = load float, float addrspace(0)* %_354220
    %_354227 = fmul fast float %_354222, %_354215
    %accn_354230 = fadd fast float %_354227, %_354180
    store float %accn_354230, float addrspace(0)* %fv_0_353905
    %_354234 = load float, float addrspace(0)* %fv_0_353909
    %_354237 = udiv i64 %_354123, 2048
    %_354242 = urem i64 %_354237, 512
    %_354244 = trunc i64 %_354242 to i9
    %_354246.zext = zext i9 %_354244 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354246 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354246.zext
    %_354248.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354248 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354246, i64 0, i2 %_354248.zext
    %_354251 = udiv i64 %_354123, 4
    %_354256 = urem i64 %_354251, 256
    %_354258 = trunc i64 %_354256 to i8
    %_354260.zext = zext i8 %_354258 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354260 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354248, i64 0, i9 %_354260.zext
    %_354263 = urem i64 %_354123, 4
    %_354265 = trunc i64 %_354263 to i2
    %_354267.zext = zext i2 %_354265 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354267 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354260, i64 0, i3 %_354267.zext
    %_354269 = load float, float addrspace(0)* %_354267
    %_354274.zext = zext i10 %_354117 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354274 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_354272, i64 0, i11 %_354274.zext
    %_354276 = load float, float addrspace(0)* %_354274
    %_354281 = fmul fast float %_354276, %_354269
    %accn_354284 = fadd fast float %_354281, %_354234
    store float %accn_354284, float addrspace(0)* %fv_0_353909
    %_354288 = load float, float addrspace(0)* %fv_0_353913
    %_354291 = udiv i64 %_354123, 2048
    %_354296 = urem i64 %_354291, 512
    %_354298 = trunc i64 %_354296 to i9
    %_354300.zext = zext i9 %_354298 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354300 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354300.zext
    %_354302.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354302 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354300, i64 0, i2 %_354302.zext
    %_354305 = udiv i64 %_354123, 4
    %_354310 = urem i64 %_354305, 256
    %_354312 = trunc i64 %_354310 to i8
    %_354314.zext = zext i8 %_354312 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354314 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354302, i64 0, i9 %_354314.zext
    %_354317 = urem i64 %_354123, 4
    %_354319 = trunc i64 %_354317 to i2
    %_354321.zext = zext i2 %_354319 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354321 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354314, i64 0, i3 %_354321.zext
    %_354323 = load float, float addrspace(0)* %_354321
    %_354328.zext = zext i10 %_354117 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354328 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_354326, i64 0, i11 %_354328.zext
    %_354330 = load float, float addrspace(0)* %_354328
    %_354335 = fmul fast float %_354330, %_354323
    %accn_354338 = fadd fast float %_354335, %_354288
    store float %accn_354338, float addrspace(0)* %fv_0_353913
    %_354342 = load float, float addrspace(0)* %fv_0_353917
    %_354351 = add i64 %_354118, %_354349
    %_354354 = udiv i64 %_354351, 2048
    %_354359 = urem i64 %_354354, 512
    %_354361 = trunc i64 %_354359 to i9
    %_354363.zext = zext i9 %_354361 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354363 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354363.zext
    %_354365.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354365 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354363, i64 0, i2 %_354365.zext
    %_354369 = udiv i64 %_354351, 4
    %_354374 = urem i64 %_354369, 256
    %_354376 = trunc i64 %_354374 to i8
    %_354378.zext = zext i8 %_354376 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354378 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354365, i64 0, i9 %_354378.zext
    %_354381 = urem i64 %_354351, 4
    %_354383 = trunc i64 %_354381 to i2
    %_354385.zext = zext i2 %_354383 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354385 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354378, i64 0, i3 %_354385.zext
    %_354387 = load float, float addrspace(0)* %_354385
    %_354390 = load float, float addrspace(0)* %_354166
    %_354395 = fmul fast float %_354390, %_354387
    %accn_354398 = fadd fast float %_354395, %_354342
    store float %accn_354398, float addrspace(0)* %fv_0_353917
    %_354402 = load float, float addrspace(0)* %fv_0_353921
    %_354405 = udiv i64 %_354351, 2048
    %_354410 = urem i64 %_354405, 512
    %_354412 = trunc i64 %_354410 to i9
    %_354414.zext = zext i9 %_354412 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354414 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354414.zext
    %_354416.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354416 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354414, i64 0, i2 %_354416.zext
    %_354419 = udiv i64 %_354351, 4
    %_354424 = urem i64 %_354419, 256
    %_354426 = trunc i64 %_354424 to i8
    %_354428.zext = zext i8 %_354426 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354428 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354416, i64 0, i9 %_354428.zext
    %_354431 = urem i64 %_354351, 4
    %_354433 = trunc i64 %_354431 to i2
    %_354435.zext = zext i2 %_354433 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354435 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354428, i64 0, i3 %_354435.zext
    %_354437 = load float, float addrspace(0)* %_354435
    %_354440 = load float, float addrspace(0)* %_354220
    %_354445 = fmul fast float %_354440, %_354437
    %accn_354448 = fadd fast float %_354445, %_354402
    store float %accn_354448, float addrspace(0)* %fv_0_353921
    %_354452 = load float, float addrspace(0)* %fv_0_353925
    %_354455 = udiv i64 %_354351, 2048
    %_354460 = urem i64 %_354455, 512
    %_354462 = trunc i64 %_354460 to i9
    %_354464.zext = zext i9 %_354462 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354464 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354464.zext
    %_354466.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354466 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354464, i64 0, i2 %_354466.zext
    %_354469 = udiv i64 %_354351, 4
    %_354474 = urem i64 %_354469, 256
    %_354476 = trunc i64 %_354474 to i8
    %_354478.zext = zext i8 %_354476 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354478 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354466, i64 0, i9 %_354478.zext
    %_354481 = urem i64 %_354351, 4
    %_354483 = trunc i64 %_354481 to i2
    %_354485.zext = zext i2 %_354483 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354485 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354478, i64 0, i3 %_354485.zext
    %_354487 = load float, float addrspace(0)* %_354485
    %_354490 = load float, float addrspace(0)* %_354274
    %_354495 = fmul fast float %_354490, %_354487
    %accn_354498 = fadd fast float %_354495, %_354452
    store float %accn_354498, float addrspace(0)* %fv_0_353925
    %_354502 = load float, float addrspace(0)* %fv_0_353929
    %_354505 = udiv i64 %_354351, 2048
    %_354510 = urem i64 %_354505, 512
    %_354512 = trunc i64 %_354510 to i9
    %_354514.zext = zext i9 %_354512 to i10 ; add one more bit for gep index as it is treated as signed value
    %_354514 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352066, i64 0, i10 %_354514.zext
    %_354516.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354516 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_354514, i64 0, i2 %_354516.zext
    %_354519 = udiv i64 %_354351, 4
    %_354524 = urem i64 %_354519, 256
    %_354526 = trunc i64 %_354524 to i8
    %_354528.zext = zext i8 %_354526 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354528 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354516, i64 0, i9 %_354528.zext
    %_354531 = urem i64 %_354351, 4
    %_354533 = trunc i64 %_354531 to i2
    %_354535.zext = zext i2 %_354533 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354535 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354528, i64 0, i3 %_354535.zext
    %_354537 = load float, float addrspace(0)* %_354535
    %_354540 = load float, float addrspace(0)* %_354328
    %_354545 = fmul fast float %_354540, %_354537
    %accn_354548 = fadd fast float %_354545, %_354502
    store float %accn_354548, float addrspace(0)* %fv_0_353929
    br label %head_353933, !llvm.loop !1015

new_exit_353940:
    %fv_10_353942 = add nuw nsw i32 1, %iv_353888
    %_353945 = load float, float addrspace(0)* %fv_0_353901
    %_353955.zext = zext i10 %_353953 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353955 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_28_parameters_bias__353948, i64 0, i11 %_353955.zext
    %_353957 = load float, float addrspace(0)* %_353955
    %_353965.zext = zext i8 %_353949 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353965 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353963, i64 0, i9 %_353965.zext
    %_353967.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353967 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353965, i64 0, i3 %_353967.zext
    %_353971 = fadd fast float %_353945, %_353957
    %_353973 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353971)
    store float %_353973, float addrspace(0)* %_353967
    %_353977 = load float, float addrspace(0)* %fv_0_353905
    %_353983.zext = zext i10 %_353981 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353983 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_28_parameters_bias__353948, i64 0, i11 %_353983.zext
    %_353985 = load float, float addrspace(0)* %_353983
    %_353988.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353988 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353965, i64 0, i3 %_353988.zext
    %_353992 = fadd fast float %_353977, %_353985
    %_353994 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353992)
    store float %_353994, float addrspace(0)* %_353988
    %_353998 = load float, float addrspace(0)* %fv_0_353909
    %_354004.zext = zext i10 %_354002 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354004 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_28_parameters_bias__353948, i64 0, i11 %_354004.zext
    %_354006 = load float, float addrspace(0)* %_354004
    %_354009.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354009 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353965, i64 0, i3 %_354009.zext
    %_354013 = fadd fast float %_353998, %_354006
    %_354015 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354013)
    store float %_354015, float addrspace(0)* %_354009
    %_354019 = load float, float addrspace(0)* %fv_0_353913
    %_354025.zext = zext i10 %_354023 to i11 ; add one more bit for gep index as it is treated as signed value
    %_354025 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_28_parameters_bias__353948, i64 0, i11 %_354025.zext
    %_354027 = load float, float addrspace(0)* %_354025
    %_354030.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354030 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353965, i64 0, i3 %_354030.zext
    %_354034 = fadd fast float %_354019, %_354027
    %_354036 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354034)
    store float %_354036, float addrspace(0)* %_354030
    %_354040 = load float, float addrspace(0)* %fv_0_353917
    %_354043 = load float, float addrspace(0)* %_353955
    %_354048.zext = zext i8 %_353949 to i9 ; add one more bit for gep index as it is treated as signed value
    %_354048 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_354046, i64 0, i9 %_354048.zext
    %_354050.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354050 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354048, i64 0, i3 %_354050.zext
    %_354054 = fadd fast float %_354040, %_354043
    %_354056 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354054)
    store float %_354056, float addrspace(0)* %_354050
    %_354060 = load float, float addrspace(0)* %fv_0_353921
    %_354063 = load float, float addrspace(0)* %_353983
    %_354066.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354066 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354048, i64 0, i3 %_354066.zext
    %_354070 = fadd fast float %_354060, %_354063
    %_354072 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354070)
    store float %_354072, float addrspace(0)* %_354066
    %_354076 = load float, float addrspace(0)* %fv_0_353925
    %_354079 = load float, float addrspace(0)* %_354004
    %_354082.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354082 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354048, i64 0, i3 %_354082.zext
    %_354086 = fadd fast float %_354076, %_354079
    %_354088 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354086)
    store float %_354088, float addrspace(0)* %_354082
    %_354092 = load float, float addrspace(0)* %fv_0_353929
    %_354095 = load float, float addrspace(0)* %_354025
    %_354098.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354098 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354048, i64 0, i3 %_354098.zext
    %_354102 = fadd fast float %_354092, %_354095
    %_354104 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354102)
    store float %_354104, float addrspace(0)* %_354098
    br label %head_353885

new_exit_353891:
    %fv_10_353893 = add nuw nsw i32 1, %iv_352090
    br label %head_352087

new_exit_352093:
    %_352096i8 = call i8* @malloc(i64 4194304)
    %_352096 = bitcast i8* %_352096i8 to [512 x [2 x [256 x [4 x float]]]] addrspace(0)*
    %_352099i8 = call i8* @malloc(i64 32)
    %_352099 = bitcast i8* %_352099i8 to [8 x float] addrspace(0)*
    %fv_0_353195.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353195 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353195.zext
    %fv_0_353199.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353199 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353199.zext
    %fv_0_353203.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353203 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353203.zext
    %fv_0_353207.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353207 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353207.zext
    %fv_0_353211.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353211 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353211.zext
    %fv_0_353215.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353215 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353215.zext
    %fv_0_353219.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353219 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353219.zext
    %fv_0_353223.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353223 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352099, i64 0, i4 %fv_0_353223.zext
    br label %head_352102

head_352102:
    %iv_352105 = phi i32 [ 0, %new_exit_352093 ], [ %fv_10_353187, %new_exit_353185 ]
    %_352107 = icmp ult i32 %iv_352105, 512
    %_353264 = trunc i32 %iv_352105 to i9
    %_353426 = zext i9 %_353264 to i64
    %_353428 = mul i64 2048, %_353426
    %t_353662 = mul i64 2, %_353426
    %t_353664 = add i64 1, %t_353662
    %_353666 = mul i64 1024, %t_353664
    %_353266.zext = zext i9 %_353264 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353266 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_353266.zext
    %_353268.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353268 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353266, i64 0, i2 %_353268.zext
    %_353353.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353353 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353266, i64 0, i2 %_353353.zext
    br i1 %_352107, label %new_body_353175, label %new_exit_352108

new_body_353175:
    br label %head_353178

head_353178:
    %iv_353181 = phi i32 [ 0, %new_body_353175 ], [ %fv_10_353236, %new_exit_353234 ]
    %_353184 = icmp ult i32 %iv_353181, 256
    %_353245 = trunc i32 %iv_353181 to i8
    %t_353253 = zext i8 %_353245 to i64
    %t_353255 = mul i64 4, %t_353253
    %_353258 = trunc i64 %t_353255 to i10
    %_353481.zext = zext i10 %_353258 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353481 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_30_parameters_weight__353470, i64 0, i11 %_353481.zext
    %t_353287 = add i64 1, %t_353255
    %_353288 = trunc i64 %t_353287 to i10
    %_353535.zext = zext i10 %_353288 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353535 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_30_parameters_weight__353470, i64 0, i11 %_353535.zext
    %t_353308 = add i64 2, %t_353255
    %_353309 = trunc i64 %t_353308 to i10
    %_353589.zext = zext i10 %_353309 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353589 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_30_parameters_weight__353470, i64 0, i11 %_353589.zext
    %t_353329 = add i64 3, %t_353255
    %_353330 = trunc i64 %t_353329 to i10
    %_353643.zext = zext i10 %_353330 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353643 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_30_parameters_weight__353470, i64 0, i11 %_353643.zext
    br i1 %_353184, label %new_body_353191, label %new_exit_353185

new_body_353191:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353195
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353199
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353203
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353207
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353211
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353215
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353219
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353223
    br label %head_353227, !llvm.loop !1016

head_353227:
    %iv_353230 = phi i32 [ 0, %new_body_353191 ], [ %fv_9_353418, %new_body_353416 ]
    %_353232 = icmp ult i32 %iv_353230, 1024
    br i1 %_353232, label %new_body_353416, label %new_exit_353234

new_body_353416:
    %fv_9_353418 = add nuw nsw i32 1, %iv_353230
    %_353421 = load float, float addrspace(0)* %fv_0_353195
    %_353424 = trunc i32 %iv_353230 to i10
    %_353425 = zext i10 %_353424 to i64
    %_353430 = add i64 %_353425, %_353428
    %_353433 = udiv i64 %_353430, 2048
    %_353438 = urem i64 %_353433, 512
    %_353440 = trunc i64 %_353438 to i9
    %_353442.zext = zext i9 %_353440 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353442 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353442.zext
    %_353444.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353444 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353442, i64 0, i2 %_353444.zext
    %_353448 = udiv i64 %_353430, 4
    %_353453 = urem i64 %_353448, 256
    %_353455 = trunc i64 %_353453 to i8
    %_353457.zext = zext i8 %_353455 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353457 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353444, i64 0, i9 %_353457.zext
    %_353460 = urem i64 %_353430, 4
    %_353462 = trunc i64 %_353460 to i2
    %_353464.zext = zext i2 %_353462 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353464 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353457, i64 0, i3 %_353464.zext
    %_353466 = load float, float addrspace(0)* %_353464
    %_353483.zext = zext i10 %_353424 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353483 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_353481, i64 0, i11 %_353483.zext
    %_353485 = load float, float addrspace(0)* %_353483
    %_353490 = fmul fast float %_353485, %_353466
    %accn_353493 = fadd fast float %_353490, %_353421
    store float %accn_353493, float addrspace(0)* %fv_0_353195
    %_353497 = load float, float addrspace(0)* %fv_0_353199
    %_353500 = udiv i64 %_353430, 2048
    %_353505 = urem i64 %_353500, 512
    %_353507 = trunc i64 %_353505 to i9
    %_353509.zext = zext i9 %_353507 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353509 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353509.zext
    %_353511.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353511 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353509, i64 0, i2 %_353511.zext
    %_353514 = udiv i64 %_353430, 4
    %_353519 = urem i64 %_353514, 256
    %_353521 = trunc i64 %_353519 to i8
    %_353523.zext = zext i8 %_353521 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353523 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353511, i64 0, i9 %_353523.zext
    %_353526 = urem i64 %_353430, 4
    %_353528 = trunc i64 %_353526 to i2
    %_353530.zext = zext i2 %_353528 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353530 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353523, i64 0, i3 %_353530.zext
    %_353532 = load float, float addrspace(0)* %_353530
    %_353537.zext = zext i10 %_353424 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353537 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_353535, i64 0, i11 %_353537.zext
    %_353539 = load float, float addrspace(0)* %_353537
    %_353544 = fmul fast float %_353539, %_353532
    %accn_353547 = fadd fast float %_353544, %_353497
    store float %accn_353547, float addrspace(0)* %fv_0_353199
    %_353551 = load float, float addrspace(0)* %fv_0_353203
    %_353554 = udiv i64 %_353430, 2048
    %_353559 = urem i64 %_353554, 512
    %_353561 = trunc i64 %_353559 to i9
    %_353563.zext = zext i9 %_353561 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353563 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353563.zext
    %_353565.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353565 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353563, i64 0, i2 %_353565.zext
    %_353568 = udiv i64 %_353430, 4
    %_353573 = urem i64 %_353568, 256
    %_353575 = trunc i64 %_353573 to i8
    %_353577.zext = zext i8 %_353575 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353577 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353565, i64 0, i9 %_353577.zext
    %_353580 = urem i64 %_353430, 4
    %_353582 = trunc i64 %_353580 to i2
    %_353584.zext = zext i2 %_353582 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353584 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353577, i64 0, i3 %_353584.zext
    %_353586 = load float, float addrspace(0)* %_353584
    %_353591.zext = zext i10 %_353424 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353591 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_353589, i64 0, i11 %_353591.zext
    %_353593 = load float, float addrspace(0)* %_353591
    %_353598 = fmul fast float %_353593, %_353586
    %accn_353601 = fadd fast float %_353598, %_353551
    store float %accn_353601, float addrspace(0)* %fv_0_353203
    %_353605 = load float, float addrspace(0)* %fv_0_353207
    %_353608 = udiv i64 %_353430, 2048
    %_353613 = urem i64 %_353608, 512
    %_353615 = trunc i64 %_353613 to i9
    %_353617.zext = zext i9 %_353615 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353617 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353617.zext
    %_353619.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353619 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353617, i64 0, i2 %_353619.zext
    %_353622 = udiv i64 %_353430, 4
    %_353627 = urem i64 %_353622, 256
    %_353629 = trunc i64 %_353627 to i8
    %_353631.zext = zext i8 %_353629 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353631 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353619, i64 0, i9 %_353631.zext
    %_353634 = urem i64 %_353430, 4
    %_353636 = trunc i64 %_353634 to i2
    %_353638.zext = zext i2 %_353636 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353638 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353631, i64 0, i3 %_353638.zext
    %_353640 = load float, float addrspace(0)* %_353638
    %_353645.zext = zext i10 %_353424 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353645 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_353643, i64 0, i11 %_353645.zext
    %_353647 = load float, float addrspace(0)* %_353645
    %_353652 = fmul fast float %_353647, %_353640
    %accn_353655 = fadd fast float %_353652, %_353605
    store float %accn_353655, float addrspace(0)* %fv_0_353207
    %_353659 = load float, float addrspace(0)* %fv_0_353211
    %_353668 = add i64 %_353425, %_353666
    %_353671 = udiv i64 %_353668, 2048
    %_353676 = urem i64 %_353671, 512
    %_353678 = trunc i64 %_353676 to i9
    %_353680.zext = zext i9 %_353678 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353680 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353680.zext
    %_353682.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353682 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353680, i64 0, i2 %_353682.zext
    %_353686 = udiv i64 %_353668, 4
    %_353691 = urem i64 %_353686, 256
    %_353693 = trunc i64 %_353691 to i8
    %_353695.zext = zext i8 %_353693 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353695 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353682, i64 0, i9 %_353695.zext
    %_353698 = urem i64 %_353668, 4
    %_353700 = trunc i64 %_353698 to i2
    %_353702.zext = zext i2 %_353700 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353702 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353695, i64 0, i3 %_353702.zext
    %_353704 = load float, float addrspace(0)* %_353702
    %_353707 = load float, float addrspace(0)* %_353483
    %_353712 = fmul fast float %_353707, %_353704
    %accn_353715 = fadd fast float %_353712, %_353659
    store float %accn_353715, float addrspace(0)* %fv_0_353211
    %_353719 = load float, float addrspace(0)* %fv_0_353215
    %_353722 = udiv i64 %_353668, 2048
    %_353727 = urem i64 %_353722, 512
    %_353729 = trunc i64 %_353727 to i9
    %_353731.zext = zext i9 %_353729 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353731 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353731.zext
    %_353733.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353733 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353731, i64 0, i2 %_353733.zext
    %_353736 = udiv i64 %_353668, 4
    %_353741 = urem i64 %_353736, 256
    %_353743 = trunc i64 %_353741 to i8
    %_353745.zext = zext i8 %_353743 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353745 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353733, i64 0, i9 %_353745.zext
    %_353748 = urem i64 %_353668, 4
    %_353750 = trunc i64 %_353748 to i2
    %_353752.zext = zext i2 %_353750 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353752 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353745, i64 0, i3 %_353752.zext
    %_353754 = load float, float addrspace(0)* %_353752
    %_353757 = load float, float addrspace(0)* %_353537
    %_353762 = fmul fast float %_353757, %_353754
    %accn_353765 = fadd fast float %_353762, %_353719
    store float %accn_353765, float addrspace(0)* %fv_0_353215
    %_353769 = load float, float addrspace(0)* %fv_0_353219
    %_353772 = udiv i64 %_353668, 2048
    %_353777 = urem i64 %_353772, 512
    %_353779 = trunc i64 %_353777 to i9
    %_353781.zext = zext i9 %_353779 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353781 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353781.zext
    %_353783.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353783 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353781, i64 0, i2 %_353783.zext
    %_353786 = udiv i64 %_353668, 4
    %_353791 = urem i64 %_353786, 256
    %_353793 = trunc i64 %_353791 to i8
    %_353795.zext = zext i8 %_353793 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353795 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353783, i64 0, i9 %_353795.zext
    %_353798 = urem i64 %_353668, 4
    %_353800 = trunc i64 %_353798 to i2
    %_353802.zext = zext i2 %_353800 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353802 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353795, i64 0, i3 %_353802.zext
    %_353804 = load float, float addrspace(0)* %_353802
    %_353807 = load float, float addrspace(0)* %_353591
    %_353812 = fmul fast float %_353807, %_353804
    %accn_353815 = fadd fast float %_353812, %_353769
    store float %accn_353815, float addrspace(0)* %fv_0_353219
    %_353819 = load float, float addrspace(0)* %fv_0_353223
    %_353822 = udiv i64 %_353668, 2048
    %_353827 = urem i64 %_353822, 512
    %_353829 = trunc i64 %_353827 to i9
    %_353831.zext = zext i9 %_353829 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353831 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352081, i64 0, i10 %_353831.zext
    %_353833.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353833 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353831, i64 0, i2 %_353833.zext
    %_353836 = udiv i64 %_353668, 4
    %_353841 = urem i64 %_353836, 256
    %_353843 = trunc i64 %_353841 to i8
    %_353845.zext = zext i8 %_353843 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353845 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353833, i64 0, i9 %_353845.zext
    %_353848 = urem i64 %_353668, 4
    %_353850 = trunc i64 %_353848 to i2
    %_353852.zext = zext i2 %_353850 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353852 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353845, i64 0, i3 %_353852.zext
    %_353854 = load float, float addrspace(0)* %_353852
    %_353857 = load float, float addrspace(0)* %_353645
    %_353862 = fmul fast float %_353857, %_353854
    %accn_353865 = fadd fast float %_353862, %_353819
    store float %accn_353865, float addrspace(0)* %fv_0_353223
    br label %head_353227, !llvm.loop !1016

new_exit_353234:
    %fv_10_353236 = add nuw nsw i32 1, %iv_353181
    %_353239 = load float, float addrspace(0)* %fv_0_353195
    %_353260.zext = zext i10 %_353258 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353260 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_30_parameters_bias__353242, i64 0, i11 %_353260.zext
    %_353262 = load float, float addrspace(0)* %_353260
    %_353270.zext = zext i8 %_353245 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353270 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353268, i64 0, i9 %_353270.zext
    %_353272.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353272 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353270, i64 0, i3 %_353272.zext
    %_353276 = fadd fast float %_353239, %_353262
    %_353280 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353276)
    store float %_353280, float addrspace(0)* %_353272
    %_353284 = load float, float addrspace(0)* %fv_0_353199
    %_353290.zext = zext i10 %_353288 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353290 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_30_parameters_bias__353242, i64 0, i11 %_353290.zext
    %_353292 = load float, float addrspace(0)* %_353290
    %_353295.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353295 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353270, i64 0, i3 %_353295.zext
    %_353299 = fadd fast float %_353284, %_353292
    %_353301 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353299)
    store float %_353301, float addrspace(0)* %_353295
    %_353305 = load float, float addrspace(0)* %fv_0_353203
    %_353311.zext = zext i10 %_353309 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353311 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_30_parameters_bias__353242, i64 0, i11 %_353311.zext
    %_353313 = load float, float addrspace(0)* %_353311
    %_353316.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353316 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353270, i64 0, i3 %_353316.zext
    %_353320 = fadd fast float %_353305, %_353313
    %_353322 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353320)
    store float %_353322, float addrspace(0)* %_353316
    %_353326 = load float, float addrspace(0)* %fv_0_353207
    %_353332.zext = zext i10 %_353330 to i11 ; add one more bit for gep index as it is treated as signed value
    %_353332 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %l_self_modules_network_modules_30_parameters_bias__353242, i64 0, i11 %_353332.zext
    %_353334 = load float, float addrspace(0)* %_353332
    %_353337.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353337 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353270, i64 0, i3 %_353337.zext
    %_353341 = fadd fast float %_353326, %_353334
    %_353343 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353341)
    store float %_353343, float addrspace(0)* %_353337
    %_353347 = load float, float addrspace(0)* %fv_0_353211
    %_353350 = load float, float addrspace(0)* %_353260
    %_353355.zext = zext i8 %_353245 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353355 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353353, i64 0, i9 %_353355.zext
    %_353357.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353357 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353355, i64 0, i3 %_353357.zext
    %_353361 = fadd fast float %_353347, %_353350
    %_353363 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353361)
    store float %_353363, float addrspace(0)* %_353357
    %_353367 = load float, float addrspace(0)* %fv_0_353215
    %_353370 = load float, float addrspace(0)* %_353290
    %_353373.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353373 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353355, i64 0, i3 %_353373.zext
    %_353377 = fadd fast float %_353367, %_353370
    %_353379 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353377)
    store float %_353379, float addrspace(0)* %_353373
    %_353383 = load float, float addrspace(0)* %fv_0_353219
    %_353386 = load float, float addrspace(0)* %_353311
    %_353389.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353389 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353355, i64 0, i3 %_353389.zext
    %_353393 = fadd fast float %_353383, %_353386
    %_353395 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353393)
    store float %_353395, float addrspace(0)* %_353389
    %_353399 = load float, float addrspace(0)* %fv_0_353223
    %_353402 = load float, float addrspace(0)* %_353332
    %_353405.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353405 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353355, i64 0, i3 %_353405.zext
    %_353409 = fadd fast float %_353399, %_353402
    %_353411 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353409)
    store float %_353411, float addrspace(0)* %_353405
    br label %head_353178

new_exit_353185:
    %fv_10_353187 = add nuw nsw i32 1, %iv_352105
    br label %head_352102

new_exit_352108:
    %_352121i8 = call i8* @malloc(i64 33554432)
    %_352121 = bitcast i8* %_352121i8 to [512 x [2 x [2048 x [4 x float]]]] addrspace(0)*
    %_352124i8 = call i8* @malloc(i64 32)
    %_352124 = bitcast i8* %_352124i8 to [8 x float] addrspace(0)*
    %fv_0_352435.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352435 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352435.zext
    %fv_0_352440.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352440 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352440.zext
    %fv_0_352444.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352444 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352444.zext
    %fv_0_352448.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352448 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352448.zext
    %fv_0_352452.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352452 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352452.zext
    %fv_0_352456.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352456 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352456.zext
    %fv_0_352460.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352460 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352460.zext
    %fv_0_352464.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352464 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352124, i64 0, i4 %fv_0_352464.zext
    br label %head_352127

head_352127:
    %iv_352130 = phi i32 [ 0, %new_exit_352108 ], [ %fv_10_352408, %new_exit_352406 ]
    %_352132 = icmp ult i32 %iv_352130, 512
    %_352508 = trunc i32 %iv_352130 to i9
    %_352676 = zext i9 %_352508 to i64
    %_352678 = mul i64 2048, %_352676
    %t_352955 = mul i64 2, %_352676
    %t_352957 = add i64 1, %t_352955
    %_352959 = mul i64 1024, %t_352957
    %_352510.zext = zext i9 %_352508 to i10 ; add one more bit for gep index as it is treated as signed value
    %_352510 = getelementptr inbounds [512 x [2 x [2048 x [4 x float]]]], [512 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_352121, i64 0, i10 %_352510.zext
    %_352512.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352512 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_352510, i64 0, i2 %_352512.zext
    %_352597.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352597 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_352510, i64 0, i2 %_352597.zext
    br i1 %_352132, label %new_body_352396, label %new_exit_352133

new_body_352396:
    br label %head_352399

head_352399:
    %iv_352402 = phi i32 [ 0, %new_body_352396 ], [ %fv_10_352478, %new_exit_352476 ]
    %_352405 = icmp ult i32 %iv_352402, 2048
    %_352487 = trunc i32 %iv_352402 to i11
    %t_352495 = zext i11 %_352487 to i64
    %t_352497 = mul i64 4, %t_352495
    %_352500 = trunc i64 %t_352497 to i13
    %_352762.zext = zext i13 %_352500 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352762 = getelementptr inbounds [8192 x [1024 x float]], [8192 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_32_parameters_weight__352751, i64 0, i14 %_352762.zext
    %t_352536 = add i64 1, %t_352497
    %_352537 = trunc i64 %t_352536 to i13
    %_352827.zext = zext i13 %_352537 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352827 = getelementptr inbounds [8192 x [1024 x float]], [8192 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_32_parameters_weight__352751, i64 0, i14 %_352827.zext
    %t_352555 = add i64 2, %t_352497
    %_352556 = trunc i64 %t_352555 to i13
    %_352881.zext = zext i13 %_352556 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352881 = getelementptr inbounds [8192 x [1024 x float]], [8192 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_32_parameters_weight__352751, i64 0, i14 %_352881.zext
    %t_352575 = add i64 3, %t_352497
    %_352576 = trunc i64 %t_352575 to i13
    %_352935.zext = zext i13 %_352576 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352935 = getelementptr inbounds [8192 x [1024 x float]], [8192 x [1024 x float]] addrspace(0)* %l_self_modules_network_modules_32_parameters_weight__352751, i64 0, i14 %_352935.zext
    br i1 %_352405, label %new_body_352412, label %new_exit_352406

new_body_352412:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352435
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352440
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352444
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352448
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352452
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352456
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352460
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352464
    br label %head_352468, !llvm.loop !1017

head_352468:
    %iv_352471 = phi i32 [ 0, %new_body_352412 ], [ %fv_9_352654, %new_body_352652 ]
    %_352473 = icmp ult i32 %iv_352471, 1024
    br i1 %_352473, label %new_body_352652, label %new_exit_352476

new_body_352652:
    %fv_9_352654 = add nuw nsw i32 1, %iv_352471
    %_352657 = load float, float addrspace(0)* %fv_0_352435
    %_352667 = trunc i32 %iv_352471 to i10
    %_352668 = zext i10 %_352667 to i64
    %_352680 = add i64 %_352668, %_352678
    %_352683 = udiv i64 %_352680, 2048
    %_352688 = urem i64 %_352683, 512
    %_352690 = trunc i64 %_352688 to i9
    %_352701.zext = zext i9 %_352690 to i10 ; add one more bit for gep index as it is treated as signed value
    %_352701 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_352701.zext
    %_352710.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352710 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_352701, i64 0, i2 %_352710.zext
    %_352714 = udiv i64 %_352680, 4
    %_352720 = urem i64 %_352714, 256
    %_352724 = trunc i64 %_352720 to i8
    %_352737.zext = zext i8 %_352724 to i9 ; add one more bit for gep index as it is treated as signed value
    %_352737 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_352710, i64 0, i9 %_352737.zext
    %_352740 = urem i64 %_352680, 4
    %_352742 = trunc i64 %_352740 to i2
    %_352744.zext = zext i2 %_352742 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352744 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352737, i64 0, i3 %_352744.zext
    %_352746 = load float, float addrspace(0)* %_352744
    %_352773.zext = zext i10 %_352667 to i11 ; add one more bit for gep index as it is treated as signed value
    %_352773 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_352762, i64 0, i11 %_352773.zext
    %_352775 = load float, float addrspace(0)* %_352773
    %_352782 = fmul fast float %_352775, %_352746
    %accn_352785 = fadd fast float %_352782, %_352657
    store float %accn_352785, float addrspace(0)* %fv_0_352435
    %_352789 = load float, float addrspace(0)* %fv_0_352440
    %_352792 = udiv i64 %_352680, 2048
    %_352797 = urem i64 %_352792, 512
    %_352799 = trunc i64 %_352797 to i9
    %_352801.zext = zext i9 %_352799 to i10 ; add one more bit for gep index as it is treated as signed value
    %_352801 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_352801.zext
    %_352803.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352803 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_352801, i64 0, i2 %_352803.zext
    %_352806 = udiv i64 %_352680, 4
    %_352811 = urem i64 %_352806, 256
    %_352813 = trunc i64 %_352811 to i8
    %_352815.zext = zext i8 %_352813 to i9 ; add one more bit for gep index as it is treated as signed value
    %_352815 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_352803, i64 0, i9 %_352815.zext
    %_352818 = urem i64 %_352680, 4
    %_352820 = trunc i64 %_352818 to i2
    %_352822.zext = zext i2 %_352820 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352822 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352815, i64 0, i3 %_352822.zext
    %_352824 = load float, float addrspace(0)* %_352822
    %_352829.zext = zext i10 %_352667 to i11 ; add one more bit for gep index as it is treated as signed value
    %_352829 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_352827, i64 0, i11 %_352829.zext
    %_352831 = load float, float addrspace(0)* %_352829
    %_352836 = fmul fast float %_352831, %_352824
    %accn_352839 = fadd fast float %_352836, %_352789
    store float %accn_352839, float addrspace(0)* %fv_0_352440
    %_352843 = load float, float addrspace(0)* %fv_0_352444
    %_352846 = udiv i64 %_352680, 2048
    %_352851 = urem i64 %_352846, 512
    %_352853 = trunc i64 %_352851 to i9
    %_352855.zext = zext i9 %_352853 to i10 ; add one more bit for gep index as it is treated as signed value
    %_352855 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_352855.zext
    %_352857.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352857 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_352855, i64 0, i2 %_352857.zext
    %_352860 = udiv i64 %_352680, 4
    %_352865 = urem i64 %_352860, 256
    %_352867 = trunc i64 %_352865 to i8
    %_352869.zext = zext i8 %_352867 to i9 ; add one more bit for gep index as it is treated as signed value
    %_352869 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_352857, i64 0, i9 %_352869.zext
    %_352872 = urem i64 %_352680, 4
    %_352874 = trunc i64 %_352872 to i2
    %_352876.zext = zext i2 %_352874 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352876 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352869, i64 0, i3 %_352876.zext
    %_352878 = load float, float addrspace(0)* %_352876
    %_352883.zext = zext i10 %_352667 to i11 ; add one more bit for gep index as it is treated as signed value
    %_352883 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_352881, i64 0, i11 %_352883.zext
    %_352885 = load float, float addrspace(0)* %_352883
    %_352890 = fmul fast float %_352885, %_352878
    %accn_352893 = fadd fast float %_352890, %_352843
    store float %accn_352893, float addrspace(0)* %fv_0_352444
    %_352897 = load float, float addrspace(0)* %fv_0_352448
    %_352900 = udiv i64 %_352680, 2048
    %_352905 = urem i64 %_352900, 512
    %_352907 = trunc i64 %_352905 to i9
    %_352909.zext = zext i9 %_352907 to i10 ; add one more bit for gep index as it is treated as signed value
    %_352909 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_352909.zext
    %_352911.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352911 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_352909, i64 0, i2 %_352911.zext
    %_352914 = udiv i64 %_352680, 4
    %_352919 = urem i64 %_352914, 256
    %_352921 = trunc i64 %_352919 to i8
    %_352923.zext = zext i8 %_352921 to i9 ; add one more bit for gep index as it is treated as signed value
    %_352923 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_352911, i64 0, i9 %_352923.zext
    %_352926 = urem i64 %_352680, 4
    %_352928 = trunc i64 %_352926 to i2
    %_352930.zext = zext i2 %_352928 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352930 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352923, i64 0, i3 %_352930.zext
    %_352932 = load float, float addrspace(0)* %_352930
    %_352937.zext = zext i10 %_352667 to i11 ; add one more bit for gep index as it is treated as signed value
    %_352937 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(0)* %_352935, i64 0, i11 %_352937.zext
    %_352939 = load float, float addrspace(0)* %_352937
    %_352944 = fmul fast float %_352939, %_352932
    %accn_352947 = fadd fast float %_352944, %_352897
    store float %accn_352947, float addrspace(0)* %fv_0_352448
    %_352951 = load float, float addrspace(0)* %fv_0_352452
    %_352961 = add i64 %_352668, %_352959
    %_352964 = udiv i64 %_352961, 2048
    %_352969 = urem i64 %_352964, 512
    %_352971 = trunc i64 %_352969 to i9
    %_352973.zext = zext i9 %_352971 to i10 ; add one more bit for gep index as it is treated as signed value
    %_352973 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_352973.zext
    %_352975.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352975 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_352973, i64 0, i2 %_352975.zext
    %_352979 = udiv i64 %_352961, 4
    %_352984 = urem i64 %_352979, 256
    %_352986 = trunc i64 %_352984 to i8
    %_352988.zext = zext i8 %_352986 to i9 ; add one more bit for gep index as it is treated as signed value
    %_352988 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_352975, i64 0, i9 %_352988.zext
    %_352991 = urem i64 %_352961, 4
    %_352993 = trunc i64 %_352991 to i2
    %_352995.zext = zext i2 %_352993 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352995 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352988, i64 0, i3 %_352995.zext
    %_352997 = load float, float addrspace(0)* %_352995
    %_353000 = load float, float addrspace(0)* %_352773
    %_353005 = fmul fast float %_353000, %_352997
    %accn_353008 = fadd fast float %_353005, %_352951
    store float %accn_353008, float addrspace(0)* %fv_0_352452
    %_353012 = load float, float addrspace(0)* %fv_0_352456
    %_353015 = udiv i64 %_352961, 2048
    %_353020 = urem i64 %_353015, 512
    %_353022 = trunc i64 %_353020 to i9
    %_353024.zext = zext i9 %_353022 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353024 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_353024.zext
    %_353026.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353026 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353024, i64 0, i2 %_353026.zext
    %_353029 = udiv i64 %_352961, 4
    %_353034 = urem i64 %_353029, 256
    %_353036 = trunc i64 %_353034 to i8
    %_353038.zext = zext i8 %_353036 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353038 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353026, i64 0, i9 %_353038.zext
    %_353041 = urem i64 %_352961, 4
    %_353043 = trunc i64 %_353041 to i2
    %_353045.zext = zext i2 %_353043 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353045 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353038, i64 0, i3 %_353045.zext
    %_353047 = load float, float addrspace(0)* %_353045
    %_353050 = load float, float addrspace(0)* %_352829
    %_353055 = fmul fast float %_353050, %_353047
    %accn_353058 = fadd fast float %_353055, %_353012
    store float %accn_353058, float addrspace(0)* %fv_0_352456
    %_353062 = load float, float addrspace(0)* %fv_0_352460
    %_353065 = udiv i64 %_352961, 2048
    %_353070 = urem i64 %_353065, 512
    %_353072 = trunc i64 %_353070 to i9
    %_353074.zext = zext i9 %_353072 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353074 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_353074.zext
    %_353076.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353076 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353074, i64 0, i2 %_353076.zext
    %_353079 = udiv i64 %_352961, 4
    %_353084 = urem i64 %_353079, 256
    %_353086 = trunc i64 %_353084 to i8
    %_353088.zext = zext i8 %_353086 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353088 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353076, i64 0, i9 %_353088.zext
    %_353091 = urem i64 %_352961, 4
    %_353093 = trunc i64 %_353091 to i2
    %_353095.zext = zext i2 %_353093 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353095 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353088, i64 0, i3 %_353095.zext
    %_353097 = load float, float addrspace(0)* %_353095
    %_353100 = load float, float addrspace(0)* %_352883
    %_353105 = fmul fast float %_353100, %_353097
    %accn_353108 = fadd fast float %_353105, %_353062
    store float %accn_353108, float addrspace(0)* %fv_0_352460
    %_353112 = load float, float addrspace(0)* %fv_0_352464
    %_353115 = udiv i64 %_352961, 2048
    %_353120 = urem i64 %_353115, 512
    %_353122 = trunc i64 %_353120 to i9
    %_353124.zext = zext i9 %_353122 to i10 ; add one more bit for gep index as it is treated as signed value
    %_353124 = getelementptr inbounds [512 x [2 x [256 x [4 x float]]]], [512 x [2 x [256 x [4 x float]]]] addrspace(0)* %_352096, i64 0, i10 %_353124.zext
    %_353126.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353126 = getelementptr inbounds [2 x [256 x [4 x float]]], [2 x [256 x [4 x float]]] addrspace(0)* %_353124, i64 0, i2 %_353126.zext
    %_353129 = udiv i64 %_352961, 4
    %_353134 = urem i64 %_353129, 256
    %_353136 = trunc i64 %_353134 to i8
    %_353138.zext = zext i8 %_353136 to i9 ; add one more bit for gep index as it is treated as signed value
    %_353138 = getelementptr inbounds [256 x [4 x float]], [256 x [4 x float]] addrspace(0)* %_353126, i64 0, i9 %_353138.zext
    %_353141 = urem i64 %_352961, 4
    %_353143 = trunc i64 %_353141 to i2
    %_353145.zext = zext i2 %_353143 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353145 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353138, i64 0, i3 %_353145.zext
    %_353147 = load float, float addrspace(0)* %_353145
    %_353150 = load float, float addrspace(0)* %_352937
    %_353155 = fmul fast float %_353150, %_353147
    %accn_353158 = fadd fast float %_353155, %_353112
    store float %accn_353158, float addrspace(0)* %fv_0_352464
    br label %head_352468, !llvm.loop !1017

new_exit_352476:
    %fv_10_352478 = add nuw nsw i32 1, %iv_352402
    %_352481 = load float, float addrspace(0)* %fv_0_352435
    %_352502.zext = zext i13 %_352500 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352502 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_32_parameters_bias__352484, i64 0, i14 %_352502.zext
    %_352504 = load float, float addrspace(0)* %_352502
    %_352514.zext = zext i11 %_352487 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352514 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_352512, i64 0, i12 %_352514.zext
    %_352516.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352516 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352514, i64 0, i3 %_352516.zext
    %_352528 = fadd fast float %_352481, %_352504
    store float %_352528, float addrspace(0)* %_352516
    %_352532 = load float, float addrspace(0)* %fv_0_352440
    %_352539.zext = zext i13 %_352537 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352539 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_32_parameters_bias__352484, i64 0, i14 %_352539.zext
    %_352541 = load float, float addrspace(0)* %_352539
    %_352544.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352544 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352514, i64 0, i3 %_352544.zext
    %_352548 = fadd fast float %_352532, %_352541
    store float %_352548, float addrspace(0)* %_352544
    %_352552 = load float, float addrspace(0)* %fv_0_352444
    %_352558.zext = zext i13 %_352556 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352558 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_32_parameters_bias__352484, i64 0, i14 %_352558.zext
    %_352560 = load float, float addrspace(0)* %_352558
    %_352563.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352563 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352514, i64 0, i3 %_352563.zext
    %_352567 = fadd fast float %_352552, %_352560
    store float %_352567, float addrspace(0)* %_352563
    %_352571 = load float, float addrspace(0)* %fv_0_352448
    %_352578.zext = zext i13 %_352576 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352578 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_32_parameters_bias__352484, i64 0, i14 %_352578.zext
    %_352580 = load float, float addrspace(0)* %_352578
    %_352583.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352583 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352514, i64 0, i3 %_352583.zext
    %_352587 = fadd fast float %_352571, %_352580
    store float %_352587, float addrspace(0)* %_352583
    %_352591 = load float, float addrspace(0)* %fv_0_352452
    %_352594 = load float, float addrspace(0)* %_352502
    %_352599.zext = zext i11 %_352487 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352599 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_352597, i64 0, i12 %_352599.zext
    %_352601.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352601 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352599, i64 0, i3 %_352601.zext
    %_352605 = fadd fast float %_352591, %_352594
    store float %_352605, float addrspace(0)* %_352601
    %_352609 = load float, float addrspace(0)* %fv_0_352456
    %_352612 = load float, float addrspace(0)* %_352539
    %_352615.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352615 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352599, i64 0, i3 %_352615.zext
    %_352619 = fadd fast float %_352609, %_352612
    store float %_352619, float addrspace(0)* %_352615
    %_352623 = load float, float addrspace(0)* %fv_0_352460
    %_352626 = load float, float addrspace(0)* %_352558
    %_352629.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352629 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352599, i64 0, i3 %_352629.zext
    %_352633 = fadd fast float %_352623, %_352626
    store float %_352633, float addrspace(0)* %_352629
    %_352637 = load float, float addrspace(0)* %fv_0_352464
    %_352640 = load float, float addrspace(0)* %_352578
    %_352643.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352643 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352599, i64 0, i3 %_352643.zext
    %_352647 = fadd fast float %_352637, %_352640
    store float %_352647, float addrspace(0)* %_352643
    br label %head_352399

new_exit_352406:
    %fv_10_352408 = add nuw nsw i32 1, %iv_352130
    br label %head_352127

new_exit_352133:
    %_352138i8 = call i8* @malloc(i64 33554432)
    %_352138 = bitcast i8* %_352138i8 to [1024 x [8192 x float]] addrspace(0)*
    br label %head_352141

head_352141:
    %iv_352144 = phi i32 [ 0, %new_exit_352133 ], [ %fv_4_352172, %new_exit_352165 ]
    %_352147 = icmp ult i32 %iv_352144, 1024
    %_352222 = trunc i32 %iv_352144 to i10
    %_352230 = zext i10 %_352222 to i64
    %_352236 = mul i64 8192, %_352230
    %_352367.zext = zext i10 %_352222 to i11 ; add one more bit for gep index as it is treated as signed value
    %_352367 = getelementptr inbounds [1024 x [8192 x float]], [1024 x [8192 x float]] addrspace(0)* %_352138, i64 0, i11 %_352367.zext
    br i1 %_352147, label %new_body_352155, label %new_exit_352148

new_body_352155:
    br label %head_352158

head_352158:
    %iv_352161 = phi i32 [ 0, %new_body_352155 ], [ %fv_4_352178, %new_body_352176 ]
    %_352164 = icmp ult i32 %iv_352161, 8192
    br i1 %_352164, label %new_body_352176, label %new_exit_352165

new_body_352176:
    %fv_4_352178 = add nuw nsw i32 1, %iv_352161
    %_352209 = trunc i32 %iv_352161 to i13
    %_352217 = zext i13 %_352209 to i64
    %_352240 = add i64 %_352217, %_352236
    %_352248 = udiv i64 %_352240, 16384
    %_352255 = urem i64 %_352248, 512
    %_352264 = trunc i64 %_352255 to i9
    %_352277.zext = zext i9 %_352264 to i10 ; add one more bit for gep index as it is treated as signed value
    %_352277 = getelementptr inbounds [512 x [2 x [2048 x [4 x float]]]], [512 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_352121, i64 0, i10 %_352277.zext
    %_352282 = urem i64 %_352230, 2
    %_352286 = trunc i64 %_352282 to i1
    %_352296.zext = zext i1 %_352286 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352296 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_352277, i64 0, i2 %_352296.zext
    %_352301 = udiv i64 %_352240, 4
    %_352307 = urem i64 %_352301, 2048
    %_352311 = trunc i64 %_352307 to i11
    %_352324.zext = zext i11 %_352311 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352324 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_352296, i64 0, i12 %_352324.zext
    %_352327 = urem i64 %_352240, 4
    %_352331 = trunc i64 %_352327 to i2
    %_352346.zext = zext i2 %_352331 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352346 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352324, i64 0, i3 %_352346.zext
    %_352351 = load float, float addrspace(0)* %_352346
    %_352380.zext = zext i13 %_352209 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352380 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_352367, i64 0, i14 %_352380.zext
    store float %_352351, float addrspace(0)* %_352380
    br label %head_352158

new_exit_352165:
    %fv_4_352172 = add nuw nsw i32 1, %iv_352144
    br label %head_352141

new_exit_352148:
    ret [1024 x [8192 x float]] addrspace(0)* %_352138

}


!1000 = !{!"llvm.loop.vectorize.enable", i1 true}
!1008 = distinct !{!1008, !1000}
!1005 = distinct !{!1005, !1000}
!1003 = distinct !{!1003, !1000}
!1001 = distinct !{!1001, !1000}
!1016 = distinct !{!1016, !1000}
!1006 = distinct !{!1006, !1000}
!1007 = distinct !{!1007, !1000}
!1010 = distinct !{!1010, !1000}
!1009 = distinct !{!1009, !1000}
!1011 = distinct !{!1011, !1000}
!1013 = distinct !{!1013, !1000}
!1014 = distinct !{!1014, !1000}
!1015 = distinct !{!1015, !1000}
!1002 = distinct !{!1002, !1000}
!1004 = distinct !{!1004, !1000}
!1012 = distinct !{!1012, !1000}
!1017 = distinct !{!1017, !1000}
