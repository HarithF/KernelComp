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

367:                                              ; preds = %538, %366
  %368 = phi i64 [ %539, %538 ], [ 0, %366 ]
  %369 = icmp slt i64 %368, 64
  br i1 %369, label %370, label %540

370:                                              ; preds = %367
  br label %371

371:                                              ; preds = %536, %370
  %372 = phi i64 [ %537, %536 ], [ 0, %370 ]
  %373 = icmp slt i64 %372, 8192
  br i1 %373, label %374, label %538

374:                                              ; preds = %371
  br label %375

375:                                              ; preds = %534, %374
  %376 = phi i64 [ %535, %534 ], [ 0, %374 ]
  %377 = icmp slt i64 %376, 32768
  br i1 %377, label %378, label %536

378:                                              ; preds = %375
  %379 = icmp slt i64 %376, 0
  %380 = sub i64 -1, %376
  %381 = select i1 %379, i64 %380, i64 %376
  %382 = sdiv i64 %381, 4
  %383 = sub i64 -1, %382
  %384 = select i1 %379, i64 %383, i64 %382
  %385 = srem i64 %384, 8192
  %386 = icmp slt i64 %385, 0
  %387 = add i64 %385, 8192
  %388 = select i1 %386, i64 %387, i64 %385
  %389 = srem i64 %376, 4
  %390 = icmp slt i64 %389, 0
  %391 = add i64 %389, 4
  %392 = select i1 %390, i64 %391, i64 %389
  %393 = mul nsw i64 %372, 4
  %394 = mul nsw i64 %368, 65536
  %395 = mul nsw i64 %388, 4
  %396 = add i64 %394, %395
  %397 = add i64 %396, %392
  %398 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 0
  %399 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %400 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %398, 0
  %401 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %400, ptr %399, 1
  %402 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %401, i64 %397, 2
  %403 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %402, i64 16, 3, 0
  %404 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %403, i64 65536, 4, 0
  %405 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %404, i64 2, 3, 1
  %406 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %405, i64 32768, 4, 1
  %407 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %406, i64 8, 3, 2
  %408 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %407, i64 4, 4, 2
  %409 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %408, i64 4, 3, 3
  %410 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %409, i64 1, 4, 3
  %411 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 0
  %412 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %413 = insertvalue { ptr, ptr, i64 } poison, ptr %411, 0
  %414 = insertvalue { ptr, ptr, i64 } %413, ptr %412, 1
  %415 = insertvalue { ptr, ptr, i64 } %414, i64 0, 2
  %416 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 2
  %417 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 3, 0
  %418 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 3, 1
  %419 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 4, 0
  %420 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 4, 1
  %421 = mul nsw i64 %393, 32768
  %422 = add i64 %421, %376
  %423 = extractvalue { ptr, ptr, i64 } %415, 0
  %424 = extractvalue { ptr, ptr, i64 } %415, 1
  %425 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %423, 0
  %426 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %425, ptr %424, 1
  %427 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %426, i64 %422, 2
  %428 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %427, i64 32, 3, 0
  %429 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %428, i64 32768, 4, 0
  %430 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %429, i64 32, 3, 1
  %431 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %430, i64 1, 4, 1
  %432 = mul nsw i64 %368, 65536
  %433 = mul nsw i64 %372, 4
  %434 = add i64 %432, %433
  %435 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 0
  %436 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %437 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %435, 0
  %438 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %437, ptr %436, 1
  %439 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %438, i64 %434, 2
  %440 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %439, i64 16, 3, 0
  %441 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %440, i64 65536, 4, 0
  %442 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %441, i64 2, 3, 1
  %443 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %442, i64 32768, 4, 1
  %444 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %443, i64 8, 3, 2
  %445 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %444, i64 4, 4, 2
  %446 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %445, i64 4, 3, 3
  %447 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %446, i64 1, 4, 3
  br label %448

448:                                              ; preds = %532, %378
  %449 = phi i64 [ %533, %532 ], [ 0, %378 ]
  %450 = icmp slt i64 %449, 16
  br i1 %450, label %451, label %534

451:                                              ; preds = %448
  br label %452

