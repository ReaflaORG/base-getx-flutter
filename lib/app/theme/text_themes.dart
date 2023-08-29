import 'package:flutter/material.dart';

import 'text_paths.dart';

/// Text Theme ▼
///
/// [TextStyle?] displayLarge: 대형 텍스트 스타일입니다.
///
/// [TextStyle?] displayMedium: 중형 텍스트 스타일입니다.
///
/// [TextStyle?] displaySmall: 소형 텍스트 스타일입니다.
///
/// [TextStyle?] headlineLarge: 대형 헤드라인 스타일입니다.
///
/// [TextStyle?] headlineMedium: 중형 헤드라인 스타일입니다.
///
/// [TextStyle?] headlineSmall: 소형 헤드라인 스타일입니다.
///
/// [TextStyle?] titleLarge: 대형 타이틀 스타일입니다.
///
/// [TextStyle?] titleMedium: 중형 타이틀 스타일입니다.
///
/// [TextStyle?] titleSmall: 소형 타이틀 스타일입니다.
///
/// [TextStyle?] bodyLarge: 대형 본문 스타일입니다.
///
/// [TextStyle?] bodyMedium: 중형 본문 스타일입니다.
///
/// [TextStyle?] bodySmall: 소형 본문 스타일입니다.
///
/// [TextStyle?] labelLarge: 대형 레이블 스타일입니다.
///
/// [TextStyle?] labelMedium: 중형 레이블 스타일입니다.
///
/// [TextStyle?] labelSmall: 소형 레이블 스타일입니다.
TextTheme textThemeData() {
  /// [주의할점 `flutter_screenutil`의 경우 `static`을 쓰게 되면, `screenutil`보다 먼저 호출되어 텍스트 사이즈를 불러오지 못한다.]
  return TextTheme(
    displayLarge: TextPath().F16W600,
    displayMedium: TextPath().F14W500,
    displaySmall: TextPath().F12W400,
    headlineLarge: TextPath().F16W600,
    headlineMedium: TextPath().F14W500,
    headlineSmall: TextPath().F12W400,
    titleLarge: TextPath().F16W600,
    titleMedium: TextPath().F14W500,
    titleSmall: TextPath().F12W400,
    bodyLarge: TextPath().F16W600,
    bodyMedium: TextPath().F14W500,
    bodySmall: TextPath().F12W400,
    labelLarge: TextPath().F16W600,
    labelMedium: TextPath().F14W500,
    labelSmall: TextPath().F12W400,
  );
}
