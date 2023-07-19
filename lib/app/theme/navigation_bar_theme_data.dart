import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// NavigationBarThemeData ▼
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
NavigationBarThemeData navigationBarThemeData() => NavigationBarThemeData(
      elevation: 0,
      // height: 56.w,
      backgroundColor: Colors.white,
      // shadowColor: Colors.transparent,
      // surfaceTintColor: ColorPath.PrimaryColor,
      indicatorColor: ColorPath.PrimaryColor.withOpacity(0.1),
      // indicatorShape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(
      //     top: Radius.circular(8),
      //   ),
      // ),
      labelTextStyle: MaterialStateProperty.all(
        TextPath.TextF12W400.copyWith(
          color: ColorPath.TextGrey1,
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
