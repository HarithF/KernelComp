
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [4096 x [20 x float]] addrspace(0)* @LeNet5([6 x [5 x [5 x float]]] addrspace(0)* %l_self_modules_conv1_parameters_weight__358834, [6 x float] addrspace(0)* %l_self_modules_conv1_parameters_bias__359127, [4096 x [32 x [32 x float]]] addrspace(0)* %l_x__358748, [16 x [6 x [5 x [5 x float]]]] addrspace(0)* %l_self_modules_conv2_parameters_weight__357401, [16 x float] addrspace(0)* %l_self_modules_conv2_parameters_bias__357150, [120 x [400 x float]] addrspace(0)* %l_self_modules_fc1_parameters_weight__356105, [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, [84 x [120 x float]] addrspace(0)* %l_self_modules_fc2_parameters_weight__354742, [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, [20 x [84 x float]] addrspace(0)* %l_self_modules_fc3_parameters_weight__353378, [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583) {
mimir_graph_0c0cb82e14960dde_352019:
    %_352040i8 = call i8* @malloc(i64 77070336)
    %_352040 = bitcast i8* %_352040i8 to [4096 x [6 x [28 x [28 x float]]]] addrspace(0)*
    br label %head_352044

head_352044:
    %iv_352048 = phi i32 [ 0, %mimir_graph_0c0cb82e14960dde_352019 ], [ %fv_12_358685, %new_exit_358683 ]
    %_352053 = icmp ult i32 %iv_352048, 4096
    %_358749 = trunc i32 %iv_352048 to i12
    %_358760.zext = zext i12 %_358749 to i13 ; add one more bit for gep index as it is treated as signed value
    %_358760 = getelementptr inbounds [4096 x [32 x [32 x float]]], [4096 x [32 x [32 x float]]] addrspace(0)* %l_x__358748, i64 0, i13 %_358760.zext
    %_359133 = zext i12 %_358749 to i64
    %_359135 = mul i64 4704, %_359133
    %_359191.zext = zext i12 %_358749 to i13 ; add one more bit for gep index as it is treated as signed value
    %_359191 = getelementptr inbounds [4096 x [6 x [28 x [28 x float]]]], [4096 x [6 x [28 x [28 x float]]]] addrspace(0)* %_352040, i64 0, i13 %_359191.zext
    br i1 %_352053, label %new_body_358674, label %new_exit_352056

new_body_358674:
    br label %head_358677

head_358677:
    %iv_358680 = phi i32 [ 0, %new_body_358674 ], [ %fv_12_358701, %new_exit_358699 ]
    %_358682 = icmp ult i32 %iv_358680, 6
    %_358835 = trunc i32 %iv_358680 to i3
    %_358837.zext = zext i3 %_358835 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358837 = getelementptr inbounds [6 x [5 x [5 x float]]], [6 x [5 x [5 x float]]] addrspace(0)* %l_self_modules_conv1_parameters_weight__358834, i64 0, i4 %_358837.zext
    %_358839.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358839 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_358837, i64 0, i4 %_358839.zext
    %_358841.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358841 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358839, i64 0, i4 %_358841.zext
    %_358854.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358854 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358839, i64 0, i4 %_358854.zext
    %_358867.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358867 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358839, i64 0, i4 %_358867.zext
    %_358880.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358880 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358839, i64 0, i4 %_358880.zext
    %_358893.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358893 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358839, i64 0, i4 %_358893.zext
    %_358908.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358908 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_358837, i64 0, i4 %_358908.zext
    %_358910.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358910 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358908, i64 0, i4 %_358910.zext
    %_358920.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358920 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358908, i64 0, i4 %_358920.zext
    %_358930.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358930 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358908, i64 0, i4 %_358930.zext
    %_358940.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358940 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358908, i64 0, i4 %_358940.zext
    %_358950.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358950 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358908, i64 0, i4 %_358950.zext
    %_358965.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358965 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_358837, i64 0, i4 %_358965.zext
    %_358967.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358967 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358965, i64 0, i4 %_358967.zext
    %_358977.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358977 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358965, i64 0, i4 %_358977.zext
    %_358987.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358987 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358965, i64 0, i4 %_358987.zext
    %_358997.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358997 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358965, i64 0, i4 %_358997.zext
    %_359007.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359007 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_358965, i64 0, i4 %_359007.zext
    %_359022.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359022 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_358837, i64 0, i4 %_359022.zext
    %_359024.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359024 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359022, i64 0, i4 %_359024.zext
    %_359034.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359034 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359022, i64 0, i4 %_359034.zext
    %_359044.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359044 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359022, i64 0, i4 %_359044.zext
    %_359054.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359054 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359022, i64 0, i4 %_359054.zext
    %_359064.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359064 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359022, i64 0, i4 %_359064.zext
    %_359079.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359079 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_358837, i64 0, i4 %_359079.zext
    %_359081.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359081 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359079, i64 0, i4 %_359081.zext
    %_359091.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359091 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359079, i64 0, i4 %_359091.zext
    %_359101.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359101 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359079, i64 0, i4 %_359101.zext
    %_359111.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359111 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359079, i64 0, i4 %_359111.zext
    %_359121.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359121 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_359079, i64 0, i4 %_359121.zext
    %_359130 = zext i3 %_358835 to i64
    %_359132 = mul i64 784, %_359130
    %_359137 = add i64 %_359132, %_359135
    %_359193.zext = zext i3 %_358835 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359193 = getelementptr inbounds [6 x [28 x [28 x float]]], [6 x [28 x [28 x float]]] addrspace(0)* %_359191, i64 0, i4 %_359193.zext
    br i1 %_358682, label %new_body_358689, label %new_exit_358683

new_body_358689:
    br label %head_358692

head_358692:
    %iv_358695 = phi i32 [ 0, %new_body_358689 ], [ %fv_12_358716, %new_exit_358714 ]
    %_358698 = icmp ult i32 %iv_358695, 28
    %_358763 = trunc i32 %iv_358695 to i5
    %t_358771 = zext i5 %_358763 to i64
    %_358774 = trunc i64 %t_358771 to i5
    %_358817.zext = zext i5 %_358774 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358817 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(0)* %_358760, i64 0, i6 %_358817.zext
    %_358898 = add i64 1, %t_358771
    %_358899 = trunc i64 %_358898 to i5
    %_358901.zext = zext i5 %_358899 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358901 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(0)* %_358760, i64 0, i6 %_358901.zext
    %_358955 = add i64 2, %t_358771
    %_358956 = trunc i64 %_358955 to i5
    %_358958.zext = zext i5 %_358956 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358958 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(0)* %_358760, i64 0, i6 %_358958.zext
    %_359012 = add i64 3, %t_358771
    %_359013 = trunc i64 %_359012 to i5
    %_359015.zext = zext i5 %_359013 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359015 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(0)* %_358760, i64 0, i6 %_359015.zext
    %_359069 = add i64 4, %t_358771
    %_359070 = trunc i64 %_359069 to i5
    %_359072.zext = zext i5 %_359070 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359072 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(0)* %_358760, i64 0, i6 %_359072.zext
    %_359129 = mul i64 28, %t_358771
    %_359139 = add i64 %_359129, %_359137
    %_359195.zext = zext i5 %_358763 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359195 = getelementptr inbounds [28 x [28 x float]], [28 x [28 x float]] addrspace(0)* %_359193, i64 0, i6 %_359195.zext
    br i1 %_358698, label %new_body_358705, label %new_exit_358699

new_body_358705:
    br label %head_358708

head_358708:
    %iv_358711 = phi i32 [ 0, %new_body_358705 ], [ %fv_12_358731, %new_exit_358729 ]
    %_358713 = icmp ult i32 %iv_358711, 1
    br i1 %_358713, label %new_body_358720, label %new_exit_358714

new_body_358720:
    br label %head_358723

head_358723:
    %iv_358726 = phi i32 [ 0, %new_body_358720 ], [ %fv_12_358737, %new_body_358735 ]
    %_358728 = icmp ult i32 %iv_358726, 28
    br i1 %_358728, label %new_body_358735, label %new_exit_358729

new_body_358735:
    %fv_12_358737 = add nuw nsw i32 1, %iv_358726
    %_358818 = trunc i32 %iv_358726 to i5
    %_358819 = zext i5 %_358818 to i64
    %_358820 = trunc i64 %_358819 to i5
    %_358829.zext = zext i5 %_358820 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358829 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358817, i64 0, i6 %_358829.zext
    %_358831 = load float, float addrspace(0)* %_358829
    %_358843 = load float, float addrspace(0)* %_358841
    %_358846 = add i64 1, %_358819
    %_358847 = trunc i64 %_358846 to i5
    %_358849.zext = zext i5 %_358847 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358849 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358817, i64 0, i6 %_358849.zext
    %_358851 = load float, float addrspace(0)* %_358849
    %_358856 = load float, float addrspace(0)* %_358854
    %_358859 = add i64 2, %_358819
    %_358860 = trunc i64 %_358859 to i5
    %_358862.zext = zext i5 %_358860 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358862 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358817, i64 0, i6 %_358862.zext
    %_358864 = load float, float addrspace(0)* %_358862
    %_358869 = load float, float addrspace(0)* %_358867
    %_358872 = add i64 3, %_358819
    %_358873 = trunc i64 %_358872 to i5
    %_358875.zext = zext i5 %_358873 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358875 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358817, i64 0, i6 %_358875.zext
    %_358877 = load float, float addrspace(0)* %_358875
    %_358882 = load float, float addrspace(0)* %_358880
    %_358885 = add i64 4, %_358819
    %_358886 = trunc i64 %_358885 to i5
    %_358888.zext = zext i5 %_358886 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358888 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358817, i64 0, i6 %_358888.zext
    %_358890 = load float, float addrspace(0)* %_358888
    %_358895 = load float, float addrspace(0)* %_358893
    %_358903.zext = zext i5 %_358820 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358903 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358901, i64 0, i6 %_358903.zext
    %_358905 = load float, float addrspace(0)* %_358903
    %_358912 = load float, float addrspace(0)* %_358910
    %_358915.zext = zext i5 %_358847 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358915 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358901, i64 0, i6 %_358915.zext
    %_358917 = load float, float addrspace(0)* %_358915
    %_358922 = load float, float addrspace(0)* %_358920
    %_358925.zext = zext i5 %_358860 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358925 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358901, i64 0, i6 %_358925.zext
    %_358927 = load float, float addrspace(0)* %_358925
    %_358932 = load float, float addrspace(0)* %_358930
    %_358935.zext = zext i5 %_358873 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358935 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358901, i64 0, i6 %_358935.zext
    %_358937 = load float, float addrspace(0)* %_358935
    %_358942 = load float, float addrspace(0)* %_358940
    %_358945.zext = zext i5 %_358886 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358945 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358901, i64 0, i6 %_358945.zext
    %_358947 = load float, float addrspace(0)* %_358945
    %_358952 = load float, float addrspace(0)* %_358950
    %_358960.zext = zext i5 %_358820 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358960 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358958, i64 0, i6 %_358960.zext
    %_358962 = load float, float addrspace(0)* %_358960
    %_358969 = load float, float addrspace(0)* %_358967
    %_358972.zext = zext i5 %_358847 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358972 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358958, i64 0, i6 %_358972.zext
    %_358974 = load float, float addrspace(0)* %_358972
    %_358979 = load float, float addrspace(0)* %_358977
    %_358982.zext = zext i5 %_358860 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358982 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358958, i64 0, i6 %_358982.zext
    %_358984 = load float, float addrspace(0)* %_358982
    %_358989 = load float, float addrspace(0)* %_358987
    %_358992.zext = zext i5 %_358873 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358992 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358958, i64 0, i6 %_358992.zext
    %_358994 = load float, float addrspace(0)* %_358992
    %_358999 = load float, float addrspace(0)* %_358997
    %_359002.zext = zext i5 %_358886 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359002 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_358958, i64 0, i6 %_359002.zext
    %_359004 = load float, float addrspace(0)* %_359002
    %_359009 = load float, float addrspace(0)* %_359007
    %_359017.zext = zext i5 %_358820 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359017 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359015, i64 0, i6 %_359017.zext
    %_359019 = load float, float addrspace(0)* %_359017
    %_359026 = load float, float addrspace(0)* %_359024
    %_359029.zext = zext i5 %_358847 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359029 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359015, i64 0, i6 %_359029.zext
    %_359031 = load float, float addrspace(0)* %_359029
    %_359036 = load float, float addrspace(0)* %_359034
    %_359039.zext = zext i5 %_358860 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359039 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359015, i64 0, i6 %_359039.zext
    %_359041 = load float, float addrspace(0)* %_359039
    %_359046 = load float, float addrspace(0)* %_359044
    %_359049.zext = zext i5 %_358873 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359049 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359015, i64 0, i6 %_359049.zext
    %_359051 = load float, float addrspace(0)* %_359049
    %_359056 = load float, float addrspace(0)* %_359054
    %_359059.zext = zext i5 %_358886 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359059 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359015, i64 0, i6 %_359059.zext
    %_359061 = load float, float addrspace(0)* %_359059
    %_359066 = load float, float addrspace(0)* %_359064
    %_359074.zext = zext i5 %_358820 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359074 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359072, i64 0, i6 %_359074.zext
    %_359076 = load float, float addrspace(0)* %_359074
    %_359083 = load float, float addrspace(0)* %_359081
    %_359086.zext = zext i5 %_358847 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359086 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359072, i64 0, i6 %_359086.zext
    %_359088 = load float, float addrspace(0)* %_359086
    %_359093 = load float, float addrspace(0)* %_359091
    %_359096.zext = zext i5 %_358860 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359096 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359072, i64 0, i6 %_359096.zext
    %_359098 = load float, float addrspace(0)* %_359096
    %_359103 = load float, float addrspace(0)* %_359101
    %_359106.zext = zext i5 %_358873 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359106 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359072, i64 0, i6 %_359106.zext
    %_359108 = load float, float addrspace(0)* %_359106
    %_359113 = load float, float addrspace(0)* %_359111
    %_359116.zext = zext i5 %_358886 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359116 = getelementptr inbounds [32 x float], [32 x float] addrspace(0)* %_359072, i64 0, i6 %_359116.zext
    %_359118 = load float, float addrspace(0)* %_359116
    %_359123 = load float, float addrspace(0)* %_359121
    %_359141 = add i64 %_358819, %_359139
    %_359144 = udiv i64 %_359141, 4704
    %_359149 = urem i64 %_359144, 4096
    %_359153 = udiv i64 %_359141, 784
    %_359158 = urem i64 %_359153, 6
    %_359162 = udiv i64 %_359141, 28
    %_359167 = urem i64 %_359162, 28
    %_359170 = urem i64 %_359141, 28
    %_359175 = urem i64 %_359158, 6
    %_359177 = trunc i64 %_359175 to i3
    %_359186.zext = zext i3 %_359177 to i4 ; add one more bit for gep index as it is treated as signed value
    %_359186 = getelementptr inbounds [6 x float], [6 x float] addrspace(0)* %l_self_modules_conv1_parameters_bias__359127, i64 0, i4 %_359186.zext
    %_359188 = load float, float addrspace(0)* %_359186
    %_359197.zext = zext i5 %_358818 to i6 ; add one more bit for gep index as it is treated as signed value
    %_359197 = getelementptr inbounds [28 x float], [28 x float] addrspace(0)* %_359195, i64 0, i6 %_359197.zext
    %a2_359201 = fmul fast float %_358843, %_358831
    %_359205 = fmul fast float %_358856, %_358851
    %a2_359207 = fadd fast float %a2_359201, %_359205
    %_359211 = fmul fast float %_358869, %_358864
    %a2_359213 = fadd fast float %a2_359207, %_359211
    %_359217 = fmul fast float %_358882, %_358877
    %a2_359219 = fadd fast float %a2_359213, %_359217
    %_359223 = fmul fast float %_358895, %_358890
    %a2_359225 = fadd fast float %a2_359219, %_359223
    %_359229 = fmul fast float %_358912, %_358905
    %a2_359231 = fadd fast float %a2_359225, %_359229
    %_359235 = fmul fast float %_358922, %_358917
    %a2_359237 = fadd fast float %a2_359231, %_359235
    %_359241 = fmul fast float %_358932, %_358927
    %a2_359243 = fadd fast float %a2_359237, %_359241
    %_359247 = fmul fast float %_358942, %_358937
    %a2_359249 = fadd fast float %a2_359243, %_359247
    %_359253 = fmul fast float %_358952, %_358947
    %a2_359255 = fadd fast float %a2_359249, %_359253
    %_359259 = fmul fast float %_358969, %_358962
    %a2_359261 = fadd fast float %a2_359255, %_359259
    %_359265 = fmul fast float %_358979, %_358974
    %a2_359267 = fadd fast float %a2_359261, %_359265
    %_359271 = fmul fast float %_358989, %_358984
    %a2_359273 = fadd fast float %a2_359267, %_359271
    %_359277 = fmul fast float %_358999, %_358994
    %a2_359279 = fadd fast float %a2_359273, %_359277
    %_359283 = fmul fast float %_359009, %_359004
    %a2_359285 = fadd fast float %a2_359279, %_359283
    %_359289 = fmul fast float %_359026, %_359019
    %a2_359291 = fadd fast float %a2_359285, %_359289
    %_359295 = fmul fast float %_359036, %_359031
    %a2_359297 = fadd fast float %a2_359291, %_359295
    %_359301 = fmul fast float %_359046, %_359041
    %a2_359303 = fadd fast float %a2_359297, %_359301
    %_359307 = fmul fast float %_359056, %_359051
    %a2_359309 = fadd fast float %a2_359303, %_359307
    %_359313 = fmul fast float %_359066, %_359061
    %a2_359315 = fadd fast float %a2_359309, %_359313
    %_359319 = fmul fast float %_359083, %_359076
    %a2_359321 = fadd fast float %a2_359315, %_359319
    %_359325 = fmul fast float %_359093, %_359088
    %a2_359327 = fadd fast float %a2_359321, %_359325
    %_359331 = fmul fast float %_359103, %_359098
    %a2_359333 = fadd fast float %a2_359327, %_359331
    %_359337 = fmul fast float %_359113, %_359108
    %a2_359339 = fadd fast float %a2_359333, %_359337
    %_359343 = fmul fast float %_359123, %_359118
    %v_359345 = fadd fast float %a2_359339, %_359343
    %_359348 = fadd fast float %v_359345, %_359188
    %_359350 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_359348)
    store float %_359350, float addrspace(0)* %_359197
    br label %head_358723

new_exit_358729:
    %fv_12_358731 = add nuw nsw i32 1, %iv_358711
    br label %head_358708

new_exit_358714:
    %fv_12_358716 = add nuw nsw i32 1, %iv_358695
    br label %head_358692

new_exit_358699:
    %fv_12_358701 = add nuw nsw i32 1, %iv_358680
    br label %head_358677

new_exit_358683:
    %fv_12_358685 = add nuw nsw i32 1, %iv_352048
    br label %head_352044

new_exit_352056:
    %_352070i8 = call i8* @malloc(i64 19267584)
    %_352070 = bitcast i8* %_352070i8 to [4096 x [6 x [14 x [14 x float]]]] addrspace(0)*
    br label %head_352073

head_352073:
    %iv_352076 = phi i32 [ 0, %new_exit_352056 ], [ %fv_8_358258, %new_exit_358256 ]
    %_352078 = icmp ult i32 %iv_352076, 4096
    %_358340 = trunc i32 %iv_352076 to i12
    %_358341 = zext i12 %_358340 to i64
    %_358343 = mul i64 4704, %_358341
    %_358635.zext = zext i12 %_358340 to i13 ; add one more bit for gep index as it is treated as signed value
    %_358635 = getelementptr inbounds [4096 x [6 x [14 x [14 x float]]]], [4096 x [6 x [14 x [14 x float]]]] addrspace(0)* %_352070, i64 0, i13 %_358635.zext
    br i1 %_352078, label %new_body_358247, label %new_exit_352079

new_body_358247:
    br label %head_358250

head_358250:
    %iv_358253 = phi i32 [ 0, %new_body_358247 ], [ %fv_8_358274, %new_exit_358272 ]
    %_358255 = icmp ult i32 %iv_358253, 6
    %_358328 = trunc i32 %iv_358253 to i3
    %_358336 = zext i3 %_358328 to i64
    %_358338 = mul i64 784, %_358336
    %_358345 = add i64 %_358338, %_358343
    %_358637.zext = zext i3 %_358328 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358637 = getelementptr inbounds [6 x [14 x [14 x float]]], [6 x [14 x [14 x float]]] addrspace(0)* %_358635, i64 0, i4 %_358637.zext
    br i1 %_358255, label %new_body_358262, label %new_exit_358256

new_body_358262:
    br label %head_358265

head_358265:
    %iv_358268 = phi i32 [ 0, %new_body_358262 ], [ %fv_8_358289, %new_exit_358287 ]
    %_358271 = icmp ult i32 %iv_358268, 14
    %_358323 = trunc i32 %iv_358268 to i4
    %_358324 = zext i4 %_358323 to i64
    %_358326 = mul i64 56, %_358324
    %_358347 = add i64 %_358326, %_358345
    %_358521 = mul i64 2, %_358324
    %_358523 = add i64 1, %_358521
    %_358525 = mul i64 28, %_358523
    %_358527 = add i64 %_358345, %_358525
    %_358639.zext = zext i4 %_358323 to i5 ; add one more bit for gep index as it is treated as signed value
    %_358639 = getelementptr inbounds [14 x [14 x float]], [14 x [14 x float]] addrspace(0)* %_358637, i64 0, i5 %_358639.zext
    br i1 %_358271, label %new_body_358278, label %new_exit_358272

new_body_358278:
    br label %head_358281

head_358281:
    %iv_358284 = phi i32 [ 0, %new_body_358278 ], [ %fv_8_358295, %new_body_358293 ]
    %_358286 = icmp ult i32 %iv_358284, 14
    br i1 %_358286, label %new_body_358293, label %new_exit_358287

new_body_358293:
    %fv_8_358295 = add nuw nsw i32 1, %iv_358284
    %_358311 = trunc i32 %iv_358284 to i4
    %_358319 = zext i4 %_358311 to i64
    %_358321 = mul i64 2, %_358319
    %_358349 = add i64 %_358321, %_358347
    %_358352 = udiv i64 %_358349, 4704
    %_358357 = urem i64 %_358352, 4096
    %_358359 = trunc i64 %_358357 to i12
    %_358370.zext = zext i12 %_358359 to i13 ; add one more bit for gep index as it is treated as signed value
    %_358370 = getelementptr inbounds [4096 x [6 x [28 x [28 x float]]]], [4096 x [6 x [28 x [28 x float]]]] addrspace(0)* %_352040, i64 0, i13 %_358370.zext
    %_358374 = udiv i64 %_358349, 784
    %_358380 = urem i64 %_358374, 6
    %_358384 = trunc i64 %_358380 to i3
    %_358393.zext = zext i3 %_358384 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358393 = getelementptr inbounds [6 x [28 x [28 x float]]], [6 x [28 x [28 x float]]] addrspace(0)* %_358370, i64 0, i4 %_358393.zext
    %_358398 = udiv i64 %_358349, 28
    %_358403 = urem i64 %_358398, 28
    %_358407 = trunc i64 %_358403 to i5
    %_358446.zext = zext i5 %_358407 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358446 = getelementptr inbounds [28 x [28 x float]], [28 x [28 x float]] addrspace(0)* %_358393, i64 0, i6 %_358446.zext
    %_358449 = udiv i64 %_358349, 28
    %_358452 = urem i64 %_358349, 28
    %_358454 = trunc i64 %_358452 to i5
    %_358463.zext = zext i5 %_358454 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358463 = getelementptr inbounds [28 x float], [28 x float] addrspace(0)* %_358446, i64 0, i6 %_358463.zext
    %_358465 = load float, float addrspace(0)* %_358463
    %_358468 = add i64 1, %_358349
    %_358471 = udiv i64 %_358468, 4704
    %_358476 = urem i64 %_358471, 4096
    %_358478 = trunc i64 %_358476 to i12
    %_358480.zext = zext i12 %_358478 to i13 ; add one more bit for gep index as it is treated as signed value
    %_358480 = getelementptr inbounds [4096 x [6 x [28 x [28 x float]]]], [4096 x [6 x [28 x [28 x float]]]] addrspace(0)* %_352040, i64 0, i13 %_358480.zext
    %_358484 = udiv i64 %_358468, 784
    %_358489 = urem i64 %_358484, 6
    %_358491 = trunc i64 %_358489 to i3
    %_358493.zext = zext i3 %_358491 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358493 = getelementptr inbounds [6 x [28 x [28 x float]]], [6 x [28 x [28 x float]]] addrspace(0)* %_358480, i64 0, i4 %_358493.zext
    %_358497 = udiv i64 %_358468, 28
    %_358502 = urem i64 %_358497, 28
    %_358504 = trunc i64 %_358502 to i5
    %_358506.zext = zext i5 %_358504 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358506 = getelementptr inbounds [28 x [28 x float]], [28 x [28 x float]] addrspace(0)* %_358493, i64 0, i6 %_358506.zext
    %_358509 = udiv i64 %_358468, 28
    %_358512 = urem i64 %_358468, 28
    %_358514 = trunc i64 %_358512 to i5
    %_358516.zext = zext i5 %_358514 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358516 = getelementptr inbounds [28 x float], [28 x float] addrspace(0)* %_358506, i64 0, i6 %_358516.zext
    %_358518 = load float, float addrspace(0)* %_358516
    %_358529 = add i64 %_358321, %_358527
    %_358532 = udiv i64 %_358529, 4704
    %_358537 = urem i64 %_358532, 4096
    %_358539 = trunc i64 %_358537 to i12
    %_358541.zext = zext i12 %_358539 to i13 ; add one more bit for gep index as it is treated as signed value
    %_358541 = getelementptr inbounds [4096 x [6 x [28 x [28 x float]]]], [4096 x [6 x [28 x [28 x float]]]] addrspace(0)* %_352040, i64 0, i13 %_358541.zext
    %_358545 = udiv i64 %_358529, 784
    %_358550 = urem i64 %_358545, 6
    %_358552 = trunc i64 %_358550 to i3
    %_358554.zext = zext i3 %_358552 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358554 = getelementptr inbounds [6 x [28 x [28 x float]]], [6 x [28 x [28 x float]]] addrspace(0)* %_358541, i64 0, i4 %_358554.zext
    %_358558 = udiv i64 %_358529, 28
    %_358563 = urem i64 %_358558, 28
    %_358565 = trunc i64 %_358563 to i5
    %_358567.zext = zext i5 %_358565 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358567 = getelementptr inbounds [28 x [28 x float]], [28 x [28 x float]] addrspace(0)* %_358554, i64 0, i6 %_358567.zext
    %_358570 = udiv i64 %_358529, 28
    %_358573 = urem i64 %_358529, 28
    %_358575 = trunc i64 %_358573 to i5
    %_358577.zext = zext i5 %_358575 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358577 = getelementptr inbounds [28 x float], [28 x float] addrspace(0)* %_358567, i64 0, i6 %_358577.zext
    %_358579 = load float, float addrspace(0)* %_358577
    %_358582 = add i64 1, %_358529
    %_358585 = udiv i64 %_358582, 4704
    %_358590 = urem i64 %_358585, 4096
    %_358592 = trunc i64 %_358590 to i12
    %_358594.zext = zext i12 %_358592 to i13 ; add one more bit for gep index as it is treated as signed value
    %_358594 = getelementptr inbounds [4096 x [6 x [28 x [28 x float]]]], [4096 x [6 x [28 x [28 x float]]]] addrspace(0)* %_352040, i64 0, i13 %_358594.zext
    %_358598 = udiv i64 %_358582, 784
    %_358603 = urem i64 %_358598, 6
    %_358605 = trunc i64 %_358603 to i3
    %_358607.zext = zext i3 %_358605 to i4 ; add one more bit for gep index as it is treated as signed value
    %_358607 = getelementptr inbounds [6 x [28 x [28 x float]]], [6 x [28 x [28 x float]]] addrspace(0)* %_358594, i64 0, i4 %_358607.zext
    %_358611 = udiv i64 %_358582, 28
    %_358616 = urem i64 %_358611, 28
    %_358618 = trunc i64 %_358616 to i5
    %_358620.zext = zext i5 %_358618 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358620 = getelementptr inbounds [28 x [28 x float]], [28 x [28 x float]] addrspace(0)* %_358607, i64 0, i6 %_358620.zext
    %_358623 = udiv i64 %_358582, 28
    %_358626 = urem i64 %_358582, 28
    %_358628 = trunc i64 %_358626 to i5
    %_358630.zext = zext i5 %_358628 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358630 = getelementptr inbounds [28 x float], [28 x float] addrspace(0)* %_358620, i64 0, i6 %_358630.zext
    %_358632 = load float, float addrspace(0)* %_358630
    %_358641.zext = zext i4 %_358311 to i5 ; add one more bit for gep index as it is treated as signed value
    %_358641 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_358639, i64 0, i5 %_358641.zext
    %a2_358644 = tail call float @llvm.maxnum.f32(float 0xfff0000000000000, float %_358465)
    %a2_358647 = tail call float @llvm.maxnum.f32(float %a2_358644, float %_358518)
    %a2_358650 = tail call float @llvm.maxnum.f32(float %a2_358647, float %_358579)
    %v_358653 = tail call float @llvm.maxnum.f32(float %a2_358650, float %_358632)
    store float %v_358653, float addrspace(0)* %_358641
    br label %head_358281

new_exit_358287:
    %fv_8_358289 = add nuw nsw i32 1, %iv_358268
    br label %head_358265

new_exit_358272:
    %fv_8_358274 = add nuw nsw i32 1, %iv_358253
    br label %head_358250

new_exit_358256:
    %fv_8_358258 = add nuw nsw i32 1, %iv_352076
    br label %head_352073

new_exit_352079:
    %_352093i8 = call i8* @malloc(i64 26214400)
    %_352093 = bitcast i8* %_352093i8 to [4096 x [16 x [5 x [2 x [10 x float]]]]] addrspace(0)*
    %_352100i8 = call i8* @malloc(i64 80)
    %_352100 = bitcast i8* %_352100i8 to [20 x float] addrspace(0)*
    br label %head_352103

head_352103:
    %iv_352106 = phi i32 [ 0, %new_exit_352079 ], [ %fv_13_357059, %new_exit_357057 ]
    %_352108 = icmp ult i32 %iv_352106, 4096
    %_357166 = trunc i32 %iv_352106 to i12
    %_357334.zext = zext i12 %_357166 to i13 ; add one more bit for gep index as it is treated as signed value
    %_357334 = getelementptr inbounds [4096 x [6 x [14 x [14 x float]]]], [4096 x [6 x [14 x [14 x float]]]] addrspace(0)* %_352070, i64 0, i13 %_357334.zext
    %_357167 = zext i12 %_357166 to i64
    %_357169 = mul i64 1600, %_357167
    %_357256.zext = zext i12 %_357166 to i13 ; add one more bit for gep index as it is treated as signed value
    %_357256 = getelementptr inbounds [4096 x [16 x [5 x [2 x [10 x float]]]]], [4096 x [16 x [5 x [2 x [10 x float]]]]] addrspace(0)* %_352093, i64 0, i13 %_357256.zext
    br i1 %_352108, label %new_body_357048, label %new_exit_352109

new_body_357048:
    br label %head_357051

head_357051:
    %iv_357054 = phi i32 [ 0, %new_body_357048 ], [ %fv_13_357074, %new_exit_357072 ]
    %_357056 = icmp ult i32 %iv_357054, 16
    %_357162 = trunc i32 %iv_357054 to i4
    %_357410.zext = zext i4 %_357162 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357410 = getelementptr inbounds [16 x [6 x [5 x [5 x float]]]], [16 x [6 x [5 x [5 x float]]]] addrspace(0)* %l_self_modules_conv2_parameters_weight__357401, i64 0, i5 %_357410.zext
    %_357163 = zext i4 %_357162 to i64
    %_357165 = mul i64 100, %_357163
    %_357171 = add i64 %_357165, %_357169
    %_357258.zext = zext i4 %_357162 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357258 = getelementptr inbounds [16 x [5 x [2 x [10 x float]]]], [16 x [5 x [2 x [10 x float]]]] addrspace(0)* %_357256, i64 0, i5 %_357258.zext
    br i1 %_357056, label %new_body_357063, label %new_exit_357057

new_body_357063:
    br label %head_357066

head_357066:
    %iv_357069 = phi i32 [ 0, %new_body_357063 ], [ %fv_13_357109, %new_exit_357107 ]
    %_357071 = icmp ult i32 %iv_357069, 5
    %_357183 = trunc i32 %iv_357069 to i3
    %_357184 = zext i3 %_357183 to i64
    %t_357186 = mul i64 2, %_357184
    %_357357 = trunc i64 %t_357186 to i4
    %t_357480 = add i64 1, %t_357186
    %_357481 = trunc i64 %t_357480 to i4
    %_357537 = add i64 2, %t_357186
    %_357538 = trunc i64 %_357537 to i4
    %_357594 = add i64 3, %t_357186
    %_357595 = trunc i64 %_357594 to i4
    %_357651 = add i64 4, %t_357186
    %_357652 = trunc i64 %_357651 to i4
    %_357989 = add i64 5, %t_357186
    %_357990 = trunc i64 %_357989 to i4
    br i1 %_357071, label %new_body_357078, label %new_exit_357072

new_body_357078:
    br label %head_357081

head_357081:
    %iv_357084 = phi i32 [ 0, %new_body_357078 ], [ %fv_10_358208, %new_exit_358206 ]
    %_357087 = icmp ult i32 %iv_357084, 2
    %_358217 = mul i32 10, %iv_357084
    br i1 %_357087, label %new_body_358196, label %new_exit_357088

new_body_358196:
    br label %head_358199, !llvm.loop !1001

head_358199:
    %iv_358202 = phi i32 [ 0, %new_body_358196 ], [ %fv_10_358214, %new_body_358212 ]
    %_358204 = icmp ult i32 %iv_358202, 10
    br i1 %_358204, label %new_body_358212, label %new_exit_358206

new_body_358212:
    %fv_10_358214 = add nuw nsw i32 1, %iv_358202
    %_358219 = add i32 %_358217, %iv_358202
    %_358220 = trunc i32 %_358219 to i5
    %_358222.zext = zext i5 %_358220 to i6 ; add one more bit for gep index as it is treated as signed value
    %_358222 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %_352100, i64 0, i6 %_358222.zext
    store float 0x0000000000000000, float addrspace(0)* %_358222
    br label %head_358199, !llvm.loop !1001

new_exit_358206:
    %fv_10_358208 = add nuw nsw i32 1, %iv_357084
    br label %head_357081

new_exit_357088:
    br label %head_357091

head_357091:
    %iv_357094 = phi i32 [ 0, %new_exit_357088 ], [ %fv_12_357297, %new_exit_357295 ]
    %_357097 = icmp ult i32 %iv_357094, 6
    %_357337 = trunc i32 %iv_357094 to i3
    %_357354.zext = zext i3 %_357337 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357354 = getelementptr inbounds [6 x [14 x [14 x float]]], [6 x [14 x [14 x float]]] addrspace(0)* %_357334, i64 0, i4 %_357354.zext
    %_357382.zext = zext i4 %_357357 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357382 = getelementptr inbounds [14 x [14 x float]], [14 x [14 x float]] addrspace(0)* %_357354, i64 0, i5 %_357382.zext
    %_357419.zext = zext i3 %_357337 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357419 = getelementptr inbounds [6 x [5 x [5 x float]]], [6 x [5 x [5 x float]]] addrspace(0)* %_357410, i64 0, i4 %_357419.zext
    %_357421.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357421 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_357419, i64 0, i4 %_357421.zext
    %_357423.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357423 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357421, i64 0, i4 %_357423.zext
    %_357436.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357436 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357421, i64 0, i4 %_357436.zext
    %_357449.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357449 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357421, i64 0, i4 %_357449.zext
    %_357462.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357462 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357421, i64 0, i4 %_357462.zext
    %_357475.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357475 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357421, i64 0, i4 %_357475.zext
    %_357483.zext = zext i4 %_357481 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357483 = getelementptr inbounds [14 x [14 x float]], [14 x [14 x float]] addrspace(0)* %_357354, i64 0, i5 %_357483.zext
    %_357490.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357490 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_357419, i64 0, i4 %_357490.zext
    %_357492.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357492 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357490, i64 0, i4 %_357492.zext
    %_357502.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357502 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357490, i64 0, i4 %_357502.zext
    %_357512.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357512 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357490, i64 0, i4 %_357512.zext
    %_357522.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357522 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357490, i64 0, i4 %_357522.zext
    %_357532.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357532 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357490, i64 0, i4 %_357532.zext
    %_357540.zext = zext i4 %_357538 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357540 = getelementptr inbounds [14 x [14 x float]], [14 x [14 x float]] addrspace(0)* %_357354, i64 0, i5 %_357540.zext
    %_357547.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357547 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_357419, i64 0, i4 %_357547.zext
    %_357549.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357549 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357547, i64 0, i4 %_357549.zext
    %_357559.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357559 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357547, i64 0, i4 %_357559.zext
    %_357569.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357569 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357547, i64 0, i4 %_357569.zext
    %_357579.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357579 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357547, i64 0, i4 %_357579.zext
    %_357589.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357589 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357547, i64 0, i4 %_357589.zext
    %_357597.zext = zext i4 %_357595 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357597 = getelementptr inbounds [14 x [14 x float]], [14 x [14 x float]] addrspace(0)* %_357354, i64 0, i5 %_357597.zext
    %_357604.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357604 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_357419, i64 0, i4 %_357604.zext
    %_357606.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357606 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357604, i64 0, i4 %_357606.zext
    %_357616.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357616 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357604, i64 0, i4 %_357616.zext
    %_357626.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357626 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357604, i64 0, i4 %_357626.zext
    %_357636.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357636 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357604, i64 0, i4 %_357636.zext
    %_357646.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357646 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357604, i64 0, i4 %_357646.zext
    %_357654.zext = zext i4 %_357652 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357654 = getelementptr inbounds [14 x [14 x float]], [14 x [14 x float]] addrspace(0)* %_357354, i64 0, i5 %_357654.zext
    %_357661.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357661 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_357419, i64 0, i4 %_357661.zext
    %_357663.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357663 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357661, i64 0, i4 %_357663.zext
    %_357673.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357673 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357661, i64 0, i4 %_357673.zext
    %_357683.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357683 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357661, i64 0, i4 %_357683.zext
    %_357693.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357693 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357661, i64 0, i4 %_357693.zext
    %_357703.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357703 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357661, i64 0, i4 %_357703.zext
    %_357992.zext = zext i4 %_357990 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357992 = getelementptr inbounds [14 x [14 x float]], [14 x [14 x float]] addrspace(0)* %_357354, i64 0, i5 %_357992.zext
    br i1 %_357097, label %new_body_357285, label %new_exit_357098

new_body_357285:
    br label %head_357288, !llvm.loop !1002

head_357288:
    %iv_357291 = phi i32 [ 0, %new_body_357285 ], [ %fv_12_357303, %new_body_357301 ]
    %_357293 = icmp ult i32 %iv_357291, 10
    br i1 %_357293, label %new_body_357301, label %new_exit_357295

new_body_357301:
    %fv_12_357303 = add nuw nsw i32 1, %iv_357291
    %_357305 = trunc i32 %iv_357291 to i5
    %_357307.zext = zext i5 %_357305 to i6 ; add one more bit for gep index as it is treated as signed value
    %_357307 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %_352100, i64 0, i6 %_357307.zext
    %_357309 = load float, float addrspace(0)* %_357307
    %_357383 = trunc i32 %iv_357291 to i4
    %_357384 = zext i4 %_357383 to i64
    %_357385 = trunc i64 %_357384 to i4
    %_357394.zext = zext i4 %_357385 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357394 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357382, i64 0, i5 %_357394.zext
    %_357396 = load float, float addrspace(0)* %_357394
    %_357425 = load float, float addrspace(0)* %_357423
    %_357428 = add i64 1, %_357384
    %_357429 = trunc i64 %_357428 to i4
    %_357431.zext = zext i4 %_357429 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357431 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357382, i64 0, i5 %_357431.zext
    %_357433 = load float, float addrspace(0)* %_357431
    %_357438 = load float, float addrspace(0)* %_357436
    %_357441 = add i64 2, %_357384
    %_357442 = trunc i64 %_357441 to i4
    %_357444.zext = zext i4 %_357442 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357444 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357382, i64 0, i5 %_357444.zext
    %_357446 = load float, float addrspace(0)* %_357444
    %_357451 = load float, float addrspace(0)* %_357449
    %_357454 = add i64 3, %_357384
    %_357455 = trunc i64 %_357454 to i4
    %_357457.zext = zext i4 %_357455 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357457 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357382, i64 0, i5 %_357457.zext
    %_357459 = load float, float addrspace(0)* %_357457
    %_357464 = load float, float addrspace(0)* %_357462
    %_357467 = add i64 4, %_357384
    %_357468 = trunc i64 %_357467 to i4
    %_357470.zext = zext i4 %_357468 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357470 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357382, i64 0, i5 %_357470.zext
    %_357472 = load float, float addrspace(0)* %_357470
    %_357477 = load float, float addrspace(0)* %_357475
    %_357485.zext = zext i4 %_357385 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357485 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357483, i64 0, i5 %_357485.zext
    %_357487 = load float, float addrspace(0)* %_357485
    %_357494 = load float, float addrspace(0)* %_357492
    %_357497.zext = zext i4 %_357429 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357497 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357483, i64 0, i5 %_357497.zext
    %_357499 = load float, float addrspace(0)* %_357497
    %_357504 = load float, float addrspace(0)* %_357502
    %_357507.zext = zext i4 %_357442 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357507 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357483, i64 0, i5 %_357507.zext
    %_357509 = load float, float addrspace(0)* %_357507
    %_357514 = load float, float addrspace(0)* %_357512
    %_357517.zext = zext i4 %_357455 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357517 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357483, i64 0, i5 %_357517.zext
    %_357519 = load float, float addrspace(0)* %_357517
    %_357524 = load float, float addrspace(0)* %_357522
    %_357527.zext = zext i4 %_357468 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357527 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357483, i64 0, i5 %_357527.zext
    %_357529 = load float, float addrspace(0)* %_357527
    %_357534 = load float, float addrspace(0)* %_357532
    %_357542.zext = zext i4 %_357385 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357542 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357540, i64 0, i5 %_357542.zext
    %_357544 = load float, float addrspace(0)* %_357542
    %_357551 = load float, float addrspace(0)* %_357549
    %_357554.zext = zext i4 %_357429 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357554 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357540, i64 0, i5 %_357554.zext
    %_357556 = load float, float addrspace(0)* %_357554
    %_357561 = load float, float addrspace(0)* %_357559
    %_357564.zext = zext i4 %_357442 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357564 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357540, i64 0, i5 %_357564.zext
    %_357566 = load float, float addrspace(0)* %_357564
    %_357571 = load float, float addrspace(0)* %_357569
    %_357574.zext = zext i4 %_357455 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357574 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357540, i64 0, i5 %_357574.zext
    %_357576 = load float, float addrspace(0)* %_357574
    %_357581 = load float, float addrspace(0)* %_357579
    %_357584.zext = zext i4 %_357468 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357584 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357540, i64 0, i5 %_357584.zext
    %_357586 = load float, float addrspace(0)* %_357584
    %_357591 = load float, float addrspace(0)* %_357589
    %_357599.zext = zext i4 %_357385 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357599 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357597, i64 0, i5 %_357599.zext
    %_357601 = load float, float addrspace(0)* %_357599
    %_357608 = load float, float addrspace(0)* %_357606
    %_357611.zext = zext i4 %_357429 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357611 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357597, i64 0, i5 %_357611.zext
    %_357613 = load float, float addrspace(0)* %_357611
    %_357618 = load float, float addrspace(0)* %_357616
    %_357621.zext = zext i4 %_357442 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357621 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357597, i64 0, i5 %_357621.zext
    %_357623 = load float, float addrspace(0)* %_357621
    %_357628 = load float, float addrspace(0)* %_357626
    %_357631.zext = zext i4 %_357455 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357631 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357597, i64 0, i5 %_357631.zext
    %_357633 = load float, float addrspace(0)* %_357631
    %_357638 = load float, float addrspace(0)* %_357636
    %_357641.zext = zext i4 %_357468 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357641 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357597, i64 0, i5 %_357641.zext
    %_357643 = load float, float addrspace(0)* %_357641
    %_357648 = load float, float addrspace(0)* %_357646
    %_357656.zext = zext i4 %_357385 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357656 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357654, i64 0, i5 %_357656.zext
    %_357658 = load float, float addrspace(0)* %_357656
    %_357665 = load float, float addrspace(0)* %_357663
    %_357668.zext = zext i4 %_357429 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357668 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357654, i64 0, i5 %_357668.zext
    %_357670 = load float, float addrspace(0)* %_357668
    %_357675 = load float, float addrspace(0)* %_357673
    %_357678.zext = zext i4 %_357442 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357678 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357654, i64 0, i5 %_357678.zext
    %_357680 = load float, float addrspace(0)* %_357678
    %_357685 = load float, float addrspace(0)* %_357683
    %_357688.zext = zext i4 %_357455 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357688 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357654, i64 0, i5 %_357688.zext
    %_357690 = load float, float addrspace(0)* %_357688
    %_357695 = load float, float addrspace(0)* %_357693
    %_357698.zext = zext i4 %_357468 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357698 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357654, i64 0, i5 %_357698.zext
    %_357700 = load float, float addrspace(0)* %_357698
    %_357705 = load float, float addrspace(0)* %_357703
    %_357710 = fmul fast float %_357438, %_357433
    %_357714 = fmul fast float %_357425, %_357396
    %a2_357717 = fadd fast float %_357714, %_357309
    %a2_357719 = fadd fast float %_357710, %a2_357717
    %_357723 = fmul fast float %_357451, %_357446
    %a2_357725 = fadd fast float %a2_357719, %_357723
    %_357729 = fmul fast float %_357464, %_357459
    %a2_357731 = fadd fast float %a2_357725, %_357729
    %_357735 = fmul fast float %_357477, %_357472
    %a2_357737 = fadd fast float %a2_357731, %_357735
    %_357741 = fmul fast float %_357494, %_357487
    %a2_357743 = fadd fast float %a2_357737, %_357741
    %_357747 = fmul fast float %_357504, %_357499
    %a2_357749 = fadd fast float %a2_357743, %_357747
    %_357753 = fmul fast float %_357514, %_357509
    %a2_357755 = fadd fast float %a2_357749, %_357753
    %_357759 = fmul fast float %_357524, %_357519
    %a2_357761 = fadd fast float %a2_357755, %_357759
    %_357765 = fmul fast float %_357534, %_357529
    %a2_357767 = fadd fast float %a2_357761, %_357765
    %_357771 = fmul fast float %_357551, %_357544
    %a2_357773 = fadd fast float %a2_357767, %_357771
    %_357777 = fmul fast float %_357561, %_357556
    %a2_357779 = fadd fast float %a2_357773, %_357777
    %_357783 = fmul fast float %_357571, %_357566
    %a2_357785 = fadd fast float %a2_357779, %_357783
    %_357789 = fmul fast float %_357581, %_357576
    %a2_357791 = fadd fast float %a2_357785, %_357789
    %_357795 = fmul fast float %_357591, %_357586
    %a2_357797 = fadd fast float %a2_357791, %_357795
    %_357801 = fmul fast float %_357608, %_357601
    %a2_357803 = fadd fast float %a2_357797, %_357801
    %_357807 = fmul fast float %_357618, %_357613
    %a2_357809 = fadd fast float %a2_357803, %_357807
    %_357813 = fmul fast float %_357628, %_357623
    %a2_357815 = fadd fast float %a2_357809, %_357813
    %_357819 = fmul fast float %_357638, %_357633
    %a2_357821 = fadd fast float %a2_357815, %_357819
    %_357825 = fmul fast float %_357648, %_357643
    %a2_357827 = fadd fast float %a2_357821, %_357825
    %_357831 = fmul fast float %_357665, %_357658
    %a2_357833 = fadd fast float %a2_357827, %_357831
    %_357837 = fmul fast float %_357675, %_357670
    %a2_357839 = fadd fast float %a2_357833, %_357837
    %_357843 = fmul fast float %_357685, %_357680
    %a2_357845 = fadd fast float %a2_357839, %_357843
    %_357849 = fmul fast float %_357695, %_357690
    %a2_357851 = fadd fast float %a2_357845, %_357849
    %_357855 = fmul fast float %_357705, %_357700
    %accn_357857 = fadd fast float %a2_357851, %_357855
    store float %accn_357857, float addrspace(0)* %_357307
    %_357861 = add i32 10, %iv_357291
    %_357862 = trunc i32 %_357861 to i5
    %_357864.zext = zext i5 %_357862 to i6 ; add one more bit for gep index as it is treated as signed value
    %_357864 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %_352100, i64 0, i6 %_357864.zext
    %_357866 = load float, float addrspace(0)* %_357864
    %_357869 = load float, float addrspace(0)* %_357485
    %_357872 = load float, float addrspace(0)* %_357423
    %_357875 = load float, float addrspace(0)* %_357497
    %_357878 = load float, float addrspace(0)* %_357436
    %_357881 = load float, float addrspace(0)* %_357507
    %_357884 = load float, float addrspace(0)* %_357449
    %_357887 = load float, float addrspace(0)* %_357517
    %_357890 = load float, float addrspace(0)* %_357462
    %_357893 = load float, float addrspace(0)* %_357527
    %_357896 = load float, float addrspace(0)* %_357475
    %_357899 = load float, float addrspace(0)* %_357542
    %_357902 = load float, float addrspace(0)* %_357492
    %_357905 = load float, float addrspace(0)* %_357554
    %_357908 = load float, float addrspace(0)* %_357502
    %_357911 = load float, float addrspace(0)* %_357564
    %_357914 = load float, float addrspace(0)* %_357512
    %_357917 = load float, float addrspace(0)* %_357574
    %_357920 = load float, float addrspace(0)* %_357522
    %_357923 = load float, float addrspace(0)* %_357584
    %_357926 = load float, float addrspace(0)* %_357532
    %_357929 = load float, float addrspace(0)* %_357599
    %_357932 = load float, float addrspace(0)* %_357549
    %_357935 = load float, float addrspace(0)* %_357611
    %_357938 = load float, float addrspace(0)* %_357559
    %_357941 = load float, float addrspace(0)* %_357621
    %_357944 = load float, float addrspace(0)* %_357569
    %_357947 = load float, float addrspace(0)* %_357631
    %_357950 = load float, float addrspace(0)* %_357579
    %_357953 = load float, float addrspace(0)* %_357641
    %_357956 = load float, float addrspace(0)* %_357589
    %_357959 = load float, float addrspace(0)* %_357656
    %_357962 = load float, float addrspace(0)* %_357606
    %_357965 = load float, float addrspace(0)* %_357668
    %_357968 = load float, float addrspace(0)* %_357616
    %_357971 = load float, float addrspace(0)* %_357678
    %_357974 = load float, float addrspace(0)* %_357626
    %_357977 = load float, float addrspace(0)* %_357688
    %_357980 = load float, float addrspace(0)* %_357636
    %_357983 = load float, float addrspace(0)* %_357698
    %_357986 = load float, float addrspace(0)* %_357646
    %_357994.zext = zext i4 %_357385 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357994 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357992, i64 0, i5 %_357994.zext
    %_357996 = load float, float addrspace(0)* %_357994
    %_357999 = load float, float addrspace(0)* %_357663
    %_358002.zext = zext i4 %_357429 to i5 ; add one more bit for gep index as it is treated as signed value
    %_358002 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357992, i64 0, i5 %_358002.zext
    %_358004 = load float, float addrspace(0)* %_358002
    %_358007 = load float, float addrspace(0)* %_357673
    %_358010.zext = zext i4 %_357442 to i5 ; add one more bit for gep index as it is treated as signed value
    %_358010 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357992, i64 0, i5 %_358010.zext
    %_358012 = load float, float addrspace(0)* %_358010
    %_358015 = load float, float addrspace(0)* %_357683
    %_358018.zext = zext i4 %_357455 to i5 ; add one more bit for gep index as it is treated as signed value
    %_358018 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357992, i64 0, i5 %_358018.zext
    %_358020 = load float, float addrspace(0)* %_358018
    %_358023 = load float, float addrspace(0)* %_357693
    %_358026.zext = zext i4 %_357468 to i5 ; add one more bit for gep index as it is treated as signed value
    %_358026 = getelementptr inbounds [14 x float], [14 x float] addrspace(0)* %_357992, i64 0, i5 %_358026.zext
    %_358028 = load float, float addrspace(0)* %_358026
    %_358031 = load float, float addrspace(0)* %_357703
    %_358036 = fmul fast float %_357878, %_357875
    %_358040 = fmul fast float %_357872, %_357869
    %a2_358043 = fadd fast float %_358040, %_357866
    %a2_358045 = fadd fast float %_358036, %a2_358043
    %_358049 = fmul fast float %_357884, %_357881
    %a2_358051 = fadd fast float %a2_358045, %_358049
    %_358055 = fmul fast float %_357890, %_357887
    %a2_358057 = fadd fast float %a2_358051, %_358055
    %_358061 = fmul fast float %_357896, %_357893
    %a2_358063 = fadd fast float %a2_358057, %_358061
    %_358067 = fmul fast float %_357902, %_357899
    %a2_358069 = fadd fast float %a2_358063, %_358067
    %_358073 = fmul fast float %_357908, %_357905
    %a2_358075 = fadd fast float %a2_358069, %_358073
    %_358079 = fmul fast float %_357914, %_357911
    %a2_358081 = fadd fast float %a2_358075, %_358079
    %_358085 = fmul fast float %_357920, %_357917
    %a2_358087 = fadd fast float %a2_358081, %_358085
    %_358091 = fmul fast float %_357926, %_357923
    %a2_358093 = fadd fast float %a2_358087, %_358091
    %_358097 = fmul fast float %_357932, %_357929
    %a2_358099 = fadd fast float %a2_358093, %_358097
    %_358103 = fmul fast float %_357938, %_357935
    %a2_358105 = fadd fast float %a2_358099, %_358103
    %_358109 = fmul fast float %_357944, %_357941
    %a2_358111 = fadd fast float %a2_358105, %_358109
    %_358115 = fmul fast float %_357950, %_357947
    %a2_358117 = fadd fast float %a2_358111, %_358115
    %_358121 = fmul fast float %_357956, %_357953
    %a2_358123 = fadd fast float %a2_358117, %_358121
    %_358127 = fmul fast float %_357962, %_357959
    %a2_358129 = fadd fast float %a2_358123, %_358127
    %_358133 = fmul fast float %_357968, %_357965
    %a2_358135 = fadd fast float %a2_358129, %_358133
    %_358139 = fmul fast float %_357974, %_357971
    %a2_358141 = fadd fast float %a2_358135, %_358139
    %_358145 = fmul fast float %_357980, %_357977
    %a2_358147 = fadd fast float %a2_358141, %_358145
    %_358151 = fmul fast float %_357986, %_357983
    %a2_358153 = fadd fast float %a2_358147, %_358151
    %_358157 = fmul fast float %_357999, %_357996
    %a2_358159 = fadd fast float %a2_358153, %_358157
    %_358163 = fmul fast float %_358007, %_358004
    %a2_358165 = fadd fast float %a2_358159, %_358163
    %_358169 = fmul fast float %_358015, %_358012
    %a2_358171 = fadd fast float %a2_358165, %_358169
    %_358175 = fmul fast float %_358023, %_358020
    %a2_358177 = fadd fast float %a2_358171, %_358175
    %_358181 = fmul fast float %_358031, %_358028
    %accn_358183 = fadd fast float %a2_358177, %_358181
    store float %accn_358183, float addrspace(0)* %_357864
    br label %head_357288, !llvm.loop !1002

new_exit_357295:
    %fv_12_357297 = add nuw nsw i32 1, %iv_357094
    br label %head_357091

new_exit_357098:
    br label %head_357101

head_357101:
    %iv_357104 = phi i32 [ 0, %new_exit_357098 ], [ %fv_11_357126, %new_exit_357124 ]
    %_357106 = icmp ult i32 %iv_357104, 2
    %_357138 = mul i32 10, %iv_357104
    %_357174 = trunc i32 %iv_357104 to i1
    %t_357182 = zext i1 %_357174 to i64
    %t_357188 = add i64 %t_357182, %t_357186
    br i1 %_357106, label %new_body_357113, label %new_exit_357107

new_body_357113:
    br label %head_357116, !llvm.loop !1003

head_357116:
    %iv_357119 = phi i32 [ 0, %new_body_357113 ], [ %fv_11_357132, %new_body_357130 ]
    %_357122 = icmp ult i32 %iv_357119, 10
    br i1 %_357122, label %new_body_357130, label %new_exit_357124

new_body_357130:
    %fv_11_357132 = add nuw nsw i32 1, %iv_357119
    %_357141 = add i32 %_357138, %iv_357119
    %_357142 = trunc i32 %_357141 to i5
    %_357144.zext = zext i5 %_357142 to i6 ; add one more bit for gep index as it is treated as signed value
    %_357144 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %_352100, i64 0, i6 %_357144.zext
    %_357146 = load float, float addrspace(0)* %_357144
    %_357153 = trunc i32 %iv_357119 to i4
    %_357161 = zext i4 %_357153 to i64
    %_357191 = udiv i64 %t_357188, 2
    %_357194 = mul i64 20, %_357191
    %_357196 = add i64 %_357171, %_357194
    %_357199 = urem i64 %t_357188, 2
    %_357202 = mul i64 10, %_357199
    %_357204 = add i64 %_357196, %_357202
    %_357206 = add i64 %_357161, %_357204
    %_357209 = udiv i64 %_357206, 1600
    %_357214 = urem i64 %_357209, 4096
    %_357218 = udiv i64 %_357206, 100
    %_357223 = urem i64 %_357218, 16
    %_357227 = udiv i64 %_357206, 10
    %_357232 = urem i64 %_357227, 10
    %_357235 = urem i64 %_357206, 10
    %_357240 = urem i64 %_357223, 16
    %_357242 = trunc i64 %_357240 to i4
    %_357251.zext = zext i4 %_357242 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357251 = getelementptr inbounds [16 x float], [16 x float] addrspace(0)* %l_self_modules_conv2_parameters_bias__357150, i64 0, i5 %_357251.zext
    %_357253 = load float, float addrspace(0)* %_357251
    %_357259 = trunc i64 %_357191 to i3
    %_357261.zext = zext i3 %_357259 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357261 = getelementptr inbounds [5 x [2 x [10 x float]]], [5 x [2 x [10 x float]]] addrspace(0)* %_357258, i64 0, i4 %_357261.zext
    %_357262 = trunc i64 %_357199 to i1
    %_357264.zext = zext i1 %_357262 to i2 ; add one more bit for gep index as it is treated as signed value
    %_357264 = getelementptr inbounds [2 x [10 x float]], [2 x [10 x float]] addrspace(0)* %_357261, i64 0, i2 %_357264.zext
    %_357266.zext = zext i4 %_357153 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357266 = getelementptr inbounds [10 x float], [10 x float] addrspace(0)* %_357264, i64 0, i5 %_357266.zext
    %_357270 = fadd fast float %_357146, %_357253
    %_357272 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_357270)
    store float %_357272, float addrspace(0)* %_357266
    br label %head_357116, !llvm.loop !1003

new_exit_357124:
    %fv_11_357126 = add nuw nsw i32 1, %iv_357104
    br label %head_357101

new_exit_357107:
    %fv_13_357109 = add nuw nsw i32 1, %iv_357069
    br label %head_357066

new_exit_357072:
    %fv_13_357074 = add nuw nsw i32 1, %iv_357054
    br label %head_357051

new_exit_357057:
    %fv_13_357059 = add nuw nsw i32 1, %iv_352106
    br label %head_352103

new_exit_352109:
    %_352120i8 = call i8* @malloc(i64 6553600)
    %_352120 = bitcast i8* %_352120i8 to [4096 x [16 x [5 x [5 x float]]]] addrspace(0)*
    br label %head_352123

head_352123:
    %iv_352126 = phi i32 [ 0, %new_exit_352109 ], [ %fv_8_356611, %new_exit_356609 ]
    %_352128 = icmp ult i32 %iv_352126, 4096
    %_356687 = trunc i32 %iv_352126 to i12
    %_356688 = zext i12 %_356687 to i64
    %_356690 = mul i64 1600, %_356688
    %_357008.zext = zext i12 %_356687 to i13 ; add one more bit for gep index as it is treated as signed value
    %_357008 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_357008.zext
    br i1 %_352128, label %new_body_356599, label %new_exit_352129

new_body_356599:
    br label %head_356602

head_356602:
    %iv_356605 = phi i32 [ 0, %new_body_356599 ], [ %fv_8_356626, %new_exit_356624 ]
    %_356608 = icmp ult i32 %iv_356605, 16
    %_356675 = trunc i32 %iv_356605 to i4
    %_356683 = zext i4 %_356675 to i64
    %_356685 = mul i64 100, %_356683
    %_356692 = add i64 %_356685, %_356690
    %_357010.zext = zext i4 %_356675 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357010 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_357008, i64 0, i5 %_357010.zext
    br i1 %_356608, label %new_body_356615, label %new_exit_356609

new_body_356615:
    br label %head_356618

head_356618:
    %iv_356621 = phi i32 [ 0, %new_body_356615 ], [ %fv_8_356641, %new_exit_356639 ]
    %_356623 = icmp ult i32 %iv_356621, 5
    %_356668 = trunc i32 %iv_356621 to i3
    %_356669 = zext i3 %_356668 to i64
    %_356671 = mul i64 20, %_356669
    %_356694 = add i64 %_356671, %_356692
    %_356874 = mul i64 2, %_356669
    %_356876 = add i64 1, %_356874
    %_356878 = mul i64 10, %_356876
    %_356880 = add i64 %_356692, %_356878
    %_357012.zext = zext i3 %_356668 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357012 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_357010, i64 0, i4 %_357012.zext
    br i1 %_356623, label %new_body_356630, label %new_exit_356624

new_body_356630:
    br label %head_356633

head_356633:
    %iv_356636 = phi i32 [ 0, %new_body_356630 ], [ %fv_8_356647, %new_body_356645 ]
    %_356638 = icmp ult i32 %iv_356636, 5
    br i1 %_356638, label %new_body_356645, label %new_exit_356639

new_body_356645:
    %fv_8_356647 = add nuw nsw i32 1, %iv_356636
    %_356664 = trunc i32 %iv_356636 to i3
    %_356665 = zext i3 %_356664 to i64
    %_356667 = mul i64 2, %_356665
    %_356696 = add i64 %_356667, %_356694
    %_356699 = udiv i64 %_356696, 1600
    %_356704 = urem i64 %_356699, 4096
    %_356706 = trunc i64 %_356704 to i12
    %_356717.zext = zext i12 %_356706 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356717 = getelementptr inbounds [4096 x [16 x [5 x [2 x [10 x float]]]]], [4096 x [16 x [5 x [2 x [10 x float]]]]] addrspace(0)* %_352093, i64 0, i13 %_356717.zext
    %_356721 = udiv i64 %_356696, 100
    %_356726 = urem i64 %_356721, 16
    %_356728 = trunc i64 %_356726 to i4
    %_356737.zext = zext i4 %_356728 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356737 = getelementptr inbounds [16 x [5 x [2 x [10 x float]]]], [16 x [5 x [2 x [10 x float]]]] addrspace(0)* %_356717, i64 0, i5 %_356737.zext
    %_356741 = udiv i64 %_356696, 20
    %_356746 = urem i64 %_356741, 5
    %_356748 = trunc i64 %_356746 to i3
    %_356757.zext = zext i3 %_356748 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356757 = getelementptr inbounds [5 x [2 x [10 x float]]], [5 x [2 x [10 x float]]] addrspace(0)* %_356737, i64 0, i4 %_356757.zext
    %_356762 = udiv i64 %_356696, 10
    %_356767 = urem i64 %_356762, 2
    %_356769 = trunc i64 %_356767 to i1
    %_356778.zext = zext i1 %_356769 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356778 = getelementptr inbounds [2 x [10 x float]], [2 x [10 x float]] addrspace(0)* %_356757, i64 0, i2 %_356778.zext
    %_356781 = urem i64 %_356696, 10
    %_356785 = trunc i64 %_356781 to i4
    %_356806.zext = zext i4 %_356785 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356806 = getelementptr inbounds [10 x float], [10 x float] addrspace(0)* %_356778, i64 0, i5 %_356806.zext
    %_356808 = load float, float addrspace(0)* %_356806
    %_356811 = add i64 1, %_356696
    %_356814 = udiv i64 %_356811, 1600
    %_356819 = urem i64 %_356814, 4096
    %_356821 = trunc i64 %_356819 to i12
    %_356823.zext = zext i12 %_356821 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356823 = getelementptr inbounds [4096 x [16 x [5 x [2 x [10 x float]]]]], [4096 x [16 x [5 x [2 x [10 x float]]]]] addrspace(0)* %_352093, i64 0, i13 %_356823.zext
    %_356827 = udiv i64 %_356811, 100
    %_356832 = urem i64 %_356827, 16
    %_356834 = trunc i64 %_356832 to i4
    %_356836.zext = zext i4 %_356834 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356836 = getelementptr inbounds [16 x [5 x [2 x [10 x float]]]], [16 x [5 x [2 x [10 x float]]]] addrspace(0)* %_356823, i64 0, i5 %_356836.zext
    %_356840 = udiv i64 %_356811, 20
    %_356845 = urem i64 %_356840, 5
    %_356847 = trunc i64 %_356845 to i3
    %_356849.zext = zext i3 %_356847 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356849 = getelementptr inbounds [5 x [2 x [10 x float]]], [5 x [2 x [10 x float]]] addrspace(0)* %_356836, i64 0, i4 %_356849.zext
    %_356853 = udiv i64 %_356811, 10
    %_356858 = urem i64 %_356853, 2
    %_356860 = trunc i64 %_356858 to i1
    %_356862.zext = zext i1 %_356860 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356862 = getelementptr inbounds [2 x [10 x float]], [2 x [10 x float]] addrspace(0)* %_356849, i64 0, i2 %_356862.zext
    %_356865 = urem i64 %_356811, 10
    %_356867 = trunc i64 %_356865 to i4
    %_356869.zext = zext i4 %_356867 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356869 = getelementptr inbounds [10 x float], [10 x float] addrspace(0)* %_356862, i64 0, i5 %_356869.zext
    %_356871 = load float, float addrspace(0)* %_356869
    %_356882 = add i64 %_356667, %_356880
    %_356885 = udiv i64 %_356882, 1600
    %_356890 = urem i64 %_356885, 4096
    %_356892 = trunc i64 %_356890 to i12
    %_356894.zext = zext i12 %_356892 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356894 = getelementptr inbounds [4096 x [16 x [5 x [2 x [10 x float]]]]], [4096 x [16 x [5 x [2 x [10 x float]]]]] addrspace(0)* %_352093, i64 0, i13 %_356894.zext
    %_356898 = udiv i64 %_356882, 100
    %_356903 = urem i64 %_356898, 16
    %_356905 = trunc i64 %_356903 to i4
    %_356907.zext = zext i4 %_356905 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356907 = getelementptr inbounds [16 x [5 x [2 x [10 x float]]]], [16 x [5 x [2 x [10 x float]]]] addrspace(0)* %_356894, i64 0, i5 %_356907.zext
    %_356911 = udiv i64 %_356882, 20
    %_356916 = urem i64 %_356911, 5
    %_356918 = trunc i64 %_356916 to i3
    %_356920.zext = zext i3 %_356918 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356920 = getelementptr inbounds [5 x [2 x [10 x float]]], [5 x [2 x [10 x float]]] addrspace(0)* %_356907, i64 0, i4 %_356920.zext
    %_356924 = udiv i64 %_356882, 10
    %_356929 = urem i64 %_356924, 2
    %_356931 = trunc i64 %_356929 to i1
    %_356933.zext = zext i1 %_356931 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356933 = getelementptr inbounds [2 x [10 x float]], [2 x [10 x float]] addrspace(0)* %_356920, i64 0, i2 %_356933.zext
    %_356936 = urem i64 %_356882, 10
    %_356938 = trunc i64 %_356936 to i4
    %_356940.zext = zext i4 %_356938 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356940 = getelementptr inbounds [10 x float], [10 x float] addrspace(0)* %_356933, i64 0, i5 %_356940.zext
    %_356942 = load float, float addrspace(0)* %_356940
    %_356945 = add i64 1, %_356882
    %_356948 = udiv i64 %_356945, 1600
    %_356953 = urem i64 %_356948, 4096
    %_356955 = trunc i64 %_356953 to i12
    %_356957.zext = zext i12 %_356955 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356957 = getelementptr inbounds [4096 x [16 x [5 x [2 x [10 x float]]]]], [4096 x [16 x [5 x [2 x [10 x float]]]]] addrspace(0)* %_352093, i64 0, i13 %_356957.zext
    %_356961 = udiv i64 %_356945, 100
    %_356966 = urem i64 %_356961, 16
    %_356968 = trunc i64 %_356966 to i4
    %_356970.zext = zext i4 %_356968 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356970 = getelementptr inbounds [16 x [5 x [2 x [10 x float]]]], [16 x [5 x [2 x [10 x float]]]] addrspace(0)* %_356957, i64 0, i5 %_356970.zext
    %_356974 = udiv i64 %_356945, 20
    %_356979 = urem i64 %_356974, 5
    %_356981 = trunc i64 %_356979 to i3
    %_356983.zext = zext i3 %_356981 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356983 = getelementptr inbounds [5 x [2 x [10 x float]]], [5 x [2 x [10 x float]]] addrspace(0)* %_356970, i64 0, i4 %_356983.zext
    %_356987 = udiv i64 %_356945, 10
    %_356992 = urem i64 %_356987, 2
    %_356994 = trunc i64 %_356992 to i1
    %_356996.zext = zext i1 %_356994 to i2 ; add one more bit for gep index as it is treated as signed value
    %_356996 = getelementptr inbounds [2 x [10 x float]], [2 x [10 x float]] addrspace(0)* %_356983, i64 0, i2 %_356996.zext
    %_356999 = urem i64 %_356945, 10
    %_357001 = trunc i64 %_356999 to i4
    %_357003.zext = zext i4 %_357001 to i5 ; add one more bit for gep index as it is treated as signed value
    %_357003 = getelementptr inbounds [10 x float], [10 x float] addrspace(0)* %_356996, i64 0, i5 %_357003.zext
    %_357005 = load float, float addrspace(0)* %_357003
    %_357014.zext = zext i3 %_356664 to i4 ; add one more bit for gep index as it is treated as signed value
    %_357014 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_357012, i64 0, i4 %_357014.zext
    %a2_357018 = tail call float @llvm.maxnum.f32(float 0xfff0000000000000, float %_356808)
    %a2_357021 = tail call float @llvm.maxnum.f32(float %a2_357018, float %_356871)
    %a2_357024 = tail call float @llvm.maxnum.f32(float %a2_357021, float %_356942)
    %v_357027 = tail call float @llvm.maxnum.f32(float %a2_357024, float %_357005)
    store float %v_357027, float addrspace(0)* %_357014
    br label %head_356633

new_exit_356639:
    %fv_8_356641 = add nuw nsw i32 1, %iv_356621
    br label %head_356618

new_exit_356624:
    %fv_8_356626 = add nuw nsw i32 1, %iv_356605
    br label %head_356602

new_exit_356609:
    %fv_8_356611 = add nuw nsw i32 1, %iv_352126
    br label %head_352123

new_exit_352129:
    %_352143i8 = call i8* @malloc(i64 1966080)
    %_352143 = bitcast i8* %_352143i8 to [2048 x [2 x [30 x [4 x float]]]] addrspace(0)*
    %_352152i8 = call i8* @malloc(i64 32)
    %_352152 = bitcast i8* %_352152i8 to [8 x float] addrspace(0)*
    %fv_0_355256.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355256 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355256.zext
    %fv_0_355260.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355260 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355260.zext
    %fv_0_355264.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355264 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355264.zext
    %fv_0_355268.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355268 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355268.zext
    %fv_0_355272.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355272 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355272.zext
    %fv_0_355276.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355276 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355276.zext
    %fv_0_355280.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355280 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355280.zext
    %fv_0_355284.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_355284 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352152, i64 0, i4 %fv_0_355284.zext
    br label %head_352155

head_352155:
    %iv_352158 = phi i32 [ 0, %new_exit_352129 ], [ %fv_10_355248, %new_exit_355246 ]
    %_352161 = icmp ult i32 %iv_352158, 2048
    %_355305 = trunc i32 %iv_352158 to i11
    %_355306 = zext i11 %_355305 to i64
    %_355994 = mul i64 800, %_355306
    %t_355308 = mul i64 2, %_355306
    %t_355648 = add i64 1, %t_355308
    %_356342 = mul i64 400, %t_355648
    br i1 %_352161, label %new_body_355236, label %new_exit_352162

new_body_355236:
    br label %head_355239

head_355239:
    %iv_355242 = phi i32 [ 0, %new_body_355236 ], [ %fv_10_355298, %new_exit_355296 ]
    %_355245 = icmp ult i32 %iv_355242, 30
    %_355326 = trunc i32 %iv_355242 to i5
    %_355334 = zext i5 %_355326 to i64
    %t_355336 = mul i64 4, %_355334
    %_356106 = trunc i64 %t_355336 to i7
    %_356117.zext = zext i7 %_356106 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356117 = getelementptr inbounds [120 x [400 x float]], [120 x [400 x float]] addrspace(0)* %l_self_modules_fc1_parameters_weight__356105, i64 0, i8 %_356117.zext
    %t_355419 = add i64 1, %t_355336
    %_356191 = trunc i64 %t_355419 to i7
    %_356193.zext = zext i7 %_356191 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356193 = getelementptr inbounds [120 x [400 x float]], [120 x [400 x float]] addrspace(0)* %l_self_modules_fc1_parameters_weight__356105, i64 0, i8 %_356193.zext
    %t_355500 = add i64 2, %t_355336
    %_356256 = trunc i64 %t_355500 to i7
    %_356258.zext = zext i7 %_356256 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356258 = getelementptr inbounds [120 x [400 x float]], [120 x [400 x float]] addrspace(0)* %l_self_modules_fc1_parameters_weight__356105, i64 0, i8 %_356258.zext
    %t_355581 = add i64 3, %t_355336
    %_356321 = trunc i64 %t_355581 to i7
    %_356323.zext = zext i7 %_356321 to i8 ; add one more bit for gep index as it is treated as signed value
    %_356323 = getelementptr inbounds [120 x [400 x float]], [120 x [400 x float]] addrspace(0)* %l_self_modules_fc1_parameters_weight__356105, i64 0, i8 %_356323.zext
    br i1 %_355245, label %new_body_355252, label %new_exit_355246

new_body_355252:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355256
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355260
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355264
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355268
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355272
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355276
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355280
    store float 0x0000000000000000, float addrspace(0)* %fv_0_355284
    br label %head_355288, !llvm.loop !1004

head_355288:
    %iv_355291 = phi i32 [ 0, %new_body_355252 ], [ %fv_9_355963, %new_body_355961 ]
    %_355294 = icmp ult i32 %iv_355291, 400
    br i1 %_355294, label %new_body_355961, label %new_exit_355296

new_body_355961:
    %fv_9_355963 = add nuw nsw i32 1, %iv_355291
    %_355966 = load float, float addrspace(0)* %fv_0_355256
    %_355983 = trunc i32 %iv_355291 to i9
    %_355991 = zext i9 %_355983 to i64
    %_355996 = add i64 %_355991, %_355994
    %_356000 = udiv i64 %_355996, 400
    %_356005 = urem i64 %_356000, 4096
    %_356009 = trunc i64 %_356005 to i12
    %_356020.zext = zext i12 %_356009 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356020 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356020.zext
    %_356025 = udiv i64 %_355996, 25
    %_356031 = urem i64 %_356025, 16
    %_356035 = trunc i64 %_356031 to i4
    %_356062.zext = zext i4 %_356035 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356062 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356020, i64 0, i5 %_356062.zext
    %_356066 = udiv i64 %_355996, 5
    %_356071 = urem i64 %_356066, 5
    %_356073 = trunc i64 %_356071 to i3
    %_356082.zext = zext i3 %_356073 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356082 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356062, i64 0, i4 %_356082.zext
    %_356085 = urem i64 %_355996, 5
    %_356087 = trunc i64 %_356085 to i3
    %_356096.zext = zext i3 %_356087 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356096 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356082, i64 0, i4 %_356096.zext
    %_356098 = load float, float addrspace(0)* %_356096
    %_356130.zext = zext i9 %_355983 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356130 = getelementptr inbounds [400 x float], [400 x float] addrspace(0)* %_356117, i64 0, i10 %_356130.zext
    %_356132 = load float, float addrspace(0)* %_356130
    %_356137 = fmul fast float %_356132, %_356098
    %accn_356140 = fadd fast float %_356137, %_355966
    store float %accn_356140, float addrspace(0)* %fv_0_355256
    %_356144 = load float, float addrspace(0)* %fv_0_355260
    %_356147 = udiv i64 %_355996, 400
    %_356152 = urem i64 %_356147, 4096
    %_356154 = trunc i64 %_356152 to i12
    %_356156.zext = zext i12 %_356154 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356156 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356156.zext
    %_356159 = udiv i64 %_355996, 25
    %_356164 = urem i64 %_356159, 16
    %_356166 = trunc i64 %_356164 to i4
    %_356168.zext = zext i4 %_356166 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356168 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356156, i64 0, i5 %_356168.zext
    %_356171 = udiv i64 %_355996, 5
    %_356176 = urem i64 %_356171, 5
    %_356178 = trunc i64 %_356176 to i3
    %_356180.zext = zext i3 %_356178 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356180 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356168, i64 0, i4 %_356180.zext
    %_356183 = urem i64 %_355996, 5
    %_356185 = trunc i64 %_356183 to i3
    %_356187.zext = zext i3 %_356185 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356187 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356180, i64 0, i4 %_356187.zext
    %_356189 = load float, float addrspace(0)* %_356187
    %_356195.zext = zext i9 %_355983 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356195 = getelementptr inbounds [400 x float], [400 x float] addrspace(0)* %_356193, i64 0, i10 %_356195.zext
    %_356197 = load float, float addrspace(0)* %_356195
    %_356202 = fmul fast float %_356197, %_356189
    %accn_356205 = fadd fast float %_356202, %_356144
    store float %accn_356205, float addrspace(0)* %fv_0_355260
    %_356209 = load float, float addrspace(0)* %fv_0_355264
    %_356212 = udiv i64 %_355996, 400
    %_356217 = urem i64 %_356212, 4096
    %_356219 = trunc i64 %_356217 to i12
    %_356221.zext = zext i12 %_356219 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356221 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356221.zext
    %_356224 = udiv i64 %_355996, 25
    %_356229 = urem i64 %_356224, 16
    %_356231 = trunc i64 %_356229 to i4
    %_356233.zext = zext i4 %_356231 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356233 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356221, i64 0, i5 %_356233.zext
    %_356236 = udiv i64 %_355996, 5
    %_356241 = urem i64 %_356236, 5
    %_356243 = trunc i64 %_356241 to i3
    %_356245.zext = zext i3 %_356243 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356245 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356233, i64 0, i4 %_356245.zext
    %_356248 = urem i64 %_355996, 5
    %_356250 = trunc i64 %_356248 to i3
    %_356252.zext = zext i3 %_356250 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356252 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356245, i64 0, i4 %_356252.zext
    %_356254 = load float, float addrspace(0)* %_356252
    %_356260.zext = zext i9 %_355983 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356260 = getelementptr inbounds [400 x float], [400 x float] addrspace(0)* %_356258, i64 0, i10 %_356260.zext
    %_356262 = load float, float addrspace(0)* %_356260
    %_356267 = fmul fast float %_356262, %_356254
    %accn_356270 = fadd fast float %_356267, %_356209
    store float %accn_356270, float addrspace(0)* %fv_0_355264
    %_356274 = load float, float addrspace(0)* %fv_0_355268
    %_356277 = udiv i64 %_355996, 400
    %_356282 = urem i64 %_356277, 4096
    %_356284 = trunc i64 %_356282 to i12
    %_356286.zext = zext i12 %_356284 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356286 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356286.zext
    %_356289 = udiv i64 %_355996, 25
    %_356294 = urem i64 %_356289, 16
    %_356296 = trunc i64 %_356294 to i4
    %_356298.zext = zext i4 %_356296 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356298 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356286, i64 0, i5 %_356298.zext
    %_356301 = udiv i64 %_355996, 5
    %_356306 = urem i64 %_356301, 5
    %_356308 = trunc i64 %_356306 to i3
    %_356310.zext = zext i3 %_356308 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356310 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356298, i64 0, i4 %_356310.zext
    %_356313 = urem i64 %_355996, 5
    %_356315 = trunc i64 %_356313 to i3
    %_356317.zext = zext i3 %_356315 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356317 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356310, i64 0, i4 %_356317.zext
    %_356319 = load float, float addrspace(0)* %_356317
    %_356325.zext = zext i9 %_355983 to i10 ; add one more bit for gep index as it is treated as signed value
    %_356325 = getelementptr inbounds [400 x float], [400 x float] addrspace(0)* %_356323, i64 0, i10 %_356325.zext
    %_356327 = load float, float addrspace(0)* %_356325
    %_356332 = fmul fast float %_356327, %_356319
    %accn_356335 = fadd fast float %_356332, %_356274
    store float %accn_356335, float addrspace(0)* %fv_0_355268
    %_356339 = load float, float addrspace(0)* %fv_0_355272
    %_356344 = add i64 %_355991, %_356342
    %_356347 = udiv i64 %_356344, 400
    %_356352 = urem i64 %_356347, 4096
    %_356354 = trunc i64 %_356352 to i12
    %_356356.zext = zext i12 %_356354 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356356 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356356.zext
    %_356360 = udiv i64 %_356344, 25
    %_356365 = urem i64 %_356360, 16
    %_356367 = trunc i64 %_356365 to i4
    %_356369.zext = zext i4 %_356367 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356369 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356356, i64 0, i5 %_356369.zext
    %_356373 = udiv i64 %_356344, 5
    %_356378 = urem i64 %_356373, 5
    %_356380 = trunc i64 %_356378 to i3
    %_356382.zext = zext i3 %_356380 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356382 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356369, i64 0, i4 %_356382.zext
    %_356385 = urem i64 %_356344, 5
    %_356387 = trunc i64 %_356385 to i3
    %_356389.zext = zext i3 %_356387 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356389 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356382, i64 0, i4 %_356389.zext
    %_356391 = load float, float addrspace(0)* %_356389
    %_356394 = load float, float addrspace(0)* %_356130
    %_356399 = fmul fast float %_356394, %_356391
    %accn_356402 = fadd fast float %_356399, %_356339
    store float %accn_356402, float addrspace(0)* %fv_0_355272
    %_356406 = load float, float addrspace(0)* %fv_0_355276
    %_356409 = udiv i64 %_356344, 400
    %_356414 = urem i64 %_356409, 4096
    %_356416 = trunc i64 %_356414 to i12
    %_356418.zext = zext i12 %_356416 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356418 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356418.zext
    %_356421 = udiv i64 %_356344, 25
    %_356426 = urem i64 %_356421, 16
    %_356428 = trunc i64 %_356426 to i4
    %_356430.zext = zext i4 %_356428 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356430 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356418, i64 0, i5 %_356430.zext
    %_356433 = udiv i64 %_356344, 5
    %_356438 = urem i64 %_356433, 5
    %_356440 = trunc i64 %_356438 to i3
    %_356442.zext = zext i3 %_356440 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356442 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356430, i64 0, i4 %_356442.zext
    %_356445 = urem i64 %_356344, 5
    %_356447 = trunc i64 %_356445 to i3
    %_356449.zext = zext i3 %_356447 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356449 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356442, i64 0, i4 %_356449.zext
    %_356451 = load float, float addrspace(0)* %_356449
    %_356454 = load float, float addrspace(0)* %_356195
    %_356459 = fmul fast float %_356454, %_356451
    %accn_356462 = fadd fast float %_356459, %_356406
    store float %accn_356462, float addrspace(0)* %fv_0_355276
    %_356466 = load float, float addrspace(0)* %fv_0_355280
    %_356469 = udiv i64 %_356344, 400
    %_356474 = urem i64 %_356469, 4096
    %_356476 = trunc i64 %_356474 to i12
    %_356478.zext = zext i12 %_356476 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356478 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356478.zext
    %_356481 = udiv i64 %_356344, 25
    %_356486 = urem i64 %_356481, 16
    %_356488 = trunc i64 %_356486 to i4
    %_356490.zext = zext i4 %_356488 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356490 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356478, i64 0, i5 %_356490.zext
    %_356493 = udiv i64 %_356344, 5
    %_356498 = urem i64 %_356493, 5
    %_356500 = trunc i64 %_356498 to i3
    %_356502.zext = zext i3 %_356500 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356502 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356490, i64 0, i4 %_356502.zext
    %_356505 = urem i64 %_356344, 5
    %_356507 = trunc i64 %_356505 to i3
    %_356509.zext = zext i3 %_356507 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356509 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356502, i64 0, i4 %_356509.zext
    %_356511 = load float, float addrspace(0)* %_356509
    %_356514 = load float, float addrspace(0)* %_356260
    %_356519 = fmul fast float %_356514, %_356511
    %accn_356522 = fadd fast float %_356519, %_356466
    store float %accn_356522, float addrspace(0)* %fv_0_355280
    %_356526 = load float, float addrspace(0)* %fv_0_355284
    %_356529 = udiv i64 %_356344, 400
    %_356534 = urem i64 %_356529, 4096
    %_356536 = trunc i64 %_356534 to i12
    %_356538.zext = zext i12 %_356536 to i13 ; add one more bit for gep index as it is treated as signed value
    %_356538 = getelementptr inbounds [4096 x [16 x [5 x [5 x float]]]], [4096 x [16 x [5 x [5 x float]]]] addrspace(0)* %_352120, i64 0, i13 %_356538.zext
    %_356541 = udiv i64 %_356344, 25
    %_356546 = urem i64 %_356541, 16
    %_356548 = trunc i64 %_356546 to i4
    %_356550.zext = zext i4 %_356548 to i5 ; add one more bit for gep index as it is treated as signed value
    %_356550 = getelementptr inbounds [16 x [5 x [5 x float]]], [16 x [5 x [5 x float]]] addrspace(0)* %_356538, i64 0, i5 %_356550.zext
    %_356553 = udiv i64 %_356344, 5
    %_356558 = urem i64 %_356553, 5
    %_356560 = trunc i64 %_356558 to i3
    %_356562.zext = zext i3 %_356560 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356562 = getelementptr inbounds [5 x [5 x float]], [5 x [5 x float]] addrspace(0)* %_356550, i64 0, i4 %_356562.zext
    %_356565 = urem i64 %_356344, 5
    %_356567 = trunc i64 %_356565 to i3
    %_356569.zext = zext i3 %_356567 to i4 ; add one more bit for gep index as it is treated as signed value
    %_356569 = getelementptr inbounds [5 x float], [5 x float] addrspace(0)* %_356562, i64 0, i4 %_356569.zext
    %_356571 = load float, float addrspace(0)* %_356569
    %_356574 = load float, float addrspace(0)* %_356325
    %_356579 = fmul fast float %_356574, %_356571
    %accn_356582 = fadd fast float %_356579, %_356526
    store float %accn_356582, float addrspace(0)* %fv_0_355284
    br label %head_355288, !llvm.loop !1004

new_exit_355296:
    %fv_10_355298 = add nuw nsw i32 1, %iv_355242
    %_355301 = load float, float addrspace(0)* %fv_0_355256
    %_355311 = udiv i64 %t_355308, 2
    %_355314 = mul i64 240, %_355311
    %_355317 = urem i64 %t_355308, 2
    %_355320 = mul i64 120, %_355317
    %_355322 = add i64 %_355314, %_355320
    %_355339 = udiv i64 %t_355336, 4
    %_355342 = mul i64 4, %_355339
    %_355344 = add i64 %_355322, %_355342
    %_355347 = urem i64 %t_355336, 4
    %_355350 = add i64 %_355344, %_355347
    %_355353 = udiv i64 %_355350, 120
    %_355358 = urem i64 %_355353, 4096
    %_355361 = urem i64 %_355350, 120
    %_355366 = urem i64 %_355361, 120
    %_355371 = urem i64 %_355366, 120
    %_355375 = trunc i64 %_355371 to i7
    %_355377.zext = zext i7 %_355375 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355377 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355377.zext
    %_355379 = load float, float addrspace(0)* %_355377
    %_355381 = trunc i64 %_355311 to i11
    %_355383.zext = zext i11 %_355381 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355383 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355383.zext
    %_355384 = trunc i64 %_355317 to i1
    %_355386.zext = zext i1 %_355384 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355386 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355383, i64 0, i2 %_355386.zext
    %_355387 = trunc i64 %_355339 to i5
    %_355389.zext = zext i5 %_355387 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355389 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355386, i64 0, i6 %_355389.zext
    %_355390 = trunc i64 %_355347 to i2
    %_355392.zext = zext i2 %_355390 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355392 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355389, i64 0, i3 %_355392.zext
    %_355396 = fadd fast float %_355301, %_355379
    %_355398 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355396)
    store float %_355398, float addrspace(0)* %_355392
    %_355402 = load float, float addrspace(0)* %fv_0_355260
    %_355405 = udiv i64 %t_355308, 2
    %_355408 = mul i64 240, %_355405
    %_355411 = urem i64 %t_355308, 2
    %_355414 = mul i64 120, %_355411
    %_355416 = add i64 %_355408, %_355414
    %_355422 = udiv i64 %t_355419, 4
    %_355425 = mul i64 4, %_355422
    %_355427 = add i64 %_355416, %_355425
    %_355430 = urem i64 %t_355419, 4
    %_355433 = add i64 %_355427, %_355430
    %_355436 = udiv i64 %_355433, 120
    %_355441 = urem i64 %_355436, 4096
    %_355444 = urem i64 %_355433, 120
    %_355449 = urem i64 %_355444, 120
    %_355454 = urem i64 %_355449, 120
    %_355456 = trunc i64 %_355454 to i7
    %_355458.zext = zext i7 %_355456 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355458 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355458.zext
    %_355460 = load float, float addrspace(0)* %_355458
    %_355462 = trunc i64 %_355405 to i11
    %_355464.zext = zext i11 %_355462 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355464 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355464.zext
    %_355465 = trunc i64 %_355411 to i1
    %_355467.zext = zext i1 %_355465 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355467 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355464, i64 0, i2 %_355467.zext
    %_355468 = trunc i64 %_355422 to i5
    %_355470.zext = zext i5 %_355468 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355470 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355467, i64 0, i6 %_355470.zext
    %_355471 = trunc i64 %_355430 to i2
    %_355473.zext = zext i2 %_355471 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355473 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355470, i64 0, i3 %_355473.zext
    %_355477 = fadd fast float %_355402, %_355460
    %_355479 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355477)
    store float %_355479, float addrspace(0)* %_355473
    %_355483 = load float, float addrspace(0)* %fv_0_355264
    %_355486 = udiv i64 %t_355308, 2
    %_355489 = mul i64 240, %_355486
    %_355492 = urem i64 %t_355308, 2
    %_355495 = mul i64 120, %_355492
    %_355497 = add i64 %_355489, %_355495
    %_355503 = udiv i64 %t_355500, 4
    %_355506 = mul i64 4, %_355503
    %_355508 = add i64 %_355497, %_355506
    %_355511 = urem i64 %t_355500, 4
    %_355514 = add i64 %_355508, %_355511
    %_355517 = udiv i64 %_355514, 120
    %_355522 = urem i64 %_355517, 4096
    %_355525 = urem i64 %_355514, 120
    %_355530 = urem i64 %_355525, 120
    %_355535 = urem i64 %_355530, 120
    %_355537 = trunc i64 %_355535 to i7
    %_355539.zext = zext i7 %_355537 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355539 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355539.zext
    %_355541 = load float, float addrspace(0)* %_355539
    %_355543 = trunc i64 %_355486 to i11
    %_355545.zext = zext i11 %_355543 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355545 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355545.zext
    %_355546 = trunc i64 %_355492 to i1
    %_355548.zext = zext i1 %_355546 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355548 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355545, i64 0, i2 %_355548.zext
    %_355549 = trunc i64 %_355503 to i5
    %_355551.zext = zext i5 %_355549 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355551 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355548, i64 0, i6 %_355551.zext
    %_355552 = trunc i64 %_355511 to i2
    %_355554.zext = zext i2 %_355552 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355554 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355551, i64 0, i3 %_355554.zext
    %_355558 = fadd fast float %_355483, %_355541
    %_355560 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355558)
    store float %_355560, float addrspace(0)* %_355554
    %_355564 = load float, float addrspace(0)* %fv_0_355268
    %_355567 = udiv i64 %t_355308, 2
    %_355570 = mul i64 240, %_355567
    %_355573 = urem i64 %t_355308, 2
    %_355576 = mul i64 120, %_355573
    %_355578 = add i64 %_355570, %_355576
    %_355584 = udiv i64 %t_355581, 4
    %_355587 = mul i64 4, %_355584
    %_355589 = add i64 %_355578, %_355587
    %_355592 = urem i64 %t_355581, 4
    %_355595 = add i64 %_355589, %_355592
    %_355598 = udiv i64 %_355595, 120
    %_355603 = urem i64 %_355598, 4096
    %_355606 = urem i64 %_355595, 120
    %_355611 = urem i64 %_355606, 120
    %_355616 = urem i64 %_355611, 120
    %_355618 = trunc i64 %_355616 to i7
    %_355620.zext = zext i7 %_355618 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355620 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355620.zext
    %_355622 = load float, float addrspace(0)* %_355620
    %_355624 = trunc i64 %_355567 to i11
    %_355626.zext = zext i11 %_355624 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355626 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355626.zext
    %_355627 = trunc i64 %_355573 to i1
    %_355629.zext = zext i1 %_355627 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355629 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355626, i64 0, i2 %_355629.zext
    %_355630 = trunc i64 %_355584 to i5
    %_355632.zext = zext i5 %_355630 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355632 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355629, i64 0, i6 %_355632.zext
    %_355633 = trunc i64 %_355592 to i2
    %_355635.zext = zext i2 %_355633 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355635 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355632, i64 0, i3 %_355635.zext
    %_355639 = fadd fast float %_355564, %_355622
    %_355641 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355639)
    store float %_355641, float addrspace(0)* %_355635
    %_355645 = load float, float addrspace(0)* %fv_0_355272
    %_355651 = udiv i64 %t_355648, 2
    %_355654 = mul i64 240, %_355651
    %_355657 = urem i64 %t_355648, 2
    %_355660 = mul i64 120, %_355657
    %_355662 = add i64 %_355654, %_355660
    %_355665 = udiv i64 %t_355336, 4
    %_355668 = mul i64 4, %_355665
    %_355670 = add i64 %_355662, %_355668
    %_355673 = urem i64 %t_355336, 4
    %_355676 = add i64 %_355670, %_355673
    %_355679 = udiv i64 %_355676, 120
    %_355684 = urem i64 %_355679, 4096
    %_355687 = urem i64 %_355676, 120
    %_355692 = urem i64 %_355687, 120
    %_355697 = urem i64 %_355692, 120
    %_355699 = trunc i64 %_355697 to i7
    %_355701.zext = zext i7 %_355699 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355701 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355701.zext
    %_355703 = load float, float addrspace(0)* %_355701
    %_355705 = trunc i64 %_355651 to i11
    %_355707.zext = zext i11 %_355705 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355707 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355707.zext
    %_355708 = trunc i64 %_355657 to i1
    %_355710.zext = zext i1 %_355708 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355710 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355707, i64 0, i2 %_355710.zext
    %_355711 = trunc i64 %_355665 to i5
    %_355713.zext = zext i5 %_355711 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355713 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355710, i64 0, i6 %_355713.zext
    %_355714 = trunc i64 %_355673 to i2
    %_355716.zext = zext i2 %_355714 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355716 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355713, i64 0, i3 %_355716.zext
    %_355720 = fadd fast float %_355645, %_355703
    %_355722 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355720)
    store float %_355722, float addrspace(0)* %_355716
    %_355726 = load float, float addrspace(0)* %fv_0_355276
    %_355729 = udiv i64 %t_355648, 2
    %_355732 = mul i64 240, %_355729
    %_355735 = urem i64 %t_355648, 2
    %_355738 = mul i64 120, %_355735
    %_355740 = add i64 %_355732, %_355738
    %_355743 = udiv i64 %t_355419, 4
    %_355746 = mul i64 4, %_355743
    %_355748 = add i64 %_355740, %_355746
    %_355751 = urem i64 %t_355419, 4
    %_355754 = add i64 %_355748, %_355751
    %_355757 = udiv i64 %_355754, 120
    %_355762 = urem i64 %_355757, 4096
    %_355765 = urem i64 %_355754, 120
    %_355770 = urem i64 %_355765, 120
    %_355775 = urem i64 %_355770, 120
    %_355777 = trunc i64 %_355775 to i7
    %_355779.zext = zext i7 %_355777 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355779 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355779.zext
    %_355781 = load float, float addrspace(0)* %_355779
    %_355783 = trunc i64 %_355729 to i11
    %_355785.zext = zext i11 %_355783 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355785 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355785.zext
    %_355786 = trunc i64 %_355735 to i1
    %_355788.zext = zext i1 %_355786 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355788 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355785, i64 0, i2 %_355788.zext
    %_355789 = trunc i64 %_355743 to i5
    %_355791.zext = zext i5 %_355789 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355791 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355788, i64 0, i6 %_355791.zext
    %_355792 = trunc i64 %_355751 to i2
    %_355794.zext = zext i2 %_355792 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355794 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355791, i64 0, i3 %_355794.zext
    %_355798 = fadd fast float %_355726, %_355781
    %_355800 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355798)
    store float %_355800, float addrspace(0)* %_355794
    %_355804 = load float, float addrspace(0)* %fv_0_355280
    %_355807 = udiv i64 %t_355648, 2
    %_355810 = mul i64 240, %_355807
    %_355813 = urem i64 %t_355648, 2
    %_355816 = mul i64 120, %_355813
    %_355818 = add i64 %_355810, %_355816
    %_355821 = udiv i64 %t_355500, 4
    %_355824 = mul i64 4, %_355821
    %_355826 = add i64 %_355818, %_355824
    %_355829 = urem i64 %t_355500, 4
    %_355832 = add i64 %_355826, %_355829
    %_355835 = udiv i64 %_355832, 120
    %_355840 = urem i64 %_355835, 4096
    %_355843 = urem i64 %_355832, 120
    %_355848 = urem i64 %_355843, 120
    %_355853 = urem i64 %_355848, 120
    %_355855 = trunc i64 %_355853 to i7
    %_355857.zext = zext i7 %_355855 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355857 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355857.zext
    %_355859 = load float, float addrspace(0)* %_355857
    %_355861 = trunc i64 %_355807 to i11
    %_355863.zext = zext i11 %_355861 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355863 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355863.zext
    %_355864 = trunc i64 %_355813 to i1
    %_355866.zext = zext i1 %_355864 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355866 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355863, i64 0, i2 %_355866.zext
    %_355867 = trunc i64 %_355821 to i5
    %_355869.zext = zext i5 %_355867 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355869 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355866, i64 0, i6 %_355869.zext
    %_355870 = trunc i64 %_355829 to i2
    %_355872.zext = zext i2 %_355870 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355872 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355869, i64 0, i3 %_355872.zext
    %_355876 = fadd fast float %_355804, %_355859
    %_355878 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355876)
    store float %_355878, float addrspace(0)* %_355872
    %_355882 = load float, float addrspace(0)* %fv_0_355284
    %_355885 = udiv i64 %t_355648, 2
    %_355888 = mul i64 240, %_355885
    %_355891 = urem i64 %t_355648, 2
    %_355894 = mul i64 120, %_355891
    %_355896 = add i64 %_355888, %_355894
    %_355899 = udiv i64 %t_355581, 4
    %_355902 = mul i64 4, %_355899
    %_355904 = add i64 %_355896, %_355902
    %_355907 = urem i64 %t_355581, 4
    %_355910 = add i64 %_355904, %_355907
    %_355913 = udiv i64 %_355910, 120
    %_355918 = urem i64 %_355913, 4096
    %_355921 = urem i64 %_355910, 120
    %_355926 = urem i64 %_355921, 120
    %_355931 = urem i64 %_355926, 120
    %_355933 = trunc i64 %_355931 to i7
    %_355935.zext = zext i7 %_355933 to i8 ; add one more bit for gep index as it is treated as signed value
    %_355935 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %l_self_modules_fc1_parameters_bias__355304, i64 0, i8 %_355935.zext
    %_355937 = load float, float addrspace(0)* %_355935
    %_355939 = trunc i64 %_355885 to i11
    %_355941.zext = zext i11 %_355939 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355941 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355941.zext
    %_355942 = trunc i64 %_355891 to i1
    %_355944.zext = zext i1 %_355942 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355944 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355941, i64 0, i2 %_355944.zext
    %_355945 = trunc i64 %_355899 to i5
    %_355947.zext = zext i5 %_355945 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355947 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355944, i64 0, i6 %_355947.zext
    %_355948 = trunc i64 %_355907 to i2
    %_355950.zext = zext i2 %_355948 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355950 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355947, i64 0, i3 %_355950.zext
    %_355954 = fadd fast float %_355882, %_355937
    %_355956 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_355954)
    store float %_355956, float addrspace(0)* %_355950
    br label %head_355239

