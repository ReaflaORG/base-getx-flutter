import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// MaterialBannerTheme ▼
///
/// [Color?] backgroundColor: 배너의 배경 색상입니다.
///
/// [Color?] surfaceTintColor: 배너의 표면 색상입니다.
///
/// [Color?] shadowColor: 그림자의 색상입니다.
///
/// [Color?] dividerColor: 배너 내 구분선의 색상입니다.
///
/// [TextStyle?] contentTextStyle: 배너의 콘텐츠 텍스트 스타일입니다.
///
/// [double?] elevation: 배너의 고도입니다.
///
/// [EdgeInsetsGeometry?] padding: 배너의 여백입니다.
///
/// [EdgeInsetsGeometry?] leadingPadding: 배너의 leading 위젯의 여백입니다.
MaterialBannerThemeData materialBannerThemeData() => MaterialBannerThemeData(
      elevation: 0,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ).r,
      // dividerColor: Colors.white,
      backgroundColor: ColorPath.PrimaryColor.withOpacity(0.1),
      surfaceTintColor: ColorPath.PrimaryColor,
      contentTextStyle: TextStyle(
        color: ColorPath.BlackColor,
        fontSize: 16.sp,
      ),
    );
