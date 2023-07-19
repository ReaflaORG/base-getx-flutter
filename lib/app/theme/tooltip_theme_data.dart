import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// TooltipThemeData ▼
///
/// [double?] height: ToolTip 위젯의 높이입니다.
///
/// [EdgeInsetsGeometry?] padding: ToolTip 내용의 여백입니다.
///
/// [EdgeInsetsGeometry?] margin: ToolTip 위젯의 외부 여백입니다.
///
/// [double?] verticalOffset: ToolTip 위젯의 수직 오프셋입니다.
///
/// [bool?] preferBelow: ToolTip을 아래에 표시할지 여부를 지정합니다.
///
/// [bool?] excludeFromSemantics: ToolTip을 음성 지원에서 제외할지 여부를 지정합니다.
///
/// [Decoration?] decoration: ToolTip의 배경 장식입니다.
///
/// [TextStyle?] textStyle: ToolTip 내용의 텍스트 스타일입니다.
///
/// [TextAlign?] textAlign: ToolTip 내용의 텍스트 정렬 방식입니다.
///
/// [Duration?] waitDuration: ToolTip을 표시하기 전 대기하는 시간입니다.
///
/// [Duration?] showDuration: ToolTip이 표시되는 기간입니다.
///
/// [TooltipTriggerMode?] triggerMode: ToolTip이 트리거되는 방식입니다.
///
/// [bool?] enableFeedback: ToolTip의 피드백 활성화 여부를 지정합니다.
TooltipThemeData tooltipThemeData() => TooltipThemeData(
      preferBelow: false,
      excludeFromSemantics: false,
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ).r,
      // padding: const EdgeInsets.symmetric(
      //   horizontal: 16.0,
      //   vertical: 8.0,
      // ).r,
      // height: 32.0.w,
      verticalOffset: 24.0.w,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.9),
        borderRadius: BorderRadius.circular(8.0).r,
      ),
      textStyle: TextPath.TextF14W400.copyWith(
        color: Colors.white,
      ),
      waitDuration: const Duration(milliseconds: 1000),
      showDuration: const Duration(milliseconds: 4000),
      textAlign: TextAlign.center,
      // triggerMode: TooltipTriggerMode.tap,
    );
