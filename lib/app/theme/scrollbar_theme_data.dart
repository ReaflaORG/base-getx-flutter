import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ScrollbarThemeData ▼
///
/// [MaterialStateProperty<bool?>?] thumbVisibility: 스크롤바 썸의 가시성을 제어하는 속성입니다.
///
/// [MaterialStateProperty<double?>?] thickness: 스크롤바의 두께를 제어하는 속성입니다.
///
/// [MaterialStateProperty<bool?>?] trackVisibility: 스크롤바 트랙의 가시성을 제어하는 속성입니다.
///
/// [Radius?] radius: 스크롤바 모서리의 반지름을 지정하는 속성입니다.
///
/// [MaterialStateProperty<Color?>?] thumbColor: 스크롤바 썸의 색상을 지정하는 속성입니다.
///
/// [MaterialStateProperty<Color?>?] trackColor: 스크롤바 트랙의 색상을 지정하는 속성입니다.
///
/// [MaterialStateProperty<Color?>?] trackBorderColor: 스크롤바 트랙의 테두리 색상을 지정하는 속성입니다.
///
/// [double?] crossAxisMargin: 스크롤바의 교차 축 여백을 지정하는 속성입니다.
///
/// [double?] mainAxisMargin: 스크롤바의 주 축 여백을 지정하는 속성입니다.
///
/// [double?] minThumbLength: 스크롤바 썸의 최소 길이를 지정하는 속성입니다.
///
/// [bool?] interactive: 스크롤바를 상호 작용 가능하도록 설정하는 속성입니다.
///
/// [bool?] isAlwaysShown: 스크롤바를 항상 표시하는 속성입니다.
///
/// [bool?] showTrackOnHover: 스크롤바 트랙을 마우스 호버시에만 표시하는 속성입니다.
ScrollbarThemeData scrollbarThemeData() {
  return ScrollbarThemeData(
    interactive: true,
    thumbVisibility: MaterialStateProperty.all<bool>(
      true,
    ),
    trackVisibility: MaterialStateProperty.all<bool>(
      true,
    ),
    thumbColor: MaterialStateProperty.all<Color>(
      ColorPath.PrimaryColor,
    ),
    trackColor: MaterialStateProperty.all<Color>(
      ColorPath.PrimaryColor.withOpacity(0.2),
    ),
    trackBorderColor: MaterialStateProperty.all<Color>(
      ColorPath.PrimaryColor.withOpacity(0.2),
    ),
    thickness: MaterialStateProperty.all<double>(
      6.0.w,
    ),
    // crossAxisMargin: 2.0.w,
    // mainAxisMargin: 8.0.w,
    // minThumbLength: 24.0.w,
    radius: const Radius.circular(16).r,
  );
}
