// ignore_for_file: constant_identifier_names, non_constant_identifier_names, slash_for_doc_comments

import 'package:base_getx_flutter/app/theme/divider_theme_data.dart';
import 'package:base_getx_flutter/app/theme/primary_icon_theme_data.dart';
import 'package:base_getx_flutter/app/theme/primary_text_theme_data.dart';
import 'package:base_getx_flutter/app/theme/radio_theme_data.dart';
import 'package:base_getx_flutter/app/theme/scrollbar_theme_data.dart';
import 'package:base_getx_flutter/app/theme/search_bar_theme_data.dart';
import 'package:base_getx_flutter/app/theme/search_view_theme_data.dart';
import 'package:base_getx_flutter/app/theme/slider_theme_data.dart';
import 'package:base_getx_flutter/app/theme/snack_bar_theme_data.dart';
import 'package:base_getx_flutter/app/theme/switch_theme_data.dart';
import 'package:base_getx_flutter/app/theme/tabBar_theme_data.dart';
import 'package:base_getx_flutter/app/theme/text_selection_theme_data.dart';
import 'package:base_getx_flutter/app/theme/time_picker_theme_data.dart';
import 'package:base_getx_flutter/app/theme/tooltip_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'action_icon_theme_data.dart';
import 'app_bar_theme_data.dart';
import 'badge_theme_data.dart';
import 'banner_theme.dart';
import 'bottom_app_bar_theme_data.dart';
import 'bottom_sheet_theme.dart';
import 'button_themes.dart';
import 'card_theme.dart';
import 'checkbox_theme_data.dart';
import 'chip_theme.dart';
import 'color_paths.dart';
import 'color_schemes.g.dart';
import 'data_table_theme_data.dart';
import 'date_picker_theme_data.dart';
import 'dialog_theme_data.dart';
import 'drawer_theme_data.dart';
import 'dropdown_menu_theme_data.dart';
import 'expansion_tile_theme_data.dart';
import 'icon_theme_data.dart';
import 'input_decoration_theme.dart';
import 'list_tile_theme_data.dart';
import 'navigation_bar_theme_data.dart';
import 'text_themes.dart';

/// Primary FontFamily ▼
const FontFamily = 'Pretendard';

/// 폰트 컬러
const FontColor = 0XFF202632;

/// Primary FontSize ▼
double PrimaryFontSize = 16.sp;

/// Secondary FontSize ▼
double SecondaryFontSize = 14.sp;

// Text Letter Spacing ▼
double TextLetterSpacing = 0.25.sp;

// Text Word Spacing ▼
double TextWordSpacing = 1.0.sp;

/// Main Theme ▼
ThemeData theme({
  required BuildContext context,
}) =>
    ThemeData(
      useMaterial3: true,
      fontFamily: FontFamily,
      // colorScheme: colorSchemeData(),
      colorScheme: lightColorScheme,
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
      dividerTheme: dividerThemeData(),
      drawerTheme: drawerThemeData(),
      sliderTheme: sliderThemeData(),
      tabBarTheme: tabBarThemeData(),
      checkboxTheme: checkboxThemeData(),
      listTileTheme: listTileThemeData(),
      snackBarTheme: snackBarThemeData(),
      tooltipTheme: tooltipThemeData(),
      scrollbarTheme: scrollbarThemeData(),
      searchBarTheme: searchBarThemeData(),
      actionIconTheme: actionIconThemeData(),
      datePickerTheme: datePickerThemeData(),
      dataTableTheme: dataTableThemeData(),
      searchViewTheme: searchViewThemeData(),
      primaryIconTheme: primaryIconThemeData(),
      primaryTextTheme: primaryTextThemeData(),
      timePickerTheme: timePickerThemeData(),
      bottomAppBarTheme: bottomAppBarThemeData(),
      dropdownMenuTheme: dropdownMenuThemeData(),
      expansionTileTheme: expansionTileThemeData(),
      navigationBarTheme: navigationBarThemeData(),
      textSelectionTheme: textSelectionThemeData(),
      // navigationDrawerTheme: ,
      progressIndicatorTheme: const ProgressIndicatorThemeData(),
      // bottomNavigationBarTheme: bottomNavigationBarThemeData(),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      navigationRailTheme: const NavigationRailThemeData(),
      menuTheme: const MenuThemeData(),
      menuBarTheme: const MenuBarThemeData(),
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