new_exit_355246:
    %fv_10_355248 = add nuw nsw i32 1, %iv_352158
    br label %head_352155

new_exit_352162:
    %_352175i8 = call i8* @malloc(i64 1376256)
    %_352175 = bitcast i8* %_352175i8 to [2048 x [2 x [21 x [4 x float]]]] addrspace(0)*
    %_352178i8 = call i8* @malloc(i64 32)
    %_352178 = bitcast i8* %_352178i8 to [8 x float] addrspace(0)*
    %fv_0_353892.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353892 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353892.zext
    %fv_0_353896.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353896 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353896.zext
    %fv_0_353900.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353900 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353900.zext
    %fv_0_353904.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353904 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353904.zext
    %fv_0_353908.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353908 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353908.zext
    %fv_0_353912.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353912 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353912.zext
    %fv_0_353916.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353916 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353916.zext
    %fv_0_353920.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353920 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352178, i64 0, i4 %fv_0_353920.zext
    br label %head_352181

head_352181:
    %iv_352184 = phi i32 [ 0, %new_exit_352162 ], [ %fv_10_353884, %new_exit_353882 ]
    %_352186 = icmp ult i32 %iv_352184, 2048
    %_353941 = trunc i32 %iv_352184 to i11
    %_353942 = zext i11 %_353941 to i64
    %_354629 = mul i64 240, %_353942
    %t_353944 = mul i64 2, %_353942
    %t_354286 = add i64 1, %t_353944
    %_354979 = mul i64 120, %t_354286
    br i1 %_352186, label %new_body_353872, label %new_exit_352187

