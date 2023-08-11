// ignore_for_file: avoid_classes_with_only_static_members, prefer_const_constructors, slash_for_doc_comments, non_constant_identifier_names

import 'package:base_getx_flutter/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 텍스트 스타일
///
/// <대표이름><숫자>F<폰트사이즈>W<폰트굵기>
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
  static const Color blackColor = Color(0xFF000000);
  static const String fontFamily = FontFamily;
  static const double textLetterSpacing = 1.0;
  static const double textWordSpacing = 1.0;

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

  static TextStyle TextF8W100 = getText(8.0.sp, FontWeight.w100);
  static TextStyle TextF8W200 = getText(8.0.sp, FontWeight.w200);
  static TextStyle TextF8W300 = getText(8.0.sp, FontWeight.w300);
  static TextStyle TextF8W400 = getText(8.0.sp, FontWeight.w400);
  static TextStyle TextF8W500 = getText(8.0.sp, FontWeight.w500);
  static TextStyle TextF8W600 = getText(8.0.sp, FontWeight.w600);
  static TextStyle TextF8W700 = getText(8.0.sp, FontWeight.w700);
  static TextStyle TextF8W800 = getText(8.0.sp, FontWeight.w800);
  static TextStyle TextF8W900 = getText(8.0.sp, FontWeight.w900);
  static TextStyle TextF8Bold = getText(8.0.sp, FontWeight.bold);

  static TextStyle TextF9W100 = getText(9.0.sp, FontWeight.w100);
  static TextStyle TextF9W200 = getText(9.0.sp, FontWeight.w200);
  static TextStyle TextF9W300 = getText(9.0.sp, FontWeight.w300);
  static TextStyle TextF9W400 = getText(9.0.sp, FontWeight.w400);
  static TextStyle TextF9W500 = getText(9.0.sp, FontWeight.w500);
  static TextStyle TextF9W600 = getText(9.0.sp, FontWeight.w600);
  static TextStyle TextF9W700 = getText(9.0.sp, FontWeight.w700);
  static TextStyle TextF9W800 = getText(9.0.sp, FontWeight.w800);
  static TextStyle TextF9W900 = getText(9.0.sp, FontWeight.w900);
  static TextStyle TextF9Bold = getText(9.0.sp, FontWeight.bold);

  static TextStyle TextF10W100 = getText(10.0.sp, FontWeight.w100);
  static TextStyle TextF10W200 = getText(10.0.sp, FontWeight.w200);
  static TextStyle TextF10W300 = getText(10.0.sp, FontWeight.w300);
  static TextStyle TextF10W400 = getText(10.0.sp, FontWeight.w400);
  static TextStyle TextF10W500 = getText(10.0.sp, FontWeight.w500);
  static TextStyle TextF10W600 = getText(10.0.sp, FontWeight.w600);
  static TextStyle TextF10W700 = getText(10.0.sp, FontWeight.w700);
  static TextStyle TextF10W800 = getText(10.0.sp, FontWeight.w800);
  static TextStyle TextF10W900 = getText(10.0.sp, FontWeight.w900);
  static TextStyle TextF10Bold = getText(10.0.sp, FontWeight.bold);

  static TextStyle TextF11W100 = getText(11.0.sp, FontWeight.w100);
  static TextStyle TextF11W200 = getText(11.0.sp, FontWeight.w200);
  static TextStyle TextF11W300 = getText(11.0.sp, FontWeight.w300);
  static TextStyle TextF11W400 = getText(11.0.sp, FontWeight.w400);
  static TextStyle TextF11W500 = getText(11.0.sp, FontWeight.w500);
  static TextStyle TextF11W600 = getText(11.0.sp, FontWeight.w600);
  static TextStyle TextF11W700 = getText(11.0.sp, FontWeight.w700);
  static TextStyle TextF11W800 = getText(11.0.sp, FontWeight.w800);
  static TextStyle TextF11W900 = getText(11.0.sp, FontWeight.w900);
  static TextStyle TextF11Bold = getText(11.0.sp, FontWeight.bold);

  static TextStyle TextF12W100 = getText(12.0.sp, FontWeight.w100);
  static TextStyle TextF12W200 = getText(12.0.sp, FontWeight.w200);
  static TextStyle TextF12W300 = getText(12.0.sp, FontWeight.w300);
  static TextStyle TextF12W400 = getText(12.0.sp, FontWeight.w400);
  static TextStyle TextF12W500 = getText(12.0.sp, FontWeight.w500);
  static TextStyle TextF12W600 = getText(12.0.sp, FontWeight.w600);
  static TextStyle TextF12W700 = getText(12.0.sp, FontWeight.w700);
  static TextStyle TextF12W800 = getText(12.0.sp, FontWeight.w800);
  static TextStyle TextF12W900 = getText(12.0.sp, FontWeight.w900);
  static TextStyle TextF12Bold = getText(12.0.sp, FontWeight.bold);

  static TextStyle TextF13W100 = getText(13.0.sp, FontWeight.w100);
  static TextStyle TextF13W200 = getText(13.0.sp, FontWeight.w200);
  static TextStyle TextF13W300 = getText(13.0.sp, FontWeight.w300);
  static TextStyle TextF13W400 = getText(13.0.sp, FontWeight.w400);
  static TextStyle TextF13W500 = getText(13.0.sp, FontWeight.w500);
  static TextStyle TextF13W600 = getText(13.0.sp, FontWeight.w600);
  static TextStyle TextF13W700 = getText(13.0.sp, FontWeight.w700);
  static TextStyle TextF13W800 = getText(13.0.sp, FontWeight.w800);
  static TextStyle TextF13W900 = getText(13.0.sp, FontWeight.w900);
  static TextStyle TextF13Bold = getText(13.0.sp, FontWeight.bold);

  static TextStyle TextF14W100 = getText(14.0.sp, FontWeight.w100);
  static TextStyle TextF14W200 = getText(14.0.sp, FontWeight.w200);
  static TextStyle TextF14W300 = getText(14.0.sp, FontWeight.w300);
  static TextStyle TextF14W400 = getText(14.0.sp, FontWeight.w400);
  static TextStyle TextF14W500 = getText(14.0.sp, FontWeight.w500);
  static TextStyle TextF14W600 = getText(14.0.sp, FontWeight.w600);
  static TextStyle TextF14W700 = getText(14.0.sp, FontWeight.w700);
  static TextStyle TextF14W800 = getText(14.0.sp, FontWeight.w800);
  static TextStyle TextF14W900 = getText(14.0.sp, FontWeight.w900);
  static TextStyle TextF14Bold = getText(14.0.sp, FontWeight.bold);

  static TextStyle TextF15W100 = getText(15.0.sp, FontWeight.w100);
  static TextStyle TextF15W200 = getText(15.0.sp, FontWeight.w200);
  static TextStyle TextF15W300 = getText(15.0.sp, FontWeight.w300);
  static TextStyle TextF15W400 = getText(15.0.sp, FontWeight.w400);
  static TextStyle TextF15W500 = getText(15.0.sp, FontWeight.w500);
  static TextStyle TextF15W600 = getText(15.0.sp, FontWeight.w600);
  static TextStyle TextF15W700 = getText(15.0.sp, FontWeight.w700);
  static TextStyle TextF15W800 = getText(15.0.sp, FontWeight.w800);
  static TextStyle TextF15W900 = getText(15.0.sp, FontWeight.w900);
  static TextStyle TextF15Bold = getText(15.0.sp, FontWeight.bold);

  static TextStyle TextF16W100 = getText(16.0.sp, FontWeight.w100);
  static TextStyle TextF16W200 = getText(16.0.sp, FontWeight.w200);
  static TextStyle TextF16W300 = getText(16.0.sp, FontWeight.w300);
  static TextStyle TextF16W400 = getText(16.0.sp, FontWeight.w400);
  static TextStyle TextF16W500 = getText(16.0.sp, FontWeight.w500);
  static TextStyle TextF16W600 = getText(16.0.sp, FontWeight.w600);
  static TextStyle TextF16W700 = getText(16.0.sp, FontWeight.w700);
  static TextStyle TextF16W800 = getText(16.0.sp, FontWeight.w800);
  static TextStyle TextF16W900 = getText(16.0.sp, FontWeight.w900);
  static TextStyle TextF16Bold = getText(16.0.sp, FontWeight.bold);

  static TextStyle TextF17W100 = getText(17.0.sp, FontWeight.w100);
  static TextStyle TextF17W200 = getText(17.0.sp, FontWeight.w200);
  static TextStyle TextF17W300 = getText(17.0.sp, FontWeight.w300);
  static TextStyle TextF17W400 = getText(17.0.sp, FontWeight.w400);
  static TextStyle TextF17W500 = getText(17.0.sp, FontWeight.w500);
  static TextStyle TextF17W600 = getText(17.0.sp, FontWeight.w600);
  static TextStyle TextF17W700 = getText(17.0.sp, FontWeight.w700);
  static TextStyle TextF17W800 = getText(17.0.sp, FontWeight.w800);
  static TextStyle TextF17W900 = getText(17.0.sp, FontWeight.w900);
  static TextStyle TextF17Bold = getText(17.0.sp, FontWeight.bold);

  static TextStyle TextF18W100 = getText(18.0.sp, FontWeight.w100);
  static TextStyle TextF18W200 = getText(18.0.sp, FontWeight.w200);
  static TextStyle TextF18W300 = getText(18.0.sp, FontWeight.w300);
  static TextStyle TextF18W400 = getText(18.0.sp, FontWeight.w400);
  static TextStyle TextF18W500 = getText(18.0.sp, FontWeight.w500);
  static TextStyle TextF18W600 = getText(18.0.sp, FontWeight.w600);
  static TextStyle TextF18W700 = getText(18.0.sp, FontWeight.w700);
  static TextStyle TextF18W800 = getText(18.0.sp, FontWeight.w800);
  static TextStyle TextF18W900 = getText(18.0.sp, FontWeight.w900);
  static TextStyle TextF18Bold = getText(18.0.sp, FontWeight.bold);

  static TextStyle TextF19W100 = getText(19.0.sp, FontWeight.w100);
  static TextStyle TextF19W200 = getText(19.0.sp, FontWeight.w200);
  static TextStyle TextF19W300 = getText(19.0.sp, FontWeight.w300);
  static TextStyle TextF19W400 = getText(19.0.sp, FontWeight.w400);
  static TextStyle TextF19W500 = getText(19.0.sp, FontWeight.w500);
  static TextStyle TextF19W600 = getText(19.0.sp, FontWeight.w600);
  static TextStyle TextF19W700 = getText(19.0.sp, FontWeight.w700);
  static TextStyle TextF19W800 = getText(19.0.sp, FontWeight.w800);
  static TextStyle TextF19W900 = getText(19.0.sp, FontWeight.w900);
  static TextStyle TextF19Bold = getText(19.0.sp, FontWeight.bold);

  static TextStyle TextF20W100 = getText(20.0.sp, FontWeight.w100);
  static TextStyle TextF20W200 = getText(20.0.sp, FontWeight.w200);
  static TextStyle TextF20W300 = getText(20.0.sp, FontWeight.w300);
  static TextStyle TextF20W400 = getText(20.0.sp, FontWeight.w400);
  static TextStyle TextF20W500 = getText(20.0.sp, FontWeight.w500);
  static TextStyle TextF20W600 = getText(20.0.sp, FontWeight.w600);
  static TextStyle TextF20W700 = getText(20.0.sp, FontWeight.w700);
  static TextStyle TextF20W800 = getText(20.0.sp, FontWeight.w800);
  static TextStyle TextF20W900 = getText(20.0.sp, FontWeight.w900);
  static TextStyle TextF20Bold = getText(20.0.sp, FontWeight.bold);

  static TextStyle TextF21W100 = getText(21.0.sp, FontWeight.w100);
  static TextStyle TextF21W200 = getText(21.0.sp, FontWeight.w200);
  static TextStyle TextF21W300 = getText(21.0.sp, FontWeight.w300);
  static TextStyle TextF21W400 = getText(21.0.sp, FontWeight.w400);
  static TextStyle TextF21W500 = getText(21.0.sp, FontWeight.w500);
  static TextStyle TextF21W600 = getText(21.0.sp, FontWeight.w600);
  static TextStyle TextF21W700 = getText(21.0.sp, FontWeight.w700);
  static TextStyle TextF21W800 = getText(21.0.sp, FontWeight.w800);
  static TextStyle TextF21W900 = getText(21.0.sp, FontWeight.w900);
  static TextStyle TextF21Bold = getText(21.0.sp, FontWeight.bold);

  static TextStyle TextF22W100 = getText(22.0.sp, FontWeight.w100);
  static TextStyle TextF22W200 = getText(22.0.sp, FontWeight.w200);
  static TextStyle TextF22W300 = getText(22.0.sp, FontWeight.w300);
  static TextStyle TextF22W400 = getText(22.0.sp, FontWeight.w400);
  static TextStyle TextF22W500 = getText(22.0.sp, FontWeight.w500);
  static TextStyle TextF22W600 = getText(22.0.sp, FontWeight.w600);
  static TextStyle TextF22W700 = getText(22.0.sp, FontWeight.w700);
  static TextStyle TextF22W800 = getText(22.0.sp, FontWeight.w800);
  static TextStyle TextF22W900 = getText(22.0.sp, FontWeight.w900);
  static TextStyle TextF22Bold = getText(22.0.sp, FontWeight.bold);

  static TextStyle TextF23W100 = getText(23.0.sp, FontWeight.w100);
  static TextStyle TextF23W200 = getText(23.0.sp, FontWeight.w200);
  static TextStyle TextF23W300 = getText(23.0.sp, FontWeight.w300);
  static TextStyle TextF23W400 = getText(23.0.sp, FontWeight.w400);
  static TextStyle TextF23W500 = getText(23.0.sp, FontWeight.w500);
  static TextStyle TextF23W600 = getText(23.0.sp, FontWeight.w600);
  static TextStyle TextF23W700 = getText(23.0.sp, FontWeight.w700);
  static TextStyle TextF23W800 = getText(23.0.sp, FontWeight.w800);
  static TextStyle TextF23W900 = getText(23.0.sp, FontWeight.w900);
  static TextStyle TextF23Bold = getText(23.0.sp, FontWeight.bold);

  static TextStyle TextF24W100 = getText(24.0.sp, FontWeight.w100);
  static TextStyle TextF24W200 = getText(24.0.sp, FontWeight.w200);
  static TextStyle TextF24W300 = getText(24.0.sp, FontWeight.w300);
  static TextStyle TextF24W400 = getText(24.0.sp, FontWeight.w400);
  static TextStyle TextF24W500 = getText(24.0.sp, FontWeight.w500);
  static TextStyle TextF24W600 = getText(24.0.sp, FontWeight.w600);
  static TextStyle TextF24W700 = getText(24.0.sp, FontWeight.w700);
  static TextStyle TextF24W800 = getText(24.0.sp, FontWeight.w800);
  static TextStyle TextF24W900 = getText(24.0.sp, FontWeight.w900);
  static TextStyle TextF24Bold = getText(24.0.sp, FontWeight.bold);

  static TextStyle TextF25W100 = getText(25.0.sp, FontWeight.w100);
  static TextStyle TextF25W200 = getText(25.0.sp, FontWeight.w200);
  static TextStyle TextF25W300 = getText(25.0.sp, FontWeight.w300);
  static TextStyle TextF25W400 = getText(25.0.sp, FontWeight.w400);
  static TextStyle TextF25W500 = getText(25.0.sp, FontWeight.w500);
  static TextStyle TextF25W600 = getText(25.0.sp, FontWeight.w600);
  static TextStyle TextF25W700 = getText(25.0.sp, FontWeight.w700);
  static TextStyle TextF25W800 = getText(25.0.sp, FontWeight.w800);
  static TextStyle TextF25W900 = getText(25.0.sp, FontWeight.w900);
  static TextStyle TextF25Bold = getText(25.0.sp, FontWeight.bold);

  static TextStyle TextF26W100 = getText(26.0.sp, FontWeight.w100);
  static TextStyle TextF26W200 = getText(26.0.sp, FontWeight.w200);
  static TextStyle TextF26W300 = getText(26.0.sp, FontWeight.w300);
  static TextStyle TextF26W400 = getText(26.0.sp, FontWeight.w400);
  static TextStyle TextF26W500 = getText(26.0.sp, FontWeight.w500);
  static TextStyle TextF26W600 = getText(26.0.sp, FontWeight.w600);
  static TextStyle TextF26W700 = getText(26.0.sp, FontWeight.w700);
  static TextStyle TextF26W800 = getText(26.0.sp, FontWeight.w800);
  static TextStyle TextF26W900 = getText(26.0.sp, FontWeight.w900);
  static TextStyle TextF26Bold = getText(26.0.sp, FontWeight.bold);

  static TextStyle TextF27W100 = getText(27.0.sp, FontWeight.w100);
  static TextStyle TextF27W200 = getText(27.0.sp, FontWeight.w200);
  static TextStyle TextF27W300 = getText(27.0.sp, FontWeight.w300);
  static TextStyle TextF27W400 = getText(27.0.sp, FontWeight.w400);
  static TextStyle TextF27W500 = getText(27.0.sp, FontWeight.w500);
  static TextStyle TextF27W600 = getText(27.0.sp, FontWeight.w600);
  static TextStyle TextF27W700 = getText(27.0.sp, FontWeight.w700);
  static TextStyle TextF27W800 = getText(27.0.sp, FontWeight.w800);
  static TextStyle TextF27W900 = getText(27.0.sp, FontWeight.w900);
  static TextStyle TextF27Bold = getText(27.0.sp, FontWeight.bold);

  static TextStyle TextF28W100 = getText(28.0.sp, FontWeight.w100);
  static TextStyle TextF28W200 = getText(28.0.sp, FontWeight.w200);
  static TextStyle TextF28W300 = getText(28.0.sp, FontWeight.w300);
  static TextStyle TextF28W400 = getText(28.0.sp, FontWeight.w400);
  static TextStyle TextF28W500 = getText(28.0.sp, FontWeight.w500);
  static TextStyle TextF28W600 = getText(28.0.sp, FontWeight.w600);
  static TextStyle TextF28W700 = getText(28.0.sp, FontWeight.w700);
  static TextStyle TextF28W800 = getText(28.0.sp, FontWeight.w800);
  static TextStyle TextF28W900 = getText(28.0.sp, FontWeight.w900);
  static TextStyle TextF28Bold = getText(28.0.sp, FontWeight.bold);

  static TextStyle TextF29W100 = getText(29.0.sp, FontWeight.w100);
  static TextStyle TextF29W200 = getText(29.0.sp, FontWeight.w200);
  static TextStyle TextF29W300 = getText(29.0.sp, FontWeight.w300);
  static TextStyle TextF29W400 = getText(29.0.sp, FontWeight.w400);
  static TextStyle TextF29W500 = getText(29.0.sp, FontWeight.w500);
  static TextStyle TextF29W600 = getText(29.0.sp, FontWeight.w600);
  static TextStyle TextF29W700 = getText(29.0.sp, FontWeight.w700);
  static TextStyle TextF29W800 = getText(29.0.sp, FontWeight.w800);
  static TextStyle TextF29W900 = getText(29.0.sp, FontWeight.w900);
  static TextStyle TextF29Bold = getText(29.0.sp, FontWeight.bold);

  static TextStyle TextF30W100 = getText(30.0.sp, FontWeight.w100);
  static TextStyle TextF30W200 = getText(30.0.sp, FontWeight.w200);
  static TextStyle TextF30W300 = getText(30.0.sp, FontWeight.w300);
  static TextStyle TextF30W400 = getText(30.0.sp, FontWeight.w400);
  static TextStyle TextF30W500 = getText(30.0.sp, FontWeight.w500);
  static TextStyle TextF30W600 = getText(30.0.sp, FontWeight.w600);
  static TextStyle TextF30W700 = getText(30.0.sp, FontWeight.w700);
  static TextStyle TextF30W800 = getText(30.0.sp, FontWeight.w800);
  static TextStyle TextF30W900 = getText(30.0.sp, FontWeight.w900);
  static TextStyle TextF30Bold = getText(30.0.sp, FontWeight.bold);

  static TextStyle TextF31W100 = getText(31.0.sp, FontWeight.w100);
  static TextStyle TextF31W200 = getText(31.0.sp, FontWeight.w200);
  static TextStyle TextF31W300 = getText(31.0.sp, FontWeight.w300);
  static TextStyle TextF31W400 = getText(31.0.sp, FontWeight.w400);
  static TextStyle TextF31W500 = getText(31.0.sp, FontWeight.w500);
  static TextStyle TextF31W600 = getText(31.0.sp, FontWeight.w600);
  static TextStyle TextF31W700 = getText(31.0.sp, FontWeight.w700);
  static TextStyle TextF31W800 = getText(31.0.sp, FontWeight.w800);
  static TextStyle TextF31W900 = getText(31.0.sp, FontWeight.w900);
  static TextStyle TextF31Bold = getText(31.0.sp, FontWeight.bold);

  static TextStyle TextF32W100 = getText(32.0.sp, FontWeight.w100);
  static TextStyle TextF32W200 = getText(32.0.sp, FontWeight.w200);
  static TextStyle TextF32W300 = getText(32.0.sp, FontWeight.w300);
  static TextStyle TextF32W400 = getText(32.0.sp, FontWeight.w400);
  static TextStyle TextF32W500 = getText(32.0.sp, FontWeight.w500);
  static TextStyle TextF32W600 = getText(32.0.sp, FontWeight.w600);
  static TextStyle TextF32W700 = getText(32.0.sp, FontWeight.w700);
  static TextStyle TextF32W800 = getText(32.0.sp, FontWeight.w800);
  static TextStyle TextF32W900 = getText(32.0.sp, FontWeight.w900);
  static TextStyle TextF32Bold = getText(32.0.sp, FontWeight.bold);

  static TextStyle TextF33W100 = getText(33.0.sp, FontWeight.w100);
  static TextStyle TextF33W200 = getText(33.0.sp, FontWeight.w200);
  static TextStyle TextF33W300 = getText(33.0.sp, FontWeight.w300);
  static TextStyle TextF33W400 = getText(33.0.sp, FontWeight.w400);
  static TextStyle TextF33W500 = getText(33.0.sp, FontWeight.w500);
  static TextStyle TextF33W600 = getText(33.0.sp, FontWeight.w600);
  static TextStyle TextF33W700 = getText(33.0.sp, FontWeight.w700);
  static TextStyle TextF33W800 = getText(33.0.sp, FontWeight.w800);
  static TextStyle TextF33W900 = getText(33.0.sp, FontWeight.w900);
  static TextStyle TextF33Bold = getText(33.0.sp, FontWeight.bold);

  static TextStyle TextF34W100 = getText(34.0.sp, FontWeight.w100);
  static TextStyle TextF34W200 = getText(34.0.sp, FontWeight.w200);
  static TextStyle TextF34W300 = getText(34.0.sp, FontWeight.w300);
  static TextStyle TextF34W400 = getText(34.0.sp, FontWeight.w400);
  static TextStyle TextF34W500 = getText(34.0.sp, FontWeight.w500);
  static TextStyle TextF34W600 = getText(34.0.sp, FontWeight.w600);
  static TextStyle TextF34W700 = getText(34.0.sp, FontWeight.w700);
  static TextStyle TextF34W800 = getText(34.0.sp, FontWeight.w800);
  static TextStyle TextF34W900 = getText(34.0.sp, FontWeight.w900);
  static TextStyle TextF34Bold = getText(34.0.sp, FontWeight.bold);

  static TextStyle TextF35W100 = getText(35.0.sp, FontWeight.w100);
  static TextStyle TextF35W200 = getText(35.0.sp, FontWeight.w200);
  static TextStyle TextF35W300 = getText(35.0.sp, FontWeight.w300);
  static TextStyle TextF35W400 = getText(35.0.sp, FontWeight.w400);
  static TextStyle TextF35W500 = getText(35.0.sp, FontWeight.w500);
  static TextStyle TextF35W600 = getText(35.0.sp, FontWeight.w600);
  static TextStyle TextF35W700 = getText(35.0.sp, FontWeight.w700);
  static TextStyle TextF35W800 = getText(35.0.sp, FontWeight.w800);
  static TextStyle TextF35W900 = getText(35.0.sp, FontWeight.w900);
  static TextStyle TextF35Bold = getText(35.0.sp, FontWeight.bold);

  static TextStyle TextF36W100 = getText(36.0.sp, FontWeight.w100);
  static TextStyle TextF36W200 = getText(36.0.sp, FontWeight.w200);
  static TextStyle TextF36W300 = getText(36.0.sp, FontWeight.w300);
  static TextStyle TextF36W400 = getText(36.0.sp, FontWeight.w400);
  static TextStyle TextF36W500 = getText(36.0.sp, FontWeight.w500);
  static TextStyle TextF36W600 = getText(36.0.sp, FontWeight.w600);
  static TextStyle TextF36W700 = getText(36.0.sp, FontWeight.w700);
  static TextStyle TextF36W800 = getText(36.0.sp, FontWeight.w800);
  static TextStyle TextF36W900 = getText(36.0.sp, FontWeight.w900);
  static TextStyle TextF36Bold = getText(36.0.sp, FontWeight.bold);
}
