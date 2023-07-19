import 'package:flutter/material.dart';

import 'color_paths.dart';

/// TextSelectionThemeData ▼
///
/// [Color?] cursorColor: 텍스트 커서의 색상을 지정합니다.
///
/// [Color?] selectionColor: 텍스트 선택 영역의 배경색을 지정합니다.
///
/// [Color?] selectionHandleColor: 텍스트 선택 핸들의 색상을 지정합니다.
TextSelectionThemeData textSelectionThemeData() => TextSelectionThemeData(
      cursorColor: ColorPath.PrimaryColor,
      selectionColor: ColorPath.PrimaryColor.withOpacity(0.3),
      selectionHandleColor: ColorPath.PrimaryColor,
    );
