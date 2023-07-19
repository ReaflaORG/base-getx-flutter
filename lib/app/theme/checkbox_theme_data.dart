import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// CheckboxTheme ▼
///
/// [MaterialStateProperty<MouseCursor?>?] mouseCursor: 체크박스 위에 마우스 커서의 상태를 정의하는 프로퍼티입니다.
///
/// [MaterialStateProperty<Color?>?] fillColor: 체크박스의 채우기 색상을 정의하는 프로퍼티입니다.
///
/// [MaterialStateProperty<Color?>?] checkColor: 체크박스의 체크 마크 색상을 정의하는 프로퍼티입니다.
///
/// [MaterialStateProperty<Color?>?] overlayColor: 체크박스 위에 표시되는 오버레이 색상을 정의하는 프로퍼티입니다.
///
/// [double?] splashRadius: 체크박스 터치 시 생성되는 스플래시 반지름입니다.
///
/// [MaterialTapTargetSize?] materialTapTargetSize: 체크박스의 탭 대상 크기를 정의하는 프로퍼티입니다.
///
/// [VisualDensity?] visualDensity: 체크박스의 시각적 밀도를 정의하는 프로퍼티입니다.
///
/// [OutlinedBorder?] shape: 체크박스의 외곽선 모양을 정의하는 프로퍼티입니다.
///
/// [BorderSide?] side: 체크박스의 외곽선을 정의하는 프로퍼티입니다.
CheckboxThemeData checkboxThemeData() => CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color?>(ColorPath.PrimaryColor),
      checkColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      mouseCursor: MaterialStateProperty.all<MouseCursor?>(MouseCursor.defer),
      // splashRadius: 0.0,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      // visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0).r,
      ),
      side: BorderSide(
        color: const Color(0xFFD1D5DB),
        width: 1.5.w,
      ),
    );
