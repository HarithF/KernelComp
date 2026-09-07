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

170:                                              ; preds = %316, %142
  %171 = phi i64 [ %317, %316 ], [ 0, %142 ]
  %172 = icmp slt i64 %171, 64
  br i1 %172, label %173, label %318

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %314, %173
  %175 = phi i64 [ %315, %314 ], [ 0, %173 ]
  %176 = icmp slt i64 %175, 8192
  br i1 %176, label %177, label %316

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %312, %177
  %179 = phi i64 [ %313, %312 ], [ 0, %177 ]
  %180 = icmp slt i64 %179, 16384
  br i1 %180, label %181, label %314

181:                                              ; preds = %178
  %182 = mul nsw i64 %171, 2
  %183 = mul nsw i64 %175, 4
  %184 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 0
  %185 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 1
  %186 = insertvalue { ptr, ptr, i64 } poison, ptr %184, 0
  %187 = insertvalue { ptr, ptr, i64 } %186, ptr %185, 1
  %188 = insertvalue { ptr, ptr, i64 } %187, i64 0, 2
  %189 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 2
  %190 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 0
  %191 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 1
  %192 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 0
  %193 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 1
  %194 = mul nsw i64 %182, 16384
  %195 = add i64 %194, %179
  %196 = extractvalue { ptr, ptr, i64 } %188, 0
  %197 = extractvalue { ptr, ptr, i64 } %188, 1
  %198 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %196, 0
  %199 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %198, ptr %197, 1
  %200 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %199, i64 %195, 2
  %201 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %200, i64 32, 3, 0
  %202 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %201, i64 16384, 4, 0
  %203 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %202, i64 32, 3, 1
  %204 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, i64 1, 4, 1
  %205 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 0
  %206 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 1
  %207 = insertvalue { ptr, ptr, i64 } poison, ptr %205, 0
  %208 = insertvalue { ptr, ptr, i64 } %207, ptr %206, 1
  %209 = insertvalue { ptr, ptr, i64 } %208, i64 0, 2
  %210 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 2
  %211 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 3, 0
  %212 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 3, 1
  %213 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 4, 0
  %214 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 4, 1
  %215 = mul nsw i64 %183, 16384
  %216 = add i64 %215, %179
  %217 = extractvalue { ptr, ptr, i64 } %209, 0
  %218 = extractvalue { ptr, ptr, i64 } %209, 1
  %219 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %217, 0
  %220 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %219, ptr %218, 1
  %221 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %220, i64 %216, 2
  %222 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, i64 32, 3, 0
  %223 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %222, i64 16384, 4, 0
  %224 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %223, i64 32, 3, 1
  %225 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %224, i64 1, 4, 1
  %226 = mul nsw i64 %171, 65536
  %227 = mul nsw i64 %175, 4
  %228 = add i64 %226, %227
  %229 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 0
  %230 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 1
  %231 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %229, 0
  %232 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %231, ptr %230, 1
  %233 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %232, i64 %228, 2
  %234 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %233, i64 16, 3, 0
  %235 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %234, i64 65536, 4, 0
  %236 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %235, i64 2, 3, 1
  %237 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %236, i64 32768, 4, 1
  %238 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %237, i64 8, 3, 2
  %239 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %238, i64 4, 4, 2
  %240 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %239, i64 4, 3, 3
  %241 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %240, i64 1, 4, 3
  br label %242

242:                                              ; preds = %310, %181
  %243 = phi i64 [ %311, %310 ], [ 0, %181 ]
  %244 = icmp slt i64 %243, 16
  br i1 %244, label %245, label %312

245:                                              ; preds = %242
  br label %246

246:                                              ; preds = %308, %245
  %247 = phi i64 [ %309, %308 ], [ 0, %245 ]
  %248 = icmp slt i64 %247, 8
  br i1 %248, label %249, label %310

249:                                              ; preds = %246
  br label %250

250:                                              ; preds = %306, %249
  %251 = phi i64 [ %307, %306 ], [ 0, %249 ]
  %252 = icmp slt i64 %251, 2
  br i1 %252, label %253, label %308

253:                                              ; preds = %250
  br label %254

254:                                              ; preds = %304, %253
  %255 = phi i64 [ %305, %304 ], [ 0, %253 ]
  %256 = icmp slt i64 %255, 4
  br i1 %256, label %257, label %306

257:                                              ; preds = %254
  br label %258

258:                                              ; preds = %261, %257
  %259 = phi i64 [ %303, %261 ], [ 0, %257 ]
  %260 = icmp slt i64 %259, 32
  br i1 %260, label %261, label %304

