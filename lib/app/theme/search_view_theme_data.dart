import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// SearchViewThemeData ▼
///
/// [Color?] backgroundColor: SearchView 위젯의 배경색을 지정합니다.
///
/// [double?] elevation: SearchView의 고도(elevation)를 설정합니다. 고도는 위젯의 그림자 효과를 조절하는 데 사용됩니다.
///
/// [Color?] surfaceTintColor: SearchView의 표면 색상을 지정합니다. 이는 SearchView의 텍스트 필드와 관련된 색상입니다.
///
/// [BoxConstraints?] constraints: SearchView 위젯의 크기를 제한하는 BoxConstraints입니다. 이를 통해 최소 또는 최대 크기를 지정할 수 있습니다.
///
/// [BorderSide?] side: SearchView의 테두리 선(border)을 지정하는 BorderSide입니다. 테두리 선의 스타일과 색상을 설정할 수 있습니다.
///
/// [OutlinedBorder?] shape: SearchView의 모양(shape)을 지정하는 OutlinedBorder입니다. 이는 테두리의 모양을 다양하게 설정할 수 있는 옵션입니다.
///
/// [TextStyle?] headerTextStyle: SearchView의 헤더(Header) 텍스트의 스타일을 지정하는 TextStyle입니다. 헤더는 주로 검색 결과 상단에 표시되는 부분입니다.
///
/// [TextStyle?] headerHintStyle: SearchView의 헤더 힌트(Header Hint) 텍스트의 스타일을 지정하는 TextStyle입니다. 힌트 텍스트는 검색 입력 필드에 초기 힌트로 표시됩니다.
///
/// [Color?] dividerColor: SearchView의 구분선(divider) 색상을 지정합니다. 구분선은 주로 검색 결과 항목 사이에 표시되는 수평 선입니다.
SearchViewThemeData searchViewThemeData() => SearchViewThemeData(
      // elevation: 0.0,
      // constraints: BoxConstraints(
      //   minHeight: 48.0,
      //   maxHeight: 48.0,
      // ),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      dividerColor: ColorPath.Border,
      side: BorderSide(
        color: ColorPath.GreyColor,
        width: 1.0.w,
      ),
      headerTextStyle: TextPath.TextF16W500,
      headerHintStyle: TextPath.TextF16W500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0).r,
      ),
    );
