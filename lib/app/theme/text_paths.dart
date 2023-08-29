// ignore_for_file: avoid_classes_with_only_static_members, prefer_const_constructors, slash_for_doc_comments, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme.dart';

/// 텍스트 스타일
///
/// F<폰트사이즈>W<폰트굵기>
///
/// Thin: 100
///
/// ExtraLight: 200
///
/// Light: 300
///
/// Regular: 400
///
/// Medium: 500
///
/// SemiBold: 600
///
/// Bold: 700
///
/// ExtraBold: 800
///
/// Heavy: 900
class TextPath {
  static const String fontFamily = FontFamily;
  static const Color blackColor = Color(0XFF333333);
  static const double textLetterSpacing = -0.25;
  static const double textWordSpacing = 0.0;

  static TextStyle getTextStyle(double fontSize, FontWeight fontWeight) {
    return TextStyle(
      color: blackColor,
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      decoration: TextDecoration.none,
      letterSpacing: textLetterSpacing,
      wordSpacing: textWordSpacing,
    );
  }

  static TextStyle getText(double fontSize, FontWeight fontWeight) {
    return getTextStyle(fontSize, fontWeight);
  }

  TextStyle F8W100 = getText(8.0.sp, FontWeight.w100);
  TextStyle F8W200 = getText(8.0.sp, FontWeight.w200);
  TextStyle F8W300 = getText(8.0.sp, FontWeight.w300);
  TextStyle F8W400 = getText(8.0.sp, FontWeight.w400);
  TextStyle F8W500 = getText(8.0.sp, FontWeight.w500);
  TextStyle F8W600 = getText(8.0.sp, FontWeight.w600);
  TextStyle F8W700 = getText(8.0.sp, FontWeight.w700);
  TextStyle F8W800 = getText(8.0.sp, FontWeight.w800);
  TextStyle F8W900 = getText(8.0.sp, FontWeight.w900);
  TextStyle F8Bold = getText(8.0.sp, FontWeight.bold);

  TextStyle F9W100 = getText(9.0.sp, FontWeight.w100);
  TextStyle F9W200 = getText(9.0.sp, FontWeight.w200);
  TextStyle F9W300 = getText(9.0.sp, FontWeight.w300);
  TextStyle F9W400 = getText(9.0.sp, FontWeight.w400);
  TextStyle F9W500 = getText(9.0.sp, FontWeight.w500);
  TextStyle F9W600 = getText(9.0.sp, FontWeight.w600);
  TextStyle F9W700 = getText(9.0.sp, FontWeight.w700);
  TextStyle F9W800 = getText(9.0.sp, FontWeight.w800);
  TextStyle F9W900 = getText(9.0.sp, FontWeight.w900);
  TextStyle F9Bold = getText(9.0.sp, FontWeight.bold);

  TextStyle F10W100 = getText(10.0.sp, FontWeight.w100);
  TextStyle F10W200 = getText(10.0.sp, FontWeight.w200);
  TextStyle F10W300 = getText(10.0.sp, FontWeight.w300);
  TextStyle F10W400 = getText(10.0.sp, FontWeight.w400);
  TextStyle F10W500 = getText(10.0.sp, FontWeight.w500);
  TextStyle F10W600 = getText(10.0.sp, FontWeight.w600);
  TextStyle F10W700 = getText(10.0.sp, FontWeight.w700);
  TextStyle F10W800 = getText(10.0.sp, FontWeight.w800);
  TextStyle F10W900 = getText(10.0.sp, FontWeight.w900);
  TextStyle F10Bold = getText(10.0.sp, FontWeight.bold);

  TextStyle F11W100 = getText(11.0.sp, FontWeight.w100);
  TextStyle F11W200 = getText(11.0.sp, FontWeight.w200);
  TextStyle F11W300 = getText(11.0.sp, FontWeight.w300);
  TextStyle F11W400 = getText(11.0.sp, FontWeight.w400);
  TextStyle F11W500 = getText(11.0.sp, FontWeight.w500);
  TextStyle F11W600 = getText(11.0.sp, FontWeight.w600);
  TextStyle F11W700 = getText(11.0.sp, FontWeight.w700);
  TextStyle F11W800 = getText(11.0.sp, FontWeight.w800);
  TextStyle F11W900 = getText(11.0.sp, FontWeight.w900);
  TextStyle F11Bold = getText(11.0.sp, FontWeight.bold);