new_body_353872:
    br label %head_353875

head_353875:
    %iv_353878 = phi i32 [ 0, %new_body_353872 ], [ %fv_10_353934, %new_exit_353932 ]
    %_353881 = icmp ult i32 %iv_353878, 21
    %_353962 = trunc i32 %iv_353878 to i5
    %_353970 = zext i5 %_353962 to i64
    %t_353972 = mul i64 4, %_353970
    %_354743 = trunc i64 %t_353972 to i7
    %_354754.zext = zext i7 %_354743 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354754 = getelementptr inbounds [84 x [120 x float]], [84 x [120 x float]] addrspace(0)* %l_self_modules_fc2_parameters_weight__354742, i64 0, i8 %_354754.zext
    %t_354057 = add i64 1, %t_353972
    %_354828 = trunc i64 %t_354057 to i7
    %_354830.zext = zext i7 %_354828 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354830 = getelementptr inbounds [84 x [120 x float]], [84 x [120 x float]] addrspace(0)* %l_self_modules_fc2_parameters_weight__354742, i64 0, i8 %_354830.zext
    %t_354138 = add i64 2, %t_353972
    %_354893 = trunc i64 %t_354138 to i7
    %_354895.zext = zext i7 %_354893 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354895 = getelementptr inbounds [84 x [120 x float]], [84 x [120 x float]] addrspace(0)* %l_self_modules_fc2_parameters_weight__354742, i64 0, i8 %_354895.zext
    %t_354219 = add i64 3, %t_353972
    %_354958 = trunc i64 %t_354219 to i7
    %_354960.zext = zext i7 %_354958 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354960 = getelementptr inbounds [84 x [120 x float]], [84 x [120 x float]] addrspace(0)* %l_self_modules_fc2_parameters_weight__354742, i64 0, i8 %_354960.zext
    br i1 %_353881, label %new_body_353888, label %new_exit_353882

