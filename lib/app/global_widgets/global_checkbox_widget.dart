import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 글로벌 체크박스 위젯
///
/// [isChecked] bool
///
/// [onChanged] void Function(bool?)
class GlobalCheckBoxWidget extends StatelessWidget {
  const GlobalCheckBoxWidget({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  /// 체크 값
  final bool isChecked;

  /// onChanged
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24.w,
      height: 24.w,
      child: Checkbox(
        activeColor: Colors.black,
        checkColor: Colors.white,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
