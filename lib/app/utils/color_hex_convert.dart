// ignore_for_file: non_constant_identifier_names, library_prefixes

import 'package:flutter/material.dart' as MaterialColor;

/// 16진수 컬러 코드 변환
///
/// theme/colors.dart 에서 사용
@override
MaterialColor.Color Color(String hex) =>
    MaterialColor.Color(int.parse('0XFF$hex'));