261:                                              ; preds = %258
  %262 = mul nsw i64 %243, 2
  %263 = add i64 %262, %251
  %264 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %204, 1
  %265 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %204, 2
  %266 = getelementptr float, ptr %264, i64 %265
  %267 = mul nuw nsw i64 %263, 16384
  %268 = add nuw nsw i64 %267, %259
  %269 = getelementptr inbounds nuw float, ptr %266, i64 %268
  %270 = load float, ptr %269, align 4
  %271 = mul nsw i64 %247, 4
  %272 = add i64 %271, %255
  %273 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %225, 1
  %274 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %225, 2
  %275 = getelementptr float, ptr %273, i64 %274
  %276 = mul nuw nsw i64 %272, 16384
  %277 = add nuw nsw i64 %276, %259
  %278 = getelementptr inbounds nuw float, ptr %275, i64 %277
  %279 = load float, ptr %278, align 4
  %280 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %241, 1
  %281 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %241, 2
  %282 = getelementptr float, ptr %280, i64 %281
  %283 = mul nuw nsw i64 %243, 65536
  %284 = mul nuw nsw i64 %251, 32768
  %285 = add nuw nsw i64 %283, %284
  %286 = mul nuw nsw i64 %247, 4
  %287 = add nuw nsw i64 %285, %286
  %288 = add nuw nsw i64 %287, %255
  %289 = getelementptr inbounds nuw float, ptr %282, i64 %288
  %290 = load float, ptr %289, align 4
  %291 = fmul float %270, %279
  %292 = fadd float %291, %290
  %293 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %241, 1
  %294 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %241, 2
  %295 = getelementptr float, ptr %293, i64 %294
  %296 = mul nuw nsw i64 %243, 65536
  %297 = mul nuw nsw i64 %251, 32768
  %298 = add nuw nsw i64 %296, %297
  %299 = mul nuw nsw i64 %247, 4
  %300 = add nuw nsw i64 %298, %299
  %301 = add nuw nsw i64 %300, %255
  %302 = getelementptr inbounds nuw float, ptr %295, i64 %301
  store float %292, ptr %302, align 4
  %303 = add i64 %259, 1
  br label %258

304:                                              ; preds = %258
  %305 = add i64 %255, 1
  br label %254

306:                                              ; preds = %254
  %307 = add i64 %251, 1
  br label %250

308:                                              ; preds = %250
  %309 = add i64 %247, 1
  br label %246

310:                                              ; preds = %246
  %311 = add i64 %243, 1
  br label %242

312:                                              ; preds = %242
  %313 = add i64 %179, 32
  br label %178

314:                                              ; preds = %178
  %315 = add i64 %175, 8
  br label %174

316:                                              ; preds = %174
  %317 = add i64 %171, 16
  br label %170

318:                                              ; preds = %170
  br label %319

319:                                              ; preds = %364, %318
  %320 = phi i64 [ %365, %364 ], [ 0, %318 ]
  %321 = icmp slt i64 %320, 64
  br i1 %321, label %322, label %366

322:                                              ; preds = %319
  br label %323

323:                                              ; preds = %362, %322
  %324 = phi i64 [ %363, %362 ], [ 0, %322 ]
  %325 = icmp slt i64 %324, 2
  br i1 %325, label %326, label %364

326:                                              ; preds = %323
  br label %327

327:                                              ; preds = %360, %326
  %328 = phi i64 [ %361, %360 ], [ 0, %326 ]
  %329 = icmp slt i64 %328, 8192
  br i1 %329, label %330, label %362

330:                                              ; preds = %327
  br label %331

331:                                              ; preds = %334, %330
  %332 = phi i64 [ %359, %334 ], [ 0, %330 ]
  %333 = icmp slt i64 %332, 4
  br i1 %333, label %334, label %360

334:                                              ; preds = %331
  %335 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 1
  %336 = mul nuw nsw i64 %320, 65536
  %337 = mul nuw nsw i64 %324, 32768
  %338 = add nuw nsw i64 %336, %337
  %339 = mul nuw nsw i64 %328, 4
  %340 = add nuw nsw i64 %338, %339
  %341 = add nuw nsw i64 %340, %332
  %342 = getelementptr inbounds nuw float, ptr %335, i64 %341
  %343 = load float, ptr %342, align 4
  %344 = mul nsw i64 %328, 4
  %345 = add i64 %344, %332
  %346 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, 1
  %347 = getelementptr inbounds nuw float, ptr %346, i64 %345
  %348 = load float, ptr %347, align 4
  %349 = fadd float %343, %348
  %350 = call float @llvm.maxnum.f32(float %349, float 0.000000e+00)
  %351 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %352 = mul nuw nsw i64 %320, 65536
  %353 = mul nuw nsw i64 %324, 32768
  %354 = add nuw nsw i64 %352, %353
  %355 = mul nuw nsw i64 %328, 4
  %356 = add nuw nsw i64 %354, %355
  %357 = add nuw nsw i64 %356, %332
  %358 = getelementptr inbounds nuw float, ptr %351, i64 %357
  store float %350, ptr %358, align 4
  %359 = add i64 %332, 1
  br label %331

360:                                              ; preds = %331
  %361 = add i64 %328, 1
  br label %327

362:                                              ; preds = %327
  %363 = add i64 %324, 1
  br label %323

364:                                              ; preds = %323
  %365 = add i64 %320, 1
  br label %319

366:                                              ; preds = %319
  br label %367

