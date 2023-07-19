import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';

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
TextTheme textThemeData() => TextTheme(
      displayLarge: TextPath.TextF16W600,
      displayMedium: TextPath.TextF16W500,
      displaySmall: TextPath.TextF16W400,
      headlineLarge: TextPath.TextF16W600,
      headlineMedium: TextPath.TextF16W500,
      headlineSmall: TextPath.TextF16W400,
      titleLarge: TextPath.TextF16W600,
      titleMedium: TextPath.TextF16W500,
      titleSmall: TextPath.TextF16W400,
      bodyLarge: TextPath.TextF16W600,
      bodyMedium: TextPath.TextF16W500,
      bodySmall: TextPath.TextF16W400,
      labelLarge: TextPath.TextF16W600,
      labelMedium: TextPath.TextF16W500,
      labelSmall: TextPath.TextF16W400,
    );