new_body_353888:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353892
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353896
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353900
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353904
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353908
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353912
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353916
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353920
    br label %head_353924, !llvm.loop !1005

head_353924:
    %iv_353927 = phi i32 [ 0, %new_body_353888 ], [ %fv_9_354601, %new_body_354599 ]
    %_353930 = icmp ult i32 %iv_353927, 120
    br i1 %_353930, label %new_body_354599, label %new_exit_353932

new_body_354599:
    %fv_9_354601 = add nuw nsw i32 1, %iv_353927
    %_354604 = load float, float addrspace(0)* %fv_0_353892
    %_354618 = trunc i32 %iv_353927 to i7
    %_354626 = zext i7 %_354618 to i64
    %_354631 = add i64 %_354626, %_354629
    %_354634 = udiv i64 %_354631, 240
    %_354639 = urem i64 %_354634, 2048
    %_354641 = trunc i64 %_354639 to i11
    %_354652.zext = zext i11 %_354641 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354652 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_354652.zext
    %_354657 = udiv i64 %_354631, 120
    %_354662 = urem i64 %_354657, 2
    %_354664 = trunc i64 %_354662 to i1
    %_354673.zext = zext i1 %_354664 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354673 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_354652, i64 0, i2 %_354673.zext
    %_354677 = udiv i64 %_354631, 4
    %_354683 = urem i64 %_354677, 30
    %_354687 = trunc i64 %_354683 to i5
    %_354728.zext = zext i5 %_354687 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354728 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_354673, i64 0, i6 %_354728.zext
    %_354731 = urem i64 %_354631, 4
    %_354733 = trunc i64 %_354731 to i2
    %_354735.zext = zext i2 %_354733 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354735 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354728, i64 0, i3 %_354735.zext
    %_354737 = load float, float addrspace(0)* %_354735
    %_354767.zext = zext i7 %_354618 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354767 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %_354754, i64 0, i8 %_354767.zext
    %_354769 = load float, float addrspace(0)* %_354767
    %_354774 = fmul fast float %_354769, %_354737
    %accn_354777 = fadd fast float %_354774, %_354604
    store float %accn_354777, float addrspace(0)* %fv_0_353892
    %_354781 = load float, float addrspace(0)* %fv_0_353896
    %_354784 = udiv i64 %_354631, 240
    %_354789 = urem i64 %_354784, 2048
    %_354791 = trunc i64 %_354789 to i11
    %_354793.zext = zext i11 %_354791 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354793 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_354793.zext
    %_354796 = udiv i64 %_354631, 120
    %_354801 = urem i64 %_354796, 2
    %_354803 = trunc i64 %_354801 to i1
    %_354805.zext = zext i1 %_354803 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354805 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_354793, i64 0, i2 %_354805.zext
    %_354808 = udiv i64 %_354631, 4
    %_354813 = urem i64 %_354808, 30
    %_354815 = trunc i64 %_354813 to i5
    %_354817.zext = zext i5 %_354815 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354817 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_354805, i64 0, i6 %_354817.zext
    %_354820 = urem i64 %_354631, 4
    %_354822 = trunc i64 %_354820 to i2
    %_354824.zext = zext i2 %_354822 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354824 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354817, i64 0, i3 %_354824.zext
    %_354826 = load float, float addrspace(0)* %_354824
    %_354832.zext = zext i7 %_354618 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354832 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %_354830, i64 0, i8 %_354832.zext
    %_354834 = load float, float addrspace(0)* %_354832
    %_354839 = fmul fast float %_354834, %_354826
    %accn_354842 = fadd fast float %_354839, %_354781
    store float %accn_354842, float addrspace(0)* %fv_0_353896
    %_354846 = load float, float addrspace(0)* %fv_0_353900
    %_354849 = udiv i64 %_354631, 240
    %_354854 = urem i64 %_354849, 2048
    %_354856 = trunc i64 %_354854 to i11
    %_354858.zext = zext i11 %_354856 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354858 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_354858.zext
    %_354861 = udiv i64 %_354631, 120
    %_354866 = urem i64 %_354861, 2
    %_354868 = trunc i64 %_354866 to i1
    %_354870.zext = zext i1 %_354868 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354870 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_354858, i64 0, i2 %_354870.zext
    %_354873 = udiv i64 %_354631, 4
    %_354878 = urem i64 %_354873, 30
    %_354880 = trunc i64 %_354878 to i5
    %_354882.zext = zext i5 %_354880 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354882 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_354870, i64 0, i6 %_354882.zext
    %_354885 = urem i64 %_354631, 4
    %_354887 = trunc i64 %_354885 to i2
    %_354889.zext = zext i2 %_354887 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354889 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354882, i64 0, i3 %_354889.zext
    %_354891 = load float, float addrspace(0)* %_354889
    %_354897.zext = zext i7 %_354618 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354897 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %_354895, i64 0, i8 %_354897.zext
    %_354899 = load float, float addrspace(0)* %_354897
    %_354904 = fmul fast float %_354899, %_354891
    %accn_354907 = fadd fast float %_354904, %_354846
    store float %accn_354907, float addrspace(0)* %fv_0_353900
    %_354911 = load float, float addrspace(0)* %fv_0_353904
    %_354914 = udiv i64 %_354631, 240
    %_354919 = urem i64 %_354914, 2048
    %_354921 = trunc i64 %_354919 to i11
    %_354923.zext = zext i11 %_354921 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354923 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_354923.zext
    %_354926 = udiv i64 %_354631, 120
    %_354931 = urem i64 %_354926, 2
    %_354933 = trunc i64 %_354931 to i1
    %_354935.zext = zext i1 %_354933 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354935 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_354923, i64 0, i2 %_354935.zext
    %_354938 = udiv i64 %_354631, 4
    %_354943 = urem i64 %_354938, 30
    %_354945 = trunc i64 %_354943 to i5
    %_354947.zext = zext i5 %_354945 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354947 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_354935, i64 0, i6 %_354947.zext
    %_354950 = urem i64 %_354631, 4
    %_354952 = trunc i64 %_354950 to i2
    %_354954.zext = zext i2 %_354952 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354954 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354947, i64 0, i3 %_354954.zext
    %_354956 = load float, float addrspace(0)* %_354954
    %_354962.zext = zext i7 %_354618 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354962 = getelementptr inbounds [120 x float], [120 x float] addrspace(0)* %_354960, i64 0, i8 %_354962.zext
    %_354964 = load float, float addrspace(0)* %_354962
    %_354969 = fmul fast float %_354964, %_354956
    %accn_354972 = fadd fast float %_354969, %_354911
    store float %accn_354972, float addrspace(0)* %fv_0_353904
    %_354976 = load float, float addrspace(0)* %fv_0_353908
    %_354981 = add i64 %_354626, %_354979
    %_354984 = udiv i64 %_354981, 240
    %_354989 = urem i64 %_354984, 2048
    %_354991 = trunc i64 %_354989 to i11
    %_354993.zext = zext i11 %_354991 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354993 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_354993.zext
    %_354997 = udiv i64 %_354981, 120
    %_355002 = urem i64 %_354997, 2
    %_355004 = trunc i64 %_355002 to i1
    %_355006.zext = zext i1 %_355004 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355006 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_354993, i64 0, i2 %_355006.zext
    %_355010 = udiv i64 %_354981, 4
    %_355015 = urem i64 %_355010, 30
    %_355017 = trunc i64 %_355015 to i5
    %_355019.zext = zext i5 %_355017 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355019 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355006, i64 0, i6 %_355019.zext
    %_355022 = urem i64 %_354981, 4
    %_355024 = trunc i64 %_355022 to i2
    %_355026.zext = zext i2 %_355024 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355026 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355019, i64 0, i3 %_355026.zext
    %_355028 = load float, float addrspace(0)* %_355026
    %_355031 = load float, float addrspace(0)* %_354767
    %_355036 = fmul fast float %_355031, %_355028
    %accn_355039 = fadd fast float %_355036, %_354976
    store float %accn_355039, float addrspace(0)* %fv_0_353908
    %_355043 = load float, float addrspace(0)* %fv_0_353912
    %_355046 = udiv i64 %_354981, 240
    %_355051 = urem i64 %_355046, 2048
    %_355053 = trunc i64 %_355051 to i11
    %_355055.zext = zext i11 %_355053 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355055 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355055.zext
    %_355058 = udiv i64 %_354981, 120
    %_355063 = urem i64 %_355058, 2
    %_355065 = trunc i64 %_355063 to i1
    %_355067.zext = zext i1 %_355065 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355067 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355055, i64 0, i2 %_355067.zext
    %_355070 = udiv i64 %_354981, 4
    %_355075 = urem i64 %_355070, 30
    %_355077 = trunc i64 %_355075 to i5
    %_355079.zext = zext i5 %_355077 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355079 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355067, i64 0, i6 %_355079.zext
    %_355082 = urem i64 %_354981, 4
    %_355084 = trunc i64 %_355082 to i2
    %_355086.zext = zext i2 %_355084 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355086 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355079, i64 0, i3 %_355086.zext
    %_355088 = load float, float addrspace(0)* %_355086
    %_355091 = load float, float addrspace(0)* %_354832
    %_355096 = fmul fast float %_355091, %_355088
    %accn_355099 = fadd fast float %_355096, %_355043
    store float %accn_355099, float addrspace(0)* %fv_0_353912
    %_355103 = load float, float addrspace(0)* %fv_0_353916
    %_355106 = udiv i64 %_354981, 240
    %_355111 = urem i64 %_355106, 2048
    %_355113 = trunc i64 %_355111 to i11
    %_355115.zext = zext i11 %_355113 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355115 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355115.zext
    %_355118 = udiv i64 %_354981, 120
    %_355123 = urem i64 %_355118, 2
    %_355125 = trunc i64 %_355123 to i1
    %_355127.zext = zext i1 %_355125 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355127 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355115, i64 0, i2 %_355127.zext
    %_355130 = udiv i64 %_354981, 4
    %_355135 = urem i64 %_355130, 30
    %_355137 = trunc i64 %_355135 to i5
    %_355139.zext = zext i5 %_355137 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355139 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355127, i64 0, i6 %_355139.zext
    %_355142 = urem i64 %_354981, 4
    %_355144 = trunc i64 %_355142 to i2
    %_355146.zext = zext i2 %_355144 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355146 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355139, i64 0, i3 %_355146.zext
    %_355148 = load float, float addrspace(0)* %_355146
    %_355151 = load float, float addrspace(0)* %_354897
    %_355156 = fmul fast float %_355151, %_355148
    %accn_355159 = fadd fast float %_355156, %_355103
    store float %accn_355159, float addrspace(0)* %fv_0_353916
    %_355163 = load float, float addrspace(0)* %fv_0_353920
    %_355166 = udiv i64 %_354981, 240
    %_355171 = urem i64 %_355166, 2048
    %_355173 = trunc i64 %_355171 to i11
    %_355175.zext = zext i11 %_355173 to i12 ; add one more bit for gep index as it is treated as signed value
    %_355175 = getelementptr inbounds [2048 x [2 x [30 x [4 x float]]]], [2048 x [2 x [30 x [4 x float]]]] addrspace(0)* %_352143, i64 0, i12 %_355175.zext
    %_355178 = udiv i64 %_354981, 120
    %_355183 = urem i64 %_355178, 2
    %_355185 = trunc i64 %_355183 to i1
    %_355187.zext = zext i1 %_355185 to i2 ; add one more bit for gep index as it is treated as signed value
    %_355187 = getelementptr inbounds [2 x [30 x [4 x float]]], [2 x [30 x [4 x float]]] addrspace(0)* %_355175, i64 0, i2 %_355187.zext
    %_355190 = udiv i64 %_354981, 4
    %_355195 = urem i64 %_355190, 30
    %_355197 = trunc i64 %_355195 to i5
    %_355199.zext = zext i5 %_355197 to i6 ; add one more bit for gep index as it is treated as signed value
    %_355199 = getelementptr inbounds [30 x [4 x float]], [30 x [4 x float]] addrspace(0)* %_355187, i64 0, i6 %_355199.zext
    %_355202 = urem i64 %_354981, 4
    %_355204 = trunc i64 %_355202 to i2
    %_355206.zext = zext i2 %_355204 to i3 ; add one more bit for gep index as it is treated as signed value
    %_355206 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_355199, i64 0, i3 %_355206.zext
    %_355208 = load float, float addrspace(0)* %_355206
    %_355211 = load float, float addrspace(0)* %_354962
    %_355216 = fmul fast float %_355211, %_355208
    %accn_355219 = fadd fast float %_355216, %_355163
    store float %accn_355219, float addrspace(0)* %fv_0_353920
    br label %head_353924, !llvm.loop !1005