452:                                              ; preds = %530, %451
  %453 = phi i64 [ %531, %530 ], [ 0, %451 ]
  %454 = icmp slt i64 %453, 8
  br i1 %454, label %455, label %532

455:                                              ; preds = %452
  br label %456

456:                                              ; preds = %528, %455
  %457 = phi i64 [ %529, %528 ], [ 0, %455 ]
  %458 = icmp slt i64 %457, 2
  br i1 %458, label %459, label %530

459:                                              ; preds = %456
  br label %460

460:                                              ; preds = %526, %459
  %461 = phi i64 [ %527, %526 ], [ 0, %459 ]
  %462 = icmp slt i64 %461, 4
  br i1 %462, label %463, label %528

463:                                              ; preds = %460
  br label %464

464:                                              ; preds = %467, %463
  %465 = phi i64 [ %525, %467 ], [ 0, %463 ]
  %466 = icmp slt i64 %465, 32
  br i1 %466, label %467, label %526

467:                                              ; preds = %464
  %468 = icmp slt i64 %465, 0
  %469 = sub i64 -1, %465
  %470 = select i1 %468, i64 %469, i64 %465
  %471 = sdiv i64 %470, 4
  %472 = sub i64 -1, %471
  %473 = select i1 %468, i64 %472, i64 %471
  %474 = srem i64 %473, 8192
  %475 = icmp slt i64 %474, 0
  %476 = add i64 %474, 8192
  %477 = select i1 %475, i64 %476, i64 %474
  %478 = srem i64 %465, 4
  %479 = icmp slt i64 %478, 0
  %480 = add i64 %478, 4
  %481 = select i1 %479, i64 %480, i64 %478
  %482 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %410, 1
  %483 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %410, 2
  %484 = getelementptr float, ptr %482, i64 %483
  %485 = mul nuw nsw i64 %449, 65536
  %486 = mul nuw nsw i64 %457, 32768
  %487 = add nuw nsw i64 %485, %486
  %488 = mul nuw nsw i64 %477, 4
  %489 = add nuw nsw i64 %487, %488
  %490 = add nuw nsw i64 %489, %481
  %491 = getelementptr inbounds nuw float, ptr %484, i64 %490
  %492 = load float, ptr %491, align 4
  %493 = mul nsw i64 %453, 4
  %494 = add i64 %493, %461
  %495 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %431, 1
  %496 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %431, 2
  %497 = getelementptr float, ptr %495, i64 %496
  %498 = mul nuw nsw i64 %494, 32768
  %499 = add nuw nsw i64 %498, %465
  %500 = getelementptr inbounds nuw float, ptr %497, i64 %499
  %501 = load float, ptr %500, align 4
  %502 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %447, 1
  %503 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %447, 2
  %504 = getelementptr float, ptr %502, i64 %503
  %505 = mul nuw nsw i64 %449, 65536
  %506 = mul nuw nsw i64 %457, 32768
  %507 = add nuw nsw i64 %505, %506
  %508 = mul nuw nsw i64 %453, 4
  %509 = add nuw nsw i64 %507, %508
  %510 = add nuw nsw i64 %509, %461
  %511 = getelementptr inbounds nuw float, ptr %504, i64 %510
  %512 = load float, ptr %511, align 4
  %513 = fmul float %492, %501
  %514 = fadd float %513, %512
  %515 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %447, 1
  %516 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %447, 2
  %517 = getelementptr float, ptr %515, i64 %516
  %518 = mul nuw nsw i64 %449, 65536
  %519 = mul nuw nsw i64 %457, 32768
  %520 = add nuw nsw i64 %518, %519
  %521 = mul nuw nsw i64 %453, 4
  %522 = add nuw nsw i64 %520, %521
  %523 = add nuw nsw i64 %522, %461
  %524 = getelementptr inbounds nuw float, ptr %517, i64 %523
  store float %514, ptr %524, align 4
  %525 = add i64 %465, 1
  br label %464

526:                                              ; preds = %464
  %527 = add i64 %461, 1
  br label %460

528:                                              ; preds = %460
  %529 = add i64 %457, 1
  br label %456

