import 'package:base_getx_flutter/app/theme/text_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_paths.dart';

/// ButtonThemeData ▼
///
/// [ButtonTextTheme] textTheme: 버튼 텍스트 테마입니다.
///
/// [double] minWidth: 버튼의 최소 너비입니다.
///
/// [double] height: 버튼의 높이입니다.
///
/// [EdgeInsetsGeometry?] padding: 버튼의 여백입니다.
///
/// [ShapeBorder?] shape: 버튼의 모양(border, circle 등)입니다.
///
/// [ButtonBarLayoutBehavior] layoutBehavior: 버튼 바의 레이아웃 동작입니다.
///
/// [bool] alignedDropdown: 드롭다운 버튼이 정렬되는지 여부입니다.
///
/// [Color?] buttonColor: 버튼의 색상입니다.
///
/// [Color?] disabledColor: 버튼이 비활성화된 상태일 때의 색상입니다.
///
/// [Color?] focusColor: 버튼이 포커스를 받았을 때의 색상입니다.
///
/// [Color?] hoverColor: 마우스 호버 시 버튼의 색상입니다.
///
/// [Color?] highlightColor: 버튼을 누를 때의 색상입니다.
///
/// [Color?] splashColor: 터치 시 버튼의 색상입니다.
///
/// [ColorScheme?] colorScheme: 버튼의 색상 체계입니다.
///
/// [MaterialTapTargetSize?] materialTapTargetSize: 버튼의 탭 대상 크기입니다.
ButtonThemeData buttonThemeData() {
  return ButtonThemeData(
    padding: const EdgeInsets.all(15).r,
    height: 53.w,
    disabledColor: ColorPath.PrimaryColor.withOpacity(0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15).r,
    ),
  );
}

/// ElevatedButton ▼
ButtonBarThemeData buttonBarThemeData() {
  return ButtonBarThemeData(
    alignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    buttonTextTheme: ButtonTextTheme.primary,
    buttonPadding: const EdgeInsets.all(8.0).r,
    buttonMinWidth: 0,
    buttonHeight: 53.w,
    layoutBehavior: ButtonBarLayoutBehavior.padded,
  );
}

/// ElevatedButton ▼
///
/// [Color?] foregroundColor: 버튼 전경(텍스트 또는 아이콘)의 색상입니다.
///
/// [Color?] backgroundColor: 버튼 배경의 색상입니다.
///
/// [Color?] disabledForegroundColor: 버튼이 비활성화된 상태일 때 전경의 색상입니다.
///
/// [Color?] disabledBackgroundColor: 버튼이 비활성화된 상태일 때 배경의 색상입니다.
///
/// [Color?] shadowColor: 버튼의 그림자 색상입니다.
///
/// [Color?] surfaceTintColor: 버튼의 표면 색상입니다 (버튼에 elevation이 있는 경우 적용됨).
///
/// [double?] elevation: 버튼의 고도(깊이)입니다.
///
/// [TextStyle?] textStyle: 버튼 내부 텍스트의 스타일입니다.
///
/// [EdgeInsetsGeometry?] padding: 버튼의 내부 여백입니다.
///
/// [Size?] minimumSize: 버튼의 최소 크기입니다.
///
/// [Size?] fixedSize: 버튼의 고정 크기입니다.
///
/// [Size?] maximumSize: 버튼의 최대 크기입니다.
///
/// [BorderSide?] side: 버튼 주변의 테두리 선 스타일입니다.
///
/// [OutlinedBorder?] shape: 버튼의 모양입니다 (테두리, 동그라미 등).
///
/// [MouseCursor?] enabledMouseCursor: 버튼이 활성화된 상태일 때 마우스 커서 모양입니다.
///
/// [MouseCursor?] disabledMouseCursor: 버튼이 비활성화된 상태일 때 마우스 커서 모양입니다.
///
/// [VisualDensity?] visualDensity: 버튼의 시각적 밀도입니다.
///
/// [MaterialTapTargetSize?] tapTargetSize: 버튼의 탭 대상 크기입니다.
///
/// [Duration?] animationDuration: 버튼의 애니메이션 지속 시간입니다.
///
/// [bool?] enableFeedback: 버튼 피드백을 활성화할지 여부입니다.
///
/// [AlignmentGeometry?] alignment: 버튼 내부 텍스트의 정렬입니다.
///
/// [InteractiveInkFeatureFactory?] splashFactory: 버튼을 터치할 때 생성되는 잉크(물결) 효과입니다.
///
/// [Color?] primary: 버튼의 기본 색상입니다 (일부 버튼 스타일에만 적용됨).
///
/// [Color?] onPrimary: 버튼 내부 텍스트의 기본 색상입니다 (일부 버튼 스타일에만 적용됨).
///
/// [Color?] onSurface: 버튼 위에 그려지는 텍스트, 아이콘 등의 색상입니다.
ElevatedButtonThemeData elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(15).r,
      minimumSize: Size(53.w, 53.w),
      foregroundColor: Colors.white,
      backgroundColor: ColorPath.PrimaryColor,
      // disabledForegroundColor: ColorPath.Border,
      disabledBackgroundColor: ColorPath.PrimaryColor.withOpacity(0.3),
      alignment: Alignment.center,
      splashFactory: InkRipple.splashFactory,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ).r,
      ),
    ),
  );
}

