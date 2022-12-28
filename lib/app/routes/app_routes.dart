// ignore_for_file: constant_identifier_names, unused_field

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  /// 스플래시
  static const SPLASH = _Paths.SPLASH;

  /// 테마
  static const THEME = _Paths.THEME;

  /// 권한 동의 안내 화면
  static const PERMISSION = _Paths.PERMISSION;

  /// 레이아웃
  static const LAYOUT = _Paths.LAYOUT;

  /// 첫번째 화면
  static const FIRST = _Paths.FIRST;

  /// 두번째 화면
  static const SECOND = _Paths.SECOND;

  /// 세번째 화면
  static const THIRD = _Paths.THIRD;

  /// 네번째 화면
  static const FOURTH = _Paths.FOURTH;
}

abstract class _Paths {
  _Paths._();

  /// 스플래시
  static const SPLASH = '/splash';

  /// 테마
  static const THEME = '/theme';

  /// 권한 동의 안내 화면
  static const PERMISSION = '/permission';

  /// 레이아웃
  static const LAYOUT = '/layout';

  /// 첫번째 화면
  static const FIRST = '/first';

  /// 두번째 화면
  static const SECOND = '/second';

  /// 세번째 화면
  static const THIRD = '/third';

  /// 네번째 화면
  static const FOURTH = '/fourth';
}
