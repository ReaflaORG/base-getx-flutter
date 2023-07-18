import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// CardTheme ▼
///
/// [Clip?] clipBehavior: 자식 위젯의 클리핑 동작을 지정하는 옵션입니다.
///
/// [Color?] color: Material의 색상입니다.
///
/// [Color?] shadowColor: 그림자의 색상입니다.
///
/// [Color?] surfaceTintColor: Material의 표면 색상입니다.
///
/// [double?] elevation: Material의 고도입니다.
///
/// [EdgeInsetsGeometry?] margin: Material의 여백입니다.
///
/// [ShapeBorder?] shape: Material의 모양입니다.
CardTheme cardThemeData() {
  return CardTheme(
    margin: EdgeInsets.zero,
    color: Colors.white,
    // surfaceTintColor: ColorPath.PrimaryColor.withOpacity(0.5),
    shadowColor: Colors.black.withOpacity(0.1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15).r,
    ),
  );
}
