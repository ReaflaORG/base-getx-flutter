import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// DialogTheme ▼
///
/// [Color?] backgroundColor: 다이얼로그의 배경 색상입니다.
///
/// [double?] elevation: 다이얼로그의 고도입니다.
///
/// [Color?] shadowColor: 그림자의 색상입니다.
///
/// [Color?] surfaceTintColor: 다이얼로그의 표면 색상입니다.
///
/// [ShapeBorder?] shape: 다이얼로그의 모양(border)입니다.
///
/// [AlignmentGeometry?] alignment: 다이얼로그의 정렬 위치입니다.
///
/// [Color?] iconColor: 아이콘의 색상입니다.
///
/// [TextStyle?] titleTextStyle: 제목 텍스트의 스타일입니다.
///
/// [TextStyle?] contentTextStyle: 내용 텍스트의 스타일입니다.
///
/// [EdgeInsetsGeometry?] actionsPadding: 액션 버튼의 여백입니다.
DialogTheme dialogThemeData() => DialogTheme(
      alignment: Alignment.center,
      actionsPadding: const EdgeInsets.all(15).r,
      iconColor: ColorPath.BlackColor,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      titleTextStyle: TextPath.TextF18W600,
      contentTextStyle: TextPath.TextF16W400.copyWith(
        color: ColorPath.TextGrey1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15).r,
      ),
    );