new_exit_353932:
    %fv_10_353934 = add nuw nsw i32 1, %iv_353878
    %_353937 = load float, float addrspace(0)* %fv_0_353892
    %_353947 = udiv i64 %t_353944, 2
    %_353950 = mul i64 168, %_353947
    %_353953 = urem i64 %t_353944, 2
    %_353956 = mul i64 84, %_353953
    %_353958 = add i64 %_353950, %_353956
    %_353975 = udiv i64 %t_353972, 4
    %_353978 = mul i64 4, %_353975
    %_353980 = add i64 %_353958, %_353978
    %_353983 = urem i64 %t_353972, 4
    %_353986 = add i64 %_353980, %_353983
    %_353989 = udiv i64 %_353986, 84
    %_353994 = urem i64 %_353989, 4096
    %_353997 = urem i64 %_353986, 84
    %_354002 = urem i64 %_353997, 84
    %_354007 = urem i64 %_354002, 84
    %_354011 = trunc i64 %_354007 to i7
    %_354013.zext = zext i7 %_354011 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354013 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354013.zext
    %_354015 = load float, float addrspace(0)* %_354013
    %_354017 = trunc i64 %_353947 to i11
    %_354019.zext = zext i11 %_354017 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354019 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354019.zext
    %_354020 = trunc i64 %_353953 to i1
    %_354022.zext = zext i1 %_354020 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354022 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354019, i64 0, i2 %_354022.zext
    %_354023 = trunc i64 %_353975 to i5
    %_354025.zext = zext i5 %_354023 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354025 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354022, i64 0, i6 %_354025.zext
    %_354026 = trunc i64 %_353983 to i2
    %_354028.zext = zext i2 %_354026 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354028 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354025, i64 0, i3 %_354028.zext
    %_354032 = fadd fast float %_353937, %_354015
    %_354036 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354032)
    store float %_354036, float addrspace(0)* %_354028
    %_354040 = load float, float addrspace(0)* %fv_0_353896
    %_354043 = udiv i64 %t_353944, 2
    %_354046 = mul i64 168, %_354043
    %_354049 = urem i64 %t_353944, 2
    %_354052 = mul i64 84, %_354049
    %_354054 = add i64 %_354046, %_354052
    %_354060 = udiv i64 %t_354057, 4
    %_354063 = mul i64 4, %_354060
    %_354065 = add i64 %_354054, %_354063
    %_354068 = urem i64 %t_354057, 4
    %_354071 = add i64 %_354065, %_354068
    %_354074 = udiv i64 %_354071, 84
    %_354079 = urem i64 %_354074, 4096
    %_354082 = urem i64 %_354071, 84
    %_354087 = urem i64 %_354082, 84
    %_354092 = urem i64 %_354087, 84
    %_354094 = trunc i64 %_354092 to i7
    %_354096.zext = zext i7 %_354094 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354096 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354096.zext
    %_354098 = load float, float addrspace(0)* %_354096
    %_354100 = trunc i64 %_354043 to i11
    %_354102.zext = zext i11 %_354100 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354102 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354102.zext
    %_354103 = trunc i64 %_354049 to i1
    %_354105.zext = zext i1 %_354103 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354105 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354102, i64 0, i2 %_354105.zext
    %_354106 = trunc i64 %_354060 to i5
    %_354108.zext = zext i5 %_354106 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354108 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354105, i64 0, i6 %_354108.zext
    %_354109 = trunc i64 %_354068 to i2
    %_354111.zext = zext i2 %_354109 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354111 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354108, i64 0, i3 %_354111.zext
    %_354115 = fadd fast float %_354040, %_354098
    %_354117 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354115)
    store float %_354117, float addrspace(0)* %_354111
    %_354121 = load float, float addrspace(0)* %fv_0_353900
    %_354124 = udiv i64 %t_353944, 2
    %_354127 = mul i64 168, %_354124
    %_354130 = urem i64 %t_353944, 2
    %_354133 = mul i64 84, %_354130
    %_354135 = add i64 %_354127, %_354133
    %_354141 = udiv i64 %t_354138, 4
    %_354144 = mul i64 4, %_354141
    %_354146 = add i64 %_354135, %_354144
    %_354149 = urem i64 %t_354138, 4
    %_354152 = add i64 %_354146, %_354149
    %_354155 = udiv i64 %_354152, 84
    %_354160 = urem i64 %_354155, 4096
    %_354163 = urem i64 %_354152, 84
    %_354168 = urem i64 %_354163, 84
    %_354173 = urem i64 %_354168, 84
    %_354175 = trunc i64 %_354173 to i7
    %_354177.zext = zext i7 %_354175 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354177 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354177.zext
    %_354179 = load float, float addrspace(0)* %_354177
    %_354181 = trunc i64 %_354124 to i11
    %_354183.zext = zext i11 %_354181 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354183 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354183.zext
    %_354184 = trunc i64 %_354130 to i1
    %_354186.zext = zext i1 %_354184 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354186 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354183, i64 0, i2 %_354186.zext
    %_354187 = trunc i64 %_354141 to i5
    %_354189.zext = zext i5 %_354187 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354189 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354186, i64 0, i6 %_354189.zext
    %_354190 = trunc i64 %_354149 to i2
    %_354192.zext = zext i2 %_354190 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354192 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354189, i64 0, i3 %_354192.zext
    %_354196 = fadd fast float %_354121, %_354179
    %_354198 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354196)
    store float %_354198, float addrspace(0)* %_354192
    %_354202 = load float, float addrspace(0)* %fv_0_353904
    %_354205 = udiv i64 %t_353944, 2
    %_354208 = mul i64 168, %_354205
    %_354211 = urem i64 %t_353944, 2
    %_354214 = mul i64 84, %_354211
    %_354216 = add i64 %_354208, %_354214
    %_354222 = udiv i64 %t_354219, 4
    %_354225 = mul i64 4, %_354222
    %_354227 = add i64 %_354216, %_354225
    %_354230 = urem i64 %t_354219, 4
    %_354233 = add i64 %_354227, %_354230
    %_354236 = udiv i64 %_354233, 84
    %_354241 = urem i64 %_354236, 4096
    %_354244 = urem i64 %_354233, 84
    %_354249 = urem i64 %_354244, 84
    %_354254 = urem i64 %_354249, 84
    %_354256 = trunc i64 %_354254 to i7
    %_354258.zext = zext i7 %_354256 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354258 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354258.zext
    %_354260 = load float, float addrspace(0)* %_354258
    %_354262 = trunc i64 %_354205 to i11
    %_354264.zext = zext i11 %_354262 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354264 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354264.zext
    %_354265 = trunc i64 %_354211 to i1
    %_354267.zext = zext i1 %_354265 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354267 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354264, i64 0, i2 %_354267.zext
    %_354268 = trunc i64 %_354222 to i5
    %_354270.zext = zext i5 %_354268 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354270 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354267, i64 0, i6 %_354270.zext
    %_354271 = trunc i64 %_354230 to i2
    %_354273.zext = zext i2 %_354271 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354273 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354270, i64 0, i3 %_354273.zext
    %_354277 = fadd fast float %_354202, %_354260
    %_354279 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354277)
    store float %_354279, float addrspace(0)* %_354273
    %_354283 = load float, float addrspace(0)* %fv_0_353908
    %_354289 = udiv i64 %t_354286, 2
    %_354292 = mul i64 168, %_354289
    %_354295 = urem i64 %t_354286, 2
    %_354298 = mul i64 84, %_354295
    %_354300 = add i64 %_354292, %_354298
    %_354303 = udiv i64 %t_353972, 4
    %_354306 = mul i64 4, %_354303
    %_354308 = add i64 %_354300, %_354306
    %_354311 = urem i64 %t_353972, 4
    %_354314 = add i64 %_354308, %_354311
    %_354317 = udiv i64 %_354314, 84
    %_354322 = urem i64 %_354317, 4096
    %_354325 = urem i64 %_354314, 84
    %_354330 = urem i64 %_354325, 84
    %_354335 = urem i64 %_354330, 84
    %_354337 = trunc i64 %_354335 to i7
    %_354339.zext = zext i7 %_354337 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354339 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354339.zext
    %_354341 = load float, float addrspace(0)* %_354339
    %_354343 = trunc i64 %_354289 to i11
    %_354345.zext = zext i11 %_354343 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354345 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354345.zext
    %_354346 = trunc i64 %_354295 to i1
    %_354348.zext = zext i1 %_354346 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354348 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354345, i64 0, i2 %_354348.zext
    %_354349 = trunc i64 %_354303 to i5
    %_354351.zext = zext i5 %_354349 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354351 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354348, i64 0, i6 %_354351.zext
    %_354352 = trunc i64 %_354311 to i2
    %_354354.zext = zext i2 %_354352 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354354 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354351, i64 0, i3 %_354354.zext
    %_354358 = fadd fast float %_354283, %_354341
    %_354360 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354358)
    store float %_354360, float addrspace(0)* %_354354
    %_354364 = load float, float addrspace(0)* %fv_0_353912
    %_354367 = udiv i64 %t_354286, 2
    %_354370 = mul i64 168, %_354367
    %_354373 = urem i64 %t_354286, 2
    %_354376 = mul i64 84, %_354373
    %_354378 = add i64 %_354370, %_354376
    %_354381 = udiv i64 %t_354057, 4
    %_354384 = mul i64 4, %_354381
    %_354386 = add i64 %_354378, %_354384
    %_354389 = urem i64 %t_354057, 4
    %_354392 = add i64 %_354386, %_354389
    %_354395 = udiv i64 %_354392, 84
    %_354400 = urem i64 %_354395, 4096
    %_354403 = urem i64 %_354392, 84
    %_354408 = urem i64 %_354403, 84
    %_354413 = urem i64 %_354408, 84
    %_354415 = trunc i64 %_354413 to i7
    %_354417.zext = zext i7 %_354415 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354417 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354417.zext
    %_354419 = load float, float addrspace(0)* %_354417
    %_354421 = trunc i64 %_354367 to i11
    %_354423.zext = zext i11 %_354421 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354423 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354423.zext
    %_354424 = trunc i64 %_354373 to i1
    %_354426.zext = zext i1 %_354424 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354426 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354423, i64 0, i2 %_354426.zext
    %_354427 = trunc i64 %_354381 to i5
    %_354429.zext = zext i5 %_354427 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354429 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354426, i64 0, i6 %_354429.zext
    %_354430 = trunc i64 %_354389 to i2
    %_354432.zext = zext i2 %_354430 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354432 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354429, i64 0, i3 %_354432.zext
    %_354436 = fadd fast float %_354364, %_354419
    %_354438 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354436)
    store float %_354438, float addrspace(0)* %_354432
    %_354442 = load float, float addrspace(0)* %fv_0_353916
    %_354445 = udiv i64 %t_354286, 2
    %_354448 = mul i64 168, %_354445
    %_354451 = urem i64 %t_354286, 2
    %_354454 = mul i64 84, %_354451
    %_354456 = add i64 %_354448, %_354454
    %_354459 = udiv i64 %t_354138, 4
    %_354462 = mul i64 4, %_354459
    %_354464 = add i64 %_354456, %_354462
    %_354467 = urem i64 %t_354138, 4
    %_354470 = add i64 %_354464, %_354467
    %_354473 = udiv i64 %_354470, 84
    %_354478 = urem i64 %_354473, 4096
    %_354481 = urem i64 %_354470, 84
    %_354486 = urem i64 %_354481, 84
    %_354491 = urem i64 %_354486, 84
    %_354493 = trunc i64 %_354491 to i7
    %_354495.zext = zext i7 %_354493 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354495 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354495.zext
    %_354497 = load float, float addrspace(0)* %_354495
    %_354499 = trunc i64 %_354445 to i11
    %_354501.zext = zext i11 %_354499 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354501 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354501.zext
    %_354502 = trunc i64 %_354451 to i1
    %_354504.zext = zext i1 %_354502 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354504 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354501, i64 0, i2 %_354504.zext
    %_354505 = trunc i64 %_354459 to i5
    %_354507.zext = zext i5 %_354505 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354507 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354504, i64 0, i6 %_354507.zext
    %_354508 = trunc i64 %_354467 to i2
    %_354510.zext = zext i2 %_354508 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354510 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354507, i64 0, i3 %_354510.zext
    %_354514 = fadd fast float %_354442, %_354497
    %_354516 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354514)
    store float %_354516, float addrspace(0)* %_354510
    %_354520 = load float, float addrspace(0)* %fv_0_353920
    %_354523 = udiv i64 %t_354286, 2
    %_354526 = mul i64 168, %_354523
    %_354529 = urem i64 %t_354286, 2
    %_354532 = mul i64 84, %_354529
    %_354534 = add i64 %_354526, %_354532
    %_354537 = udiv i64 %t_354219, 4
    %_354540 = mul i64 4, %_354537
    %_354542 = add i64 %_354534, %_354540
    %_354545 = urem i64 %t_354219, 4
    %_354548 = add i64 %_354542, %_354545
    %_354551 = udiv i64 %_354548, 84
    %_354556 = urem i64 %_354551, 4096
    %_354559 = urem i64 %_354548, 84
    %_354564 = urem i64 %_354559, 84
    %_354569 = urem i64 %_354564, 84
    %_354571 = trunc i64 %_354569 to i7
    %_354573.zext = zext i7 %_354571 to i8 ; add one more bit for gep index as it is treated as signed value
    %_354573 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %l_self_modules_fc2_parameters_bias__353940, i64 0, i8 %_354573.zext
    %_354575 = load float, float addrspace(0)* %_354573
    %_354577 = trunc i64 %_354523 to i11
    %_354579.zext = zext i11 %_354577 to i12 ; add one more bit for gep index as it is treated as signed value
    %_354579 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_354579.zext
    %_354580 = trunc i64 %_354529 to i1
    %_354582.zext = zext i1 %_354580 to i2 ; add one more bit for gep index as it is treated as signed value
    %_354582 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_354579, i64 0, i2 %_354582.zext
    %_354583 = trunc i64 %_354537 to i5
    %_354585.zext = zext i5 %_354583 to i6 ; add one more bit for gep index as it is treated as signed value
    %_354585 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_354582, i64 0, i6 %_354585.zext
    %_354586 = trunc i64 %_354545 to i2
    %_354588.zext = zext i2 %_354586 to i3 ; add one more bit for gep index as it is treated as signed value
    %_354588 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_354585, i64 0, i3 %_354588.zext
    %_354592 = fadd fast float %_354520, %_354575
    %_354594 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_354592)
    store float %_354594, float addrspace(0)* %_354588
    br label %head_353875

