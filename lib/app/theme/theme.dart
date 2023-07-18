// ignore_for_file: constant_identifier_names, non_constant_identifier_names, slash_for_doc_comments

import 'package:base_getx_flutter/app/theme/radio_theme_data.dart';
import 'package:base_getx_flutter/app/theme/switch_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_bar_theme_data.dart';
import 'badge_theme_data.dart';
import 'banner_theme.dart';
import 'bottom_sheet_theme.dart';
import 'button_themes.dart';
import 'card_theme.dart';
import 'chip_theme.dart';
import 'color_paths.dart';
import 'color_scheme.dart';
import 'dialog_theme_data.dart';
import 'icon_theme_data.dart';
import 'input_decoration_theme.dart';
import 'text_themes.dart';

/// Primary FontFamily ▼
const FontFamily = 'Pretendard';

/// Primary FontSize ▼
double PrimaryFontSize = 16.sp;

/// Secondary FontSize ▼
double SecondaryFontSize = 14.sp;

/// Main Theme ▼
ThemeData theme({
  required BuildContext context,
}) =>
    ThemeData(
      useMaterial3: true,
      fontFamily: FontFamily,
      colorScheme: colorSchemeData(),
      appBarTheme: appBarThemeData(),
      textTheme: textThemeData(),
      inputDecorationTheme: inputDecorationTheme(),
      cardTheme: cardThemeData(),
      chipTheme: chipThemeData(),
      iconTheme: iconThemeData(),
      badgeTheme: badgeThemeData(),
      radioTheme: radioThemeData(),
      bannerTheme: materialBannerThemeData(),
      dialogTheme: dialogThemeData(),
      switchTheme: switchThemeData(),
      buttonTheme: buttonThemeData(),
      buttonBarTheme: buttonBarThemeData(),
      elevatedButtonTheme: elevatedButtonThemeData(),
      outlinedButtonTheme: outlinedButtonThemeData(),
      filledButtonTheme: filledButtonThemeData(),
      textButtonTheme: textButtonThemeData(),
      iconButtonTheme: iconButtonThemeData(),
      segmentedButtonTheme: segmentedButtonThemeData(),
      toggleButtonsTheme: toggleButtonsThemeData(),
      menuButtonTheme: menuButtonThemeData(),
      popupMenuTheme: popupMenuThemeData(),
      floatingActionButtonTheme: floatingActionButtonThemeData(),
      bottomSheetTheme: bottomSheetThemeData(),
    );

/// Dark Theme ▼
ThemeData darkTheme({
  required BuildContext context,
}) =>
    Theme.of(context).copyWith(
      useMaterial3: true,
      primaryColor: ColorPath.PrimaryColor,
      primaryColorDark: ColorPath.PrimaryDarkColor,
      primaryColorLight: ColorPath.PrimaryLightColor,
      textTheme: textThemeData(),
    );
