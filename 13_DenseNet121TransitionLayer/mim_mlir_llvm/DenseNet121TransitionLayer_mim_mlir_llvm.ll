; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @DenseNet121TransitionLayer(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37) {
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %31, 0
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, ptr %32, 1
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, i64 %33, 2
  %42 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, i64 %34, 3, 0
  %43 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %42, i64 %36, 4, 0
  %44 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %43, i64 %35, 3, 1
  %45 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %44, i64 %37, 4, 1
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %26, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, ptr %27, 1
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 %28, 2
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, i64 %29, 3, 0
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 %30, 4, 0
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %21, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, ptr %22, 1
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, i64 %23, 2
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, i64 %24, 3, 0
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %25, 4, 0
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %16, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, ptr %17, 1
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 %18, 2
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, i64 %19, 3, 0
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 %20, 4, 0
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %11, 0
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, ptr %12, 1
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, i64 %13, 2
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, i64 %14, 3, 0
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, i64 %15, 4, 0
  %66 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %0, 0
  %67 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %66, ptr %1, 1
  %68 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %67, i64 %2, 2
  %69 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %68, i64 %3, 3, 0
  %70 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %69, i64 %7, 4, 0
  %71 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %70, i64 %4, 3, 1
  %72 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %71, i64 %8, 4, 1
  %73 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %72, i64 %5, 3, 2
  %74 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %73, i64 %9, 4, 2
  %75 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %74, i64 %6, 3, 3
  %76 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %75, i64 %10, 4, 3
  %77 = call ptr @aligned_alloc(i64 64, i64 128)
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %77, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, ptr %77, 1
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, i64 0, 2
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, i64 32, 3, 0
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 1, 4, 0
  %83 = call ptr @aligned_alloc(i64 64, i64 128)
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %83, 0
  %85 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %84, ptr %83, 1
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %85, i64 0, 2
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, i64 32, 3, 0
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 1, 4, 0
  br label %89

89:                                               ; preds = %92, %38
  %90 = phi i64 [ %105, %92 ], [ 0, %38 ]
  %91 = icmp slt i64 %90, 32
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %94 = getelementptr inbounds nuw float, ptr %93, i64 %90
  %95 = load float, ptr %94, align 4
  %96 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 1
  %97 = getelementptr inbounds nuw float, ptr %96, i64 %90
  %98 = load float, ptr %97, align 4
  %99 = fadd float %95, f0x3727C5AC
  %100 = call float @llvm.sqrt.f32(float %99)
  %101 = fdiv float 1.000000e+00, %100
  %102 = fmul float %101, %98
  %103 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, 1
  %104 = getelementptr inbounds nuw float, ptr %103, i64 %90
  store float %102, ptr %104, align 4
  %105 = add i64 %90, 1
  br label %89

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %110, %106
  %108 = phi i64 [ %127, %110 ], [ 0, %106 ]
  %109 = icmp slt i64 %108, 32
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, 1
  %112 = getelementptr inbounds nuw float, ptr %111, i64 %108
  %113 = load float, ptr %112, align 4
  %114 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %115 = getelementptr inbounds nuw float, ptr %114, i64 %108
  %116 = load float, ptr %115, align 4
  %117 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, 1
  %118 = getelementptr inbounds nuw float, ptr %117, i64 %108
  %119 = load float, ptr %118, align 4
  %120 = fadd float %116, f0x3727C5AC
  %121 = call float @llvm.sqrt.f32(float %120)
  %122 = fdiv float 1.000000e+00, %121
  %123 = fmul float %122, %119
  %124 = fmul float %123, %113
  %125 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, 1
  %126 = getelementptr inbounds nuw float, ptr %125, i64 %108
  store float %124, ptr %126, align 4
  %127 = add i64 %108, 1
  br label %107

128:                                              ; preds = %107
  %129 = call ptr @aligned_alloc(i64 64, i64 1073741824)
  %130 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %129, 0
  %131 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, ptr %129, 1
  %132 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %131, i64 0, 2
  %133 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %132, i64 128, 3, 0
  %134 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %133, i64 32, 3, 1
  %135 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %134, i64 256, 3, 2
  %136 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %135, i64 256, 3, 3
  %137 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %136, i64 2097152, 4, 0
  %138 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %137, i64 65536, 4, 1
  %139 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %138, i64 256, 4, 2
  %140 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %139, i64 1, 4, 3
  br label %141

141:                                              ; preds = %192, %128
  %142 = phi i64 [ %193, %192 ], [ 0, %128 ]
  %143 = icmp slt i64 %142, 128
  br i1 %143, label %144, label %194

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %190, %144
  %146 = phi i64 [ %191, %190 ], [ 0, %144 ]
  %147 = icmp slt i64 %146, 32
  br i1 %147, label %148, label %192

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %188, %148
  %150 = phi i64 [ %189, %188 ], [ 0, %148 ]
  %151 = icmp slt i64 %150, 256
  br i1 %151, label %152, label %190

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %156, %152
  %154 = phi i64 [ %187, %156 ], [ 0, %152 ]
  %155 = icmp slt i64 %154, 256
  br i1 %155, label %156, label %188

156:                                              ; preds = %153
  %157 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %76, 1
  %158 = mul nuw nsw i64 %142, 2097152
  %159 = mul nuw nsw i64 %146, 65536
  %160 = add nuw nsw i64 %158, %159
  %161 = mul nuw nsw i64 %150, 256
  %162 = add nuw nsw i64 %160, %161
  %163 = add nuw nsw i64 %162, %154
  %164 = getelementptr inbounds nuw float, ptr %157, i64 %163
  %165 = load float, ptr %164, align 4
  %166 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, 1
  %167 = getelementptr inbounds nuw float, ptr %166, i64 %146
  %168 = load float, ptr %167, align 4
  %169 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, 1
  %170 = getelementptr inbounds nuw float, ptr %169, i64 %146
  %171 = load float, ptr %170, align 4
  %172 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, 1
  %173 = getelementptr inbounds nuw float, ptr %172, i64 %146
  %174 = load float, ptr %173, align 4
  %175 = fmul float %165, %168
  %176 = fsub float %175, %171
  %177 = fadd float %176, %174
  %178 = call float @llvm.maxnum.f32(float %177, float 0.000000e+00)
  %179 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %140, 1
  %180 = mul nuw nsw i64 %142, 2097152
  %181 = mul nuw nsw i64 %146, 65536
  %182 = add nuw nsw i64 %180, %181
  %183 = mul nuw nsw i64 %150, 256
  %184 = add nuw nsw i64 %182, %183
  %185 = add nuw nsw i64 %184, %154
  %186 = getelementptr inbounds nuw float, ptr %179, i64 %185
  store float %178, ptr %186, align 4
  %187 = add i64 %154, 1
  br label %153

188:                                              ; preds = %153
  %189 = add i64 %150, 1
  br label %149

190:                                              ; preds = %149
  %191 = add i64 %146, 1
  br label %145

192:                                              ; preds = %145
  %193 = add i64 %142, 1
  br label %141

194:                                              ; preds = %141
  %195 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 0
  %196 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 1
  %197 = insertvalue { ptr, ptr, i64 } poison, ptr %195, 0
  %198 = insertvalue { ptr, ptr, i64 } %197, ptr %196, 1
  %199 = insertvalue { ptr, ptr, i64 } %198, i64 0, 2
  %200 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 2
  %201 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 3, 0
  %202 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 3, 1
  %203 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 4, 0
  %204 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %45, 4, 1
  %205 = extractvalue { ptr, ptr, i64 } %199, 0
  %206 = extractvalue { ptr, ptr, i64 } %199, 1
  %207 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %205, 0
  %208 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %207, ptr %206, 1
  %209 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %208, i64 0, 2
  %210 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %209, i64 64, 3, 0
  %211 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %210, i64 32, 4, 0
  %212 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %211, i64 32, 3, 1
  %213 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, i64 1, 4, 1
  %214 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %213, i64 1, 3, 2
  %215 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, i64 1, 4, 2
  %216 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %215, i64 1, 3, 3
  %217 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %216, i64 1, 4, 3
  %218 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %219 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %218, 0
  %220 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %219, ptr %218, 1
  %221 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %220, i64 0, 2
  %222 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %221, i64 128, 3, 0
  %223 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %222, i64 64, 3, 1
  %224 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %223, i64 256, 3, 2
  %225 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %224, i64 1, 3, 3
  %226 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, i64 256, 3, 4
  %227 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %226, i64 4194304, 4, 0
  %228 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %227, i64 65536, 4, 1
  %229 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %228, i64 256, 4, 2
  %230 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %229, i64 256, 4, 3
  %231 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %230, i64 1, 4, 4
  br label %232

232:                                              ; preds = %269, %194
  %233 = phi i64 [ %270, %269 ], [ 0, %194 ]
  %234 = icmp slt i64 %233, 128
  br i1 %234, label %235, label %271

235:                                              ; preds = %232
  br label %236

236:                                              ; preds = %267, %235
  %237 = phi i64 [ %268, %267 ], [ 0, %235 ]
  %238 = icmp slt i64 %237, 64
  br i1 %238, label %239, label %269

239:                                              ; preds = %236
  br label %240

240:                                              ; preds = %265, %239
  %241 = phi i64 [ %266, %265 ], [ 0, %239 ]
  %242 = icmp slt i64 %241, 256
  br i1 %242, label %243, label %267

243:                                              ; preds = %240
  br label %244

244:                                              ; preds = %263, %243
  %245 = phi i64 [ %264, %263 ], [ 0, %243 ]
  %246 = icmp slt i64 %245, 1
  br i1 %246, label %247, label %265

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %251, %247
  %249 = phi i64 [ %262, %251 ], [ 0, %247 ]
  %250 = icmp slt i64 %249, 256
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %231, 1
  %253 = mul nuw nsw i64 %233, 4194304
  %254 = mul nuw nsw i64 %237, 65536
  %255 = add nuw nsw i64 %253, %254
  %256 = mul nuw nsw i64 %241, 256
  %257 = add nuw nsw i64 %255, %256
  %258 = mul nuw nsw i64 %245, 256
  %259 = add nuw nsw i64 %257, %258
  %260 = add nuw nsw i64 %259, %249
  %261 = getelementptr inbounds nuw float, ptr %252, i64 %260
  store float 0.000000e+00, ptr %261, align 4
  %262 = add i64 %249, 1
  br label %248

263:                                              ; preds = %248
  %264 = add i64 %245, 1
  br label %244

265:                                              ; preds = %244
  %266 = add i64 %241, 1
  br label %240

267:                                              ; preds = %240
  %268 = add i64 %237, 1
  br label %236

269:                                              ; preds = %236
  %270 = add i64 %233, 1
  br label %232

271:                                              ; preds = %232
  %272 = call ptr @aligned_alloc(i64 64, i64 1024)
  %273 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %272, 0
  %274 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %273, ptr %272, 1
  %275 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %274, i64 0, 2
  %276 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %275, i64 256, 3, 0
  %277 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, i64 1, 3, 1
  %278 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %277, i64 1, 4, 0
  %279 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %278, i64 1, 4, 1
  br label %280

280:                                              ; preds = %367, %271
  %281 = phi i64 [ %368, %367 ], [ 0, %271 ]
  %282 = icmp slt i64 %281, 128
  br i1 %282, label %283, label %369

283:                                              ; preds = %280
  br label %284

284:                                              ; preds = %365, %283
  %285 = phi i64 [ %366, %365 ], [ 0, %283 ]
  %286 = icmp slt i64 %285, 64
  br i1 %286, label %287, label %367

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %363, %287
  %289 = phi i64 [ %364, %363 ], [ 0, %287 ]
  %290 = icmp slt i64 %289, 256
  br i1 %290, label %291, label %365

291:                                              ; preds = %288
  br label %292

292:                                              ; preds = %361, %291
  %293 = phi i64 [ %362, %361 ], [ 0, %291 ]
  %294 = icmp slt i64 %293, 1
  br i1 %294, label %295, label %363

295:                                              ; preds = %292
  br label %296

296:                                              ; preds = %359, %295
  %297 = phi i64 [ %360, %359 ], [ 0, %295 ]
  %298 = icmp slt i64 %297, 32
  br i1 %298, label %299, label %361

299:                                              ; preds = %296
  br label %300

300:                                              ; preds = %357, %299
  %301 = phi i64 [ %358, %357 ], [ 0, %299 ]
  %302 = icmp slt i64 %301, 1
  br i1 %302, label %303, label %359

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %355, %303
  %305 = phi i64 [ %356, %355 ], [ 0, %303 ]
  %306 = icmp slt i64 %305, 1
  br i1 %306, label %307, label %357

307:                                              ; preds = %304
  br label %308

308:                                              ; preds = %311, %307
  %309 = phi i64 [ %354, %311 ], [ 0, %307 ]
  %310 = icmp slt i64 %309, 256
  br i1 %310, label %311, label %355

311:                                              ; preds = %308
  %312 = add i64 %289, %293
  %313 = add i64 %312, %301
  %314 = add i64 %305, %309
  %315 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %140, 1
  %316 = mul nuw nsw i64 %281, 2097152
  %317 = mul nuw nsw i64 %297, 65536
  %318 = add nuw nsw i64 %316, %317
  %319 = mul nuw nsw i64 %313, 256
  %320 = add nuw nsw i64 %318, %319
  %321 = add nuw nsw i64 %320, %314
  %322 = getelementptr inbounds nuw float, ptr %315, i64 %321
  %323 = load float, ptr %322, align 4
  %324 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %217, 1
  %325 = mul nuw nsw i64 %285, 32
  %326 = add nuw nsw i64 %325, %297
  %327 = add nuw nsw i64 %326, %301
  %328 = add nuw nsw i64 %327, %305
  %329 = getelementptr inbounds nuw float, ptr %324, i64 %328
  %330 = load float, ptr %329, align 4
  %331 = add i64 %289, %293
  %332 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %231, 1
  %333 = mul nuw nsw i64 %281, 4194304
  %334 = mul nuw nsw i64 %285, 65536
  %335 = add nuw nsw i64 %333, %334
  %336 = mul nuw nsw i64 %331, 256
  %337 = add nuw nsw i64 %335, %336
  %338 = add nuw nsw i64 %337, 0
  %339 = add nuw nsw i64 %338, %309
  %340 = getelementptr inbounds nuw float, ptr %332, i64 %339
  %341 = load float, ptr %340, align 4
  %342 = add i64 %289, %293
  %343 = fmul float %323, %330
  %344 = fadd float %343, %341
  %345 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %231, 1
  %346 = mul nuw nsw i64 %281, 4194304
  %347 = mul nuw nsw i64 %285, 65536
  %348 = add nuw nsw i64 %346, %347
  %349 = mul nuw nsw i64 %342, 256
  %350 = add nuw nsw i64 %348, %349
  %351 = add nuw nsw i64 %350, 0
  %352 = add nuw nsw i64 %351, %309
  %353 = getelementptr inbounds nuw float, ptr %345, i64 %352
  store float %344, ptr %353, align 4
  %354 = add i64 %309, 1
  br label %308

355:                                              ; preds = %308
  %356 = add i64 %305, 1
  br label %304

357:                                              ; preds = %304
  %358 = add i64 %301, 1
  br label %300

359:                                              ; preds = %300
  %360 = add i64 %297, 1
  br label %296

361:                                              ; preds = %296
  %362 = add i64 %293, 1
  br label %292

363:                                              ; preds = %292
  %364 = add i64 %289, 1
  br label %288

365:                                              ; preds = %288
  %366 = add i64 %285, 1
  br label %284

367:                                              ; preds = %284
  %368 = add i64 %281, 1
  br label %280

369:                                              ; preds = %280
  %370 = call ptr @aligned_alloc(i64 64, i64 536870912)
  %371 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %370, 0
  %372 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %371, ptr %370, 1
  %373 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %372, i64 0, 2
  %374 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %373, i64 128, 3, 0
  %375 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %374, i64 64, 3, 1
  %376 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %375, i64 128, 3, 2
  %377 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %376, i64 128, 3, 3
  %378 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %377, i64 1048576, 4, 0
  %379 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %378, i64 16384, 4, 1
  %380 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %379, i64 128, 4, 2
  %381 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %380, i64 1, 4, 3
  br label %382

382:                                              ; preds = %411, %369
  %383 = phi i64 [ %412, %411 ], [ 0, %369 ]
  %384 = icmp slt i64 %383, 128
  br i1 %384, label %385, label %413

385:                                              ; preds = %382
  br label %386

386:                                              ; preds = %409, %385
  %387 = phi i64 [ %410, %409 ], [ 0, %385 ]
  %388 = icmp slt i64 %387, 64
  br i1 %388, label %389, label %411

389:                                              ; preds = %386
  br label %390

390:                                              ; preds = %407, %389
  %391 = phi i64 [ %408, %407 ], [ 0, %389 ]
  %392 = icmp slt i64 %391, 128
  br i1 %392, label %393, label %409

393:                                              ; preds = %390
  br label %394

394:                                              ; preds = %397, %393
  %395 = phi i64 [ %406, %397 ], [ 0, %393 ]
  %396 = icmp slt i64 %395, 128
  br i1 %396, label %397, label %407

397:                                              ; preds = %394
  %398 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %381, 1
  %399 = mul nuw nsw i64 %383, 1048576
  %400 = mul nuw nsw i64 %387, 16384
  %401 = add nuw nsw i64 %399, %400
  %402 = mul nuw nsw i64 %391, 128
  %403 = add nuw nsw i64 %401, %402
  %404 = add nuw nsw i64 %403, %395
  %405 = getelementptr inbounds nuw float, ptr %398, i64 %404
  store float 0.000000e+00, ptr %405, align 4
  %406 = add i64 %395, 1
  br label %394

407:                                              ; preds = %394
  %408 = add i64 %391, 1
  br label %390

409:                                              ; preds = %390
  %410 = add i64 %387, 1
  br label %386

411:                                              ; preds = %386
  %412 = add i64 %383, 1
  br label %382

413:                                              ; preds = %382
  %414 = call ptr @aligned_alloc(i64 64, i64 64)
  %415 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %414, 0
  %416 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %415, ptr %414, 1
  %417 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %416, i64 0, 2
  %418 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, i64 2, 3, 0
  %419 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, i64 2, 3, 1
  %420 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %419, i64 2, 4, 0
  %421 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %420, i64 1, 4, 1
  br label %422

422:                                              ; preds = %487, %413
  %423 = phi i64 [ %488, %487 ], [ 0, %413 ]
  %424 = icmp slt i64 %423, 128
  br i1 %424, label %425, label %489

425:                                              ; preds = %422
  br label %426

426:                                              ; preds = %485, %425
  %427 = phi i64 [ %486, %485 ], [ 0, %425 ]
  %428 = icmp slt i64 %427, 64
  br i1 %428, label %429, label %487

429:                                              ; preds = %426
  br label %430

430:                                              ; preds = %483, %429
  %431 = phi i64 [ %484, %483 ], [ 0, %429 ]
  %432 = icmp slt i64 %431, 128
  br i1 %432, label %433, label %485

433:                                              ; preds = %430
  br label %434

434:                                              ; preds = %481, %433
  %435 = phi i64 [ %482, %481 ], [ 0, %433 ]
  %436 = icmp slt i64 %435, 128
  br i1 %436, label %437, label %483

437:                                              ; preds = %434
  br label %438

438:                                              ; preds = %479, %437
  %439 = phi i64 [ %480, %479 ], [ 0, %437 ]
  %440 = icmp slt i64 %439, 2
  br i1 %440, label %441, label %481

441:                                              ; preds = %438
  br label %442

442:                                              ; preds = %445, %441
  %443 = phi i64 [ %478, %445 ], [ 0, %441 ]
  %444 = icmp slt i64 %443, 2
  br i1 %444, label %445, label %479

445:                                              ; preds = %442
  %446 = mul nsw i64 %431, 2
  %447 = add i64 %446, %439
  %448 = mul nsw i64 %435, 2
  %449 = add i64 %448, %443
  %450 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %231, 1
  %451 = mul nuw nsw i64 %423, 4194304
  %452 = mul nuw nsw i64 %427, 65536
  %453 = add nuw nsw i64 %451, %452
  %454 = mul nuw nsw i64 %447, 256
  %455 = add nuw nsw i64 %453, %454
  %456 = add nuw nsw i64 %455, 0
  %457 = add nuw nsw i64 %456, %449
  %458 = getelementptr inbounds nuw float, ptr %450, i64 %457
  %459 = load float, ptr %458, align 4
  %460 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %381, 1
  %461 = mul nuw nsw i64 %423, 1048576
  %462 = mul nuw nsw i64 %427, 16384
  %463 = add nuw nsw i64 %461, %462
  %464 = mul nuw nsw i64 %431, 128
  %465 = add nuw nsw i64 %463, %464
  %466 = add nuw nsw i64 %465, %435
  %467 = getelementptr inbounds nuw float, ptr %460, i64 %466
  %468 = load float, ptr %467, align 4
  %469 = fadd float %468, %459
  %470 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %381, 1
  %471 = mul nuw nsw i64 %423, 1048576
  %472 = mul nuw nsw i64 %427, 16384
  %473 = add nuw nsw i64 %471, %472
  %474 = mul nuw nsw i64 %431, 128
  %475 = add nuw nsw i64 %473, %474
  %476 = add nuw nsw i64 %475, %435
  %477 = getelementptr inbounds nuw float, ptr %470, i64 %476
  store float %469, ptr %477, align 4
  %478 = add i64 %443, 1
  br label %442

479:                                              ; preds = %442
  %480 = add i64 %439, 1
  br label %438

481:                                              ; preds = %438
  %482 = add i64 %435, 1
  br label %434

483:                                              ; preds = %434
  %484 = add i64 %431, 1
  br label %430

485:                                              ; preds = %430
  %486 = add i64 %427, 1
  br label %426

487:                                              ; preds = %426
  %488 = add i64 %423, 1
  br label %422

489:                                              ; preds = %422
  br label %490

490:                                              ; preds = %529, %489
  %491 = phi i64 [ %530, %529 ], [ 0, %489 ]
  %492 = icmp slt i64 %491, 128
  br i1 %492, label %493, label %531

493:                                              ; preds = %490
  br label %494

494:                                              ; preds = %527, %493
  %495 = phi i64 [ %528, %527 ], [ 0, %493 ]
  %496 = icmp slt i64 %495, 64
  br i1 %496, label %497, label %529

497:                                              ; preds = %494
  br label %498

498:                                              ; preds = %525, %497
  %499 = phi i64 [ %526, %525 ], [ 0, %497 ]
  %500 = icmp slt i64 %499, 128
  br i1 %500, label %501, label %527

501:                                              ; preds = %498
  br label %502

502:                                              ; preds = %505, %501
  %503 = phi i64 [ %524, %505 ], [ 0, %501 ]
  %504 = icmp slt i64 %503, 128
  br i1 %504, label %505, label %525

505:                                              ; preds = %502
  %506 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %381, 1
  %507 = mul nuw nsw i64 %491, 1048576
  %508 = mul nuw nsw i64 %495, 16384
  %509 = add nuw nsw i64 %507, %508
  %510 = mul nuw nsw i64 %499, 128
  %511 = add nuw nsw i64 %509, %510
  %512 = add nuw nsw i64 %511, %503
  %513 = getelementptr inbounds nuw float, ptr %506, i64 %512
  %514 = load float, ptr %513, align 4
  %515 = fmul float %514, 2.500000e-01
  %516 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %381, 1
  %517 = mul nuw nsw i64 %491, 1048576
  %518 = mul nuw nsw i64 %495, 16384
  %519 = add nuw nsw i64 %517, %518
  %520 = mul nuw nsw i64 %499, 128
  %521 = add nuw nsw i64 %519, %520
  %522 = add nuw nsw i64 %521, %503
  %523 = getelementptr inbounds nuw float, ptr %516, i64 %522
  store float %515, ptr %523, align 4
  %524 = add i64 %503, 1
  br label %502

525:                                              ; preds = %502
  %526 = add i64 %499, 1
  br label %498

527:                                              ; preds = %498
  %528 = add i64 %495, 1
  br label %494

529:                                              ; preds = %494
  %530 = add i64 %491, 1
  br label %490

531:                                              ; preds = %490
  %532 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, 0
  call void @free(ptr %532)
  %533 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, 0
  call void @free(ptr %533)
  %534 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %140, 0
  call void @free(ptr %534)
  %535 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %231, 0
  call void @free(ptr %535)
  %536 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %279, 0
  call void @free(ptr %536)
  %537 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %421, 0
  call void @free(ptr %537)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %381
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #0

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