367:                                              ; preds = %555, %366
  %368 = phi i64 [ %556, %555 ], [ 0, %366 ]
  %369 = icmp slt i64 %368, 64
  br i1 %369, label %370, label %557

370:                                              ; preds = %367
  br label %371

371:                                              ; preds = %553, %370
  %372 = phi i64 [ %554, %553 ], [ 0, %370 ]
  %373 = icmp slt i64 %372, 8192
  br i1 %373, label %374, label %555

374:                                              ; preds = %371
  br label %375

375:                                              ; preds = %551, %374
  %376 = phi i64 [ %552, %551 ], [ 0, %374 ]
  %377 = icmp slt i64 %376, 32768
  br i1 %377, label %378, label %553

378:                                              ; preds = %375
  %379 = icmp slt i64 %376, 0
  %380 = sub i64 -1, %376
  %381 = select i1 %379, i64 %380, i64 %376
  %382 = sdiv i64 %381, 65536
  %383 = sub i64 -1, %382
  %384 = select i1 %379, i64 %383, i64 %382
  %385 = add i64 %368, %384
  %386 = icmp slt i64 %376, 0
  %387 = sub i64 -1, %376
  %388 = select i1 %386, i64 %387, i64 %376
  %389 = sdiv i64 %388, 4
  %390 = sub i64 -1, %389
  %391 = select i1 %386, i64 %390, i64 %389
  %392 = srem i64 %391, 8192
  %393 = icmp slt i64 %392, 0
  %394 = add i64 %392, 8192
  %395 = select i1 %393, i64 %394, i64 %392
  %396 = srem i64 %376, 4
  %397 = icmp slt i64 %396, 0
  %398 = add i64 %396, 4
  %399 = select i1 %397, i64 %398, i64 %396
  %400 = mul nsw i64 %372, 4
  %401 = mul nsw i64 %385, 65536
  %402 = mul nsw i64 %395, 4
  %403 = add i64 %401, %402
  %404 = add i64 %403, %399
  %405 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 0
  %406 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %407 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %405, 0
  %408 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %407, ptr %406, 1
  %409 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %408, i64 %404, 2
  %410 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %409, i64 16, 3, 0
  %411 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %410, i64 65536, 4, 0
  %412 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %411, i64 2, 3, 1
  %413 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %412, i64 32768, 4, 1
  %414 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %413, i64 8, 3, 2
  %415 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %414, i64 4, 4, 2
  %416 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %415, i64 4, 3, 3
  %417 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %416, i64 1, 4, 3
  %418 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 0
  %419 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %420 = insertvalue { ptr, ptr, i64 } poison, ptr %418, 0
  %421 = insertvalue { ptr, ptr, i64 } %420, ptr %419, 1
  %422 = insertvalue { ptr, ptr, i64 } %421, i64 0, 2
  %423 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 2
  %424 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 3, 0
  %425 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 3, 1
  %426 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 4, 0
  %427 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 4, 1
  %428 = mul nsw i64 %400, 32768
  %429 = add i64 %428, %376
  %430 = extractvalue { ptr, ptr, i64 } %422, 0
  %431 = extractvalue { ptr, ptr, i64 } %422, 1
  %432 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %430, 0
  %433 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %432, ptr %431, 1
  %434 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %433, i64 %429, 2
  %435 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %434, i64 32, 3, 0
  %436 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %435, i64 32768, 4, 0
  %437 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %436, i64 32, 3, 1
  %438 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %437, i64 1, 4, 1
  %439 = mul nsw i64 %368, 65536
  %440 = mul nsw i64 %372, 4
  %441 = add i64 %439, %440
  %442 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 0
  %443 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %444 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %442, 0
  %445 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %444, ptr %443, 1
  %446 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %445, i64 %441, 2
  %447 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %446, i64 16, 3, 0
  %448 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %447, i64 65536, 4, 0
  %449 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %448, i64 2, 3, 1
  %450 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %449, i64 32768, 4, 1
  %451 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %450, i64 8, 3, 2
  %452 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %451, i64 4, 4, 2
  %453 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %452, i64 4, 3, 3
  %454 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %453, i64 1, 4, 3
  br label %455

455:                                              ; preds = %549, %378
  %456 = phi i64 [ %550, %549 ], [ 0, %378 ]
  %457 = icmp slt i64 %456, 16
  br i1 %457, label %458, label %551

458:                                              ; preds = %455
  br label %459

459:                                              ; preds = %547, %458
  %460 = phi i64 [ %548, %547 ], [ 0, %458 ]
  %461 = icmp slt i64 %460, 8
  br i1 %461, label %462, label %549

462:                                              ; preds = %459
  br label %463

463:                                              ; preds = %545, %462
  %464 = phi i64 [ %546, %545 ], [ 0, %462 ]
  %465 = icmp slt i64 %464, 2
  br i1 %465, label %466, label %547

466:                                              ; preds = %463
  br label %467

467:                                              ; preds = %543, %466
  %468 = phi i64 [ %544, %543 ], [ 0, %466 ]
  %469 = icmp slt i64 %468, 4
  br i1 %469, label %470, label %545

