import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// DividerTheme ▼
///
/// [Color?] color: 구분선의 색상입니다.
///
/// [double?] space: 구분선의 두께입니다.
///
/// [double?] thickness: 구분선의 두께입니다. [space]와 동일한 기능이지만 [thickness]는 [Divider] 위젯에서 사용됩니다.
///
/// [double?] indent: 구분선의 시작 위치에서의 간격입니다.
///
/// [double?] endIndent: 구분선의 끝 위치에서의 간격입니다.

DividerThemeData dividerThemeData() => DividerThemeData(
      color: ColorPath.Border,
      indent: 0,
      endIndent: 0,
      thickness: 2.0.w,
      space: 10.0.w,
    );
