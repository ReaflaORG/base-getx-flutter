import 'package:flutter/material.dart';

import 'color_paths.dart';
import 'text_paths.dart';

/// BottomNavigationBarThemeData ▼
///
/// BottomNavigationBar는 일반적으로 화면 하단에 위치하는 탭형식의 네비게이션 바를 의미합니다.
/// 앱의 다양한 섹션 또는 화면 간의 전환을 위한 탭을 제공하며, 일반적으로 아이콘과 텍스트 라벨을 함께 표시합니다.
/// 사용자가 탭을 선택하여 해당 섹션으로 이동할 수 있습니다. 주로 BottomNavigationBar 위젯을 사용하여 구현됩니다.
///
/// [Color?] backgroundColor: 네비게이션 바의 배경색을 지정합니다.
///
/// [double?] elevation: 네비게이션 바의 고도(elevation)를 설정합니다. 고도는 위젯의 그림자 효과를 조절하는 데 사용됩니다.
///
/// [IconThemeData?] selectedIconTheme: 선택된 아이콘의 테마를 지정합니다.
///
/// [IconThemeData?] unselectedIconTheme: 선택되지 않은 아이콘의 테마를 지정합니다.
///
/// [Color?] selectedItemColor: 선택된 아이템의 색상을 지정합니다.
///
/// [Color?] unselectedItemColor: 선택되지 않은 아이템의 색상을 지정합니다.
///
/// [TextStyle?] selectedLabelStyle: 선택된 아이템의 라벨 텍스트 스타일을 지정합니다.
///
/// [TextStyle?] unselectedLabelStyle: 선택되지 않은 아이템의 라벨 텍스트 스타일을 지정합니다.
///
/// [bool?] showSelectedLabels: 선택된 아이템의 라벨을 표시할지 여부를 지정합니다.
///
/// [bool?] showUnselectedLabels: 선택되지 않은 아이템의 라벨을 표시할지 여부를 지정합니다.
///
/// [BottomNavigationBarType?] type: 네비게이션 바의 타입을 지정합니다.
///
/// [bool?] enableFeedback: 피드백 기능을 활성화할지 여부를 지정합니다.
///
/// [BottomNavigationBarLandscapeLayout?] landscapeLayout: 가로 방향 레이아웃을 지정합니다.
///
/// [MaterialStateProperty<MouseCursor?>?] mouseCursor: 마우스 커서를 지정합니다.
BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return BottomNavigationBarThemeData(
    elevation: 10,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    // enableFeedback: true,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedIconTheme: const IconThemeData(),
    unselectedIconTheme: const IconThemeData(),
    selectedItemColor: ColorPath.PrimaryColor,
    unselectedItemColor: ColorPath.GreyColor500,
    selectedLabelStyle: TextPath().F12Bold,
    unselectedLabelStyle: TextPath().F12Bold,
    landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    mouseCursor: MaterialStateProperty.all<MouseCursor>(
      SystemMouseCursors.click,
    ),
  );
}
