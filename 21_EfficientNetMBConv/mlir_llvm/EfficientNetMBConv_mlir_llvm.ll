; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@__constant_xf32_0 = private constant float 0.000000e+00, align 64
@__constant_xf32 = private constant float 6.000000e+00, align 64

declare void @free(ptr)

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @EfficientNetMBConv(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, ptr %32, ptr %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42, ptr %43, ptr %44, i64 %45, i64 %46, i64 %47, ptr %48, ptr %49, i64 %50, i64 %51, i64 %52, ptr %53, ptr %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, ptr %64, ptr %65, i64 %66, i64 %67, i64 %68, ptr %69, ptr %70, i64 %71, i64 %72, i64 %73, ptr %74, ptr %75, i64 %76, i64 %77, i64 %78, ptr %79, ptr %80, i64 %81, i64 %82, i64 %83, ptr %84, ptr %85, i64 %86, i64 %87, i64 %88, ptr %89, ptr %90, i64 %91, i64 %92, i64 %93, ptr %94, ptr %95, i64 %96, i64 %97, i64 %98, ptr %99, ptr %100, i64 %101, i64 %102, i64 %103) {
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %99, 0
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, ptr %100, 1
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 %101, 2
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 %102, 3, 0
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, i64 %103, 4, 0
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %94, 0
  %111 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, ptr %95, 1
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %111, i64 %96, 2
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, i64 %97, 3, 0
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, i64 %98, 4, 0
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %89, 0
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, ptr %90, 1
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, i64 %91, 2
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %117, i64 %92, 3, 0
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, i64 %93, 4, 0
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %84, 0
  %121 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, ptr %85, 1
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %121, i64 %86, 2
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, i64 %87, 3, 0
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, i64 %88, 4, 0
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %79, 0
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, ptr %80, 1
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, i64 %81, 2
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, i64 %82, 3, 0
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, i64 %83, 4, 0
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %74, 0
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %130, ptr %75, 1
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, i64 %76, 2
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, i64 %77, 3, 0
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 %78, 4, 0
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %69, 0
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, ptr %70, 1
  %137 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, i64 %71, 2
  %138 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %137, i64 %72, 3, 0
  %139 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %138, i64 %73, 4, 0
  %140 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %64, 0
  %141 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %140, ptr %65, 1
  %142 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %141, i64 %66, 2
  %143 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, i64 %67, 3, 0
  %144 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, i64 %68, 4, 0
  %145 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %53, 0
  %146 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %145, ptr %54, 1
  %147 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %146, i64 %55, 2
  %148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %147, i64 %56, 3, 0
  %149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %148, i64 %60, 4, 0
  %150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %149, i64 %57, 3, 1
  %151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %150, i64 %61, 4, 1
  %152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %151, i64 %58, 3, 2
  %153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %152, i64 %62, 4, 2
  %154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %153, i64 %59, 3, 3
  %155 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, i64 %63, 4, 3
  %156 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %48, 0
  %157 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %156, ptr %49, 1
  %158 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %157, i64 %50, 2
  %159 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %158, i64 %51, 3, 0
  %160 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, i64 %52, 4, 0
  %161 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %43, 0
  %162 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %161, ptr %44, 1
  %163 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %162, i64 %45, 2
  %164 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %163, i64 %46, 3, 0
  %165 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %164, i64 %47, 4, 0
  %166 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %32, 0
  %167 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %166, ptr %33, 1
  %168 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %167, i64 %34, 2
  %169 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %168, i64 %35, 3, 0
  %170 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %169, i64 %39, 4, 0
  %171 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, i64 %36, 3, 1
  %172 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %171, i64 %40, 4, 1
  %173 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %172, i64 %37, 3, 2
  %174 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %173, i64 %41, 4, 2
  %175 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %174, i64 %38, 3, 3
  %176 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %175, i64 %42, 4, 3
  %177 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %27, 0
  %178 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %177, ptr %28, 1
  %179 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %178, i64 %29, 2
  %180 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %179, i64 %30, 3, 0
  %181 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %180, i64 %31, 4, 0
  %182 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %22, 0
  %183 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %182, ptr %23, 1
  %184 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %183, i64 %24, 2
  %185 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %184, i64 %25, 3, 0
  %186 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %185, i64 %26, 4, 0
  %187 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %11, 0
  %188 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %187, ptr %12, 1
  %189 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %188, i64 %13, 2
  %190 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %189, i64 %14, 3, 0
  %191 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %190, i64 %18, 4, 0
  %192 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %191, i64 %15, 3, 1
  %193 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %192, i64 %19, 4, 1
  %194 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %193, i64 %16, 3, 2
  %195 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %194, i64 %20, 4, 2
  %196 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %195, i64 %17, 3, 3
  %197 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %196, i64 %21, 4, 3
  %198 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %0, 0
  %199 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %198, ptr %1, 1
  %200 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %199, i64 %2, 2
  %201 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %200, i64 %3, 3, 0
  %202 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %201, i64 %7, 4, 0
  %203 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %202, i64 %4, 3, 1
  %204 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %203, i64 %8, 4, 1
  %205 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %204, i64 %5, 3, 2
  %206 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %205, i64 %9, 4, 2
  %207 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %206, i64 %6, 3, 3
  %208 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %207, i64 %10, 4, 3
  %209 = call ptr @aligned_alloc(i64 64, i64 1348730880)
  %210 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %209, 0
  %211 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %210, ptr %209, 1
  %212 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %211, i64 0, 2
  %213 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, i64 10, 3, 0
  %214 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %213, i64 672, 3, 1
  %215 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, i64 224, 3, 2
  %216 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %215, i64 224, 3, 3
  %217 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %216, i64 33718272, 4, 0
  %218 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %217, i64 50176, 4, 1
  %219 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %218, i64 224, 4, 2
  %220 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %219, i64 1, 4, 3
  br label %221

221:                                              ; preds = %250, %104
  %222 = phi i64 [ %251, %250 ], [ 0, %104 ]
  %223 = icmp slt i64 %222, 10
  br i1 %223, label %224, label %252

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %248, %224
  %226 = phi i64 [ %249, %248 ], [ 0, %224 ]
  %227 = icmp slt i64 %226, 672
  br i1 %227, label %228, label %250

228:                                              ; preds = %225
  br label %229

229:                                              ; preds = %246, %228
  %230 = phi i64 [ %247, %246 ], [ 0, %228 ]
  %231 = icmp slt i64 %230, 224
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %236, %232
  %234 = phi i64 [ %245, %236 ], [ 0, %232 ]
  %235 = icmp slt i64 %234, 224
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %238 = mul nuw nsw i64 %222, 33718272
  %239 = mul nuw nsw i64 %226, 50176
  %240 = add nuw nsw i64 %238, %239
  %241 = mul nuw nsw i64 %230, 224
  %242 = add nuw nsw i64 %240, %241
  %243 = add nuw nsw i64 %242, %234
  %244 = getelementptr inbounds nuw float, ptr %237, i64 %243
  store float 0.000000e+00, ptr %244, align 4
  %245 = add i64 %234, 1
  br label %233

246:                                              ; preds = %233
  %247 = add i64 %230, 1
  br label %229

248:                                              ; preds = %229
  %249 = add i64 %226, 1
  br label %225

250:                                              ; preds = %225
  %251 = add i64 %222, 1
  br label %221

252:                                              ; preds = %221
  br label %253

253:                                              ; preds = %329, %252
  %254 = phi i64 [ %330, %329 ], [ 0, %252 ]
  %255 = icmp slt i64 %254, 10
  br i1 %255, label %256, label %331

256:                                              ; preds = %253
  br label %257

257:                                              ; preds = %327, %256
  %258 = phi i64 [ %328, %327 ], [ 0, %256 ]
  %259 = icmp slt i64 %258, 672
  br i1 %259, label %260, label %329

260:                                              ; preds = %257
  br label %261

261:                                              ; preds = %325, %260
  %262 = phi i64 [ %326, %325 ], [ 0, %260 ]
  %263 = icmp slt i64 %262, 224
  br i1 %263, label %264, label %327

264:                                              ; preds = %261
  br label %265

265:                                              ; preds = %323, %264
  %266 = phi i64 [ %324, %323 ], [ 0, %264 ]
  %267 = icmp slt i64 %266, 112
  br i1 %267, label %268, label %325

268:                                              ; preds = %265
  br label %269

269:                                              ; preds = %321, %268
  %270 = phi i64 [ %322, %321 ], [ 0, %268 ]
  %271 = icmp slt i64 %270, 1
  br i1 %271, label %272, label %323

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %319, %272
  %274 = phi i64 [ %320, %319 ], [ 0, %272 ]
  %275 = icmp slt i64 %274, 1
  br i1 %275, label %276, label %321

276:                                              ; preds = %273
  br label %277

277:                                              ; preds = %280, %276
  %278 = phi i64 [ %318, %280 ], [ 0, %276 ]
  %279 = icmp slt i64 %278, 224
  br i1 %279, label %280, label %319

280:                                              ; preds = %277
  %281 = add i64 %262, %270
  %282 = add i64 %274, %278
  %283 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %208, 1
  %284 = mul nuw nsw i64 %254, 5619712
  %285 = mul nuw nsw i64 %266, 50176
  %286 = add nuw nsw i64 %284, %285
  %287 = mul nuw nsw i64 %281, 224
  %288 = add nuw nsw i64 %286, %287
  %289 = add nuw nsw i64 %288, %282
  %290 = getelementptr inbounds nuw float, ptr %283, i64 %289
  %291 = load float, ptr %290, align 4
  %292 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %197, 1
  %293 = mul nuw nsw i64 %258, 112
  %294 = add nuw nsw i64 %293, %266
  %295 = add nuw nsw i64 %294, %270
  %296 = add nuw nsw i64 %295, %274
  %297 = getelementptr inbounds nuw float, ptr %292, i64 %296
  %298 = load float, ptr %297, align 4
  %299 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %300 = mul nuw nsw i64 %254, 33718272
  %301 = mul nuw nsw i64 %258, 50176
  %302 = add nuw nsw i64 %300, %301
  %303 = mul nuw nsw i64 %262, 224
  %304 = add nuw nsw i64 %302, %303
  %305 = add nuw nsw i64 %304, %278
  %306 = getelementptr inbounds nuw float, ptr %299, i64 %305
  %307 = load float, ptr %306, align 4
  %308 = fmul float %291, %298
  %309 = fadd float %307, %308
  %310 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %311 = mul nuw nsw i64 %254, 33718272
  %312 = mul nuw nsw i64 %258, 50176
  %313 = add nuw nsw i64 %311, %312
  %314 = mul nuw nsw i64 %262, 224
  %315 = add nuw nsw i64 %313, %314
  %316 = add nuw nsw i64 %315, %278
  %317 = getelementptr inbounds nuw float, ptr %310, i64 %316
  store float %309, ptr %317, align 4
  %318 = add i64 %278, 1
  br label %277

319:                                              ; preds = %277
  %320 = add i64 %274, 1
  br label %273

321:                                              ; preds = %273
  %322 = add i64 %270, 1
  br label %269

323:                                              ; preds = %269
  %324 = add i64 %266, 1
  br label %265

325:                                              ; preds = %265
  %326 = add i64 %262, 1
  br label %261

327:                                              ; preds = %261
  %328 = add i64 %258, 1
  br label %257

329:                                              ; preds = %257
  %330 = add i64 %254, 1
  br label %253

331:                                              ; preds = %253
  %332 = call ptr @aligned_alloc(i64 64, i64 2688)
  %333 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %332, 0
  %334 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %333, ptr %332, 1
  %335 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %334, i64 0, 2
  %336 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %335, i64 672, 3, 0
  %337 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %336, i64 1, 4, 0
  br label %338

338:                                              ; preds = %341, %331
  %339 = phi i64 [ %348, %341 ], [ 0, %331 ]
  %340 = icmp slt i64 %339, 672
  br i1 %340, label %341, label %349

341:                                              ; preds = %338
  %342 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %129, 1
  %343 = getelementptr inbounds nuw float, ptr %342, i64 %339
  %344 = load float, ptr %343, align 4
  %345 = fadd float %344, f0x3727C5AC
  %346 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 1
  %347 = getelementptr inbounds nuw float, ptr %346, i64 %339
  store float %345, ptr %347, align 4
  %348 = add i64 %339, 1
  br label %338

349:                                              ; preds = %338
  br label %350

350:                                              ; preds = %353, %349
  %351 = phi i64 [ %361, %353 ], [ 0, %349 ]
  %352 = icmp slt i64 %351, 672
  br i1 %352, label %353, label %362

353:                                              ; preds = %350
  %354 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 1
  %355 = getelementptr inbounds nuw float, ptr %354, i64 %351
  %356 = load float, ptr %355, align 4
  %357 = call float @llvm.sqrt.f32(float %356)
  %358 = fdiv float 1.000000e+00, %357
  %359 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 1
  %360 = getelementptr inbounds nuw float, ptr %359, i64 %351
  store float %358, ptr %360, align 4
  %361 = add i64 %351, 1
  br label %350

362:                                              ; preds = %350
  %363 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 0
  %364 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 1
  %365 = insertvalue { ptr, ptr, i64 } poison, ptr %363, 0
  %366 = insertvalue { ptr, ptr, i64 } %365, ptr %364, 1
  %367 = insertvalue { ptr, ptr, i64 } %366, i64 0, 2
  %368 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 2
  %369 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 3, 0
  %370 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, 4, 0
  %371 = extractvalue { ptr, ptr, i64 } %367, 0
  %372 = extractvalue { ptr, ptr, i64 } %367, 1
  %373 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %371, 0
  %374 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %373, ptr %372, 1
  %375 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %374, i64 0, 2
  %376 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %375, i64 672, 3, 0
  %377 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %376, i64 1, 4, 0
  %378 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %377, i64 1, 3, 1
  %379 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %378, i64 1, 4, 1
  %380 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %379, i64 1, 3, 2
  %381 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %380, i64 1, 4, 2
  %382 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 0
  %383 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 1
  %384 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %382, 0
  %385 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %384, ptr %383, 1
  %386 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %385, i64 0, 2
  %387 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %386, i64 672, 3, 0
  %388 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %387, i64 1, 4, 0
  %389 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %388, i64 1, 3, 1
  %390 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %389, i64 1, 4, 1
  %391 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %390, i64 1, 3, 2
  %392 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %391, i64 1, 4, 2
  br label %393

393:                                              ; preds = %437, %362
  %394 = phi i64 [ %438, %437 ], [ 0, %362 ]
  %395 = icmp slt i64 %394, 10
  br i1 %395, label %396, label %439

396:                                              ; preds = %393
  br label %397

397:                                              ; preds = %435, %396
  %398 = phi i64 [ %436, %435 ], [ 0, %396 ]
  %399 = icmp slt i64 %398, 672
  br i1 %399, label %400, label %437

400:                                              ; preds = %397
  br label %401

401:                                              ; preds = %433, %400
  %402 = phi i64 [ %434, %433 ], [ 0, %400 ]
  %403 = icmp slt i64 %402, 224
  br i1 %403, label %404, label %435

404:                                              ; preds = %401
  br label %405

405:                                              ; preds = %408, %404
  %406 = phi i64 [ %432, %408 ], [ 0, %404 ]
  %407 = icmp slt i64 %406, 224
  br i1 %407, label %408, label %433

408:                                              ; preds = %405
  %409 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %410 = mul nuw nsw i64 %394, 33718272
  %411 = mul nuw nsw i64 %398, 50176
  %412 = add nuw nsw i64 %410, %411
  %413 = mul nuw nsw i64 %402, 224
  %414 = add nuw nsw i64 %412, %413
  %415 = add nuw nsw i64 %414, %406
  %416 = getelementptr inbounds nuw float, ptr %409, i64 %415
  %417 = load float, ptr %416, align 4
  %418 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %381, 1
  %419 = add nuw nsw i64 %398, 0
  %420 = add nuw nsw i64 %419, 0
  %421 = getelementptr inbounds nuw float, ptr %418, i64 %420
  %422 = load float, ptr %421, align 4
  %423 = fsub float %417, %422
  %424 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %425 = mul nuw nsw i64 %394, 33718272
  %426 = mul nuw nsw i64 %398, 50176
  %427 = add nuw nsw i64 %425, %426
  %428 = mul nuw nsw i64 %402, 224
  %429 = add nuw nsw i64 %427, %428
  %430 = add nuw nsw i64 %429, %406
  %431 = getelementptr inbounds nuw float, ptr %424, i64 %430
  store float %423, ptr %431, align 4
  %432 = add i64 %406, 1
  br label %405

433:                                              ; preds = %405
  %434 = add i64 %402, 1
  br label %401

435:                                              ; preds = %401
  %436 = add i64 %398, 1
  br label %397

437:                                              ; preds = %397
  %438 = add i64 %394, 1
  br label %393

439:                                              ; preds = %393
  br label %440

440:                                              ; preds = %484, %439
  %441 = phi i64 [ %485, %484 ], [ 0, %439 ]
  %442 = icmp slt i64 %441, 10
  br i1 %442, label %443, label %486

443:                                              ; preds = %440
  br label %444

444:                                              ; preds = %482, %443
  %445 = phi i64 [ %483, %482 ], [ 0, %443 ]
  %446 = icmp slt i64 %445, 672
  br i1 %446, label %447, label %484

447:                                              ; preds = %444
  br label %448

448:                                              ; preds = %480, %447
  %449 = phi i64 [ %481, %480 ], [ 0, %447 ]
  %450 = icmp slt i64 %449, 224
  br i1 %450, label %451, label %482

451:                                              ; preds = %448
  br label %452

452:                                              ; preds = %455, %451
  %453 = phi i64 [ %479, %455 ], [ 0, %451 ]
  %454 = icmp slt i64 %453, 224
  br i1 %454, label %455, label %480

455:                                              ; preds = %452
  %456 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %457 = mul nuw nsw i64 %441, 33718272
  %458 = mul nuw nsw i64 %445, 50176
  %459 = add nuw nsw i64 %457, %458
  %460 = mul nuw nsw i64 %449, 224
  %461 = add nuw nsw i64 %459, %460
  %462 = add nuw nsw i64 %461, %453
  %463 = getelementptr inbounds nuw float, ptr %456, i64 %462
  %464 = load float, ptr %463, align 4
  %465 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %392, 1
  %466 = add nuw nsw i64 %445, 0
  %467 = add nuw nsw i64 %466, 0
  %468 = getelementptr inbounds nuw float, ptr %465, i64 %467
  %469 = load float, ptr %468, align 4
  %470 = fmul float %464, %469
  %471 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %472 = mul nuw nsw i64 %441, 33718272
  %473 = mul nuw nsw i64 %445, 50176
  %474 = add nuw nsw i64 %472, %473
  %475 = mul nuw nsw i64 %449, 224
  %476 = add nuw nsw i64 %474, %475
  %477 = add nuw nsw i64 %476, %453
  %478 = getelementptr inbounds nuw float, ptr %471, i64 %477
  store float %470, ptr %478, align 4
  %479 = add i64 %453, 1
  br label %452

480:                                              ; preds = %452
  %481 = add i64 %449, 1
  br label %448

482:                                              ; preds = %448
  %483 = add i64 %445, 1
  br label %444

484:                                              ; preds = %444
  %485 = add i64 %441, 1
  br label %440

486:                                              ; preds = %440
  %487 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %186, 0
  %488 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %186, 1
  %489 = insertvalue { ptr, ptr, i64 } poison, ptr %487, 0
  %490 = insertvalue { ptr, ptr, i64 } %489, ptr %488, 1
  %491 = insertvalue { ptr, ptr, i64 } %490, i64 0, 2
  %492 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %186, 2
  %493 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %186, 3, 0
  %494 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %186, 4, 0
  %495 = extractvalue { ptr, ptr, i64 } %491, 0
  %496 = extractvalue { ptr, ptr, i64 } %491, 1
  %497 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %495, 0
  %498 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %497, ptr %496, 1
  %499 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %498, i64 0, 2
  %500 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %499, i64 672, 3, 0
  %501 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %500, i64 1, 4, 0
  %502 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %501, i64 1, 3, 1
  %503 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %502, i64 1, 4, 1
  %504 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %503, i64 1, 3, 2
  %505 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %504, i64 1, 4, 2
  br label %506

506:                                              ; preds = %550, %486
  %507 = phi i64 [ %551, %550 ], [ 0, %486 ]
  %508 = icmp slt i64 %507, 10
  br i1 %508, label %509, label %552

509:                                              ; preds = %506
  br label %510

510:                                              ; preds = %548, %509
  %511 = phi i64 [ %549, %548 ], [ 0, %509 ]
  %512 = icmp slt i64 %511, 672
  br i1 %512, label %513, label %550

513:                                              ; preds = %510
  br label %514

514:                                              ; preds = %546, %513
  %515 = phi i64 [ %547, %546 ], [ 0, %513 ]
  %516 = icmp slt i64 %515, 224
  br i1 %516, label %517, label %548

517:                                              ; preds = %514
  br label %518

518:                                              ; preds = %521, %517
  %519 = phi i64 [ %545, %521 ], [ 0, %517 ]
  %520 = icmp slt i64 %519, 224
  br i1 %520, label %521, label %546

521:                                              ; preds = %518
  %522 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %523 = mul nuw nsw i64 %507, 33718272
  %524 = mul nuw nsw i64 %511, 50176
  %525 = add nuw nsw i64 %523, %524
  %526 = mul nuw nsw i64 %515, 224
  %527 = add nuw nsw i64 %525, %526
  %528 = add nuw nsw i64 %527, %519
  %529 = getelementptr inbounds nuw float, ptr %522, i64 %528
  %530 = load float, ptr %529, align 4
  %531 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %505, 1
  %532 = add nuw nsw i64 %511, 0
  %533 = add nuw nsw i64 %532, 0
  %534 = getelementptr inbounds nuw float, ptr %531, i64 %533
  %535 = load float, ptr %534, align 4
  %536 = fmul float %530, %535
  %537 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %538 = mul nuw nsw i64 %507, 33718272
  %539 = mul nuw nsw i64 %511, 50176
  %540 = add nuw nsw i64 %538, %539
  %541 = mul nuw nsw i64 %515, 224
  %542 = add nuw nsw i64 %540, %541
  %543 = add nuw nsw i64 %542, %519
  %544 = getelementptr inbounds nuw float, ptr %537, i64 %543
  store float %536, ptr %544, align 4
  %545 = add i64 %519, 1
  br label %518

546:                                              ; preds = %518
  %547 = add i64 %515, 1
  br label %514

548:                                              ; preds = %514
  %549 = add i64 %511, 1
  br label %510

550:                                              ; preds = %510
  %551 = add i64 %507, 1
  br label %506

552:                                              ; preds = %506
  %553 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %181, 0
  %554 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %181, 1
  %555 = insertvalue { ptr, ptr, i64 } poison, ptr %553, 0
  %556 = insertvalue { ptr, ptr, i64 } %555, ptr %554, 1
  %557 = insertvalue { ptr, ptr, i64 } %556, i64 0, 2
  %558 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %181, 2
  %559 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %181, 3, 0
  %560 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %181, 4, 0
  %561 = extractvalue { ptr, ptr, i64 } %557, 0
  %562 = extractvalue { ptr, ptr, i64 } %557, 1
  %563 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %561, 0
  %564 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %563, ptr %562, 1
  %565 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %564, i64 0, 2
  %566 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %565, i64 672, 3, 0
  %567 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %566, i64 1, 4, 0
  %568 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %567, i64 1, 3, 1
  %569 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %568, i64 1, 4, 1
  %570 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %569, i64 1, 3, 2
  %571 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %570, i64 1, 4, 2
  br label %572

572:                                              ; preds = %616, %552
  %573 = phi i64 [ %617, %616 ], [ 0, %552 ]
  %574 = icmp slt i64 %573, 10
  br i1 %574, label %575, label %618

575:                                              ; preds = %572
  br label %576

576:                                              ; preds = %614, %575
  %577 = phi i64 [ %615, %614 ], [ 0, %575 ]
  %578 = icmp slt i64 %577, 672
  br i1 %578, label %579, label %616

579:                                              ; preds = %576
  br label %580

580:                                              ; preds = %612, %579
  %581 = phi i64 [ %613, %612 ], [ 0, %579 ]
  %582 = icmp slt i64 %581, 224
  br i1 %582, label %583, label %614

583:                                              ; preds = %580
  br label %584

584:                                              ; preds = %587, %583
  %585 = phi i64 [ %611, %587 ], [ 0, %583 ]
  %586 = icmp slt i64 %585, 224
  br i1 %586, label %587, label %612

587:                                              ; preds = %584
  %588 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %589 = mul nuw nsw i64 %573, 33718272
  %590 = mul nuw nsw i64 %577, 50176
  %591 = add nuw nsw i64 %589, %590
  %592 = mul nuw nsw i64 %581, 224
  %593 = add nuw nsw i64 %591, %592
  %594 = add nuw nsw i64 %593, %585
  %595 = getelementptr inbounds nuw float, ptr %588, i64 %594
  %596 = load float, ptr %595, align 4
  %597 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %571, 1
  %598 = add nuw nsw i64 %577, 0
  %599 = add nuw nsw i64 %598, 0
  %600 = getelementptr inbounds nuw float, ptr %597, i64 %599
  %601 = load float, ptr %600, align 4
  %602 = fadd float %596, %601
  %603 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %604 = mul nuw nsw i64 %573, 33718272
  %605 = mul nuw nsw i64 %577, 50176
  %606 = add nuw nsw i64 %604, %605
  %607 = mul nuw nsw i64 %581, 224
  %608 = add nuw nsw i64 %606, %607
  %609 = add nuw nsw i64 %608, %585
  %610 = getelementptr inbounds nuw float, ptr %603, i64 %609
  store float %602, ptr %610, align 4
  %611 = add i64 %585, 1
  br label %584

612:                                              ; preds = %584
  %613 = add i64 %581, 1
  br label %580

614:                                              ; preds = %580
  %615 = add i64 %577, 1
  br label %576

616:                                              ; preds = %576
  %617 = add i64 %573, 1
  br label %572

618:                                              ; preds = %572
  br label %619

619:                                              ; preds = %659, %618
  %620 = phi i64 [ %660, %659 ], [ 0, %618 ]
  %621 = icmp slt i64 %620, 10
  br i1 %621, label %622, label %661

622:                                              ; preds = %619
  br label %623

623:                                              ; preds = %657, %622
  %624 = phi i64 [ %658, %657 ], [ 0, %622 ]
  %625 = icmp slt i64 %624, 672
  br i1 %625, label %626, label %659

626:                                              ; preds = %623
  br label %627

627:                                              ; preds = %655, %626
  %628 = phi i64 [ %656, %655 ], [ 0, %626 ]
  %629 = icmp slt i64 %628, 224
  br i1 %629, label %630, label %657

630:                                              ; preds = %627
  br label %631

631:                                              ; preds = %634, %630
  %632 = phi i64 [ %654, %634 ], [ 0, %630 ]
  %633 = icmp slt i64 %632, 224
  br i1 %633, label %634, label %655

634:                                              ; preds = %631
  %635 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %636 = mul nuw nsw i64 %620, 33718272
  %637 = mul nuw nsw i64 %624, 50176
  %638 = add nuw nsw i64 %636, %637
  %639 = mul nuw nsw i64 %628, 224
  %640 = add nuw nsw i64 %638, %639
  %641 = add nuw nsw i64 %640, %632
  %642 = getelementptr inbounds nuw float, ptr %635, i64 %641
  %643 = load float, ptr %642, align 4
  %644 = fcmp ogt float %643, 0.000000e+00
  %645 = select i1 %644, float %643, float 0.000000e+00
  %646 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %647 = mul nuw nsw i64 %620, 33718272
  %648 = mul nuw nsw i64 %624, 50176
  %649 = add nuw nsw i64 %647, %648
  %650 = mul nuw nsw i64 %628, 224
  %651 = add nuw nsw i64 %649, %650
  %652 = add nuw nsw i64 %651, %632
  %653 = getelementptr inbounds nuw float, ptr %646, i64 %652
  store float %645, ptr %653, align 4
  %654 = add i64 %632, 1
  br label %631

655:                                              ; preds = %631
  %656 = add i64 %628, 1
  br label %627

657:                                              ; preds = %627
  %658 = add i64 %624, 1
  br label %623

659:                                              ; preds = %623
  %660 = add i64 %620, 1
  br label %619

661:                                              ; preds = %619
  br label %662

662:                                              ; preds = %702, %661
  %663 = phi i64 [ %703, %702 ], [ 0, %661 ]
  %664 = icmp slt i64 %663, 10
  br i1 %664, label %665, label %704

665:                                              ; preds = %662
  br label %666

666:                                              ; preds = %700, %665
  %667 = phi i64 [ %701, %700 ], [ 0, %665 ]
  %668 = icmp slt i64 %667, 672
  br i1 %668, label %669, label %702

669:                                              ; preds = %666
  br label %670

670:                                              ; preds = %698, %669
  %671 = phi i64 [ %699, %698 ], [ 0, %669 ]
  %672 = icmp slt i64 %671, 224
  br i1 %672, label %673, label %700

673:                                              ; preds = %670
  br label %674

674:                                              ; preds = %677, %673
  %675 = phi i64 [ %697, %677 ], [ 0, %673 ]
  %676 = icmp slt i64 %675, 224
  br i1 %676, label %677, label %698

677:                                              ; preds = %674
  %678 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %679 = mul nuw nsw i64 %663, 33718272
  %680 = mul nuw nsw i64 %667, 50176
  %681 = add nuw nsw i64 %679, %680
  %682 = mul nuw nsw i64 %671, 224
  %683 = add nuw nsw i64 %681, %682
  %684 = add nuw nsw i64 %683, %675
  %685 = getelementptr inbounds nuw float, ptr %678, i64 %684
  %686 = load float, ptr %685, align 4
  %687 = fcmp olt float 6.000000e+00, %686
  %688 = select i1 %687, float 6.000000e+00, float %686
  %689 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 1
  %690 = mul nuw nsw i64 %663, 33718272
  %691 = mul nuw nsw i64 %667, 50176
  %692 = add nuw nsw i64 %690, %691
  %693 = mul nuw nsw i64 %671, 224
  %694 = add nuw nsw i64 %692, %693
  %695 = add nuw nsw i64 %694, %675
  %696 = getelementptr inbounds nuw float, ptr %689, i64 %695
  store float %688, ptr %696, align 4
  %697 = add i64 %675, 1
  br label %674

698:                                              ; preds = %674
  %699 = add i64 %671, 1
  br label %670

700:                                              ; preds = %670
  %701 = add i64 %667, 1
  br label %666

702:                                              ; preds = %666
  %703 = add i64 %663, 1
  br label %662

704:                                              ; preds = %662
  %705 = call ptr @aligned_alloc(i64 64, i64 1397329920)
  %706 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %705, 0
  %707 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %706, ptr %705, 1
  %708 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %707, i64 0, 2
  %709 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %708, i64 10, 3, 0
  %710 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %709, i64 672, 3, 1
  %711 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %710, i64 228, 3, 2
  %712 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %711, i64 228, 3, 3
  %713 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %712, i64 34933248, 4, 0
  %714 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %713, i64 51984, 4, 1
  %715 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %714, i64 228, 4, 2
  %716 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %715, i64 1, 4, 3
  br label %717

717:                                              ; preds = %746, %704
  %718 = phi i64 [ %747, %746 ], [ 0, %704 ]
  %719 = icmp slt i64 %718, 10
  br i1 %719, label %720, label %748

720:                                              ; preds = %717
  br label %721

721:                                              ; preds = %744, %720
  %722 = phi i64 [ %745, %744 ], [ 0, %720 ]
  %723 = icmp slt i64 %722, 672
  br i1 %723, label %724, label %746

724:                                              ; preds = %721
  br label %725

725:                                              ; preds = %742, %724
  %726 = phi i64 [ %743, %742 ], [ 0, %724 ]
  %727 = icmp slt i64 %726, 228
  br i1 %727, label %728, label %744

728:                                              ; preds = %725
  br label %729

729:                                              ; preds = %732, %728
  %730 = phi i64 [ %741, %732 ], [ 0, %728 ]
  %731 = icmp slt i64 %730, 228
  br i1 %731, label %732, label %742

732:                                              ; preds = %729
  %733 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %716, 1
  %734 = mul nuw nsw i64 %718, 34933248
  %735 = mul nuw nsw i64 %722, 51984
  %736 = add nuw nsw i64 %734, %735
  %737 = mul nuw nsw i64 %726, 228
  %738 = add nuw nsw i64 %736, %737
  %739 = add nuw nsw i64 %738, %730
  %740 = getelementptr inbounds nuw float, ptr %733, i64 %739
  store float 0.000000e+00, ptr %740, align 4
  %741 = add i64 %730, 1
  br label %729

742:                                              ; preds = %729
  %743 = add i64 %726, 1
  br label %725

744:                                              ; preds = %725
  %745 = add i64 %722, 1
  br label %721

746:                                              ; preds = %721
  %747 = add i64 %718, 1
  br label %717

748:                                              ; preds = %717
  %749 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %716, 0
  %750 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %716, 1
  %751 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %749, 0
  %752 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %751, ptr %750, 1
  %753 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %752, i64 458, 2
  %754 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %753, i64 10, 3, 0
  %755 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %754, i64 34933248, 4, 0
  %756 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %755, i64 672, 3, 1
  %757 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %756, i64 51984, 4, 1
  %758 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %757, i64 224, 3, 2
  %759 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %758, i64 228, 4, 2
  %760 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %759, i64 224, 3, 3
  %761 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %760, i64 1, 4, 3
  %762 = call ptr @llvm.stacksave.p0()
  %763 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, ptr %763, align 8
  %764 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %763, 1
  %765 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %761, ptr %765, align 8
  %766 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %765, 1
  %767 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %764, ptr %767, align 8
  %768 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %766, ptr %768, align 8
  call void @memrefCopy(i64 4, ptr %767, ptr %768)
  call void @llvm.stackrestore.p0(ptr %762)
  %769 = call ptr @aligned_alloc(i64 64, i64 337182720)
  %770 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %769, 0
  %771 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %770, ptr %769, 1
  %772 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %771, i64 0, 2
  %773 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %772, i64 10, 3, 0
  %774 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %773, i64 672, 3, 1
  %775 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %774, i64 112, 3, 2
  %776 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %775, i64 112, 3, 3
  %777 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %776, i64 8429568, 4, 0
  %778 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %777, i64 12544, 4, 1
  %779 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %778, i64 112, 4, 2
  %780 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %779, i64 1, 4, 3
  br label %781

781:                                              ; preds = %810, %748
  %782 = phi i64 [ %811, %810 ], [ 0, %748 ]
  %783 = icmp slt i64 %782, 10
  br i1 %783, label %784, label %812

784:                                              ; preds = %781
  br label %785

785:                                              ; preds = %808, %784
  %786 = phi i64 [ %809, %808 ], [ 0, %784 ]
  %787 = icmp slt i64 %786, 672
  br i1 %787, label %788, label %810

788:                                              ; preds = %785
  br label %789

789:                                              ; preds = %806, %788
  %790 = phi i64 [ %807, %806 ], [ 0, %788 ]
  %791 = icmp slt i64 %790, 112
  br i1 %791, label %792, label %808

792:                                              ; preds = %789
  br label %793

793:                                              ; preds = %796, %792
  %794 = phi i64 [ %805, %796 ], [ 0, %792 ]
  %795 = icmp slt i64 %794, 112
  br i1 %795, label %796, label %806

796:                                              ; preds = %793
  %797 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %798 = mul nuw nsw i64 %782, 8429568
  %799 = mul nuw nsw i64 %786, 12544
  %800 = add nuw nsw i64 %798, %799
  %801 = mul nuw nsw i64 %790, 112
  %802 = add nuw nsw i64 %800, %801
  %803 = add nuw nsw i64 %802, %794
  %804 = getelementptr inbounds nuw float, ptr %797, i64 %803
  store float 0.000000e+00, ptr %804, align 4
  %805 = add i64 %794, 1
  br label %793

806:                                              ; preds = %793
  %807 = add i64 %790, 1
  br label %789

808:                                              ; preds = %789
  %809 = add i64 %786, 1
  br label %785

810:                                              ; preds = %785
  %811 = add i64 %782, 1
  br label %781

812:                                              ; preds = %781
  %813 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 0
  %814 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 1
  %815 = insertvalue { ptr, ptr, i64 } poison, ptr %813, 0
  %816 = insertvalue { ptr, ptr, i64 } %815, ptr %814, 1
  %817 = insertvalue { ptr, ptr, i64 } %816, i64 0, 2
  %818 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 2
  %819 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 3, 0
  %820 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 3, 1
  %821 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 3, 2
  %822 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 3, 3
  %823 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 4, 0
  %824 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 4, 1
  %825 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 4, 2
  %826 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, 4, 3
  %827 = extractvalue { ptr, ptr, i64 } %817, 0
  %828 = extractvalue { ptr, ptr, i64 } %817, 1
  %829 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %827, 0
  %830 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %829, ptr %828, 1
  %831 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %830, i64 0, 2
  %832 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %831, i64 672, 3, 0
  %833 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %832, i64 25, 4, 0
  %834 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %833, i64 5, 3, 1
  %835 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %834, i64 5, 4, 1
  %836 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %835, i64 5, 3, 2
  %837 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %836, i64 1, 4, 2
  br label %838

838:                                              ; preds = %910, %812
  %839 = phi i64 [ %911, %910 ], [ 0, %812 ]
  %840 = icmp slt i64 %839, 10
  br i1 %840, label %841, label %912

841:                                              ; preds = %838
  br label %842

842:                                              ; preds = %908, %841
  %843 = phi i64 [ %909, %908 ], [ 0, %841 ]
  %844 = icmp slt i64 %843, 112
  br i1 %844, label %845, label %910

845:                                              ; preds = %842
  br label %846

846:                                              ; preds = %906, %845
  %847 = phi i64 [ %907, %906 ], [ 0, %845 ]
  %848 = icmp slt i64 %847, 672
  br i1 %848, label %849, label %908

849:                                              ; preds = %846
  br label %850

850:                                              ; preds = %904, %849
  %851 = phi i64 [ %905, %904 ], [ 0, %849 ]
  %852 = icmp slt i64 %851, 5
  br i1 %852, label %853, label %906

853:                                              ; preds = %850
  br label %854

854:                                              ; preds = %902, %853
  %855 = phi i64 [ %903, %902 ], [ 0, %853 ]
  %856 = icmp slt i64 %855, 5
  br i1 %856, label %857, label %904

857:                                              ; preds = %854
  br label %858

858:                                              ; preds = %861, %857
  %859 = phi i64 [ %901, %861 ], [ 0, %857 ]
  %860 = icmp slt i64 %859, 112
  br i1 %860, label %861, label %902

861:                                              ; preds = %858
  %862 = mul nsw i64 %843, 2
  %863 = add i64 %862, %851
  %864 = mul nsw i64 %859, 2
  %865 = add i64 %855, %864
  %866 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %716, 1
  %867 = mul nuw nsw i64 %839, 34933248
  %868 = mul nuw nsw i64 %847, 51984
  %869 = add nuw nsw i64 %867, %868
  %870 = mul nuw nsw i64 %863, 228
  %871 = add nuw nsw i64 %869, %870
  %872 = add nuw nsw i64 %871, %865
  %873 = getelementptr inbounds nuw float, ptr %866, i64 %872
  %874 = load float, ptr %873, align 4
  %875 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %837, 1
  %876 = mul nuw nsw i64 %847, 25
  %877 = mul nuw nsw i64 %851, 5
  %878 = add nuw nsw i64 %876, %877
  %879 = add nuw nsw i64 %878, %855
  %880 = getelementptr inbounds nuw float, ptr %875, i64 %879
  %881 = load float, ptr %880, align 4
  %882 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %883 = mul nuw nsw i64 %839, 8429568
  %884 = mul nuw nsw i64 %847, 12544
  %885 = add nuw nsw i64 %883, %884
  %886 = mul nuw nsw i64 %843, 112
  %887 = add nuw nsw i64 %885, %886
  %888 = add nuw nsw i64 %887, %859
  %889 = getelementptr inbounds nuw float, ptr %882, i64 %888
  %890 = load float, ptr %889, align 4
  %891 = fmul float %874, %881
  %892 = fadd float %890, %891
  %893 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %894 = mul nuw nsw i64 %839, 8429568
  %895 = mul nuw nsw i64 %847, 12544
  %896 = add nuw nsw i64 %894, %895
  %897 = mul nuw nsw i64 %843, 112
  %898 = add nuw nsw i64 %896, %897
  %899 = add nuw nsw i64 %898, %859
  %900 = getelementptr inbounds nuw float, ptr %893, i64 %899
  store float %892, ptr %900, align 4
  %901 = add i64 %859, 1
  br label %858

902:                                              ; preds = %858
  %903 = add i64 %855, 1
  br label %854

904:                                              ; preds = %854
  %905 = add i64 %851, 1
  br label %850

906:                                              ; preds = %850
  %907 = add i64 %847, 1
  br label %846

908:                                              ; preds = %846
  %909 = add i64 %843, 1
  br label %842

910:                                              ; preds = %842
  %911 = add i64 %839, 1
  br label %838

912:                                              ; preds = %838
  br label %913

913:                                              ; preds = %916, %912
  %914 = phi i64 [ %923, %916 ], [ 0, %912 ]
  %915 = icmp slt i64 %914, 672
  br i1 %915, label %916, label %924

916:                                              ; preds = %913
  %917 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, 1
  %918 = getelementptr inbounds nuw float, ptr %917, i64 %914
  %919 = load float, ptr %918, align 4
  %920 = fadd float %919, f0x3727C5AC
  %921 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 1
  %922 = getelementptr inbounds nuw float, ptr %921, i64 %914
  store float %920, ptr %922, align 4
  %923 = add i64 %914, 1
  br label %913

924:                                              ; preds = %913
  br label %925

925:                                              ; preds = %928, %924
  %926 = phi i64 [ %936, %928 ], [ 0, %924 ]
  %927 = icmp slt i64 %926, 672
  br i1 %927, label %928, label %937

928:                                              ; preds = %925
  %929 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 1
  %930 = getelementptr inbounds nuw float, ptr %929, i64 %926
  %931 = load float, ptr %930, align 4
  %932 = call float @llvm.sqrt.f32(float %931)
  %933 = fdiv float 1.000000e+00, %932
  %934 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 1
  %935 = getelementptr inbounds nuw float, ptr %934, i64 %926
  store float %933, ptr %935, align 4
  %936 = add i64 %926, 1
  br label %925

937:                                              ; preds = %925
  %938 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, 0
  %939 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, 1
  %940 = insertvalue { ptr, ptr, i64 } poison, ptr %938, 0
  %941 = insertvalue { ptr, ptr, i64 } %940, ptr %939, 1
  %942 = insertvalue { ptr, ptr, i64 } %941, i64 0, 2
  %943 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, 2
  %944 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, 3, 0
  %945 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, 4, 0
  %946 = extractvalue { ptr, ptr, i64 } %942, 0
  %947 = extractvalue { ptr, ptr, i64 } %942, 1
  %948 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %946, 0
  %949 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %948, ptr %947, 1
  %950 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %949, i64 0, 2
  %951 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %950, i64 672, 3, 0
  %952 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %951, i64 1, 4, 0
  %953 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %952, i64 1, 3, 1
  %954 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %953, i64 1, 4, 1
  %955 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %954, i64 1, 3, 2
  %956 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %955, i64 1, 4, 2
  br label %957

957:                                              ; preds = %1001, %937
  %958 = phi i64 [ %1002, %1001 ], [ 0, %937 ]
  %959 = icmp slt i64 %958, 10
  br i1 %959, label %960, label %1003

960:                                              ; preds = %957
  br label %961

961:                                              ; preds = %999, %960
  %962 = phi i64 [ %1000, %999 ], [ 0, %960 ]
  %963 = icmp slt i64 %962, 672
  br i1 %963, label %964, label %1001

964:                                              ; preds = %961
  br label %965

965:                                              ; preds = %997, %964
  %966 = phi i64 [ %998, %997 ], [ 0, %964 ]
  %967 = icmp slt i64 %966, 112
  br i1 %967, label %968, label %999

968:                                              ; preds = %965
  br label %969

969:                                              ; preds = %972, %968
  %970 = phi i64 [ %996, %972 ], [ 0, %968 ]
  %971 = icmp slt i64 %970, 112
  br i1 %971, label %972, label %997

972:                                              ; preds = %969
  %973 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %974 = mul nuw nsw i64 %958, 8429568
  %975 = mul nuw nsw i64 %962, 12544
  %976 = add nuw nsw i64 %974, %975
  %977 = mul nuw nsw i64 %966, 112
  %978 = add nuw nsw i64 %976, %977
  %979 = add nuw nsw i64 %978, %970
  %980 = getelementptr inbounds nuw float, ptr %973, i64 %979
  %981 = load float, ptr %980, align 4
  %982 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %956, 1
  %983 = add nuw nsw i64 %962, 0
  %984 = add nuw nsw i64 %983, 0
  %985 = getelementptr inbounds nuw float, ptr %982, i64 %984
  %986 = load float, ptr %985, align 4
  %987 = fsub float %981, %986
  %988 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %989 = mul nuw nsw i64 %958, 8429568
  %990 = mul nuw nsw i64 %962, 12544
  %991 = add nuw nsw i64 %989, %990
  %992 = mul nuw nsw i64 %966, 112
  %993 = add nuw nsw i64 %991, %992
  %994 = add nuw nsw i64 %993, %970
  %995 = getelementptr inbounds nuw float, ptr %988, i64 %994
  store float %987, ptr %995, align 4
  %996 = add i64 %970, 1
  br label %969

997:                                              ; preds = %969
  %998 = add i64 %966, 1
  br label %965

999:                                              ; preds = %965
  %1000 = add i64 %962, 1
  br label %961

1001:                                             ; preds = %961
  %1002 = add i64 %958, 1
  br label %957

1003:                                             ; preds = %957
  br label %1004

1004:                                             ; preds = %1048, %1003
  %1005 = phi i64 [ %1049, %1048 ], [ 0, %1003 ]
  %1006 = icmp slt i64 %1005, 10
  br i1 %1006, label %1007, label %1050

1007:                                             ; preds = %1004
  br label %1008

1008:                                             ; preds = %1046, %1007
  %1009 = phi i64 [ %1047, %1046 ], [ 0, %1007 ]
  %1010 = icmp slt i64 %1009, 672
  br i1 %1010, label %1011, label %1048

1011:                                             ; preds = %1008
  br label %1012

1012:                                             ; preds = %1044, %1011
  %1013 = phi i64 [ %1045, %1044 ], [ 0, %1011 ]
  %1014 = icmp slt i64 %1013, 112
  br i1 %1014, label %1015, label %1046

1015:                                             ; preds = %1012
  br label %1016

1016:                                             ; preds = %1019, %1015
  %1017 = phi i64 [ %1043, %1019 ], [ 0, %1015 ]
  %1018 = icmp slt i64 %1017, 112
  br i1 %1018, label %1019, label %1044

1019:                                             ; preds = %1016
  %1020 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1021 = mul nuw nsw i64 %1005, 8429568
  %1022 = mul nuw nsw i64 %1009, 12544
  %1023 = add nuw nsw i64 %1021, %1022
  %1024 = mul nuw nsw i64 %1013, 112
  %1025 = add nuw nsw i64 %1023, %1024
  %1026 = add nuw nsw i64 %1025, %1017
  %1027 = getelementptr inbounds nuw float, ptr %1020, i64 %1026
  %1028 = load float, ptr %1027, align 4
  %1029 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %392, 1
  %1030 = add nuw nsw i64 %1009, 0
  %1031 = add nuw nsw i64 %1030, 0
  %1032 = getelementptr inbounds nuw float, ptr %1029, i64 %1031
  %1033 = load float, ptr %1032, align 4
  %1034 = fmul float %1028, %1033
  %1035 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1036 = mul nuw nsw i64 %1005, 8429568
  %1037 = mul nuw nsw i64 %1009, 12544
  %1038 = add nuw nsw i64 %1036, %1037
  %1039 = mul nuw nsw i64 %1013, 112
  %1040 = add nuw nsw i64 %1038, %1039
  %1041 = add nuw nsw i64 %1040, %1017
  %1042 = getelementptr inbounds nuw float, ptr %1035, i64 %1041
  store float %1034, ptr %1042, align 4
  %1043 = add i64 %1017, 1
  br label %1016

1044:                                             ; preds = %1016
  %1045 = add i64 %1013, 1
  br label %1012

1046:                                             ; preds = %1012
  %1047 = add i64 %1009, 1
  br label %1008

1048:                                             ; preds = %1008
  %1049 = add i64 %1005, 1
  br label %1004

1050:                                             ; preds = %1004
  %1051 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, 0
  %1052 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, 1
  %1053 = insertvalue { ptr, ptr, i64 } poison, ptr %1051, 0
  %1054 = insertvalue { ptr, ptr, i64 } %1053, ptr %1052, 1
  %1055 = insertvalue { ptr, ptr, i64 } %1054, i64 0, 2
  %1056 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, 2
  %1057 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, 3, 0
  %1058 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, 4, 0
  %1059 = extractvalue { ptr, ptr, i64 } %1055, 0
  %1060 = extractvalue { ptr, ptr, i64 } %1055, 1
  %1061 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %1059, 0
  %1062 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1061, ptr %1060, 1
  %1063 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1062, i64 0, 2
  %1064 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1063, i64 672, 3, 0
  %1065 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1064, i64 1, 4, 0
  %1066 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1065, i64 1, 3, 1
  %1067 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1066, i64 1, 4, 1
  %1068 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1067, i64 1, 3, 2
  %1069 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1068, i64 1, 4, 2
  br label %1070

1070:                                             ; preds = %1114, %1050
  %1071 = phi i64 [ %1115, %1114 ], [ 0, %1050 ]
  %1072 = icmp slt i64 %1071, 10
  br i1 %1072, label %1073, label %1116

1073:                                             ; preds = %1070
  br label %1074

1074:                                             ; preds = %1112, %1073
  %1075 = phi i64 [ %1113, %1112 ], [ 0, %1073 ]
  %1076 = icmp slt i64 %1075, 672
  br i1 %1076, label %1077, label %1114

1077:                                             ; preds = %1074
  br label %1078

1078:                                             ; preds = %1110, %1077
  %1079 = phi i64 [ %1111, %1110 ], [ 0, %1077 ]
  %1080 = icmp slt i64 %1079, 112
  br i1 %1080, label %1081, label %1112

1081:                                             ; preds = %1078
  br label %1082

1082:                                             ; preds = %1085, %1081
  %1083 = phi i64 [ %1109, %1085 ], [ 0, %1081 ]
  %1084 = icmp slt i64 %1083, 112
  br i1 %1084, label %1085, label %1110

1085:                                             ; preds = %1082
  %1086 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1087 = mul nuw nsw i64 %1071, 8429568
  %1088 = mul nuw nsw i64 %1075, 12544
  %1089 = add nuw nsw i64 %1087, %1088
  %1090 = mul nuw nsw i64 %1079, 112
  %1091 = add nuw nsw i64 %1089, %1090
  %1092 = add nuw nsw i64 %1091, %1083
  %1093 = getelementptr inbounds nuw float, ptr %1086, i64 %1092
  %1094 = load float, ptr %1093, align 4
  %1095 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1069, 1
  %1096 = add nuw nsw i64 %1075, 0
  %1097 = add nuw nsw i64 %1096, 0
  %1098 = getelementptr inbounds nuw float, ptr %1095, i64 %1097
  %1099 = load float, ptr %1098, align 4
  %1100 = fmul float %1094, %1099
  %1101 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1102 = mul nuw nsw i64 %1071, 8429568
  %1103 = mul nuw nsw i64 %1075, 12544
  %1104 = add nuw nsw i64 %1102, %1103
  %1105 = mul nuw nsw i64 %1079, 112
  %1106 = add nuw nsw i64 %1104, %1105
  %1107 = add nuw nsw i64 %1106, %1083
  %1108 = getelementptr inbounds nuw float, ptr %1101, i64 %1107
  store float %1100, ptr %1108, align 4
  %1109 = add i64 %1083, 1
  br label %1082

1110:                                             ; preds = %1082
  %1111 = add i64 %1079, 1
  br label %1078

1112:                                             ; preds = %1078
  %1113 = add i64 %1075, 1
  br label %1074

1114:                                             ; preds = %1074
  %1115 = add i64 %1071, 1
  br label %1070

1116:                                             ; preds = %1070
  %1117 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 0
  %1118 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 1
  %1119 = insertvalue { ptr, ptr, i64 } poison, ptr %1117, 0
  %1120 = insertvalue { ptr, ptr, i64 } %1119, ptr %1118, 1
  %1121 = insertvalue { ptr, ptr, i64 } %1120, i64 0, 2
  %1122 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 2
  %1123 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 3, 0
  %1124 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 4, 0
  %1125 = extractvalue { ptr, ptr, i64 } %1121, 0
  %1126 = extractvalue { ptr, ptr, i64 } %1121, 1
  %1127 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %1125, 0
  %1128 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1127, ptr %1126, 1
  %1129 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1128, i64 0, 2
  %1130 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1129, i64 672, 3, 0
  %1131 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1130, i64 1, 4, 0
  %1132 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1131, i64 1, 3, 1
  %1133 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1132, i64 1, 4, 1
  %1134 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1133, i64 1, 3, 2
  %1135 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1134, i64 1, 4, 2
  br label %1136

1136:                                             ; preds = %1180, %1116
  %1137 = phi i64 [ %1181, %1180 ], [ 0, %1116 ]
  %1138 = icmp slt i64 %1137, 10
  br i1 %1138, label %1139, label %1182

1139:                                             ; preds = %1136
  br label %1140

1140:                                             ; preds = %1178, %1139
  %1141 = phi i64 [ %1179, %1178 ], [ 0, %1139 ]
  %1142 = icmp slt i64 %1141, 672
  br i1 %1142, label %1143, label %1180

1143:                                             ; preds = %1140
  br label %1144

1144:                                             ; preds = %1176, %1143
  %1145 = phi i64 [ %1177, %1176 ], [ 0, %1143 ]
  %1146 = icmp slt i64 %1145, 112
  br i1 %1146, label %1147, label %1178

1147:                                             ; preds = %1144
  br label %1148

1148:                                             ; preds = %1151, %1147
  %1149 = phi i64 [ %1175, %1151 ], [ 0, %1147 ]
  %1150 = icmp slt i64 %1149, 112
  br i1 %1150, label %1151, label %1176

1151:                                             ; preds = %1148
  %1152 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1153 = mul nuw nsw i64 %1137, 8429568
  %1154 = mul nuw nsw i64 %1141, 12544
  %1155 = add nuw nsw i64 %1153, %1154
  %1156 = mul nuw nsw i64 %1145, 112
  %1157 = add nuw nsw i64 %1155, %1156
  %1158 = add nuw nsw i64 %1157, %1149
  %1159 = getelementptr inbounds nuw float, ptr %1152, i64 %1158
  %1160 = load float, ptr %1159, align 4
  %1161 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1135, 1
  %1162 = add nuw nsw i64 %1141, 0
  %1163 = add nuw nsw i64 %1162, 0
  %1164 = getelementptr inbounds nuw float, ptr %1161, i64 %1163
  %1165 = load float, ptr %1164, align 4
  %1166 = fadd float %1160, %1165
  %1167 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1168 = mul nuw nsw i64 %1137, 8429568
  %1169 = mul nuw nsw i64 %1141, 12544
  %1170 = add nuw nsw i64 %1168, %1169
  %1171 = mul nuw nsw i64 %1145, 112
  %1172 = add nuw nsw i64 %1170, %1171
  %1173 = add nuw nsw i64 %1172, %1149
  %1174 = getelementptr inbounds nuw float, ptr %1167, i64 %1173
  store float %1166, ptr %1174, align 4
  %1175 = add i64 %1149, 1
  br label %1148

1176:                                             ; preds = %1148
  %1177 = add i64 %1145, 1
  br label %1144

1178:                                             ; preds = %1144
  %1179 = add i64 %1141, 1
  br label %1140

1180:                                             ; preds = %1140
  %1181 = add i64 %1137, 1
  br label %1136

1182:                                             ; preds = %1136
  br label %1183

1183:                                             ; preds = %1223, %1182
  %1184 = phi i64 [ %1224, %1223 ], [ 0, %1182 ]
  %1185 = icmp slt i64 %1184, 10
  br i1 %1185, label %1186, label %1225

1186:                                             ; preds = %1183
  br label %1187

1187:                                             ; preds = %1221, %1186
  %1188 = phi i64 [ %1222, %1221 ], [ 0, %1186 ]
  %1189 = icmp slt i64 %1188, 672
  br i1 %1189, label %1190, label %1223

1190:                                             ; preds = %1187
  br label %1191

1191:                                             ; preds = %1219, %1190
  %1192 = phi i64 [ %1220, %1219 ], [ 0, %1190 ]
  %1193 = icmp slt i64 %1192, 112
  br i1 %1193, label %1194, label %1221

1194:                                             ; preds = %1191
  br label %1195

1195:                                             ; preds = %1198, %1194
  %1196 = phi i64 [ %1218, %1198 ], [ 0, %1194 ]
  %1197 = icmp slt i64 %1196, 112
  br i1 %1197, label %1198, label %1219

1198:                                             ; preds = %1195
  %1199 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1200 = mul nuw nsw i64 %1184, 8429568
  %1201 = mul nuw nsw i64 %1188, 12544
  %1202 = add nuw nsw i64 %1200, %1201
  %1203 = mul nuw nsw i64 %1192, 112
  %1204 = add nuw nsw i64 %1202, %1203
  %1205 = add nuw nsw i64 %1204, %1196
  %1206 = getelementptr inbounds nuw float, ptr %1199, i64 %1205
  %1207 = load float, ptr %1206, align 4
  %1208 = fcmp ogt float %1207, 0.000000e+00
  %1209 = select i1 %1208, float %1207, float 0.000000e+00
  %1210 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1211 = mul nuw nsw i64 %1184, 8429568
  %1212 = mul nuw nsw i64 %1188, 12544
  %1213 = add nuw nsw i64 %1211, %1212
  %1214 = mul nuw nsw i64 %1192, 112
  %1215 = add nuw nsw i64 %1213, %1214
  %1216 = add nuw nsw i64 %1215, %1196
  %1217 = getelementptr inbounds nuw float, ptr %1210, i64 %1216
  store float %1209, ptr %1217, align 4
  %1218 = add i64 %1196, 1
  br label %1195

1219:                                             ; preds = %1195
  %1220 = add i64 %1192, 1
  br label %1191

1221:                                             ; preds = %1191
  %1222 = add i64 %1188, 1
  br label %1187

1223:                                             ; preds = %1187
  %1224 = add i64 %1184, 1
  br label %1183

1225:                                             ; preds = %1183
  br label %1226

1226:                                             ; preds = %1266, %1225
  %1227 = phi i64 [ %1267, %1266 ], [ 0, %1225 ]
  %1228 = icmp slt i64 %1227, 10
  br i1 %1228, label %1229, label %1268

1229:                                             ; preds = %1226
  br label %1230

1230:                                             ; preds = %1264, %1229
  %1231 = phi i64 [ %1265, %1264 ], [ 0, %1229 ]
  %1232 = icmp slt i64 %1231, 672
  br i1 %1232, label %1233, label %1266

1233:                                             ; preds = %1230
  br label %1234

1234:                                             ; preds = %1262, %1233
  %1235 = phi i64 [ %1263, %1262 ], [ 0, %1233 ]
  %1236 = icmp slt i64 %1235, 112
  br i1 %1236, label %1237, label %1264

1237:                                             ; preds = %1234
  br label %1238

1238:                                             ; preds = %1241, %1237
  %1239 = phi i64 [ %1261, %1241 ], [ 0, %1237 ]
  %1240 = icmp slt i64 %1239, 112
  br i1 %1240, label %1241, label %1262

1241:                                             ; preds = %1238
  %1242 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1243 = mul nuw nsw i64 %1227, 8429568
  %1244 = mul nuw nsw i64 %1231, 12544
  %1245 = add nuw nsw i64 %1243, %1244
  %1246 = mul nuw nsw i64 %1235, 112
  %1247 = add nuw nsw i64 %1245, %1246
  %1248 = add nuw nsw i64 %1247, %1239
  %1249 = getelementptr inbounds nuw float, ptr %1242, i64 %1248
  %1250 = load float, ptr %1249, align 4
  %1251 = fcmp olt float 6.000000e+00, %1250
  %1252 = select i1 %1251, float 6.000000e+00, float %1250
  %1253 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1254 = mul nuw nsw i64 %1227, 8429568
  %1255 = mul nuw nsw i64 %1231, 12544
  %1256 = add nuw nsw i64 %1254, %1255
  %1257 = mul nuw nsw i64 %1235, 112
  %1258 = add nuw nsw i64 %1256, %1257
  %1259 = add nuw nsw i64 %1258, %1239
  %1260 = getelementptr inbounds nuw float, ptr %1253, i64 %1259
  store float %1252, ptr %1260, align 4
  %1261 = add i64 %1239, 1
  br label %1238

1262:                                             ; preds = %1238
  %1263 = add i64 %1235, 1
  br label %1234

1264:                                             ; preds = %1234
  %1265 = add i64 %1231, 1
  br label %1230

1266:                                             ; preds = %1230
  %1267 = add i64 %1227, 1
  br label %1226

1268:                                             ; preds = %1226
  %1269 = call ptr @aligned_alloc(i64 64, i64 96337920)
  %1270 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1269, 0
  %1271 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1270, ptr %1269, 1
  %1272 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1271, i64 0, 2
  %1273 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1272, i64 10, 3, 0
  %1274 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1273, i64 192, 3, 1
  %1275 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1274, i64 112, 3, 2
  %1276 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1275, i64 112, 3, 3
  %1277 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1276, i64 2408448, 4, 0
  %1278 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1277, i64 12544, 4, 1
  %1279 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1278, i64 112, 4, 2
  %1280 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1279, i64 1, 4, 3
  br label %1281

1281:                                             ; preds = %1310, %1268
  %1282 = phi i64 [ %1311, %1310 ], [ 0, %1268 ]
  %1283 = icmp slt i64 %1282, 10
  br i1 %1283, label %1284, label %1312

1284:                                             ; preds = %1281
  br label %1285

1285:                                             ; preds = %1308, %1284
  %1286 = phi i64 [ %1309, %1308 ], [ 0, %1284 ]
  %1287 = icmp slt i64 %1286, 192
  br i1 %1287, label %1288, label %1310

1288:                                             ; preds = %1285
  br label %1289

1289:                                             ; preds = %1306, %1288
  %1290 = phi i64 [ %1307, %1306 ], [ 0, %1288 ]
  %1291 = icmp slt i64 %1290, 112
  br i1 %1291, label %1292, label %1308

1292:                                             ; preds = %1289
  br label %1293

1293:                                             ; preds = %1296, %1292
  %1294 = phi i64 [ %1305, %1296 ], [ 0, %1292 ]
  %1295 = icmp slt i64 %1294, 112
  br i1 %1295, label %1296, label %1306

1296:                                             ; preds = %1293
  %1297 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1298 = mul nuw nsw i64 %1282, 2408448
  %1299 = mul nuw nsw i64 %1286, 12544
  %1300 = add nuw nsw i64 %1298, %1299
  %1301 = mul nuw nsw i64 %1290, 112
  %1302 = add nuw nsw i64 %1300, %1301
  %1303 = add nuw nsw i64 %1302, %1294
  %1304 = getelementptr inbounds nuw float, ptr %1297, i64 %1303
  store float 0.000000e+00, ptr %1304, align 4
  %1305 = add i64 %1294, 1
  br label %1293

1306:                                             ; preds = %1293
  %1307 = add i64 %1290, 1
  br label %1289

1308:                                             ; preds = %1289
  %1309 = add i64 %1286, 1
  br label %1285

1310:                                             ; preds = %1285
  %1311 = add i64 %1282, 1
  br label %1281

1312:                                             ; preds = %1281
  br label %1313

1313:                                             ; preds = %1389, %1312
  %1314 = phi i64 [ %1390, %1389 ], [ 0, %1312 ]
  %1315 = icmp slt i64 %1314, 10
  br i1 %1315, label %1316, label %1391

1316:                                             ; preds = %1313
  br label %1317

1317:                                             ; preds = %1387, %1316
  %1318 = phi i64 [ %1388, %1387 ], [ 0, %1316 ]
  %1319 = icmp slt i64 %1318, 192
  br i1 %1319, label %1320, label %1389

1320:                                             ; preds = %1317
  br label %1321

1321:                                             ; preds = %1385, %1320
  %1322 = phi i64 [ %1386, %1385 ], [ 0, %1320 ]
  %1323 = icmp slt i64 %1322, 112
  br i1 %1323, label %1324, label %1387

1324:                                             ; preds = %1321
  br label %1325

1325:                                             ; preds = %1383, %1324
  %1326 = phi i64 [ %1384, %1383 ], [ 0, %1324 ]
  %1327 = icmp slt i64 %1326, 672
  br i1 %1327, label %1328, label %1385

1328:                                             ; preds = %1325
  br label %1329

1329:                                             ; preds = %1381, %1328
  %1330 = phi i64 [ %1382, %1381 ], [ 0, %1328 ]
  %1331 = icmp slt i64 %1330, 1
  br i1 %1331, label %1332, label %1383

1332:                                             ; preds = %1329
  br label %1333

1333:                                             ; preds = %1379, %1332
  %1334 = phi i64 [ %1380, %1379 ], [ 0, %1332 ]
  %1335 = icmp slt i64 %1334, 1
  br i1 %1335, label %1336, label %1381

1336:                                             ; preds = %1333
  br label %1337

1337:                                             ; preds = %1340, %1336
  %1338 = phi i64 [ %1378, %1340 ], [ 0, %1336 ]
  %1339 = icmp slt i64 %1338, 112
  br i1 %1339, label %1340, label %1379

1340:                                             ; preds = %1337
  %1341 = add i64 %1322, %1330
  %1342 = add i64 %1334, %1338
  %1343 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 1
  %1344 = mul nuw nsw i64 %1314, 8429568
  %1345 = mul nuw nsw i64 %1326, 12544
  %1346 = add nuw nsw i64 %1344, %1345
  %1347 = mul nuw nsw i64 %1341, 112
  %1348 = add nuw nsw i64 %1346, %1347
  %1349 = add nuw nsw i64 %1348, %1342
  %1350 = getelementptr inbounds nuw float, ptr %1343, i64 %1349
  %1351 = load float, ptr %1350, align 4
  %1352 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %155, 1
  %1353 = mul nuw nsw i64 %1318, 672
  %1354 = add nuw nsw i64 %1353, %1326
  %1355 = add nuw nsw i64 %1354, %1330
  %1356 = add nuw nsw i64 %1355, %1334
  %1357 = getelementptr inbounds nuw float, ptr %1352, i64 %1356
  %1358 = load float, ptr %1357, align 4
  %1359 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1360 = mul nuw nsw i64 %1314, 2408448
  %1361 = mul nuw nsw i64 %1318, 12544
  %1362 = add nuw nsw i64 %1360, %1361
  %1363 = mul nuw nsw i64 %1322, 112
  %1364 = add nuw nsw i64 %1362, %1363
  %1365 = add nuw nsw i64 %1364, %1338
  %1366 = getelementptr inbounds nuw float, ptr %1359, i64 %1365
  %1367 = load float, ptr %1366, align 4
  %1368 = fmul float %1351, %1358
  %1369 = fadd float %1367, %1368
  %1370 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1371 = mul nuw nsw i64 %1314, 2408448
  %1372 = mul nuw nsw i64 %1318, 12544
  %1373 = add nuw nsw i64 %1371, %1372
  %1374 = mul nuw nsw i64 %1322, 112
  %1375 = add nuw nsw i64 %1373, %1374
  %1376 = add nuw nsw i64 %1375, %1338
  %1377 = getelementptr inbounds nuw float, ptr %1370, i64 %1376
  store float %1369, ptr %1377, align 4
  %1378 = add i64 %1338, 1
  br label %1337

1379:                                             ; preds = %1337
  %1380 = add i64 %1334, 1
  br label %1333

1381:                                             ; preds = %1333
  %1382 = add i64 %1330, 1
  br label %1329

1383:                                             ; preds = %1329
  %1384 = add i64 %1326, 1
  br label %1325

1385:                                             ; preds = %1325
  %1386 = add i64 %1322, 1
  br label %1321

1387:                                             ; preds = %1321
  %1388 = add i64 %1318, 1
  br label %1317

1389:                                             ; preds = %1317
  %1390 = add i64 %1314, 1
  br label %1313

1391:                                             ; preds = %1313
  %1392 = call ptr @aligned_alloc(i64 64, i64 768)
  %1393 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %1392, 0
  %1394 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1393, ptr %1392, 1
  %1395 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1394, i64 0, 2
  %1396 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1395, i64 192, 3, 0
  %1397 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1396, i64 1, 4, 0
  br label %1398

1398:                                             ; preds = %1401, %1391
  %1399 = phi i64 [ %1408, %1401 ], [ 0, %1391 ]
  %1400 = icmp slt i64 %1399, 192
  br i1 %1400, label %1401, label %1409

1401:                                             ; preds = %1398
  %1402 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, 1
  %1403 = getelementptr inbounds nuw float, ptr %1402, i64 %1399
  %1404 = load float, ptr %1403, align 4
  %1405 = fadd float %1404, f0x3727C5AC
  %1406 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1397, 1
  %1407 = getelementptr inbounds nuw float, ptr %1406, i64 %1399
  store float %1405, ptr %1407, align 4
  %1408 = add i64 %1399, 1
  br label %1398

1409:                                             ; preds = %1398
  br label %1410

1410:                                             ; preds = %1413, %1409
  %1411 = phi i64 [ %1421, %1413 ], [ 0, %1409 ]
  %1412 = icmp slt i64 %1411, 192
  br i1 %1412, label %1413, label %1422

1413:                                             ; preds = %1410
  %1414 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1397, 1
  %1415 = getelementptr inbounds nuw float, ptr %1414, i64 %1411
  %1416 = load float, ptr %1415, align 4
  %1417 = call float @llvm.sqrt.f32(float %1416)
  %1418 = fdiv float 1.000000e+00, %1417
  %1419 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1397, 1
  %1420 = getelementptr inbounds nuw float, ptr %1419, i64 %1411
  store float %1418, ptr %1420, align 4
  %1421 = add i64 %1411, 1
  br label %1410

1422:                                             ; preds = %1410
  %1423 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, 0
  %1424 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, 1
  %1425 = insertvalue { ptr, ptr, i64 } poison, ptr %1423, 0
  %1426 = insertvalue { ptr, ptr, i64 } %1425, ptr %1424, 1
  %1427 = insertvalue { ptr, ptr, i64 } %1426, i64 0, 2
  %1428 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, 2
  %1429 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, 3, 0
  %1430 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, 4, 0
  %1431 = extractvalue { ptr, ptr, i64 } %1427, 0
  %1432 = extractvalue { ptr, ptr, i64 } %1427, 1
  %1433 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %1431, 0
  %1434 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1433, ptr %1432, 1
  %1435 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1434, i64 0, 2
  %1436 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1435, i64 192, 3, 0
  %1437 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1436, i64 1, 4, 0
  %1438 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1437, i64 1, 3, 1
  %1439 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1438, i64 1, 4, 1
  %1440 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1439, i64 1, 3, 2
  %1441 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1440, i64 1, 4, 2
  %1442 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1397, 0
  %1443 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1397, 1
  %1444 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %1442, 0
  %1445 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1444, ptr %1443, 1
  %1446 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1445, i64 0, 2
  %1447 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1446, i64 192, 3, 0
  %1448 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1447, i64 1, 4, 0
  %1449 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1448, i64 1, 3, 1
  %1450 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1449, i64 1, 4, 1
  %1451 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1450, i64 1, 3, 2
  %1452 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1451, i64 1, 4, 2
  br label %1453

1453:                                             ; preds = %1497, %1422
  %1454 = phi i64 [ %1498, %1497 ], [ 0, %1422 ]
  %1455 = icmp slt i64 %1454, 10
  br i1 %1455, label %1456, label %1499

1456:                                             ; preds = %1453
  br label %1457

1457:                                             ; preds = %1495, %1456
  %1458 = phi i64 [ %1496, %1495 ], [ 0, %1456 ]
  %1459 = icmp slt i64 %1458, 192
  br i1 %1459, label %1460, label %1497

1460:                                             ; preds = %1457
  br label %1461

1461:                                             ; preds = %1493, %1460
  %1462 = phi i64 [ %1494, %1493 ], [ 0, %1460 ]
  %1463 = icmp slt i64 %1462, 112
  br i1 %1463, label %1464, label %1495

1464:                                             ; preds = %1461
  br label %1465

1465:                                             ; preds = %1468, %1464
  %1466 = phi i64 [ %1492, %1468 ], [ 0, %1464 ]
  %1467 = icmp slt i64 %1466, 112
  br i1 %1467, label %1468, label %1493

1468:                                             ; preds = %1465
  %1469 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1470 = mul nuw nsw i64 %1454, 2408448
  %1471 = mul nuw nsw i64 %1458, 12544
  %1472 = add nuw nsw i64 %1470, %1471
  %1473 = mul nuw nsw i64 %1462, 112
  %1474 = add nuw nsw i64 %1472, %1473
  %1475 = add nuw nsw i64 %1474, %1466
  %1476 = getelementptr inbounds nuw float, ptr %1469, i64 %1475
  %1477 = load float, ptr %1476, align 4
  %1478 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1441, 1
  %1479 = add nuw nsw i64 %1458, 0
  %1480 = add nuw nsw i64 %1479, 0
  %1481 = getelementptr inbounds nuw float, ptr %1478, i64 %1480
  %1482 = load float, ptr %1481, align 4
  %1483 = fsub float %1477, %1482
  %1484 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1485 = mul nuw nsw i64 %1454, 2408448
  %1486 = mul nuw nsw i64 %1458, 12544
  %1487 = add nuw nsw i64 %1485, %1486
  %1488 = mul nuw nsw i64 %1462, 112
  %1489 = add nuw nsw i64 %1487, %1488
  %1490 = add nuw nsw i64 %1489, %1466
  %1491 = getelementptr inbounds nuw float, ptr %1484, i64 %1490
  store float %1483, ptr %1491, align 4
  %1492 = add i64 %1466, 1
  br label %1465

1493:                                             ; preds = %1465
  %1494 = add i64 %1462, 1
  br label %1461

1495:                                             ; preds = %1461
  %1496 = add i64 %1458, 1
  br label %1457

1497:                                             ; preds = %1457
  %1498 = add i64 %1454, 1
  br label %1453

1499:                                             ; preds = %1453
  br label %1500

1500:                                             ; preds = %1544, %1499
  %1501 = phi i64 [ %1545, %1544 ], [ 0, %1499 ]
  %1502 = icmp slt i64 %1501, 10
  br i1 %1502, label %1503, label %1546

1503:                                             ; preds = %1500
  br label %1504

1504:                                             ; preds = %1542, %1503
  %1505 = phi i64 [ %1543, %1542 ], [ 0, %1503 ]
  %1506 = icmp slt i64 %1505, 192
  br i1 %1506, label %1507, label %1544

1507:                                             ; preds = %1504
  br label %1508

1508:                                             ; preds = %1540, %1507
  %1509 = phi i64 [ %1541, %1540 ], [ 0, %1507 ]
  %1510 = icmp slt i64 %1509, 112
  br i1 %1510, label %1511, label %1542

1511:                                             ; preds = %1508
  br label %1512

1512:                                             ; preds = %1515, %1511
  %1513 = phi i64 [ %1539, %1515 ], [ 0, %1511 ]
  %1514 = icmp slt i64 %1513, 112
  br i1 %1514, label %1515, label %1540

1515:                                             ; preds = %1512
  %1516 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1517 = mul nuw nsw i64 %1501, 2408448
  %1518 = mul nuw nsw i64 %1505, 12544
  %1519 = add nuw nsw i64 %1517, %1518
  %1520 = mul nuw nsw i64 %1509, 112
  %1521 = add nuw nsw i64 %1519, %1520
  %1522 = add nuw nsw i64 %1521, %1513
  %1523 = getelementptr inbounds nuw float, ptr %1516, i64 %1522
  %1524 = load float, ptr %1523, align 4
  %1525 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1452, 1
  %1526 = add nuw nsw i64 %1505, 0
  %1527 = add nuw nsw i64 %1526, 0
  %1528 = getelementptr inbounds nuw float, ptr %1525, i64 %1527
  %1529 = load float, ptr %1528, align 4
  %1530 = fmul float %1524, %1529
  %1531 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1532 = mul nuw nsw i64 %1501, 2408448
  %1533 = mul nuw nsw i64 %1505, 12544
  %1534 = add nuw nsw i64 %1532, %1533
  %1535 = mul nuw nsw i64 %1509, 112
  %1536 = add nuw nsw i64 %1534, %1535
  %1537 = add nuw nsw i64 %1536, %1513
  %1538 = getelementptr inbounds nuw float, ptr %1531, i64 %1537
  store float %1530, ptr %1538, align 4
  %1539 = add i64 %1513, 1
  br label %1512

1540:                                             ; preds = %1512
  %1541 = add i64 %1509, 1
  br label %1508

1542:                                             ; preds = %1508
  %1543 = add i64 %1505, 1
  br label %1504

1544:                                             ; preds = %1504
  %1545 = add i64 %1501, 1
  br label %1500

1546:                                             ; preds = %1500
  %1547 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, 0
  %1548 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, 1
  %1549 = insertvalue { ptr, ptr, i64 } poison, ptr %1547, 0
  %1550 = insertvalue { ptr, ptr, i64 } %1549, ptr %1548, 1
  %1551 = insertvalue { ptr, ptr, i64 } %1550, i64 0, 2
  %1552 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, 2
  %1553 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, 3, 0
  %1554 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, 4, 0
  %1555 = extractvalue { ptr, ptr, i64 } %1551, 0
  %1556 = extractvalue { ptr, ptr, i64 } %1551, 1
  %1557 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %1555, 0
  %1558 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1557, ptr %1556, 1
  %1559 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1558, i64 0, 2
  %1560 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1559, i64 192, 3, 0
  %1561 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1560, i64 1, 4, 0
  %1562 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1561, i64 1, 3, 1
  %1563 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1562, i64 1, 4, 1
  %1564 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1563, i64 1, 3, 2
  %1565 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1564, i64 1, 4, 2
  br label %1566

1566:                                             ; preds = %1610, %1546
  %1567 = phi i64 [ %1611, %1610 ], [ 0, %1546 ]
  %1568 = icmp slt i64 %1567, 10
  br i1 %1568, label %1569, label %1612

1569:                                             ; preds = %1566
  br label %1570

1570:                                             ; preds = %1608, %1569
  %1571 = phi i64 [ %1609, %1608 ], [ 0, %1569 ]
  %1572 = icmp slt i64 %1571, 192
  br i1 %1572, label %1573, label %1610

1573:                                             ; preds = %1570
  br label %1574

1574:                                             ; preds = %1606, %1573
  %1575 = phi i64 [ %1607, %1606 ], [ 0, %1573 ]
  %1576 = icmp slt i64 %1575, 112
  br i1 %1576, label %1577, label %1608

1577:                                             ; preds = %1574
  br label %1578

1578:                                             ; preds = %1581, %1577
  %1579 = phi i64 [ %1605, %1581 ], [ 0, %1577 ]
  %1580 = icmp slt i64 %1579, 112
  br i1 %1580, label %1581, label %1606

1581:                                             ; preds = %1578
  %1582 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1583 = mul nuw nsw i64 %1567, 2408448
  %1584 = mul nuw nsw i64 %1571, 12544
  %1585 = add nuw nsw i64 %1583, %1584
  %1586 = mul nuw nsw i64 %1575, 112
  %1587 = add nuw nsw i64 %1585, %1586
  %1588 = add nuw nsw i64 %1587, %1579
  %1589 = getelementptr inbounds nuw float, ptr %1582, i64 %1588
  %1590 = load float, ptr %1589, align 4
  %1591 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1565, 1
  %1592 = add nuw nsw i64 %1571, 0
  %1593 = add nuw nsw i64 %1592, 0
  %1594 = getelementptr inbounds nuw float, ptr %1591, i64 %1593
  %1595 = load float, ptr %1594, align 4
  %1596 = fmul float %1590, %1595
  %1597 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1598 = mul nuw nsw i64 %1567, 2408448
  %1599 = mul nuw nsw i64 %1571, 12544
  %1600 = add nuw nsw i64 %1598, %1599
  %1601 = mul nuw nsw i64 %1575, 112
  %1602 = add nuw nsw i64 %1600, %1601
  %1603 = add nuw nsw i64 %1602, %1579
  %1604 = getelementptr inbounds nuw float, ptr %1597, i64 %1603
  store float %1596, ptr %1604, align 4
  %1605 = add i64 %1579, 1
  br label %1578

1606:                                             ; preds = %1578
  %1607 = add i64 %1575, 1
  br label %1574

1608:                                             ; preds = %1574
  %1609 = add i64 %1571, 1
  br label %1570

1610:                                             ; preds = %1570
  %1611 = add i64 %1567, 1
  br label %1566

1612:                                             ; preds = %1566
  %1613 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, 0
  %1614 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, 1
  %1615 = insertvalue { ptr, ptr, i64 } poison, ptr %1613, 0
  %1616 = insertvalue { ptr, ptr, i64 } %1615, ptr %1614, 1
  %1617 = insertvalue { ptr, ptr, i64 } %1616, i64 0, 2
  %1618 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, 2
  %1619 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, 3, 0
  %1620 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, 4, 0
  %1621 = extractvalue { ptr, ptr, i64 } %1617, 0
  %1622 = extractvalue { ptr, ptr, i64 } %1617, 1
  %1623 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %1621, 0
  %1624 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1623, ptr %1622, 1
  %1625 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1624, i64 0, 2
  %1626 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1625, i64 192, 3, 0
  %1627 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1626, i64 1, 4, 0
  %1628 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1627, i64 1, 3, 1
  %1629 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1628, i64 1, 4, 1
  %1630 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1629, i64 1, 3, 2
  %1631 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1630, i64 1, 4, 2
  br label %1632

1632:                                             ; preds = %1676, %1612
  %1633 = phi i64 [ %1677, %1676 ], [ 0, %1612 ]
  %1634 = icmp slt i64 %1633, 10
  br i1 %1634, label %1635, label %1678

1635:                                             ; preds = %1632
  br label %1636

1636:                                             ; preds = %1674, %1635
  %1637 = phi i64 [ %1675, %1674 ], [ 0, %1635 ]
  %1638 = icmp slt i64 %1637, 192
  br i1 %1638, label %1639, label %1676

1639:                                             ; preds = %1636
  br label %1640

1640:                                             ; preds = %1672, %1639
  %1641 = phi i64 [ %1673, %1672 ], [ 0, %1639 ]
  %1642 = icmp slt i64 %1641, 112
  br i1 %1642, label %1643, label %1674

1643:                                             ; preds = %1640
  br label %1644

1644:                                             ; preds = %1647, %1643
  %1645 = phi i64 [ %1671, %1647 ], [ 0, %1643 ]
  %1646 = icmp slt i64 %1645, 112
  br i1 %1646, label %1647, label %1672

1647:                                             ; preds = %1644
  %1648 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1649 = mul nuw nsw i64 %1633, 2408448
  %1650 = mul nuw nsw i64 %1637, 12544
  %1651 = add nuw nsw i64 %1649, %1650
  %1652 = mul nuw nsw i64 %1641, 112
  %1653 = add nuw nsw i64 %1651, %1652
  %1654 = add nuw nsw i64 %1653, %1645
  %1655 = getelementptr inbounds nuw float, ptr %1648, i64 %1654
  %1656 = load float, ptr %1655, align 4
  %1657 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %1631, 1
  %1658 = add nuw nsw i64 %1637, 0
  %1659 = add nuw nsw i64 %1658, 0
  %1660 = getelementptr inbounds nuw float, ptr %1657, i64 %1659
  %1661 = load float, ptr %1660, align 4
  %1662 = fadd float %1656, %1661
  %1663 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280, 1
  %1664 = mul nuw nsw i64 %1633, 2408448
  %1665 = mul nuw nsw i64 %1637, 12544
  %1666 = add nuw nsw i64 %1664, %1665
  %1667 = mul nuw nsw i64 %1641, 112
  %1668 = add nuw nsw i64 %1666, %1667
  %1669 = add nuw nsw i64 %1668, %1645
  %1670 = getelementptr inbounds nuw float, ptr %1663, i64 %1669
  store float %1662, ptr %1670, align 4
  %1671 = add i64 %1645, 1
  br label %1644

1672:                                             ; preds = %1644
  %1673 = add i64 %1641, 1
  br label %1640

1674:                                             ; preds = %1640
  %1675 = add i64 %1637, 1
  br label %1636

1676:                                             ; preds = %1636
  %1677 = add i64 %1633, 1
  br label %1632

1678:                                             ; preds = %1632
  %1679 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, 0
  call void @free(ptr %1679)
  %1680 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %337, 0
  call void @free(ptr %1680)
  %1681 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %716, 0
  call void @free(ptr %1681)
  %1682 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %780, 0
  call void @free(ptr %1682)
  %1683 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1397, 0
  call void @free(ptr %1683)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %1280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
