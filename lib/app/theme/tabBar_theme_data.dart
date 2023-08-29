import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';
import 'text_paths.dart';

/// TabBarTheme ▼
///
/// [Decoration?] indicator: 선택된 탭 아래에 표시되는 장식입니다.
///
/// [Color?] indicatorColor: 선택된 탭 아래의 장식의 색상입니다.
///
/// [TabBarIndicatorSize?] indicatorSize: 선택된 탭 아래의 장식의 크기입니다.
///
/// [Color?] dividerColor: 탭 사이의 구분선의 색상입니다.
///
/// [Color?] labelColor: 선택된 탭의 라벨 색상입니다.
///
/// [EdgeInsetsGeometry?] labelPadding: 탭 라벨의 여백입니다.
///
/// [TextStyle?] labelStyle: 선택된 탭의 라벨 텍스트 스타일입니다.
///
/// [Color?] unselectedLabelColor: 선택되지 않은 탭의 라벨 색상입니다.
///
/// [TextStyle?] unselectedLabelStyle: 선택되지 않은 탭의 라벨 텍스트 스타일입니다.
///
/// [MaterialStateProperty<Color?>?] overlayColor: 탭 위에 표시되는 오버레이의 색상입니다.
///
/// [InteractiveInkFeatureFactory?] splashFactory: 탭 터치 시 생성되는 스플래시 효과를 커스터마이즈하는 팩토리입니다.
///
/// [MaterialStateProperty<MouseCursor?>?] mouseCursor: 탭 위에 마우스 커서의 상태를 정의하는 프로퍼티입니다.
TabBarTheme tabBarThemeData() {
  return TabBarTheme(
    labelColor: ColorPath.PrimaryColor,
    // F16W600으로 할지 고민중
    labelStyle: TextPath().F16W500,
    unselectedLabelColor: ColorPath.GreyColor700,
    // F16W600으로 할지 고민중
    unselectedLabelStyle: TextPath().F16W500,
    // overlayColor: MaterialStateProperty.all<Color>(
    //   ColorPath.PrimaryColor.withOpacity(0.1),
    // ),
    dividerColor: ColorPath.BorderColor,
    indicatorColor: ColorPath.PrimaryColor,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: ColorPath.PrimaryColor,
          width: 2.w,
        ),
      ),
    ),
  );
}