470:                                              ; preds = %467
  br label %471

471:                                              ; preds = %474, %470
  %472 = phi i64 [ %542, %474 ], [ 0, %470 ]
  %473 = icmp slt i64 %472, 32
  br i1 %473, label %474, label %543

474:                                              ; preds = %471
  %475 = mul nsw i64 %456, 65536
  %476 = mul nsw i64 %464, 32768
  %477 = add i64 %475, %476
  %478 = add i64 %477, %472
  %479 = icmp slt i64 %478, 0
  %480 = sub i64 -1, %478
  %481 = select i1 %479, i64 %480, i64 %478
  %482 = sdiv i64 %481, 65536
  %483 = sub i64 -1, %482
  %484 = select i1 %479, i64 %483, i64 %482
  %485 = icmp slt i64 %472, 0
  %486 = sub i64 -1, %472
  %487 = select i1 %485, i64 %486, i64 %472
  %488 = sdiv i64 %487, 4
  %489 = sub i64 -1, %488
  %490 = select i1 %485, i64 %489, i64 %488
  %491 = srem i64 %490, 8192
  %492 = icmp slt i64 %491, 0
  %493 = add i64 %491, 8192
  %494 = select i1 %492, i64 %493, i64 %491
  %495 = srem i64 %472, 4
  %496 = icmp slt i64 %495, 0
  %497 = add i64 %495, 4
  %498 = select i1 %496, i64 %497, i64 %495
  %499 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %417, 1
  %500 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %417, 2
  %501 = getelementptr float, ptr %499, i64 %500
  %502 = mul nuw nsw i64 %484, 65536
  %503 = mul nuw nsw i64 %464, 32768
  %504 = add nuw nsw i64 %502, %503
  %505 = mul nuw nsw i64 %494, 4
  %506 = add nuw nsw i64 %504, %505
  %507 = add nuw nsw i64 %506, %498
  %508 = getelementptr inbounds nuw float, ptr %501, i64 %507
  %509 = load float, ptr %508, align 4
  %510 = mul nsw i64 %460, 4
  %511 = add i64 %510, %468
  %512 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %438, 1
  %513 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %438, 2
  %514 = getelementptr float, ptr %512, i64 %513
  %515 = mul nuw nsw i64 %511, 32768
  %516 = add nuw nsw i64 %515, %472
  %517 = getelementptr inbounds nuw float, ptr %514, i64 %516
  %518 = load float, ptr %517, align 4
  %519 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %454, 1
  %520 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %454, 2
  %521 = getelementptr float, ptr %519, i64 %520
  %522 = mul nuw nsw i64 %456, 65536
  %523 = mul nuw nsw i64 %464, 32768
  %524 = add nuw nsw i64 %522, %523
  %525 = mul nuw nsw i64 %460, 4
  %526 = add nuw nsw i64 %524, %525
  %527 = add nuw nsw i64 %526, %468
  %528 = getelementptr inbounds nuw float, ptr %521, i64 %527
  %529 = load float, ptr %528, align 4
  %530 = fmul float %509, %518
  %531 = fadd float %530, %529
  %532 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %454, 1
  %533 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %454, 2
  %534 = getelementptr float, ptr %532, i64 %533
  %535 = mul nuw nsw i64 %456, 65536
  %536 = mul nuw nsw i64 %464, 32768
  %537 = add nuw nsw i64 %535, %536
  %538 = mul nuw nsw i64 %460, 4
  %539 = add nuw nsw i64 %537, %538
  %540 = add nuw nsw i64 %539, %468
  %541 = getelementptr inbounds nuw float, ptr %534, i64 %540
  store float %531, ptr %541, align 4
  %542 = add i64 %472, 1
  br label %471

543:                                              ; preds = %471
  %544 = add i64 %468, 1
  br label %467

545:                                              ; preds = %467
  %546 = add i64 %464, 1
  br label %463

547:                                              ; preds = %463
  %548 = add i64 %460, 1
  br label %459

549:                                              ; preds = %459
  %550 = add i64 %456, 1
  br label %455

551:                                              ; preds = %455
  %552 = add i64 %376, 32
  br label %375

553:                                              ; preds = %375
  %554 = add i64 %372, 8
  br label %371

555:                                              ; preds = %371
  %556 = add i64 %368, 16
  br label %367

557:                                              ; preds = %367
  br label %558

558:                                              ; preds = %603, %557
  %559 = phi i64 [ %604, %603 ], [ 0, %557 ]
  %560 = icmp slt i64 %559, 64
  br i1 %560, label %561, label %605

561:                                              ; preds = %558
  br label %562

562:                                              ; preds = %601, %561
  %563 = phi i64 [ %602, %601 ], [ 0, %561 ]
  %564 = icmp slt i64 %563, 2
  br i1 %564, label %565, label %603

565:                                              ; preds = %562
  br label %566

566:                                              ; preds = %599, %565
  %567 = phi i64 [ %600, %599 ], [ 0, %565 ]
  %568 = icmp slt i64 %567, 8192
  br i1 %568, label %569, label %601