new_exit_353882:
    %fv_10_353884 = add nuw nsw i32 1, %iv_352184
    br label %head_352181

new_exit_352187:
    %_352199i8 = call i8* @malloc(i64 327680)
    %_352199 = bitcast i8* %_352199i8 to [2048 x [2 x [5 x [4 x float]]]] addrspace(0)*
    %_352202i8 = call i8* @malloc(i64 32)
    %_352202 = bitcast i8* %_352202i8 to [8 x float] addrspace(0)*
    %fv_0_352533.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352533 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352533.zext
    %fv_0_352538.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352538 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352538.zext
    %fv_0_352542.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352542 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352542.zext
    %fv_0_352546.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352546 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352546.zext
    %fv_0_352550.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352550 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352550.zext
    %fv_0_352554.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352554 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352554.zext
    %fv_0_352558.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352558 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352558.zext
    %fv_0_352562.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352562 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_352202, i64 0, i4 %fv_0_352562.zext
    br label %head_352205

head_352205:
    %iv_352208 = phi i32 [ 0, %new_exit_352187 ], [ %fv_10_352506, %new_exit_352504 ]
    %_352210 = icmp ult i32 %iv_352208, 2048
    %_352586 = trunc i32 %iv_352208 to i11
    %_352594 = zext i11 %_352586 to i64
    %_353274 = mul i64 168, %_352594
    %t_352596 = mul i64 2, %_352594
    %t_352939 = add i64 1, %t_352596
    %_353615 = mul i64 84, %t_352939
    br i1 %_352210, label %new_body_352494, label %new_exit_352211