530:                                              ; preds = %456
  %531 = add i64 %453, 1
  br label %452

532:                                              ; preds = %452
  %533 = add i64 %449, 1
  br label %448

534:                                              ; preds = %448
  %535 = add i64 %376, 32
  br label %375

536:                                              ; preds = %375
  %537 = add i64 %372, 8
  br label %371

538:                                              ; preds = %371
  %539 = add i64 %368, 16
  br label %367

540:                                              ; preds = %367
  br label %541

541:                                              ; preds = %586, %540
  %542 = phi i64 [ %587, %586 ], [ 0, %540 ]
  %543 = icmp slt i64 %542, 64
  br i1 %543, label %544, label %588

544:                                              ; preds = %541
  br label %545

545:                                              ; preds = %584, %544
  %546 = phi i64 [ %585, %584 ], [ 0, %544 ]
  %547 = icmp slt i64 %546, 2
  br i1 %547, label %548, label %586

548:                                              ; preds = %545
  br label %549

549:                                              ; preds = %582, %548
  %550 = phi i64 [ %583, %582 ], [ 0, %548 ]
  %551 = icmp slt i64 %550, 8192
  br i1 %551, label %552, label %584

552:                                              ; preds = %549
  br label %553

553:                                              ; preds = %556, %552
  %554 = phi i64 [ %581, %556 ], [ 0, %552 ]
  %555 = icmp slt i64 %554, 4
  br i1 %555, label %556, label %582

556:                                              ; preds = %553
  %557 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 1
  %558 = mul nuw nsw i64 %542, 65536
  %559 = mul nuw nsw i64 %546, 32768
  %560 = add nuw nsw i64 %558, %559
  %561 = mul nuw nsw i64 %550, 4
  %562 = add nuw nsw i64 %560, %561
  %563 = add nuw nsw i64 %562, %554
  %564 = getelementptr inbounds nuw float, ptr %557, i64 %563
  %565 = load float, ptr %564, align 4
  %566 = mul nsw i64 %550, 4
  %567 = add i64 %566, %554
  %568 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %569 = getelementptr inbounds nuw float, ptr %568, i64 %567
  %570 = load float, ptr %569, align 4
  %571 = fadd float %565, %570
  %572 = call float @llvm.maxnum.f32(float %571, float 0.000000e+00)
  %573 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %574 = mul nuw nsw i64 %542, 65536
  %575 = mul nuw nsw i64 %546, 32768
  %576 = add nuw nsw i64 %574, %575
  %577 = mul nuw nsw i64 %550, 4
  %578 = add nuw nsw i64 %576, %577
  %579 = add nuw nsw i64 %578, %554
  %580 = getelementptr inbounds nuw float, ptr %573, i64 %579
  store float %572, ptr %580, align 4
  %581 = add i64 %554, 1
  br label %553

582:                                              ; preds = %553
  %583 = add i64 %550, 1
  br label %549

584:                                              ; preds = %549
  %585 = add i64 %546, 1
  br label %545

586:                                              ; preds = %545
  %587 = add i64 %542, 1
  br label %541

588:                                              ; preds = %541
  %589 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %590 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %589, 0
  %591 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %590, ptr %589, 1
  %592 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %591, i64 0, 2
  %593 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %592, i64 64, 3, 0
  %594 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %593, i64 2, 3, 1
  %595 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %594, i64 4096, 3, 2
  %596 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %595, i64 4, 3, 3
  %597 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %596, i64 32768, 4, 0
  %598 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %597, i64 16384, 4, 1
  %599 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %598, i64 4, 4, 2
  %600 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %599, i64 1, 4, 3
  %601 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %602 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %601, 0
  %603 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %602, ptr %601, 1
  %604 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %603, i64 0, 2
  %605 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %604, i64 64, 3, 0
  %606 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %605, i64 2, 3, 1
  %607 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %606, i64 4096, 3, 2
  %608 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %607, i64 4, 3, 3
  %609 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %608, i64 32768, 4, 0
  %610 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %609, i64 16384, 4, 1
  %611 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %610, i64 4, 4, 2
  %612 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %611, i64 1, 4, 3
  br label %613

