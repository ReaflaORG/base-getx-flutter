import 'package:flutter/material.dart';

/// 글로벌 디바이더 위젯
class GlobalDividerWidget extends Container {
  GlobalDividerWidget({
    super.key,
    super.margin,
    super.width,
    super.height,
    super.color,
    super.child,
  });

  /// 글로벌 디바이더 위젯
  ///
  /// [margin] EdgeInsetsGeometry
  ///
  /// [indent] double
  ///
  /// [endIndent] double
  ///
  /// [thickness] double
  ///
  /// [height] double
  ///
  /// [color] Color
  factory GlobalDividerWidget.horizontal({
    EdgeInsetsGeometry? margin = const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 0,
    ),
    double? indent = 0,
    double? endIndent = 0,
    double? thickness = 1,
    double? width,
    double? height = 1,
    Color? color = const Color(0XFFE0E0E0),
  }) {
    return GlobalDividerWidget(
      margin: margin,
      color: color,
      height: height,
      child: Divider(
        indent: indent,
        endIndent: endIndent,
        thickness: thickness,
        color: color,
      ),
    );
  }

  factory GlobalDividerWidget.vertical({
    EdgeInsetsGeometry? margin = const EdgeInsets.only(
      left: 10,
      right: 10,
      top: 0,
      bottom: 0,
    ),
    double? indent = 0,
    double? endIndent = 0,
    double? thickness = 1,
    double? width = 1,
    double? height = 1,
    Color? color = const Color(0XFFE0E0E0),
  }) {
    return GlobalDividerWidget(
      margin: margin,
      color: color,
      width: width,
      height: height,
      child: VerticalDivider(
        indent: indent,
        endIndent: endIndent,
        thickness: thickness,
        color: color,
      ),
    );
  }
}
