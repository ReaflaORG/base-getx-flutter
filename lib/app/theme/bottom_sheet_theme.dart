import 'package:base_getx_flutter/app/theme/color_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// BottomSheet ▼
///
/// [Color?] backgroundColor: BottomSheet의 배경색입니다.
///
/// [Color?] surfaceTintColor: BottomSheet의 표면 tint 색상입니다.
///
/// [double?] elevation: BottomSheet의 고도입니다.
///
/// [Color?] modalBackgroundColor: Modal BottomSheet의 배경색입니다.
///
/// [Color?] modalBarrierColor: Modal BottomSheet의 Barrier 색상입니다.
///
/// [Color?] shadowColor: BottomSheet의 그림자 색상입니다.
///
/// [double?] modalElevation: Modal BottomSheet의 고도입니다.
///
/// [ShapeBorder?] shape: BottomSheet의 모양(border 모양)입니다.
///
/// [bool?] showDragHandle: BottomSheet에 드래그 핸들을 표시할지 여부입니다.
///
/// [Color?] dragHandleColor: 드래그 핸들의 색상입니다.
///
/// [Size?] dragHandleSize: 드래그 핸들의 크기입니다.
///
/// [Clip?] clipBehavior: BottomSheet의 clipping 동작입니다.
///
/// [BoxConstraints?] constraints: BottomSheet의 제약 조건입니다.
BottomSheetThemeData bottomSheetThemeData() {
  return BottomSheetThemeData(
    elevation: 0,
    backgroundColor: Colors.white,
    modalElevation: 0,
    modalBackgroundColor: Colors.white,
    // modalBarrierColor: Colors.black.withOpacity(0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15).r,
    ),
    dragHandleColor: ColorPath.Border,
    dragHandleSize: Size(50.w, 4.5.w),
    showDragHandle: true,
  );
}