  TextStyle F12W100 = getText(12.0.sp, FontWeight.w100);
  TextStyle F12W200 = getText(12.0.sp, FontWeight.w200);
  TextStyle F12W300 = getText(12.0.sp, FontWeight.w300);
  TextStyle F12W400 = getText(12.0.sp, FontWeight.w400);
  TextStyle F12W500 = getText(12.0.sp, FontWeight.w500);
  TextStyle F12W600 = getText(12.0.sp, FontWeight.w600);
  TextStyle F12W700 = getText(12.0.sp, FontWeight.w700);
  TextStyle F12W800 = getText(12.0.sp, FontWeight.w800);
  TextStyle F12W900 = getText(12.0.sp, FontWeight.w900);
  TextStyle F12Bold = getText(12.0.sp, FontWeight.bold);

  TextStyle F13W100 = getText(13.0.sp, FontWeight.w100);
  TextStyle F13W200 = getText(13.0.sp, FontWeight.w200);
  TextStyle F13W300 = getText(13.0.sp, FontWeight.w300);
  TextStyle F13W400 = getText(13.0.sp, FontWeight.w400);
  TextStyle F13W500 = getText(13.0.sp, FontWeight.w500);
  TextStyle F13W600 = getText(13.0.sp, FontWeight.w600);
  TextStyle F13W700 = getText(13.0.sp, FontWeight.w700);
  TextStyle F13W800 = getText(13.0.sp, FontWeight.w800);
  TextStyle F13W900 = getText(13.0.sp, FontWeight.w900);
  TextStyle F13Bold = getText(13.0.sp, FontWeight.bold);

  TextStyle F14W100 = getText(14.0.sp, FontWeight.w100);
  TextStyle F14W200 = getText(14.0.sp, FontWeight.w200);
  TextStyle F14W300 = getText(14.0.sp, FontWeight.w300);
  TextStyle F14W400 = getText(14.0.sp, FontWeight.w400);
  TextStyle F14W500 = getText(14.0.sp, FontWeight.w500);
  TextStyle F14W600 = getText(14.0.sp, FontWeight.w600);
  TextStyle F14W700 = getText(14.0.sp, FontWeight.w700);
  TextStyle F14W800 = getText(14.0.sp, FontWeight.w800);
  TextStyle F14W900 = getText(14.0.sp, FontWeight.w900);
  TextStyle F14Bold = getText(14.0.sp, FontWeight.bold);

  TextStyle F15W100 = getText(15.0.sp, FontWeight.w100);
  TextStyle F15W200 = getText(15.0.sp, FontWeight.w200);
  TextStyle F15W300 = getText(15.0.sp, FontWeight.w300);
  TextStyle F15W400 = getText(15.0.sp, FontWeight.w400);
  TextStyle F15W500 = getText(15.0.sp, FontWeight.w500);
  TextStyle F15W600 = getText(15.0.sp, FontWeight.w600);
  TextStyle F15W700 = getText(15.0.sp, FontWeight.w700);
  TextStyle F15W800 = getText(15.0.sp, FontWeight.w800);
  TextStyle F15W900 = getText(15.0.sp, FontWeight.w900);
  TextStyle F15Bold = getText(15.0.sp, FontWeight.bold);

  TextStyle F16W100 = getText(16.0.sp, FontWeight.w100);
  TextStyle F16W200 = getText(16.0.sp, FontWeight.w200);
  TextStyle F16W300 = getText(16.0.sp, FontWeight.w300);
  TextStyle F16W400 = getText(16.0.sp, FontWeight.w400);
  TextStyle F16W500 = getText(16.0.sp, FontWeight.w500);
  TextStyle F16W600 = getText(16.0.sp, FontWeight.w600);
  TextStyle F16W700 = getText(16.0.sp, FontWeight.w700);
  TextStyle F16W800 = getText(16.0.sp, FontWeight.w800);
  TextStyle F16W900 = getText(16.0.sp, FontWeight.w900);
  TextStyle F16Bold = getText(16.0.sp, FontWeight.bold);

