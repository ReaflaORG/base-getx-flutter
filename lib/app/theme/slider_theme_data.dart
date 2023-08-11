import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// SliderThemeData ▼
///
/// [double?] trackHeight: 슬라이더의 트랙 높이입니다.
///
/// [Color?] activeTrackColor: 활성 상태의 트랙 색상입니다.
///
/// [Color?] inactiveTrackColor: 비활성 상태의 트랙 색상입니다.
///
/// [Color?] secondaryActiveTrackColor: 보조 활성 상태의 트랙 색상입니다.
///
/// [Color?] disabledActiveTrackColor: 비활성 상태의 활성 트랙 색상입니다.
///
/// [Color?] disabledInactiveTrackColor: 비활성 상태의 비활성 트랙 색상입니다.
///
/// [Color?] disabledSecondaryActiveTrackColor: 비활성 상태의 보조 활성 트랙 색상입니다.
///
/// [Color?] activeTickMarkColor: 활성 상태의 틱 마크 색상입니다.
///
/// [Color?] inactiveTickMarkColor: 비활성 상태의 틱 마크 색상입니다.
///
/// [Color?] disabledActiveTickMarkColor: 비활성 상태의 활성 틱 마크 색상입니다.
///
/// [Color?] disabledInactiveTickMarkColor: 비활성 상태의 비활성 틱 마크 색상입니다.
///
/// [Color?] thumbColor: 슬라이더 썸(thumb) 색상입니다.
///
/// [Color?] overlappingShapeStrokeColor: 겹치는 모양의 테두리 색상입니다.
///
/// [Color?] disabledThumbColor: 비활성 상태의 썸(thumb) 색상입니다.
///
/// [Color?] overlayColor: 오버레이 색상입니다.
///
/// [Color?] valueIndicatorColor: 값 표시기 색상입니다.
///
/// [SliderComponentShape?] overlayShape: 오버레이 모양입니다.
///
/// [SliderTickMarkShape?] tickMarkShape: 틱 마크 모양입니다.
///
/// [SliderComponentShape?] thumbShape: 썸(thumb) 모양입니다.
///
/// [SliderTrackShape?] trackShape: 트랙 모양입니다.
///
/// [SliderComponentShape?] valueIndicatorShape: 값 표시기 모양입니다.
///
/// [RangeSliderTickMarkShape?] rangeTickMarkShape: 범위 틱 마크 모양입니다.
///
/// [RangeSliderThumbShape?] rangeThumbShape: 범위 썸(thumb) 모양입니다.
///
/// [RangeSliderTrackShape?] rangeTrackShape: 범위 트랙 모양입니다.
///
/// [RangeSliderValueIndicatorShape?] rangeValueIndicatorShape: 범위 값 표시기 모양입니다.
///
/// [ShowValueIndicator?] showValueIndicator: 값 표시기를 언제 표시할지 정합니다.
///
/// [TextStyle?] valueIndicatorTextStyle: 값 표시기의 텍스트 스타일입니다.
///
/// [double?] minThumbSeparation: 썸(thumb) 사이의 최소 간격입니다.
///
/// [Thumb? Function(TextDirection, RangeValues, double, Size, Size, double)? thumbSelector: 썸(thumb) 선택기입니다.
///
/// [MaterialStateProperty<MouseCursor?>?] mouseCursor: 마우스 커서입니다.
SliderThemeData sliderThemeData() => SliderThemeData(
      trackHeight: 4.h,
      activeTrackColor: ColorPath.PrimaryColor,
      inactiveTrackColor: ColorPath.BorderColor,
      secondaryActiveTrackColor: ColorPath.PrimaryColor,
      activeTickMarkColor: ColorPath.PrimaryColor,
      inactiveTickMarkColor: ColorPath.BorderColor,
      thumbColor: ColorPath.PrimaryColor,
      overlappingShapeStrokeColor: ColorPath.PrimaryColor,
      // overlayColor: ColorPath.PrimaryColor.withOpacity(0.12),
      valueIndicatorTextStyle: TextPath.TextF16W500.copyWith(
        color: Colors.white,
      ),
      valueIndicatorColor: ColorPath.PrimaryColor,
      disabledActiveTickMarkColor: ColorPath.DisabledColor,
      disabledInactiveTickMarkColor: ColorPath.DisabledColor,
      disabledThumbColor: ColorPath.DisabledColor,
      disabledActiveTrackColor: ColorPath.DisabledColor,
      disabledInactiveTrackColor: ColorPath.DisabledColor,
      disabledSecondaryActiveTrackColor: ColorPath.DisabledColor,
    );