613:                                              ; preds = %642, %588
  %614 = phi i64 [ %643, %642 ], [ 0, %588 ]
  %615 = icmp slt i64 %614, 64
  br i1 %615, label %616, label %644

616:                                              ; preds = %613
  br label %617

617:                                              ; preds = %640, %616
  %618 = phi i64 [ %641, %640 ], [ 0, %616 ]
  %619 = icmp slt i64 %618, 2
  br i1 %619, label %620, label %642

620:                                              ; preds = %617
  br label %621

621:                                              ; preds = %638, %620
  %622 = phi i64 [ %639, %638 ], [ 0, %620 ]
  %623 = icmp slt i64 %622, 4096
  br i1 %623, label %624, label %640

624:                                              ; preds = %621
  br label %625

625:                                              ; preds = %628, %624
  %626 = phi i64 [ %637, %628 ], [ 0, %624 ]
  %627 = icmp slt i64 %626, 4
  br i1 %627, label %628, label %638

628:                                              ; preds = %625
  %629 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %612, 1
  %630 = mul nuw nsw i64 %614, 32768
  %631 = mul nuw nsw i64 %618, 16384
  %632 = add nuw nsw i64 %630, %631
  %633 = mul nuw nsw i64 %622, 4
  %634 = add nuw nsw i64 %632, %633
  %635 = add nuw nsw i64 %634, %626
  %636 = getelementptr inbounds nuw float, ptr %629, i64 %635
  store float 0.000000e+00, ptr %636, align 4
  %637 = add i64 %626, 1
  br label %625

638:                                              ; preds = %625
  %639 = add i64 %622, 1
  br label %621

640:                                              ; preds = %621
  %641 = add i64 %618, 1
  br label %617

642:                                              ; preds = %617
  %643 = add i64 %614, 1
  br label %613

644:                                              ; preds = %613
  br label %645

645:                                              ; preds = %816, %644
  %646 = phi i64 [ %817, %816 ], [ 0, %644 ]
  %647 = icmp slt i64 %646, 64
  br i1 %647, label %648, label %818

648:                                              ; preds = %645
  br label %649

649:                                              ; preds = %814, %648
  %650 = phi i64 [ %815, %814 ], [ 0, %648 ]
  %651 = icmp slt i64 %650, 4096
  br i1 %651, label %652, label %816

652:                                              ; preds = %649
  br label %653

653:                                              ; preds = %812, %652
  %654 = phi i64 [ %813, %812 ], [ 0, %652 ]
  %655 = icmp slt i64 %654, 32768
  br i1 %655, label %656, label %814

