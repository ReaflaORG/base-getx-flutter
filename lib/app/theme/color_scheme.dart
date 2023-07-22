import 'package:flutter/material.dart';

import '../utils/color_hex_convert.dart';
import 'color_paths.dart';

/// ColorScheme ▼
///
/// [required Brightness brightness]: 컬러 스킴의 밝기를 지정합니다.
///
/// [required Color primary]: 주요 색상을 지정합니다.
///
/// [required Color onPrimary]: 주요 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] primaryContainer: 주요 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onPrimaryContainer: 주요 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color secondary]: 보조 색상을 지정합니다.
///
/// [required Color onSecondary]: 보조 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] secondaryContainer: 보조 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onSecondaryContainer: 보조 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] tertiary: 제3 색상을 지정합니다.
///
/// [Color?] onTertiary: 제3 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] tertiaryContainer: 제3 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onTertiaryContainer: 제3 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color error]: 오류 색상을 지정합니다.
///
/// [required Color onError]: 오류 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] errorContainer: 오류 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onErrorContainer: 오류 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color background]: 배경색을 지정합니다.
///
/// [required Color onBackground]: 배경 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color surface]: 서피스 색상을 지정합니다.
///
/// [required Color onSurface]: 서피스 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] surfaceVariant: 서피스 색상의 변형(가장자리 등)을 지정합니다.
///
/// [Color?] onSurfaceVariant: 서피스 색상의 변형 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] outline: 외곽선 색상을 지정합니다.
///
/// [Color?] outlineVariant: 외곽선 색상의 변형을 지정합니다.
///
/// [Color?] shadow: 그림자 색상을 지정합니다.
///
/// [Color?] scrim: 스크림(불투명한 흐리기) 색상을 지정합니다.
///
/// [Color?] inverseSurface: 역전된 서피스 색상을 지정합니다.
///
/// [Color?] onInverseSurface: 역전된 서피스 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] inversePrimary: 역전된 주요 색상을 지정합니다.
///
/// [Color?] surfaceTint: 서피스 색상의 힌트(더 어두운 색상)를 지정합니다.
///
/// [Color?] primaryVariant: 주요 색상의 변형을 지정합니다.
ColorScheme lightColorScheme() => ColorScheme(
      brightness: Brightness.light,
      // #314272
      primary: ColorPath.PrimaryColor,
      // #FFFFFF
      onPrimary: Color('FFFFFF'),
      // #CCE5FF
      primaryContainer: Color('CCE5FF'),
      // #001E31
      onPrimaryContainer: Color('001E31'),
      // #006496
      secondary: Color('006496'),
      // #FFFFFF
      onSecondary: Color('FFFFFF'),
      // #CCE5FF
      secondaryContainer: Color('CCE5FF'),
      // #001E31
      onSecondaryContainer: Color('001E31'),
      // #006496
      tertiary: Color('006496'),
      // #FFFFFF
      onTertiary: Color('FFFFFF'),
      // #CCE5FF
      tertiaryContainer: Color('CCE5FF'),
      // #001E31
      onTertiaryContainer: Color('001E31'),
      // #BA1A1A
      error: Color('BA1A1A'),
      // #FFFFFF
      errorContainer: Color('FFDAD6'),
      // #FFFFFF
      onError: Color('FFFFFF'),
      // #410002
      onErrorContainer: Color('410002'),
      // #F8FDFF
      background: Color('F8FDFF'),
      // #001F25
      onBackground: Color('001F25'),
      // #F8FDFF
      surface: Color('F8FDFF'),
      // #001F25
      onSurface: Color('001F25'),
      // #DEE3EB
      surfaceVariant: Color('DEE3EB'),
      // #42474E
      onSurfaceVariant: Color('42474E'),
      // #72787E
      outline: Color('72787E'),
      // #D6F6FF
      onInverseSurface: Color('D6F6FF'),
      // #00363F
      inverseSurface: Color('00363F'),
      // #91CCFF
      inversePrimary: Color('91CCFF'),
      // #000000
      shadow: Color('000000'),
      // #006496
      surfaceTint: Color('006496'),
      // #C2C7CE
      outlineVariant: Color('C2C7CE'),
      // #000000
      scrim: Color('000000'),
    );