569:                                              ; preds = %566
  br label %570

570:                                              ; preds = %573, %569
  %571 = phi i64 [ %598, %573 ], [ 0, %569 ]
  %572 = icmp slt i64 %571, 4
  br i1 %572, label %573, label %599

573:                                              ; preds = %570
  %574 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %575 = mul nuw nsw i64 %559, 65536
  %576 = mul nuw nsw i64 %563, 32768
  %577 = add nuw nsw i64 %575, %576
  %578 = mul nuw nsw i64 %567, 4
  %579 = add nuw nsw i64 %577, %578
  %580 = add nuw nsw i64 %579, %571
  %581 = getelementptr inbounds nuw float, ptr %574, i64 %580
  %582 = load float, ptr %581, align 4
  %583 = mul nsw i64 %567, 4
  %584 = add i64 %583, %571
  %585 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %586 = getelementptr inbounds nuw float, ptr %585, i64 %584
  %587 = load float, ptr %586, align 4
  %588 = fadd float %582, %587
  %589 = call float @llvm.maxnum.f32(float %588, float 0.000000e+00)
  %590 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %591 = mul nuw nsw i64 %559, 65536
  %592 = mul nuw nsw i64 %563, 32768
  %593 = add nuw nsw i64 %591, %592
  %594 = mul nuw nsw i64 %567, 4
  %595 = add nuw nsw i64 %593, %594
  %596 = add nuw nsw i64 %595, %571
  %597 = getelementptr inbounds nuw float, ptr %590, i64 %596
  store float %589, ptr %597, align 4
  %598 = add i64 %571, 1
  br label %570

599:                                              ; preds = %570
  %600 = add i64 %567, 1
  br label %566

601:                                              ; preds = %566
  %602 = add i64 %563, 1
  br label %562

603:                                              ; preds = %562
  %604 = add i64 %559, 1
  br label %558

605:                                              ; preds = %558
  %606 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %607 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %606, 0
  %608 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %607, ptr %606, 1
  %609 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %608, i64 0, 2
  %610 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %609, i64 64, 3, 0
  %611 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %610, i64 2, 3, 1
  %612 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %611, i64 4096, 3, 2
  %613 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %612, i64 4, 3, 3
  %614 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %613, i64 32768, 4, 0
  %615 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %614, i64 16384, 4, 1
  %616 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %615, i64 4, 4, 2
  %617 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %616, i64 1, 4, 3
  %618 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %619 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %618, 0
  %620 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %619, ptr %618, 1
  %621 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %620, i64 0, 2
  %622 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %621, i64 64, 3, 0
  %623 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %622, i64 2, 3, 1
  %624 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %623, i64 4096, 3, 2
  %625 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %624, i64 4, 3, 3
  %626 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %625, i64 32768, 4, 0
  %627 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %626, i64 16384, 4, 1
  %628 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %627, i64 4, 4, 2
  %629 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %628, i64 1, 4, 3
  br label %630

630:                                              ; preds = %659, %605
  %631 = phi i64 [ %660, %659 ], [ 0, %605 ]
  %632 = icmp slt i64 %631, 64
  br i1 %632, label %633, label %661

633:                                              ; preds = %630
  br label %634

634:                                              ; preds = %657, %633
  %635 = phi i64 [ %658, %657 ], [ 0, %633 ]
  %636 = icmp slt i64 %635, 2
  br i1 %636, label %637, label %659

637:                                              ; preds = %634
  br label %638

638:                                              ; preds = %655, %637
  %639 = phi i64 [ %656, %655 ], [ 0, %637 ]
  %640 = icmp slt i64 %639, 4096
  br i1 %640, label %641, label %657

641:                                              ; preds = %638
  br label %642

642:                                              ; preds = %645, %641
  %643 = phi i64 [ %654, %645 ], [ 0, %641 ]
  %644 = icmp slt i64 %643, 4
  br i1 %644, label %645, label %655

645:                                              ; preds = %642
  %646 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %629, 1
  %647 = mul nuw nsw i64 %631, 32768
  %648 = mul nuw nsw i64 %635, 16384
  %649 = add nuw nsw i64 %647, %648
  %650 = mul nuw nsw i64 %639, 4
  %651 = add nuw nsw i64 %649, %650
  %652 = add nuw nsw i64 %651, %643
  %653 = getelementptr inbounds nuw float, ptr %646, i64 %652
  store float 0.000000e+00, ptr %653, align 4
  %654 = add i64 %643, 1
  br label %642

655:                                              ; preds = %642
  %656 = add i64 %639, 1
  br label %638

657:                                              ; preds = %638
  %658 = add i64 %635, 1
  br label %634

659:                                              ; preds = %634
  %660 = add i64 %631, 1
  br label %630

661:                                              ; preds = %630
  br label %662

662:                                              ; preds = %850, %661
  %663 = phi i64 [ %851, %850 ], [ 0, %661 ]
  %664 = icmp slt i64 %663, 64
  br i1 %664, label %665, label %852

