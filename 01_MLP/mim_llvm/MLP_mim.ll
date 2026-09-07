
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [8192 x float]] addrspace(0)* @MLP([16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352072, [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351877, [128 x [16384 x float]] addrspace(0)* %l_x__352047, [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351399, [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351171, [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350679, [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350400) {
mimir_graph_7611c0b36c5a27cb_349960:
    %_349982i8 = call i8* @malloc(i64 8388608)
    %_349982 = bitcast i8* %_349982i8 to [64 x [2 x [4096 x [4 x float]]]] addrspace(0)*
    %_349992i8 = call i8* @malloc(i64 32)
    %_349992 = bitcast i8* %_349992i8 to [8 x float] addrspace(0)*
    %fv_0_351830.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351830 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351830.zext
    %fv_0_351834.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351834 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351834.zext
    %fv_0_351838.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351838 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351838.zext
    %fv_0_351842.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351842 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351842.zext
    %fv_0_351846.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351846 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351846.zext
    %fv_0_351850.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351850 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351850.zext
    %fv_0_351854.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351854 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351854.zext
    %fv_0_351858.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351858 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349992, i64 0, i4 %fv_0_351858.zext
    br label %head_349996

head_349996:
    %iv_350000 = phi i32 [ 0, %mimir_graph_7611c0b36c5a27cb_349960 ], [ %fv_10_351822, %new_exit_351820 ]
    %_350005 = icmp ult i32 %iv_350000, 64
    %_351888 = trunc i32 %iv_350000 to i6
    %_352048 = zext i6 %_351888 to i64
    %t_352050 = mul i64 2, %_352048
    %_352053 = trunc i64 %t_352050 to i7
    %_352064.zext = zext i7 %_352053 to i8 ; add one more bit for gep index as it is treated as signed value
    %_352064 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__352047, i64 0, i8 %_352064.zext
    %t_352159 = add i64 1, %t_352050
    %_352160 = trunc i64 %t_352159 to i7
    %_352162.zext = zext i7 %_352160 to i8 ; add one more bit for gep index as it is treated as signed value
    %_352162 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__352047, i64 0, i8 %_352162.zext
    %_351890.zext = zext i6 %_351888 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351890 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351890.zext
    %_351892.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351892 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351890, i64 0, i2 %_351892.zext
    %_351975.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351975 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351890, i64 0, i2 %_351975.zext
    br i1 %_350005, label %new_body_351811, label %new_exit_350008

new_body_351811:
    br label %head_351814

head_351814:
    %iv_351817 = phi i32 [ 0, %new_body_351811 ], [ %fv_10_351871, %new_exit_351869 ]
    %_351819 = icmp ult i32 %iv_351817, 4096
    %_351878 = trunc i32 %iv_351817 to i12
    %t_351879 = zext i12 %_351878 to i64
    %t_351881 = mul i64 4, %t_351879
    %_351882 = trunc i64 %t_351881 to i14
    %_352074.zext = zext i14 %_351882 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352074 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352072, i64 0, i15 %_352074.zext
    %t_351909 = add i64 1, %t_351881
    %_351910 = trunc i64 %t_351909 to i14
    %_352096.zext = zext i14 %_351910 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352096 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352072, i64 0, i15 %_352096.zext
    %t_351930 = add i64 2, %t_351881
    %_351931 = trunc i64 %t_351930 to i14
    %_352118.zext = zext i14 %_351931 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352118 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352072, i64 0, i15 %_352118.zext
    %t_351951 = add i64 3, %t_351881
    %_351952 = trunc i64 %t_351951 to i14
    %_352140.zext = zext i14 %_351952 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352140 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352072, i64 0, i15 %_352140.zext
    br i1 %_351819, label %new_body_351826, label %new_exit_351820

new_body_351826:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351830
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351834
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351838
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351842
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351846
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351850
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351854
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351858
    br label %head_351862, !llvm.loop !1001

head_351862:
    %iv_351865 = phi i32 [ 0, %new_body_351826 ], [ %fv_9_352040, %new_body_352038 ]
    %_351867 = icmp ult i32 %iv_351865, 16384
    br i1 %_351867, label %new_body_352038, label %new_exit_351869

new_body_352038:
    %fv_9_352040 = add nuw nsw i32 1, %iv_351865
    %_352043 = load float, float addrspace(0)* %fv_0_351830
    %_352065 = trunc i32 %iv_351865 to i14
    %_352067.zext = zext i14 %_352065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352067 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352064, i64 0, i15 %_352067.zext
    %_352069 = load float, float addrspace(0)* %_352067
    %_352076.zext = zext i14 %_352065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352076 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352074, i64 0, i15 %_352076.zext
    %_352078 = load float, float addrspace(0)* %_352076
    %_352083 = fmul fast float %_352069, %_352078
    %accn_352086 = fadd fast float %_352083, %_352043
    store float %accn_352086, float addrspace(0)* %fv_0_351830
    %_352090 = load float, float addrspace(0)* %fv_0_351834
    %_352093 = load float, float addrspace(0)* %_352067
    %_352098.zext = zext i14 %_352065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352098 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352096, i64 0, i15 %_352098.zext
    %_352100 = load float, float addrspace(0)* %_352098
    %_352105 = fmul fast float %_352093, %_352100
    %accn_352108 = fadd fast float %_352105, %_352090
    store float %accn_352108, float addrspace(0)* %fv_0_351834
    %_352112 = load float, float addrspace(0)* %fv_0_351838
    %_352115 = load float, float addrspace(0)* %_352067
    %_352120.zext = zext i14 %_352065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352120 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352118, i64 0, i15 %_352120.zext
    %_352122 = load float, float addrspace(0)* %_352120
    %_352127 = fmul fast float %_352115, %_352122
    %accn_352130 = fadd fast float %_352127, %_352112
    store float %accn_352130, float addrspace(0)* %fv_0_351838
    %_352134 = load float, float addrspace(0)* %fv_0_351842
    %_352137 = load float, float addrspace(0)* %_352067
    %_352142.zext = zext i14 %_352065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352142 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352140, i64 0, i15 %_352142.zext
    %_352144 = load float, float addrspace(0)* %_352142
    %_352149 = fmul fast float %_352137, %_352144
    %accn_352152 = fadd fast float %_352149, %_352134
    store float %accn_352152, float addrspace(0)* %fv_0_351842
    %_352156 = load float, float addrspace(0)* %fv_0_351846
    %_352164.zext = zext i14 %_352065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352164 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352162, i64 0, i15 %_352164.zext
    %_352166 = load float, float addrspace(0)* %_352164
    %_352169 = load float, float addrspace(0)* %_352076
    %_352174 = fmul fast float %_352169, %_352166
    %accn_352177 = fadd fast float %_352174, %_352156
    store float %accn_352177, float addrspace(0)* %fv_0_351846
    %_352181 = load float, float addrspace(0)* %fv_0_351850
    %_352184 = load float, float addrspace(0)* %_352164
    %_352187 = load float, float addrspace(0)* %_352098
    %_352192 = fmul fast float %_352184, %_352187
    %accn_352195 = fadd fast float %_352192, %_352181
    store float %accn_352195, float addrspace(0)* %fv_0_351850
    %_352199 = load float, float addrspace(0)* %fv_0_351854
    %_352202 = load float, float addrspace(0)* %_352164
    %_352205 = load float, float addrspace(0)* %_352120
    %_352210 = fmul fast float %_352202, %_352205
    %accn_352213 = fadd fast float %_352210, %_352199
    store float %accn_352213, float addrspace(0)* %fv_0_351854
    %_352217 = load float, float addrspace(0)* %fv_0_351858
    %_352220 = load float, float addrspace(0)* %_352164
    %_352223 = load float, float addrspace(0)* %_352142
    %_352228 = fmul fast float %_352220, %_352223
    %accn_352231 = fadd fast float %_352228, %_352217
    store float %accn_352231, float addrspace(0)* %fv_0_351858
    br label %head_351862, !llvm.loop !1001

new_exit_351869:
    %fv_10_351871 = add nuw nsw i32 1, %iv_351817
    %_351874 = load float, float addrspace(0)* %fv_0_351830
    %_351884.zext = zext i14 %_351882 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351884 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351877, i64 0, i15 %_351884.zext
    %_351886 = load float, float addrspace(0)* %_351884
    %_351894.zext = zext i12 %_351878 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351894 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351892, i64 0, i13 %_351894.zext
    %_351896.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351896 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351894, i64 0, i3 %_351896.zext
    %_351900 = fadd fast float %_351874, %_351886
    %_351902 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351900)
    store float %_351902, float addrspace(0)* %_351896
    %_351906 = load float, float addrspace(0)* %fv_0_351834
    %_351912.zext = zext i14 %_351910 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351912 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351877, i64 0, i15 %_351912.zext
    %_351914 = load float, float addrspace(0)* %_351912
    %_351917.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351917 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351894, i64 0, i3 %_351917.zext
    %_351921 = fadd fast float %_351906, %_351914
    %_351923 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351921)
    store float %_351923, float addrspace(0)* %_351917
    %_351927 = load float, float addrspace(0)* %fv_0_351838
    %_351933.zext = zext i14 %_351931 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351933 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351877, i64 0, i15 %_351933.zext
    %_351935 = load float, float addrspace(0)* %_351933
    %_351938.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351938 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351894, i64 0, i3 %_351938.zext
    %_351942 = fadd fast float %_351927, %_351935
    %_351944 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351942)
    store float %_351944, float addrspace(0)* %_351938
    %_351948 = load float, float addrspace(0)* %fv_0_351842
    %_351954.zext = zext i14 %_351952 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351954 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351877, i64 0, i15 %_351954.zext
    %_351956 = load float, float addrspace(0)* %_351954
    %_351959.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351959 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351894, i64 0, i3 %_351959.zext
    %_351963 = fadd fast float %_351948, %_351956
    %_351965 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351963)
    store float %_351965, float addrspace(0)* %_351959
    %_351969 = load float, float addrspace(0)* %fv_0_351846
    %_351972 = load float, float addrspace(0)* %_351884
    %_351977.zext = zext i12 %_351878 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351977 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351975, i64 0, i13 %_351977.zext
    %_351979.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351979 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351977, i64 0, i3 %_351979.zext
    %_351983 = fadd fast float %_351969, %_351972
    %_351985 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351983)
    store float %_351985, float addrspace(0)* %_351979
    %_351989 = load float, float addrspace(0)* %fv_0_351850
    %_351992 = load float, float addrspace(0)* %_351912
    %_351995.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351995 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351977, i64 0, i3 %_351995.zext
    %_351999 = fadd fast float %_351989, %_351992
    %_352001 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351999)
    store float %_352001, float addrspace(0)* %_351995
    %_352005 = load float, float addrspace(0)* %fv_0_351854
    %_352008 = load float, float addrspace(0)* %_351933
    %_352011.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352011 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351977, i64 0, i3 %_352011.zext
    %_352015 = fadd fast float %_352005, %_352008
    %_352017 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352015)
    store float %_352017, float addrspace(0)* %_352011
    %_352021 = load float, float addrspace(0)* %fv_0_351858
    %_352024 = load float, float addrspace(0)* %_351954
    %_352027.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352027 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351977, i64 0, i3 %_352027.zext
    %_352031 = fadd fast float %_352021, %_352024
    %_352033 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352031)
    store float %_352033, float addrspace(0)* %_352027
    br label %head_351814

