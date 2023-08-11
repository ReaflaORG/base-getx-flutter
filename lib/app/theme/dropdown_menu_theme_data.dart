import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// DropdownMenuThemeData ▼
///
/// [TextStyle?] textStyle: 드롭다운 버튼의 텍스트 스타일을 지정합니다. 선택한 옵션의 텍스트에 적용됩니다.
///
/// [InputDecorationTheme?] inputDecorationTheme: 드롭다운 버튼의 입력 장식 테마를 지정합니다. 입력 필드에 대한 장식을 커스터마이징할 수 있습니다.
///
/// [MenuStyle?] menuStyle: 드롭다운 메뉴의 스타일을 지정합니다. 메뉴 아이템들의 배치 방식과 스크롤 동작 등을 조절할 수 있습니다.
DropdownMenuThemeData dropdownMenuThemeData() => DropdownMenuThemeData(
      textStyle: TextPath.TextF14W500,
      menuStyle: MenuStyle(
        // elevation: MaterialStateProperty.all(
        //   0.0,
        // ),
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        surfaceTintColor: MaterialStateProperty.all(
          Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        isDense: false,
        isCollapsed: false,
        // alignLabelWithHint: false,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ).r,
        fillColor: ColorPath.BorderColor,
        labelStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.GreyColor700,
        ),
        hintStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.GreyColor700,
        ),
        helperStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.GreyColor700,
        ),
        prefixStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.GreyColor700,
        ),
        suffixStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.GreyColor700,
        ),
        counterStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.GreyColor700,
        ),
        floatingLabelStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.PrimaryColor,
        ),
        errorStyle: TextPath.TextF16W500.copyWith(
          color: ColorPath.ErrorColor.withOpacity(0.7),
        ),
        iconColor: ColorPath.GreyColor700,
        prefixIconColor: ColorPath.GreyColor700,
        suffixIconColor: ColorPath.GreyColor700,
        hoverColor: ColorPath.PrimaryColor,
        focusColor: ColorPath.PrimaryColor,
        // border: UnderlineInputBorder(
        //   borderSide: BorderSide(
        //     color: ColorPath.BorderColor,
        //     width: 2.w,
        //   ),
        // ),
        // activeIndicatorBorder: BorderSide(
        //   color: Colors.red,
        //   width: 2.w,
        // ),
        // outlineBorder: BorderSide(
        //   color: Colors.red,
        //   width: 2.w,
        // ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorPath.BorderColor,
            width: 2.w,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorPath.PrimaryColor,
            width: 2.w,
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorPath.BorderColor,
            width: 2.w,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorPath.ErrorColor.withOpacity(0.7),
            width: 2.w,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorPath.ErrorColor,
            width: 2.w,
          ),
        ),
      ),
    );