665:                                              ; preds = %662
  br label %666

666:                                              ; preds = %848, %665
  %667 = phi i64 [ %849, %848 ], [ 0, %665 ]
  %668 = icmp slt i64 %667, 4096
  br i1 %668, label %669, label %850

669:                                              ; preds = %666
  br label %670

670:                                              ; preds = %846, %669
  %671 = phi i64 [ %847, %846 ], [ 0, %669 ]
  %672 = icmp slt i64 %671, 32768
  br i1 %672, label %673, label %848

673:                                              ; preds = %670
  %674 = icmp slt i64 %671, 0
  %675 = sub i64 -1, %671
  %676 = select i1 %674, i64 %675, i64 %671
  %677 = sdiv i64 %676, 65536
  %678 = sub i64 -1, %677
  %679 = select i1 %674, i64 %678, i64 %677
  %680 = add i64 %663, %679
  %681 = icmp slt i64 %671, 0
  %682 = sub i64 -1, %671
  %683 = select i1 %681, i64 %682, i64 %671
  %684 = sdiv i64 %683, 4
  %685 = sub i64 -1, %684
  %686 = select i1 %681, i64 %685, i64 %684
  %687 = srem i64 %686, 8192
  %688 = icmp slt i64 %687, 0
  %689 = add i64 %687, 8192
  %690 = select i1 %688, i64 %689, i64 %687
  %691 = srem i64 %671, 4
  %692 = icmp slt i64 %691, 0
  %693 = add i64 %691, 4
  %694 = select i1 %692, i64 %693, i64 %691
  %695 = mul nsw i64 %667, 4
  %696 = mul nsw i64 %680, 65536
  %697 = mul nsw i64 %690, 4
  %698 = add i64 %696, %697
  %699 = add i64 %698, %694
  %700 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 0
  %701 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %702 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %700, 0
  %703 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %702, ptr %701, 1
  %704 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %703, i64 %699, 2
  %705 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %704, i64 16, 3, 0
  %706 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %705, i64 65536, 4, 0
  %707 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %706, i64 2, 3, 1
  %708 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %707, i64 32768, 4, 1
  %709 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %708, i64 8, 3, 2
  %710 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %709, i64 4, 4, 2
  %711 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %710, i64 4, 3, 3
  %712 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %711, i64 1, 4, 3
  %713 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 0
  %714 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %715 = insertvalue { ptr, ptr, i64 } poison, ptr %713, 0
  %716 = insertvalue { ptr, ptr, i64 } %715, ptr %714, 1
  %717 = insertvalue { ptr, ptr, i64 } %716, i64 0, 2
  %718 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 2
  %719 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 3, 0
  %720 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 3, 1
  %721 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 4, 0
  %722 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 4, 1
  %723 = mul nsw i64 %695, 32768
  %724 = add i64 %723, %671
  %725 = extractvalue { ptr, ptr, i64 } %717, 0
  %726 = extractvalue { ptr, ptr, i64 } %717, 1
  %727 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %725, 0
  %728 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %727, ptr %726, 1
  %729 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %728, i64 %724, 2
  %730 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %729, i64 32, 3, 0
  %731 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %730, i64 32768, 4, 0
  %732 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %731, i64 32, 3, 1
  %733 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %732, i64 1, 4, 1
  %734 = mul nsw i64 %663, 32768
  %735 = mul nsw i64 %667, 4
  %736 = add i64 %734, %735
  %737 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %629, 0
  %738 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %629, 1
  %739 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %737, 0
  %740 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %739, ptr %738, 1
  %741 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %740, i64 %736, 2
  %742 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %741, i64 16, 3, 0
  %743 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %742, i64 32768, 4, 0
  %744 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %743, i64 2, 3, 1
  %745 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %744, i64 16384, 4, 1
  %746 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %745, i64 8, 3, 2
  %747 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %746, i64 4, 4, 2
  %748 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %747, i64 4, 3, 3
  %749 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %748, i64 1, 4, 3
  br label %750

750:                                              ; preds = %844, %673
  %751 = phi i64 [ %845, %844 ], [ 0, %673 ]
  %752 = icmp slt i64 %751, 16
  br i1 %752, label %753, label %846

753:                                              ; preds = %750
  br label %754

754:                                              ; preds = %842, %753
  %755 = phi i64 [ %843, %842 ], [ 0, %753 ]
  %756 = icmp slt i64 %755, 8
  br i1 %756, label %757, label %844

757:                                              ; preds = %754
  br label %758

758:                                              ; preds = %840, %757
  %759 = phi i64 [ %841, %840 ], [ 0, %757 ]
  %760 = icmp slt i64 %759, 2
  br i1 %760, label %761, label %842

761:                                              ; preds = %758
  br label %762

762:                                              ; preds = %838, %761
  %763 = phi i64 [ %839, %838 ], [ 0, %761 ]
  %764 = icmp slt i64 %763, 4
  br i1 %764, label %765, label %840

765:                                              ; preds = %762
  br label %766