/// OutlinedButton ▼
OutlinedButtonThemeData outlinedButtonThemeData() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(15).r,
      minimumSize: Size(53.w, 53.w),
      foregroundColor: ColorPath.PrimaryColor,
      backgroundColor: Colors.white,
      // disabledForegroundColor: ColorPath.Border,
      disabledBackgroundColor: ColorPath.PrimaryColor.withOpacity(0.3),
      alignment: Alignment.center,
      splashFactory: InkRipple.splashFactory,
      side: BorderSide(
        color: ColorPath.Border,
        width: 1.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ).r,
      ),
    ),
  );
}

/// FilledButton ▼
FilledButtonThemeData filledButtonThemeData() {
  return FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: const EdgeInsets.all(15).r,
      minimumSize: Size(53.w, 53.w),
      foregroundColor: Colors.white,
      // backgroundColor: Colors.white,
      // disabledForegroundColor: ColorPath.Border,
      disabledBackgroundColor: ColorPath.PrimaryColor.withOpacity(0.3),
      alignment: Alignment.center,
      splashFactory: InkRipple.splashFactory,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ).r,
      ),
    ),
  );
}

/// TextButton ▼
TextButtonThemeData textButtonThemeData() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      // padding: const EdgeInsets.all(15).r,
      // minimumSize: Size(53.w, 53.w),
      foregroundColor: ColorPath.PrimaryColor,
      // backgroundColor: Colors.white,
      // disabledForegroundColor: ColorPath.Border,
      // disabledBackgroundColor: ColorPath.PrimaryColor.withOpacity(0.3),
      // alignment: Alignment.center,
      splashFactory: InkRipple.splashFactory,
      // shape: RoundedRectangleBorder(
      //   borderRadius: const BorderRadius.all(
      //     Radius.circular(15),
      //   ).r,
      // ),
    ),
  );
}

/// IconButton ▼
IconButtonThemeData iconButtonThemeData() {
  return IconButtonThemeData(
    style: IconButton.styleFrom(
      // padding: const EdgeInsets.all(15).r,
      // minimumSize: Size(53.w, 53.w),
      foregroundColor: ColorPath.PrimaryColor,
      // backgroundColor: Colors.white,
      // disabledForegroundColor: ColorPath.Border,
      // disabledBackgroundColor: ColorPath.PrimaryColor.withOpacity(0.3),
      // alignment: Alignment.center,
      splashFactory: InkRipple.splashFactory,
      // shape: RoundedRectangleBorder(
      //   borderRadius: const BorderRadius.all(
      //     Radius.circular(15),
      //   ).r,
      // ),
    ),
  );
}

