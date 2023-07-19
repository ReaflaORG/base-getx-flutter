import 'package:flutter/material.dart';

/// BottomAppBarTheme ▼
///
/// [Color?] color: BottomAppBar의 배경색을 지정합니다.
///
/// [double?] elevation: BottomAppBar의 고도(elevation)를 설정합니다. 고도는 위젯의 그림자 효과를 조절하는 데 사용됩니다.
///
/// [NotchedShape?] shape: BottomAppBar의 모양(shape)을 지정합니다. 이는 BottomAppBar의 notch(노치) 부분의 모양을 변경하는 데 사용됩니다.
///
/// [double?] height: BottomAppBar의 높이를 설정합니다.
///
/// [Color?] surfaceTintColor: BottomAppBar의 표면 색상을 지정합니다. 이는 BottomAppBar의 텍스트 필드와 관련된 색상입니다.
///
/// [Color?] shadowColor: BottomAppBar의 그림자 색상을 지정합니다.
///
/// [EdgeInsetsGeometry?] padding: BottomAppBar의 여백을 지정하는 EdgeInsetsGeometry입니다.
BottomAppBarTheme bottomAppBarThemeData() => BottomAppBarTheme(
      elevation: 0.0,
      // padding: const EdgeInsets.all(8).r,
      color: Colors.white,
    );
