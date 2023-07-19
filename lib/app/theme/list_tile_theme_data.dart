import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ListTileThemeData ▼
///
/// [bool?] dense: 밀집된 체크박스를 사용할지 여부를 결정하는 값입니다.
///
/// [ShapeBorder?] shape: 체크박스의 모양을 정의하는 모양(border)입니다.
///
/// [ListTileStyle?] style: 체크박스와 관련된 ListTile의 스타일입니다.
///
/// [Color?] selectedColor: 선택된 체크박스의 색상입니다.
///
/// [Color?] iconColor: 체크박스 아이콘의 색상입니다.
///
/// [Color?] textColor: 체크박스 텍스트의 색상입니다.
///
/// [TextStyle?] titleTextStyle: 체크박스 제목 텍스트의 스타일입니다.
///
/// [TextStyle?] subtitleTextStyle: 체크박스 부제목 텍스트의 스타일입니다.
///
/// [TextStyle?] leadingAndTrailingTextStyle: 체크박스의 앞뒤 텍스트의 스타일입니다.
///
/// [EdgeInsetsGeometry?] contentPadding: 체크박스 콘텐츠의 여백입니다.
///
/// [Color?] tileColor: 체크박스 타일의 배경 색상입니다.
///
/// [Color?] selectedTileColor: 선택된 체크박스 타일의 배경 색상입니다.
///
/// [double?] horizontalTitleGap: 체크박스 제목과 아이콘 사이의 수평 간격입니다.
///
/// [double?] minVerticalPadding: 최소 수직 패딩입니다.
///
/// [double?] minLeadingWidth: 최소 앞부분 너비입니다.
///
/// [bool?] enableFeedback: 피드백 활성화 여부를 결정하는 값입니다.
///
/// [MaterialStateProperty<MouseCursor?>?] mouseCursor: 체크박스 위에 마우스 커서의 상태를 정의하는 프로퍼티입니다.
///
/// [VisualDensity?] visualDensity: 시각적 밀도를 결정하는 값입니다.
///
/// [ListTileTitleAlignment?] titleAlignment: 체크박스 타일의 제목 정렬을 결정하는 값입니다.
ListTileThemeData listTileThemeData() => ListTileThemeData(
      dense: false,
      horizontalTitleGap: 16.w,
      minVerticalPadding: 8.w,
      // minLeadingWidth: 20.w,
      // tileColor: ColorPath.Border,
      selectedTileColor: ColorPath.PrimaryColor,
      selectedColor: Colors.white,
      iconColor: ColorPath.TextGrey1,
      textColor: ColorPath.TextGrey1,
      titleTextStyle: TextPath.TextF16W500,
      subtitleTextStyle: TextPath.TextF14W400,
      // leadingAndTrailingTextStyle: TextStyle(
      //   color: Colors.red,
      //   fontSize: 14.sp,
      //   fontWeight: FontWeight.w400,
      // ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ).r,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16).r,
      ),
      mouseCursor: MaterialStateProperty.all<MouseCursor>(
        SystemMouseCursors.click,
      ),
      style: ListTileStyle.drawer,
      visualDensity: VisualDensity.standard,
      // titleAlignment: ListTileTitleAlignment.,
    );