  TextStyle F17W100 = getText(17.0.sp, FontWeight.w100);
  TextStyle F17W200 = getText(17.0.sp, FontWeight.w200);
  TextStyle F17W300 = getText(17.0.sp, FontWeight.w300);
  TextStyle F17W400 = getText(17.0.sp, FontWeight.w400);
  TextStyle F17W500 = getText(17.0.sp, FontWeight.w500);
  TextStyle F17W600 = getText(17.0.sp, FontWeight.w600);
  TextStyle F17W700 = getText(17.0.sp, FontWeight.w700);
  TextStyle F17W800 = getText(17.0.sp, FontWeight.w800);
  TextStyle F17W900 = getText(17.0.sp, FontWeight.w900);
  TextStyle F17Bold = getText(17.0.sp, FontWeight.bold);

  TextStyle F18W100 = getText(18.0.sp, FontWeight.w100);
  TextStyle F18W200 = getText(18.0.sp, FontWeight.w200);
  TextStyle F18W300 = getText(18.0.sp, FontWeight.w300);
  TextStyle F18W400 = getText(18.0.sp, FontWeight.w400);
  TextStyle F18W500 = getText(18.0.sp, FontWeight.w500);
  TextStyle F18W600 = getText(18.0.sp, FontWeight.w600);
  TextStyle F18W700 = getText(18.0.sp, FontWeight.w700);
  TextStyle F18W800 = getText(18.0.sp, FontWeight.w800);
  TextStyle F18W900 = getText(18.0.sp, FontWeight.w900);
  TextStyle F18Bold = getText(18.0.sp, FontWeight.bold);

  TextStyle F19W100 = getText(19.0.sp, FontWeight.w100);
  TextStyle F19W200 = getText(19.0.sp, FontWeight.w200);
  TextStyle F19W300 = getText(19.0.sp, FontWeight.w300);
  TextStyle F19W400 = getText(19.0.sp, FontWeight.w400);
  TextStyle F19W500 = getText(19.0.sp, FontWeight.w500);
  TextStyle F19W600 = getText(19.0.sp, FontWeight.w600);
  TextStyle F19W700 = getText(19.0.sp, FontWeight.w700);
  TextStyle F19W800 = getText(19.0.sp, FontWeight.w800);
  TextStyle F19W900 = getText(19.0.sp, FontWeight.w900);
  TextStyle F19Bold = getText(19.0.sp, FontWeight.bold);

  TextStyle F20W100 = getText(20.0.sp, FontWeight.w100);
  TextStyle F20W200 = getText(20.0.sp, FontWeight.w200);
  TextStyle F20W300 = getText(20.0.sp, FontWeight.w300);
  TextStyle F20W400 = getText(20.0.sp, FontWeight.w400);
  TextStyle F20W500 = getText(20.0.sp, FontWeight.w500);
  TextStyle F20W600 = getText(20.0.sp, FontWeight.w600);
  TextStyle F20W700 = getText(20.0.sp, FontWeight.w700);
  TextStyle F20W800 = getText(20.0.sp, FontWeight.w800);
  TextStyle F20W900 = getText(20.0.sp, FontWeight.w900);
  TextStyle F20Bold = getText(20.0.sp, FontWeight.bold);

  TextStyle F21W100 = getText(21.0.sp, FontWeight.w100);
  TextStyle F21W200 = getText(21.0.sp, FontWeight.w200);
  TextStyle F21W300 = getText(21.0.sp, FontWeight.w300);
  TextStyle F21W400 = getText(21.0.sp, FontWeight.w400);
  TextStyle F21W500 = getText(21.0.sp, FontWeight.w500);
  TextStyle F21W600 = getText(21.0.sp, FontWeight.w600);
  TextStyle F21W700 = getText(21.0.sp, FontWeight.w700);
  TextStyle F21W800 = getText(21.0.sp, FontWeight.w800);
  TextStyle F21W900 = getText(21.0.sp, FontWeight.w900);
  TextStyle F21Bold = getText(21.0.sp, FontWeight.bold);

