import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';
import 'text_paths.dart';

/// NavigationBarThemeData ▼
///
/// NavigationBar는 일반적으로 화면 상단에 위치하는 네비게이션 바를 의미합니다.
/// 일반적으로 App Bar라고도 불리며, 앱의 제목, 액션 버튼, 뒤로 가기 버튼 등을 포함할 수 있습니다.
/// 사용자에게 현재 화면이나 앱의 상태를 알려주는 역할을 합니다. 주로 AppBar 위젯을 사용하여 구현됩니다.
///
/// [double?] height: 네비게이션 바의 높이를 지정합니다.
///
/// [Color?] backgroundColor: 네비게이션 바의 배경색을 지정합니다.
///
/// [double?] elevation: 네비게이션 바의 고도(elevation)를 설정합니다. 고도는 위젯의 그림자 효과를 조절하는 데 사용됩니다.
///
/// [Color?] shadowColor: 네비게이션 바의 그림자 색상을 지정합니다.
///
/// [Color?] surfaceTintColor: 네비게이션 바의 표면 색상을 지정합니다. 이는 네비게이션 바의 텍스트와 아이콘과 관련된 색상입니다.
///
/// [Color?] indicatorColor: 선택된 항목의 표시기 색상을 지정합니다. 선택된 항목이 표시되는 데 사용됩니다.
///
/// [ShapeBorder?] indicatorShape: 선택된 항목의 표시기 모양(shape)을 지정합니다.
///
/// [MaterialStateProperty<TextStyle?>?] labelTextStyle: 네비게이션 바 항목의 라벨 텍스트 스타일을 지정합니다.
///
/// [MaterialStateProperty<IconThemeData?>?] iconTheme: 네비게이션 바 항목의 아이콘 테마를 지정합니다.
///
/// [NavigationDestinationLabelBehavior?] labelBehavior: 네비게이션 바 항목의 라벨 표시 동작을 지정합니다.
NavigationBarThemeData navigationBarThemeData() {
  return NavigationBarThemeData(
    elevation: 0,
    // height: 56.w,
    backgroundColor: Colors.white,
    // shadowColor: Colors.transparent,
    // surfaceTintColor: ColorPath.PrimaryColor,
    indicatorColor: ColorPath.PrimaryColor.withOpacity(0.1),
    // indicatorShape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.vertical(
    //     top: Radius.circular(8).r,
    //   ),
    // ),
    labelTextStyle: MaterialStateProperty.all(
      TextPath().F12W400.copyWith(
            color: ColorPath.GreyColor600,
          ),
    ),
    iconTheme: MaterialStateProperty.all(
      IconThemeData(
        size: 24.sp,
        color: ColorPath.BlackColor,
      ),
    ),
    labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
  );
}