766:                                              ; preds = %769, %765
  %767 = phi i64 [ %837, %769 ], [ 0, %765 ]
  %768 = icmp slt i64 %767, 32
  br i1 %768, label %769, label %838

769:                                              ; preds = %766
  %770 = mul nsw i64 %751, 65536
  %771 = mul nsw i64 %759, 32768
  %772 = add i64 %770, %771
  %773 = add i64 %772, %767
  %774 = icmp slt i64 %773, 0
  %775 = sub i64 -1, %773
  %776 = select i1 %774, i64 %775, i64 %773
  %777 = sdiv i64 %776, 65536
  %778 = sub i64 -1, %777
  %779 = select i1 %774, i64 %778, i64 %777
  %780 = icmp slt i64 %767, 0
  %781 = sub i64 -1, %767
  %782 = select i1 %780, i64 %781, i64 %767
  %783 = sdiv i64 %782, 4
  %784 = sub i64 -1, %783
  %785 = select i1 %780, i64 %784, i64 %783
  %786 = srem i64 %785, 8192
  %787 = icmp slt i64 %786, 0
  %788 = add i64 %786, 8192
  %789 = select i1 %787, i64 %788, i64 %786
  %790 = srem i64 %767, 4
  %791 = icmp slt i64 %790, 0
  %792 = add i64 %790, 4
  %793 = select i1 %791, i64 %792, i64 %790
  %794 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %712, 1
  %795 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %712, 2
  %796 = getelementptr float, ptr %794, i64 %795
  %797 = mul nuw nsw i64 %779, 65536
  %798 = mul nuw nsw i64 %759, 32768
  %799 = add nuw nsw i64 %797, %798
  %800 = mul nuw nsw i64 %789, 4
  %801 = add nuw nsw i64 %799, %800
  %802 = add nuw nsw i64 %801, %793
  %803 = getelementptr inbounds nuw float, ptr %796, i64 %802
  %804 = load float, ptr %803, align 4
  %805 = mul nsw i64 %755, 4
  %806 = add i64 %805, %763
  %807 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %733, 1
  %808 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %733, 2
  %809 = getelementptr float, ptr %807, i64 %808
  %810 = mul nuw nsw i64 %806, 32768
  %811 = add nuw nsw i64 %810, %767
  %812 = getelementptr inbounds nuw float, ptr %809, i64 %811
  %813 = load float, ptr %812, align 4
  %814 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %749, 1
  %815 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %749, 2
  %816 = getelementptr float, ptr %814, i64 %815
  %817 = mul nuw nsw i64 %751, 32768
  %818 = mul nuw nsw i64 %759, 16384
  %819 = add nuw nsw i64 %817, %818
  %820 = mul nuw nsw i64 %755, 4
  %821 = add nuw nsw i64 %819, %820
  %822 = add nuw nsw i64 %821, %763
  %823 = getelementptr inbounds nuw float, ptr %816, i64 %822
  %824 = load float, ptr %823, align 4
  %825 = fmul float %804, %813
  %826 = fadd float %825, %824
  %827 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %749, 1
  %828 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %749, 2
  %829 = getelementptr float, ptr %827, i64 %828
  %830 = mul nuw nsw i64 %751, 32768
  %831 = mul nuw nsw i64 %759, 16384
  %832 = add nuw nsw i64 %830, %831
  %833 = mul nuw nsw i64 %755, 4
  %834 = add nuw nsw i64 %832, %833
  %835 = add nuw nsw i64 %834, %763
  %836 = getelementptr inbounds nuw float, ptr %829, i64 %835
  store float %826, ptr %836, align 4
  %837 = add i64 %767, 1
  br label %766

838:                                              ; preds = %766
  %839 = add i64 %763, 1
  br label %762

840:                                              ; preds = %762
  %841 = add i64 %759, 1
  br label %758

842:                                              ; preds = %758
  %843 = add i64 %755, 1
  br label %754

844:                                              ; preds = %754
  %845 = add i64 %751, 1
  br label %750

846:                                              ; preds = %750
  %847 = add i64 %671, 32
  br label %670

848:                                              ; preds = %670
  %849 = add i64 %667, 8
  br label %666

850:                                              ; preds = %666
  %851 = add i64 %663, 16
  br label %662

852:                                              ; preds = %662
  br label %853

853:                                              ; preds = %897, %852
  %854 = phi i64 [ %898, %897 ], [ 0, %852 ]
  %855 = icmp slt i64 %854, 64
  br i1 %855, label %856, label %899

856:                                              ; preds = %853
  br label %857

857:                                              ; preds = %895, %856
  %858 = phi i64 [ %896, %895 ], [ 0, %856 ]
  %859 = icmp slt i64 %858, 2
  br i1 %859, label %860, label %897

860:                                              ; preds = %857
  br label %861

861:                                              ; preds = %893, %860
  %862 = phi i64 [ %894, %893 ], [ 0, %860 ]
  %863 = icmp slt i64 %862, 4096
  br i1 %863, label %864, label %895

864:                                              ; preds = %861
  br label %865

