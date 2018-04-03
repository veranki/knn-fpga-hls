; ModuleID = '/mnt/f/dev/522r/522r_asst4/1-nn.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@knn_set_0_V = internal constant [10 x i5] [i5 -14, i5 -14, i5 -14, i5 -14, i5 -14, i5 -14, i5 -14, i5 -14, i5 -14, i5 -14]
@digitrec_str = internal unnamed_addr constant [9 x i8] c"digitrec\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define internal fastcc i4 @knn_vote([10 x i5]* nocapture %knn_set_0_V) readonly {
  br label %1

; <label>:1                                       ; preds = %.preheader.preheader, %0
  %min_sum_distances = phi i32 [ 50, %0 ], [ %sum_distances_1_min_s, %.preheader.preheader ]
  %val_assign = phi i32 [ undef, %0 ], [ %i_0_digit_recognized, %.preheader.preheader ]
  %digit_recognized = phi i4 [ 0, %0 ], [ %i, %.preheader.preheader ]
  %digit_recognized_cas = zext i4 %digit_recognized to i32
  %exitcond7 = icmp eq i4 %digit_recognized, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i = add i4 %digit_recognized, 1
  br i1 %exitcond7, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  %tmp_s = zext i4 %digit_recognized to i64
  %knn_set_0_V_addr = getelementptr [10 x i5]* %knn_set_0_V, i64 0, i64 %tmp_s
  %knn_set_0_V_load = load i5* %knn_set_0_V_addr, align 1
  %extLd = sext i5 %knn_set_0_V_load to i6
  %tmp_3 = zext i6 %extLd to i32
  %tmp_1 = icmp slt i32 %tmp_3, %min_sum_distances
  %sum_distances_1_min_s = select i1 %tmp_1, i32 %tmp_3, i32 %min_sum_distances
  %i_0_digit_recognized = select i1 %tmp_1, i32 %digit_recognized_cas, i32 %val_assign
  br label %1

; <label>:2                                       ; preds = %1
  %tmp = trunc i32 %val_assign to i4
  ret i4 %tmp
}

define i4 @digitrec(i49 %input_V) readonly {
.preheader18.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i4 0), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i49 %input_V), !map !69
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @digitrec_str) nounwind
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18, %.preheader18.preheader
  %i = phi i4 [ 0, %.preheader18.preheader ], [ %i_1, %.preheader18 ]
  %exitcond1 = icmp eq i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_1 = add i4 %i, 1
  br i1 %exitcond1, label %.preheader.preheader_ifconv, label %.preheader18

.preheader.preheader_ifconv:                      ; preds = %.preheader18
  %agg_result_V = call fastcc i4 @knn_vote([10 x i5]* @knn_set_0_V)
  ret i4 %agg_result_V
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !17, !17, !20, !20, !20, !26, !20, !29, !35, !35, !20, !38, !40, !42, !42, !46, !46, !20, !20, !48, !20, !17, !17, !20, !20, !50, !20, !20, !17, !17, !52, !52, !54, !54, !20, !20}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!56}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"digit"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"input"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"digit", metadata !"digit", metadata !"bit6*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"test_inst", metadata !"train_inst", metadata !"min_distances"}
!13 = metadata !{null, metadata !14, metadata !2, metadata !15, metadata !4, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"bit6 [1]*"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"knn_set"}
!17 = metadata !{null, metadata !1, metadata !2, metadata !18, metadata !4, metadata !19, metadata !6}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!20 = metadata !{null, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !6}
!21 = metadata !{metadata !"kernel_arg_addr_space"}
!22 = metadata !{metadata !"kernel_arg_access_qual"}
!23 = metadata !{metadata !"kernel_arg_type"}
!24 = metadata !{metadata !"kernel_arg_type_qual"}
!25 = metadata !{metadata !"kernel_arg_name"}
!26 = metadata !{null, metadata !1, metadata !2, metadata !27, metadata !4, metadata !28, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<6, false> &"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!29 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !6}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<6, false> &", metadata !"_Bool"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!35 = metadata !{null, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!38 = metadata !{null, metadata !1, metadata !2, metadata !39, metadata !4, metadata !28, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !18, metadata !4, metadata !41, metadata !6}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!42 = metadata !{null, metadata !43, metadata !31, metadata !44, metadata !33, metadata !45, metadata !6}
!43 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<49, false>*", metadata !"int"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!46 = metadata !{null, metadata !1, metadata !2, metadata !47, metadata !4, metadata !37, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &"}
!48 = metadata !{null, metadata !30, metadata !31, metadata !49, metadata !33, metadata !34, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &", metadata !"const ap_int_base<49, false> &"}
!50 = metadata !{null, metadata !1, metadata !2, metadata !51, metadata !4, metadata !28, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !19, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!54 = metadata !{null, metadata !1, metadata !2, metadata !55, metadata !4, metadata !19, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!56 = metadata !{metadata !57, [1 x i32]* @llvm_global_ctors_0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"llvm.global_ctors.0", metadata !61, metadata !"", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, i32 1}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 3, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"agg.result.V", metadata !67, metadata !"uint4", i32 0, i32 3}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 48, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"input.V", metadata !67, metadata !"uint49", i32 0, i32 48}
