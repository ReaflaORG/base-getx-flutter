import 'package:flutter/material.dart';

import 'color_paths.dart';

/// SliderThemeData ▼
///
/// [MaterialStateProperty<Color?>?] thumbColor: 슬라이더의 썸(thumb) 색상입니다.
///
/// [MaterialStateProperty<Color?>?] trackColor: 슬라이더의 트랙(track) 색상입니다.
///
/// [MaterialStateProperty<Color?>?] trackOutlineColor: 슬라이더 트랙의 외곽선 색상입니다.
///
/// [MaterialTapTargetSize?] materialTapTargetSize: 슬라이더의 탭 대상 크기입니다.
///
/// [MaterialStateProperty<MouseCursor?>?] mouseCursor: 슬라이더 위에서 마우스 커서의 모양입니다.
///
/// [MaterialStateProperty<Color?>?] overlayColor: 슬라이더 위에 오버레이 색상입니다.
///
/// [double?] splashRadius: 슬라이더 터치 시 발생하는 터치 효과의 반지름입니다.
///
/// [MaterialStateProperty<Icon?>?] thumbIcon: 슬라이더의 썸(thumb) 아이콘입니다.
SwitchThemeData switchThemeData() {
  return SwitchThemeData(
    // thumbColor: MaterialStateProperty.all<Color>(
    //   Colors.white,
    // ),
    // trackColor: MaterialStateProperty.all<Color>(
    //   ColorPath.PrimaryColor,
    // ),
    trackOutlineColor: MaterialStateProperty.all<Color>(
      ColorPath.GreyColor300,
    ),
    // overlayColor: MaterialStateProperty.all<Color>(ColorPath.PrimaryColor),
    // splashRadius: 0.0,
    materialTapTargetSize: MaterialTapTargetSize.padded,
  );
}
