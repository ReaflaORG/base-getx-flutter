import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ChipTheme ▼
///
/// [double?] size: 텍스트의 크기입니다.
///
/// [double?] fill: 텍스트의 두께입니다.
///
/// [double?] weight: 텍스트의 두께입니다. (bold, normal 등)
///
/// [double?] grade: 텍스트의 글자 등급입니다.
///
/// [double?] opticalSize: 텍스트의 굵기입니다.
///
/// [Color?] color: 텍스트의 색상입니다.
///
/// [double?] opacity: 텍스트의 투명도입니다.
///
/// [List<Shadow>?] shadows: 텍스트에 적용되는 그림자 리스트입니다.
IconThemeData iconThemeData() {
  return IconThemeData(
    color: ColorPath.BlackColor,
    size: 24.sp,
  );
}
