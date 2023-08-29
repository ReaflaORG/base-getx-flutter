import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ExpansionTileThemeData ▼
///
/// [Color?] backgroundColor: 확장 타일의 배경색을 지정합니다.
///
/// [Color?] collapsedBackgroundColor: 축소된 상태의 확장 타일의 배경색을 지정합니다.
///
/// [EdgeInsetsGeometry?] tilePadding: 확장 타일 내용 영역의 여백을 지정합니다.
///
/// [AlignmentGeometry?] expandedAlignment: 확장된 상태에서 확장 타일 내용의 정렬을 지정합니다.
///
/// [EdgeInsetsGeometry?] childrenPadding: 확장 타일 내의 자식 요소들의 여백을 지정합니다.
///
/// [Color?] iconColor: 확장 타일의 아이콘 색상을 지정합니다.
///
/// [Color?] collapsedIconColor: 축소된 상태에서의 확장 타일의 아이콘 색상을 지정합니다.
///
/// [Color?] textColor: 확장 타일 내의 텍스트 색상을 지정합니다.
///
/// [Color?] collapsedTextColor: 축소된 상태에서의 확장 타일의 텍스트 색상을 지정합니다.
///
/// [ShapeBorder?] shape: 확장된 상태의 확장 타일의 모양(shape)을 지정합니다.
///
/// [ShapeBorder?] collapsedShape: 축소된 상태의 확장 타일의 모양(shape)을 지정합니다.
///
/// [Clip?] clipBehavior: 확장 타일의 클리핑(잘라내기) 동작을 지정합니다.
ExpansionTileThemeData expansionTileThemeData() {
  return ExpansionTileThemeData(
    expandedAlignment: Alignment.centerLeft,
    tilePadding: const EdgeInsets.symmetric(horizontal: 16).w,
    childrenPadding: const EdgeInsets.symmetric(horizontal: 16).w,
    textColor: ColorPath.BlackColor,
    collapsedTextColor: ColorPath.BlackColor,
    iconColor: ColorPath.GreyColor600,
    collapsedIconColor: ColorPath.GreyColor600,
    backgroundColor: Colors.white,
    collapsedBackgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8).r,
    ),
    collapsedShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8).r,
    ),
  );
}
