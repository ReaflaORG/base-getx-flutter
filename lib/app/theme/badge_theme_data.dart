import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// TooltipThemeData ▼
///
/// [Color?] backgroundColor: 툴팁의 배경 색상입니다.
///
/// [Color?] textColor: 툴팁의 텍스트 색상입니다.
///
/// [double?] smallSize: 작은 크기의 툴팁의 크기입니다.
///
/// [double?] largeSize: 큰 크기의 툴팁의 크기입니다.
///
/// [TextStyle?] textStyle: 툴팁의 텍스트 스타일입니다.
///
/// [EdgeInsetsGeometry?] padding: 툴팁의 padding입니다.
///
/// [AlignmentGeometry?] alignment: 툴팁의 정렬 방식입니다.
///
/// [Offset?] offset: 툴팁의 위치를 이동시키는 오프셋입니다.
BadgeThemeData badgeThemeData() {
  return BadgeThemeData(
    smallSize: 7.sp,
    largeSize: 9.sp,
    textColor: Colors.white,
    textStyle: TextPath.TextF12W500.copyWith(
      color: Colors.white,
    ),
    backgroundColor: Colors.red,
  );
}
