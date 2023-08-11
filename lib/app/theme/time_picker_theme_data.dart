import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// DatePickerThemeData ▼
///
/// [Color?] backgroundColor: DatePicker 위젯의 배경색을 지정합니다.
///
/// [ButtonStyle?] cancelButtonStyle: 취소 버튼의 스타일을 지정하는 ButtonStyle입니다.
///
/// [ButtonStyle?] confirmButtonStyle: 확인 버튼의 스타일을 지정하는 ButtonStyle입니다.
///
/// [BorderSide?] dayPeriodBorderSide: AM/PM 표시의 테두리 선(border)을 지정하는 BorderSide입니다.
///
/// [Color?] dayPeriodColor: AM/PM 표시의 배경색을 지정합니다.
///
/// [OutlinedBorder?] dayPeriodShape: AM/PM 표시의 모양(shape)을 지정하는 OutlinedBorder입니다.
///
/// [Color?] dayPeriodTextColor: AM/PM 텍스트의 색상을 지정합니다.
///
/// [TextStyle?] dayPeriodTextStyle: AM/PM 텍스트의 스타일을 지정하는 TextStyle입니다.
///
/// [Color?] dialBackgroundColor: 시간 선택 다이얼의 배경색을 지정합니다.
///
/// [Color?] dialHandColor: 시간 선택 다이얼의 시침/분침 색상을 지정합니다.
///
/// [Color?] dialTextColor: 시간 선택 다이얼의 텍스트 색상을 지정합니다.
///
/// [TextStyle?] dialTextStyle: 시간 선택 다이얼의 텍스트 스타일을 지정하는 TextStyle입니다.
///
/// [double?] elevation: DatePicker 위젯의 고도(elevation)를 설정합니다.
///
/// [Color?] entryModeIconColor: 입력 모드 아이콘의 색상을 지정합니다.
///
/// [TextStyle?] helpTextStyle: 도움말 텍스트의 스타일을 지정하는 TextStyle입니다.
///
/// [Color?] hourMinuteColor: 시간 및 분 선택 영역의 색상을 지정합니다.
///
/// [ShapeBorder?] hourMinuteShape: 시간 및 분 선택 영역의 모양(shape)을 지정하는 ShapeBorder입니다.
///
/// [Color?] hourMinuteTextColor: 시간 및 분 선택 영역의 텍스트 색상을 지정합니다.
///
/// [TextStyle?] hourMinuteTextStyle: 시간 및 분 선택 영역의 텍스트 스타일을 지정하는 TextStyle입니다.
///
/// [InputDecorationTheme?] inputDecorationTheme: 입력 요소의 장식(InputDecoration) 테마를 지정하는 InputDecorationTheme입니다.
///
/// [EdgeInsetsGeometry?] padding: DatePicker 위젯의 여백을 지정하는 EdgeInsetsGeometry입니다.
///
/// [ShapeBorder?] shape: DatePicker 위젯의 모양(shape)을 지정하는 ShapeBorder입니다.
TimePickerThemeData timePickerThemeData() => TimePickerThemeData(
      // elevation: 0.0,
      // padding: const EdgeInsets.all(30).r,
      backgroundColor: Colors.white,
      // cancelButtonStyle: ButtonStyle(),
      // confirmButtonStyle: ButtonStyle(),
      dayPeriodBorderSide: BorderSide(
        color: ColorPath.GreyColor,
        width: 1.0.w,
      ),
      // dayPeriodColor: ColorPath.PrimaryColor.withOpacity(0.3),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          const Radius.circular(8.0).r,
        ),
      ),
      // dayPeriodTextColor: ColorPath.BlackColor,
      dayPeriodTextStyle: TextPath.TextF16W400,
      dialBackgroundColor: ColorPath.PrimaryColor.withOpacity(0.1),
      // dialHandColor: ColorPath.BlackColor,
      // dialTextColor: ColorPath.BlackColor,
      dialTextStyle: TextPath.TextF16W400,
      entryModeIconColor: ColorPath.GreyColor600,
      helpTextStyle: TextPath.TextF16W500,
      // hourMinuteColor: ColorPath.PrimaryColor,
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          const Radius.circular(8.0).r,
        ),
      ),
      // hourMinuteTextColor: ColorPath.BlackColor,
      hourMinuteTextStyle: TextPath.TextF24W600.copyWith(
        color: ColorPath.BlackColor,
        fontSize: 34.sp,
        fontWeight: FontWeight.w400,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: InputBorder.none,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          const Radius.circular(16).r,
        ),
      ),
    );