/// DarkColorScheme ▼
///
/// [required Brightness brightness]: 컬러 스킴의 밝기를 지정합니다.
///
/// [required Color primary]: 주요 색상을 지정합니다.
///
/// [required Color onPrimary]: 주요 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] primaryContainer: 주요 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onPrimaryContainer: 주요 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color secondary]: 보조 색상을 지정합니다.
///
/// [required Color onSecondary]: 보조 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] secondaryContainer: 보조 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onSecondaryContainer: 보조 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] tertiary: 제3 색상을 지정합니다.
///
/// [Color?] onTertiary: 제3 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] tertiaryContainer: 제3 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onTertiaryContainer: 제3 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color error]: 오류 색상을 지정합니다.
///
/// [required Color onError]: 오류 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] errorContainer: 오류 색상이 적용된 컨테이너의 배경색을 지정합니다.
///
/// [Color?] onErrorContainer: 오류 색상이 적용된 컨테이너 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color background]: 배경색을 지정합니다.
///
/// [required Color onBackground]: 배경 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [required Color surface]: 서피스 색상을 지정합니다.
///
/// [required Color onSurface]: 서피스 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] surfaceVariant: 서피스 색상의 변형(가장자리 등)을 지정합니다.
///
/// [Color?] onSurfaceVariant: 서피스 색상의 변형 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] outline: 외곽선 색상을 지정합니다.
///
/// [Color?] outlineVariant: 외곽선 색상의 변형을 지정합니다.
///
/// [Color?] shadow: 그림자 색상을 지정합니다.
///
/// [Color?] scrim: 스크림(불투명한 흐리기) 색상을 지정합니다.
///
/// [Color?] inverseSurface: 역전된 서피스 색상을 지정합니다.
///
/// [Color?] onInverseSurface: 역전된 서피스 색상 위에 표시되는 텍스트의 색상을 지정합니다.
///
/// [Color?] inversePrimary: 역전된 주요 색상을 지정합니다.
///
/// [Color?] surfaceTint: 서피스 색상의 힌트(더 어두운 색상)를 지정합니다.
///
/// [Color?] primaryVariant: 주요 색상의 변형을 지정합니다.
ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  // #314272
  primary: ColorPath.PrimaryColor,
  // #003351
  onPrimary: Color('003351'),
  // #004B73
  primaryContainer: Color('004B73'),
  // #CCE5FF
  onPrimaryContainer: Color('CCE5FF'),
  // #91CCFF
  secondary: Color('91CCFF'),
  // #003351
  onSecondary: Color('003351'),
  // #004B73
  secondaryContainer: Color('004B73'),
  // #CCE5FF
  onSecondaryContainer: Color('CCE5FF'),
  // #91CCFF
  tertiary: Color('91CCFF'),
  // #003351
  onTertiary: Color('003351'),
  // #004B73
  tertiaryContainer: Color('004B73'),
  // #CCE5FF
  onTertiaryContainer: Color('CCE5FF'),
  // #FFB4AB
  error: Color('FFB4AB'),
  // #FFFFFF
  errorContainer: Color('93000A'),
  // #FFFFFF
  onError: Color('690005'),
  // #FFDAD6
  onErrorContainer: Color('FFDAD6'),
  // #001F25
  background: Color('001F25'),
  // #A6EEFF
  onBackground: Color('A6EEFF'),
  // #001F25
  surface: Color('001F25'),
  // #A6EEFF
  onSurface: Color('A6EEFF'),
  // #42474E
  surfaceVariant: Color('42474E'),
  // #C2C7CE
  onSurfaceVariant: Color('C2C7CE'),
  // #8C9198
  outline: Color('8C9198'),
  // #001F25
  onInverseSurface: Color('001F25'),
  // #A6EEFF
  inverseSurface: Color('A6EEFF'),
  // #006496
  inversePrimary: Color('006496'),
  // #000000
  shadow: Color('000000'),
  // #91CCFF
  surfaceTint: Color('91CCFF'),
  // #42474E
  outlineVariant: Color('42474E'),
  // #000000
  scrim: Color('000000'),
);
