import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// AppBarTheme ▼
///
/// [Color?] color: AppBar의 색상입니다.
///
/// [Color?] backgroundColor: AppBar의 배경 색상입니다.
///
/// [Color?] foregroundColor: AppBar의 전경 색상입니다.
///
/// [double?] elevation: AppBar의 고도입니다.
///
/// [double?] scrolledUnderElevation: 스크롤시 AppBar가 표시되는 위치의 고도입니다.
///
/// [Color?] shadowColor: 그림자의 색상입니다.
///
/// [Color?] surfaceTintColor: AppBar의 표면 색상입니다.
///
/// [ShapeBorder?] shape: AppBar의 모양입니다.
///
/// [IconThemeData?] iconTheme: AppBar 내 아이콘의 테마 데이터입니다.
///
/// [IconThemeData?] actionsIconTheme: AppBar 내 액션 아이콘의 테마 데이터입니다.
///
/// [bool?] centerTitle: 제목을 가운데 정렬할지 여부입니다.
///
/// [double?] titleSpacing: 제목과 아이콘 간의 간격입니다.
///
/// [double?] toolbarHeight: AppBar의 높이입니다.
///
/// [TextStyle?] toolbarTextStyle: AppBar 내 툴바의 텍스트 스타일입니다.
///
/// [TextStyle?] titleTextStyle: AppBar 제목의 텍스트 스타일입니다.
///
/// [SystemUiOverlayStyle?] systemOverlayStyle: 시스템 오버레이 스타일입니다.
AppBarTheme appBarThemeData() => AppBarTheme(
      scrolledUnderElevation: 0,
      elevation: 0,
      titleSpacing: 0,
      color: Colors.white,
      surfaceTintColor: Colors.red,
      foregroundColor: Colors.white,
      // backgroundColor: Colors.white,
      // toolbarHeight: 56.w,
      iconTheme: IconThemeData(
        color: ColorPath.BlackColor,
        size: 26.sp,
      ),
      actionsIconTheme: IconThemeData(
        color: ColorPath.BlackColor,
        size: 26.sp,
      ),
      titleTextStyle: TextPath.TextF18W600,
      toolbarTextStyle: TextPath.TextF18W500,
    );
