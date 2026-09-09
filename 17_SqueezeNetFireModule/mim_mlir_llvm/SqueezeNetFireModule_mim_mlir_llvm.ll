; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @SqueezeNetFireModule(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, ptr %30, ptr %31, i64 %32, i64 %33, i64 %34, ptr %35, ptr %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45, ptr %46, ptr %47, i64 %48, i64 %49, i64 %50) {
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %46, 0
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, ptr %47, 1
  %54 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, i64 %48, 2
  %55 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %54, i64 %49, 3, 0
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %55, i64 %50, 4, 0
  %57 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %35, 0
  %58 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %57, ptr %36, 1
  %59 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %58, i64 %37, 2
  %60 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %59, i64 %38, 3, 0
  %61 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %60, i64 %42, 4, 0
  %62 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %61, i64 %39, 3, 1
  %63 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %62, i64 %43, 4, 1
  %64 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %63, i64 %40, 3, 2
  %65 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %64, i64 %44, 4, 2
  %66 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %65, i64 %41, 3, 3
  %67 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %66, i64 %45, 4, 3
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %30, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, ptr %31, 1
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 %32, 2
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 %33, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 %34, 4, 0
  %73 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %23, 0
  %74 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %73, ptr %24, 1
  %75 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, i64 %25, 2
  %76 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, i64 %26, 3, 0
  %77 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %76, i64 %28, 4, 0
  %78 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %77, i64 %27, 3, 1
  %79 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %78, i64 %29, 4, 1
  %80 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %12, 0
  %81 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %80, ptr %13, 1
  %82 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %81, i64 %14, 2
  %83 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %82, i64 %15, 3, 0
  %84 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %83, i64 %19, 4, 0
  %85 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %84, i64 %16, 3, 1
  %86 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %85, i64 %20, 4, 1
  %87 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %86, i64 %17, 3, 2
  %88 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %87, i64 %21, 4, 2
  %89 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %88, i64 %18, 3, 3
  %90 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %89, i64 %22, 4, 3
  %91 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %7, 0
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %91, ptr %8, 1
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, i64 %9, 2
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 %10, 3, 0
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 %11, 4, 0
  %96 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %0, 0
  %97 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %96, ptr %1, 1
  %98 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %97, i64 %2, 2
  %99 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %98, i64 %3, 3, 0
  %100 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %99, i64 %5, 4, 0
  %101 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %100, i64 %4, 3, 1
  %102 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %101, i64 %6, 4, 1
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, 0
  %104 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, 1
  %105 = insertvalue { ptr, ptr, i64 } poison, ptr %103, 0
  %106 = insertvalue { ptr, ptr, i64 } %105, ptr %104, 1
  %107 = insertvalue { ptr, ptr, i64 } %106, i64 0, 2
  %108 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, 2
  %109 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, 3, 0
  %110 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, 3, 1
  %111 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, 4, 0
  %112 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, 4, 1
  %113 = extractvalue { ptr, ptr, i64 } %107, 0
  %114 = extractvalue { ptr, ptr, i64 } %107, 1
  %115 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %113, 0
  %116 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %115, ptr %114, 1
  %117 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %116, i64 0, 2
  %118 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %117, i64 6, 3, 0
  %119 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %118, i64 3, 4, 0
  %120 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %119, i64 3, 3, 1
  %121 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %120, i64 1, 4, 1
  %122 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %121, i64 1, 3, 2
  %123 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %122, i64 1, 4, 2
  %124 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %123, i64 1, 3, 3
  %125 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %124, i64 1, 4, 3
  %126 = call ptr @aligned_alloc(i64 64, i64 201326592)
  %127 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %126, 0
  %128 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %127, ptr %126, 1
  %129 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %128, i64 0, 2
  %130 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %129, i64 128, 3, 0
  %131 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %130, i64 6, 3, 1
  %132 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %131, i64 256, 3, 2
  %133 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %132, i64 1, 3, 3
  %134 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %133, i64 256, 3, 4
  %135 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %134, i64 393216, 4, 0
  %136 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %135, i64 65536, 4, 1
  %137 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %136, i64 256, 4, 2
  %138 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %137, i64 256, 4, 3
  %139 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %138, i64 1, 4, 4
  br label %140

140:                                              ; preds = %177, %51
  %141 = phi i64 [ %178, %177 ], [ 0, %51 ]
  %142 = icmp slt i64 %141, 128
  br i1 %142, label %143, label %179

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %175, %143
  %145 = phi i64 [ %176, %175 ], [ 0, %143 ]
  %146 = icmp slt i64 %145, 6
  br i1 %146, label %147, label %177

147:                                              ; preds = %144
  br label %148

148:                                              ; preds = %173, %147
  %149 = phi i64 [ %174, %173 ], [ 0, %147 ]
  %150 = icmp slt i64 %149, 256
  br i1 %150, label %151, label %175

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %171, %151
  %153 = phi i64 [ %172, %171 ], [ 0, %151 ]
  %154 = icmp slt i64 %153, 1
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %159, %155
  %157 = phi i64 [ %170, %159 ], [ 0, %155 ]
  %158 = icmp slt i64 %157, 256
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 1
  %161 = mul nuw nsw i64 %141, 393216
  %162 = mul nuw nsw i64 %145, 65536
  %163 = add nuw nsw i64 %161, %162
  %164 = mul nuw nsw i64 %149, 256
  %165 = add nuw nsw i64 %163, %164
  %166 = mul nuw nsw i64 %153, 256
  %167 = add nuw nsw i64 %165, %166
  %168 = add nuw nsw i64 %167, %157
  %169 = getelementptr inbounds nuw float, ptr %160, i64 %168
  store float 0.000000e+00, ptr %169, align 4
  %170 = add i64 %157, 1
  br label %156

171:                                              ; preds = %156
  %172 = add i64 %153, 1
  br label %152

173:                                              ; preds = %152
  %174 = add i64 %149, 1
  br label %148

175:                                              ; preds = %148
  %176 = add i64 %145, 1
  br label %144

177:                                              ; preds = %144
  %178 = add i64 %141, 1
  br label %140

179:                                              ; preds = %140
  %180 = call ptr @aligned_alloc(i64 64, i64 1024)
  %181 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %180, 0
  %182 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %181, ptr %180, 1
  %183 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %182, i64 0, 2
  %184 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %183, i64 256, 3, 0
  %185 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %184, i64 1, 3, 1
  %186 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %185, i64 1, 4, 0
  %187 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %186, i64 1, 4, 1
  br label %188

188:                                              ; preds = %275, %179
  %189 = phi i64 [ %276, %275 ], [ 0, %179 ]
  %190 = icmp slt i64 %189, 128
  br i1 %190, label %191, label %277

191:                                              ; preds = %188
  br label %192

192:                                              ; preds = %273, %191
  %193 = phi i64 [ %274, %273 ], [ 0, %191 ]
  %194 = icmp slt i64 %193, 6
  br i1 %194, label %195, label %275

195:                                              ; preds = %192
  br label %196

196:                                              ; preds = %271, %195
  %197 = phi i64 [ %272, %271 ], [ 0, %195 ]
  %198 = icmp slt i64 %197, 256
  br i1 %198, label %199, label %273

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %269, %199
  %201 = phi i64 [ %270, %269 ], [ 0, %199 ]
  %202 = icmp slt i64 %201, 1
  br i1 %202, label %203, label %271

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %267, %203
  %205 = phi i64 [ %268, %267 ], [ 0, %203 ]
  %206 = icmp slt i64 %205, 3
  br i1 %206, label %207, label %269

207:                                              ; preds = %204
  br label %208

208:                                              ; preds = %265, %207
  %209 = phi i64 [ %266, %265 ], [ 0, %207 ]
  %210 = icmp slt i64 %209, 1
  br i1 %210, label %211, label %267

211:                                              ; preds = %208
  br label %212

212:                                              ; preds = %263, %211
  %213 = phi i64 [ %264, %263 ], [ 0, %211 ]
  %214 = icmp slt i64 %213, 1
  br i1 %214, label %215, label %265

215:                                              ; preds = %212
  br label %216

216:                                              ; preds = %219, %215
  %217 = phi i64 [ %262, %219 ], [ 0, %215 ]
  %218 = icmp slt i64 %217, 256
  br i1 %218, label %219, label %263

219:                                              ; preds = %216
  %220 = add i64 %197, %201
  %221 = add i64 %220, %209
  %222 = add i64 %213, %217
  %223 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %90, 1
  %224 = mul nuw nsw i64 %189, 196608
  %225 = mul nuw nsw i64 %205, 65536
  %226 = add nuw nsw i64 %224, %225
  %227 = mul nuw nsw i64 %221, 256
  %228 = add nuw nsw i64 %226, %227
  %229 = add nuw nsw i64 %228, %222
  %230 = getelementptr inbounds nuw float, ptr %223, i64 %229
  %231 = load float, ptr %230, align 4
  %232 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %125, 1
  %233 = mul nuw nsw i64 %193, 3
  %234 = add nuw nsw i64 %233, %205
  %235 = add nuw nsw i64 %234, %209
  %236 = add nuw nsw i64 %235, %213
  %237 = getelementptr inbounds nuw float, ptr %232, i64 %236
  %238 = load float, ptr %237, align 4
  %239 = add i64 %197, %201
  %240 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 1
  %241 = mul nuw nsw i64 %189, 393216
  %242 = mul nuw nsw i64 %193, 65536
  %243 = add nuw nsw i64 %241, %242
  %244 = mul nuw nsw i64 %239, 256
  %245 = add nuw nsw i64 %243, %244
  %246 = add nuw nsw i64 %245, 0
  %247 = add nuw nsw i64 %246, %217
  %248 = getelementptr inbounds nuw float, ptr %240, i64 %247
  %249 = load float, ptr %248, align 4
  %250 = add i64 %197, %201
  %251 = fmul float %231, %238
  %252 = fadd float %251, %249
  %253 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 1
  %254 = mul nuw nsw i64 %189, 393216
  %255 = mul nuw nsw i64 %193, 65536
  %256 = add nuw nsw i64 %254, %255
  %257 = mul nuw nsw i64 %250, 256
  %258 = add nuw nsw i64 %256, %257
  %259 = add nuw nsw i64 %258, 0
  %260 = add nuw nsw i64 %259, %217
  %261 = getelementptr inbounds nuw float, ptr %253, i64 %260
  store float %252, ptr %261, align 4
  %262 = add i64 %217, 1
  br label %216

263:                                              ; preds = %216
  %264 = add i64 %213, 1
  br label %212

265:                                              ; preds = %212
  %266 = add i64 %209, 1
  br label %208

267:                                              ; preds = %208
  %268 = add i64 %205, 1
  br label %204

269:                                              ; preds = %204
  %270 = add i64 %201, 1
  br label %200

271:                                              ; preds = %200
  %272 = add i64 %197, 1
  br label %196

273:                                              ; preds = %196
  %274 = add i64 %193, 1
  br label %192

275:                                              ; preds = %192
  %276 = add i64 %189, 1
  br label %188

277:                                              ; preds = %188
  br label %278

278:                                              ; preds = %331, %277
  %279 = phi i64 [ %332, %331 ], [ 0, %277 ]
  %280 = icmp slt i64 %279, 128
  br i1 %280, label %281, label %333

281:                                              ; preds = %278
  br label %282

282:                                              ; preds = %329, %281
  %283 = phi i64 [ %330, %329 ], [ 0, %281 ]
  %284 = icmp slt i64 %283, 6
  br i1 %284, label %285, label %331

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %327, %285
  %287 = phi i64 [ %328, %327 ], [ 0, %285 ]
  %288 = icmp slt i64 %287, 256
  br i1 %288, label %289, label %329

289:                                              ; preds = %286
  br label %290

290:                                              ; preds = %325, %289
  %291 = phi i64 [ %326, %325 ], [ 0, %289 ]
  %292 = icmp slt i64 %291, 1
  br i1 %292, label %293, label %327

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %297, %293
  %295 = phi i64 [ %324, %297 ], [ 0, %293 ]
  %296 = icmp slt i64 %295, 256
  br i1 %296, label %297, label %325

297:                                              ; preds = %294
  %298 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 1
  %299 = mul nuw nsw i64 %279, 393216
  %300 = mul nuw nsw i64 %283, 65536
  %301 = add nuw nsw i64 %299, %300
  %302 = mul nuw nsw i64 %287, 256
  %303 = add nuw nsw i64 %301, %302
  %304 = mul nuw nsw i64 %291, 256
  %305 = add nuw nsw i64 %303, %304
  %306 = add nuw nsw i64 %305, %295
  %307 = getelementptr inbounds nuw float, ptr %298, i64 %306
  %308 = load float, ptr %307, align 4
  %309 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, 1
  %310 = getelementptr inbounds nuw float, ptr %309, i64 %283
  %311 = load float, ptr %310, align 4
  %312 = fadd float %308, %311
  %313 = call float @llvm.maxnum.f32(float %312, float 0.000000e+00)
  %314 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 1
  %315 = mul nuw nsw i64 %279, 393216
  %316 = mul nuw nsw i64 %283, 65536
  %317 = add nuw nsw i64 %315, %316
  %318 = mul nuw nsw i64 %287, 256
  %319 = add nuw nsw i64 %317, %318
  %320 = mul nuw nsw i64 %291, 256
  %321 = add nuw nsw i64 %319, %320
  %322 = add nuw nsw i64 %321, %295
  %323 = getelementptr inbounds nuw float, ptr %314, i64 %322
  store float %313, ptr %323, align 4
  %324 = add i64 %295, 1
  br label %294

325:                                              ; preds = %294
  %326 = add i64 %291, 1
  br label %290

327:                                              ; preds = %290
  %328 = add i64 %287, 1
  br label %286

329:                                              ; preds = %286
  %330 = add i64 %283, 1
  br label %282

331:                                              ; preds = %282
  %332 = add i64 %279, 1
  br label %278

333:                                              ; preds = %278
  %334 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 0
  %335 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 1
  %336 = insertvalue { ptr, ptr, i64 } poison, ptr %334, 0
  %337 = insertvalue { ptr, ptr, i64 } %336, ptr %335, 1
  %338 = insertvalue { ptr, ptr, i64 } %337, i64 0, 2
  %339 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 2
  %340 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 3, 0
  %341 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 3, 1
  %342 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 4, 0
  %343 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 4, 1
  %344 = extractvalue { ptr, ptr, i64 } %338, 0
  %345 = extractvalue { ptr, ptr, i64 } %338, 1
  %346 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %344, 0
  %347 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %346, ptr %345, 1
  %348 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %347, i64 0, 2
  %349 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %348, i64 64, 3, 0
  %350 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %349, i64 6, 4, 0
  %351 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %350, i64 6, 3, 1
  %352 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %351, i64 1, 4, 1
  %353 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %352, i64 1, 3, 2
  %354 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %353, i64 1, 4, 2
  %355 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %354, i64 1, 3, 3
  %356 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %355, i64 1, 4, 3
  %357 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %358 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %357, 0
  %359 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %358, ptr %357, 1
  %360 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %359, i64 0, 2
  %361 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %360, i64 128, 3, 0
  %362 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %361, i64 64, 3, 1
  %363 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %362, i64 256, 3, 2
  %364 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %363, i64 1, 3, 3
  %365 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %364, i64 256, 3, 4
  %366 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %365, i64 4194304, 4, 0
  %367 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %366, i64 65536, 4, 1
  %368 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %367, i64 256, 4, 2
  %369 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %368, i64 256, 4, 3
  %370 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %369, i64 1, 4, 4
  %371 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %372 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %371, 0
  %373 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %372, ptr %371, 1
  %374 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %373, i64 0, 2
  %375 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %374, i64 128, 3, 0
  %376 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %375, i64 64, 3, 1
  %377 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %376, i64 256, 3, 2
  %378 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %377, i64 1, 3, 3
  %379 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %378, i64 256, 3, 4
  %380 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %379, i64 4194304, 4, 0
  %381 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %380, i64 65536, 4, 1
  %382 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %381, i64 256, 4, 2
  %383 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %382, i64 256, 4, 3
  %384 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %383, i64 1, 4, 4
  br label %385

385:                                              ; preds = %422, %333
  %386 = phi i64 [ %423, %422 ], [ 0, %333 ]
  %387 = icmp slt i64 %386, 128
  br i1 %387, label %388, label %424

388:                                              ; preds = %385
  br label %389

389:                                              ; preds = %420, %388
  %390 = phi i64 [ %421, %420 ], [ 0, %388 ]
  %391 = icmp slt i64 %390, 64
  br i1 %391, label %392, label %422

392:                                              ; preds = %389
  br label %393

393:                                              ; preds = %418, %392
  %394 = phi i64 [ %419, %418 ], [ 0, %392 ]
  %395 = icmp slt i64 %394, 256
  br i1 %395, label %396, label %420

396:                                              ; preds = %393
  br label %397

397:                                              ; preds = %416, %396
  %398 = phi i64 [ %417, %416 ], [ 0, %396 ]
  %399 = icmp slt i64 %398, 1
  br i1 %399, label %400, label %418

400:                                              ; preds = %397
  br label %401

401:                                              ; preds = %404, %400
  %402 = phi i64 [ %415, %404 ], [ 0, %400 ]
  %403 = icmp slt i64 %402, 256
  br i1 %403, label %404, label %416

404:                                              ; preds = %401
  %405 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 1
  %406 = mul nuw nsw i64 %386, 4194304
  %407 = mul nuw nsw i64 %390, 65536
  %408 = add nuw nsw i64 %406, %407
  %409 = mul nuw nsw i64 %394, 256
  %410 = add nuw nsw i64 %408, %409
  %411 = mul nuw nsw i64 %398, 256
  %412 = add nuw nsw i64 %410, %411
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr inbounds nuw float, ptr %405, i64 %413
  store float 0.000000e+00, ptr %414, align 4
  %415 = add i64 %402, 1
  br label %401

416:                                              ; preds = %401
  %417 = add i64 %398, 1
  br label %397

418:                                              ; preds = %397
  %419 = add i64 %394, 1
  br label %393

420:                                              ; preds = %393
  %421 = add i64 %390, 1
  br label %389

422:                                              ; preds = %389
  %423 = add i64 %386, 1
  br label %385

424:                                              ; preds = %385
  %425 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %426 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %425, 0
  %427 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %426, ptr %425, 1
  %428 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %427, i64 0, 2
  %429 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %428, i64 128, 3, 0
  %430 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %429, i64 64, 3, 1
  %431 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %430, i64 256, 3, 2
  %432 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %431, i64 1, 3, 3
  %433 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %432, i64 256, 3, 4
  %434 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %433, i64 4194304, 4, 0
  %435 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %434, i64 65536, 4, 1
  %436 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %435, i64 256, 4, 2
  %437 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %436, i64 256, 4, 3
  %438 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %437, i64 1, 4, 4
  %439 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 3, 0
  %440 = mul i64 1, %439
  %441 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 3, 1
  %442 = mul i64 %440, %441
  %443 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 3, 2
  %444 = mul i64 %442, %443
  %445 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 3, 3
  %446 = mul i64 %444, %445
  %447 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 3, 4
  %448 = mul i64 %446, %447
  %449 = mul i64 %448, 4
  %450 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 1
  %451 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 2
  %452 = getelementptr float, ptr %450, i64 %451
  %453 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %438, 1
  %454 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %438, 2
  %455 = getelementptr float, ptr %453, i64 %454
  call void @llvm.memcpy.p0.p0.i64(ptr %455, ptr %452, i64 %449, i1 false)
  br label %456

456:                                              ; preds = %544, %424
  %457 = phi i64 [ %545, %544 ], [ 0, %424 ]
  %458 = icmp slt i64 %457, 128
  br i1 %458, label %459, label %546

459:                                              ; preds = %456
  br label %460

460:                                              ; preds = %542, %459
  %461 = phi i64 [ %543, %542 ], [ 0, %459 ]
  %462 = icmp slt i64 %461, 64
  br i1 %462, label %463, label %544

463:                                              ; preds = %460
  br label %464

464:                                              ; preds = %540, %463
  %465 = phi i64 [ %541, %540 ], [ 0, %463 ]
  %466 = icmp slt i64 %465, 256
  br i1 %466, label %467, label %542

467:                                              ; preds = %464
  br label %468

468:                                              ; preds = %538, %467
  %469 = phi i64 [ %539, %538 ], [ 0, %467 ]
  %470 = icmp slt i64 %469, 1
  br i1 %470, label %471, label %540

471:                                              ; preds = %468
  br label %472

472:                                              ; preds = %536, %471
  %473 = phi i64 [ %537, %536 ], [ 0, %471 ]
  %474 = icmp slt i64 %473, 6
  br i1 %474, label %475, label %538

475:                                              ; preds = %472
  br label %476

476:                                              ; preds = %534, %475
  %477 = phi i64 [ %535, %534 ], [ 0, %475 ]
  %478 = icmp slt i64 %477, 1
  br i1 %478, label %479, label %536

479:                                              ; preds = %476
  br label %480

480:                                              ; preds = %532, %479
  %481 = phi i64 [ %533, %532 ], [ 0, %479 ]
  %482 = icmp slt i64 %481, 1
  br i1 %482, label %483, label %534

483:                                              ; preds = %480
  br label %484

484:                                              ; preds = %487, %483
  %485 = phi i64 [ %531, %487 ], [ 0, %483 ]
  %486 = icmp slt i64 %485, 256
  br i1 %486, label %487, label %532

487:                                              ; preds = %484
  %488 = add i64 %465, %469
  %489 = add i64 %488, %477
  %490 = add i64 %481, %485
  %491 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 1
  %492 = mul nuw nsw i64 %457, 393216
  %493 = mul nuw nsw i64 %473, 65536
  %494 = add nuw nsw i64 %492, %493
  %495 = mul nuw nsw i64 %489, 256
  %496 = add nuw nsw i64 %494, %495
  %497 = add nuw nsw i64 %496, 0
  %498 = add nuw nsw i64 %497, %490
  %499 = getelementptr inbounds nuw float, ptr %491, i64 %498
  %500 = load float, ptr %499, align 4
  %501 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %356, 1
  %502 = mul nuw nsw i64 %461, 6
  %503 = add nuw nsw i64 %502, %473
  %504 = add nuw nsw i64 %503, %477
  %505 = add nuw nsw i64 %504, %481
  %506 = getelementptr inbounds nuw float, ptr %501, i64 %505
  %507 = load float, ptr %506, align 4
  %508 = add i64 %465, %469
  %509 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %438, 1
  %510 = mul nuw nsw i64 %457, 4194304
  %511 = mul nuw nsw i64 %461, 65536
  %512 = add nuw nsw i64 %510, %511
  %513 = mul nuw nsw i64 %508, 256
  %514 = add nuw nsw i64 %512, %513
  %515 = add nuw nsw i64 %514, 0
  %516 = add nuw nsw i64 %515, %485
  %517 = getelementptr inbounds nuw float, ptr %509, i64 %516
  %518 = load float, ptr %517, align 4
  %519 = add i64 %465, %469
  %520 = fmul float %500, %507
  %521 = fadd float %520, %518
  %522 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %438, 1
  %523 = mul nuw nsw i64 %457, 4194304
  %524 = mul nuw nsw i64 %461, 65536
  %525 = add nuw nsw i64 %523, %524
  %526 = mul nuw nsw i64 %519, 256
  %527 = add nuw nsw i64 %525, %526
  %528 = add nuw nsw i64 %527, 0
  %529 = add nuw nsw i64 %528, %485
  %530 = getelementptr inbounds nuw float, ptr %522, i64 %529
  store float %521, ptr %530, align 4
  %531 = add i64 %485, 1
  br label %484

532:                                              ; preds = %484
  %533 = add i64 %481, 1
  br label %480

534:                                              ; preds = %480
  %535 = add i64 %477, 1
  br label %476

536:                                              ; preds = %476
  %537 = add i64 %473, 1
  br label %472

538:                                              ; preds = %472
  %539 = add i64 %469, 1
  br label %468

540:                                              ; preds = %468
  %541 = add i64 %465, 1
  br label %464

542:                                              ; preds = %464
  %543 = add i64 %461, 1
  br label %460

544:                                              ; preds = %460
  %545 = add i64 %457, 1
  br label %456

546:                                              ; preds = %456
  br label %547

547:                                              ; preds = %600, %546
  %548 = phi i64 [ %601, %600 ], [ 0, %546 ]
  %549 = icmp slt i64 %548, 128
  br i1 %549, label %550, label %602

550:                                              ; preds = %547
  br label %551

551:                                              ; preds = %598, %550
  %552 = phi i64 [ %599, %598 ], [ 0, %550 ]
  %553 = icmp slt i64 %552, 64
  br i1 %553, label %554, label %600

554:                                              ; preds = %551
  br label %555

555:                                              ; preds = %596, %554
  %556 = phi i64 [ %597, %596 ], [ 0, %554 ]
  %557 = icmp slt i64 %556, 256
  br i1 %557, label %558, label %598

558:                                              ; preds = %555
  br label %559

559:                                              ; preds = %594, %558
  %560 = phi i64 [ %595, %594 ], [ 0, %558 ]
  %561 = icmp slt i64 %560, 1
  br i1 %561, label %562, label %596

562:                                              ; preds = %559
  br label %563

563:                                              ; preds = %566, %562
  %564 = phi i64 [ %593, %566 ], [ 0, %562 ]
  %565 = icmp slt i64 %564, 256
  br i1 %565, label %566, label %594

566:                                              ; preds = %563
  %567 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %438, 1
  %568 = mul nuw nsw i64 %548, 4194304
  %569 = mul nuw nsw i64 %552, 65536
  %570 = add nuw nsw i64 %568, %569
  %571 = mul nuw nsw i64 %556, 256
  %572 = add nuw nsw i64 %570, %571
  %573 = mul nuw nsw i64 %560, 256
  %574 = add nuw nsw i64 %572, %573
  %575 = add nuw nsw i64 %574, %564
  %576 = getelementptr inbounds nuw float, ptr %567, i64 %575
  %577 = load float, ptr %576, align 4
  %578 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, 1
  %579 = getelementptr inbounds nuw float, ptr %578, i64 %552
  %580 = load float, ptr %579, align 4
  %581 = fadd float %577, %580
  %582 = call float @llvm.maxnum.f32(float %581, float 0.000000e+00)
  %583 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %370, 1
  %584 = mul nuw nsw i64 %548, 4194304
  %585 = mul nuw nsw i64 %552, 65536
  %586 = add nuw nsw i64 %584, %585
  %587 = mul nuw nsw i64 %556, 256
  %588 = add nuw nsw i64 %586, %587
  %589 = mul nuw nsw i64 %560, 256
  %590 = add nuw nsw i64 %588, %589
  %591 = add nuw nsw i64 %590, %564
  %592 = getelementptr inbounds nuw float, ptr %583, i64 %591
  store float %582, ptr %592, align 4
  %593 = add i64 %564, 1
  br label %563

594:                                              ; preds = %563
  %595 = add i64 %560, 1
  br label %559

596:                                              ; preds = %559
  %597 = add i64 %556, 1
  br label %555

598:                                              ; preds = %555
  %599 = add i64 %552, 1
  br label %551

600:                                              ; preds = %551
  %601 = add i64 %548, 1
  br label %547

602:                                              ; preds = %547
  %603 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %604 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %603, 0
  %605 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %604, ptr %603, 1
  %606 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %605, i64 0, 2
  %607 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %606, i64 128, 3, 0
  %608 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %607, i64 64, 3, 1
  %609 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %608, i64 256, 3, 2
  %610 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %609, i64 256, 3, 3
  %611 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %610, i64 4194304, 4, 0
  %612 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %611, i64 65536, 4, 1
  %613 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %612, i64 256, 4, 2
  %614 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %613, i64 1, 4, 3
  %615 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %616 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %615, 0
  %617 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %616, ptr %615, 1
  %618 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %617, i64 0, 2
  %619 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %618, i64 128, 3, 0
  %620 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %619, i64 64, 3, 1
  %621 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %620, i64 256, 3, 2
  %622 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %621, i64 256, 3, 3
  %623 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %622, i64 4194304, 4, 0
  %624 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %623, i64 65536, 4, 1
  %625 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %624, i64 256, 4, 2
  %626 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %625, i64 1, 4, 3
  br label %627

627:                                              ; preds = %666, %602
  %628 = phi i64 [ %667, %666 ], [ 0, %602 ]
  %629 = icmp slt i64 %628, 128
  br i1 %629, label %630, label %668

630:                                              ; preds = %627
  br label %631

631:                                              ; preds = %664, %630
  %632 = phi i64 [ %665, %664 ], [ 0, %630 ]
  %633 = icmp slt i64 %632, 64
  br i1 %633, label %634, label %666

634:                                              ; preds = %631
  br label %635

635:                                              ; preds = %662, %634
  %636 = phi i64 [ %663, %662 ], [ 0, %634 ]
  %637 = icmp slt i64 %636, 256
  br i1 %637, label %638, label %664

638:                                              ; preds = %635
  br label %639

639:                                              ; preds = %642, %638
  %640 = phi i64 [ %661, %642 ], [ 0, %638 ]
  %641 = icmp slt i64 %640, 256
  br i1 %641, label %642, label %662

642:                                              ; preds = %639
  %643 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %370, 1
  %644 = mul nuw nsw i64 %628, 4194304
  %645 = mul nuw nsw i64 %632, 65536
  %646 = add nuw nsw i64 %644, %645
  %647 = mul nuw nsw i64 %636, 256
  %648 = add nuw nsw i64 %646, %647
  %649 = add nuw nsw i64 %648, 0
  %650 = add nuw nsw i64 %649, %640
  %651 = getelementptr inbounds nuw float, ptr %643, i64 %650
  %652 = load float, ptr %651, align 4
  %653 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %626, 1
  %654 = mul nuw nsw i64 %628, 4194304
  %655 = mul nuw nsw i64 %632, 65536
  %656 = add nuw nsw i64 %654, %655
  %657 = mul nuw nsw i64 %636, 256
  %658 = add nuw nsw i64 %656, %657
  %659 = add nuw nsw i64 %658, %640
  %660 = getelementptr inbounds nuw float, ptr %653, i64 %659
  store float %652, ptr %660, align 4
  %661 = add i64 %640, 1
  br label %639

662:                                              ; preds = %639
  %663 = add i64 %636, 1
  br label %635

664:                                              ; preds = %635
  %665 = add i64 %632, 1
  br label %631

666:                                              ; preds = %631
  %667 = add i64 %628, 1
  br label %627

668:                                              ; preds = %627
  %669 = call ptr @aligned_alloc(i64 64, i64 201326592)
  %670 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %669, 0
  %671 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %670, ptr %669, 1
  %672 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %671, i64 0, 2
  %673 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %672, i64 128, 3, 0
  %674 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %673, i64 6, 3, 1
  %675 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %674, i64 256, 3, 2
  %676 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %675, i64 256, 3, 3
  %677 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %676, i64 393216, 4, 0
  %678 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %677, i64 65536, 4, 1
  %679 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %678, i64 256, 4, 2
  %680 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %679, i64 1, 4, 3
  br label %681

681:                                              ; preds = %720, %668
  %682 = phi i64 [ %721, %720 ], [ 0, %668 ]
  %683 = icmp slt i64 %682, 128
  br i1 %683, label %684, label %722

684:                                              ; preds = %681
  br label %685

685:                                              ; preds = %718, %684
  %686 = phi i64 [ %719, %718 ], [ 0, %684 ]
  %687 = icmp slt i64 %686, 6
  br i1 %687, label %688, label %720

688:                                              ; preds = %685
  br label %689

689:                                              ; preds = %716, %688
  %690 = phi i64 [ %717, %716 ], [ 0, %688 ]
  %691 = icmp slt i64 %690, 256
  br i1 %691, label %692, label %718

692:                                              ; preds = %689
  br label %693

693:                                              ; preds = %696, %692
  %694 = phi i64 [ %715, %696 ], [ 0, %692 ]
  %695 = icmp slt i64 %694, 256
  br i1 %695, label %696, label %716

696:                                              ; preds = %693
  %697 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 1
  %698 = mul nuw nsw i64 %682, 393216
  %699 = mul nuw nsw i64 %686, 65536
  %700 = add nuw nsw i64 %698, %699
  %701 = mul nuw nsw i64 %690, 256
  %702 = add nuw nsw i64 %700, %701
  %703 = add nuw nsw i64 %702, 0
  %704 = add nuw nsw i64 %703, %694
  %705 = getelementptr inbounds nuw float, ptr %697, i64 %704
  %706 = load float, ptr %705, align 4
  %707 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %680, 1
  %708 = mul nuw nsw i64 %682, 393216
  %709 = mul nuw nsw i64 %686, 65536
  %710 = add nuw nsw i64 %708, %709
  %711 = mul nuw nsw i64 %690, 256
  %712 = add nuw nsw i64 %710, %711
  %713 = add nuw nsw i64 %712, %694
  %714 = getelementptr inbounds nuw float, ptr %707, i64 %713
  store float %706, ptr %714, align 4
  %715 = add i64 %694, 1
  br label %693

716:                                              ; preds = %693
  %717 = add i64 %690, 1
  br label %689

718:                                              ; preds = %689
  %719 = add i64 %686, 1
  br label %685

720:                                              ; preds = %685
  %721 = add i64 %682, 1
  br label %681

722:                                              ; preds = %681
  %723 = call ptr @aligned_alloc(i64 64, i64 204484608)
  %724 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %723, 0
  %725 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %724, ptr %723, 1
  %726 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %725, i64 0, 2
  %727 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %726, i64 128, 3, 0
  %728 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %727, i64 6, 3, 1
  %729 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %728, i64 258, 3, 2
  %730 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %729, i64 258, 3, 3
  %731 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %730, i64 399384, 4, 0
  %732 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %731, i64 66564, 4, 1
  %733 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %732, i64 258, 4, 2
  %734 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %733, i64 1, 4, 3
  br label %735

735:                                              ; preds = %764, %722
  %736 = phi i64 [ %765, %764 ], [ 0, %722 ]
  %737 = icmp slt i64 %736, 128
  br i1 %737, label %738, label %766

738:                                              ; preds = %735
  br label %739

739:                                              ; preds = %762, %738
  %740 = phi i64 [ %763, %762 ], [ 0, %738 ]
  %741 = icmp slt i64 %740, 6
  br i1 %741, label %742, label %764

742:                                              ; preds = %739
  br label %743

743:                                              ; preds = %760, %742
  %744 = phi i64 [ %761, %760 ], [ 0, %742 ]
  %745 = icmp slt i64 %744, 258
  br i1 %745, label %746, label %762

746:                                              ; preds = %743
  br label %747

747:                                              ; preds = %750, %746
  %748 = phi i64 [ %759, %750 ], [ 0, %746 ]
  %749 = icmp slt i64 %748, 258
  br i1 %749, label %750, label %760

750:                                              ; preds = %747
  %751 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %734, 1
  %752 = mul nuw nsw i64 %736, 399384
  %753 = mul nuw nsw i64 %740, 66564
  %754 = add nuw nsw i64 %752, %753
  %755 = mul nuw nsw i64 %744, 258
  %756 = add nuw nsw i64 %754, %755
  %757 = add nuw nsw i64 %756, %748
  %758 = getelementptr inbounds nuw float, ptr %751, i64 %757
  store float 0.000000e+00, ptr %758, align 4
  %759 = add i64 %748, 1
  br label %747

760:                                              ; preds = %747
  %761 = add i64 %744, 1
  br label %743

762:                                              ; preds = %743
  %763 = add i64 %740, 1
  br label %739

764:                                              ; preds = %739
  %765 = add i64 %736, 1
  br label %735

766:                                              ; preds = %735
  %767 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %734, 0
  %768 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %734, 1
  %769 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %767, 0
  %770 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %769, ptr %768, 1
  %771 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %770, i64 259, 2
  %772 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %771, i64 128, 3, 0
  %773 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %772, i64 399384, 4, 0
  %774 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %773, i64 6, 3, 1
  %775 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %774, i64 66564, 4, 1
  %776 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %775, i64 256, 3, 2
  %777 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %776, i64 258, 4, 2
  %778 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %777, i64 256, 3, 3
  %779 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %778, i64 1, 4, 3
  %780 = call ptr @llvm.stacksave.p0()
  %781 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %680, ptr %781, align 8
  %782 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %781, 1
  %783 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %779, ptr %783, align 8
  %784 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %783, 1
  %785 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %782, ptr %785, align 8
  %786 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %784, ptr %786, align 8
  call void @memrefCopy(i64 4, ptr %785, ptr %786)
  call void @llvm.stackrestore.p0(ptr %780)
  br label %787

787:                                              ; preds = %876, %766
  %788 = phi i64 [ %877, %876 ], [ 0, %766 ]
  %789 = icmp slt i64 %788, 128
  br i1 %789, label %790, label %878

790:                                              ; preds = %787
  br label %791

791:                                              ; preds = %874, %790
  %792 = phi i64 [ %875, %874 ], [ 0, %790 ]
  %793 = icmp slt i64 %792, 64
  br i1 %793, label %794, label %876

794:                                              ; preds = %791
  br label %795

795:                                              ; preds = %872, %794
  %796 = phi i64 [ %873, %872 ], [ 0, %794 ]
  %797 = icmp slt i64 %796, 256
  br i1 %797, label %798, label %874

798:                                              ; preds = %795
  br label %799

799:                                              ; preds = %870, %798
  %800 = phi i64 [ %871, %870 ], [ 0, %798 ]
  %801 = icmp slt i64 %800, 1
  br i1 %801, label %802, label %872

802:                                              ; preds = %799
  br label %803

803:                                              ; preds = %868, %802
  %804 = phi i64 [ %869, %868 ], [ 0, %802 ]
  %805 = icmp slt i64 %804, 6
  br i1 %805, label %806, label %870

806:                                              ; preds = %803
  br label %807

807:                                              ; preds = %866, %806
  %808 = phi i64 [ %867, %866 ], [ 0, %806 ]
  %809 = icmp slt i64 %808, 3
  br i1 %809, label %810, label %868

810:                                              ; preds = %807
  br label %811

811:                                              ; preds = %864, %810
  %812 = phi i64 [ %865, %864 ], [ 0, %810 ]
  %813 = icmp slt i64 %812, 3
  br i1 %813, label %814, label %866

814:                                              ; preds = %811
  br label %815

815:                                              ; preds = %818, %814
  %816 = phi i64 [ %863, %818 ], [ 0, %814 ]
  %817 = icmp slt i64 %816, 256
  br i1 %817, label %818, label %864

818:                                              ; preds = %815
  %819 = add i64 %796, %800
  %820 = add i64 %819, %808
  %821 = add i64 %812, %816
  %822 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %734, 1
  %823 = mul nuw nsw i64 %788, 399384
  %824 = mul nuw nsw i64 %804, 66564
  %825 = add nuw nsw i64 %823, %824
  %826 = mul nuw nsw i64 %820, 258
  %827 = add nuw nsw i64 %825, %826
  %828 = add nuw nsw i64 %827, %821
  %829 = getelementptr inbounds nuw float, ptr %822, i64 %828
  %830 = load float, ptr %829, align 4
  %831 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %67, 1
  %832 = mul nuw nsw i64 %792, 54
  %833 = mul nuw nsw i64 %804, 9
  %834 = add nuw nsw i64 %832, %833
  %835 = mul nuw nsw i64 %808, 3
  %836 = add nuw nsw i64 %834, %835
  %837 = add nuw nsw i64 %836, %812
  %838 = getelementptr inbounds nuw float, ptr %831, i64 %837
  %839 = load float, ptr %838, align 4
  %840 = add i64 %796, %800
  %841 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 1
  %842 = mul nuw nsw i64 %788, 4194304
  %843 = mul nuw nsw i64 %792, 65536
  %844 = add nuw nsw i64 %842, %843
  %845 = mul nuw nsw i64 %840, 256
  %846 = add nuw nsw i64 %844, %845
  %847 = add nuw nsw i64 %846, 0
  %848 = add nuw nsw i64 %847, %816
  %849 = getelementptr inbounds nuw float, ptr %841, i64 %848
  %850 = load float, ptr %849, align 4
  %851 = add i64 %796, %800
  %852 = fmul float %830, %839
  %853 = fadd float %852, %850
  %854 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 1
  %855 = mul nuw nsw i64 %788, 4194304
  %856 = mul nuw nsw i64 %792, 65536
  %857 = add nuw nsw i64 %855, %856
  %858 = mul nuw nsw i64 %851, 256
  %859 = add nuw nsw i64 %857, %858
  %860 = add nuw nsw i64 %859, 0
  %861 = add nuw nsw i64 %860, %816
  %862 = getelementptr inbounds nuw float, ptr %854, i64 %861
  store float %853, ptr %862, align 4
  %863 = add i64 %816, 1
  br label %815

864:                                              ; preds = %815
  %865 = add i64 %812, 1
  br label %811

866:                                              ; preds = %811
  %867 = add i64 %808, 1
  br label %807

868:                                              ; preds = %807
  %869 = add i64 %804, 1
  br label %803

870:                                              ; preds = %803
  %871 = add i64 %800, 1
  br label %799

872:                                              ; preds = %799
  %873 = add i64 %796, 1
  br label %795

874:                                              ; preds = %795
  %875 = add i64 %792, 1
  br label %791

876:                                              ; preds = %791
  %877 = add i64 %788, 1
  br label %787

878:                                              ; preds = %787
  br label %879

879:                                              ; preds = %932, %878
  %880 = phi i64 [ %933, %932 ], [ 0, %878 ]
  %881 = icmp slt i64 %880, 128
  br i1 %881, label %882, label %934

882:                                              ; preds = %879
  br label %883

883:                                              ; preds = %930, %882
  %884 = phi i64 [ %931, %930 ], [ 0, %882 ]
  %885 = icmp slt i64 %884, 64
  br i1 %885, label %886, label %932

886:                                              ; preds = %883
  br label %887

887:                                              ; preds = %928, %886
  %888 = phi i64 [ %929, %928 ], [ 0, %886 ]
  %889 = icmp slt i64 %888, 256
  br i1 %889, label %890, label %930

890:                                              ; preds = %887
  br label %891

891:                                              ; preds = %926, %890
  %892 = phi i64 [ %927, %926 ], [ 0, %890 ]
  %893 = icmp slt i64 %892, 1
  br i1 %893, label %894, label %928

894:                                              ; preds = %891
  br label %895

895:                                              ; preds = %898, %894
  %896 = phi i64 [ %925, %898 ], [ 0, %894 ]
  %897 = icmp slt i64 %896, 256
  br i1 %897, label %898, label %926

898:                                              ; preds = %895
  %899 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 1
  %900 = mul nuw nsw i64 %880, 4194304
  %901 = mul nuw nsw i64 %884, 65536
  %902 = add nuw nsw i64 %900, %901
  %903 = mul nuw nsw i64 %888, 256
  %904 = add nuw nsw i64 %902, %903
  %905 = mul nuw nsw i64 %892, 256
  %906 = add nuw nsw i64 %904, %905
  %907 = add nuw nsw i64 %906, %896
  %908 = getelementptr inbounds nuw float, ptr %899, i64 %907
  %909 = load float, ptr %908, align 4
  %910 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, 1
  %911 = getelementptr inbounds nuw float, ptr %910, i64 %884
  %912 = load float, ptr %911, align 4
  %913 = fadd float %909, %912
  %914 = call float @llvm.maxnum.f32(float %913, float 0.000000e+00)
  %915 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %370, 1
  %916 = mul nuw nsw i64 %880, 4194304
  %917 = mul nuw nsw i64 %884, 65536
  %918 = add nuw nsw i64 %916, %917
  %919 = mul nuw nsw i64 %888, 256
  %920 = add nuw nsw i64 %918, %919
  %921 = mul nuw nsw i64 %892, 256
  %922 = add nuw nsw i64 %920, %921
  %923 = add nuw nsw i64 %922, %896
  %924 = getelementptr inbounds nuw float, ptr %915, i64 %923
  store float %914, ptr %924, align 4
  %925 = add i64 %896, 1
  br label %895

926:                                              ; preds = %895
  %927 = add i64 %892, 1
  br label %891

928:                                              ; preds = %891
  %929 = add i64 %888, 1
  br label %887

930:                                              ; preds = %887
  %931 = add i64 %884, 1
  br label %883

932:                                              ; preds = %883
  %933 = add i64 %880, 1
  br label %879

934:                                              ; preds = %879
  br label %935

935:                                              ; preds = %974, %934
  %936 = phi i64 [ %975, %974 ], [ 0, %934 ]
  %937 = icmp slt i64 %936, 128
  br i1 %937, label %938, label %976

938:                                              ; preds = %935
  br label %939

939:                                              ; preds = %972, %938
  %940 = phi i64 [ %973, %972 ], [ 0, %938 ]
  %941 = icmp slt i64 %940, 64
  br i1 %941, label %942, label %974

942:                                              ; preds = %939
  br label %943

943:                                              ; preds = %970, %942
  %944 = phi i64 [ %971, %970 ], [ 0, %942 ]
  %945 = icmp slt i64 %944, 256
  br i1 %945, label %946, label %972

946:                                              ; preds = %943
  br label %947

947:                                              ; preds = %950, %946
  %948 = phi i64 [ %969, %950 ], [ 0, %946 ]
  %949 = icmp slt i64 %948, 256
  br i1 %949, label %950, label %970

950:                                              ; preds = %947
  %951 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %370, 1
  %952 = mul nuw nsw i64 %936, 4194304
  %953 = mul nuw nsw i64 %940, 65536
  %954 = add nuw nsw i64 %952, %953
  %955 = mul nuw nsw i64 %944, 256
  %956 = add nuw nsw i64 %954, %955
  %957 = add nuw nsw i64 %956, 0
  %958 = add nuw nsw i64 %957, %948
  %959 = getelementptr inbounds nuw float, ptr %951, i64 %958
  %960 = load float, ptr %959, align 4
  %961 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %614, 1
  %962 = mul nuw nsw i64 %936, 4194304
  %963 = mul nuw nsw i64 %940, 65536
  %964 = add nuw nsw i64 %962, %963
  %965 = mul nuw nsw i64 %944, 256
  %966 = add nuw nsw i64 %964, %965
  %967 = add nuw nsw i64 %966, %948
  %968 = getelementptr inbounds nuw float, ptr %961, i64 %967
  store float %960, ptr %968, align 4
  %969 = add i64 %948, 1
  br label %947

970:                                              ; preds = %947
  %971 = add i64 %944, 1
  br label %943

972:                                              ; preds = %943
  %973 = add i64 %940, 1
  br label %939

974:                                              ; preds = %939
  %975 = add i64 %936, 1
  br label %935

976:                                              ; preds = %935
  %977 = call ptr @aligned_alloc(i64 64, i64 4294967296)
  %978 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %977, 0
  %979 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %978, ptr %977, 1
  %980 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %979, i64 0, 2
  %981 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %980, i64 128, 3, 0
  %982 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %981, i64 128, 3, 1
  %983 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %982, i64 256, 3, 2
  %984 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %983, i64 256, 3, 3
  %985 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %984, i64 8388608, 4, 0
  %986 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %985, i64 65536, 4, 1
  %987 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %986, i64 256, 4, 2
  %988 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %987, i64 1, 4, 3
  %989 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 0
  %990 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 1
  %991 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %989, 0
  %992 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %991, ptr %990, 1
  %993 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %992, i64 0, 2
  %994 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %993, i64 128, 3, 0
  %995 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %994, i64 8388608, 4, 0
  %996 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %995, i64 64, 3, 1
  %997 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %996, i64 65536, 4, 1
  %998 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %997, i64 256, 3, 2
  %999 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %998, i64 256, 4, 2
  %1000 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %999, i64 256, 3, 3
  %1001 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1000, i64 1, 4, 3
  %1002 = call ptr @llvm.stacksave.p0()
  %1003 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %626, ptr %1003, align 8
  %1004 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1003, 1
  %1005 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1001, ptr %1005, align 8
  %1006 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1005, 1
  %1007 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1004, ptr %1007, align 8
  %1008 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1006, ptr %1008, align 8
  call void @memrefCopy(i64 4, ptr %1007, ptr %1008)
  call void @llvm.stackrestore.p0(ptr %1002)
  %1009 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 0
  %1010 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 1
  %1011 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1009, 0
  %1012 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1011, ptr %1010, 1
  %1013 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1012, i64 4194304, 2
  %1014 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1013, i64 128, 3, 0
  %1015 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1014, i64 8388608, 4, 0
  %1016 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1015, i64 64, 3, 1
  %1017 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1016, i64 65536, 4, 1
  %1018 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1017, i64 256, 3, 2
  %1019 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1018, i64 256, 4, 2
  %1020 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1019, i64 256, 3, 3
  %1021 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1020, i64 1, 4, 3
  %1022 = call ptr @llvm.stacksave.p0()
  %1023 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %614, ptr %1023, align 8
  %1024 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1023, 1
  %1025 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1021, ptr %1025, align 8
  %1026 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1025, 1
  %1027 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1024, ptr %1027, align 8
  %1028 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1026, ptr %1028, align 8
  call void @memrefCopy(i64 4, ptr %1027, ptr %1028)
  call void @llvm.stackrestore.p0(ptr %1022)
  %1029 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %139, 0
  call void @free(ptr %1029)
  %1030 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %187, 0
  call void @free(ptr %1030)
  %1031 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %370, 0
  call void @free(ptr %1031)
  %1032 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %384, 0
  call void @free(ptr %1032)
  %1033 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %438, 0
  call void @free(ptr %1033)
  %1034 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %614, 0
  call void @free(ptr %1034)
  %1035 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %626, 0
  call void @free(ptr %1035)
  %1036 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %680, 0
  call void @free(ptr %1036)
  %1037 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %734, 0
  call void @free(ptr %1037)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %988
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