new_exit_351820:
    %fv_10_351822 = add nuw nsw i32 1, %iv_350000
    br label %head_349996

new_exit_350008:
    %_350011i8 = call i8* @malloc(i64 8388608)
    %_350011 = bitcast i8* %_350011i8 to [64 x [2 x [4096 x [4 x float]]]] addrspace(0)*
    %_350014i8 = call i8* @malloc(i64 32)
    %_350014 = bitcast i8* %_350014i8 to [8 x float] addrspace(0)*
    %fv_0_351124.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351124 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351124.zext
    %fv_0_351128.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351128 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351128.zext
    %fv_0_351132.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351132 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351132.zext
    %fv_0_351136.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351136 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351136.zext
    %fv_0_351140.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351140 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351140.zext
    %fv_0_351144.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351144 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351144.zext
    %fv_0_351148.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351148 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351148.zext
    %fv_0_351152.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351152 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350014, i64 0, i4 %fv_0_351152.zext
    br label %head_350017

head_350017:
    %iv_350020 = phi i32 [ 0, %new_exit_350008 ], [ %fv_10_351116, %new_exit_351114 ]
    %_350022 = icmp ult i32 %iv_350020, 64
    %_351193 = trunc i32 %iv_350020 to i6
    %_351355 = zext i6 %_351193 to i64
    %_351357 = mul i64 32768, %_351355
    %t_351591 = mul i64 2, %_351355
    %t_351593 = add i64 1, %t_351591
    %_351595 = mul i64 16384, %t_351593
    %_351195.zext = zext i6 %_351193 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351195 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_351195.zext
    %_351197.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351197 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351195, i64 0, i2 %_351197.zext
    %_351282.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351282 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351195, i64 0, i2 %_351282.zext
    br i1 %_350022, label %new_body_351104, label %new_exit_350023

