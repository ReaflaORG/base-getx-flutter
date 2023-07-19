import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';

/// DataTableThemeData ▼
///
/// [decoration] - 표의 장식(Decoration)을 지정합니다. 예를 들어, 표의 배경색이나 테두리 등을 설정할 수 있습니다.
///
/// [dataRowColor] - 데이터 행의 배경색을 지정하는 MaterialStateProperty<Color?>입니다. 상태에 따라 다른 색상을 적용할 수 있습니다.
///
/// [dataRowHeight] - 데이터 행의 높이를 설정하는 값입니다.
///
/// [dataRowMinHeight] - 데이터 행의 최소 높이를 설정하는 값입니다. 행의 내용이 최소 높이보다 작을 경우에도 최소 높이를 유지합니다.
///
/// [dataRowMaxHeight] - 데이터 행의 최대 높이를 설정하는 값입니다. 행의 내용이 최대 높이보다 클 경우 최대 높이로 제한됩니다.
///
/// [dataTextStyle] - 데이터 행의 텍스트 스타일을 지정하는 TextStyle입니다.
///
/// [headingRowColor] - 헤딩 행의 배경색을 지정하는 MaterialStateProperty<Color?>입니다. 상태에 따라 다른 색상을 적용할 수 있습니다.
///
/// [headingRowHeight] - 헤딩 행의 높이를 설정하는 값입니다.
///
/// [headingTextStyle] - 헤딩 행의 텍스트 스타일을 지정하는 TextStyle입니다.
///
/// [horizontalMargin] - 표의 가로 여백을 설정하는 값입니다.
///
/// [columnSpacing] - 열 사이의 간격을 설정하는 값입니다.
///
/// [dividerThickness] - 구분선의 두께를 설정하는 값입니다.
///
/// [checkboxHorizontalMargin] - 체크박스의 가로 여백을 설정하는 값입니다.
///
/// [headingCellCursor] - 헤딩 셀에 대한 마우스 커서를 지정하는 MaterialStateProperty<MouseCursor?>입니다. 상태에 따라 다른 커서를 적용할 수 있습니다.
///
/// [dataRowCursor] - 데이터 행에 대한 마우스 커서를 지정하는 MaterialStateProperty<MouseCursor?>입니다. 상태에 따라 다른 커서를 적용할 수 있습니다.
DataTableThemeData dataTableThemeData() => DataTableThemeData(
      // decoration: BoxDecoration(
      // color: ColorPath.Border,
      // border: Border.all(
      //   color: ColorPath.GreyColor,
      //   width: 1.0.w,
      // ),
      // borderRadius: BorderRadius.zero,
      // backgroundBlendMode: BlendMode.difference,
      // ),
      dataRowColor: MaterialStateProperty.all<Color?>(
        Colors.white,
      ),
      // dataRowMinHeight: 48.0,
      // dataRowMaxHeight: 48.0,
      dataTextStyle: TextPath.TextF14W500,
      headingRowColor: MaterialStateProperty.all<Color?>(
        Colors.white,
      ),
      // headingRowHeight: 48.0,
      headingTextStyle: TextPath.TextF14W500,
      // horizontalMargin: 0.0,
      // columnSpacing: 0.0,
      dividerThickness: 1.0,
      // checkboxHorizontalMargin: 0.0,
      // headingCellCursor: MaterialStateProperty.all<MouseCursor?>(
      //   SystemMouseCursors.click,
      // ),
      // dataRowCursor: MaterialStateProperty.all<MouseCursor?>(
      //   SystemMouseCursors.click,
      // ),
    );