new_body_352494:
    br label %head_352497

head_352497:
    %iv_352500 = phi i32 [ 0, %new_body_352494 ], [ %fv_10_352577, %new_exit_352575 ]
    %_352503 = icmp ult i32 %iv_352500, 5
    %_352614 = trunc i32 %iv_352500 to i3
    %_352622 = zext i3 %_352614 to i64
    %t_352624 = mul i64 4, %_352622
    %_353379 = trunc i64 %t_352624 to i5
    %_353388.zext = zext i5 %_353379 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353388 = getelementptr inbounds [20 x [84 x float]], [20 x [84 x float]] addrspace(0)* %l_self_modules_fc3_parameters_weight__353378, i64 0, i6 %_353388.zext
    %t_352715 = add i64 1, %t_352624
    %_353464 = trunc i64 %t_352715 to i5
    %_353466.zext = zext i5 %_353464 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353466 = getelementptr inbounds [20 x [84 x float]], [20 x [84 x float]] addrspace(0)* %l_self_modules_fc3_parameters_weight__353378, i64 0, i6 %_353466.zext
    %t_352794 = add i64 2, %t_352624
    %_353529 = trunc i64 %t_352794 to i5
    %_353531.zext = zext i5 %_353529 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353531 = getelementptr inbounds [20 x [84 x float]], [20 x [84 x float]] addrspace(0)* %l_self_modules_fc3_parameters_weight__353378, i64 0, i6 %_353531.zext
    %t_352874 = add i64 3, %t_352624
    %_353594 = trunc i64 %t_352874 to i5
    %_353596.zext = zext i5 %_353594 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353596 = getelementptr inbounds [20 x [84 x float]], [20 x [84 x float]] addrspace(0)* %l_self_modules_fc3_parameters_weight__353378, i64 0, i6 %_353596.zext
    br i1 %_352503, label %new_body_352510, label %new_exit_352504

new_body_352510:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352533
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352538
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352542
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352546
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352550
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352554
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352558
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352562
    br label %head_352566, !llvm.loop !1006

head_352566:
    %iv_352569 = phi i32 [ 0, %new_body_352510 ], [ %fv_9_353246, %new_body_353244 ]
    %_352572 = icmp ult i32 %iv_352569, 84
    br i1 %_352572, label %new_body_353244, label %new_exit_352575

new_body_353244:
    %fv_9_353246 = add nuw nsw i32 1, %iv_352569
    %_353249 = load float, float addrspace(0)* %fv_0_352533
    %_353263 = trunc i32 %iv_352569 to i7
    %_353271 = zext i7 %_353263 to i64
    %_353276 = add i64 %_353271, %_353274
    %_353279 = udiv i64 %_353276, 168
    %_353284 = urem i64 %_353279, 2048
    %_353286 = trunc i64 %_353284 to i11
    %_353297.zext = zext i11 %_353286 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353297 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353297.zext
    %_353302 = udiv i64 %_353276, 84
    %_353307 = urem i64 %_353302, 2
    %_353309 = trunc i64 %_353307 to i1
    %_353318.zext = zext i1 %_353309 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353318 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353297, i64 0, i2 %_353318.zext
    %_353322 = udiv i64 %_353276, 4
    %_353328 = urem i64 %_353322, 21
    %_353332 = trunc i64 %_353328 to i5
    %_353364.zext = zext i5 %_353332 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353364 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353318, i64 0, i6 %_353364.zext
    %_353367 = urem i64 %_353276, 4
    %_353369 = trunc i64 %_353367 to i2
    %_353371.zext = zext i2 %_353369 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353371 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353364, i64 0, i3 %_353371.zext
    %_353373 = load float, float addrspace(0)* %_353371
    %_353401.zext = zext i7 %_353263 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353401 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %_353388, i64 0, i8 %_353401.zext
    %_353403 = load float, float addrspace(0)* %_353401
    %_353410 = fmul fast float %_353403, %_353373
    %accn_353413 = fadd fast float %_353410, %_353249
    store float %accn_353413, float addrspace(0)* %fv_0_352533
    %_353417 = load float, float addrspace(0)* %fv_0_352538
    %_353420 = udiv i64 %_353276, 168
    %_353425 = urem i64 %_353420, 2048
    %_353427 = trunc i64 %_353425 to i11
    %_353429.zext = zext i11 %_353427 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353429 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353429.zext
    %_353432 = udiv i64 %_353276, 84
    %_353437 = urem i64 %_353432, 2
    %_353439 = trunc i64 %_353437 to i1
    %_353441.zext = zext i1 %_353439 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353441 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353429, i64 0, i2 %_353441.zext
    %_353444 = udiv i64 %_353276, 4
    %_353449 = urem i64 %_353444, 21
    %_353451 = trunc i64 %_353449 to i5
    %_353453.zext = zext i5 %_353451 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353453 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353441, i64 0, i6 %_353453.zext
    %_353456 = urem i64 %_353276, 4
    %_353458 = trunc i64 %_353456 to i2
    %_353460.zext = zext i2 %_353458 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353460 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353453, i64 0, i3 %_353460.zext
    %_353462 = load float, float addrspace(0)* %_353460
    %_353468.zext = zext i7 %_353263 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353468 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %_353466, i64 0, i8 %_353468.zext
    %_353470 = load float, float addrspace(0)* %_353468
    %_353475 = fmul fast float %_353470, %_353462
    %accn_353478 = fadd fast float %_353475, %_353417
    store float %accn_353478, float addrspace(0)* %fv_0_352538
    %_353482 = load float, float addrspace(0)* %fv_0_352542
    %_353485 = udiv i64 %_353276, 168
    %_353490 = urem i64 %_353485, 2048
    %_353492 = trunc i64 %_353490 to i11
    %_353494.zext = zext i11 %_353492 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353494 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353494.zext
    %_353497 = udiv i64 %_353276, 84
    %_353502 = urem i64 %_353497, 2
    %_353504 = trunc i64 %_353502 to i1
    %_353506.zext = zext i1 %_353504 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353506 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353494, i64 0, i2 %_353506.zext
    %_353509 = udiv i64 %_353276, 4
    %_353514 = urem i64 %_353509, 21
    %_353516 = trunc i64 %_353514 to i5
    %_353518.zext = zext i5 %_353516 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353518 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353506, i64 0, i6 %_353518.zext
    %_353521 = urem i64 %_353276, 4
    %_353523 = trunc i64 %_353521 to i2
    %_353525.zext = zext i2 %_353523 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353525 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353518, i64 0, i3 %_353525.zext
    %_353527 = load float, float addrspace(0)* %_353525
    %_353533.zext = zext i7 %_353263 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353533 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %_353531, i64 0, i8 %_353533.zext
    %_353535 = load float, float addrspace(0)* %_353533
    %_353540 = fmul fast float %_353535, %_353527
    %accn_353543 = fadd fast float %_353540, %_353482
    store float %accn_353543, float addrspace(0)* %fv_0_352542
    %_353547 = load float, float addrspace(0)* %fv_0_352546
    %_353550 = udiv i64 %_353276, 168
    %_353555 = urem i64 %_353550, 2048
    %_353557 = trunc i64 %_353555 to i11
    %_353559.zext = zext i11 %_353557 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353559 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353559.zext
    %_353562 = udiv i64 %_353276, 84
    %_353567 = urem i64 %_353562, 2
    %_353569 = trunc i64 %_353567 to i1
    %_353571.zext = zext i1 %_353569 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353571 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353559, i64 0, i2 %_353571.zext
    %_353574 = udiv i64 %_353276, 4
    %_353579 = urem i64 %_353574, 21
    %_353581 = trunc i64 %_353579 to i5
    %_353583.zext = zext i5 %_353581 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353583 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353571, i64 0, i6 %_353583.zext
    %_353586 = urem i64 %_353276, 4
    %_353588 = trunc i64 %_353586 to i2
    %_353590.zext = zext i2 %_353588 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353590 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353583, i64 0, i3 %_353590.zext
    %_353592 = load float, float addrspace(0)* %_353590
    %_353598.zext = zext i7 %_353263 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353598 = getelementptr inbounds [84 x float], [84 x float] addrspace(0)* %_353596, i64 0, i8 %_353598.zext
    %_353600 = load float, float addrspace(0)* %_353598
    %_353605 = fmul fast float %_353600, %_353592
    %accn_353608 = fadd fast float %_353605, %_353547
    store float %accn_353608, float addrspace(0)* %fv_0_352546
    %_353612 = load float, float addrspace(0)* %fv_0_352550
    %_353617 = add i64 %_353271, %_353615
    %_353620 = udiv i64 %_353617, 168
    %_353625 = urem i64 %_353620, 2048
    %_353627 = trunc i64 %_353625 to i11
    %_353629.zext = zext i11 %_353627 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353629 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353629.zext
    %_353633 = udiv i64 %_353617, 84
    %_353638 = urem i64 %_353633, 2
    %_353640 = trunc i64 %_353638 to i1
    %_353642.zext = zext i1 %_353640 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353642 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353629, i64 0, i2 %_353642.zext
    %_353646 = udiv i64 %_353617, 4
    %_353651 = urem i64 %_353646, 21
    %_353653 = trunc i64 %_353651 to i5
    %_353655.zext = zext i5 %_353653 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353655 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353642, i64 0, i6 %_353655.zext
    %_353658 = urem i64 %_353617, 4
    %_353660 = trunc i64 %_353658 to i2
    %_353662.zext = zext i2 %_353660 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353662 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353655, i64 0, i3 %_353662.zext
    %_353664 = load float, float addrspace(0)* %_353662
    %_353667 = load float, float addrspace(0)* %_353401
    %_353672 = fmul fast float %_353667, %_353664
    %accn_353675 = fadd fast float %_353672, %_353612
    store float %accn_353675, float addrspace(0)* %fv_0_352550
    %_353679 = load float, float addrspace(0)* %fv_0_352554
    %_353682 = udiv i64 %_353617, 168
    %_353687 = urem i64 %_353682, 2048
    %_353689 = trunc i64 %_353687 to i11
    %_353691.zext = zext i11 %_353689 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353691 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353691.zext
    %_353694 = udiv i64 %_353617, 84
    %_353699 = urem i64 %_353694, 2
    %_353701 = trunc i64 %_353699 to i1
    %_353703.zext = zext i1 %_353701 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353703 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353691, i64 0, i2 %_353703.zext
    %_353706 = udiv i64 %_353617, 4
    %_353711 = urem i64 %_353706, 21
    %_353713 = trunc i64 %_353711 to i5
    %_353715.zext = zext i5 %_353713 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353715 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353703, i64 0, i6 %_353715.zext
    %_353718 = urem i64 %_353617, 4
    %_353720 = trunc i64 %_353718 to i2
    %_353722.zext = zext i2 %_353720 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353722 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353715, i64 0, i3 %_353722.zext
    %_353724 = load float, float addrspace(0)* %_353722
    %_353727 = load float, float addrspace(0)* %_353468
    %_353732 = fmul fast float %_353727, %_353724
    %accn_353735 = fadd fast float %_353732, %_353679
    store float %accn_353735, float addrspace(0)* %fv_0_352554
    %_353739 = load float, float addrspace(0)* %fv_0_352558
    %_353742 = udiv i64 %_353617, 168
    %_353747 = urem i64 %_353742, 2048
    %_353749 = trunc i64 %_353747 to i11
    %_353751.zext = zext i11 %_353749 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353751 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353751.zext
    %_353754 = udiv i64 %_353617, 84
    %_353759 = urem i64 %_353754, 2
    %_353761 = trunc i64 %_353759 to i1
    %_353763.zext = zext i1 %_353761 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353763 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353751, i64 0, i2 %_353763.zext
    %_353766 = udiv i64 %_353617, 4
    %_353771 = urem i64 %_353766, 21
    %_353773 = trunc i64 %_353771 to i5
    %_353775.zext = zext i5 %_353773 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353775 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353763, i64 0, i6 %_353775.zext
    %_353778 = urem i64 %_353617, 4
    %_353780 = trunc i64 %_353778 to i2
    %_353782.zext = zext i2 %_353780 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353782 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353775, i64 0, i3 %_353782.zext
    %_353784 = load float, float addrspace(0)* %_353782
    %_353787 = load float, float addrspace(0)* %_353533
    %_353792 = fmul fast float %_353787, %_353784
    %accn_353795 = fadd fast float %_353792, %_353739
    store float %accn_353795, float addrspace(0)* %fv_0_352558
    %_353799 = load float, float addrspace(0)* %fv_0_352562
    %_353802 = udiv i64 %_353617, 168
    %_353807 = urem i64 %_353802, 2048
    %_353809 = trunc i64 %_353807 to i11
    %_353811.zext = zext i11 %_353809 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353811 = getelementptr inbounds [2048 x [2 x [21 x [4 x float]]]], [2048 x [2 x [21 x [4 x float]]]] addrspace(0)* %_352175, i64 0, i12 %_353811.zext
    %_353814 = udiv i64 %_353617, 84
    %_353819 = urem i64 %_353814, 2
    %_353821 = trunc i64 %_353819 to i1
    %_353823.zext = zext i1 %_353821 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353823 = getelementptr inbounds [2 x [21 x [4 x float]]], [2 x [21 x [4 x float]]] addrspace(0)* %_353811, i64 0, i2 %_353823.zext
    %_353826 = udiv i64 %_353617, 4
    %_353831 = urem i64 %_353826, 21
    %_353833 = trunc i64 %_353831 to i5
    %_353835.zext = zext i5 %_353833 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353835 = getelementptr inbounds [21 x [4 x float]], [21 x [4 x float]] addrspace(0)* %_353823, i64 0, i6 %_353835.zext
    %_353838 = urem i64 %_353617, 4
    %_353840 = trunc i64 %_353838 to i2
    %_353842.zext = zext i2 %_353840 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353842 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353835, i64 0, i3 %_353842.zext
    %_353844 = load float, float addrspace(0)* %_353842
    %_353847 = load float, float addrspace(0)* %_353598
    %_353852 = fmul fast float %_353847, %_353844
    %accn_353855 = fadd fast float %_353852, %_353799
    store float %accn_353855, float addrspace(0)* %fv_0_352562
    br label %head_352566, !llvm.loop !1006

