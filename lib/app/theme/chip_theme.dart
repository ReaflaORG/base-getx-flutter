import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';
import 'text_paths.dart';

/// ChipTheme ▼
///
/// [Color?] backgroundColor: Chip 배경의 색상입니다.
///
/// [Color?] deleteIconColor: 삭제 아이콘의 색상입니다.
///
/// [Color?] disabledColor: 비활성화된 Chip의 배경 색상입니다.
///
/// [Color?] selectedColor: 선택된 Chip의 배경 색상입니다.
///
/// [Color?] secondarySelectedColor: 선택된 Chip의 보조 배경 색상입니다.
///
/// [Color?] shadowColor: Chip 그림자의 색상입니다.
///
/// [Color?] surfaceTintColor: Chip의 표면 색상입니다.
///
/// [Color?] selectedShadowColor: 선택된 Chip의 그림자 색상입니다.
///
/// [bool?] showCheckmark: Checkmark를 표시할지 여부입니다.
///
/// [Color?] checkmarkColor: Checkmark의 색상입니다.
///
/// [EdgeInsetsGeometry?] labelPadding: Label의 padding입니다.
///
/// [EdgeInsetsGeometry?] padding: Chip의 padding입니다.
///
/// [BorderSide?] side: Chip의 테두리 선입니다.
///
/// [OutlinedBorder?] shape: Chip의 모양입니다.
///
/// [TextStyle?] labelStyle: Label의 TextStyle입니다.
///
/// [TextStyle?] secondaryLabelStyle: 보조 Label의 TextStyle입니다.
///
/// [Brightness?] brightness: Chip의 밝기 모드입니다.
///
/// [double?] elevation: Chip의 고도입니다.
///
/// [double?] pressElevation: 눌렀을 때 Chip의 고도입니다.
///
/// [IconThemeData?] iconTheme: Icon의 테마 데이터입니다.
ChipThemeData chipThemeData() {
  return ChipThemeData(
    padding: const EdgeInsets.symmetric(
      vertical: 6,
      horizontal: 4,
    ).w,
    selectedColor: ColorPath.PrimaryColor,
    surfaceTintColor: ColorPath.PrimaryColor.withOpacity(0.5),
    secondarySelectedColor: Colors.red,
    secondaryLabelStyle: TextPath().F16W500.copyWith(
          color: Colors.white,
        ),
    checkmarkColor: Colors.white,
    disabledColor: ColorPath.DisabledColor,
    deleteIconColor: ColorPath.PrimaryColor,
    backgroundColor: Colors.white,
    labelStyle: TextPath().F16W500.copyWith(
          color: ColorPath.GreyColor600,
        ),
    iconTheme: IconThemeData(
      color: ColorPath.PrimaryColor,
      size: 20.sp,
    ),
    side: BorderSide(
      color: ColorPath.BorderColor,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15).r,
    ),
  );
}
