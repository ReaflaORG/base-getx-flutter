import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ScrollbarThemeData ▼
///
/// [MaterialStateProperty<double?>?] elevation: 스크롤바의 고도를 정의하는 속성입니다.
///
/// [MaterialStateProperty<Color?>?] backgroundColor: 스크롤바의 배경 색상을 정의하는 속성입니다.
///
/// [MaterialStateProperty<Color?>?] shadowColor: 스크롤바의 그림자 색상을 정의하는 속성입니다.
///
/// [MaterialStateProperty<Color?>?] surfaceTintColor: 스크롤바의 표면 색상을 정의하는 속성입니다.
///
/// [MaterialStateProperty<Color?>?] overlayColor: 스크롤바 위에 오버레이 색상을 정의하는 속성입니다.
///
/// [MaterialStateProperty<BorderSide?>?] side: 스크롤바의 테두리를 정의하는 속성입니다.
///
/// [MaterialStateProperty<OutlinedBorder?>?] shape: 스크롤바의 모양을 정의하는 속성입니다.
///
/// [MaterialStateProperty<EdgeInsetsGeometry?>?] padding: 스크롤바의 여백을 정의하는 속성입니다.
///
/// [MaterialStateProperty<TextStyle?>?] textStyle: 스크롤바의 텍스트 스타일을 정의하는 속성입니다.
///
/// [MaterialStateProperty<TextStyle?>?] hintStyle: 스크롤바의 힌트 텍스트 스타일을 정의하는 속성입니다.
///
/// [BoxConstraints?] constraints: 스크롤바의 제약 조건을 정의하는 속성입니다.
SearchBarThemeData searchBarThemeData() => SearchBarThemeData(
      // *Focus 일때 Underline이 생기는 것은 input_decoration_theme.dart 에서 정의 된다.
      elevation: MaterialStateProperty.all<double>(
        0,
      ),
      // constraints: BoxConstraints(
      //   minHeight: 48.0.w,
      // ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(
          horizontal: 8.0,
        ).r,
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      shadowColor: MaterialStateProperty.all<Color>(
        Colors.transparent,
      ),
      surfaceTintColor: MaterialStateProperty.all<Color>(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextPath.TextF16W400,
      ),
      hintStyle: MaterialStateProperty.all<TextStyle>(
        TextPath.TextF16W500.copyWith(
          color: ColorPath.TextGrey2,
        ),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide.none,
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16).r,
        ),
      ),
    );
