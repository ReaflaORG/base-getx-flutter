import 'package:flutter/material.dart';

import 'color_paths.dart';

/// RadioTheme ▼
///
/// [MouseCursor?] mouseCursor: 버튼 위에 마우스 커서의 모양입니다.
///
/// [Color?] fillColor: 버튼의 배경 색상입니다.
///
/// [Color?] overlayColor: 버튼의 오버레이 색상입니다.
///
/// [double?] splashRadius: 터치 효과의 반지름입니다.
///
/// [MaterialTapTargetSize?] materialTapTargetSize: 버튼의 탭 대상 크기입니다.
///
/// [VisualDensity?] visualDensity: 버튼의 시각적 밀도입니다.
RadioThemeData radioThemeData() {
  return RadioThemeData(
    fillColor: MaterialStateProperty.all<Color>(
      ColorPath.PrimaryColor,
    ),
    overlayColor: MaterialStateProperty.all<Color>(
      ColorPath.PrimaryColor.withOpacity(0.2),
    ),
    // splashRadius: 16.w,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    visualDensity: VisualDensity.compact,
  );
}
