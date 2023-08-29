import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ProgressIndicatorThemeData ▼
///
/// [Color?] color: 진행 표시기의 색상을 지정합니다.
///
/// [Color?] linearTrackColor: 선형 진행 표시기의 트랙(바탕) 색상을 지정합니다.
///
/// [double?] linearMinHeight: 선형 진행 표시기의 최소 높이를 지정합니다.
///
/// [Color?] circularTrackColor: 원형 진행 표시기의 트랙(바탕) 색상을 지정합니다.
///
/// [Color?] refreshBackgroundColor: 새로고침 진행 표시기의 배경색을 지정합니다.
ProgressIndicatorThemeData progressIndicatorThemeData() {
  return ProgressIndicatorThemeData(
    color: ColorPath.PrimaryColor,
    // linearTrackColor: ColorPath.GreyColor,
    linearMinHeight: 4.0.w,
    // circularTrackColor: ColorPath.GreyColor,
    refreshBackgroundColor: Colors.white,
  );
}
