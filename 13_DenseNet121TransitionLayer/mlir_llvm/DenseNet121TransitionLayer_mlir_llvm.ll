; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @DenseNet121TransitionLayer(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, ptr %16, ptr %17, i64 %18, i64 %19, i64 %20, ptr %21, ptr %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, ptr %32, ptr %33, i64 %34, i64 %35, i64 %36, ptr %37, ptr %38, i64 %39, i64 %40, i64 %41) {
  %43 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %37, 0
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %43, ptr %38, 1
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, i64 %39, 2
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %40, 3, 0
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 %41, 4, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %32, 0
  %49 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, ptr %33, 1
  %50 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %49, i64 %34, 2
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %50, i64 %35, 3, 0
  %52 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %36, 4, 0
  %53 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %21, 0
  %54 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %53, ptr %22, 1
  %55 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %54, i64 %23, 2
  %56 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %55, i64 %24, 3, 0
  %57 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %56, i64 %28, 4, 0
  %58 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %57, i64 %25, 3, 1
  %59 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %58, i64 %29, 4, 1
  %60 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %59, i64 %26, 3, 2
  %61 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %60, i64 %30, 4, 2
  %62 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %61, i64 %27, 3, 3
  %63 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %62, i64 %31, 4, 3
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %16, 0
  %65 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, ptr %17, 1
  %66 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %65, i64 %18, 2
  %67 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %66, i64 %19, 3, 0
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %67, i64 %20, 4, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %11, 0
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, ptr %12, 1
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 %13, 2
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 %14, 3, 0
  %73 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, i64 %15, 4, 0
  %74 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %0, 0
  %75 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %74, ptr %1, 1
  %76 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %75, i64 %2, 2
  %77 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %76, i64 %3, 3, 0
  %78 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %77, i64 %7, 4, 0
  %79 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %78, i64 %4, 3, 1
  %80 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %79, i64 %8, 4, 1
  %81 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %80, i64 %5, 3, 2
  %82 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %81, i64 %9, 4, 2
  %83 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %82, i64 %6, 3, 3
  %84 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %83, i64 %10, 4, 3
  %85 = call ptr @aligned_alloc(i64 64, i64 128)
  %86 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %85, 0
  %87 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %86, ptr %85, 1
  %88 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %87, i64 0, 2
  %89 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %88, i64 32, 3, 0
  %90 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %89, i64 1, 4, 0
  br label %91

91:                                               ; preds = %94, %42
  %92 = phi i64 [ %101, %94 ], [ 0, %42 ]
  %93 = icmp slt i64 %92, 32
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, 1
  %96 = getelementptr inbounds nuw float, ptr %95, i64 %92
  %97 = load float, ptr %96, align 4
  %98 = fadd float %97, f0x3727C5AC
  %99 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, 1
  %100 = getelementptr inbounds nuw float, ptr %99, i64 %92
  store float %98, ptr %100, align 4
  %101 = add i64 %92, 1
  br label %91

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %106, %102
  %104 = phi i64 [ %114, %106 ], [ 0, %102 ]
  %105 = icmp slt i64 %104, 32
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, 1
  %108 = getelementptr inbounds nuw float, ptr %107, i64 %104
  %109 = load float, ptr %108, align 4
  %110 = call float @llvm.sqrt.f32(float %109)
  %111 = fdiv float 1.000000e+00, %110
  %112 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, 1
  %113 = getelementptr inbounds nuw float, ptr %112, i64 %104
  store float %111, ptr %113, align 4
  %114 = add i64 %104, 1
  br label %103

115:                                              ; preds = %103
  %116 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 0
  %117 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 1
  %118 = insertvalue { ptr, ptr, i64 } poison, ptr %116, 0
  %119 = insertvalue { ptr, ptr, i64 } %118, ptr %117, 1
  %120 = insertvalue { ptr, ptr, i64 } %119, i64 0, 2
  %121 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 2
  %122 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 3, 0
  %123 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %52, 4, 0
  %124 = extractvalue { ptr, ptr, i64 } %120, 0
  %125 = extractvalue { ptr, ptr, i64 } %120, 1
  %126 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %124, 0
  %127 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %126, ptr %125, 1
  %128 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %127, i64 0, 2
  %129 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %128, i64 32, 3, 0
  %130 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %129, i64 1, 4, 0
  %131 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %130, i64 1, 3, 1
  %132 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %131, i64 1, 4, 1
  %133 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %132, i64 1, 3, 2
  %134 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %133, i64 1, 4, 2
  %135 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, 0
  %136 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, 1
  %137 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %135, 0
  %138 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %137, ptr %136, 1
  %139 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %138, i64 0, 2
  %140 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %139, i64 32, 3, 0
  %141 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %140, i64 1, 4, 0
  %142 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %141, i64 1, 3, 1
  %143 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %142, i64 1, 4, 1
  %144 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %143, i64 1, 3, 2
  %145 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %144, i64 1, 4, 2
  %146 = call ptr @aligned_alloc(i64 64, i64 1073741824)
  %147 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %146, 0
  %148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %147, ptr %146, 1
  %149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %148, i64 0, 2
  %150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %149, i64 128, 3, 0
  %151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %150, i64 32, 3, 1
  %152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %151, i64 256, 3, 2
  %153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %152, i64 256, 3, 3
  %154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %153, i64 2097152, 4, 0
  %155 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, i64 65536, 4, 1
  %156 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %155, i64 256, 4, 2
  %157 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %156, i64 1, 4, 3
  br label %158

158:                                              ; preds = %202, %115
  %159 = phi i64 [ %203, %202 ], [ 0, %115 ]
  %160 = icmp slt i64 %159, 128
  br i1 %160, label %161, label %204

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %200, %161
  %163 = phi i64 [ %201, %200 ], [ 0, %161 ]
  %164 = icmp slt i64 %163, 32
  br i1 %164, label %165, label %202

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %198, %165
  %167 = phi i64 [ %199, %198 ], [ 0, %165 ]
  %168 = icmp slt i64 %167, 256
  br i1 %168, label %169, label %200

169:                                              ; preds = %166
  br label %170

170:                                              ; preds = %173, %169
  %171 = phi i64 [ %197, %173 ], [ 0, %169 ]
  %172 = icmp slt i64 %171, 256
  br i1 %172, label %173, label %198

173:                                              ; preds = %170
  %174 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %84, 1
  %175 = mul nuw nsw i64 %159, 2097152
  %176 = mul nuw nsw i64 %163, 65536
  %177 = add nuw nsw i64 %175, %176
  %178 = mul nuw nsw i64 %167, 256
  %179 = add nuw nsw i64 %177, %178
  %180 = add nuw nsw i64 %179, %171
  %181 = getelementptr inbounds nuw float, ptr %174, i64 %180
  %182 = load float, ptr %181, align 4
  %183 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %134, 1
  %184 = add nuw nsw i64 %163, 0
  %185 = add nuw nsw i64 %184, 0
  %186 = getelementptr inbounds nuw float, ptr %183, i64 %185
  %187 = load float, ptr %186, align 4
  %188 = fsub float %182, %187
  %189 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %190 = mul nuw nsw i64 %159, 2097152
  %191 = mul nuw nsw i64 %163, 65536
  %192 = add nuw nsw i64 %190, %191
  %193 = mul nuw nsw i64 %167, 256
  %194 = add nuw nsw i64 %192, %193
  %195 = add nuw nsw i64 %194, %171
  %196 = getelementptr inbounds nuw float, ptr %189, i64 %195
  store float %188, ptr %196, align 4
  %197 = add i64 %171, 1
  br label %170

198:                                              ; preds = %170
  %199 = add i64 %167, 1
  br label %166

200:                                              ; preds = %166
  %201 = add i64 %163, 1
  br label %162

202:                                              ; preds = %162
  %203 = add i64 %159, 1
  br label %158

204:                                              ; preds = %158
  br label %205

205:                                              ; preds = %249, %204
  %206 = phi i64 [ %250, %249 ], [ 0, %204 ]
  %207 = icmp slt i64 %206, 128
  br i1 %207, label %208, label %251

208:                                              ; preds = %205
  br label %209

209:                                              ; preds = %247, %208
  %210 = phi i64 [ %248, %247 ], [ 0, %208 ]
  %211 = icmp slt i64 %210, 32
  br i1 %211, label %212, label %249

212:                                              ; preds = %209
  br label %213

213:                                              ; preds = %245, %212
  %214 = phi i64 [ %246, %245 ], [ 0, %212 ]
  %215 = icmp slt i64 %214, 256
  br i1 %215, label %216, label %247

216:                                              ; preds = %213
  br label %217

217:                                              ; preds = %220, %216
  %218 = phi i64 [ %244, %220 ], [ 0, %216 ]
  %219 = icmp slt i64 %218, 256
  br i1 %219, label %220, label %245

220:                                              ; preds = %217
  %221 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %222 = mul nuw nsw i64 %206, 2097152
  %223 = mul nuw nsw i64 %210, 65536
  %224 = add nuw nsw i64 %222, %223
  %225 = mul nuw nsw i64 %214, 256
  %226 = add nuw nsw i64 %224, %225
  %227 = add nuw nsw i64 %226, %218
  %228 = getelementptr inbounds nuw float, ptr %221, i64 %227
  %229 = load float, ptr %228, align 4
  %230 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %145, 1
  %231 = add nuw nsw i64 %210, 0
  %232 = add nuw nsw i64 %231, 0
  %233 = getelementptr inbounds nuw float, ptr %230, i64 %232
  %234 = load float, ptr %233, align 4
  %235 = fmul float %229, %234
  %236 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %237 = mul nuw nsw i64 %206, 2097152
  %238 = mul nuw nsw i64 %210, 65536
  %239 = add nuw nsw i64 %237, %238
  %240 = mul nuw nsw i64 %214, 256
  %241 = add nuw nsw i64 %239, %240
  %242 = add nuw nsw i64 %241, %218
  %243 = getelementptr inbounds nuw float, ptr %236, i64 %242
  store float %235, ptr %243, align 4
  %244 = add i64 %218, 1
  br label %217

245:                                              ; preds = %217
  %246 = add i64 %214, 1
  br label %213

247:                                              ; preds = %213
  %248 = add i64 %210, 1
  br label %209

249:                                              ; preds = %209
  %250 = add i64 %206, 1
  br label %205

251:                                              ; preds = %205
  %252 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 0
  %253 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 1
  %254 = insertvalue { ptr, ptr, i64 } poison, ptr %252, 0
  %255 = insertvalue { ptr, ptr, i64 } %254, ptr %253, 1
  %256 = insertvalue { ptr, ptr, i64 } %255, i64 0, 2
  %257 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 2
  %258 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 3, 0
  %259 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %73, 4, 0
  %260 = extractvalue { ptr, ptr, i64 } %256, 0
  %261 = extractvalue { ptr, ptr, i64 } %256, 1
  %262 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %260, 0
  %263 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %262, ptr %261, 1
  %264 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %263, i64 0, 2
  %265 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %264, i64 32, 3, 0
  %266 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %265, i64 1, 4, 0
  %267 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %266, i64 1, 3, 1
  %268 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %267, i64 1, 4, 1
  %269 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %268, i64 1, 3, 2
  %270 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %269, i64 1, 4, 2
  br label %271

271:                                              ; preds = %315, %251
  %272 = phi i64 [ %316, %315 ], [ 0, %251 ]
  %273 = icmp slt i64 %272, 128
  br i1 %273, label %274, label %317

274:                                              ; preds = %271
  br label %275

275:                                              ; preds = %313, %274
  %276 = phi i64 [ %314, %313 ], [ 0, %274 ]
  %277 = icmp slt i64 %276, 32
  br i1 %277, label %278, label %315

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %311, %278
  %280 = phi i64 [ %312, %311 ], [ 0, %278 ]
  %281 = icmp slt i64 %280, 256
  br i1 %281, label %282, label %313

282:                                              ; preds = %279
  br label %283

283:                                              ; preds = %286, %282
  %284 = phi i64 [ %310, %286 ], [ 0, %282 ]
  %285 = icmp slt i64 %284, 256
  br i1 %285, label %286, label %311

286:                                              ; preds = %283
  %287 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %288 = mul nuw nsw i64 %272, 2097152
  %289 = mul nuw nsw i64 %276, 65536
  %290 = add nuw nsw i64 %288, %289
  %291 = mul nuw nsw i64 %280, 256
  %292 = add nuw nsw i64 %290, %291
  %293 = add nuw nsw i64 %292, %284
  %294 = getelementptr inbounds nuw float, ptr %287, i64 %293
  %295 = load float, ptr %294, align 4
  %296 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %270, 1
  %297 = add nuw nsw i64 %276, 0
  %298 = add nuw nsw i64 %297, 0
  %299 = getelementptr inbounds nuw float, ptr %296, i64 %298
  %300 = load float, ptr %299, align 4
  %301 = fmul float %295, %300
  %302 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %303 = mul nuw nsw i64 %272, 2097152
  %304 = mul nuw nsw i64 %276, 65536
  %305 = add nuw nsw i64 %303, %304
  %306 = mul nuw nsw i64 %280, 256
  %307 = add nuw nsw i64 %305, %306
  %308 = add nuw nsw i64 %307, %284
  %309 = getelementptr inbounds nuw float, ptr %302, i64 %308
  store float %301, ptr %309, align 4
  %310 = add i64 %284, 1
  br label %283

311:                                              ; preds = %283
  %312 = add i64 %280, 1
  br label %279

313:                                              ; preds = %279
  %314 = add i64 %276, 1
  br label %275

315:                                              ; preds = %275
  %316 = add i64 %272, 1
  br label %271

317:                                              ; preds = %271
  %318 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 0
  %319 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 1
  %320 = insertvalue { ptr, ptr, i64 } poison, ptr %318, 0
  %321 = insertvalue { ptr, ptr, i64 } %320, ptr %319, 1
  %322 = insertvalue { ptr, ptr, i64 } %321, i64 0, 2
  %323 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 2
  %324 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 3, 0
  %325 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, 4, 0
  %326 = extractvalue { ptr, ptr, i64 } %322, 0
  %327 = extractvalue { ptr, ptr, i64 } %322, 1
  %328 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %326, 0
  %329 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %328, ptr %327, 1
  %330 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %329, i64 0, 2
  %331 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %330, i64 32, 3, 0
  %332 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %331, i64 1, 4, 0
  %333 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %332, i64 1, 3, 1
  %334 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %333, i64 1, 4, 1
  %335 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %334, i64 1, 3, 2
  %336 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %335, i64 1, 4, 2
  br label %337

337:                                              ; preds = %381, %317
  %338 = phi i64 [ %382, %381 ], [ 0, %317 ]
  %339 = icmp slt i64 %338, 128
  br i1 %339, label %340, label %383

340:                                              ; preds = %337
  br label %341

341:                                              ; preds = %379, %340
  %342 = phi i64 [ %380, %379 ], [ 0, %340 ]
  %343 = icmp slt i64 %342, 32
  br i1 %343, label %344, label %381

344:                                              ; preds = %341
  br label %345

345:                                              ; preds = %377, %344
  %346 = phi i64 [ %378, %377 ], [ 0, %344 ]
  %347 = icmp slt i64 %346, 256
  br i1 %347, label %348, label %379

348:                                              ; preds = %345
  br label %349

349:                                              ; preds = %352, %348
  %350 = phi i64 [ %376, %352 ], [ 0, %348 ]
  %351 = icmp slt i64 %350, 256
  br i1 %351, label %352, label %377

352:                                              ; preds = %349
  %353 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %354 = mul nuw nsw i64 %338, 2097152
  %355 = mul nuw nsw i64 %342, 65536
  %356 = add nuw nsw i64 %354, %355
  %357 = mul nuw nsw i64 %346, 256
  %358 = add nuw nsw i64 %356, %357
  %359 = add nuw nsw i64 %358, %350
  %360 = getelementptr inbounds nuw float, ptr %353, i64 %359
  %361 = load float, ptr %360, align 4
  %362 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %336, 1
  %363 = add nuw nsw i64 %342, 0
  %364 = add nuw nsw i64 %363, 0
  %365 = getelementptr inbounds nuw float, ptr %362, i64 %364
  %366 = load float, ptr %365, align 4
  %367 = fadd float %361, %366
  %368 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %369 = mul nuw nsw i64 %338, 2097152
  %370 = mul nuw nsw i64 %342, 65536
  %371 = add nuw nsw i64 %369, %370
  %372 = mul nuw nsw i64 %346, 256
  %373 = add nuw nsw i64 %371, %372
  %374 = add nuw nsw i64 %373, %350
  %375 = getelementptr inbounds nuw float, ptr %368, i64 %374
  store float %367, ptr %375, align 4
  %376 = add i64 %350, 1
  br label %349

377:                                              ; preds = %349
  %378 = add i64 %346, 1
  br label %345

379:                                              ; preds = %345
  %380 = add i64 %342, 1
  br label %341

381:                                              ; preds = %341
  %382 = add i64 %338, 1
  br label %337

383:                                              ; preds = %337
  br label %384

384:                                              ; preds = %424, %383
  %385 = phi i64 [ %425, %424 ], [ 0, %383 ]
  %386 = icmp slt i64 %385, 128
  br i1 %386, label %387, label %426

387:                                              ; preds = %384
  br label %388

388:                                              ; preds = %422, %387
  %389 = phi i64 [ %423, %422 ], [ 0, %387 ]
  %390 = icmp slt i64 %389, 32
  br i1 %390, label %391, label %424

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %420, %391
  %393 = phi i64 [ %421, %420 ], [ 0, %391 ]
  %394 = icmp slt i64 %393, 256
  br i1 %394, label %395, label %422

395:                                              ; preds = %392
  br label %396

396:                                              ; preds = %399, %395
  %397 = phi i64 [ %419, %399 ], [ 0, %395 ]
  %398 = icmp slt i64 %397, 256
  br i1 %398, label %399, label %420

399:                                              ; preds = %396
  %400 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %401 = mul nuw nsw i64 %385, 2097152
  %402 = mul nuw nsw i64 %389, 65536
  %403 = add nuw nsw i64 %401, %402
  %404 = mul nuw nsw i64 %393, 256
  %405 = add nuw nsw i64 %403, %404
  %406 = add nuw nsw i64 %405, %397
  %407 = getelementptr inbounds nuw float, ptr %400, i64 %406
  %408 = load float, ptr %407, align 4
  %409 = fcmp ugt float %408, 0.000000e+00
  %410 = select i1 %409, float %408, float 0.000000e+00
  %411 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %412 = mul nuw nsw i64 %385, 2097152
  %413 = mul nuw nsw i64 %389, 65536
  %414 = add nuw nsw i64 %412, %413
  %415 = mul nuw nsw i64 %393, 256
  %416 = add nuw nsw i64 %414, %415
  %417 = add nuw nsw i64 %416, %397
  %418 = getelementptr inbounds nuw float, ptr %411, i64 %417
  store float %410, ptr %418, align 4
  %419 = add i64 %397, 1
  br label %396

420:                                              ; preds = %396
  %421 = add i64 %393, 1
  br label %392

422:                                              ; preds = %392
  %423 = add i64 %389, 1
  br label %388

424:                                              ; preds = %388
  %425 = add i64 %385, 1
  br label %384

426:                                              ; preds = %384
  %427 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %428 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %427, 0
  %429 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %428, ptr %427, 1
  %430 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %429, i64 0, 2
  %431 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %430, i64 128, 3, 0
  %432 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %431, i64 64, 3, 1
  %433 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %432, i64 256, 3, 2
  %434 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %433, i64 256, 3, 3
  %435 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %434, i64 4194304, 4, 0
  %436 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %435, i64 65536, 4, 1
  %437 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %436, i64 256, 4, 2
  %438 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %437, i64 1, 4, 3
  br label %439

439:                                              ; preds = %468, %426
  %440 = phi i64 [ %469, %468 ], [ 0, %426 ]
  %441 = icmp slt i64 %440, 128
  br i1 %441, label %442, label %470

442:                                              ; preds = %439
  br label %443

443:                                              ; preds = %466, %442
  %444 = phi i64 [ %467, %466 ], [ 0, %442 ]
  %445 = icmp slt i64 %444, 64
  br i1 %445, label %446, label %468

446:                                              ; preds = %443
  br label %447

447:                                              ; preds = %464, %446
  %448 = phi i64 [ %465, %464 ], [ 0, %446 ]
  %449 = icmp slt i64 %448, 256
  br i1 %449, label %450, label %466

450:                                              ; preds = %447
  br label %451

451:                                              ; preds = %454, %450
  %452 = phi i64 [ %463, %454 ], [ 0, %450 ]
  %453 = icmp slt i64 %452, 256
  br i1 %453, label %454, label %464

454:                                              ; preds = %451
  %455 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %438, 1
  %456 = mul nuw nsw i64 %440, 4194304
  %457 = mul nuw nsw i64 %444, 65536
  %458 = add nuw nsw i64 %456, %457
  %459 = mul nuw nsw i64 %448, 256
  %460 = add nuw nsw i64 %458, %459
  %461 = add nuw nsw i64 %460, %452
  %462 = getelementptr inbounds nuw float, ptr %455, i64 %461
  store float 0.000000e+00, ptr %462, align 4
  %463 = add i64 %452, 1
  br label %451

464:                                              ; preds = %451
  %465 = add i64 %448, 1
  br label %447

466:                                              ; preds = %447
  %467 = add i64 %444, 1
  br label %443

468:                                              ; preds = %443
  %469 = add i64 %440, 1
  br label %439

470:                                              ; preds = %439
  br label %471

471:                                              ; preds = %547, %470
  %472 = phi i64 [ %548, %547 ], [ 0, %470 ]
  %473 = icmp slt i64 %472, 128
  br i1 %473, label %474, label %549

474:                                              ; preds = %471
  br label %475

475:                                              ; preds = %545, %474
  %476 = phi i64 [ %546, %545 ], [ 0, %474 ]
  %477 = icmp slt i64 %476, 64
  br i1 %477, label %478, label %547

478:                                              ; preds = %475
  br label %479

479:                                              ; preds = %543, %478
  %480 = phi i64 [ %544, %543 ], [ 0, %478 ]
  %481 = icmp slt i64 %480, 256
  br i1 %481, label %482, label %545

482:                                              ; preds = %479
  br label %483

483:                                              ; preds = %541, %482
  %484 = phi i64 [ %542, %541 ], [ 0, %482 ]
  %485 = icmp slt i64 %484, 32
  br i1 %485, label %486, label %543

486:                                              ; preds = %483
  br label %487

487:                                              ; preds = %539, %486
  %488 = phi i64 [ %540, %539 ], [ 0, %486 ]
  %489 = icmp slt i64 %488, 1
  br i1 %489, label %490, label %541

490:                                              ; preds = %487
  br label %491

491:                                              ; preds = %537, %490
  %492 = phi i64 [ %538, %537 ], [ 0, %490 ]
  %493 = icmp slt i64 %492, 1
  br i1 %493, label %494, label %539

494:                                              ; preds = %491
  br label %495

495:                                              ; preds = %498, %494
  %496 = phi i64 [ %536, %498 ], [ 0, %494 ]
  %497 = icmp slt i64 %496, 256
  br i1 %497, label %498, label %537

498:                                              ; preds = %495
  %499 = add i64 %480, %488
  %500 = add i64 %492, %496
  %501 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 1
  %502 = mul nuw nsw i64 %472, 2097152
  %503 = mul nuw nsw i64 %484, 65536
  %504 = add nuw nsw i64 %502, %503
  %505 = mul nuw nsw i64 %499, 256
  %506 = add nuw nsw i64 %504, %505
  %507 = add nuw nsw i64 %506, %500
  %508 = getelementptr inbounds nuw float, ptr %501, i64 %507
  %509 = load float, ptr %508, align 4
  %510 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %63, 1
  %511 = mul nuw nsw i64 %476, 32
  %512 = add nuw nsw i64 %511, %484
  %513 = add nuw nsw i64 %512, %488
  %514 = add nuw nsw i64 %513, %492
  %515 = getelementptr inbounds nuw float, ptr %510, i64 %514
  %516 = load float, ptr %515, align 4
  %517 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %438, 1
  %518 = mul nuw nsw i64 %472, 4194304
  %519 = mul nuw nsw i64 %476, 65536
  %520 = add nuw nsw i64 %518, %519
  %521 = mul nuw nsw i64 %480, 256
  %522 = add nuw nsw i64 %520, %521
  %523 = add nuw nsw i64 %522, %496
  %524 = getelementptr inbounds nuw float, ptr %517, i64 %523
  %525 = load float, ptr %524, align 4
  %526 = fmul float %509, %516
  %527 = fadd float %525, %526
  %528 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %438, 1
  %529 = mul nuw nsw i64 %472, 4194304
  %530 = mul nuw nsw i64 %476, 65536
  %531 = add nuw nsw i64 %529, %530
  %532 = mul nuw nsw i64 %480, 256
  %533 = add nuw nsw i64 %531, %532
  %534 = add nuw nsw i64 %533, %496
  %535 = getelementptr inbounds nuw float, ptr %528, i64 %534
  store float %527, ptr %535, align 4
  %536 = add i64 %496, 1
  br label %495

537:                                              ; preds = %495
  %538 = add i64 %492, 1
  br label %491

539:                                              ; preds = %491
  %540 = add i64 %488, 1
  br label %487

541:                                              ; preds = %487
  %542 = add i64 %484, 1
  br label %483

543:                                              ; preds = %483
  %544 = add i64 %480, 1
  br label %479

545:                                              ; preds = %479
  %546 = add i64 %476, 1
  br label %475

547:                                              ; preds = %475
  %548 = add i64 %472, 1
  br label %471

549:                                              ; preds = %471
  %550 = call ptr @aligned_alloc(i64 64, i64 536870912)
  %551 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %550, 0
  %552 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %551, ptr %550, 1
  %553 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %552, i64 0, 2
  %554 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %553, i64 128, 3, 0
  %555 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %554, i64 64, 3, 1
  %556 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %555, i64 128, 3, 2
  %557 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %556, i64 128, 3, 3
  %558 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %557, i64 1048576, 4, 0
  %559 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %558, i64 16384, 4, 1
  %560 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %559, i64 128, 4, 2
  %561 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %560, i64 1, 4, 3
  br label %562

562:                                              ; preds = %591, %549
  %563 = phi i64 [ %592, %591 ], [ 0, %549 ]
  %564 = icmp slt i64 %563, 128
  br i1 %564, label %565, label %593

565:                                              ; preds = %562
  br label %566

566:                                              ; preds = %589, %565
  %567 = phi i64 [ %590, %589 ], [ 0, %565 ]
  %568 = icmp slt i64 %567, 64
  br i1 %568, label %569, label %591

569:                                              ; preds = %566
  br label %570

570:                                              ; preds = %587, %569
  %571 = phi i64 [ %588, %587 ], [ 0, %569 ]
  %572 = icmp slt i64 %571, 128
  br i1 %572, label %573, label %589

573:                                              ; preds = %570
  br label %574

574:                                              ; preds = %577, %573
  %575 = phi i64 [ %586, %577 ], [ 0, %573 ]
  %576 = icmp slt i64 %575, 128
  br i1 %576, label %577, label %587

577:                                              ; preds = %574
  %578 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %561, 1
  %579 = mul nuw nsw i64 %563, 1048576
  %580 = mul nuw nsw i64 %567, 16384
  %581 = add nuw nsw i64 %579, %580
  %582 = mul nuw nsw i64 %571, 128
  %583 = add nuw nsw i64 %581, %582
  %584 = add nuw nsw i64 %583, %575
  %585 = getelementptr inbounds nuw float, ptr %578, i64 %584
  store float 0.000000e+00, ptr %585, align 4
  %586 = add i64 %575, 1
  br label %574

587:                                              ; preds = %574
  %588 = add i64 %571, 1
  br label %570

589:                                              ; preds = %570
  %590 = add i64 %567, 1
  br label %566

591:                                              ; preds = %566
  %592 = add i64 %563, 1
  br label %562

593:                                              ; preds = %562
  %594 = call ptr @aligned_alloc(i64 64, i64 64)
  %595 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %594, 0
  %596 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, ptr %594, 1
  %597 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %596, i64 0, 2
  %598 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %597, i64 2, 3, 0
  %599 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %598, i64 2, 3, 1
  %600 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %599, i64 2, 4, 0
  %601 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %600, i64 1, 4, 1
  br label %602

602:                                              ; preds = %666, %593
  %603 = phi i64 [ %667, %666 ], [ 0, %593 ]
  %604 = icmp slt i64 %603, 128
  br i1 %604, label %605, label %668

605:                                              ; preds = %602
  br label %606

606:                                              ; preds = %664, %605
  %607 = phi i64 [ %665, %664 ], [ 0, %605 ]
  %608 = icmp slt i64 %607, 64
  br i1 %608, label %609, label %666

609:                                              ; preds = %606
  br label %610

610:                                              ; preds = %662, %609
  %611 = phi i64 [ %663, %662 ], [ 0, %609 ]
  %612 = icmp slt i64 %611, 128
  br i1 %612, label %613, label %664

613:                                              ; preds = %610
  br label %614

614:                                              ; preds = %660, %613
  %615 = phi i64 [ %661, %660 ], [ 0, %613 ]
  %616 = icmp slt i64 %615, 128
  br i1 %616, label %617, label %662

617:                                              ; preds = %614
  br label %618

618:                                              ; preds = %658, %617
  %619 = phi i64 [ %659, %658 ], [ 0, %617 ]
  %620 = icmp slt i64 %619, 2
  br i1 %620, label %621, label %660

621:                                              ; preds = %618
  br label %622

622:                                              ; preds = %625, %621
  %623 = phi i64 [ %657, %625 ], [ 0, %621 ]
  %624 = icmp slt i64 %623, 2
  br i1 %624, label %625, label %658

625:                                              ; preds = %622
  %626 = mul nsw i64 %611, 2
  %627 = add i64 %626, %619
  %628 = mul nsw i64 %615, 2
  %629 = add i64 %628, %623
  %630 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %438, 1
  %631 = mul nuw nsw i64 %603, 4194304
  %632 = mul nuw nsw i64 %607, 65536
  %633 = add nuw nsw i64 %631, %632
  %634 = mul nuw nsw i64 %627, 256
  %635 = add nuw nsw i64 %633, %634
  %636 = add nuw nsw i64 %635, %629
  %637 = getelementptr inbounds nuw float, ptr %630, i64 %636
  %638 = load float, ptr %637, align 4
  %639 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %561, 1
  %640 = mul nuw nsw i64 %603, 1048576
  %641 = mul nuw nsw i64 %607, 16384
  %642 = add nuw nsw i64 %640, %641
  %643 = mul nuw nsw i64 %611, 128
  %644 = add nuw nsw i64 %642, %643
  %645 = add nuw nsw i64 %644, %615
  %646 = getelementptr inbounds nuw float, ptr %639, i64 %645
  %647 = load float, ptr %646, align 4
  %648 = fadd float %647, %638
  %649 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %561, 1
  %650 = mul nuw nsw i64 %603, 1048576
  %651 = mul nuw nsw i64 %607, 16384
  %652 = add nuw nsw i64 %650, %651
  %653 = mul nuw nsw i64 %611, 128
  %654 = add nuw nsw i64 %652, %653
  %655 = add nuw nsw i64 %654, %615
  %656 = getelementptr inbounds nuw float, ptr %649, i64 %655
  store float %648, ptr %656, align 4
  %657 = add i64 %623, 1
  br label %622

658:                                              ; preds = %622
  %659 = add i64 %619, 1
  br label %618

660:                                              ; preds = %618
  %661 = add i64 %615, 1
  br label %614

662:                                              ; preds = %614
  %663 = add i64 %611, 1
  br label %610

664:                                              ; preds = %610
  %665 = add i64 %607, 1
  br label %606

666:                                              ; preds = %606
  %667 = add i64 %603, 1
  br label %602

668:                                              ; preds = %602
  br label %669

669:                                              ; preds = %708, %668
  %670 = phi i64 [ %709, %708 ], [ 0, %668 ]
  %671 = icmp slt i64 %670, 128
  br i1 %671, label %672, label %710

672:                                              ; preds = %669
  br label %673

673:                                              ; preds = %706, %672
  %674 = phi i64 [ %707, %706 ], [ 0, %672 ]
  %675 = icmp slt i64 %674, 64
  br i1 %675, label %676, label %708

676:                                              ; preds = %673
  br label %677

677:                                              ; preds = %704, %676
  %678 = phi i64 [ %705, %704 ], [ 0, %676 ]
  %679 = icmp slt i64 %678, 128
  br i1 %679, label %680, label %706

680:                                              ; preds = %677
  br label %681

681:                                              ; preds = %684, %680
  %682 = phi i64 [ %703, %684 ], [ 0, %680 ]
  %683 = icmp slt i64 %682, 128
  br i1 %683, label %684, label %704

684:                                              ; preds = %681
  %685 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %561, 1
  %686 = mul nuw nsw i64 %670, 1048576
  %687 = mul nuw nsw i64 %674, 16384
  %688 = add nuw nsw i64 %686, %687
  %689 = mul nuw nsw i64 %678, 128
  %690 = add nuw nsw i64 %688, %689
  %691 = add nuw nsw i64 %690, %682
  %692 = getelementptr inbounds nuw float, ptr %685, i64 %691
  %693 = load float, ptr %692, align 4
  %694 = fdiv float %693, 4.000000e+00
  %695 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %561, 1
  %696 = mul nuw nsw i64 %670, 1048576
  %697 = mul nuw nsw i64 %674, 16384
  %698 = add nuw nsw i64 %696, %697
  %699 = mul nuw nsw i64 %678, 128
  %700 = add nuw nsw i64 %698, %699
  %701 = add nuw nsw i64 %700, %682
  %702 = getelementptr inbounds nuw float, ptr %695, i64 %701
  store float %694, ptr %702, align 4
  %703 = add i64 %682, 1
  br label %681

704:                                              ; preds = %681
  %705 = add i64 %678, 1
  br label %677

706:                                              ; preds = %677
  %707 = add i64 %674, 1
  br label %673

708:                                              ; preds = %673
  %709 = add i64 %670, 1
  br label %669

710:                                              ; preds = %669
  %711 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %90, 0
  call void @free(ptr %711)
  %712 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, 0
  call void @free(ptr %712)
  %713 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %438, 0
  call void @free(ptr %713)
  %714 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %601, 0
  call void @free(ptr %714)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %561
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #0

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