new_body_351104:
    br label %head_351107

head_351107:
    %iv_351110 = phi i32 [ 0, %new_body_351104 ], [ %fv_10_351165, %new_exit_351163 ]
    %_351113 = icmp ult i32 %iv_351110, 4096
    %_351174 = trunc i32 %iv_351110 to i12
    %t_351182 = zext i12 %_351174 to i64
    %t_351184 = mul i64 4, %t_351182
    %_351187 = trunc i64 %t_351184 to i14
    %_351410.zext = zext i14 %_351187 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351410 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351399, i64 0, i15 %_351410.zext
    %t_351216 = add i64 1, %t_351184
    %_351217 = trunc i64 %t_351216 to i14
    %_351464.zext = zext i14 %_351217 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351464 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351399, i64 0, i15 %_351464.zext
    %t_351237 = add i64 2, %t_351184
    %_351238 = trunc i64 %t_351237 to i14
    %_351518.zext = zext i14 %_351238 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351518 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351399, i64 0, i15 %_351518.zext
    %t_351258 = add i64 3, %t_351184
    %_351259 = trunc i64 %t_351258 to i14
    %_351572.zext = zext i14 %_351259 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351572 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351399, i64 0, i15 %_351572.zext
    br i1 %_351113, label %new_body_351120, label %new_exit_351114

new_body_351120:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351124
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351128
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351132
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351136
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351140
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351144
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351148
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351152
    br label %head_351156, !llvm.loop !1002

head_351156:
    %iv_351159 = phi i32 [ 0, %new_body_351120 ], [ %fv_9_351347, %new_body_351345 ]
    %_351161 = icmp ult i32 %iv_351159, 16384
    br i1 %_351161, label %new_body_351345, label %new_exit_351163

