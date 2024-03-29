// ignore_for_file: constant_identifier_names, non_constant_identifier_names, slash_for_doc_comments

import 'package:flutter/material.dart';

import 'action_icon_theme_data.dart';
import 'app_bar_theme_data.dart';
import 'badge_theme_data.dart';
import 'banner_theme.dart';
import 'bottom_app_bar_theme_data.dart';
import 'bottom_navigation_bar_theme_data.dart';
import 'bottom_sheet_theme.dart';
import 'button_themes.dart';
import 'card_theme.dart';
import 'checkbox_theme_data.dart';
import 'chip_theme.dart';
import 'color_paths.dart';
import 'color_scheme.dart';
import 'data_table_theme_data.dart';
import 'date_picker_theme_data.dart';
import 'dialog_theme_data.dart';
import 'divider_theme_data.dart';
import 'drawer_theme_data.dart';
import 'dropdown_menu_theme_data.dart';
import 'expansion_tile_theme_data.dart';
import 'icon_theme_data.dart';
import 'input_decoration_theme.dart';
import 'list_tile_theme_data.dart';
import 'navigation_bar_theme_data.dart';
import 'primary_icon_theme_data.dart';
import 'primary_text_theme_data.dart';
import 'progress_indicator_theme_data.dart';
import 'radio_theme_data.dart';
import 'scrollbar_theme_data.dart';
import 'search_bar_theme_data.dart';
import 'search_view_theme_data.dart';
import 'slider_theme_data.dart';
import 'snack_bar_theme_data.dart';
import 'switch_theme_data.dart';
import 'tabbar_theme_data.dart';
import 'text_selection_theme_data.dart';
import 'text_themes.dart';
import 'time_picker_theme_data.dart';
import 'tooltip_theme_data.dart';

/// Primary FontFamily ▼
const FontFamily = 'Pretendard';

/// Main Theme ▼
///
/// Material Theme Builder : https://m3.material.io/theme-builder#/custom
ThemeData theme({
  required BuildContext context,
}) =>
    ThemeData(
      useMaterial3: true,
      fontFamily: FontFamily,
      scaffoldBackgroundColor: Colors.white,
      splashColor: ColorPath.PrimaryColor.withOpacity(0.1),
      colorScheme: lightColorScheme(),
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
      textSelectionTheme: textSelectionThemeData(),
      progressIndicatorTheme: progressIndicatorThemeData(),
      navigationBarTheme: navigationBarThemeData(),
      bottomNavigationBarTheme: bottomNavigationBarThemeData(),
      navigationDrawerTheme: const NavigationDrawerThemeData(),
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
