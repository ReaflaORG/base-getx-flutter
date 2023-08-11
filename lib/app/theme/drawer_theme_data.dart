import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// DrawerThemeData ▼
///
/// [Color?] backgroundColor: 드로어의 배경 색상입니다.
///
/// [Color?] scrimColor: 드로어가 열릴 때 표시되는 스크림 색상입니다.
///
/// [double?] elevation: 드로어의 고도입니다.
///
/// [Color?] shadowColor: 드로어의 그림자 색상입니다.
///
/// [Color?] surfaceTintColor: 드로어의 표면 색상입니다.
///
/// [ShapeBorder?] shape: 드로어의 모양입니다.
///
/// [ShapeBorder?] endShape: 드로어가 열릴 때의 끝 부분 모양입니다.
///
/// [double?] width: 드로어의 너비입니다.
DrawerThemeData drawerThemeData() => DrawerThemeData(
      elevation: 0,
      width: 320.w,
      scrimColor: Colors.transparent,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      backgroundColor: ColorPath.BorderColor,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ).r,
      ),
      endShape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ).r,
      ),
    );