new_body_351345:
    %fv_9_351347 = add nuw nsw i32 1, %iv_351159
    %_351350 = load float, float addrspace(0)* %fv_0_351124
    %_351353 = trunc i32 %iv_351159 to i14
    %_351354 = zext i14 %_351353 to i64
    %_351359 = add i64 %_351354, %_351357
    %_351362 = udiv i64 %_351359, 32768
    %_351367 = urem i64 %_351362, 64
    %_351369 = trunc i64 %_351367 to i6
    %_351371.zext = zext i6 %_351369 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351371 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351371.zext
    %_351373.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351373 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351371, i64 0, i2 %_351373.zext
    %_351377 = udiv i64 %_351359, 4
    %_351382 = urem i64 %_351377, 4096
    %_351384 = trunc i64 %_351382 to i12
    %_351386.zext = zext i12 %_351384 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351386 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351373, i64 0, i13 %_351386.zext
    %_351389 = urem i64 %_351359, 4
    %_351391 = trunc i64 %_351389 to i2
    %_351393.zext = zext i2 %_351391 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351393 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351386, i64 0, i3 %_351393.zext
    %_351395 = load float, float addrspace(0)* %_351393
    %_351412.zext = zext i14 %_351353 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351412 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351410, i64 0, i15 %_351412.zext
    %_351414 = load float, float addrspace(0)* %_351412
    %_351419 = fmul fast float %_351414, %_351395
    %accn_351422 = fadd fast float %_351419, %_351350
    store float %accn_351422, float addrspace(0)* %fv_0_351124
    %_351426 = load float, float addrspace(0)* %fv_0_351128
    %_351429 = udiv i64 %_351359, 32768
    %_351434 = urem i64 %_351429, 64
    %_351436 = trunc i64 %_351434 to i6
    %_351438.zext = zext i6 %_351436 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351438 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351438.zext
    %_351440.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351440 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351438, i64 0, i2 %_351440.zext
    %_351443 = udiv i64 %_351359, 4
    %_351448 = urem i64 %_351443, 4096
    %_351450 = trunc i64 %_351448 to i12
    %_351452.zext = zext i12 %_351450 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351452 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351440, i64 0, i13 %_351452.zext
    %_351455 = urem i64 %_351359, 4
    %_351457 = trunc i64 %_351455 to i2
    %_351459.zext = zext i2 %_351457 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351459 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351452, i64 0, i3 %_351459.zext
    %_351461 = load float, float addrspace(0)* %_351459
    %_351466.zext = zext i14 %_351353 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351466 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351464, i64 0, i15 %_351466.zext
    %_351468 = load float, float addrspace(0)* %_351466
    %_351473 = fmul fast float %_351468, %_351461
    %accn_351476 = fadd fast float %_351473, %_351426
    store float %accn_351476, float addrspace(0)* %fv_0_351128
    %_351480 = load float, float addrspace(0)* %fv_0_351132
    %_351483 = udiv i64 %_351359, 32768
    %_351488 = urem i64 %_351483, 64
    %_351490 = trunc i64 %_351488 to i6
    %_351492.zext = zext i6 %_351490 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351492 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351492.zext
    %_351494.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351494 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351492, i64 0, i2 %_351494.zext
    %_351497 = udiv i64 %_351359, 4
    %_351502 = urem i64 %_351497, 4096
    %_351504 = trunc i64 %_351502 to i12
    %_351506.zext = zext i12 %_351504 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351506 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351494, i64 0, i13 %_351506.zext
    %_351509 = urem i64 %_351359, 4
    %_351511 = trunc i64 %_351509 to i2
    %_351513.zext = zext i2 %_351511 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351513 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351506, i64 0, i3 %_351513.zext
    %_351515 = load float, float addrspace(0)* %_351513
    %_351520.zext = zext i14 %_351353 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351520 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351518, i64 0, i15 %_351520.zext
    %_351522 = load float, float addrspace(0)* %_351520
    %_351527 = fmul fast float %_351522, %_351515
    %accn_351530 = fadd fast float %_351527, %_351480
    store float %accn_351530, float addrspace(0)* %fv_0_351132
    %_351534 = load float, float addrspace(0)* %fv_0_351136
    %_351537 = udiv i64 %_351359, 32768
    %_351542 = urem i64 %_351537, 64
    %_351544 = trunc i64 %_351542 to i6
    %_351546.zext = zext i6 %_351544 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351546 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351546.zext
    %_351548.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351548 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351546, i64 0, i2 %_351548.zext
    %_351551 = udiv i64 %_351359, 4
    %_351556 = urem i64 %_351551, 4096
    %_351558 = trunc i64 %_351556 to i12
    %_351560.zext = zext i12 %_351558 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351560 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351548, i64 0, i13 %_351560.zext
    %_351563 = urem i64 %_351359, 4
    %_351565 = trunc i64 %_351563 to i2
    %_351567.zext = zext i2 %_351565 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351567 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351560, i64 0, i3 %_351567.zext
    %_351569 = load float, float addrspace(0)* %_351567
    %_351574.zext = zext i14 %_351353 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351574 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351572, i64 0, i15 %_351574.zext
    %_351576 = load float, float addrspace(0)* %_351574
    %_351581 = fmul fast float %_351576, %_351569
    %accn_351584 = fadd fast float %_351581, %_351534
    store float %accn_351584, float addrspace(0)* %fv_0_351136
    %_351588 = load float, float addrspace(0)* %fv_0_351140
    %_351597 = add i64 %_351354, %_351595
    %_351600 = udiv i64 %_351597, 32768
    %_351605 = urem i64 %_351600, 64
    %_351607 = trunc i64 %_351605 to i6
    %_351609.zext = zext i6 %_351607 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351609 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351609.zext
    %_351611.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351611 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351609, i64 0, i2 %_351611.zext
    %_351615 = udiv i64 %_351597, 4
    %_351620 = urem i64 %_351615, 4096
    %_351622 = trunc i64 %_351620 to i12
    %_351624.zext = zext i12 %_351622 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351624 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351611, i64 0, i13 %_351624.zext
    %_351627 = urem i64 %_351597, 4
    %_351629 = trunc i64 %_351627 to i2
    %_351631.zext = zext i2 %_351629 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351631 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351624, i64 0, i3 %_351631.zext
    %_351633 = load float, float addrspace(0)* %_351631
    %_351636 = load float, float addrspace(0)* %_351412
    %_351641 = fmul fast float %_351636, %_351633
    %accn_351644 = fadd fast float %_351641, %_351588
    store float %accn_351644, float addrspace(0)* %fv_0_351140
    %_351648 = load float, float addrspace(0)* %fv_0_351144
    %_351651 = udiv i64 %_351597, 32768
    %_351656 = urem i64 %_351651, 64
    %_351658 = trunc i64 %_351656 to i6
    %_351660.zext = zext i6 %_351658 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351660 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351660.zext
    %_351662.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351662 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351660, i64 0, i2 %_351662.zext
    %_351665 = udiv i64 %_351597, 4
    %_351670 = urem i64 %_351665, 4096
    %_351672 = trunc i64 %_351670 to i12
    %_351674.zext = zext i12 %_351672 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351674 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351662, i64 0, i13 %_351674.zext
    %_351677 = urem i64 %_351597, 4
    %_351679 = trunc i64 %_351677 to i2
    %_351681.zext = zext i2 %_351679 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351681 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351674, i64 0, i3 %_351681.zext
    %_351683 = load float, float addrspace(0)* %_351681
    %_351686 = load float, float addrspace(0)* %_351466
    %_351691 = fmul fast float %_351686, %_351683
    %accn_351694 = fadd fast float %_351691, %_351648
    store float %accn_351694, float addrspace(0)* %fv_0_351144
    %_351698 = load float, float addrspace(0)* %fv_0_351148
    %_351701 = udiv i64 %_351597, 32768
    %_351706 = urem i64 %_351701, 64
    %_351708 = trunc i64 %_351706 to i6
    %_351710.zext = zext i6 %_351708 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351710 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351710.zext
    %_351712.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351712 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351710, i64 0, i2 %_351712.zext
    %_351715 = udiv i64 %_351597, 4
    %_351720 = urem i64 %_351715, 4096
    %_351722 = trunc i64 %_351720 to i12
    %_351724.zext = zext i12 %_351722 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351724 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351712, i64 0, i13 %_351724.zext
    %_351727 = urem i64 %_351597, 4
    %_351729 = trunc i64 %_351727 to i2
    %_351731.zext = zext i2 %_351729 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351731 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351724, i64 0, i3 %_351731.zext
    %_351733 = load float, float addrspace(0)* %_351731
    %_351736 = load float, float addrspace(0)* %_351520
    %_351741 = fmul fast float %_351736, %_351733
    %accn_351744 = fadd fast float %_351741, %_351698
    store float %accn_351744, float addrspace(0)* %fv_0_351148
    %_351748 = load float, float addrspace(0)* %fv_0_351152
    %_351751 = udiv i64 %_351597, 32768
    %_351756 = urem i64 %_351751, 64
    %_351758 = trunc i64 %_351756 to i6
    %_351760.zext = zext i6 %_351758 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351760 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349982, i64 0, i7 %_351760.zext
    %_351762.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351762 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351760, i64 0, i2 %_351762.zext
    %_351765 = udiv i64 %_351597, 4
    %_351770 = urem i64 %_351765, 4096
    %_351772 = trunc i64 %_351770 to i12
    %_351774.zext = zext i12 %_351772 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351774 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351762, i64 0, i13 %_351774.zext
    %_351777 = urem i64 %_351597, 4
    %_351779 = trunc i64 %_351777 to i2
    %_351781.zext = zext i2 %_351779 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351781 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351774, i64 0, i3 %_351781.zext
    %_351783 = load float, float addrspace(0)* %_351781
    %_351786 = load float, float addrspace(0)* %_351574
    %_351791 = fmul fast float %_351786, %_351783
    %accn_351794 = fadd fast float %_351791, %_351748
    store float %accn_351794, float addrspace(0)* %fv_0_351152
    br label %head_351156, !llvm.loop !1002