  TextStyle F22W100 = getText(22.0.sp, FontWeight.w100);
  TextStyle F22W200 = getText(22.0.sp, FontWeight.w200);
  TextStyle F22W300 = getText(22.0.sp, FontWeight.w300);
  TextStyle F22W400 = getText(22.0.sp, FontWeight.w400);
  TextStyle F22W500 = getText(22.0.sp, FontWeight.w500);
  TextStyle F22W600 = getText(22.0.sp, FontWeight.w600);
  TextStyle F22W700 = getText(22.0.sp, FontWeight.w700);
  TextStyle F22W800 = getText(22.0.sp, FontWeight.w800);
  TextStyle F22W900 = getText(22.0.sp, FontWeight.w900);
  TextStyle F22Bold = getText(22.0.sp, FontWeight.bold);

  TextStyle F23W100 = getText(23.0.sp, FontWeight.w100);
  TextStyle F23W200 = getText(23.0.sp, FontWeight.w200);
  TextStyle F23W300 = getText(23.0.sp, FontWeight.w300);
  TextStyle F23W400 = getText(23.0.sp, FontWeight.w400);
  TextStyle F23W500 = getText(23.0.sp, FontWeight.w500);
  TextStyle F23W600 = getText(23.0.sp, FontWeight.w600);
  TextStyle F23W700 = getText(23.0.sp, FontWeight.w700);
  TextStyle F23W800 = getText(23.0.sp, FontWeight.w800);
  TextStyle F23W900 = getText(23.0.sp, FontWeight.w900);
  TextStyle F23Bold = getText(23.0.sp, FontWeight.bold);

  TextStyle F24W100 = getText(24.0.sp, FontWeight.w100);
  TextStyle F24W200 = getText(24.0.sp, FontWeight.w200);
  TextStyle F24W300 = getText(24.0.sp, FontWeight.w300);
  TextStyle F24W400 = getText(24.0.sp, FontWeight.w400);
  TextStyle F24W500 = getText(24.0.sp, FontWeight.w500);
  TextStyle F24W600 = getText(24.0.sp, FontWeight.w600);
  TextStyle F24W700 = getText(24.0.sp, FontWeight.w700);
  TextStyle F24W800 = getText(24.0.sp, FontWeight.w800);
  TextStyle F24W900 = getText(24.0.sp, FontWeight.w900);
  TextStyle F24Bold = getText(24.0.sp, FontWeight.bold);

  TextStyle F25W100 = getText(25.0.sp, FontWeight.w100);
  TextStyle F25W200 = getText(25.0.sp, FontWeight.w200);
  TextStyle F25W300 = getText(25.0.sp, FontWeight.w300);
  TextStyle F25W400 = getText(25.0.sp, FontWeight.w400);
  TextStyle F25W500 = getText(25.0.sp, FontWeight.w500);
  TextStyle F25W600 = getText(25.0.sp, FontWeight.w600);
  TextStyle F25W700 = getText(25.0.sp, FontWeight.w700);
  TextStyle F25W800 = getText(25.0.sp, FontWeight.w800);
  TextStyle F25W900 = getText(25.0.sp, FontWeight.w900);
  TextStyle F25Bold = getText(25.0.sp, FontWeight.bold);

  TextStyle F26W100 = getText(26.0.sp, FontWeight.w100);
  TextStyle F26W200 = getText(26.0.sp, FontWeight.w200);
  TextStyle F26W300 = getText(26.0.sp, FontWeight.w300);
  TextStyle F26W400 = getText(26.0.sp, FontWeight.w400);
  TextStyle F26W500 = getText(26.0.sp, FontWeight.w500);
  TextStyle F26W600 = getText(26.0.sp, FontWeight.w600);
  TextStyle F26W700 = getText(26.0.sp, FontWeight.w700);
  TextStyle F26W800 = getText(26.0.sp, FontWeight.w800);
  TextStyle F26W900 = getText(26.0.sp, FontWeight.w900);
  TextStyle F26Bold = getText(26.0.sp, FontWeight.bold);

