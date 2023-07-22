import '../utils/color_hex_convert.dart';

/// 컬러 색상표
///
/// 빈도수가 높은 컬러는 기본 설정으로 빼기 (의견)
///
/// https://material.io/resources/color/#!/?view.left=0&view.right=0&secondary.color=C5CAE9&primary.color=7d63fd&secondary.text.color=FAFAFA
class ColorPath {
  // Primary ▼

  /// #468CC0
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/468CC0.jpg)
  static final PrimaryColor = Color('468CC0');
  static final PrimaryColor50 = Color('F2F7FC');
  static final PrimaryColor100 = Color('D9E6F0');
  static final PrimaryColor200 = Color('B0CEE0');
  static final PrimaryColor300 = Color('87B5D1');
  static final PrimaryColor400 = Color('699EC3');
  static final PrimaryColor500 = Color('468CC0');
  static final PrimaryColor600 = Color('3E7BB1');
  static final PrimaryColor700 = Color('3569A1');
  static final PrimaryColor800 = Color('2C5792');
  static final PrimaryColor900 = Color('234481');

  /// #2F7ABA
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/2F7ABA.jpg)
  static final PrimaryDarkColor = Color('2F7ABA');

  /// #E3F2FD
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/E3F2FD.jpg)
  static final PrimaryLightColor = Color('E3F2FD');

  // Secondary ▼

  /// #04A8B4
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/04A8B4.jpg)
  static final SecondaryColor = Color('04A8B4');

  /// #CDEEF0
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/CDEEF0.jpg)
  static final SecondaryLightColor = Color('CDEEF0');

  /// #9499b7
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/9499b7.jpg)
  static final SecondaryDarkColor = Color('9499b7');

  /// #FF80AB
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/FF80AB.jpg)
  static final TertiaryColor = Color('FF80AB');

  /// #FFDDD3
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/FFDDD3.jpg)
  static final TertiaryLightColor = Color('FFDDD3');

  // Text ▼

  /// #FFFFFF
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/FFFFFF.jpg)
  static final TextWhite = Color('FFFFFF');

  /// #424242
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/424242.jpg)
  static final TextGrey1 = Color('505866');

  /// #616161
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/616161.jpg)
  static final TextGrey2 = Color('B1B8C0');

  // Border ▼

  /// #9E9E9E
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/9E9E9E.jpg)
  static final Border = Color('f3f4f6');

  // Background ▼

  /// #FFFFFF
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/FFFFFF.jpg)
  static final BackgroundWhite = Color('FFFFFF');

  /// #ECEFF1
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/ECEFF1.jpg)
  static final Background1HECEFF1 = Color('ECEFF1');

  /// #D9D9D9
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/D9D9D9.jpg)
  static final Background2HD9D9D9 = Color('D9D9D9');

  /// #FEE500
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/FEE500.jpg)
  static final Background3HFEE500 = Color('FEE500');

  // Fucntional Colors ▼

  /// #B00020
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/B00020.jpg)
  static final ErrorColor = Color('B00020');

  /// #FFC107
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/FFC107.jpg)
  static final WarningColor = Color('FFC107');

  /// #4CAF50
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/4CAF50.jpg)
  static final SuccessColor = Color('4CAF50');

  /// #2196F3
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/2196F3.jpg)
  static final FocusedColor = Color('2196F3');

  // PlaceHolder ▼

  /// #BDBDBD
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/BDBDBD.jpg)
  static final PlaceholderColor = Color('BDBDBD');

  // Disabled ▼

  /// #BDBDBD
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/BDBDBD.jpg)
  static final DisabledColor = Color('BDBDBD');

  // Etc ▼

  /// #1A1E27
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/383A3F.jpg)
  static final BlackColor = Color('1A1E27');

  /// #424242
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/424242.jpg)
  static final TextBodyColor = Color('424242');

  /// #E0E0E0
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/E0E0E0.jpg)
  static final GreyColor = Color('E0E0E0');

  /// #EEEEEE
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/EEEEEE.jpg)
  static final GreyLightColor = Color('EEEEEE');

  /// #757575
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/757575.jpg)
  static final GreyDarkColor = Color('757575');

  /// #cccccc
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/cccccc.jpg)
  static final GrayCCCColor = Color('CCCCCC');

  /// #333333
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/333333.jpg)
  static final Gray333Color = Color('333333');

  /// #2F7ABA
  ///
  /// ![](https://flutter.s3.ap-northeast-2.amazonaws.com/color/2F7ABA.jpg)
  static final Blue2F7ABAColor = Color('2F7ABA');
}