656:                                              ; preds = %653
  %657 = icmp slt i64 %654, 0
  %658 = sub i64 -1, %654
  %659 = select i1 %657, i64 %658, i64 %654
  %660 = sdiv i64 %659, 4
  %661 = sub i64 -1, %660
  %662 = select i1 %657, i64 %661, i64 %660
  %663 = srem i64 %662, 8192
  %664 = icmp slt i64 %663, 0
  %665 = add i64 %663, 8192
  %666 = select i1 %664, i64 %665, i64 %663
  %667 = srem i64 %654, 4
  %668 = icmp slt i64 %667, 0
  %669 = add i64 %667, 4
  %670 = select i1 %668, i64 %669, i64 %667
  %671 = mul nsw i64 %650, 4
  %672 = mul nsw i64 %646, 65536
  %673 = mul nsw i64 %666, 4
  %674 = add i64 %672, %673
  %675 = add i64 %674, %670
  %676 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 0
  %677 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 1
  %678 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %676, 0
  %679 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %678, ptr %677, 1
  %680 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %679, i64 %675, 2
  %681 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %680, i64 16, 3, 0
  %682 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %681, i64 65536, 4, 0
  %683 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %682, i64 2, 3, 1
  %684 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %683, i64 32768, 4, 1
  %685 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %684, i64 8, 3, 2
  %686 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %685, i64 4, 4, 2
  %687 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %686, i64 4, 3, 3
  %688 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %687, i64 1, 4, 3
  %689 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 0
  %690 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %691 = insertvalue { ptr, ptr, i64 } poison, ptr %689, 0
  %692 = insertvalue { ptr, ptr, i64 } %691, ptr %690, 1
  %693 = insertvalue { ptr, ptr, i64 } %692, i64 0, 2
  %694 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 2
  %695 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 3, 0
  %696 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 3, 1
  %697 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 4, 0
  %698 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 4, 1
  %699 = mul nsw i64 %671, 32768
  %700 = add i64 %699, %654
  %701 = extractvalue { ptr, ptr, i64 } %693, 0
  %702 = extractvalue { ptr, ptr, i64 } %693, 1
  %703 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %701, 0
  %704 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %703, ptr %702, 1
  %705 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %704, i64 %700, 2
  %706 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %705, i64 32, 3, 0
  %707 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %706, i64 32768, 4, 0
  %708 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %707, i64 32, 3, 1
  %709 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %708, i64 1, 4, 1
  %710 = mul nsw i64 %646, 32768
  %711 = mul nsw i64 %650, 4
  %712 = add i64 %710, %711
  %713 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %612, 0
  %714 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %612, 1
  %715 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %713, 0
  %716 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %715, ptr %714, 1
  %717 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %716, i64 %712, 2
  %718 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %717, i64 16, 3, 0
  %719 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %718, i64 32768, 4, 0
  %720 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %719, i64 2, 3, 1
  %721 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %720, i64 16384, 4, 1
  %722 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %721, i64 8, 3, 2
  %723 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %722, i64 4, 4, 2
  %724 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %723, i64 4, 3, 3
  %725 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %724, i64 1, 4, 3
  br label %726

726:                                              ; preds = %810, %656
  %727 = phi i64 [ %811, %810 ], [ 0, %656 ]
  %728 = icmp slt i64 %727, 16
  br i1 %728, label %729, label %812

729:                                              ; preds = %726
  br label %730

730:                                              ; preds = %808, %729
  %731 = phi i64 [ %809, %808 ], [ 0, %729 ]
  %732 = icmp slt i64 %731, 8
  br i1 %732, label %733, label %810

733:                                              ; preds = %730
  br label %734

734:                                              ; preds = %806, %733
  %735 = phi i64 [ %807, %806 ], [ 0, %733 ]
  %736 = icmp slt i64 %735, 2
  br i1 %736, label %737, label %808

737:                                              ; preds = %734
  br label %738

738:                                              ; preds = %804, %737
  %739 = phi i64 [ %805, %804 ], [ 0, %737 ]
  %740 = icmp slt i64 %739, 4
  br i1 %740, label %741, label %806

741:                                              ; preds = %738
  br label %742

742:                                              ; preds = %745, %741
  %743 = phi i64 [ %803, %745 ], [ 0, %741 ]
  %744 = icmp slt i64 %743, 32
  br i1 %744, label %745, label %804

