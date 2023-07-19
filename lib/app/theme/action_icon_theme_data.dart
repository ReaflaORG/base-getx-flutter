import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ActionIconThemeData ▼
///
/// [Widget Function(BuildContext)? backButtonIconBuilder]: 뒤로 가기 버튼 아이콘을 생성하는 콜백 함수입니다.
///
/// [Widget Function(BuildContext)? closeButtonIconBuilder]: 닫기 버튼 아이콘을 생성하는 콜백 함수입니다.
///
/// [Widget Function(BuildContext)? drawerButtonIconBuilder]: 드로어 버튼 아이콘을 생성하는 콜백 함수입니다.
///
/// [Widget Function(BuildContext)? endDrawerButtonIconBuilder]: 엔드 드로어 버튼 아이콘을 생성하는 콜백 함수입니다.
ActionIconThemeData actionIconThemeData() => ActionIconThemeData(
      backButtonIconBuilder: (context) => Icon(
        Icons.arrow_back_rounded,
        color: ColorPath.BlackColor,
        size: 22.sp,
      ),
      closeButtonIconBuilder: (context) => Icon(
        Icons.close_rounded,
        color: ColorPath.BlackColor,
        size: 22.sp,
      ),
      drawerButtonIconBuilder: (context) => Icon(
        Icons.menu_rounded,
        color: ColorPath.BlackColor,
        size: 22.sp,
      ),
      endDrawerButtonIconBuilder: (context) => Icon(
        Icons.menu,
        color: ColorPath.BlackColor,
        size: 22.sp,
      ),
    );
