import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 글로벌 토스트 위젯
///
/// [message]  메시지
///
/// [toastLength]  길이
///
/// [gravity]  위치
///
/// [duration]  지속 시간
///
/// [backgroundColor]  배경 색상
///
/// [opacity]  배경 투명도
///
/// [textColor]  텍스트 색상
void GlobalToastWidget(
  String message, {
  Toast toastLength = Toast.LENGTH_SHORT,
  ToastGravity gravity = ToastGravity.BOTTOM,
  int duration = 3,
  Color backgroundColor = Colors.black,
  double opacity = 0.7,
  Color textColor = Colors.white,
}) async {
  Fluttertoast.cancel().then((value) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      gravity: gravity,
      timeInSecForIosWeb: duration,
      backgroundColor: backgroundColor.withOpacity(opacity),
      textColor: textColor,
    );
  });
}
