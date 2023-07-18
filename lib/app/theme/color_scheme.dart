import 'package:flutter/material.dart';

import 'color_paths.dart';

/// ColorScheme ▼
///
/// [MaterialColor] primarySwatch: 프라이머리 색상 스웨치입니다.
///
/// [Color?] primaryColorDark: 프라이머리 색상의 어두운 버전입니다.
///
/// [Color?] accentColor: 액센트 색상입니다.
///
/// [Color?] cardColor: 카드 위젯의 배경 색상입니다.
///
/// [Color?] backgroundColor: 배경의 색상입니다.
///
/// [Color?] errorColor: 에러 상태일 때의 색상입니다.
///
/// [Brightness] brightness: 밝기 테마(라이트 또는 다크)입니다.
ColorScheme colorSchemeData() {
  return ColorScheme.fromSwatch(
    primarySwatch: MaterialColor(
      ColorPath.PrimaryColor.value,
      <int, Color>{
        50: ColorPath.PrimaryColor50,
        100: ColorPath.PrimaryColor100,
        200: ColorPath.PrimaryColor200,
        300: ColorPath.PrimaryColor300,
        400: ColorPath.PrimaryColor400,
        500: ColorPath.PrimaryColor500,
        600: ColorPath.PrimaryColor600,
        700: ColorPath.PrimaryColor700,
        800: ColorPath.PrimaryColor800,
        900: ColorPath.PrimaryColor900,
      },
    ),
    primaryColorDark: ColorPath.PrimaryDarkColor,
    // accentColor: Colors.blueAccent,
    // cardColor: Colors.white,
    backgroundColor: Colors.white,
    errorColor: Colors.red,
    // brightness: Brightness.light,
  );
}