new_exit_351163:
    %fv_10_351165 = add nuw nsw i32 1, %iv_351110
    %_351168 = load float, float addrspace(0)* %fv_0_351124
    %_351189.zext = zext i14 %_351187 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351189 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351171, i64 0, i15 %_351189.zext
    %_351191 = load float, float addrspace(0)* %_351189
    %_351199.zext = zext i12 %_351174 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351199 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351197, i64 0, i13 %_351199.zext
    %_351201.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351201 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351199, i64 0, i3 %_351201.zext
    %_351205 = fadd fast float %_351168, %_351191
    %_351209 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351205)
    store float %_351209, float addrspace(0)* %_351201
    %_351213 = load float, float addrspace(0)* %fv_0_351128
    %_351219.zext = zext i14 %_351217 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351219 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351171, i64 0, i15 %_351219.zext
    %_351221 = load float, float addrspace(0)* %_351219
    %_351224.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351224 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351199, i64 0, i3 %_351224.zext
    %_351228 = fadd fast float %_351213, %_351221
    %_351230 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351228)
    store float %_351230, float addrspace(0)* %_351224
    %_351234 = load float, float addrspace(0)* %fv_0_351132
    %_351240.zext = zext i14 %_351238 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351240 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351171, i64 0, i15 %_351240.zext
    %_351242 = load float, float addrspace(0)* %_351240
    %_351245.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351245 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351199, i64 0, i3 %_351245.zext
    %_351249 = fadd fast float %_351234, %_351242
    %_351251 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351249)
    store float %_351251, float addrspace(0)* %_351245
    %_351255 = load float, float addrspace(0)* %fv_0_351136
    %_351261.zext = zext i14 %_351259 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351261 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351171, i64 0, i15 %_351261.zext
    %_351263 = load float, float addrspace(0)* %_351261
    %_351266.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351266 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351199, i64 0, i3 %_351266.zext
    %_351270 = fadd fast float %_351255, %_351263
    %_351272 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351270)
    store float %_351272, float addrspace(0)* %_351266
    %_351276 = load float, float addrspace(0)* %fv_0_351140
    %_351279 = load float, float addrspace(0)* %_351189
    %_351284.zext = zext i12 %_351174 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351284 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351282, i64 0, i13 %_351284.zext
    %_351286.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351286 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351284, i64 0, i3 %_351286.zext
    %_351290 = fadd fast float %_351276, %_351279
    %_351292 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351290)
    store float %_351292, float addrspace(0)* %_351286
    %_351296 = load float, float addrspace(0)* %fv_0_351144
    %_351299 = load float, float addrspace(0)* %_351219
    %_351302.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351302 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351284, i64 0, i3 %_351302.zext
    %_351306 = fadd fast float %_351296, %_351299
    %_351308 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351306)
    store float %_351308, float addrspace(0)* %_351302
    %_351312 = load float, float addrspace(0)* %fv_0_351148
    %_351315 = load float, float addrspace(0)* %_351240
    %_351318.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351318 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351284, i64 0, i3 %_351318.zext
    %_351322 = fadd fast float %_351312, %_351315
    %_351324 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351322)
    store float %_351324, float addrspace(0)* %_351318
    %_351328 = load float, float addrspace(0)* %fv_0_351152
    %_351331 = load float, float addrspace(0)* %_351261
    %_351334.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351334 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351284, i64 0, i3 %_351334.zext
    %_351338 = fadd fast float %_351328, %_351331
    %_351340 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351338)
    store float %_351340, float addrspace(0)* %_351334
    br label %head_351107

new_exit_351114:
    %fv_10_351116 = add nuw nsw i32 1, %iv_350020
    br label %head_350017

new_exit_350023:
    %_350036i8 = call i8* @malloc(i64 4194304)
    %_350036 = bitcast i8* %_350036i8 to [64 x [2 x [2048 x [4 x float]]]] addrspace(0)*
    %_350039i8 = call i8* @malloc(i64 32)
    %_350039 = bitcast i8* %_350039i8 to [8 x float] addrspace(0)*
    %fv_0_350350.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350350 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350350.zext
    %fv_0_350355.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350355 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350355.zext
    %fv_0_350359.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350359 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350359.zext
    %fv_0_350363.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350363 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350363.zext
    %fv_0_350367.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350367 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350367.zext
    %fv_0_350371.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350371 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350371.zext
    %fv_0_350375.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350375 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350375.zext
    %fv_0_350379.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350379 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350039, i64 0, i4 %fv_0_350379.zext
    br label %head_350042

head_350042:
    %iv_350045 = phi i32 [ 0, %new_exit_350023 ], [ %fv_10_350323, %new_exit_350321 ]
    %_350047 = icmp ult i32 %iv_350045, 64
    %_350424 = trunc i32 %iv_350045 to i6
    %_350604 = zext i6 %_350424 to i64
    %_350606 = mul i64 32768, %_350604
    %t_350884 = mul i64 2, %_350604
    %t_350886 = add i64 1, %t_350884
    %_350888 = mul i64 16384, %t_350886
    %_350426.zext = zext i6 %_350424 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350426 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350036, i64 0, i7 %_350426.zext
    %_350428.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350428 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350426, i64 0, i2 %_350428.zext
    %_350513.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350513 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350426, i64 0, i2 %_350513.zext
    br i1 %_350047, label %new_body_350311, label %new_exit_350048

new_body_350311:
    br label %head_350314

