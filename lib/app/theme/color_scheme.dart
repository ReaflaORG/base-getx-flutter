import 'package:flutter/material.dart';

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
ColorScheme lightColorScheme() => const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF006496),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFCCE5FF),
      onPrimaryContainer: Color(0xFF001E31),
      secondary: Color(0xFF006496),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFCCE5FF),
      onSecondaryContainer: Color(0xFF001E31),
      tertiary: Color(0xFF006496),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFCCE5FF),
      onTertiaryContainer: Color(0xFF001E31),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFF8FDFF),
      onBackground: Color(0xFF001F25),
      surface: Color(0xFFF8FDFF),
      onSurface: Color(0xFF001F25),
      surfaceVariant: Color(0xFFDEE3EB),
      onSurfaceVariant: Color(0xFF42474E),
      outline: Color(0xFF72787E),
      onInverseSurface: Color(0xFFD6F6FF),
      inverseSurface: Color(0xFF00363F),
      inversePrimary: Color(0xFF91CCFF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF006496),
      outlineVariant: Color(0xFFC2C7CE),
      scrim: Color(0xFF000000),
    );

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
ColorScheme darkColorScheme = const ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF91CCFF),
  onPrimary: Color(0xFF003351),
  primaryContainer: Color(0xFF004B73),
  onPrimaryContainer: Color(0xFFCCE5FF),
  secondary: Color(0xFF91CCFF),
  onSecondary: Color(0xFF003351),
  secondaryContainer: Color(0xFF004B73),
  onSecondaryContainer: Color(0xFFCCE5FF),
  tertiary: Color(0xFF91CCFF),
  onTertiary: Color(0xFF003351),
  tertiaryContainer: Color(0xFF004B73),
  onTertiaryContainer: Color(0xFFCCE5FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F25),
  onBackground: Color(0xFFA6EEFF),
  surface: Color(0xFF001F25),
  onSurface: Color(0xFFA6EEFF),
  surfaceVariant: Color(0xFF42474E),
  onSurfaceVariant: Color(0xFFC2C7CE),
  outline: Color(0xFF8C9198),
  onInverseSurface: Color(0xFF001F25),
  inverseSurface: Color(0xFFA6EEFF),
  inversePrimary: Color(0xFF006496),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF91CCFF),
  outlineVariant: Color(0xFF42474E),
  scrim: Color(0xFF000000),
);
