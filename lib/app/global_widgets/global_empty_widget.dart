import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color_path.dart';

/// 글로벌 빈 위젯
/// `.w`, `.sp` 를 사용하기 위해 `final`을 사용하지 않음
///
/// [offset] : 텍스트 위치
/// [text] : 텍스트 위젯
class GlobalEmptyWidget extends StatelessWidget {
  GlobalEmptyWidget({
    super.key,
    this.offset,
    this.text,
  });

  Offset? offset;
  Text? text;

  @override
  Widget build(BuildContext context) {
    offset ??= Offset(0, -20.w);
    text ??= Text(
      '내용이 없습니다',
      style: TextStyle(
        color: ColorPath.Gray333Color,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: offset!,
              child: text,
            ),
          ],
        )
      ],
    );
  }
}