head_350314:
    %iv_350317 = phi i32 [ 0, %new_body_350311 ], [ %fv_10_350394, %new_exit_350392 ]
    %_350320 = icmp ult i32 %iv_350317, 2048
    %_350403 = trunc i32 %iv_350317 to i11
    %t_350411 = zext i11 %_350403 to i64
    %t_350413 = mul i64 4, %t_350411
    %_350416 = trunc i64 %t_350413 to i13
    %_350690.zext = zext i13 %_350416 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350690 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350679, i64 0, i14 %_350690.zext
    %t_350452 = add i64 1, %t_350413
    %_350453 = trunc i64 %t_350452 to i13
    %_350757.zext = zext i13 %_350453 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350757 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350679, i64 0, i14 %_350757.zext
    %t_350471 = add i64 2, %t_350413
    %_350472 = trunc i64 %t_350471 to i13
    %_350811.zext = zext i13 %_350472 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350811 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350679, i64 0, i14 %_350811.zext
    %t_350491 = add i64 3, %t_350413
    %_350492 = trunc i64 %t_350491 to i13
    %_350865.zext = zext i13 %_350492 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350865 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350679, i64 0, i14 %_350865.zext
    br i1 %_350320, label %new_body_350327, label %new_exit_350321

new_body_350327:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350350
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350355
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350359
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350363
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350367
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350371
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350375
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350379
    br label %head_350383, !llvm.loop !1003

head_350383:
    %iv_350386 = phi i32 [ 0, %new_body_350327 ], [ %fv_9_350570, %new_body_350568 ]
    %_350389 = icmp ult i32 %iv_350386, 16384
    br i1 %_350389, label %new_body_350568, label %new_exit_350392

