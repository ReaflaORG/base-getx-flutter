import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// SnackBarThemeData ▼
///
/// [Color?] backgroundColor: 스낵바의 배경 색상입니다.
///
/// [Color?] actionTextColor: 액션 텍스트의 색상입니다.
///
/// [Color?] disabledActionTextColor: 비활성화된 액션 텍스트의 색상입니다.
///
/// [TextStyle?] contentTextStyle: 스낵바 콘텐츠의 텍스트 스타일입니다.
///
/// [double?] elevation: 스낵바의 고도입니다.
///
/// [ShapeBorder?] shape: 스낵바의 모양입니다.
///
/// [SnackBarBehavior?] behavior: 스낵바의 동작 방식입니다.
///
/// [double?] width: 스낵바의 너비입니다.
///
/// [EdgeInsets?] insetPadding: 스낵바의 안쪽 여백입니다.
///
/// [bool?] showCloseIcon: 닫기 아이콘을 표시할지 여부입니다.
///
/// [Color?] closeIconColor: 닫기 아이콘의 색상입니다.
///
/// [double?] actionOverflowThreshold: 액션 버튼이 오버플로우될 임계값입니다.
///
/// [Color?] actionBackgroundColor: 액션 버튼의 배경 색상입니다.
///
/// [Color?] disabledActionBackgroundColor: 비활성화된 액션 버튼의 배경 색상입니다.
SnackBarThemeData snackBarThemeData() => SnackBarThemeData(
      // elevation: 0,
      // showCloseIcon: true,
      actionOverflowThreshold: 1,
      // insetPadding: const EdgeInsets.all(16).r,
      // width: 1.sw,
      backgroundColor: Colors.black.withOpacity(0.9),
      // backgroundColor: ColorPath.PrimaryColor.withOpacity(0.8),
      actionTextColor: Colors.white,
      actionBackgroundColor: Colors.transparent,
      closeIconColor: ColorPath.BlackColor,
      disabledActionTextColor: ColorPath.TextGrey2,
      disabledActionBackgroundColor: Colors.transparent,
      contentTextStyle: TextPath.TextF14W400.copyWith(
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16).r,
      ),
      behavior: SnackBarBehavior.floating,
    );