745:                                              ; preds = %742
  %746 = icmp slt i64 %743, 0
  %747 = sub i64 -1, %743
  %748 = select i1 %746, i64 %747, i64 %743
  %749 = sdiv i64 %748, 4
  %750 = sub i64 -1, %749
  %751 = select i1 %746, i64 %750, i64 %749
  %752 = srem i64 %751, 8192
  %753 = icmp slt i64 %752, 0
  %754 = add i64 %752, 8192
  %755 = select i1 %753, i64 %754, i64 %752
  %756 = srem i64 %743, 4
  %757 = icmp slt i64 %756, 0
  %758 = add i64 %756, 4
  %759 = select i1 %757, i64 %758, i64 %756
  %760 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %688, 1
  %761 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %688, 2
  %762 = getelementptr float, ptr %760, i64 %761
  %763 = mul nuw nsw i64 %727, 65536
  %764 = mul nuw nsw i64 %735, 32768
  %765 = add nuw nsw i64 %763, %764
  %766 = mul nuw nsw i64 %755, 4
  %767 = add nuw nsw i64 %765, %766
  %768 = add nuw nsw i64 %767, %759
  %769 = getelementptr inbounds nuw float, ptr %762, i64 %768
  %770 = load float, ptr %769, align 4
  %771 = mul nsw i64 %731, 4
  %772 = add i64 %771, %739
  %773 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %709, 1
  %774 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %709, 2
  %775 = getelementptr float, ptr %773, i64 %774
  %776 = mul nuw nsw i64 %772, 32768
  %777 = add nuw nsw i64 %776, %743
  %778 = getelementptr inbounds nuw float, ptr %775, i64 %777
  %779 = load float, ptr %778, align 4
  %780 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %725, 1
  %781 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %725, 2
  %782 = getelementptr float, ptr %780, i64 %781
  %783 = mul nuw nsw i64 %727, 32768
  %784 = mul nuw nsw i64 %735, 16384
  %785 = add nuw nsw i64 %783, %784
  %786 = mul nuw nsw i64 %731, 4
  %787 = add nuw nsw i64 %785, %786
  %788 = add nuw nsw i64 %787, %739
  %789 = getelementptr inbounds nuw float, ptr %782, i64 %788
  %790 = load float, ptr %789, align 4
  %791 = fmul float %770, %779
  %792 = fadd float %791, %790
  %793 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %725, 1
  %794 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %725, 2
  %795 = getelementptr float, ptr %793, i64 %794
  %796 = mul nuw nsw i64 %727, 32768
  %797 = mul nuw nsw i64 %735, 16384
  %798 = add nuw nsw i64 %796, %797
  %799 = mul nuw nsw i64 %731, 4
  %800 = add nuw nsw i64 %798, %799
  %801 = add nuw nsw i64 %800, %739
  %802 = getelementptr inbounds nuw float, ptr %795, i64 %801
  store float %792, ptr %802, align 4
  %803 = add i64 %743, 1
  br label %742

804:                                              ; preds = %742
  %805 = add i64 %739, 1
  br label %738

806:                                              ; preds = %738
  %807 = add i64 %735, 1
  br label %734

808:                                              ; preds = %734
  %809 = add i64 %731, 1
  br label %730

810:                                              ; preds = %730
  %811 = add i64 %727, 1
  br label %726

812:                                              ; preds = %726
  %813 = add i64 %654, 32
  br label %653

814:                                              ; preds = %653
  %815 = add i64 %650, 8
  br label %649

816:                                              ; preds = %649
  %817 = add i64 %646, 16
  br label %645

818:                                              ; preds = %645
  br label %819

819:                                              ; preds = %863, %818
  %820 = phi i64 [ %864, %863 ], [ 0, %818 ]
  %821 = icmp slt i64 %820, 64
  br i1 %821, label %822, label %865

822:                                              ; preds = %819
  br label %823

823:                                              ; preds = %861, %822
  %824 = phi i64 [ %862, %861 ], [ 0, %822 ]
  %825 = icmp slt i64 %824, 2
  br i1 %825, label %826, label %863

826:                                              ; preds = %823
  br label %827

827:                                              ; preds = %859, %826
  %828 = phi i64 [ %860, %859 ], [ 0, %826 ]
  %829 = icmp slt i64 %828, 4096
  br i1 %829, label %830, label %861

830:                                              ; preds = %827
  br label %831

831:                                              ; preds = %834, %830
  %832 = phi i64 [ %858, %834 ], [ 0, %830 ]
  %833 = icmp slt i64 %832, 4
  br i1 %833, label %834, label %859

834:                                              ; preds = %831
  %835 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %612, 1
  %836 = mul nuw nsw i64 %820, 32768
  %837 = mul nuw nsw i64 %824, 16384
  %838 = add nuw nsw i64 %836, %837
  %839 = mul nuw nsw i64 %828, 4
  %840 = add nuw nsw i64 %838, %839
  %841 = add nuw nsw i64 %840, %832
  %842 = getelementptr inbounds nuw float, ptr %835, i64 %841
  %843 = load float, ptr %842, align 4
  %844 = mul nsw i64 %828, 4
  %845 = add i64 %844, %832
  %846 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %847 = getelementptr inbounds nuw float, ptr %846, i64 %845
  %848 = load float, ptr %847, align 4
  %849 = fadd float %843, %848
  %850 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %600, 1
  %851 = mul nuw nsw i64 %820, 32768
  %852 = mul nuw nsw i64 %824, 16384
  %853 = add nuw nsw i64 %851, %852
  %854 = mul nuw nsw i64 %828, 4
  %855 = add nuw nsw i64 %853, %854
  %856 = add nuw nsw i64 %855, %832
  %857 = getelementptr inbounds nuw float, ptr %850, i64 %856
  store float %849, ptr %857, align 4
  %858 = add i64 %832, 1
  br label %831

