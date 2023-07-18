import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 폰트 컬러
const fontColor = 0XFF202632;

/// 폰트 사이즈 (기본 16 사이즈)
final fontSize = 16.sp;

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
      displayLarge: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      displayMedium: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      displaySmall: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      headlineLarge: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      headlineMedium: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      headlineSmall: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      titleLarge: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      titleMedium: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      titleSmall: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      bodyLarge: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      bodyMedium: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      bodySmall: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      labelLarge: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      labelMedium: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
      labelSmall: TextStyle(
        fontFamily: FontFamily,
        color: const Color(fontColor),
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        wordSpacing: 1.0,
      ),
    );
