import 'package:flutter/material.dart';

import '../theme/color_paths.dart';
import '../theme/text_paths.dart';

/// 글로벌 디바이더 위젯
class GlobalTextWidget extends Text {
  const GlobalTextWidget(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  });

  /// 글로벌 디바이더 위젯
  factory GlobalTextWidget.basic(
    String data, {
    TextStyle? style,
  }) {
    return GlobalTextWidget(
      data,
      style: style,
    );
  }

  factory GlobalTextWidget.error(
    String data, {
    TextStyle? style,
  }) {
    return GlobalTextWidget(
      data,
      style: style ??
          TextPath().F14W500.copyWith(
                color: ColorPath.ErrorColor,
              ),
    );
  }
}