  TextStyle F27W100 = getText(27.0.sp, FontWeight.w100);
  TextStyle F27W200 = getText(27.0.sp, FontWeight.w200);
  TextStyle F27W300 = getText(27.0.sp, FontWeight.w300);
  TextStyle F27W400 = getText(27.0.sp, FontWeight.w400);
  TextStyle F27W500 = getText(27.0.sp, FontWeight.w500);
  TextStyle F27W600 = getText(27.0.sp, FontWeight.w600);
  TextStyle F27W700 = getText(27.0.sp, FontWeight.w700);
  TextStyle F27W800 = getText(27.0.sp, FontWeight.w800);
  TextStyle F27W900 = getText(27.0.sp, FontWeight.w900);
  TextStyle F27Bold = getText(27.0.sp, FontWeight.bold);

  TextStyle F28W100 = getText(28.0.sp, FontWeight.w100);
  TextStyle F28W200 = getText(28.0.sp, FontWeight.w200);
  TextStyle F28W300 = getText(28.0.sp, FontWeight.w300);
  TextStyle F28W400 = getText(28.0.sp, FontWeight.w400);
  TextStyle F28W500 = getText(28.0.sp, FontWeight.w500);
  TextStyle F28W600 = getText(28.0.sp, FontWeight.w600);
  TextStyle F28W700 = getText(28.0.sp, FontWeight.w700);
  TextStyle F28W800 = getText(28.0.sp, FontWeight.w800);
  TextStyle F28W900 = getText(28.0.sp, FontWeight.w900);
  TextStyle F28Bold = getText(28.0.sp, FontWeight.bold);

  TextStyle F29W100 = getText(29.0.sp, FontWeight.w100);
  TextStyle F29W200 = getText(29.0.sp, FontWeight.w200);
  TextStyle F29W300 = getText(29.0.sp, FontWeight.w300);
  TextStyle F29W400 = getText(29.0.sp, FontWeight.w400);
  TextStyle F29W500 = getText(29.0.sp, FontWeight.w500);
  TextStyle F29W600 = getText(29.0.sp, FontWeight.w600);
  TextStyle F29W700 = getText(29.0.sp, FontWeight.w700);
  TextStyle F29W800 = getText(29.0.sp, FontWeight.w800);
  TextStyle F29W900 = getText(29.0.sp, FontWeight.w900);
  TextStyle F29Bold = getText(29.0.sp, FontWeight.bold);

  TextStyle F30W100 = getText(30.0.sp, FontWeight.w100);
  TextStyle F30W200 = getText(30.0.sp, FontWeight.w200);
  TextStyle F30W300 = getText(30.0.sp, FontWeight.w300);
  TextStyle F30W400 = getText(30.0.sp, FontWeight.w400);
  TextStyle F30W500 = getText(30.0.sp, FontWeight.w500);
  TextStyle F30W600 = getText(30.0.sp, FontWeight.w600);
  TextStyle F30W700 = getText(30.0.sp, FontWeight.w700);
  TextStyle F30W800 = getText(30.0.sp, FontWeight.w800);
  TextStyle F30W900 = getText(30.0.sp, FontWeight.w900);
  TextStyle F30Bold = getText(30.0.sp, FontWeight.bold);

  TextStyle F31W100 = getText(31.0.sp, FontWeight.w100);
  TextStyle F31W200 = getText(31.0.sp, FontWeight.w200);
  TextStyle F31W300 = getText(31.0.sp, FontWeight.w300);
  TextStyle F31W400 = getText(31.0.sp, FontWeight.w400);
  TextStyle F31W500 = getText(31.0.sp, FontWeight.w500);
  TextStyle F31W600 = getText(31.0.sp, FontWeight.w600);
  TextStyle F31W700 = getText(31.0.sp, FontWeight.w700);
  TextStyle F31W800 = getText(31.0.sp, FontWeight.w800);
  TextStyle F31W900 = getText(31.0.sp, FontWeight.w900);
  TextStyle F31Bold = getText(31.0.sp, FontWeight.bold);