new_exit_352575:
    %fv_10_352577 = add nuw nsw i32 1, %iv_352500
    %_352580 = load float, float addrspace(0)* %fv_0_352533
    %_352599 = udiv i64 %t_352596, 2
    %_352602 = mul i64 40, %_352599
    %_352605 = urem i64 %t_352596, 2
    %_352608 = mul i64 20, %_352605
    %_352610 = add i64 %_352602, %_352608
    %_352627 = udiv i64 %t_352624, 4
    %_352630 = mul i64 4, %_352627
    %_352632 = add i64 %_352610, %_352630
    %_352635 = urem i64 %t_352624, 4
    %_352638 = add i64 %_352632, %_352635
    %_352641 = udiv i64 %_352638, 20
    %_352647 = urem i64 %_352641, 4096
    %_352650 = urem i64 %_352638, 20
    %_352655 = urem i64 %_352650, 20
    %_352660 = urem i64 %_352655, 20
    %_352664 = trunc i64 %_352660 to i5
    %_352666.zext = zext i5 %_352664 to i6 ; add one more bit for gep index as it is treated as signed value
    %_352666 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_352666.zext
    %_352668 = load float, float addrspace(0)* %_352666
    %_352670 = trunc i64 %_352599 to i11
    %_352672.zext = zext i11 %_352670 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352672 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_352672.zext
    %_352673 = trunc i64 %_352605 to i1
    %_352675.zext = zext i1 %_352673 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352675 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_352672, i64 0, i2 %_352675.zext
    %_352676 = trunc i64 %_352627 to i3
    %_352678.zext = zext i3 %_352676 to i4 ; add one more bit for gep index as it is treated as signed value
    %_352678 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_352675, i64 0, i4 %_352678.zext
    %_352679 = trunc i64 %_352635 to i2
    %_352681.zext = zext i2 %_352679 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352681 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352678, i64 0, i3 %_352681.zext
    %_352693 = fadd fast float %_352580, %_352668
    store float %_352693, float addrspace(0)* %_352681
    %_352697 = load float, float addrspace(0)* %fv_0_352538
    %_352700 = udiv i64 %t_352596, 2
    %_352703 = mul i64 40, %_352700
    %_352706 = urem i64 %t_352596, 2
    %_352709 = mul i64 20, %_352706
    %_352711 = add i64 %_352703, %_352709
    %_352718 = udiv i64 %t_352715, 4
    %_352721 = mul i64 4, %_352718
    %_352723 = add i64 %_352711, %_352721
    %_352726 = urem i64 %t_352715, 4
    %_352729 = add i64 %_352723, %_352726
    %_352732 = udiv i64 %_352729, 20
    %_352737 = urem i64 %_352732, 4096
    %_352740 = urem i64 %_352729, 20
    %_352745 = urem i64 %_352740, 20
    %_352750 = urem i64 %_352745, 20
    %_352752 = trunc i64 %_352750 to i5
    %_352754.zext = zext i5 %_352752 to i6 ; add one more bit for gep index as it is treated as signed value
    %_352754 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_352754.zext
    %_352756 = load float, float addrspace(0)* %_352754
    %_352758 = trunc i64 %_352700 to i11
    %_352760.zext = zext i11 %_352758 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352760 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_352760.zext
    %_352761 = trunc i64 %_352706 to i1
    %_352763.zext = zext i1 %_352761 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352763 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_352760, i64 0, i2 %_352763.zext
    %_352764 = trunc i64 %_352718 to i3
    %_352766.zext = zext i3 %_352764 to i4 ; add one more bit for gep index as it is treated as signed value
    %_352766 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_352763, i64 0, i4 %_352766.zext
    %_352767 = trunc i64 %_352726 to i2
    %_352769.zext = zext i2 %_352767 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352769 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352766, i64 0, i3 %_352769.zext
    %_352773 = fadd fast float %_352697, %_352756
    store float %_352773, float addrspace(0)* %_352769
    %_352777 = load float, float addrspace(0)* %fv_0_352542
    %_352780 = udiv i64 %t_352596, 2
    %_352783 = mul i64 40, %_352780
    %_352786 = urem i64 %t_352596, 2
    %_352789 = mul i64 20, %_352786
    %_352791 = add i64 %_352783, %_352789
    %_352797 = udiv i64 %t_352794, 4
    %_352800 = mul i64 4, %_352797
    %_352802 = add i64 %_352791, %_352800
    %_352805 = urem i64 %t_352794, 4
    %_352808 = add i64 %_352802, %_352805
    %_352811 = udiv i64 %_352808, 20
    %_352816 = urem i64 %_352811, 4096
    %_352819 = urem i64 %_352808, 20
    %_352824 = urem i64 %_352819, 20
    %_352829 = urem i64 %_352824, 20
    %_352831 = trunc i64 %_352829 to i5
    %_352833.zext = zext i5 %_352831 to i6 ; add one more bit for gep index as it is treated as signed value
    %_352833 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_352833.zext
    %_352835 = load float, float addrspace(0)* %_352833
    %_352837 = trunc i64 %_352780 to i11
    %_352839.zext = zext i11 %_352837 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352839 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_352839.zext
    %_352840 = trunc i64 %_352786 to i1
    %_352842.zext = zext i1 %_352840 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352842 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_352839, i64 0, i2 %_352842.zext
    %_352843 = trunc i64 %_352797 to i3
    %_352845.zext = zext i3 %_352843 to i4 ; add one more bit for gep index as it is treated as signed value
    %_352845 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_352842, i64 0, i4 %_352845.zext
    %_352846 = trunc i64 %_352805 to i2
    %_352848.zext = zext i2 %_352846 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352848 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352845, i64 0, i3 %_352848.zext
    %_352852 = fadd fast float %_352777, %_352835
    store float %_352852, float addrspace(0)* %_352848
    %_352856 = load float, float addrspace(0)* %fv_0_352546
    %_352859 = udiv i64 %t_352596, 2
    %_352862 = mul i64 40, %_352859
    %_352865 = urem i64 %t_352596, 2
    %_352868 = mul i64 20, %_352865
    %_352870 = add i64 %_352862, %_352868
    %_352877 = udiv i64 %t_352874, 4
    %_352880 = mul i64 4, %_352877
    %_352882 = add i64 %_352870, %_352880
    %_352885 = urem i64 %t_352874, 4
    %_352888 = add i64 %_352882, %_352885
    %_352891 = udiv i64 %_352888, 20
    %_352896 = urem i64 %_352891, 4096
    %_352899 = urem i64 %_352888, 20
    %_352904 = urem i64 %_352899, 20
    %_352909 = urem i64 %_352904, 20
    %_352911 = trunc i64 %_352909 to i5
    %_352913.zext = zext i5 %_352911 to i6 ; add one more bit for gep index as it is treated as signed value
    %_352913 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_352913.zext
    %_352915 = load float, float addrspace(0)* %_352913
    %_352917 = trunc i64 %_352859 to i11
    %_352919.zext = zext i11 %_352917 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352919 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_352919.zext
    %_352920 = trunc i64 %_352865 to i1
    %_352922.zext = zext i1 %_352920 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352922 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_352919, i64 0, i2 %_352922.zext
    %_352923 = trunc i64 %_352877 to i3
    %_352925.zext = zext i3 %_352923 to i4 ; add one more bit for gep index as it is treated as signed value
    %_352925 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_352922, i64 0, i4 %_352925.zext
    %_352926 = trunc i64 %_352885 to i2
    %_352928.zext = zext i2 %_352926 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352928 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352925, i64 0, i3 %_352928.zext
    %_352932 = fadd fast float %_352856, %_352915
    store float %_352932, float addrspace(0)* %_352928
    %_352936 = load float, float addrspace(0)* %fv_0_352550
    %_352942 = udiv i64 %t_352939, 2
    %_352945 = mul i64 40, %_352942
    %_352948 = urem i64 %t_352939, 2
    %_352951 = mul i64 20, %_352948
    %_352953 = add i64 %_352945, %_352951
    %_352956 = udiv i64 %t_352624, 4
    %_352959 = mul i64 4, %_352956
    %_352961 = add i64 %_352953, %_352959
    %_352964 = urem i64 %t_352624, 4
    %_352967 = add i64 %_352961, %_352964
    %_352970 = udiv i64 %_352967, 20
    %_352975 = urem i64 %_352970, 4096
    %_352978 = urem i64 %_352967, 20
    %_352983 = urem i64 %_352978, 20
    %_352988 = urem i64 %_352983, 20
    %_352990 = trunc i64 %_352988 to i5
    %_352992.zext = zext i5 %_352990 to i6 ; add one more bit for gep index as it is treated as signed value
    %_352992 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_352992.zext
    %_352994 = load float, float addrspace(0)* %_352992
    %_352996 = trunc i64 %_352942 to i11
    %_352998.zext = zext i11 %_352996 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352998 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_352998.zext
    %_352999 = trunc i64 %_352948 to i1
    %_353001.zext = zext i1 %_352999 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353001 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_352998, i64 0, i2 %_353001.zext
    %_353002 = trunc i64 %_352956 to i3
    %_353004.zext = zext i3 %_353002 to i4 ; add one more bit for gep index as it is treated as signed value
    %_353004 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_353001, i64 0, i4 %_353004.zext
    %_353005 = trunc i64 %_352964 to i2
    %_353007.zext = zext i2 %_353005 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353007 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353004, i64 0, i3 %_353007.zext
    %_353011 = fadd fast float %_352936, %_352994
    store float %_353011, float addrspace(0)* %_353007
    %_353015 = load float, float addrspace(0)* %fv_0_352554
    %_353018 = udiv i64 %t_352939, 2
    %_353021 = mul i64 40, %_353018
    %_353024 = urem i64 %t_352939, 2
    %_353027 = mul i64 20, %_353024
    %_353029 = add i64 %_353021, %_353027
    %_353032 = udiv i64 %t_352715, 4
    %_353035 = mul i64 4, %_353032
    %_353037 = add i64 %_353029, %_353035
    %_353040 = urem i64 %t_352715, 4
    %_353043 = add i64 %_353037, %_353040
    %_353046 = udiv i64 %_353043, 20
    %_353051 = urem i64 %_353046, 4096
    %_353054 = urem i64 %_353043, 20
    %_353059 = urem i64 %_353054, 20
    %_353064 = urem i64 %_353059, 20
    %_353066 = trunc i64 %_353064 to i5
    %_353068.zext = zext i5 %_353066 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353068 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_353068.zext
    %_353070 = load float, float addrspace(0)* %_353068
    %_353072 = trunc i64 %_353018 to i11
    %_353074.zext = zext i11 %_353072 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353074 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_353074.zext
    %_353075 = trunc i64 %_353024 to i1
    %_353077.zext = zext i1 %_353075 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353077 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_353074, i64 0, i2 %_353077.zext
    %_353078 = trunc i64 %_353032 to i3
    %_353080.zext = zext i3 %_353078 to i4 ; add one more bit for gep index as it is treated as signed value
    %_353080 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_353077, i64 0, i4 %_353080.zext
    %_353081 = trunc i64 %_353040 to i2
    %_353083.zext = zext i2 %_353081 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353083 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353080, i64 0, i3 %_353083.zext
    %_353087 = fadd fast float %_353015, %_353070
    store float %_353087, float addrspace(0)* %_353083
    %_353091 = load float, float addrspace(0)* %fv_0_352558
    %_353094 = udiv i64 %t_352939, 2
    %_353097 = mul i64 40, %_353094
    %_353100 = urem i64 %t_352939, 2
    %_353103 = mul i64 20, %_353100
    %_353105 = add i64 %_353097, %_353103
    %_353108 = udiv i64 %t_352794, 4
    %_353111 = mul i64 4, %_353108
    %_353113 = add i64 %_353105, %_353111
    %_353116 = urem i64 %t_352794, 4
    %_353119 = add i64 %_353113, %_353116
    %_353122 = udiv i64 %_353119, 20
    %_353127 = urem i64 %_353122, 4096
    %_353130 = urem i64 %_353119, 20
    %_353135 = urem i64 %_353130, 20
    %_353140 = urem i64 %_353135, 20
    %_353142 = trunc i64 %_353140 to i5
    %_353144.zext = zext i5 %_353142 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353144 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_353144.zext
    %_353146 = load float, float addrspace(0)* %_353144
    %_353148 = trunc i64 %_353094 to i11
    %_353150.zext = zext i11 %_353148 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353150 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_353150.zext
    %_353151 = trunc i64 %_353100 to i1
    %_353153.zext = zext i1 %_353151 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353153 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_353150, i64 0, i2 %_353153.zext
    %_353154 = trunc i64 %_353108 to i3
    %_353156.zext = zext i3 %_353154 to i4 ; add one more bit for gep index as it is treated as signed value
    %_353156 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_353153, i64 0, i4 %_353156.zext
    %_353157 = trunc i64 %_353116 to i2
    %_353159.zext = zext i2 %_353157 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353159 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353156, i64 0, i3 %_353159.zext
    %_353163 = fadd fast float %_353091, %_353146
    store float %_353163, float addrspace(0)* %_353159
    %_353167 = load float, float addrspace(0)* %fv_0_352562
    %_353170 = udiv i64 %t_352939, 2
    %_353173 = mul i64 40, %_353170
    %_353176 = urem i64 %t_352939, 2
    %_353179 = mul i64 20, %_353176
    %_353181 = add i64 %_353173, %_353179
    %_353184 = udiv i64 %t_352874, 4
    %_353187 = mul i64 4, %_353184
    %_353189 = add i64 %_353181, %_353187
    %_353192 = urem i64 %t_352874, 4
    %_353195 = add i64 %_353189, %_353192
    %_353198 = udiv i64 %_353195, 20
    %_353203 = urem i64 %_353198, 4096
    %_353206 = urem i64 %_353195, 20
    %_353211 = urem i64 %_353206, 20
    %_353216 = urem i64 %_353211, 20
    %_353218 = trunc i64 %_353216 to i5
    %_353220.zext = zext i5 %_353218 to i6 ; add one more bit for gep index as it is treated as signed value
    %_353220 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %l_self_modules_fc3_parameters_bias__352583, i64 0, i6 %_353220.zext
    %_353222 = load float, float addrspace(0)* %_353220
    %_353224 = trunc i64 %_353170 to i11
    %_353226.zext = zext i11 %_353224 to i12 ; add one more bit for gep index as it is treated as signed value
    %_353226 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_353226.zext
    %_353227 = trunc i64 %_353176 to i1
    %_353229.zext = zext i1 %_353227 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353229 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_353226, i64 0, i2 %_353229.zext
    %_353230 = trunc i64 %_353184 to i3
    %_353232.zext = zext i3 %_353230 to i4 ; add one more bit for gep index as it is treated as signed value
    %_353232 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_353229, i64 0, i4 %_353232.zext
    %_353233 = trunc i64 %_353192 to i2
    %_353235.zext = zext i2 %_353233 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353235 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353232, i64 0, i3 %_353235.zext
    %_353239 = fadd fast float %_353167, %_353222
    store float %_353239, float addrspace(0)* %_353235
    br label %head_352497

new_exit_352504:
    %fv_10_352506 = add nuw nsw i32 1, %iv_352208
    br label %head_352205

new_exit_352211:
    %_352216i8 = call i8* @malloc(i64 327680)
    %_352216 = bitcast i8* %_352216i8 to [4096 x [20 x float]] addrspace(0)*
    br label %head_352219

head_352219:
    %iv_352222 = phi i32 [ 0, %new_exit_352211 ], [ %fv_4_352249, %new_exit_352242 ]
    %_352224 = icmp ult i32 %iv_352222, 4096
    %_352298 = trunc i32 %iv_352222 to i12
    %_352306 = zext i12 %_352298 to i64
    %_352312 = mul i64 20, %_352306
    %_352447.zext = zext i12 %_352298 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352447 = getelementptr inbounds [4096 x [20 x float]], [4096 x [20 x float]] addrspace(0)* %_352216, i64 0, i13 %_352447.zext
    br i1 %_352224, label %new_body_352232, label %new_exit_352225

new_body_352232:
    br label %head_352235

head_352235:
    %iv_352238 = phi i32 [ 0, %new_body_352232 ], [ %fv_4_352255, %new_body_352253 ]
    %_352241 = icmp ult i32 %iv_352238, 20
    br i1 %_352241, label %new_body_352253, label %new_exit_352242

new_body_352253:
    %fv_4_352255 = add nuw nsw i32 1, %iv_352238
    %_352285 = trunc i32 %iv_352238 to i5
    %_352293 = zext i5 %_352285 to i64
    %_352316 = add i64 %_352293, %_352312
    %_352324 = udiv i64 %_352316, 40
    %_352331 = urem i64 %_352324, 2048
    %_352340 = trunc i64 %_352331 to i11
    %_352353.zext = zext i11 %_352340 to i12 ; add one more bit for gep index as it is treated as signed value
    %_352353 = getelementptr inbounds [2048 x [2 x [5 x [4 x float]]]], [2048 x [2 x [5 x [4 x float]]]] addrspace(0)* %_352199, i64 0, i12 %_352353.zext
    %_352357 = udiv i64 %_352316, 20
    %_352363 = urem i64 %_352357, 2
    %_352367 = trunc i64 %_352363 to i1
    %_352377.zext = zext i1 %_352367 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352377 = getelementptr inbounds [2 x [5 x [4 x float]]], [2 x [5 x [4 x float]]] addrspace(0)* %_352353, i64 0, i2 %_352377.zext
    %_352382 = udiv i64 %_352316, 4
    %_352388 = urem i64 %_352382, 5
    %_352392 = trunc i64 %_352388 to i3
    %_352404.zext = zext i3 %_352392 to i4 ; add one more bit for gep index as it is treated as signed value
    %_352404 = getelementptr inbounds [5 x [4 x float]], [5 x [4 x float]] addrspace(0)* %_352377, i64 0, i4 %_352404.zext
    %_352407 = urem i64 %_352316, 4
    %_352411 = trunc i64 %_352407 to i2
    %_352426.zext = zext i2 %_352411 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352426 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352404, i64 0, i3 %_352426.zext
    %_352431 = load float, float addrspace(0)* %_352426
    %_352478.zext = zext i5 %_352285 to i6 ; add one more bit for gep index as it is treated as signed value
    %_352478 = getelementptr inbounds [20 x float], [20 x float] addrspace(0)* %_352447, i64 0, i6 %_352478.zext
    store float %_352431, float addrspace(0)* %_352478
    br label %head_352235

new_exit_352242:
    %fv_4_352249 = add nuw nsw i32 1, %iv_352222
    br label %head_352219

new_exit_352225:
    ret [4096 x [20 x float]] addrspace(0)* %_352216

}


!1000 = !{!"llvm.loop.vectorize.enable", i1 true}
!1004 = distinct !{!1004, !1000}
!1003 = distinct !{!1003, !1000}
!1001 = distinct !{!1001, !1000}
!1002 = distinct !{!1002, !1000}
!1005 = distinct !{!1005, !1000}
!1006 = distinct !{!1006, !1000}
