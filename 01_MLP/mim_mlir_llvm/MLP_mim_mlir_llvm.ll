; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @MLP(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42) {
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %38, 0
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, ptr %39, 1
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %40, 2
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 %41, 3, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 %42, 4, 0
  %49 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %31, 0
  %50 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %49, ptr %32, 1
  %51 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %50, i64 %33, 2
  %52 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %51, i64 %34, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %52, i64 %36, 4, 0
  %54 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %53, i64 %35, 3, 1
  %55 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, i64 %37, 4, 1
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %26, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, ptr %27, 1
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 %28, 2
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, i64 %29, 3, 0
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 %30, 4, 0
  %61 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %19, 0
  %62 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, ptr %20, 1
  %63 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %62, i64 %21, 2
  %64 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %63, i64 %22, 3, 0
  %65 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %64, i64 %24, 4, 0
  %66 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %65, i64 %23, 3, 1
  %67 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %66, i64 %25, 4, 1
  %68 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %12, 0
  %69 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %68, ptr %13, 1
  %70 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %69, i64 %14, 2
  %71 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %70, i64 %15, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %71, i64 %17, 4, 0
  %73 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %72, i64 %16, 3, 1
  %74 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %73, i64 %18, 4, 1
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %7, 0
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, ptr %8, 1
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 %9, 2
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 %10, 3, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 %11, 4, 0
  %80 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %0, 0
  %81 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %80, ptr %1, 1
  %82 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %81, i64 %2, 2
  %83 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %82, i64 %3, 3, 0
  %84 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %83, i64 %5, 4, 0
  %85 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %84, i64 %4, 3, 1
  %86 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %85, i64 %6, 4, 1
  %87 = call ptr @aligned_alloc(i64 64, i64 1073741824)
  %88 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %87, 0
  %89 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %88, ptr %87, 1
  %90 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, i64 0, 2
  %91 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %90, i64 16384, 3, 0
  %92 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %91, i64 16384, 3, 1
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %92, i64 16384, 4, 0
  %94 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %93, i64 1, 4, 1
  br label %95

95:                                               ; preds = %113, %43
  %96 = phi i64 [ %114, %113 ], [ 0, %43 ]
  %97 = icmp slt i64 %96, 16384
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %102, %98
  %100 = phi i64 [ %112, %102 ], [ 0, %98 ]
  %101 = icmp slt i64 %100, 16384
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 1
  %104 = mul nuw nsw i64 %100, 16384
  %105 = add nuw nsw i64 %104, %96
  %106 = getelementptr inbounds nuw float, ptr %103, i64 %105
  %107 = load float, ptr %106, align 4
  %108 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %109 = mul nuw nsw i64 %96, 16384
  %110 = add nuw nsw i64 %109, %100
  %111 = getelementptr inbounds nuw float, ptr %108, i64 %110
  store float %107, ptr %111, align 4
  %112 = add i64 %100, 1
  br label %99

113:                                              ; preds = %99
  %114 = add i64 %96, 1
  br label %95

115:                                              ; preds = %95
  %116 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %116, 0
  %118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %117, ptr %116, 1
  %119 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, i64 0, 2
  %120 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %119, i64 128, 3, 0
  %121 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %120, i64 16384, 3, 1
  %122 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, i64 16384, 4, 0
  %123 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %122, i64 1, 4, 1
  %124 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %125 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %124, 0
  %126 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %125, ptr %124, 1
  %127 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %126, i64 0, 2
  %128 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, i64 128, 3, 0
  %129 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %128, i64 16384, 3, 1
  %130 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %129, i64 16384, 4, 0
  %131 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %130, i64 1, 4, 1
  br label %132

132:                                              ; preds = %145, %115
  %133 = phi i64 [ %146, %145 ], [ 0, %115 ]
  %134 = icmp slt i64 %133, 128
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %139, %135
  %137 = phi i64 [ %144, %139 ], [ 0, %135 ]
  %138 = icmp slt i64 %137, 16384
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %141 = mul nuw nsw i64 %133, 16384
  %142 = add nuw nsw i64 %141, %137
  %143 = getelementptr inbounds nuw float, ptr %140, i64 %142
  store float 0.000000e+00, ptr %143, align 4
  %144 = add i64 %137, 1
  br label %136

145:                                              ; preds = %136
  %146 = add i64 %133, 1
  br label %132

147:                                              ; preds = %132
  %148 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %149 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %148, 0
  %150 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %149, ptr %148, 1
  %151 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %150, i64 0, 2
  %152 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %151, i64 128, 3, 0
  %153 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %152, i64 16384, 3, 1
  %154 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %153, i64 16384, 4, 0
  %155 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %154, i64 1, 4, 1
  %156 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 3, 0
  %157 = mul i64 1, %156
  %158 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 3, 1
  %159 = mul i64 %157, %158
  %160 = mul i64 %159, 4
  %161 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %162 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 2
  %163 = getelementptr float, ptr %161, i64 %162
  %164 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %165 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 2
  %166 = getelementptr float, ptr %164, i64 %165
  call void @llvm.memcpy.p0.p0.i64(ptr %166, ptr %163, i64 %160, i1 false)
  br label %167

167:                                              ; preds = %272, %147
  %168 = phi i64 [ %273, %272 ], [ 0, %147 ]
  %169 = icmp slt i64 %168, 128
  br i1 %169, label %170, label %274

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %270, %170
  %172 = phi i64 [ %271, %270 ], [ 0, %170 ]
  %173 = icmp slt i64 %172, 16384
  br i1 %173, label %174, label %272

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %268, %174
  %176 = phi i64 [ %269, %268 ], [ 0, %174 ]
  %177 = icmp slt i64 %176, 16384
  br i1 %177, label %178, label %270

178:                                              ; preds = %175
  %179 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 0
  %180 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 1
  %181 = insertvalue { ptr, ptr, i64 } poison, ptr %179, 0
  %182 = insertvalue { ptr, ptr, i64 } %181, ptr %180, 1
  %183 = insertvalue { ptr, ptr, i64 } %182, i64 0, 2
  %184 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 2
  %185 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 0
  %186 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 1
  %187 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 0
  %188 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 1
  %189 = mul nsw i64 %168, 16384
  %190 = add i64 %189, %176
  %191 = extractvalue { ptr, ptr, i64 } %183, 0
  %192 = extractvalue { ptr, ptr, i64 } %183, 1
  %193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %191, 0
  %194 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %193, ptr %192, 1
  %195 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %194, i64 %190, 2
  %196 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %195, i64 32, 3, 0
  %197 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %196, i64 16384, 4, 0
  %198 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %197, i64 32, 3, 1
  %199 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %198, i64 1, 4, 1
  %200 = mul nsw i64 %176, 16384
  %201 = add i64 %200, %172
  %202 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  %203 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %204 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %202, 0
  %205 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %204, ptr %203, 1
  %206 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %205, i64 %201, 2
  %207 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %206, i64 32, 3, 0
  %208 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, i64 16384, 4, 0
  %209 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %208, i64 32, 3, 1
  %210 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %209, i64 1, 4, 1
  %211 = mul nsw i64 %168, 16384
  %212 = add i64 %211, %172
  %213 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 0
  %214 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %215 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %213, 0
  %216 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %215, ptr %214, 1
  %217 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %216, i64 %212, 2
  %218 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, i64 32, 3, 0
  %219 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %218, i64 16384, 4, 0
  %220 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %219, i64 32, 3, 1
  %221 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %220, i64 1, 4, 1
  br label %222

222:                                              ; preds = %266, %178
  %223 = phi i64 [ %267, %266 ], [ 0, %178 ]
  %224 = icmp slt i64 %223, 32
  br i1 %224, label %225, label %268

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %264, %225
  %227 = phi i64 [ %265, %264 ], [ 0, %225 ]
  %228 = icmp slt i64 %227, 32
  br i1 %228, label %229, label %266

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %233, %229
  %231 = phi i64 [ %263, %233 ], [ 0, %229 ]
  %232 = icmp slt i64 %231, 32
  br i1 %232, label %233, label %264

233:                                              ; preds = %230
  %234 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %199, 1
  %235 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %199, 2
  %236 = getelementptr float, ptr %234, i64 %235
  %237 = mul nuw nsw i64 %223, 16384
  %238 = add nuw nsw i64 %237, %231
  %239 = getelementptr inbounds nuw float, ptr %236, i64 %238
  %240 = load float, ptr %239, align 4
  %241 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, 1
  %242 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, 2
  %243 = getelementptr float, ptr %241, i64 %242
  %244 = mul nuw nsw i64 %231, 16384
  %245 = add nuw nsw i64 %244, %227
  %246 = getelementptr inbounds nuw float, ptr %243, i64 %245
  %247 = load float, ptr %246, align 4
  %248 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 1
  %249 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 2
  %250 = getelementptr float, ptr %248, i64 %249
  %251 = mul nuw nsw i64 %223, 16384
  %252 = add nuw nsw i64 %251, %227
  %253 = getelementptr inbounds nuw float, ptr %250, i64 %252
  %254 = load float, ptr %253, align 4
  %255 = fmul float %240, %247
  %256 = fadd float %255, %254
  %257 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 1
  %258 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 2
  %259 = getelementptr float, ptr %257, i64 %258
  %260 = mul nuw nsw i64 %223, 16384
  %261 = add nuw nsw i64 %260, %227
  %262 = getelementptr inbounds nuw float, ptr %259, i64 %261
  store float %256, ptr %262, align 4
  %263 = add i64 %231, 1
  br label %230

264:                                              ; preds = %230
  %265 = add i64 %227, 1
  br label %226

266:                                              ; preds = %226
  %267 = add i64 %223, 1
  br label %222

268:                                              ; preds = %222
  %269 = add i64 %176, 32
  br label %175

270:                                              ; preds = %175
  %271 = add i64 %172, 32
  br label %171

272:                                              ; preds = %171
  %273 = add i64 %168, 32
  br label %167

274:                                              ; preds = %167
  %275 = call ptr @aligned_alloc(i64 64, i64 65536)
  %276 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %275, 0
  %277 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, ptr %275, 1
  %278 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %277, i64 0, 2
  %279 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %278, i64 1, 3, 0
  %280 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %279, i64 16384, 3, 1
  %281 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %280, i64 16384, 4, 0
  %282 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %281, i64 1, 4, 1
  br label %283

283:                                              ; preds = %299, %274
  %284 = phi i64 [ %300, %299 ], [ 0, %274 ]
  %285 = icmp slt i64 %284, 1
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  br label %287

287:                                              ; preds = %290, %286
  %288 = phi i64 [ %298, %290 ], [ 0, %286 ]
  %289 = icmp slt i64 %288, 16384
  br i1 %289, label %290, label %299

290:                                              ; preds = %287
  %291 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, 1
  %292 = getelementptr inbounds nuw float, ptr %291, i64 %288
  %293 = load float, ptr %292, align 4
  %294 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %295 = mul nuw nsw i64 %284, 16384
  %296 = add nuw nsw i64 %295, %288
  %297 = getelementptr inbounds nuw float, ptr %294, i64 %296
  store float %293, ptr %297, align 4
  %298 = add i64 %288, 1
  br label %287

299:                                              ; preds = %287
  %300 = add i64 %284, 1
  br label %283

301:                                              ; preds = %283
  br label %302

302:                                              ; preds = %319, %301
  %303 = phi i64 [ %320, %319 ], [ 0, %301 ]
  %304 = icmp slt i64 %303, 128
  br i1 %304, label %305, label %321

305:                                              ; preds = %302
  br label %306

306:                                              ; preds = %309, %305
  %307 = phi i64 [ %318, %309 ], [ 0, %305 ]
  %308 = icmp slt i64 %307, 16384
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %311 = add nuw nsw i64 0, %307
  %312 = getelementptr inbounds nuw float, ptr %310, i64 %311
  %313 = load float, ptr %312, align 4
  %314 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %315 = mul nuw nsw i64 %303, 16384
  %316 = add nuw nsw i64 %315, %307
  %317 = getelementptr inbounds nuw float, ptr %314, i64 %316
  store float %313, ptr %317, align 4
  %318 = add i64 %307, 1
  br label %306

319:                                              ; preds = %306
  %320 = add i64 %303, 1
  br label %302

321:                                              ; preds = %302
  br label %322

322:                                              ; preds = %346, %321
  %323 = phi i64 [ %347, %346 ], [ 0, %321 ]
  %324 = icmp slt i64 %323, 128
  br i1 %324, label %325, label %348

325:                                              ; preds = %322
  br label %326

326:                                              ; preds = %329, %325
  %327 = phi i64 [ %345, %329 ], [ 0, %325 ]
  %328 = icmp slt i64 %327, 16384
  br i1 %328, label %329, label %346

329:                                              ; preds = %326
  %330 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %331 = mul nuw nsw i64 %323, 16384
  %332 = add nuw nsw i64 %331, %327
  %333 = getelementptr inbounds nuw float, ptr %330, i64 %332
  %334 = load float, ptr %333, align 4
  %335 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %336 = mul nuw nsw i64 %323, 16384
  %337 = add nuw nsw i64 %336, %327
  %338 = getelementptr inbounds nuw float, ptr %335, i64 %337
  %339 = load float, ptr %338, align 4
  %340 = fadd float %334, %339
  %341 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %342 = mul nuw nsw i64 %323, 16384
  %343 = add nuw nsw i64 %342, %327
  %344 = getelementptr inbounds nuw float, ptr %341, i64 %343
  store float %340, ptr %344, align 4
  %345 = add i64 %327, 1
  br label %326

346:                                              ; preds = %326
  %347 = add i64 %323, 1
  br label %322

348:                                              ; preds = %322
  br label %349

349:                                              ; preds = %368, %348
  %350 = phi i64 [ %369, %368 ], [ 0, %348 ]
  %351 = icmp slt i64 %350, 128
  br i1 %351, label %352, label %370

352:                                              ; preds = %349
  br label %353

353:                                              ; preds = %356, %352
  %354 = phi i64 [ %367, %356 ], [ 0, %352 ]
  %355 = icmp slt i64 %354, 16384
  br i1 %355, label %356, label %368

356:                                              ; preds = %353
  %357 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %358 = mul nuw nsw i64 %350, 16384
  %359 = add nuw nsw i64 %358, %354
  %360 = getelementptr inbounds nuw float, ptr %357, i64 %359
  %361 = load float, ptr %360, align 4
  %362 = call float @llvm.maxnum.f32(float %361, float 0.000000e+00)
  %363 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %364 = mul nuw nsw i64 %350, 16384
  %365 = add nuw nsw i64 %364, %354
  %366 = getelementptr inbounds nuw float, ptr %363, i64 %365
  store float %362, ptr %366, align 4
  %367 = add i64 %354, 1
  br label %353

368:                                              ; preds = %353
  %369 = add i64 %350, 1
  br label %349

370:                                              ; preds = %349
  br label %371

371:                                              ; preds = %389, %370
  %372 = phi i64 [ %390, %389 ], [ 0, %370 ]
  %373 = icmp slt i64 %372, 16384
  br i1 %373, label %374, label %391

374:                                              ; preds = %371
  br label %375

375:                                              ; preds = %378, %374
  %376 = phi i64 [ %388, %378 ], [ 0, %374 ]
  %377 = icmp slt i64 %376, 16384
  br i1 %377, label %378, label %389

378:                                              ; preds = %375
  %379 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %380 = mul nuw nsw i64 %376, 16384
  %381 = add nuw nsw i64 %380, %372
  %382 = getelementptr inbounds nuw float, ptr %379, i64 %381
  %383 = load float, ptr %382, align 4
  %384 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %385 = mul nuw nsw i64 %372, 16384
  %386 = add nuw nsw i64 %385, %376
  %387 = getelementptr inbounds nuw float, ptr %384, i64 %386
  store float %383, ptr %387, align 4
  %388 = add i64 %376, 1
  br label %375

389:                                              ; preds = %375
  %390 = add i64 %372, 1
  br label %371

391:                                              ; preds = %371
  br label %392

392:                                              ; preds = %487, %391
  %393 = phi i64 [ %488, %487 ], [ 0, %391 ]
  %394 = icmp slt i64 %393, 128
  br i1 %394, label %395, label %489

395:                                              ; preds = %392
  br label %396

396:                                              ; preds = %485, %395
  %397 = phi i64 [ %486, %485 ], [ 0, %395 ]
  %398 = icmp slt i64 %397, 16384
  br i1 %398, label %399, label %487

399:                                              ; preds = %396
  br label %400

400:                                              ; preds = %483, %399
  %401 = phi i64 [ %484, %483 ], [ 0, %399 ]
  %402 = icmp slt i64 %401, 16384
  br i1 %402, label %403, label %485

403:                                              ; preds = %400
  %404 = mul nsw i64 %393, 16384
  %405 = add i64 %404, %401
  %406 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %407 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %408 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %406, 0
  %409 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %408, ptr %407, 1
  %410 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %409, i64 %405, 2
  %411 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %410, i64 32, 3, 0
  %412 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %411, i64 16384, 4, 0
  %413 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %412, i64 32, 3, 1
  %414 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %413, i64 1, 4, 1
  %415 = mul nsw i64 %401, 16384
  %416 = add i64 %415, %397
  %417 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  %418 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %419 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %417, 0
  %420 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %419, ptr %418, 1
  %421 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %420, i64 %416, 2
  %422 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %421, i64 32, 3, 0
  %423 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %422, i64 16384, 4, 0
  %424 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %423, i64 32, 3, 1
  %425 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %424, i64 1, 4, 1
  %426 = mul nsw i64 %393, 16384
  %427 = add i64 %426, %397
  %428 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  %429 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %430 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %428, 0
  %431 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %430, ptr %429, 1
  %432 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %431, i64 %427, 2
  %433 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %432, i64 32, 3, 0
  %434 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %433, i64 16384, 4, 0
  %435 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %434, i64 32, 3, 1
  %436 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %435, i64 1, 4, 1
  br label %437

437:                                              ; preds = %481, %403
  %438 = phi i64 [ %482, %481 ], [ 0, %403 ]
  %439 = icmp slt i64 %438, 32
  br i1 %439, label %440, label %483

440:                                              ; preds = %437
  br label %441

441:                                              ; preds = %479, %440
  %442 = phi i64 [ %480, %479 ], [ 0, %440 ]
  %443 = icmp slt i64 %442, 32
  br i1 %443, label %444, label %481

444:                                              ; preds = %441
  br label %445

445:                                              ; preds = %448, %444
  %446 = phi i64 [ %478, %448 ], [ 0, %444 ]
  %447 = icmp slt i64 %446, 32
  br i1 %447, label %448, label %479

448:                                              ; preds = %445
  %449 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %414, 1
  %450 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %414, 2
  %451 = getelementptr float, ptr %449, i64 %450
  %452 = mul nuw nsw i64 %438, 16384
  %453 = add nuw nsw i64 %452, %446
  %454 = getelementptr inbounds nuw float, ptr %451, i64 %453
  %455 = load float, ptr %454, align 4
  %456 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %425, 1
  %457 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %425, 2
  %458 = getelementptr float, ptr %456, i64 %457
  %459 = mul nuw nsw i64 %446, 16384
  %460 = add nuw nsw i64 %459, %442
  %461 = getelementptr inbounds nuw float, ptr %458, i64 %460
  %462 = load float, ptr %461, align 4
  %463 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, 1
  %464 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, 2
  %465 = getelementptr float, ptr %463, i64 %464
  %466 = mul nuw nsw i64 %438, 16384
  %467 = add nuw nsw i64 %466, %442
  %468 = getelementptr inbounds nuw float, ptr %465, i64 %467
  %469 = load float, ptr %468, align 4
  %470 = fmul float %455, %462
  %471 = fadd float %470, %469
  %472 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, 1
  %473 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, 2
  %474 = getelementptr float, ptr %472, i64 %473
  %475 = mul nuw nsw i64 %438, 16384
  %476 = add nuw nsw i64 %475, %442
  %477 = getelementptr inbounds nuw float, ptr %474, i64 %476
  store float %471, ptr %477, align 4
  %478 = add i64 %446, 1
  br label %445

479:                                              ; preds = %445
  %480 = add i64 %442, 1
  br label %441

481:                                              ; preds = %441
  %482 = add i64 %438, 1
  br label %437

483:                                              ; preds = %437
  %484 = add i64 %401, 32
  br label %400

485:                                              ; preds = %400
  %486 = add i64 %397, 32
  br label %396

487:                                              ; preds = %396
  %488 = add i64 %393, 32
  br label %392

489:                                              ; preds = %392
  br label %490

490:                                              ; preds = %506, %489
  %491 = phi i64 [ %507, %506 ], [ 0, %489 ]
  %492 = icmp slt i64 %491, 1
  br i1 %492, label %493, label %508

493:                                              ; preds = %490
  br label %494

494:                                              ; preds = %497, %493
  %495 = phi i64 [ %505, %497 ], [ 0, %493 ]
  %496 = icmp slt i64 %495, 16384
  br i1 %496, label %497, label %506

497:                                              ; preds = %494
  %498 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %499 = getelementptr inbounds nuw float, ptr %498, i64 %495
  %500 = load float, ptr %499, align 4
  %501 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %502 = mul nuw nsw i64 %491, 16384
  %503 = add nuw nsw i64 %502, %495
  %504 = getelementptr inbounds nuw float, ptr %501, i64 %503
  store float %500, ptr %504, align 4
  %505 = add i64 %495, 1
  br label %494

506:                                              ; preds = %494
  %507 = add i64 %491, 1
  br label %490

508:                                              ; preds = %490
  br label %509

509:                                              ; preds = %526, %508
  %510 = phi i64 [ %527, %526 ], [ 0, %508 ]
  %511 = icmp slt i64 %510, 128
  br i1 %511, label %512, label %528

512:                                              ; preds = %509
  br label %513

513:                                              ; preds = %516, %512
  %514 = phi i64 [ %525, %516 ], [ 0, %512 ]
  %515 = icmp slt i64 %514, 16384
  br i1 %515, label %516, label %526

516:                                              ; preds = %513
  %517 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %518 = add nuw nsw i64 0, %514
  %519 = getelementptr inbounds nuw float, ptr %517, i64 %518
  %520 = load float, ptr %519, align 4
  %521 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %522 = mul nuw nsw i64 %510, 16384
  %523 = add nuw nsw i64 %522, %514
  %524 = getelementptr inbounds nuw float, ptr %521, i64 %523
  store float %520, ptr %524, align 4
  %525 = add i64 %514, 1
  br label %513

526:                                              ; preds = %513
  %527 = add i64 %510, 1
  br label %509

528:                                              ; preds = %509
  br label %529

529:                                              ; preds = %553, %528
  %530 = phi i64 [ %554, %553 ], [ 0, %528 ]
  %531 = icmp slt i64 %530, 128
  br i1 %531, label %532, label %555

532:                                              ; preds = %529
  br label %533

533:                                              ; preds = %536, %532
  %534 = phi i64 [ %552, %536 ], [ 0, %532 ]
  %535 = icmp slt i64 %534, 16384
  br i1 %535, label %536, label %553

536:                                              ; preds = %533
  %537 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %538 = mul nuw nsw i64 %530, 16384
  %539 = add nuw nsw i64 %538, %534
  %540 = getelementptr inbounds nuw float, ptr %537, i64 %539
  %541 = load float, ptr %540, align 4
  %542 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %543 = mul nuw nsw i64 %530, 16384
  %544 = add nuw nsw i64 %543, %534
  %545 = getelementptr inbounds nuw float, ptr %542, i64 %544
  %546 = load float, ptr %545, align 4
  %547 = fadd float %541, %546
  %548 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %549 = mul nuw nsw i64 %530, 16384
  %550 = add nuw nsw i64 %549, %534
  %551 = getelementptr inbounds nuw float, ptr %548, i64 %550
  store float %547, ptr %551, align 4
  %552 = add i64 %534, 1
  br label %533

553:                                              ; preds = %533
  %554 = add i64 %530, 1
  br label %529

555:                                              ; preds = %529
  br label %556

556:                                              ; preds = %575, %555
  %557 = phi i64 [ %576, %575 ], [ 0, %555 ]
  %558 = icmp slt i64 %557, 128
  br i1 %558, label %559, label %577

559:                                              ; preds = %556
  br label %560

560:                                              ; preds = %563, %559
  %561 = phi i64 [ %574, %563 ], [ 0, %559 ]
  %562 = icmp slt i64 %561, 16384
  br i1 %562, label %563, label %575

563:                                              ; preds = %560
  %564 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %565 = mul nuw nsw i64 %557, 16384
  %566 = add nuw nsw i64 %565, %561
  %567 = getelementptr inbounds nuw float, ptr %564, i64 %566
  %568 = load float, ptr %567, align 4
  %569 = call float @llvm.maxnum.f32(float %568, float 0.000000e+00)
  %570 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %571 = mul nuw nsw i64 %557, 16384
  %572 = add nuw nsw i64 %571, %561
  %573 = getelementptr inbounds nuw float, ptr %570, i64 %572
  store float %569, ptr %573, align 4
  %574 = add i64 %561, 1
  br label %560

575:                                              ; preds = %560
  %576 = add i64 %557, 1
  br label %556

577:                                              ; preds = %556
  %578 = call ptr @aligned_alloc(i64 64, i64 536870912)
  %579 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %578, 0
  %580 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %579, ptr %578, 1
  %581 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %580, i64 0, 2
  %582 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %581, i64 16384, 3, 0
  %583 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %582, i64 8192, 3, 1
  %584 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %583, i64 8192, 4, 0
  %585 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %584, i64 1, 4, 1
  br label %586

586:                                              ; preds = %604, %577
  %587 = phi i64 [ %605, %604 ], [ 0, %577 ]
  %588 = icmp slt i64 %587, 16384
  br i1 %588, label %589, label %606

589:                                              ; preds = %586
  br label %590

590:                                              ; preds = %593, %589
  %591 = phi i64 [ %603, %593 ], [ 0, %589 ]
  %592 = icmp slt i64 %591, 8192
  br i1 %592, label %593, label %604

593:                                              ; preds = %590
  %594 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %595 = mul nuw nsw i64 %591, 16384
  %596 = add nuw nsw i64 %595, %587
  %597 = getelementptr inbounds nuw float, ptr %594, i64 %596
  %598 = load float, ptr %597, align 4
  %599 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %585, 1
  %600 = mul nuw nsw i64 %587, 8192
  %601 = add nuw nsw i64 %600, %591
  %602 = getelementptr inbounds nuw float, ptr %599, i64 %601
  store float %598, ptr %602, align 4
  %603 = add i64 %591, 1
  br label %590

604:                                              ; preds = %590
  %605 = add i64 %587, 1
  br label %586

606:                                              ; preds = %586
  %607 = call ptr @aligned_alloc(i64 64, i64 4194304)
  %608 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %607, 0
  %609 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %608, ptr %607, 1
  %610 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %609, i64 0, 2
  %611 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %610, i64 128, 3, 0
  %612 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %611, i64 8192, 3, 1
  %613 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %612, i64 8192, 4, 0
  %614 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %613, i64 1, 4, 1
  %615 = call ptr @aligned_alloc(i64 64, i64 4194304)
  %616 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %615, 0
  %617 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %616, ptr %615, 1
  %618 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %617, i64 0, 2
  %619 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %618, i64 128, 3, 0
  %620 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %619, i64 8192, 3, 1
  %621 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %620, i64 8192, 4, 0
  %622 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %621, i64 1, 4, 1
  br label %623

623:                                              ; preds = %636, %606
  %624 = phi i64 [ %637, %636 ], [ 0, %606 ]
  %625 = icmp slt i64 %624, 128
  br i1 %625, label %626, label %638

626:                                              ; preds = %623
  br label %627

627:                                              ; preds = %630, %626
  %628 = phi i64 [ %635, %630 ], [ 0, %626 ]
  %629 = icmp slt i64 %628, 8192
  br i1 %629, label %630, label %636

630:                                              ; preds = %627
  %631 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 1
  %632 = mul nuw nsw i64 %624, 8192
  %633 = add nuw nsw i64 %632, %628
  %634 = getelementptr inbounds nuw float, ptr %631, i64 %633
  store float 0.000000e+00, ptr %634, align 4
  %635 = add i64 %628, 1
  br label %627

636:                                              ; preds = %627
  %637 = add i64 %624, 1
  br label %623

638:                                              ; preds = %623
  br label %639

639:                                              ; preds = %734, %638
  %640 = phi i64 [ %735, %734 ], [ 0, %638 ]
  %641 = icmp slt i64 %640, 128
  br i1 %641, label %642, label %736

642:                                              ; preds = %639
  br label %643

643:                                              ; preds = %732, %642
  %644 = phi i64 [ %733, %732 ], [ 0, %642 ]
  %645 = icmp slt i64 %644, 8192
  br i1 %645, label %646, label %734

646:                                              ; preds = %643
  br label %647

647:                                              ; preds = %730, %646
  %648 = phi i64 [ %731, %730 ], [ 0, %646 ]
  %649 = icmp slt i64 %648, 16384
  br i1 %649, label %650, label %732

650:                                              ; preds = %647
  %651 = mul nsw i64 %640, 16384
  %652 = add i64 %651, %648
  %653 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %654 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %655 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %653, 0
  %656 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %655, ptr %654, 1
  %657 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %656, i64 %652, 2
  %658 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %657, i64 32, 3, 0
  %659 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %658, i64 16384, 4, 0
  %660 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %659, i64 32, 3, 1
  %661 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %660, i64 1, 4, 1
  %662 = mul nsw i64 %648, 8192
  %663 = add i64 %662, %644
  %664 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %585, 0
  %665 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %585, 1
  %666 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %664, 0
  %667 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %666, ptr %665, 1
  %668 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %667, i64 %663, 2
  %669 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %668, i64 32, 3, 0
  %670 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %669, i64 8192, 4, 0
  %671 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %670, i64 32, 3, 1
  %672 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %671, i64 1, 4, 1
  %673 = mul nsw i64 %640, 8192
  %674 = add i64 %673, %644
  %675 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 0
  %676 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 1
  %677 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %675, 0
  %678 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %677, ptr %676, 1
  %679 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %678, i64 %674, 2
  %680 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %679, i64 32, 3, 0
  %681 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %680, i64 8192, 4, 0
  %682 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %681, i64 32, 3, 1
  %683 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %682, i64 1, 4, 1
  br label %684

684:                                              ; preds = %728, %650
  %685 = phi i64 [ %729, %728 ], [ 0, %650 ]
  %686 = icmp slt i64 %685, 32
  br i1 %686, label %687, label %730

687:                                              ; preds = %684
  br label %688

688:                                              ; preds = %726, %687
  %689 = phi i64 [ %727, %726 ], [ 0, %687 ]
  %690 = icmp slt i64 %689, 32
  br i1 %690, label %691, label %728

691:                                              ; preds = %688
  br label %692

692:                                              ; preds = %695, %691
  %693 = phi i64 [ %725, %695 ], [ 0, %691 ]
  %694 = icmp slt i64 %693, 32
  br i1 %694, label %695, label %726

695:                                              ; preds = %692
  %696 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %661, 1
  %697 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %661, 2
  %698 = getelementptr float, ptr %696, i64 %697
  %699 = mul nuw nsw i64 %685, 16384
  %700 = add nuw nsw i64 %699, %693
  %701 = getelementptr inbounds nuw float, ptr %698, i64 %700
  %702 = load float, ptr %701, align 4
  %703 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %672, 1
  %704 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %672, 2
  %705 = getelementptr float, ptr %703, i64 %704
  %706 = mul nuw nsw i64 %693, 8192
  %707 = add nuw nsw i64 %706, %689
  %708 = getelementptr inbounds nuw float, ptr %705, i64 %707
  %709 = load float, ptr %708, align 4
  %710 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %683, 1
  %711 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %683, 2
  %712 = getelementptr float, ptr %710, i64 %711
  %713 = mul nuw nsw i64 %685, 8192
  %714 = add nuw nsw i64 %713, %689
  %715 = getelementptr inbounds nuw float, ptr %712, i64 %714
  %716 = load float, ptr %715, align 4
  %717 = fmul float %702, %709
  %718 = fadd float %717, %716
  %719 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %683, 1
  %720 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %683, 2
  %721 = getelementptr float, ptr %719, i64 %720
  %722 = mul nuw nsw i64 %685, 8192
  %723 = add nuw nsw i64 %722, %689
  %724 = getelementptr inbounds nuw float, ptr %721, i64 %723
  store float %718, ptr %724, align 4
  %725 = add i64 %693, 1
  br label %692

726:                                              ; preds = %692
  %727 = add i64 %689, 1
  br label %688

728:                                              ; preds = %688
  %729 = add i64 %685, 1
  br label %684

730:                                              ; preds = %684
  %731 = add i64 %648, 32
  br label %647

732:                                              ; preds = %647
  %733 = add i64 %644, 32
  br label %643

734:                                              ; preds = %643
  %735 = add i64 %640, 32
  br label %639

736:                                              ; preds = %639
  %737 = call ptr @aligned_alloc(i64 64, i64 32768)
  %738 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %737, 0
  %739 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, ptr %737, 1
  %740 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %739, i64 0, 2
  %741 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %740, i64 1, 3, 0
  %742 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %741, i64 8192, 3, 1
  %743 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %742, i64 8192, 4, 0
  %744 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %743, i64 1, 4, 1
  br label %745

745:                                              ; preds = %761, %736
  %746 = phi i64 [ %762, %761 ], [ 0, %736 ]
  %747 = icmp slt i64 %746, 1
  br i1 %747, label %748, label %763

748:                                              ; preds = %745
  br label %749

749:                                              ; preds = %752, %748
  %750 = phi i64 [ %760, %752 ], [ 0, %748 ]
  %751 = icmp slt i64 %750, 8192
  br i1 %751, label %752, label %761

752:                                              ; preds = %749
  %753 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %754 = getelementptr inbounds nuw float, ptr %753, i64 %750
  %755 = load float, ptr %754, align 4
  %756 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %744, 1
  %757 = mul nuw nsw i64 %746, 8192
  %758 = add nuw nsw i64 %757, %750
  %759 = getelementptr inbounds nuw float, ptr %756, i64 %758
  store float %755, ptr %759, align 4
  %760 = add i64 %750, 1
  br label %749

761:                                              ; preds = %749
  %762 = add i64 %746, 1
  br label %745

763:                                              ; preds = %745
  br label %764

764:                                              ; preds = %781, %763
  %765 = phi i64 [ %782, %781 ], [ 0, %763 ]
  %766 = icmp slt i64 %765, 128
  br i1 %766, label %767, label %783

767:                                              ; preds = %764
  br label %768

768:                                              ; preds = %771, %767
  %769 = phi i64 [ %780, %771 ], [ 0, %767 ]
  %770 = icmp slt i64 %769, 8192
  br i1 %770, label %771, label %781

771:                                              ; preds = %768
  %772 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %744, 1
  %773 = add nuw nsw i64 0, %769
  %774 = getelementptr inbounds nuw float, ptr %772, i64 %773
  %775 = load float, ptr %774, align 4
  %776 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %614, 1
  %777 = mul nuw nsw i64 %765, 8192
  %778 = add nuw nsw i64 %777, %769
  %779 = getelementptr inbounds nuw float, ptr %776, i64 %778
  store float %775, ptr %779, align 4
  %780 = add i64 %769, 1
  br label %768

781:                                              ; preds = %768
  %782 = add i64 %765, 1
  br label %764

783:                                              ; preds = %764
  br label %784

784:                                              ; preds = %808, %783
  %785 = phi i64 [ %809, %808 ], [ 0, %783 ]
  %786 = icmp slt i64 %785, 128
  br i1 %786, label %787, label %810

787:                                              ; preds = %784
  br label %788

788:                                              ; preds = %791, %787
  %789 = phi i64 [ %807, %791 ], [ 0, %787 ]
  %790 = icmp slt i64 %789, 8192
  br i1 %790, label %791, label %808

791:                                              ; preds = %788
  %792 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 1
  %793 = mul nuw nsw i64 %785, 8192
  %794 = add nuw nsw i64 %793, %789
  %795 = getelementptr inbounds nuw float, ptr %792, i64 %794
  %796 = load float, ptr %795, align 4
  %797 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %614, 1
  %798 = mul nuw nsw i64 %785, 8192
  %799 = add nuw nsw i64 %798, %789
  %800 = getelementptr inbounds nuw float, ptr %797, i64 %799
  %801 = load float, ptr %800, align 4
  %802 = fadd float %796, %801
  %803 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %614, 1
  %804 = mul nuw nsw i64 %785, 8192
  %805 = add nuw nsw i64 %804, %789
  %806 = getelementptr inbounds nuw float, ptr %803, i64 %805
  store float %802, ptr %806, align 4
  %807 = add i64 %789, 1
  br label %788

808:                                              ; preds = %788
  %809 = add i64 %785, 1
  br label %784

810:                                              ; preds = %784
  %811 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  call void @free(ptr %811)
  %812 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  call void @free(ptr %812)
  %813 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  call void @free(ptr %813)
  %814 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 0
  call void @free(ptr %814)
  %815 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 0
  call void @free(ptr %815)
  %816 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %585, 0
  call void @free(ptr %816)
  %817 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 0
  call void @free(ptr %817)
  %818 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %744, 0
  call void @free(ptr %818)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %614
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