865:                                              ; preds = %868, %864
  %866 = phi i64 [ %892, %868 ], [ 0, %864 ]
  %867 = icmp slt i64 %866, 4
  br i1 %867, label %868, label %893

868:                                              ; preds = %865
  %869 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %629, 1
  %870 = mul nuw nsw i64 %854, 32768
  %871 = mul nuw nsw i64 %858, 16384
  %872 = add nuw nsw i64 %870, %871
  %873 = mul nuw nsw i64 %862, 4
  %874 = add nuw nsw i64 %872, %873
  %875 = add nuw nsw i64 %874, %866
  %876 = getelementptr inbounds nuw float, ptr %869, i64 %875
  %877 = load float, ptr %876, align 4
  %878 = mul nsw i64 %862, 4
  %879 = add i64 %878, %866
  %880 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %881 = getelementptr inbounds nuw float, ptr %880, i64 %879
  %882 = load float, ptr %881, align 4
  %883 = fadd float %877, %882
  %884 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %617, 1
  %885 = mul nuw nsw i64 %854, 32768
  %886 = mul nuw nsw i64 %858, 16384
  %887 = add nuw nsw i64 %885, %886
  %888 = mul nuw nsw i64 %862, 4
  %889 = add nuw nsw i64 %887, %888
  %890 = add nuw nsw i64 %889, %866
  %891 = getelementptr inbounds nuw float, ptr %884, i64 %890
  store float %883, ptr %891, align 4
  %892 = add i64 %866, 1
  br label %865

893:                                              ; preds = %865
  %894 = add i64 %862, 1
  br label %861

895:                                              ; preds = %861
  %896 = add i64 %858, 1
  br label %857

897:                                              ; preds = %857
  %898 = add i64 %854, 1
  br label %853

899:                                              ; preds = %853
  %900 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %901 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %900, 0
  %902 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %901, ptr %900, 1
  %903 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %902, i64 0, 2
  %904 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %903, i64 128, 3, 0
  %905 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %904, i64 16384, 3, 1
  %906 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %905, i64 16384, 4, 0
  %907 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %906, i64 1, 4, 1
  br label %908

908:                                              ; preds = %956, %899
  %909 = phi i64 [ %957, %956 ], [ 0, %899 ]
  %910 = icmp slt i64 %909, 128
  br i1 %910, label %911, label %958

911:                                              ; preds = %908
  br label %912

912:                                              ; preds = %915, %911
  %913 = phi i64 [ %955, %915 ], [ 0, %911 ]
  %914 = icmp slt i64 %913, 16384
  br i1 %914, label %915, label %956

915:                                              ; preds = %912
  %916 = mul nsw i64 %909, 16384
  %917 = add i64 %916, %913
  %918 = icmp slt i64 %917, 0
  %919 = sub i64 -1, %917
  %920 = select i1 %918, i64 %919, i64 %917
  %921 = sdiv i64 %920, 32768
  %922 = sub i64 -1, %921
  %923 = select i1 %918, i64 %922, i64 %921
  %924 = srem i64 %909, 2
  %925 = icmp slt i64 %924, 0
  %926 = add i64 %924, 2
  %927 = select i1 %925, i64 %926, i64 %924
  %928 = icmp slt i64 %913, 0
  %929 = sub i64 -1, %913
  %930 = select i1 %928, i64 %929, i64 %913
  %931 = sdiv i64 %930, 4
  %932 = sub i64 -1, %931
  %933 = select i1 %928, i64 %932, i64 %931
  %934 = srem i64 %933, 4096
  %935 = icmp slt i64 %934, 0
  %936 = add i64 %934, 4096
  %937 = select i1 %935, i64 %936, i64 %934
  %938 = srem i64 %913, 4
  %939 = icmp slt i64 %938, 0
  %940 = add i64 %938, 4
  %941 = select i1 %939, i64 %940, i64 %938
  %942 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %617, 1
  %943 = mul nuw nsw i64 %923, 32768
  %944 = mul nuw nsw i64 %927, 16384
  %945 = add nuw nsw i64 %943, %944
  %946 = mul nuw nsw i64 %937, 4
  %947 = add nuw nsw i64 %945, %946
  %948 = add nuw nsw i64 %947, %941
  %949 = getelementptr inbounds nuw float, ptr %942, i64 %948
  %950 = load float, ptr %949, align 4
  %951 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %907, 1
  %952 = mul nuw nsw i64 %909, 16384
  %953 = add nuw nsw i64 %952, %913
  %954 = getelementptr inbounds nuw float, ptr %951, i64 %953
  store float %950, ptr %954, align 4
  %955 = add i64 %913, 1
  br label %912

956:                                              ; preds = %912
  %957 = add i64 %909, 1
  br label %908

958:                                              ; preds = %908
  %959 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 0
  call void @free(ptr %959)
  %960 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 0
  call void @free(ptr %960)
  %961 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 0
  call void @free(ptr %961)
  %962 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %617, 0
  call void @free(ptr %962)
  %963 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %629, 0
  call void @free(ptr %963)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %907
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