859:                                              ; preds = %831
  %860 = add i64 %828, 1
  br label %827

861:                                              ; preds = %827
  %862 = add i64 %824, 1
  br label %823

863:                                              ; preds = %823
  %864 = add i64 %820, 1
  br label %819

865:                                              ; preds = %819
  %866 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %867 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %866, 0
  %868 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %867, ptr %866, 1
  %869 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %868, i64 0, 2
  %870 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %869, i64 128, 3, 0
  %871 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %870, i64 16384, 3, 1
  %872 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %871, i64 16384, 4, 0
  %873 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %872, i64 1, 4, 1
  br label %874

874:                                              ; preds = %920, %865
  %875 = phi i64 [ %921, %920 ], [ 0, %865 ]
  %876 = icmp slt i64 %875, 128
  br i1 %876, label %877, label %922

877:                                              ; preds = %874
  br label %878

878:                                              ; preds = %881, %877
  %879 = phi i64 [ %919, %881 ], [ 0, %877 ]
  %880 = icmp slt i64 %879, 16384
  br i1 %880, label %881, label %920

881:                                              ; preds = %878
  %882 = icmp slt i64 %875, 0
  %883 = sub i64 -1, %875
  %884 = select i1 %882, i64 %883, i64 %875
  %885 = sdiv i64 %884, 2
  %886 = sub i64 -1, %885
  %887 = select i1 %882, i64 %886, i64 %885
  %888 = srem i64 %875, 2
  %889 = icmp slt i64 %888, 0
  %890 = add i64 %888, 2
  %891 = select i1 %889, i64 %890, i64 %888
  %892 = icmp slt i64 %879, 0
  %893 = sub i64 -1, %879
  %894 = select i1 %892, i64 %893, i64 %879
  %895 = sdiv i64 %894, 4
  %896 = sub i64 -1, %895
  %897 = select i1 %892, i64 %896, i64 %895
  %898 = srem i64 %897, 4096
  %899 = icmp slt i64 %898, 0
  %900 = add i64 %898, 4096
  %901 = select i1 %899, i64 %900, i64 %898
  %902 = srem i64 %879, 4
  %903 = icmp slt i64 %902, 0
  %904 = add i64 %902, 4
  %905 = select i1 %903, i64 %904, i64 %902
  %906 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %600, 1
  %907 = mul nuw nsw i64 %887, 32768
  %908 = mul nuw nsw i64 %891, 16384
  %909 = add nuw nsw i64 %907, %908
  %910 = mul nuw nsw i64 %901, 4
  %911 = add nuw nsw i64 %909, %910
  %912 = add nuw nsw i64 %911, %905
  %913 = getelementptr inbounds nuw float, ptr %906, i64 %912
  %914 = load float, ptr %913, align 4
  %915 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %873, 1
  %916 = mul nuw nsw i64 %875, 16384
  %917 = add nuw nsw i64 %916, %879
  %918 = getelementptr inbounds nuw float, ptr %915, i64 %917
  store float %914, ptr %918, align 4
  %919 = add i64 %879, 1
  br label %878

920:                                              ; preds = %878
  %921 = add i64 %875, 1
  br label %874

922:                                              ; preds = %874
  %923 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, 0
  call void @free(ptr %923)
  %924 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, 0
  call void @free(ptr %924)
  %925 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, 0
  call void @free(ptr %925)
  %926 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %600, 0
  call void @free(ptr %926)
  %927 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %612, 0
  call void @free(ptr %927)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %873
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