new_body_350568:
    %fv_9_350570 = add nuw nsw i32 1, %iv_350386
    %_350573 = load float, float addrspace(0)* %fv_0_350350
    %_350587 = trunc i32 %iv_350386 to i14
    %_350595 = zext i14 %_350587 to i64
    %_350608 = add i64 %_350595, %_350606
    %_350611 = udiv i64 %_350608, 32768
    %_350616 = urem i64 %_350611, 64
    %_350618 = trunc i64 %_350616 to i6
    %_350629.zext = zext i6 %_350618 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350629 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_350629.zext
    %_350638.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350638 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350629, i64 0, i2 %_350638.zext
    %_350642 = udiv i64 %_350608, 4
    %_350648 = urem i64 %_350642, 4096
    %_350652 = trunc i64 %_350648 to i12
    %_350665.zext = zext i12 %_350652 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350665 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350638, i64 0, i13 %_350665.zext
    %_350668 = urem i64 %_350608, 4
    %_350670 = trunc i64 %_350668 to i2
    %_350672.zext = zext i2 %_350670 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350672 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350665, i64 0, i3 %_350672.zext
    %_350674 = load float, float addrspace(0)* %_350672
    %_350703.zext = zext i14 %_350587 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350703 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_350690, i64 0, i15 %_350703.zext
    %_350705 = load float, float addrspace(0)* %_350703
    %_350712 = fmul fast float %_350705, %_350674
    %accn_350715 = fadd fast float %_350712, %_350573
    store float %accn_350715, float addrspace(0)* %fv_0_350350
    %_350719 = load float, float addrspace(0)* %fv_0_350355
    %_350722 = udiv i64 %_350608, 32768
    %_350727 = urem i64 %_350722, 64
    %_350729 = trunc i64 %_350727 to i6
    %_350731.zext = zext i6 %_350729 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350731 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_350731.zext
    %_350733.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350733 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350731, i64 0, i2 %_350733.zext
    %_350736 = udiv i64 %_350608, 4
    %_350741 = urem i64 %_350736, 4096
    %_350743 = trunc i64 %_350741 to i12
    %_350745.zext = zext i12 %_350743 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350745 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350733, i64 0, i13 %_350745.zext
    %_350748 = urem i64 %_350608, 4
    %_350750 = trunc i64 %_350748 to i2
    %_350752.zext = zext i2 %_350750 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350752 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350745, i64 0, i3 %_350752.zext
    %_350754 = load float, float addrspace(0)* %_350752
    %_350759.zext = zext i14 %_350587 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350759 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_350757, i64 0, i15 %_350759.zext
    %_350761 = load float, float addrspace(0)* %_350759
    %_350766 = fmul fast float %_350761, %_350754
    %accn_350769 = fadd fast float %_350766, %_350719
    store float %accn_350769, float addrspace(0)* %fv_0_350355
    %_350773 = load float, float addrspace(0)* %fv_0_350359
    %_350776 = udiv i64 %_350608, 32768
    %_350781 = urem i64 %_350776, 64
    %_350783 = trunc i64 %_350781 to i6
    %_350785.zext = zext i6 %_350783 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350785 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_350785.zext
    %_350787.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350787 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350785, i64 0, i2 %_350787.zext
    %_350790 = udiv i64 %_350608, 4
    %_350795 = urem i64 %_350790, 4096
    %_350797 = trunc i64 %_350795 to i12
    %_350799.zext = zext i12 %_350797 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350799 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350787, i64 0, i13 %_350799.zext
    %_350802 = urem i64 %_350608, 4
    %_350804 = trunc i64 %_350802 to i2
    %_350806.zext = zext i2 %_350804 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350806 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350799, i64 0, i3 %_350806.zext
    %_350808 = load float, float addrspace(0)* %_350806
    %_350813.zext = zext i14 %_350587 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350813 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_350811, i64 0, i15 %_350813.zext
    %_350815 = load float, float addrspace(0)* %_350813
    %_350820 = fmul fast float %_350815, %_350808
    %accn_350823 = fadd fast float %_350820, %_350773
    store float %accn_350823, float addrspace(0)* %fv_0_350359
    %_350827 = load float, float addrspace(0)* %fv_0_350363
    %_350830 = udiv i64 %_350608, 32768
    %_350835 = urem i64 %_350830, 64
    %_350837 = trunc i64 %_350835 to i6
    %_350839.zext = zext i6 %_350837 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350839 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_350839.zext
    %_350841.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350841 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350839, i64 0, i2 %_350841.zext
    %_350844 = udiv i64 %_350608, 4
    %_350849 = urem i64 %_350844, 4096
    %_350851 = trunc i64 %_350849 to i12
    %_350853.zext = zext i12 %_350851 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350853 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350841, i64 0, i13 %_350853.zext
    %_350856 = urem i64 %_350608, 4
    %_350858 = trunc i64 %_350856 to i2
    %_350860.zext = zext i2 %_350858 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350860 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350853, i64 0, i3 %_350860.zext
    %_350862 = load float, float addrspace(0)* %_350860
    %_350867.zext = zext i14 %_350587 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350867 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_350865, i64 0, i15 %_350867.zext
    %_350869 = load float, float addrspace(0)* %_350867
    %_350874 = fmul fast float %_350869, %_350862
    %accn_350877 = fadd fast float %_350874, %_350827
    store float %accn_350877, float addrspace(0)* %fv_0_350363
    %_350881 = load float, float addrspace(0)* %fv_0_350367
    %_350890 = add i64 %_350595, %_350888
    %_350893 = udiv i64 %_350890, 32768
    %_350898 = urem i64 %_350893, 64
    %_350900 = trunc i64 %_350898 to i6
    %_350902.zext = zext i6 %_350900 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350902 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_350902.zext
    %_350904.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350904 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350902, i64 0, i2 %_350904.zext
    %_350908 = udiv i64 %_350890, 4
    %_350913 = urem i64 %_350908, 4096
    %_350915 = trunc i64 %_350913 to i12
    %_350917.zext = zext i12 %_350915 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350917 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350904, i64 0, i13 %_350917.zext
    %_350920 = urem i64 %_350890, 4
    %_350922 = trunc i64 %_350920 to i2
    %_350924.zext = zext i2 %_350922 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350924 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350917, i64 0, i3 %_350924.zext
    %_350926 = load float, float addrspace(0)* %_350924
    %_350929 = load float, float addrspace(0)* %_350703
    %_350934 = fmul fast float %_350929, %_350926
    %accn_350937 = fadd fast float %_350934, %_350881
    store float %accn_350937, float addrspace(0)* %fv_0_350367
    %_350941 = load float, float addrspace(0)* %fv_0_350371
    %_350944 = udiv i64 %_350890, 32768
    %_350949 = urem i64 %_350944, 64
    %_350951 = trunc i64 %_350949 to i6
    %_350953.zext = zext i6 %_350951 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350953 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_350953.zext
    %_350955.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350955 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350953, i64 0, i2 %_350955.zext
    %_350958 = udiv i64 %_350890, 4
    %_350963 = urem i64 %_350958, 4096
    %_350965 = trunc i64 %_350963 to i12
    %_350967.zext = zext i12 %_350965 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350967 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350955, i64 0, i13 %_350967.zext
    %_350970 = urem i64 %_350890, 4
    %_350972 = trunc i64 %_350970 to i2
    %_350974.zext = zext i2 %_350972 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350974 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350967, i64 0, i3 %_350974.zext
    %_350976 = load float, float addrspace(0)* %_350974
    %_350979 = load float, float addrspace(0)* %_350759
    %_350984 = fmul fast float %_350979, %_350976
    %accn_350987 = fadd fast float %_350984, %_350941
    store float %accn_350987, float addrspace(0)* %fv_0_350371
    %_350991 = load float, float addrspace(0)* %fv_0_350375
    %_350994 = udiv i64 %_350890, 32768
    %_350999 = urem i64 %_350994, 64
    %_351001 = trunc i64 %_350999 to i6
    %_351003.zext = zext i6 %_351001 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351003 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_351003.zext
    %_351005.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351005 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351003, i64 0, i2 %_351005.zext
    %_351008 = udiv i64 %_350890, 4
    %_351013 = urem i64 %_351008, 4096
    %_351015 = trunc i64 %_351013 to i12
    %_351017.zext = zext i12 %_351015 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351017 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351005, i64 0, i13 %_351017.zext
    %_351020 = urem i64 %_350890, 4
    %_351022 = trunc i64 %_351020 to i2
    %_351024.zext = zext i2 %_351022 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351024 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351017, i64 0, i3 %_351024.zext
    %_351026 = load float, float addrspace(0)* %_351024
    %_351029 = load float, float addrspace(0)* %_350813
    %_351034 = fmul fast float %_351029, %_351026
    %accn_351037 = fadd fast float %_351034, %_350991
    store float %accn_351037, float addrspace(0)* %fv_0_350375
    %_351041 = load float, float addrspace(0)* %fv_0_350379
    %_351044 = udiv i64 %_350890, 32768
    %_351049 = urem i64 %_351044, 64
    %_351051 = trunc i64 %_351049 to i6
    %_351053.zext = zext i6 %_351051 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351053 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350011, i64 0, i7 %_351053.zext
    %_351055.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351055 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351053, i64 0, i2 %_351055.zext
    %_351058 = udiv i64 %_350890, 4
    %_351063 = urem i64 %_351058, 4096
    %_351065 = trunc i64 %_351063 to i12
    %_351067.zext = zext i12 %_351065 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351067 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351055, i64 0, i13 %_351067.zext
    %_351070 = urem i64 %_350890, 4
    %_351072 = trunc i64 %_351070 to i2
    %_351074.zext = zext i2 %_351072 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351074 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351067, i64 0, i3 %_351074.zext
    %_351076 = load float, float addrspace(0)* %_351074
    %_351079 = load float, float addrspace(0)* %_350867
    %_351084 = fmul fast float %_351079, %_351076
    %accn_351087 = fadd fast float %_351084, %_351041
    store float %accn_351087, float addrspace(0)* %fv_0_350379
    br label %head_350383, !llvm.loop !1003