/// SegmentedButton ▼
SegmentedButtonThemeData segmentedButtonThemeData() {
  return SegmentedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.all(15).r,
      ),
      minimumSize: MaterialStateProperty.all(
        Size(53.w, 53.w),
      ),
      foregroundColor: MaterialStateProperty.all(
        ColorPath.PrimaryColor,
      ),
      overlayColor: MaterialStateProperty.all(
        ColorPath.PrimaryColor.withOpacity(0.1),
      ),
      backgroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
      alignment: Alignment.center,
      splashFactory: InkRipple.splashFactory,
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ).r,
        ),
      ),
    ),
  );
}

/// ToggleButton ▼
///
/// [TextStyle?] textStyle: 버튼의 텍스트 스타일입니다.
///
/// [BoxConstraints?] constraints: 버튼의 크기 제약 조건입니다.
///
/// [Color?] color: 버튼의 색상입니다.
///
/// [Color?] selectedColor: 선택된 버튼의 색상입니다.
///
/// [Color?] disabledColor: 버튼이 비활성화된 상태일 때의 색상입니다.
///
/// [Color?] fillColor: 버튼의 배경 색상입니다.
///
/// [Color?] focusColor: 버튼이 포커스를 받았을 때의 색상입니다.
///
/// [Color?] highlightColor: 버튼을 누를 때의 색상입니다.
///
/// [Color?] hoverColor: 마우스 호버 시 버튼의 색상입니다.
///
/// [Color?] splashColor: 터치 시 버튼의 색상입니다.
///
/// [Color?] borderColor: 버튼의 테두리 색상입니다.
///
/// [Color?] selectedBorderColor: 선택된 버튼의 테두리 색상입니다.
///
/// [Color?] disabledBorderColor: 버튼이 비활성화된 상태일 때의 테두리 색상입니다.
///
/// [BorderRadius?] borderRadius: 버튼의 테두리 반지름입니다.
///
/// [double?] borderWidth: 버튼의 테두리 너비입니다.
ToggleButtonsThemeData toggleButtonsThemeData() {
  return ToggleButtonsThemeData(
    color: ColorPath.BlackColor,
    selectedColor: Colors.white,
    fillColor: ColorPath.PrimaryColor,
    highlightColor: ColorPath.PrimaryColor.withOpacity(0.1),
    splashColor: ColorPath.PrimaryColor.withOpacity(0.1),
    borderRadius: BorderRadius.circular(10).r,
    borderWidth: 1.w,
    // borderColor: ColorPath.PrimaryColor,
    // selectedBorderColor: ColorPath.PrimaryColor,
    disabledColor: ColorPath.DisabledColor,
    disabledBorderColor: ColorPath.DisabledColor,
  );
}

/// MenuButton ▼
MenuButtonThemeData menuButtonThemeData() {
  return MenuButtonThemeData(
      style: ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.all(15).r,
    ),
    minimumSize: MaterialStateProperty.all(
      Size(53.w, 53.w),
    ),
    foregroundColor: MaterialStateProperty.all(
      ColorPath.PrimaryColor,
    ),
    overlayColor: MaterialStateProperty.all(
      ColorPath.PrimaryColor.withOpacity(0.1),
    ),
    backgroundColor: MaterialStateProperty.all(
      Colors.white,
    ),
    alignment: Alignment.center,
    splashFactory: InkRipple.splashFactory,
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ).r,
      ),
    ),
  ));
}

/// PopupMenuButton ▼
PopupMenuThemeData popupMenuThemeData() {
  return PopupMenuThemeData(
    color: Colors.white,
    surfaceTintColor: ColorPath.Border,
    // shadowColor: ColorPath.Border,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10).r,
    ),
    textStyle: TextPath.TextF14W500.copyWith(
      color: ColorPath.BlackColor,
    ),
    labelTextStyle: MaterialStateProperty.all(
      TextPath.TextF14W500,
    ),
  );
}

/// PopupMenuButton ▼
FloatingActionButtonThemeData floatingActionButtonThemeData() {
  return FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    backgroundColor: ColorPath.PrimaryColor,
    splashColor: ColorPath.PrimaryLightColor.withOpacity(0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15).r,
    ),
    iconSize: 24.sp,
  );
}