  TextStyle F32W100 = getText(32.0.sp, FontWeight.w100);
  TextStyle F32W200 = getText(32.0.sp, FontWeight.w200);
  TextStyle F32W300 = getText(32.0.sp, FontWeight.w300);
  TextStyle F32W400 = getText(32.0.sp, FontWeight.w400);
  TextStyle F32W500 = getText(32.0.sp, FontWeight.w500);
  TextStyle F32W600 = getText(32.0.sp, FontWeight.w600);
  TextStyle F32W700 = getText(32.0.sp, FontWeight.w700);
  TextStyle F32W800 = getText(32.0.sp, FontWeight.w800);
  TextStyle F32W900 = getText(32.0.sp, FontWeight.w900);
  TextStyle F32Bold = getText(32.0.sp, FontWeight.bold);

  TextStyle F33W100 = getText(33.0.sp, FontWeight.w100);
  TextStyle F33W200 = getText(33.0.sp, FontWeight.w200);
  TextStyle F33W300 = getText(33.0.sp, FontWeight.w300);
  TextStyle F33W400 = getText(33.0.sp, FontWeight.w400);
  TextStyle F33W500 = getText(33.0.sp, FontWeight.w500);
  TextStyle F33W600 = getText(33.0.sp, FontWeight.w600);
  TextStyle F33W700 = getText(33.0.sp, FontWeight.w700);
  TextStyle F33W800 = getText(33.0.sp, FontWeight.w800);
  TextStyle F33W900 = getText(33.0.sp, FontWeight.w900);
  TextStyle F33Bold = getText(33.0.sp, FontWeight.bold);

  TextStyle F34W100 = getText(34.0.sp, FontWeight.w100);
  TextStyle F34W200 = getText(34.0.sp, FontWeight.w200);
  TextStyle F34W300 = getText(34.0.sp, FontWeight.w300);
  TextStyle F34W400 = getText(34.0.sp, FontWeight.w400);
  TextStyle F34W500 = getText(34.0.sp, FontWeight.w500);
  TextStyle F34W600 = getText(34.0.sp, FontWeight.w600);
  TextStyle F34W700 = getText(34.0.sp, FontWeight.w700);
  TextStyle F34W800 = getText(34.0.sp, FontWeight.w800);
  TextStyle F34W900 = getText(34.0.sp, FontWeight.w900);
  TextStyle F34Bold = getText(34.0.sp, FontWeight.bold);

  TextStyle F35W100 = getText(35.0.sp, FontWeight.w100);
  TextStyle F35W200 = getText(35.0.sp, FontWeight.w200);
  TextStyle F35W300 = getText(35.0.sp, FontWeight.w300);
  TextStyle F35W400 = getText(35.0.sp, FontWeight.w400);
  TextStyle F35W500 = getText(35.0.sp, FontWeight.w500);
  TextStyle F35W600 = getText(35.0.sp, FontWeight.w600);
  TextStyle F35W700 = getText(35.0.sp, FontWeight.w700);
  TextStyle F35W800 = getText(35.0.sp, FontWeight.w800);
  TextStyle F35W900 = getText(35.0.sp, FontWeight.w900);
  TextStyle F35Bold = getText(35.0.sp, FontWeight.bold);

  TextStyle F36W100 = getText(36.0.sp, FontWeight.w100);
  TextStyle F36W200 = getText(36.0.sp, FontWeight.w200);
  TextStyle F36W300 = getText(36.0.sp, FontWeight.w300);
  TextStyle F36W400 = getText(36.0.sp, FontWeight.w400);
  TextStyle F36W500 = getText(36.0.sp, FontWeight.w500);
  TextStyle F36W600 = getText(36.0.sp, FontWeight.w600);
  TextStyle F36W700 = getText(36.0.sp, FontWeight.w700);
  TextStyle F36W800 = getText(36.0.sp, FontWeight.w800);
  TextStyle F36W900 = getText(36.0.sp, FontWeight.w900);
  TextStyle F36Bold = getText(36.0.sp, FontWeight.bold);
}
