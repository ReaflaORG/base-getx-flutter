import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// InputDecoration ▼
///
/// [TextStyle?] labelStyle: 라벨의 텍스트 스타일입니다.
///
/// [TextStyle?] floatingLabelStyle: 부동 라벨의 텍스트 스타일입니다.
///
/// [TextStyle?] helperStyle: 헬퍼 텍스트의 스타일입니다.
///
/// [int?] helperMaxLines: 헬퍼 텍스트의 최대 줄 수입니다.
///
/// [TextStyle?] hintStyle: 힌트 텍스트의 스타일입니다.
///
/// [TextStyle?] errorStyle: 오류 텍스트의 스타일입니다.
///
/// [int?] errorMaxLines: 오류 텍스트의 최대 줄 수입니다.
///
/// [FloatingLabelBehavior] floatingLabelBehavior: 부동 라벨의 동작 방식입니다.
///
/// [FloatingLabelAlignment] floatingLabelAlignment: 부동 라벨의 정렬 방식입니다.
///
/// [bool] isDense: 위젯이 조밀한 모드인지 여부입니다.
///
/// [EdgeInsetsGeometry?] contentPadding: 입력 내용의 패딩입니다.
///
/// [bool] isCollapsed: 위젯이 축소된 모드인지 여부입니다.
///
/// [Color?] iconColor: 아이콘의 색상입니다.
///
/// [TextStyle?] prefixStyle: 접두사의 텍스트 스타일입니다.
///
/// [Color?] prefixIconColor: 접두사 아이콘의 색상입니다.
///
/// [TextStyle?] suffixStyle: 접미사의 텍스트 스타일입니다.
///
/// [Color?] suffixIconColor: 접미사 아이콘의 색상입니다.
///
/// [TextStyle?] counterStyle: 카운터의 텍스트 스타일입니다.
///
/// [bool] filled: 입력 필드가 채워진 모드인지 여부입니다.
///
/// [Color?] fillColor: 입력 필드의 배경 색상입니다.
///
/// [BorderSide?] activeIndicatorBorder: 활성 상태 표시기의 테두리 색상입니다.
///
/// [BorderSide?] outlineBorder: 외곽선의 테두리 색상입니다.
///
/// [Color?] focusColor: 입력 필드에 포커스가 있는 동안의 색상입니다.
///
/// [Color?] hoverColor: 입력 필드에 마우스 호버가 있는 동안의 색상입니다.
///
/// [InputBorder?] errorBorder: 오류 발생 시의 테두리입니다.
///
/// [InputBorder?] focusedBorder: 입력 필드에 포커스가 있는 동안의 테두리입니다.
///
/// [InputBorder?] focusedErrorBorder: 입력 필드에 오류가 있고 포커스가 있는 동안의 테두리입니다.
///
/// [InputBorder?] disabledBorder: 비활성화된 입력 필드의 테두리입니다.
///
/// [InputBorder?] enabledBorder: 활성화된 입력 필드의 테두리입니다.
///
/// [InputBorder?] border: 입력 필드의 테두리입니다.
///
/// [bool] alignLabelWithHint: 라벨을 힌트와 정렬할지 여부입니다.
InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    helperMaxLines: 1,
    errorMaxLines: 2,
    filled: false,
    isDense: false,
    isCollapsed: false,
    // alignLabelWithHint: false,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 14,
    ).r,
    fillColor: ColorPath.BorderColor,
    labelStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.GreyColor300,
    ),
    hintStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.GreyColor300,
    ),
    helperStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.GreyColor300,
    ),
    prefixStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.GreyColor300,
    ),
    suffixStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.GreyColor300,
    ),
    counterStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.GreyColor300,
    ),
    floatingLabelStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.PrimaryColor,
    ),
    errorStyle: TextPath.TextF16W500.copyWith(
      color: ColorPath.ErrorColor.withOpacity(0.7),
    ),
    iconColor: ColorPath.GreyColor400,
    prefixIconColor: ColorPath.GreyColor400,
    suffixIconColor: ColorPath.GreyColor400,
    hoverColor: ColorPath.PrimaryColor,
    focusColor: ColorPath.PrimaryColor,
    // border: UnderlineInputBorder(
    //   borderSide: BorderSide(
    //     color: ColorPath.BorderColor,
    //     width: 2.w,
    //   ),
    // ),
    // activeIndicatorBorder: BorderSide(
    //   color: Colors.red,
    //   width: 2.w,
    // ),
    // outlineBorder: BorderSide(
    //   color: Colors.red,
    //   width: 2.w,
    // ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorPath.BorderColor,
        width: 1.w,
      ),
    ),
    // * UnderlineInputBorder의 경우 SearchBar 위젯에도 영향이 간다.
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorPath.PrimaryColor,
        width: 1.w,
      ),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorPath.GreyColor200,
        width: 1.w,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorPath.ErrorColor.withOpacity(0.7),
        width: 1.w,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorPath.ErrorColor,
        width: 1.w,
      ),
    ),
  );
}