new_exit_350392:
    %fv_10_350394 = add nuw nsw i32 1, %iv_350317
    %_350397 = load float, float addrspace(0)* %fv_0_350350
    %_350418.zext = zext i13 %_350416 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350418 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350400, i64 0, i14 %_350418.zext
    %_350420 = load float, float addrspace(0)* %_350418
    %_350430.zext = zext i11 %_350403 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350430 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350428, i64 0, i12 %_350430.zext
    %_350432.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350432 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350430, i64 0, i3 %_350432.zext
    %_350444 = fadd fast float %_350397, %_350420
    store float %_350444, float addrspace(0)* %_350432
    %_350448 = load float, float addrspace(0)* %fv_0_350355
    %_350455.zext = zext i13 %_350453 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350455 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350400, i64 0, i14 %_350455.zext
    %_350457 = load float, float addrspace(0)* %_350455
    %_350460.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350460 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350430, i64 0, i3 %_350460.zext
    %_350464 = fadd fast float %_350448, %_350457
    store float %_350464, float addrspace(0)* %_350460
    %_350468 = load float, float addrspace(0)* %fv_0_350359
    %_350474.zext = zext i13 %_350472 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350474 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350400, i64 0, i14 %_350474.zext
    %_350476 = load float, float addrspace(0)* %_350474
    %_350479.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350479 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350430, i64 0, i3 %_350479.zext
    %_350483 = fadd fast float %_350468, %_350476
    store float %_350483, float addrspace(0)* %_350479
    %_350487 = load float, float addrspace(0)* %fv_0_350363
    %_350494.zext = zext i13 %_350492 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350494 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350400, i64 0, i14 %_350494.zext
    %_350496 = load float, float addrspace(0)* %_350494
    %_350499.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350499 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350430, i64 0, i3 %_350499.zext
    %_350503 = fadd fast float %_350487, %_350496
    store float %_350503, float addrspace(0)* %_350499
    %_350507 = load float, float addrspace(0)* %fv_0_350367
    %_350510 = load float, float addrspace(0)* %_350418
    %_350515.zext = zext i11 %_350403 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350515 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350513, i64 0, i12 %_350515.zext
    %_350517.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350517 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350515, i64 0, i3 %_350517.zext
    %_350521 = fadd fast float %_350507, %_350510
    store float %_350521, float addrspace(0)* %_350517
    %_350525 = load float, float addrspace(0)* %fv_0_350371
    %_350528 = load float, float addrspace(0)* %_350455
    %_350531.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350531 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350515, i64 0, i3 %_350531.zext
    %_350535 = fadd fast float %_350525, %_350528
    store float %_350535, float addrspace(0)* %_350531
    %_350539 = load float, float addrspace(0)* %fv_0_350375
    %_350542 = load float, float addrspace(0)* %_350474
    %_350545.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350545 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350515, i64 0, i3 %_350545.zext
    %_350549 = fadd fast float %_350539, %_350542
    store float %_350549, float addrspace(0)* %_350545
    %_350553 = load float, float addrspace(0)* %fv_0_350379
    %_350556 = load float, float addrspace(0)* %_350494
    %_350559.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350559 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350515, i64 0, i3 %_350559.zext
    %_350563 = fadd fast float %_350553, %_350556
    store float %_350563, float addrspace(0)* %_350559
    br label %head_350314

new_exit_350321:
    %fv_10_350323 = add nuw nsw i32 1, %iv_350045
    br label %head_350042

new_exit_350048:
    %_350053i8 = call i8* @malloc(i64 4194304)
    %_350053 = bitcast i8* %_350053i8 to [128 x [8192 x float]] addrspace(0)*
    br label %head_350056

head_350056:
    %iv_350059 = phi i32 [ 0, %new_exit_350048 ], [ %fv_4_350087, %new_exit_350080 ]
    %_350062 = icmp ult i32 %iv_350059, 128
    %_350137 = trunc i32 %iv_350059 to i7
    %_350145 = zext i7 %_350137 to i64
    %_350151 = mul i64 8192, %_350145
    %_350282.zext = zext i7 %_350137 to i8 ; add one more bit for gep index as it is treated as signed value
    %_350282 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]] addrspace(0)* %_350053, i64 0, i8 %_350282.zext
    br i1 %_350062, label %new_body_350070, label %new_exit_350063

new_body_350070:
    br label %head_350073

head_350073:
    %iv_350076 = phi i32 [ 0, %new_body_350070 ], [ %fv_4_350093, %new_body_350091 ]
    %_350079 = icmp ult i32 %iv_350076, 8192
    br i1 %_350079, label %new_body_350091, label %new_exit_350080

new_body_350091:
    %fv_4_350093 = add nuw nsw i32 1, %iv_350076
    %_350124 = trunc i32 %iv_350076 to i13
    %_350132 = zext i13 %_350124 to i64
    %_350155 = add i64 %_350132, %_350151
    %_350163 = udiv i64 %_350155, 16384
    %_350170 = urem i64 %_350163, 64
    %_350179 = trunc i64 %_350170 to i6
    %_350192.zext = zext i6 %_350179 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350192 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350036, i64 0, i7 %_350192.zext
    %_350197 = urem i64 %_350145, 2
    %_350201 = trunc i64 %_350197 to i1
    %_350211.zext = zext i1 %_350201 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350211 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350192, i64 0, i2 %_350211.zext
    %_350216 = udiv i64 %_350155, 4
    %_350222 = urem i64 %_350216, 2048
    %_350226 = trunc i64 %_350222 to i11
    %_350239.zext = zext i11 %_350226 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350239 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350211, i64 0, i12 %_350239.zext
    %_350242 = urem i64 %_350155, 4
    %_350246 = trunc i64 %_350242 to i2
    %_350261.zext = zext i2 %_350246 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350261 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350239, i64 0, i3 %_350261.zext
    %_350266 = load float, float addrspace(0)* %_350261
    %_350295.zext = zext i13 %_350124 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350295 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_350282, i64 0, i14 %_350295.zext
    store float %_350266, float addrspace(0)* %_350295
    br label %head_350073

new_exit_350080:
    %fv_4_350087 = add nuw nsw i32 1, %iv_350059
    br label %head_350056

new_exit_350063:
    ret [128 x [8192 x float]] addrspace(0)* %_350053

}


!1000 = !{!"llvm.loop.vectorize.enable", i1 true}
!1002 = distinct !{!1002, !1000}
!1001 = distinct !{!1001, !1000}
!1003 = distinct !{!1003, !1000}
