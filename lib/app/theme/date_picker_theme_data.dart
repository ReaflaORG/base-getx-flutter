import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// DatePickerThemeData ▼
///
/// [Color?] backgroundColor: DatePicker의 배경색입니다.
///
/// [double?] elevation: DatePicker의 고도입니다.
///
/// [Color?] shadowColor: DatePicker의 그림자 색상입니다.
///
/// [Color?] surfaceTintColor: DatePicker의 표면 색상입니다.
///
/// [ShapeBorder?] shape: DatePicker의 모양(border)입니다.
///
/// [Color?] headerBackgroundColor: DatePicker 헤더의 배경색입니다.
///
/// [Color?] headerForegroundColor: DatePicker 헤더의 전경색(텍스트 등)입니다.
///
/// [TextStyle?] headerHeadlineStyle: DatePicker 헤더의 제목 스타일입니다.
///
/// [TextStyle?] headerHelpStyle: DatePicker 헤더의 도움말 스타일입니다.
///
/// [TextStyle?] weekdayStyle: DatePicker의 요일 스타일입니다.
///
/// [TextStyle?] dayStyle: DatePicker의 일자 스타일입니다.
///
/// [MaterialStateProperty<Color?>?] dayForegroundColor: DatePicker 일자의 전경색입니다.
///
/// [MaterialStateProperty<Color?>?] dayBackgroundColor: DatePicker 일자의 배경색입니다.
///
/// [MaterialStateProperty<Color?>?] dayOverlayColor: DatePicker 일자의 오버레이 색상입니다.
///
/// [MaterialStateProperty<Color?>?] todayForegroundColor: 오늘 날짜의 전경색입니다.
///
/// [MaterialStateProperty<Color?>?] todayBackgroundColor: 오늘 날짜의 배경색입니다.
///
/// [BorderSide?] todayBorder: 오늘 날짜 주변의 테두리입니다.
///
/// [TextStyle?] yearStyle: DatePicker의 연도 스타일입니다.
///
/// [MaterialStateProperty<Color?>?] yearForegroundColor: DatePicker 연도의 전경색입니다.
///
/// [MaterialStateProperty<Color?>?] yearBackgroundColor: DatePicker 연도의 배경색입니다.
///
/// [MaterialStateProperty<Color?>?] yearOverlayColor: DatePicker 연도의 오버레이 색상입니다.
///
/// [Color?] rangePickerBackgroundColor: DatePicker 범위 선택기의 배경색입니다.
///
/// [double?] rangePickerElevation: DatePicker 범위 선택기의 고도입니다.
///
/// [Color?] rangePickerShadowColor: DatePicker 범위 선택기의 그림자 색상입니다.
///
/// [Color?] rangePickerSurfaceTintColor: DatePicker 범위 선택기의 표면 색상입니다.
///
/// [ShapeBorder?] rangePickerShape: DatePicker 범위 선택기의 모양(border)입니다.
///
/// [Color?] rangePickerHeaderBackgroundColor: DatePicker 범위 선택기의 헤더 배경색입니다.
///
/// [Color?] rangePickerHeaderForegroundColor: DatePicker 범위 선택기의 헤더 전경색입니다.
///
/// [TextStyle?] rangePickerHeaderHeadlineStyle: DatePicker 범위 선택기의 헤더 제목 스타일입니다.
///
/// [TextStyle?] rangePickerHeaderHelpStyle: DatePicker 범위 선택기의 헤더 도움말 스타일입니다.
///
/// [Color?] rangeSelectionBackgroundColor: DatePicker 범위 선택의 배경색입니다.
///
/// [MaterialStateProperty<Color?>?] rangeSelectionOverlayColor: DatePicker 범위 선택의 오버레이 색상입니다.
DatePickerThemeData datePickerThemeData() => DatePickerThemeData(
      elevation: 0,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      headerBackgroundColor: Colors.white,
      headerForegroundColor: ColorPath.BlackColor,
      headerHeadlineStyle: TextPath.TextF16W600,
      headerHelpStyle: TextPath.TextF16W600,
      weekdayStyle: TextPath.TextF16W600,
      dayStyle: TextPath.TextF16W600,
      // dayForegroundColor: MaterialStateProperty.all(
      //   ColorPath.BlackColor,
      // ),
      // dayBackgroundColor: MaterialStateProperty.all(
      //   Colors.white,
      // ),
      dayOverlayColor: MaterialStateProperty.all(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      // todayForegroundColor: MaterialStateProperty.all(
      //   ColorPath.PrimaryColor,
      // ),
      // todayBackgroundColor: MaterialStateProperty.all(
      //   Colors.white,
      // ),
      todayBorder: BorderSide(
        color: ColorPath.PrimaryColor,
        width: 1.5.w,
      ),
      yearStyle: TextPath.TextF16W600.copyWith(
        color: ColorPath.GreyColor700,
      ),
      // yearForegroundColor: MaterialStateProperty.all(
      //   ColorPath.BlackColor,
      // ),
      // yearBackgroundColor: MaterialStateProperty.all(
      //   ColorPath.PrimaryColor,
      // ),
      yearOverlayColor: MaterialStateProperty.all(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      rangePickerBackgroundColor: Colors.white,
      rangePickerElevation: 0,
      // rangePickerShadowColor
      rangePickerSurfaceTintColor: ColorPath.PrimaryColor,
      rangePickerShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16).r,
      ),
      rangePickerHeaderBackgroundColor: Colors.white,
      rangePickerHeaderForegroundColor: ColorPath.BlackColor,
      rangePickerHeaderHeadlineStyle: TextPath.TextF16W600.copyWith(
        color: ColorPath.PrimaryColor,
      ),
      rangePickerHeaderHelpStyle: TextPath.TextF16W600,
      rangeSelectionBackgroundColor: ColorPath.PrimaryColor.withOpacity(0.1),
      rangeSelectionOverlayColor: MaterialStateProperty.all(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16).r,
      ),
    );
