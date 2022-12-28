import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color_path.dart';

/// 글로벌 벨리데이트 텍스트 위젯
class GlobalValidateTextWidget extends StatelessWidget {
  const GlobalValidateTextWidget({
    super.key,
    this.padding = const EdgeInsets.only(
      top: 6,
      bottom: 4,
    ),
    required this.text,
  });

  final EdgeInsetsGeometry? padding;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          color: ColorPath.ErrorColor,
        ),
      ),
    );
  }
}
