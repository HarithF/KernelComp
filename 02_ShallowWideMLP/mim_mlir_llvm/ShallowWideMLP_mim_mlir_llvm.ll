; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @ShallowWideMLP(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42) {
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
  %87 = call ptr @aligned_alloc(i64 64, i64 16777216)
  %88 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %87, 0
  %89 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %88, ptr %87, 1
  %90 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %89, i64 0, 2
  %91 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %90, i64 64, 3, 0
  %92 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %91, i64 2, 3, 1
  %93 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %92, i64 8192, 3, 2
  %94 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %93, i64 4, 3, 3
  %95 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %94, i64 65536, 4, 0
  %96 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %95, i64 32768, 4, 1
  %97 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %96, i64 4, 4, 2
  %98 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %97, i64 1, 4, 3
  %99 = call ptr @aligned_alloc(i64 64, i64 16777216)
  %100 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %99, 0
  %101 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %100, ptr %99, 1
  %102 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %101, i64 0, 2
  %103 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %102, i64 64, 3, 0
  %104 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %103, i64 2, 3, 1
  %105 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %104, i64 8192, 3, 2
  %106 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %105, i64 4, 3, 3
  %107 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %106, i64 65536, 4, 0
  %108 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %107, i64 32768, 4, 1
  %109 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %108, i64 4, 4, 2
  %110 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %109, i64 1, 4, 3
  br label %111

111:                                              ; preds = %140, %43
  %112 = phi i64 [ %141, %140 ], [ 0, %43 ]
  %113 = icmp slt i64 %112, 64
  br i1 %113, label %114, label %142

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %138, %114
  %116 = phi i64 [ %139, %138 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 2
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %136, %118
  %120 = phi i64 [ %137, %136 ], [ 0, %118 ]
  %121 = icmp slt i64 %120, 8192
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %126, %122
  %124 = phi i64 [ %135, %126 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 4
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %128 = mul nuw nsw i64 %112, 65536
  %129 = mul nuw nsw i64 %116, 32768
  %130 = add nuw nsw i64 %128, %129
  %131 = mul nuw nsw i64 %120, 4
  %132 = add nuw nsw i64 %130, %131
  %133 = add nuw nsw i64 %132, %124
  %134 = getelementptr inbounds nuw float, ptr %127, i64 %133
  store float 0.000000e+00, ptr %134, align 4
  %135 = add i64 %124, 1
  br label %123

136:                                              ; preds = %123
  %137 = add i64 %120, 1
  br label %119

138:                                              ; preds = %119
  %139 = add i64 %116, 1
  br label %115

140:                                              ; preds = %115
  %141 = add i64 %112, 1
  br label %111

142:                                              ; preds = %111
  %143 = call ptr @aligned_alloc(i64 64, i64 16777216)
  %144 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %143, 0
  %145 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %144, ptr %143, 1
  %146 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %145, i64 0, 2
  %147 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %146, i64 64, 3, 0
  %148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %147, i64 2, 3, 1
  %149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %148, i64 8192, 3, 2
  %150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %149, i64 4, 3, 3
  %151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %150, i64 65536, 4, 0
  %152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %151, i64 32768, 4, 1
  %153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %152, i64 4, 4, 2
  %154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %153, i64 1, 4, 3
  %155 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 3, 0
  %156 = mul i64 1, %155
  %157 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 3, 1
  %158 = mul i64 %156, %157
  %159 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 3, 2
  %160 = mul i64 %158, %159
  %161 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 3, 3
  %162 = mul i64 %160, %161
  %163 = mul i64 %162, 4
  %164 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %165 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 2
  %166 = getelementptr float, ptr %164, i64 %165
  %167 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 1
  %168 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 2
  %169 = getelementptr float, ptr %167, i64 %168
  call void @llvm.memcpy.p0.p0.i64(ptr %169, ptr %166, i64 %163, i1 false)
  br label %170

170:                                              ; preds = %230, %142
  %171 = phi i64 [ %231, %230 ], [ 0, %142 ]
  %172 = icmp slt i64 %171, 64
  br i1 %172, label %173, label %232

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %228, %173
  %175 = phi i64 [ %229, %228 ], [ 0, %173 ]
  %176 = icmp slt i64 %175, 8192
  br i1 %176, label %177, label %230

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %226, %177
  %179 = phi i64 [ %227, %226 ], [ 0, %177 ]
  %180 = icmp slt i64 %179, 2
  br i1 %180, label %181, label %228

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %224, %181
  %183 = phi i64 [ %225, %224 ], [ 0, %181 ]
  %184 = icmp slt i64 %183, 4
  br i1 %184, label %185, label %226

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %189, %185
  %187 = phi i64 [ %223, %189 ], [ 0, %185 ]
  %188 = icmp slt i64 %187, 16384
  br i1 %188, label %189, label %224

189:                                              ; preds = %186
  %190 = mul nsw i64 %171, 2
  %191 = add i64 %190, %179
  %192 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 1
  %193 = mul nuw nsw i64 %191, 16384
  %194 = add nuw nsw i64 %193, %187
  %195 = getelementptr inbounds nuw float, ptr %192, i64 %194
  %196 = load float, ptr %195, align 4
  %197 = mul nsw i64 %175, 4
  %198 = add i64 %197, %183
  %199 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 1
  %200 = mul nuw nsw i64 %198, 16384
  %201 = add nuw nsw i64 %200, %187
  %202 = getelementptr inbounds nuw float, ptr %199, i64 %201
  %203 = load float, ptr %202, align 4
  %204 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 1
  %205 = mul nuw nsw i64 %171, 65536
  %206 = mul nuw nsw i64 %179, 32768
  %207 = add nuw nsw i64 %205, %206
  %208 = mul nuw nsw i64 %175, 4
  %209 = add nuw nsw i64 %207, %208
  %210 = add nuw nsw i64 %209, %183
  %211 = getelementptr inbounds nuw float, ptr %204, i64 %210
  %212 = load float, ptr %211, align 4
  %213 = fmul float %196, %203
  %214 = fadd float %213, %212
  %215 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 1
  %216 = mul nuw nsw i64 %171, 65536
  %217 = mul nuw nsw i64 %179, 32768
  %218 = add nuw nsw i64 %216, %217
  %219 = mul nuw nsw i64 %175, 4
  %220 = add nuw nsw i64 %218, %219
  %221 = add nuw nsw i64 %220, %183
  %222 = getelementptr inbounds nuw float, ptr %215, i64 %221
  store float %214, ptr %222, align 4
  %223 = add i64 %187, 1
  br label %186

224:                                              ; preds = %186
  %225 = add i64 %183, 1
  br label %182

226:                                              ; preds = %182
  %227 = add i64 %179, 1
  br label %178

228:                                              ; preds = %178
  %229 = add i64 %175, 1
  br label %174

230:                                              ; preds = %174
  %231 = add i64 %171, 1
  br label %170

232:                                              ; preds = %170
  br label %233

233:                                              ; preds = %278, %232
  %234 = phi i64 [ %279, %278 ], [ 0, %232 ]
  %235 = icmp slt i64 %234, 64
  br i1 %235, label %236, label %280

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %276, %236
  %238 = phi i64 [ %277, %276 ], [ 0, %236 ]
  %239 = icmp slt i64 %238, 2
  br i1 %239, label %240, label %278

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %274, %240
  %242 = phi i64 [ %275, %274 ], [ 0, %240 ]
  %243 = icmp slt i64 %242, 8192
  br i1 %243, label %244, label %276

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %248, %244
  %246 = phi i64 [ %273, %248 ], [ 0, %244 ]
  %247 = icmp slt i64 %246, 4
  br i1 %247, label %248, label %274

248:                                              ; preds = %245
  %249 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 1
  %250 = mul nuw nsw i64 %234, 65536
  %251 = mul nuw nsw i64 %238, 32768
  %252 = add nuw nsw i64 %250, %251
  %253 = mul nuw nsw i64 %242, 4
  %254 = add nuw nsw i64 %252, %253
  %255 = add nuw nsw i64 %254, %246
  %256 = getelementptr inbounds nuw float, ptr %249, i64 %255
  %257 = load float, ptr %256, align 4
  %258 = mul nsw i64 %242, 4
  %259 = add i64 %258, %246
  %260 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, 1
  %261 = getelementptr inbounds nuw float, ptr %260, i64 %259
  %262 = load float, ptr %261, align 4
  %263 = fadd float %257, %262
  %264 = call float @llvm.maxnum.f32(float %263, float 0.000000e+00)
  %265 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %266 = mul nuw nsw i64 %234, 65536
  %267 = mul nuw nsw i64 %238, 32768
  %268 = add nuw nsw i64 %266, %267
  %269 = mul nuw nsw i64 %242, 4
  %270 = add nuw nsw i64 %268, %269
  %271 = add nuw nsw i64 %270, %246
  %272 = getelementptr inbounds nuw float, ptr %265, i64 %271
  store float %264, ptr %272, align 4
  %273 = add i64 %246, 1
  br label %245

274:                                              ; preds = %245
  %275 = add i64 %242, 1
  br label %241

276:                                              ; preds = %241
  %277 = add i64 %238, 1
  br label %237

278:                                              ; preds = %237
  %279 = add i64 %234, 1
  br label %233

280:                                              ; preds = %233
  br label %281

281:                                              ; preds = %367, %280
  %282 = phi i64 [ %368, %367 ], [ 0, %280 ]
  %283 = icmp slt i64 %282, 64
  br i1 %283, label %284, label %369

284:                                              ; preds = %281
  br label %285

285:                                              ; preds = %365, %284
  %286 = phi i64 [ %366, %365 ], [ 0, %284 ]
  %287 = icmp slt i64 %286, 8192
  br i1 %287, label %288, label %367

288:                                              ; preds = %285
  br label %289

289:                                              ; preds = %363, %288
  %290 = phi i64 [ %364, %363 ], [ 0, %288 ]
  %291 = icmp slt i64 %290, 2
  br i1 %291, label %292, label %365

292:                                              ; preds = %289
  br label %293

293:                                              ; preds = %361, %292
  %294 = phi i64 [ %362, %361 ], [ 0, %292 ]
  %295 = icmp slt i64 %294, 4
  br i1 %295, label %296, label %363

296:                                              ; preds = %293
  br label %297

297:                                              ; preds = %300, %296
  %298 = phi i64 [ %360, %300 ], [ 0, %296 ]
  %299 = icmp slt i64 %298, 32768
  br i1 %299, label %300, label %361

300:                                              ; preds = %297
  %301 = mul nsw i64 %282, 65536
  %302 = mul nsw i64 %290, 32768
  %303 = add i64 %301, %302
  %304 = add i64 %303, %298
  %305 = icmp slt i64 %304, 0
  %306 = sub i64 -1, %304
  %307 = select i1 %305, i64 %306, i64 %304
  %308 = sdiv i64 %307, 65536
  %309 = sub i64 -1, %308
  %310 = select i1 %305, i64 %309, i64 %308
  %311 = icmp slt i64 %298, 0
  %312 = sub i64 -1, %298
  %313 = select i1 %311, i64 %312, i64 %298
  %314 = sdiv i64 %313, 4
  %315 = sub i64 -1, %314
  %316 = select i1 %311, i64 %315, i64 %314
  %317 = srem i64 %316, 8192
  %318 = icmp slt i64 %317, 0
  %319 = add i64 %317, 8192
  %320 = select i1 %318, i64 %319, i64 %317
  %321 = srem i64 %298, 4
  %322 = icmp slt i64 %321, 0
  %323 = add i64 %321, 4
  %324 = select i1 %322, i64 %323, i64 %321
  %325 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %326 = mul nuw nsw i64 %310, 65536
  %327 = mul nuw nsw i64 %290, 32768
  %328 = add nuw nsw i64 %326, %327
  %329 = mul nuw nsw i64 %320, 4
  %330 = add nuw nsw i64 %328, %329
  %331 = add nuw nsw i64 %330, %324
  %332 = getelementptr inbounds nuw float, ptr %325, i64 %331
  %333 = load float, ptr %332, align 4
  %334 = mul nsw i64 %286, 4
  %335 = add i64 %334, %294
  %336 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %337 = mul nuw nsw i64 %335, 32768
  %338 = add nuw nsw i64 %337, %298
  %339 = getelementptr inbounds nuw float, ptr %336, i64 %338
  %340 = load float, ptr %339, align 4
  %341 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %342 = mul nuw nsw i64 %282, 65536
  %343 = mul nuw nsw i64 %290, 32768
  %344 = add nuw nsw i64 %342, %343
  %345 = mul nuw nsw i64 %286, 4
  %346 = add nuw nsw i64 %344, %345
  %347 = add nuw nsw i64 %346, %294
  %348 = getelementptr inbounds nuw float, ptr %341, i64 %347
  %349 = load float, ptr %348, align 4
  %350 = fmul float %333, %340
  %351 = fadd float %350, %349
  %352 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %353 = mul nuw nsw i64 %282, 65536
  %354 = mul nuw nsw i64 %290, 32768
  %355 = add nuw nsw i64 %353, %354
  %356 = mul nuw nsw i64 %286, 4
  %357 = add nuw nsw i64 %355, %356
  %358 = add nuw nsw i64 %357, %294
  %359 = getelementptr inbounds nuw float, ptr %352, i64 %358
  store float %351, ptr %359, align 4
  %360 = add i64 %298, 1
  br label %297

361:                                              ; preds = %297
  %362 = add i64 %294, 1
  br label %293

363:                                              ; preds = %293
  %364 = add i64 %290, 1
  br label %289

365:                                              ; preds = %289
  %366 = add i64 %286, 1
  br label %285

367:                                              ; preds = %285
  %368 = add i64 %282, 1
  br label %281

369:                                              ; preds = %281
  br label %370

370:                                              ; preds = %415, %369
  %371 = phi i64 [ %416, %415 ], [ 0, %369 ]
  %372 = icmp slt i64 %371, 64
  br i1 %372, label %373, label %417

373:                                              ; preds = %370
  br label %374

374:                                              ; preds = %413, %373
  %375 = phi i64 [ %414, %413 ], [ 0, %373 ]
  %376 = icmp slt i64 %375, 2
  br i1 %376, label %377, label %415

377:                                              ; preds = %374
  br label %378

378:                                              ; preds = %411, %377
  %379 = phi i64 [ %412, %411 ], [ 0, %377 ]
  %380 = icmp slt i64 %379, 8192
  br i1 %380, label %381, label %413

381:                                              ; preds = %378
  br label %382

382:                                              ; preds = %385, %381
  %383 = phi i64 [ %410, %385 ], [ 0, %381 ]
  %384 = icmp slt i64 %383, 4
  br i1 %384, label %385, label %411

385:                                              ; preds = %382
  %386 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %387 = mul nuw nsw i64 %371, 65536
  %388 = mul nuw nsw i64 %375, 32768
  %389 = add nuw nsw i64 %387, %388
  %390 = mul nuw nsw i64 %379, 4
  %391 = add nuw nsw i64 %389, %390
  %392 = add nuw nsw i64 %391, %383
  %393 = getelementptr inbounds nuw float, ptr %386, i64 %392
  %394 = load float, ptr %393, align 4
  %395 = mul nsw i64 %379, 4
  %396 = add i64 %395, %383
  %397 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %398 = getelementptr inbounds nuw float, ptr %397, i64 %396
  %399 = load float, ptr %398, align 4
  %400 = fadd float %394, %399
  %401 = call float @llvm.maxnum.f32(float %400, float 0.000000e+00)
  %402 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %403 = mul nuw nsw i64 %371, 65536
  %404 = mul nuw nsw i64 %375, 32768
  %405 = add nuw nsw i64 %403, %404
  %406 = mul nuw nsw i64 %379, 4
  %407 = add nuw nsw i64 %405, %406
  %408 = add nuw nsw i64 %407, %383
  %409 = getelementptr inbounds nuw float, ptr %402, i64 %408
  store float %401, ptr %409, align 4
  %410 = add i64 %383, 1
  br label %382

411:                                              ; preds = %382
  %412 = add i64 %379, 1
  br label %378

413:                                              ; preds = %378
  %414 = add i64 %375, 1
  br label %374

415:                                              ; preds = %374
  %416 = add i64 %371, 1
  br label %370

417:                                              ; preds = %370
  %418 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %419 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %418, 0
  %420 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %419, ptr %418, 1
  %421 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %420, i64 0, 2
  %422 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %421, i64 64, 3, 0
  %423 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %422, i64 2, 3, 1
  %424 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %423, i64 4096, 3, 2
  %425 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %424, i64 4, 3, 3
  %426 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %425, i64 32768, 4, 0
  %427 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %426, i64 16384, 4, 1
  %428 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %427, i64 4, 4, 2
  %429 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %428, i64 1, 4, 3
  br label %430

430:                                              ; preds = %459, %417
  %431 = phi i64 [ %460, %459 ], [ 0, %417 ]
  %432 = icmp slt i64 %431, 64
  br i1 %432, label %433, label %461

433:                                              ; preds = %430
  br label %434

434:                                              ; preds = %457, %433
  %435 = phi i64 [ %458, %457 ], [ 0, %433 ]
  %436 = icmp slt i64 %435, 2
  br i1 %436, label %437, label %459

437:                                              ; preds = %434
  br label %438

438:                                              ; preds = %455, %437
  %439 = phi i64 [ %456, %455 ], [ 0, %437 ]
  %440 = icmp slt i64 %439, 4096
  br i1 %440, label %441, label %457

441:                                              ; preds = %438
  br label %442

442:                                              ; preds = %445, %441
  %443 = phi i64 [ %454, %445 ], [ 0, %441 ]
  %444 = icmp slt i64 %443, 4
  br i1 %444, label %445, label %455

445:                                              ; preds = %442
  %446 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, 1
  %447 = mul nuw nsw i64 %431, 32768
  %448 = mul nuw nsw i64 %435, 16384
  %449 = add nuw nsw i64 %447, %448
  %450 = mul nuw nsw i64 %439, 4
  %451 = add nuw nsw i64 %449, %450
  %452 = add nuw nsw i64 %451, %443
  %453 = getelementptr inbounds nuw float, ptr %446, i64 %452
  store float 0.000000e+00, ptr %453, align 4
  %454 = add i64 %443, 1
  br label %442

455:                                              ; preds = %442
  %456 = add i64 %439, 1
  br label %438

457:                                              ; preds = %438
  %458 = add i64 %435, 1
  br label %434

459:                                              ; preds = %434
  %460 = add i64 %431, 1
  br label %430

461:                                              ; preds = %430
  br label %462

462:                                              ; preds = %548, %461
  %463 = phi i64 [ %549, %548 ], [ 0, %461 ]
  %464 = icmp slt i64 %463, 64
  br i1 %464, label %465, label %550

465:                                              ; preds = %462
  br label %466

466:                                              ; preds = %546, %465
  %467 = phi i64 [ %547, %546 ], [ 0, %465 ]
  %468 = icmp slt i64 %467, 4096
  br i1 %468, label %469, label %548

469:                                              ; preds = %466
  br label %470

470:                                              ; preds = %544, %469
  %471 = phi i64 [ %545, %544 ], [ 0, %469 ]
  %472 = icmp slt i64 %471, 2
  br i1 %472, label %473, label %546

473:                                              ; preds = %470
  br label %474

474:                                              ; preds = %542, %473
  %475 = phi i64 [ %543, %542 ], [ 0, %473 ]
  %476 = icmp slt i64 %475, 4
  br i1 %476, label %477, label %544

477:                                              ; preds = %474
  br label %478

478:                                              ; preds = %481, %477
  %479 = phi i64 [ %541, %481 ], [ 0, %477 ]
  %480 = icmp slt i64 %479, 32768
  br i1 %480, label %481, label %542

481:                                              ; preds = %478
  %482 = mul nsw i64 %463, 65536
  %483 = mul nsw i64 %471, 32768
  %484 = add i64 %482, %483
  %485 = add i64 %484, %479
  %486 = icmp slt i64 %485, 0
  %487 = sub i64 -1, %485
  %488 = select i1 %486, i64 %487, i64 %485
  %489 = sdiv i64 %488, 65536
  %490 = sub i64 -1, %489
  %491 = select i1 %486, i64 %490, i64 %489
  %492 = icmp slt i64 %479, 0
  %493 = sub i64 -1, %479
  %494 = select i1 %492, i64 %493, i64 %479
  %495 = sdiv i64 %494, 4
  %496 = sub i64 -1, %495
  %497 = select i1 %492, i64 %496, i64 %495
  %498 = srem i64 %497, 8192
  %499 = icmp slt i64 %498, 0
  %500 = add i64 %498, 8192
  %501 = select i1 %499, i64 %500, i64 %498
  %502 = srem i64 %479, 4
  %503 = icmp slt i64 %502, 0
  %504 = add i64 %502, 4
  %505 = select i1 %503, i64 %504, i64 %502
  %506 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %507 = mul nuw nsw i64 %491, 65536
  %508 = mul nuw nsw i64 %471, 32768
  %509 = add nuw nsw i64 %507, %508
  %510 = mul nuw nsw i64 %501, 4
  %511 = add nuw nsw i64 %509, %510
  %512 = add nuw nsw i64 %511, %505
  %513 = getelementptr inbounds nuw float, ptr %506, i64 %512
  %514 = load float, ptr %513, align 4
  %515 = mul nsw i64 %467, 4
  %516 = add i64 %515, %475
  %517 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %518 = mul nuw nsw i64 %516, 32768
  %519 = add nuw nsw i64 %518, %479
  %520 = getelementptr inbounds nuw float, ptr %517, i64 %519
  %521 = load float, ptr %520, align 4
  %522 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, 1
  %523 = mul nuw nsw i64 %463, 32768
  %524 = mul nuw nsw i64 %471, 16384
  %525 = add nuw nsw i64 %523, %524
  %526 = mul nuw nsw i64 %467, 4
  %527 = add nuw nsw i64 %525, %526
  %528 = add nuw nsw i64 %527, %475
  %529 = getelementptr inbounds nuw float, ptr %522, i64 %528
  %530 = load float, ptr %529, align 4
  %531 = fmul float %514, %521
  %532 = fadd float %531, %530
  %533 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, 1
  %534 = mul nuw nsw i64 %463, 32768
  %535 = mul nuw nsw i64 %471, 16384
  %536 = add nuw nsw i64 %534, %535
  %537 = mul nuw nsw i64 %467, 4
  %538 = add nuw nsw i64 %536, %537
  %539 = add nuw nsw i64 %538, %475
  %540 = getelementptr inbounds nuw float, ptr %533, i64 %539
  store float %532, ptr %540, align 4
  %541 = add i64 %479, 1
  br label %478

542:                                              ; preds = %478
  %543 = add i64 %475, 1
  br label %474

544:                                              ; preds = %474
  %545 = add i64 %471, 1
  br label %470

546:                                              ; preds = %470
  %547 = add i64 %467, 1
  br label %466

548:                                              ; preds = %466
  %549 = add i64 %463, 1
  br label %462

550:                                              ; preds = %462
  br label %551

551:                                              ; preds = %595, %550
  %552 = phi i64 [ %596, %595 ], [ 0, %550 ]
  %553 = icmp slt i64 %552, 64
  br i1 %553, label %554, label %597

554:                                              ; preds = %551
  br label %555

555:                                              ; preds = %593, %554
  %556 = phi i64 [ %594, %593 ], [ 0, %554 ]
  %557 = icmp slt i64 %556, 2
  br i1 %557, label %558, label %595

558:                                              ; preds = %555
  br label %559

559:                                              ; preds = %591, %558
  %560 = phi i64 [ %592, %591 ], [ 0, %558 ]
  %561 = icmp slt i64 %560, 4096
  br i1 %561, label %562, label %593

562:                                              ; preds = %559
  br label %563

563:                                              ; preds = %566, %562
  %564 = phi i64 [ %590, %566 ], [ 0, %562 ]
  %565 = icmp slt i64 %564, 4
  br i1 %565, label %566, label %591

566:                                              ; preds = %563
  %567 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, 1
  %568 = mul nuw nsw i64 %552, 32768
  %569 = mul nuw nsw i64 %556, 16384
  %570 = add nuw nsw i64 %568, %569
  %571 = mul nuw nsw i64 %560, 4
  %572 = add nuw nsw i64 %570, %571
  %573 = add nuw nsw i64 %572, %564
  %574 = getelementptr inbounds nuw float, ptr %567, i64 %573
  %575 = load float, ptr %574, align 4
  %576 = mul nsw i64 %560, 4
  %577 = add i64 %576, %564
  %578 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %579 = getelementptr inbounds nuw float, ptr %578, i64 %577
  %580 = load float, ptr %579, align 4
  %581 = fadd float %575, %580
  %582 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, 1
  %583 = mul nuw nsw i64 %552, 32768
  %584 = mul nuw nsw i64 %556, 16384
  %585 = add nuw nsw i64 %583, %584
  %586 = mul nuw nsw i64 %560, 4
  %587 = add nuw nsw i64 %585, %586
  %588 = add nuw nsw i64 %587, %564
  %589 = getelementptr inbounds nuw float, ptr %582, i64 %588
  store float %581, ptr %589, align 4
  %590 = add i64 %564, 1
  br label %563

591:                                              ; preds = %563
  %592 = add i64 %560, 1
  br label %559

593:                                              ; preds = %559
  %594 = add i64 %556, 1
  br label %555

595:                                              ; preds = %555
  %596 = add i64 %552, 1
  br label %551

597:                                              ; preds = %551
  %598 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %599 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %598, 0
  %600 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %599, ptr %598, 1
  %601 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %600, i64 0, 2
  %602 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %601, i64 128, 3, 0
  %603 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %602, i64 16384, 3, 1
  %604 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %603, i64 16384, 4, 0
  %605 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %604, i64 1, 4, 1
  br label %606

606:                                              ; preds = %654, %597
  %607 = phi i64 [ %655, %654 ], [ 0, %597 ]
  %608 = icmp slt i64 %607, 128
  br i1 %608, label %609, label %656

609:                                              ; preds = %606
  br label %610

610:                                              ; preds = %613, %609
  %611 = phi i64 [ %653, %613 ], [ 0, %609 ]
  %612 = icmp slt i64 %611, 16384
  br i1 %612, label %613, label %654

613:                                              ; preds = %610
  %614 = mul nsw i64 %607, 16384
  %615 = add i64 %614, %611
  %616 = icmp slt i64 %615, 0
  %617 = sub i64 -1, %615
  %618 = select i1 %616, i64 %617, i64 %615
  %619 = sdiv i64 %618, 32768
  %620 = sub i64 -1, %619
  %621 = select i1 %616, i64 %620, i64 %619
  %622 = srem i64 %607, 2
  %623 = icmp slt i64 %622, 0
  %624 = add i64 %622, 2
  %625 = select i1 %623, i64 %624, i64 %622
  %626 = icmp slt i64 %611, 0
  %627 = sub i64 -1, %611
  %628 = select i1 %626, i64 %627, i64 %611
  %629 = sdiv i64 %628, 4
  %630 = sub i64 -1, %629
  %631 = select i1 %626, i64 %630, i64 %629
  %632 = srem i64 %631, 4096
  %633 = icmp slt i64 %632, 0
  %634 = add i64 %632, 4096
  %635 = select i1 %633, i64 %634, i64 %632
  %636 = srem i64 %611, 4
  %637 = icmp slt i64 %636, 0
  %638 = add i64 %636, 4
  %639 = select i1 %637, i64 %638, i64 %636
  %640 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, 1
  %641 = mul nuw nsw i64 %621, 32768
  %642 = mul nuw nsw i64 %625, 16384
  %643 = add nuw nsw i64 %641, %642
  %644 = mul nuw nsw i64 %635, 4
  %645 = add nuw nsw i64 %643, %644
  %646 = add nuw nsw i64 %645, %639
  %647 = getelementptr inbounds nuw float, ptr %640, i64 %646
  %648 = load float, ptr %647, align 4
  %649 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %605, 1
  %650 = mul nuw nsw i64 %607, 16384
  %651 = add nuw nsw i64 %650, %611
  %652 = getelementptr inbounds nuw float, ptr %649, i64 %651
  store float %648, ptr %652, align 4
  %653 = add i64 %611, 1
  br label %610

654:                                              ; preds = %610
  %655 = add i64 %607, 1
  br label %606

656:                                              ; preds = %606
  %657 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 0
  call void @free(ptr %657)
  %658 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 0
  call void @free(ptr %658)
  %659 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 0
  call void @free(ptr %659)
  %660 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, 0
  call void @free(ptr %660)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %605
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
