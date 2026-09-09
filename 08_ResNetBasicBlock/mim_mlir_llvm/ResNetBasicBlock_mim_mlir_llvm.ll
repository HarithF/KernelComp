; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @ResNetBasicBlock(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, ptr %32, ptr %33, i64 %34, i64 %35, i64 %36, ptr %37, ptr %38, i64 %39, i64 %40, i64 %41, ptr %42, ptr %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, ptr %53, ptr %54, i64 %55, i64 %56, i64 %57, ptr %58, ptr %59, i64 %60, i64 %61, i64 %62, ptr %63, ptr %64, i64 %65, i64 %66, i64 %67, ptr %68, ptr %69, i64 %70, i64 %71, i64 %72, ptr %73, ptr %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, ptr %80, ptr %81, i64 %82, i64 %83, i64 %84, ptr %85, ptr %86, i64 %87, i64 %88, i64 %89, ptr %90, ptr %91, i64 %92, i64 %93, i64 %94, ptr %95, ptr %96, i64 %97, i64 %98, i64 %99) {
  %101 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %95, 0
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %101, ptr %96, 1
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, i64 %97, 2
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, i64 %98, 3, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, i64 %99, 4, 0
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %90, 0
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, ptr %91, 1
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 %92, 2
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, i64 %93, 3, 0
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, i64 %94, 4, 0
  %111 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %85, 0
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %111, ptr %86, 1
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, i64 %87, 2
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, i64 %88, 3, 0
  %115 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, i64 %89, 4, 0
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %80, 0
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, ptr %81, 1
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %117, i64 %82, 2
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, i64 %83, 3, 0
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, i64 %84, 4, 0
  %121 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %73, 0
  %122 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, ptr %74, 1
  %123 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %122, i64 %75, 2
  %124 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, i64 %76, 3, 0
  %125 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %124, i64 %78, 4, 0
  %126 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %125, i64 %77, 3, 1
  %127 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %126, i64 %79, 4, 1
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %68, 0
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, ptr %69, 1
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %129, i64 %70, 2
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %130, i64 %71, 3, 0
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, i64 %72, 4, 0
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %63, 0
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, ptr %64, 1
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, i64 %65, 2
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, i64 %66, 3, 0
  %137 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, i64 %67, 4, 0
  %138 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %58, 0
  %139 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %138, ptr %59, 1
  %140 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, i64 %60, 2
  %141 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %140, i64 %61, 3, 0
  %142 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %141, i64 %62, 4, 0
  %143 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %53, 0
  %144 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, ptr %54, 1
  %145 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, i64 %55, 2
  %146 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %145, i64 %56, 3, 0
  %147 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %146, i64 %57, 4, 0
  %148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %42, 0
  %149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %148, ptr %43, 1
  %150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %149, i64 %44, 2
  %151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %150, i64 %45, 3, 0
  %152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %151, i64 %49, 4, 0
  %153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %152, i64 %46, 3, 1
  %154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %153, i64 %50, 4, 1
  %155 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, i64 %47, 3, 2
  %156 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %155, i64 %51, 4, 2
  %157 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %156, i64 %48, 3, 3
  %158 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, i64 %52, 4, 3
  %159 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %37, 0
  %160 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, ptr %38, 1
  %161 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, i64 %39, 2
  %162 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %161, i64 %40, 3, 0
  %163 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %162, i64 %41, 4, 0
  %164 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %32, 0
  %165 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %164, ptr %33, 1
  %166 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, i64 %34, 2
  %167 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %166, i64 %35, 3, 0
  %168 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %167, i64 %36, 4, 0
  %169 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %27, 0
  %170 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %169, ptr %28, 1
  %171 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %170, i64 %29, 2
  %172 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %171, i64 %30, 3, 0
  %173 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %172, i64 %31, 4, 0
  %174 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %22, 0
  %175 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %174, ptr %23, 1
  %176 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %175, i64 %24, 2
  %177 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %176, i64 %25, 3, 0
  %178 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %177, i64 %26, 4, 0
  %179 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %11, 0
  %180 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %179, ptr %12, 1
  %181 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %180, i64 %13, 2
  %182 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %181, i64 %14, 3, 0
  %183 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %182, i64 %18, 4, 0
  %184 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %183, i64 %15, 3, 1
  %185 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %184, i64 %19, 4, 1
  %186 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %185, i64 %16, 3, 2
  %187 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %186, i64 %20, 4, 2
  %188 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %187, i64 %17, 3, 3
  %189 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %188, i64 %21, 4, 3
  %190 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %0, 0
  %191 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %190, ptr %1, 1
  %192 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %191, i64 %2, 2
  %193 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %192, i64 %3, 3, 0
  %194 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %193, i64 %7, 4, 0
  %195 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %194, i64 %4, 3, 1
  %196 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %195, i64 %8, 4, 1
  %197 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %196, i64 %5, 3, 2
  %198 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %197, i64 %9, 4, 2
  %199 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %198, i64 %6, 3, 3
  %200 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %199, i64 %10, 4, 3
  %201 = call ptr @aligned_alloc(i64 64, i64 6129152)
  %202 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %201, 0
  %203 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %202, ptr %201, 1
  %204 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %203, i64 0, 2
  %205 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %204, i64 10, 3, 0
  %206 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %205, i64 3, 3, 1
  %207 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %206, i64 226, 3, 2
  %208 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %207, i64 226, 3, 3
  %209 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %208, i64 153228, 4, 0
  %210 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %209, i64 51076, 4, 1
  %211 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %210, i64 226, 4, 2
  %212 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %211, i64 1, 4, 3
  br label %213

213:                                              ; preds = %242, %100
  %214 = phi i64 [ %243, %242 ], [ 0, %100 ]
  %215 = icmp slt i64 %214, 10
  br i1 %215, label %216, label %244

216:                                              ; preds = %213
  br label %217

217:                                              ; preds = %240, %216
  %218 = phi i64 [ %241, %240 ], [ 0, %216 ]
  %219 = icmp slt i64 %218, 3
  br i1 %219, label %220, label %242

220:                                              ; preds = %217
  br label %221

221:                                              ; preds = %238, %220
  %222 = phi i64 [ %239, %238 ], [ 0, %220 ]
  %223 = icmp slt i64 %222, 226
  br i1 %223, label %224, label %240

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %228, %224
  %226 = phi i64 [ %237, %228 ], [ 0, %224 ]
  %227 = icmp slt i64 %226, 226
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, 1
  %230 = mul nuw nsw i64 %214, 153228
  %231 = mul nuw nsw i64 %218, 51076
  %232 = add nuw nsw i64 %230, %231
  %233 = mul nuw nsw i64 %222, 226
  %234 = add nuw nsw i64 %232, %233
  %235 = add nuw nsw i64 %234, %226
  %236 = getelementptr inbounds nuw float, ptr %229, i64 %235
  store float 0.000000e+00, ptr %236, align 4
  %237 = add i64 %226, 1
  br label %225

238:                                              ; preds = %225
  %239 = add i64 %222, 1
  br label %221

240:                                              ; preds = %221
  %241 = add i64 %218, 1
  br label %217

242:                                              ; preds = %217
  %243 = add i64 %214, 1
  br label %213

244:                                              ; preds = %213
  %245 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, 0
  %246 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, 1
  %247 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %245, 0
  %248 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %247, ptr %246, 1
  %249 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %248, i64 227, 2
  %250 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %249, i64 10, 3, 0
  %251 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %250, i64 153228, 4, 0
  %252 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %251, i64 3, 3, 1
  %253 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %252, i64 51076, 4, 1
  %254 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %253, i64 224, 3, 2
  %255 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %254, i64 226, 4, 2
  %256 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %255, i64 224, 3, 3
  %257 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %256, i64 1, 4, 3
  %258 = call ptr @llvm.stacksave.p0()
  %259 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %189, ptr %259, align 8
  %260 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %259, 1
  %261 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %257, ptr %261, align 8
  %262 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %261, 1
  %263 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %260, ptr %263, align 8
  %264 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %262, ptr %264, align 8
  call void @memrefCopy(i64 4, ptr %263, ptr %264)
  call void @llvm.stackrestore.p0(ptr %258)
  %265 = call ptr @aligned_alloc(i64 64, i64 128450560)
  %266 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %265, 0
  %267 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %266, ptr %265, 1
  %268 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %267, i64 0, 2
  %269 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %268, i64 10, 3, 0
  %270 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %269, i64 64, 3, 1
  %271 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %270, i64 224, 3, 2
  %272 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %271, i64 1, 3, 3
  %273 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %272, i64 224, 3, 4
  %274 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %273, i64 3211264, 4, 0
  %275 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %274, i64 50176, 4, 1
  %276 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %275, i64 224, 4, 2
  %277 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %276, i64 224, 4, 3
  %278 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %277, i64 1, 4, 4
  %279 = call ptr @aligned_alloc(i64 64, i64 128450560)
  %280 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %279, 0
  %281 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %280, ptr %279, 1
  %282 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %281, i64 0, 2
  %283 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %282, i64 10, 3, 0
  %284 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %283, i64 64, 3, 1
  %285 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %284, i64 224, 3, 2
  %286 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %285, i64 1, 3, 3
  %287 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %286, i64 224, 3, 4
  %288 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %287, i64 3211264, 4, 0
  %289 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %288, i64 50176, 4, 1
  %290 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %289, i64 224, 4, 2
  %291 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %290, i64 224, 4, 3
  %292 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %291, i64 1, 4, 4
  br label %293

293:                                              ; preds = %330, %244
  %294 = phi i64 [ %331, %330 ], [ 0, %244 ]
  %295 = icmp slt i64 %294, 10
  br i1 %295, label %296, label %332

296:                                              ; preds = %293
  br label %297

297:                                              ; preds = %328, %296
  %298 = phi i64 [ %329, %328 ], [ 0, %296 ]
  %299 = icmp slt i64 %298, 64
  br i1 %299, label %300, label %330

300:                                              ; preds = %297
  br label %301

301:                                              ; preds = %326, %300
  %302 = phi i64 [ %327, %326 ], [ 0, %300 ]
  %303 = icmp slt i64 %302, 224
  br i1 %303, label %304, label %328

304:                                              ; preds = %301
  br label %305

305:                                              ; preds = %324, %304
  %306 = phi i64 [ %325, %324 ], [ 0, %304 ]
  %307 = icmp slt i64 %306, 1
  br i1 %307, label %308, label %326

308:                                              ; preds = %305
  br label %309

309:                                              ; preds = %312, %308
  %310 = phi i64 [ %323, %312 ], [ 0, %308 ]
  %311 = icmp slt i64 %310, 224
  br i1 %311, label %312, label %324

312:                                              ; preds = %309
  %313 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 1
  %314 = mul nuw nsw i64 %294, 3211264
  %315 = mul nuw nsw i64 %298, 50176
  %316 = add nuw nsw i64 %314, %315
  %317 = mul nuw nsw i64 %302, 224
  %318 = add nuw nsw i64 %316, %317
  %319 = mul nuw nsw i64 %306, 224
  %320 = add nuw nsw i64 %318, %319
  %321 = add nuw nsw i64 %320, %310
  %322 = getelementptr inbounds nuw float, ptr %313, i64 %321
  store float 0.000000e+00, ptr %322, align 4
  %323 = add i64 %310, 1
  br label %309

324:                                              ; preds = %309
  %325 = add i64 %306, 1
  br label %305

326:                                              ; preds = %305
  %327 = add i64 %302, 1
  br label %301

328:                                              ; preds = %301
  %329 = add i64 %298, 1
  br label %297

330:                                              ; preds = %297
  %331 = add i64 %294, 1
  br label %293

332:                                              ; preds = %293
  %333 = call ptr @aligned_alloc(i64 64, i64 896)
  %334 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %333, 0
  %335 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %334, ptr %333, 1
  %336 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %335, i64 0, 2
  %337 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %336, i64 224, 3, 0
  %338 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %337, i64 1, 3, 1
  %339 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %338, i64 1, 4, 0
  %340 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %339, i64 1, 4, 1
  %341 = call ptr @aligned_alloc(i64 64, i64 128450560)
  %342 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %341, 0
  %343 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %342, ptr %341, 1
  %344 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %343, i64 0, 2
  %345 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %344, i64 10, 3, 0
  %346 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %345, i64 64, 3, 1
  %347 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %346, i64 224, 3, 2
  %348 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %347, i64 1, 3, 3
  %349 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %348, i64 224, 3, 4
  %350 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %349, i64 3211264, 4, 0
  %351 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %350, i64 50176, 4, 1
  %352 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %351, i64 224, 4, 2
  %353 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %352, i64 224, 4, 3
  %354 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %353, i64 1, 4, 4
  %355 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 0
  %356 = mul i64 1, %355
  %357 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 1
  %358 = mul i64 %356, %357
  %359 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 2
  %360 = mul i64 %358, %359
  %361 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 3
  %362 = mul i64 %360, %361
  %363 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 4
  %364 = mul i64 %362, %363
  %365 = mul i64 %364, 4
  %366 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 1
  %367 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 2
  %368 = getelementptr float, ptr %366, i64 %367
  %369 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %354, 1
  %370 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %354, 2
  %371 = getelementptr float, ptr %369, i64 %370
  call void @llvm.memcpy.p0.p0.i64(ptr %371, ptr %368, i64 %365, i1 false)
  br label %372

372:                                              ; preds = %461, %332
  %373 = phi i64 [ %462, %461 ], [ 0, %332 ]
  %374 = icmp slt i64 %373, 10
  br i1 %374, label %375, label %463

375:                                              ; preds = %372
  br label %376

376:                                              ; preds = %459, %375
  %377 = phi i64 [ %460, %459 ], [ 0, %375 ]
  %378 = icmp slt i64 %377, 64
  br i1 %378, label %379, label %461

379:                                              ; preds = %376
  br label %380

380:                                              ; preds = %457, %379
  %381 = phi i64 [ %458, %457 ], [ 0, %379 ]
  %382 = icmp slt i64 %381, 224
  br i1 %382, label %383, label %459

383:                                              ; preds = %380
  br label %384

384:                                              ; preds = %455, %383
  %385 = phi i64 [ %456, %455 ], [ 0, %383 ]
  %386 = icmp slt i64 %385, 1
  br i1 %386, label %387, label %457

387:                                              ; preds = %384
  br label %388

388:                                              ; preds = %453, %387
  %389 = phi i64 [ %454, %453 ], [ 0, %387 ]
  %390 = icmp slt i64 %389, 3
  br i1 %390, label %391, label %455

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %451, %391
  %393 = phi i64 [ %452, %451 ], [ 0, %391 ]
  %394 = icmp slt i64 %393, 3
  br i1 %394, label %395, label %453

395:                                              ; preds = %392
  br label %396

396:                                              ; preds = %449, %395
  %397 = phi i64 [ %450, %449 ], [ 0, %395 ]
  %398 = icmp slt i64 %397, 3
  br i1 %398, label %399, label %451

399:                                              ; preds = %396
  br label %400

400:                                              ; preds = %403, %399
  %401 = phi i64 [ %448, %403 ], [ 0, %399 ]
  %402 = icmp slt i64 %401, 224
  br i1 %402, label %403, label %449

403:                                              ; preds = %400
  %404 = add i64 %381, %385
  %405 = add i64 %404, %393
  %406 = add i64 %397, %401
  %407 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, 1
  %408 = mul nuw nsw i64 %373, 153228
  %409 = mul nuw nsw i64 %389, 51076
  %410 = add nuw nsw i64 %408, %409
  %411 = mul nuw nsw i64 %405, 226
  %412 = add nuw nsw i64 %410, %411
  %413 = add nuw nsw i64 %412, %406
  %414 = getelementptr inbounds nuw float, ptr %407, i64 %413
  %415 = load float, ptr %414, align 4
  %416 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %200, 1
  %417 = mul nuw nsw i64 %377, 27
  %418 = mul nuw nsw i64 %389, 9
  %419 = add nuw nsw i64 %417, %418
  %420 = mul nuw nsw i64 %393, 3
  %421 = add nuw nsw i64 %419, %420
  %422 = add nuw nsw i64 %421, %397
  %423 = getelementptr inbounds nuw float, ptr %416, i64 %422
  %424 = load float, ptr %423, align 4
  %425 = add i64 %381, %385
  %426 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %354, 1
  %427 = mul nuw nsw i64 %373, 3211264
  %428 = mul nuw nsw i64 %377, 50176
  %429 = add nuw nsw i64 %427, %428
  %430 = mul nuw nsw i64 %425, 224
  %431 = add nuw nsw i64 %429, %430
  %432 = add nuw nsw i64 %431, 0
  %433 = add nuw nsw i64 %432, %401
  %434 = getelementptr inbounds nuw float, ptr %426, i64 %433
  %435 = load float, ptr %434, align 4
  %436 = add i64 %381, %385
  %437 = fmul float %415, %424
  %438 = fadd float %437, %435
  %439 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %354, 1
  %440 = mul nuw nsw i64 %373, 3211264
  %441 = mul nuw nsw i64 %377, 50176
  %442 = add nuw nsw i64 %440, %441
  %443 = mul nuw nsw i64 %436, 224
  %444 = add nuw nsw i64 %442, %443
  %445 = add nuw nsw i64 %444, 0
  %446 = add nuw nsw i64 %445, %401
  %447 = getelementptr inbounds nuw float, ptr %439, i64 %446
  store float %438, ptr %447, align 4
  %448 = add i64 %401, 1
  br label %400

449:                                              ; preds = %400
  %450 = add i64 %397, 1
  br label %396

451:                                              ; preds = %396
  %452 = add i64 %393, 1
  br label %392

453:                                              ; preds = %392
  %454 = add i64 %389, 1
  br label %388

455:                                              ; preds = %388
  %456 = add i64 %385, 1
  br label %384

457:                                              ; preds = %384
  %458 = add i64 %381, 1
  br label %380

459:                                              ; preds = %380
  %460 = add i64 %377, 1
  br label %376

461:                                              ; preds = %376
  %462 = add i64 %373, 1
  br label %372

463:                                              ; preds = %372
  %464 = call ptr @aligned_alloc(i64 64, i64 256)
  %465 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %464, 0
  %466 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %465, ptr %464, 1
  %467 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %466, i64 0, 2
  %468 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %467, i64 64, 3, 0
  %469 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %468, i64 1, 4, 0
  %470 = call ptr @aligned_alloc(i64 64, i64 256)
  %471 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %470, 0
  %472 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %471, ptr %470, 1
  %473 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %472, i64 0, 2
  %474 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %473, i64 64, 3, 0
  %475 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %474, i64 1, 4, 0
  br label %476

476:                                              ; preds = %479, %463
  %477 = phi i64 [ %492, %479 ], [ 0, %463 ]
  %478 = icmp slt i64 %477, 64
  br i1 %478, label %479, label %493

479:                                              ; preds = %476
  %480 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %173, 1
  %481 = getelementptr inbounds nuw float, ptr %480, i64 %477
  %482 = load float, ptr %481, align 4
  %483 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %168, 1
  %484 = getelementptr inbounds nuw float, ptr %483, i64 %477
  %485 = load float, ptr %484, align 4
  %486 = fadd float %482, f0x3727C5AC
  %487 = call float @llvm.sqrt.f32(float %486)
  %488 = fdiv float 1.000000e+00, %487
  %489 = fmul float %488, %485
  %490 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %475, 1
  %491 = getelementptr inbounds nuw float, ptr %490, i64 %477
  store float %489, ptr %491, align 4
  %492 = add i64 %477, 1
  br label %476

493:                                              ; preds = %476
  br label %494

494:                                              ; preds = %497, %493
  %495 = phi i64 [ %514, %497 ], [ 0, %493 ]
  %496 = icmp slt i64 %495, 64
  br i1 %496, label %497, label %515

497:                                              ; preds = %494
  %498 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %178, 1
  %499 = getelementptr inbounds nuw float, ptr %498, i64 %495
  %500 = load float, ptr %499, align 4
  %501 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %173, 1
  %502 = getelementptr inbounds nuw float, ptr %501, i64 %495
  %503 = load float, ptr %502, align 4
  %504 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %168, 1
  %505 = getelementptr inbounds nuw float, ptr %504, i64 %495
  %506 = load float, ptr %505, align 4
  %507 = fadd float %503, f0x3727C5AC
  %508 = call float @llvm.sqrt.f32(float %507)
  %509 = fdiv float 1.000000e+00, %508
  %510 = fmul float %509, %506
  %511 = fmul float %510, %500
  %512 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %469, 1
  %513 = getelementptr inbounds nuw float, ptr %512, i64 %495
  store float %511, ptr %513, align 4
  %514 = add i64 %495, 1
  br label %494

515:                                              ; preds = %494
  br label %516

516:                                              ; preds = %577, %515
  %517 = phi i64 [ %578, %577 ], [ 0, %515 ]
  %518 = icmp slt i64 %517, 10
  br i1 %518, label %519, label %579

519:                                              ; preds = %516
  br label %520

520:                                              ; preds = %575, %519
  %521 = phi i64 [ %576, %575 ], [ 0, %519 ]
  %522 = icmp slt i64 %521, 64
  br i1 %522, label %523, label %577

523:                                              ; preds = %520
  br label %524

524:                                              ; preds = %573, %523
  %525 = phi i64 [ %574, %573 ], [ 0, %523 ]
  %526 = icmp slt i64 %525, 224
  br i1 %526, label %527, label %575

527:                                              ; preds = %524
  br label %528

528:                                              ; preds = %571, %527
  %529 = phi i64 [ %572, %571 ], [ 0, %527 ]
  %530 = icmp slt i64 %529, 1
  br i1 %530, label %531, label %573

531:                                              ; preds = %528
  br label %532

532:                                              ; preds = %535, %531
  %533 = phi i64 [ %570, %535 ], [ 0, %531 ]
  %534 = icmp slt i64 %533, 224
  br i1 %534, label %535, label %571

535:                                              ; preds = %532
  %536 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %354, 1
  %537 = mul nuw nsw i64 %517, 3211264
  %538 = mul nuw nsw i64 %521, 50176
  %539 = add nuw nsw i64 %537, %538
  %540 = mul nuw nsw i64 %525, 224
  %541 = add nuw nsw i64 %539, %540
  %542 = mul nuw nsw i64 %529, 224
  %543 = add nuw nsw i64 %541, %542
  %544 = add nuw nsw i64 %543, %533
  %545 = getelementptr inbounds nuw float, ptr %536, i64 %544
  %546 = load float, ptr %545, align 4
  %547 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %475, 1
  %548 = getelementptr inbounds nuw float, ptr %547, i64 %521
  %549 = load float, ptr %548, align 4
  %550 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %469, 1
  %551 = getelementptr inbounds nuw float, ptr %550, i64 %521
  %552 = load float, ptr %551, align 4
  %553 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %163, 1
  %554 = getelementptr inbounds nuw float, ptr %553, i64 %521
  %555 = load float, ptr %554, align 4
  %556 = fmul float %546, %549
  %557 = fsub float %556, %552
  %558 = fadd float %557, %555
  %559 = call float @llvm.maxnum.f32(float %558, float 0.000000e+00)
  %560 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %278, 1
  %561 = mul nuw nsw i64 %517, 3211264
  %562 = mul nuw nsw i64 %521, 50176
  %563 = add nuw nsw i64 %561, %562
  %564 = mul nuw nsw i64 %525, 224
  %565 = add nuw nsw i64 %563, %564
  %566 = mul nuw nsw i64 %529, 224
  %567 = add nuw nsw i64 %565, %566
  %568 = add nuw nsw i64 %567, %533
  %569 = getelementptr inbounds nuw float, ptr %560, i64 %568
  store float %559, ptr %569, align 4
  %570 = add i64 %533, 1
  br label %532

571:                                              ; preds = %532
  %572 = add i64 %529, 1
  br label %528

573:                                              ; preds = %528
  %574 = add i64 %525, 1
  br label %524

575:                                              ; preds = %524
  %576 = add i64 %521, 1
  br label %520

577:                                              ; preds = %520
  %578 = add i64 %517, 1
  br label %516

579:                                              ; preds = %516
  %580 = call ptr @aligned_alloc(i64 64, i64 128450560)
  %581 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %580, 0
  %582 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %581, ptr %580, 1
  %583 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %582, i64 0, 2
  %584 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %583, i64 10, 3, 0
  %585 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %584, i64 64, 3, 1
  %586 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %585, i64 224, 3, 2
  %587 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %586, i64 224, 3, 3
  %588 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %587, i64 3211264, 4, 0
  %589 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %588, i64 50176, 4, 1
  %590 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %589, i64 224, 4, 2
  %591 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %590, i64 1, 4, 3
  br label %592

592:                                              ; preds = %631, %579
  %593 = phi i64 [ %632, %631 ], [ 0, %579 ]
  %594 = icmp slt i64 %593, 10
  br i1 %594, label %595, label %633

595:                                              ; preds = %592
  br label %596

596:                                              ; preds = %629, %595
  %597 = phi i64 [ %630, %629 ], [ 0, %595 ]
  %598 = icmp slt i64 %597, 64
  br i1 %598, label %599, label %631

599:                                              ; preds = %596
  br label %600

600:                                              ; preds = %627, %599
  %601 = phi i64 [ %628, %627 ], [ 0, %599 ]
  %602 = icmp slt i64 %601, 224
  br i1 %602, label %603, label %629

603:                                              ; preds = %600
  br label %604

604:                                              ; preds = %607, %603
  %605 = phi i64 [ %626, %607 ], [ 0, %603 ]
  %606 = icmp slt i64 %605, 224
  br i1 %606, label %607, label %627

607:                                              ; preds = %604
  %608 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %278, 1
  %609 = mul nuw nsw i64 %593, 3211264
  %610 = mul nuw nsw i64 %597, 50176
  %611 = add nuw nsw i64 %609, %610
  %612 = mul nuw nsw i64 %601, 224
  %613 = add nuw nsw i64 %611, %612
  %614 = add nuw nsw i64 %613, 0
  %615 = add nuw nsw i64 %614, %605
  %616 = getelementptr inbounds nuw float, ptr %608, i64 %615
  %617 = load float, ptr %616, align 4
  %618 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %591, 1
  %619 = mul nuw nsw i64 %593, 3211264
  %620 = mul nuw nsw i64 %597, 50176
  %621 = add nuw nsw i64 %619, %620
  %622 = mul nuw nsw i64 %601, 224
  %623 = add nuw nsw i64 %621, %622
  %624 = add nuw nsw i64 %623, %605
  %625 = getelementptr inbounds nuw float, ptr %618, i64 %624
  store float %617, ptr %625, align 4
  %626 = add i64 %605, 1
  br label %604

627:                                              ; preds = %604
  %628 = add i64 %601, 1
  br label %600

629:                                              ; preds = %600
  %630 = add i64 %597, 1
  br label %596

631:                                              ; preds = %596
  %632 = add i64 %593, 1
  br label %592

633:                                              ; preds = %592
  %634 = call ptr @aligned_alloc(i64 64, i64 130754560)
  %635 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %634, 0
  %636 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, ptr %634, 1
  %637 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %636, i64 0, 2
  %638 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %637, i64 10, 3, 0
  %639 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %638, i64 64, 3, 1
  %640 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %639, i64 226, 3, 2
  %641 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %640, i64 226, 3, 3
  %642 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %641, i64 3268864, 4, 0
  %643 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %642, i64 51076, 4, 1
  %644 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %643, i64 226, 4, 2
  %645 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %644, i64 1, 4, 3
  br label %646

646:                                              ; preds = %675, %633
  %647 = phi i64 [ %676, %675 ], [ 0, %633 ]
  %648 = icmp slt i64 %647, 10
  br i1 %648, label %649, label %677

649:                                              ; preds = %646
  br label %650

650:                                              ; preds = %673, %649
  %651 = phi i64 [ %674, %673 ], [ 0, %649 ]
  %652 = icmp slt i64 %651, 64
  br i1 %652, label %653, label %675

653:                                              ; preds = %650
  br label %654

654:                                              ; preds = %671, %653
  %655 = phi i64 [ %672, %671 ], [ 0, %653 ]
  %656 = icmp slt i64 %655, 226
  br i1 %656, label %657, label %673

657:                                              ; preds = %654
  br label %658

658:                                              ; preds = %661, %657
  %659 = phi i64 [ %670, %661 ], [ 0, %657 ]
  %660 = icmp slt i64 %659, 226
  br i1 %660, label %661, label %671

661:                                              ; preds = %658
  %662 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %645, 1
  %663 = mul nuw nsw i64 %647, 3268864
  %664 = mul nuw nsw i64 %651, 51076
  %665 = add nuw nsw i64 %663, %664
  %666 = mul nuw nsw i64 %655, 226
  %667 = add nuw nsw i64 %665, %666
  %668 = add nuw nsw i64 %667, %659
  %669 = getelementptr inbounds nuw float, ptr %662, i64 %668
  store float 0.000000e+00, ptr %669, align 4
  %670 = add i64 %659, 1
  br label %658

671:                                              ; preds = %658
  %672 = add i64 %655, 1
  br label %654

673:                                              ; preds = %654
  %674 = add i64 %651, 1
  br label %650

675:                                              ; preds = %650
  %676 = add i64 %647, 1
  br label %646

677:                                              ; preds = %646
  %678 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %645, 0
  %679 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %645, 1
  %680 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %678, 0
  %681 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %680, ptr %679, 1
  %682 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %681, i64 227, 2
  %683 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %682, i64 10, 3, 0
  %684 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %683, i64 3268864, 4, 0
  %685 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %684, i64 64, 3, 1
  %686 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %685, i64 51076, 4, 1
  %687 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %686, i64 224, 3, 2
  %688 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %687, i64 226, 4, 2
  %689 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %688, i64 224, 3, 3
  %690 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %689, i64 1, 4, 3
  %691 = call ptr @llvm.stacksave.p0()
  %692 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %591, ptr %692, align 8
  %693 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %692, 1
  %694 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %690, ptr %694, align 8
  %695 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %694, 1
  %696 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %693, ptr %696, align 8
  %697 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %695, ptr %697, align 8
  call void @memrefCopy(i64 4, ptr %696, ptr %697)
  call void @llvm.stackrestore.p0(ptr %691)
  %698 = call ptr @aligned_alloc(i64 64, i64 128450560)
  %699 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %698, 0
  %700 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %699, ptr %698, 1
  %701 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %700, i64 0, 2
  %702 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %701, i64 10, 3, 0
  %703 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %702, i64 64, 3, 1
  %704 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %703, i64 224, 3, 2
  %705 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %704, i64 1, 3, 3
  %706 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %705, i64 224, 3, 4
  %707 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %706, i64 3211264, 4, 0
  %708 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %707, i64 50176, 4, 1
  %709 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %708, i64 224, 4, 2
  %710 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %709, i64 224, 4, 3
  %711 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %710, i64 1, 4, 4
  %712 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 0
  %713 = mul i64 1, %712
  %714 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 1
  %715 = mul i64 %713, %714
  %716 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 2
  %717 = mul i64 %715, %716
  %718 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 3
  %719 = mul i64 %717, %718
  %720 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 3, 4
  %721 = mul i64 %719, %720
  %722 = mul i64 %721, 4
  %723 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 1
  %724 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 2
  %725 = getelementptr float, ptr %723, i64 %724
  %726 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %711, 1
  %727 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %711, 2
  %728 = getelementptr float, ptr %726, i64 %727
  call void @llvm.memcpy.p0.p0.i64(ptr %728, ptr %725, i64 %722, i1 false)
  br label %729

729:                                              ; preds = %818, %677
  %730 = phi i64 [ %819, %818 ], [ 0, %677 ]
  %731 = icmp slt i64 %730, 10
  br i1 %731, label %732, label %820

732:                                              ; preds = %729
  br label %733

733:                                              ; preds = %816, %732
  %734 = phi i64 [ %817, %816 ], [ 0, %732 ]
  %735 = icmp slt i64 %734, 64
  br i1 %735, label %736, label %818

736:                                              ; preds = %733
  br label %737

737:                                              ; preds = %814, %736
  %738 = phi i64 [ %815, %814 ], [ 0, %736 ]
  %739 = icmp slt i64 %738, 224
  br i1 %739, label %740, label %816

740:                                              ; preds = %737
  br label %741

741:                                              ; preds = %812, %740
  %742 = phi i64 [ %813, %812 ], [ 0, %740 ]
  %743 = icmp slt i64 %742, 1
  br i1 %743, label %744, label %814

744:                                              ; preds = %741
  br label %745

745:                                              ; preds = %810, %744
  %746 = phi i64 [ %811, %810 ], [ 0, %744 ]
  %747 = icmp slt i64 %746, 64
  br i1 %747, label %748, label %812

748:                                              ; preds = %745
  br label %749

749:                                              ; preds = %808, %748
  %750 = phi i64 [ %809, %808 ], [ 0, %748 ]
  %751 = icmp slt i64 %750, 3
  br i1 %751, label %752, label %810

752:                                              ; preds = %749
  br label %753

753:                                              ; preds = %806, %752
  %754 = phi i64 [ %807, %806 ], [ 0, %752 ]
  %755 = icmp slt i64 %754, 3
  br i1 %755, label %756, label %808

756:                                              ; preds = %753
  br label %757

757:                                              ; preds = %760, %756
  %758 = phi i64 [ %805, %760 ], [ 0, %756 ]
  %759 = icmp slt i64 %758, 224
  br i1 %759, label %760, label %806

760:                                              ; preds = %757
  %761 = add i64 %738, %742
  %762 = add i64 %761, %750
  %763 = add i64 %754, %758
  %764 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %645, 1
  %765 = mul nuw nsw i64 %730, 3268864
  %766 = mul nuw nsw i64 %746, 51076
  %767 = add nuw nsw i64 %765, %766
  %768 = mul nuw nsw i64 %762, 226
  %769 = add nuw nsw i64 %767, %768
  %770 = add nuw nsw i64 %769, %763
  %771 = getelementptr inbounds nuw float, ptr %764, i64 %770
  %772 = load float, ptr %771, align 4
  %773 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %158, 1
  %774 = mul nuw nsw i64 %734, 576
  %775 = mul nuw nsw i64 %746, 9
  %776 = add nuw nsw i64 %774, %775
  %777 = mul nuw nsw i64 %750, 3
  %778 = add nuw nsw i64 %776, %777
  %779 = add nuw nsw i64 %778, %754
  %780 = getelementptr inbounds nuw float, ptr %773, i64 %779
  %781 = load float, ptr %780, align 4
  %782 = add i64 %738, %742
  %783 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %711, 1
  %784 = mul nuw nsw i64 %730, 3211264
  %785 = mul nuw nsw i64 %734, 50176
  %786 = add nuw nsw i64 %784, %785
  %787 = mul nuw nsw i64 %782, 224
  %788 = add nuw nsw i64 %786, %787
  %789 = add nuw nsw i64 %788, 0
  %790 = add nuw nsw i64 %789, %758
  %791 = getelementptr inbounds nuw float, ptr %783, i64 %790
  %792 = load float, ptr %791, align 4
  %793 = add i64 %738, %742
  %794 = fmul float %772, %781
  %795 = fadd float %794, %792
  %796 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %711, 1
  %797 = mul nuw nsw i64 %730, 3211264
  %798 = mul nuw nsw i64 %734, 50176
  %799 = add nuw nsw i64 %797, %798
  %800 = mul nuw nsw i64 %793, 224
  %801 = add nuw nsw i64 %799, %800
  %802 = add nuw nsw i64 %801, 0
  %803 = add nuw nsw i64 %802, %758
  %804 = getelementptr inbounds nuw float, ptr %796, i64 %803
  store float %795, ptr %804, align 4
  %805 = add i64 %758, 1
  br label %757

806:                                              ; preds = %757
  %807 = add i64 %754, 1
  br label %753

808:                                              ; preds = %753
  %809 = add i64 %750, 1
  br label %749

810:                                              ; preds = %749
  %811 = add i64 %746, 1
  br label %745

812:                                              ; preds = %745
  %813 = add i64 %742, 1
  br label %741

814:                                              ; preds = %741
  %815 = add i64 %738, 1
  br label %737

816:                                              ; preds = %737
  %817 = add i64 %734, 1
  br label %733

818:                                              ; preds = %733
  %819 = add i64 %730, 1
  br label %729

820:                                              ; preds = %729
  %821 = call ptr @aligned_alloc(i64 64, i64 256)
  %822 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %821, 0
  %823 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %822, ptr %821, 1
  %824 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %823, i64 0, 2
  %825 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %824, i64 64, 3, 0
  %826 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %825, i64 1, 4, 0
  br label %827

827:                                              ; preds = %830, %820
  %828 = phi i64 [ %843, %830 ], [ 0, %820 ]
  %829 = icmp slt i64 %828, 64
  br i1 %829, label %830, label %844

830:                                              ; preds = %827
  %831 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, 1
  %832 = getelementptr inbounds nuw float, ptr %831, i64 %828
  %833 = load float, ptr %832, align 4
  %834 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %137, 1
  %835 = getelementptr inbounds nuw float, ptr %834, i64 %828
  %836 = load float, ptr %835, align 4
  %837 = fadd float %833, f0x3727C5AC
  %838 = call float @llvm.sqrt.f32(float %837)
  %839 = fdiv float 1.000000e+00, %838
  %840 = fmul float %839, %836
  %841 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %826, 1
  %842 = getelementptr inbounds nuw float, ptr %841, i64 %828
  store float %840, ptr %842, align 4
  %843 = add i64 %828, 1
  br label %827

844:                                              ; preds = %827
  %845 = call ptr @aligned_alloc(i64 64, i64 256)
  %846 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %845, 0
  %847 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %846, ptr %845, 1
  %848 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %847, i64 0, 2
  %849 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %848, i64 64, 3, 0
  %850 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %849, i64 1, 4, 0
  br label %851

851:                                              ; preds = %854, %844
  %852 = phi i64 [ %871, %854 ], [ 0, %844 ]
  %853 = icmp slt i64 %852, 64
  br i1 %853, label %854, label %872

854:                                              ; preds = %851
  %855 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %147, 1
  %856 = getelementptr inbounds nuw float, ptr %855, i64 %852
  %857 = load float, ptr %856, align 4
  %858 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, 1
  %859 = getelementptr inbounds nuw float, ptr %858, i64 %852
  %860 = load float, ptr %859, align 4
  %861 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %137, 1
  %862 = getelementptr inbounds nuw float, ptr %861, i64 %852
  %863 = load float, ptr %862, align 4
  %864 = fadd float %860, f0x3727C5AC
  %865 = call float @llvm.sqrt.f32(float %864)
  %866 = fdiv float 1.000000e+00, %865
  %867 = fmul float %866, %863
  %868 = fmul float %867, %857
  %869 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %850, 1
  %870 = getelementptr inbounds nuw float, ptr %869, i64 %852
  store float %868, ptr %870, align 4
  %871 = add i64 %852, 1
  br label %851

872:                                              ; preds = %851
  %873 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, 0
  %874 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, 1
  %875 = insertvalue { ptr, ptr, i64 } poison, ptr %873, 0
  %876 = insertvalue { ptr, ptr, i64 } %875, ptr %874, 1
  %877 = insertvalue { ptr, ptr, i64 } %876, i64 0, 2
  %878 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, 2
  %879 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, 3, 0
  %880 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, 3, 1
  %881 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, 4, 0
  %882 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, 4, 1
  %883 = extractvalue { ptr, ptr, i64 } %877, 0
  %884 = extractvalue { ptr, ptr, i64 } %877, 1
  %885 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %883, 0
  %886 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %885, ptr %884, 1
  %887 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %886, i64 0, 2
  %888 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %887, i64 64, 3, 0
  %889 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %888, i64 3, 4, 0
  %890 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %889, i64 3, 3, 1
  %891 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %890, i64 1, 4, 1
  %892 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %891, i64 1, 3, 2
  %893 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %892, i64 1, 4, 2
  %894 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %893, i64 1, 3, 3
  %895 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %894, i64 1, 4, 3
  br label %896

896:                                              ; preds = %983, %872
  %897 = phi i64 [ %984, %983 ], [ 0, %872 ]
  %898 = icmp slt i64 %897, 10
  br i1 %898, label %899, label %985

899:                                              ; preds = %896
  br label %900

900:                                              ; preds = %981, %899
  %901 = phi i64 [ %982, %981 ], [ 0, %899 ]
  %902 = icmp slt i64 %901, 64
  br i1 %902, label %903, label %983

903:                                              ; preds = %900
  br label %904

904:                                              ; preds = %979, %903
  %905 = phi i64 [ %980, %979 ], [ 0, %903 ]
  %906 = icmp slt i64 %905, 224
  br i1 %906, label %907, label %981

907:                                              ; preds = %904
  br label %908

908:                                              ; preds = %977, %907
  %909 = phi i64 [ %978, %977 ], [ 0, %907 ]
  %910 = icmp slt i64 %909, 1
  br i1 %910, label %911, label %979

911:                                              ; preds = %908
  br label %912

912:                                              ; preds = %975, %911
  %913 = phi i64 [ %976, %975 ], [ 0, %911 ]
  %914 = icmp slt i64 %913, 3
  br i1 %914, label %915, label %977

915:                                              ; preds = %912
  br label %916

916:                                              ; preds = %973, %915
  %917 = phi i64 [ %974, %973 ], [ 0, %915 ]
  %918 = icmp slt i64 %917, 1
  br i1 %918, label %919, label %975

919:                                              ; preds = %916
  br label %920

920:                                              ; preds = %971, %919
  %921 = phi i64 [ %972, %971 ], [ 0, %919 ]
  %922 = icmp slt i64 %921, 1
  br i1 %922, label %923, label %973

923:                                              ; preds = %920
  br label %924

924:                                              ; preds = %927, %923
  %925 = phi i64 [ %970, %927 ], [ 0, %923 ]
  %926 = icmp slt i64 %925, 224
  br i1 %926, label %927, label %971

927:                                              ; preds = %924
  %928 = add i64 %905, %909
  %929 = add i64 %928, %917
  %930 = add i64 %921, %925
  %931 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %189, 1
  %932 = mul nuw nsw i64 %897, 150528
  %933 = mul nuw nsw i64 %913, 50176
  %934 = add nuw nsw i64 %932, %933
  %935 = mul nuw nsw i64 %929, 224
  %936 = add nuw nsw i64 %934, %935
  %937 = add nuw nsw i64 %936, %930
  %938 = getelementptr inbounds nuw float, ptr %931, i64 %937
  %939 = load float, ptr %938, align 4
  %940 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %895, 1
  %941 = mul nuw nsw i64 %901, 3
  %942 = add nuw nsw i64 %941, %913
  %943 = add nuw nsw i64 %942, %917
  %944 = add nuw nsw i64 %943, %921
  %945 = getelementptr inbounds nuw float, ptr %940, i64 %944
  %946 = load float, ptr %945, align 4
  %947 = add i64 %905, %909
  %948 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 1
  %949 = mul nuw nsw i64 %897, 3211264
  %950 = mul nuw nsw i64 %901, 50176
  %951 = add nuw nsw i64 %949, %950
  %952 = mul nuw nsw i64 %947, 224
  %953 = add nuw nsw i64 %951, %952
  %954 = add nuw nsw i64 %953, 0
  %955 = add nuw nsw i64 %954, %925
  %956 = getelementptr inbounds nuw float, ptr %948, i64 %955
  %957 = load float, ptr %956, align 4
  %958 = add i64 %905, %909
  %959 = fmul float %939, %946
  %960 = fadd float %959, %957
  %961 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 1
  %962 = mul nuw nsw i64 %897, 3211264
  %963 = mul nuw nsw i64 %901, 50176
  %964 = add nuw nsw i64 %962, %963
  %965 = mul nuw nsw i64 %958, 224
  %966 = add nuw nsw i64 %964, %965
  %967 = add nuw nsw i64 %966, 0
  %968 = add nuw nsw i64 %967, %925
  %969 = getelementptr inbounds nuw float, ptr %961, i64 %968
  store float %960, ptr %969, align 4
  %970 = add i64 %925, 1
  br label %924

971:                                              ; preds = %924
  %972 = add i64 %921, 1
  br label %920

973:                                              ; preds = %920
  %974 = add i64 %917, 1
  br label %916

975:                                              ; preds = %916
  %976 = add i64 %913, 1
  br label %912

977:                                              ; preds = %912
  %978 = add i64 %909, 1
  br label %908

979:                                              ; preds = %908
  %980 = add i64 %905, 1
  br label %904

981:                                              ; preds = %904
  %982 = add i64 %901, 1
  br label %900

983:                                              ; preds = %900
  %984 = add i64 %897, 1
  br label %896

985:                                              ; preds = %896
  %986 = call ptr @aligned_alloc(i64 64, i64 256)
  %987 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %986, 0
  %988 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %987, ptr %986, 1
  %989 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %988, i64 0, 2
  %990 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %989, i64 64, 3, 0
  %991 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %990, i64 1, 4, 0
  br label %992

992:                                              ; preds = %995, %985
  %993 = phi i64 [ %1008, %995 ], [ 0, %985 ]
  %994 = icmp slt i64 %993, 64
  br i1 %994, label %995, label %1009

995:                                              ; preds = %992
  %996 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, 1
  %997 = getelementptr inbounds nuw float, ptr %996, i64 %993
  %998 = load float, ptr %997, align 4
  %999 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, 1
  %1000 = getelementptr inbounds nuw float, ptr %999, i64 %993
  %1001 = load float, ptr %1000, align 4
  %1002 = fadd float %998, f0x3727C5AC
  %1003 = call float @llvm.sqrt.f32(float %1002)
  %1004 = fdiv float 1.000000e+00, %1003
  %1005 = fmul float %1004, %1001
  %1006 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %991, 1
  %1007 = getelementptr inbounds nuw float, ptr %1006, i64 %993
  store float %1005, ptr %1007, align 4
  %1008 = add i64 %993, 1
  br label %992

1009:                                             ; preds = %992
  br label %1010

1010:                                             ; preds = %1013, %1009
  %1011 = phi i64 [ %1030, %1013 ], [ 0, %1009 ]
  %1012 = icmp slt i64 %1011, 64
  br i1 %1012, label %1013, label %1031

1013:                                             ; preds = %1010
  %1014 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, 1
  %1015 = getelementptr inbounds nuw float, ptr %1014, i64 %1011
  %1016 = load float, ptr %1015, align 4
  %1017 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %115, 1
  %1018 = getelementptr inbounds nuw float, ptr %1017, i64 %1011
  %1019 = load float, ptr %1018, align 4
  %1020 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, 1
  %1021 = getelementptr inbounds nuw float, ptr %1020, i64 %1011
  %1022 = load float, ptr %1021, align 4
  %1023 = fadd float %1019, f0x3727C5AC
  %1024 = call float @llvm.sqrt.f32(float %1023)
  %1025 = fdiv float 1.000000e+00, %1024
  %1026 = fmul float %1025, %1022
  %1027 = fmul float %1026, %1016
  %1028 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %469, 1
  %1029 = getelementptr inbounds nuw float, ptr %1028, i64 %1011
  store float %1027, ptr %1029, align 4
  %1030 = add i64 %1011, 1
  br label %1010

1031:                                             ; preds = %1010
  %1032 = call ptr @aligned_alloc(i64 64, i64 128450560)
  %1033 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %1032, 0
  %1034 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1033, ptr %1032, 1
  %1035 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1034, i64 0, 2
  %1036 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1035, i64 10, 3, 0
  %1037 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1036, i64 64, 3, 1
  %1038 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1037, i64 224, 3, 2
  %1039 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1038, i64 1, 3, 3
  %1040 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1039, i64 224, 3, 4
  %1041 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1040, i64 3211264, 4, 0
  %1042 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1041, i64 50176, 4, 1
  %1043 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1042, i64 224, 4, 2
  %1044 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1043, i64 224, 4, 3
  %1045 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1044, i64 1, 4, 4
  br label %1046

1046:                                             ; preds = %1106, %1031
  %1047 = phi i64 [ %1107, %1106 ], [ 0, %1031 ]
  %1048 = icmp slt i64 %1047, 10
  br i1 %1048, label %1049, label %1108

1049:                                             ; preds = %1046
  br label %1050

1050:                                             ; preds = %1104, %1049
  %1051 = phi i64 [ %1105, %1104 ], [ 0, %1049 ]
  %1052 = icmp slt i64 %1051, 64
  br i1 %1052, label %1053, label %1106

1053:                                             ; preds = %1050
  br label %1054

1054:                                             ; preds = %1102, %1053
  %1055 = phi i64 [ %1103, %1102 ], [ 0, %1053 ]
  %1056 = icmp slt i64 %1055, 224
  br i1 %1056, label %1057, label %1104

1057:                                             ; preds = %1054
  br label %1058

1058:                                             ; preds = %1100, %1057
  %1059 = phi i64 [ %1101, %1100 ], [ 0, %1057 ]
  %1060 = icmp slt i64 %1059, 1
  br i1 %1060, label %1061, label %1102

1061:                                             ; preds = %1058
  br label %1062

1062:                                             ; preds = %1065, %1061
  %1063 = phi i64 [ %1099, %1065 ], [ 0, %1061 ]
  %1064 = icmp slt i64 %1063, 224
  br i1 %1064, label %1065, label %1100

1065:                                             ; preds = %1062
  %1066 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 1
  %1067 = mul nuw nsw i64 %1047, 3211264
  %1068 = mul nuw nsw i64 %1051, 50176
  %1069 = add nuw nsw i64 %1067, %1068
  %1070 = mul nuw nsw i64 %1055, 224
  %1071 = add nuw nsw i64 %1069, %1070
  %1072 = mul nuw nsw i64 %1059, 224
  %1073 = add nuw nsw i64 %1071, %1072
  %1074 = add nuw nsw i64 %1073, %1063
  %1075 = getelementptr inbounds nuw float, ptr %1066, i64 %1074
  %1076 = load float, ptr %1075, align 4
  %1077 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %991, 1
  %1078 = getelementptr inbounds nuw float, ptr %1077, i64 %1051
  %1079 = load float, ptr %1078, align 4
  %1080 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %469, 1
  %1081 = getelementptr inbounds nuw float, ptr %1080, i64 %1051
  %1082 = load float, ptr %1081, align 4
  %1083 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, 1
  %1084 = getelementptr inbounds nuw float, ptr %1083, i64 %1051
  %1085 = load float, ptr %1084, align 4
  %1086 = fmul float %1076, %1079
  %1087 = fsub float %1086, %1082
  %1088 = fadd float %1087, %1085
  %1089 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1045, 1
  %1090 = mul nuw nsw i64 %1047, 3211264
  %1091 = mul nuw nsw i64 %1051, 50176
  %1092 = add nuw nsw i64 %1090, %1091
  %1093 = mul nuw nsw i64 %1055, 224
  %1094 = add nuw nsw i64 %1092, %1093
  %1095 = mul nuw nsw i64 %1059, 224
  %1096 = add nuw nsw i64 %1094, %1095
  %1097 = add nuw nsw i64 %1096, %1063
  %1098 = getelementptr inbounds nuw float, ptr %1089, i64 %1097
  store float %1088, ptr %1098, align 4
  %1099 = add i64 %1063, 1
  br label %1062

1100:                                             ; preds = %1062
  %1101 = add i64 %1059, 1
  br label %1058

1102:                                             ; preds = %1058
  %1103 = add i64 %1055, 1
  br label %1054

1104:                                             ; preds = %1054
  %1105 = add i64 %1051, 1
  br label %1050

1106:                                             ; preds = %1050
  %1107 = add i64 %1047, 1
  br label %1046

1108:                                             ; preds = %1046
  br label %1109

1109:                                             ; preds = %1181, %1108
  %1110 = phi i64 [ %1182, %1181 ], [ 0, %1108 ]
  %1111 = icmp slt i64 %1110, 10
  br i1 %1111, label %1112, label %1183

1112:                                             ; preds = %1109
  br label %1113

1113:                                             ; preds = %1179, %1112
  %1114 = phi i64 [ %1180, %1179 ], [ 0, %1112 ]
  %1115 = icmp slt i64 %1114, 64
  br i1 %1115, label %1116, label %1181

1116:                                             ; preds = %1113
  br label %1117

1117:                                             ; preds = %1177, %1116
  %1118 = phi i64 [ %1178, %1177 ], [ 0, %1116 ]
  %1119 = icmp slt i64 %1118, 224
  br i1 %1119, label %1120, label %1179

1120:                                             ; preds = %1117
  br label %1121

1121:                                             ; preds = %1175, %1120
  %1122 = phi i64 [ %1176, %1175 ], [ 0, %1120 ]
  %1123 = icmp slt i64 %1122, 1
  br i1 %1123, label %1124, label %1177

1124:                                             ; preds = %1121
  br label %1125

1125:                                             ; preds = %1128, %1124
  %1126 = phi i64 [ %1174, %1128 ], [ 0, %1124 ]
  %1127 = icmp slt i64 %1126, 224
  br i1 %1127, label %1128, label %1175

1128:                                             ; preds = %1125
  %1129 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %711, 1
  %1130 = mul nuw nsw i64 %1110, 3211264
  %1131 = mul nuw nsw i64 %1114, 50176
  %1132 = add nuw nsw i64 %1130, %1131
  %1133 = mul nuw nsw i64 %1118, 224
  %1134 = add nuw nsw i64 %1132, %1133
  %1135 = mul nuw nsw i64 %1122, 224
  %1136 = add nuw nsw i64 %1134, %1135
  %1137 = add nuw nsw i64 %1136, %1126
  %1138 = getelementptr inbounds nuw float, ptr %1129, i64 %1137
  %1139 = load float, ptr %1138, align 4
  %1140 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %826, 1
  %1141 = getelementptr inbounds nuw float, ptr %1140, i64 %1114
  %1142 = load float, ptr %1141, align 4
  %1143 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %850, 1
  %1144 = getelementptr inbounds nuw float, ptr %1143, i64 %1114
  %1145 = load float, ptr %1144, align 4
  %1146 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, 1
  %1147 = getelementptr inbounds nuw float, ptr %1146, i64 %1114
  %1148 = load float, ptr %1147, align 4
  %1149 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1045, 1
  %1150 = mul nuw nsw i64 %1110, 3211264
  %1151 = mul nuw nsw i64 %1114, 50176
  %1152 = add nuw nsw i64 %1150, %1151
  %1153 = mul nuw nsw i64 %1118, 224
  %1154 = add nuw nsw i64 %1152, %1153
  %1155 = add nuw nsw i64 %1154, 0
  %1156 = add nuw nsw i64 %1155, %1126
  %1157 = getelementptr inbounds nuw float, ptr %1149, i64 %1156
  %1158 = load float, ptr %1157, align 4
  %1159 = fmul float %1139, %1142
  %1160 = fsub float %1159, %1145
  %1161 = fadd float %1160, %1148
  %1162 = fadd float %1161, %1158
  %1163 = call float @llvm.maxnum.f32(float %1162, float 0.000000e+00)
  %1164 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %278, 1
  %1165 = mul nuw nsw i64 %1110, 3211264
  %1166 = mul nuw nsw i64 %1114, 50176
  %1167 = add nuw nsw i64 %1165, %1166
  %1168 = mul nuw nsw i64 %1118, 224
  %1169 = add nuw nsw i64 %1167, %1168
  %1170 = mul nuw nsw i64 %1122, 224
  %1171 = add nuw nsw i64 %1169, %1170
  %1172 = add nuw nsw i64 %1171, %1126
  %1173 = getelementptr inbounds nuw float, ptr %1164, i64 %1172
  store float %1163, ptr %1173, align 4
  %1174 = add i64 %1126, 1
  br label %1125

1175:                                             ; preds = %1125
  %1176 = add i64 %1122, 1
  br label %1121

1177:                                             ; preds = %1121
  %1178 = add i64 %1118, 1
  br label %1117

1179:                                             ; preds = %1117
  %1180 = add i64 %1114, 1
  br label %1113

1181:                                             ; preds = %1113
  %1182 = add i64 %1110, 1
  br label %1109

1183:                                             ; preds = %1109
  br label %1184

1184:                                             ; preds = %1223, %1183
  %1185 = phi i64 [ %1224, %1223 ], [ 0, %1183 ]
  %1186 = icmp slt i64 %1185, 10
  br i1 %1186, label %1187, label %1225

1187:                                             ; preds = %1184
  br label %1188

1188:                                             ; preds = %1221, %1187
  %1189 = phi i64 [ %1222, %1221 ], [ 0, %1187 ]
  %1190 = icmp slt i64 %1189, 64
  br i1 %1190, label %1191, label %1223

1191:                                             ; preds = %1188
  br label %1192

1192:                                             ; preds = %1219, %1191
  %1193 = phi i64 [ %1220, %1219 ], [ 0, %1191 ]
  %1194 = icmp slt i64 %1193, 224
  br i1 %1194, label %1195, label %1221

1195:                                             ; preds = %1192
  br label %1196

1196:                                             ; preds = %1199, %1195
  %1197 = phi i64 [ %1218, %1199 ], [ 0, %1195 ]
  %1198 = icmp slt i64 %1197, 224
  br i1 %1198, label %1199, label %1219

1199:                                             ; preds = %1196
  %1200 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %278, 1
  %1201 = mul nuw nsw i64 %1185, 3211264
  %1202 = mul nuw nsw i64 %1189, 50176
  %1203 = add nuw nsw i64 %1201, %1202
  %1204 = mul nuw nsw i64 %1193, 224
  %1205 = add nuw nsw i64 %1203, %1204
  %1206 = add nuw nsw i64 %1205, 0
  %1207 = add nuw nsw i64 %1206, %1197
  %1208 = getelementptr inbounds nuw float, ptr %1200, i64 %1207
  %1209 = load float, ptr %1208, align 4
  %1210 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %591, 1
  %1211 = mul nuw nsw i64 %1185, 3211264
  %1212 = mul nuw nsw i64 %1189, 50176
  %1213 = add nuw nsw i64 %1211, %1212
  %1214 = mul nuw nsw i64 %1193, 224
  %1215 = add nuw nsw i64 %1213, %1214
  %1216 = add nuw nsw i64 %1215, %1197
  %1217 = getelementptr inbounds nuw float, ptr %1210, i64 %1216
  store float %1209, ptr %1217, align 4
  %1218 = add i64 %1197, 1
  br label %1196

1219:                                             ; preds = %1196
  %1220 = add i64 %1193, 1
  br label %1192

1221:                                             ; preds = %1192
  %1222 = add i64 %1189, 1
  br label %1188

1223:                                             ; preds = %1188
  %1224 = add i64 %1185, 1
  br label %1184

1225:                                             ; preds = %1184
  %1226 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, 0
  call void @free(ptr %1226)
  %1227 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %278, 0
  call void @free(ptr %1227)
  %1228 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %292, 0
  call void @free(ptr %1228)
  %1229 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %340, 0
  call void @free(ptr %1229)
  %1230 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %354, 0
  call void @free(ptr %1230)
  %1231 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %469, 0
  call void @free(ptr %1231)
  %1232 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %475, 0
  call void @free(ptr %1232)
  %1233 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %645, 0
  call void @free(ptr %1233)
  %1234 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %711, 0
  call void @free(ptr %1234)
  %1235 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %826, 0
  call void @free(ptr %1235)
  %1236 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %850, 0
  call void @free(ptr %1236)
  %1237 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %991, 0
  call void @free(ptr %1237)
  %1238 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %1045, 0
  call void @free(ptr %1238)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %591
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
