// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:base/app/modules/permission/binding/permission_binding.dart';
import 'package:base/app/modules/permission/view/permission_view.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../modules/first/binding/first_binding.dart';
import '../modules/first/view/first_view.dart';
import '../modules/fourth/binding/fourth_binding.dart';
import '../modules/fourth/view/fourth_view.dart';
import '../modules/layout/binding/layout_binding.dart';
import '../modules/layout/view/layout_view.dart';
import '../modules/second/binding/second_binding.dart';
import '../modules/second/view/second_view.dart';
import '../modules/splash/binding/splash_binding.dart';
import '../modules/splash/view/splash_view.dart';
import '../modules/theme/binding/theme_binding.dart';
import '../modules/theme/view/theme_view.dart';
import '../modules/third/binding/third_binding.dart';
import '../modules/third/view/third_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      title: '스플래시',
      name: INITIAL,
      page: () => const SplashView(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 800),
      curve: Curves.easeIn,
      popGesture: false,
    ),
    GetPage(
      title: '테마',
      name: Routes.THEME,
      page: () => const ThemeView(),
      binding: ThemeBinding(),
      transition: Transition.native,
      // transitionDuration: const Duration(milliseconds: 800),
      // curve: Curves.easeIn,
      popGesture: false,
    ),
    GetPage(
      title: '권한 동의 안내 화면',
      name: Routes.PERMISSION,
      page: () => const PermissionView(),
      binding: PermissionBinding(),
      transition: Transition.native,
      // transitionDuration: const Duration(milliseconds: 800),
      // curve: Curves.easeIn,
      popGesture: false,
    ),
    GetPage(
      title: '레이아웃',
      name: Routes.LAYOUT,
      page: () => const LayoutView(),
      binding: LayoutBinding(),
      transition: Transition.native,
      // transitionDuration: const Duration(milliseconds: 800),
      // curve: Curves.easeIn,
      popGesture: false,
    ),
    GetPage(
      title: '첫번째 화면',
      name: Routes.FIRST,
      page: () => const FirstView(),
      binding: FirstBinding(),
      transition: Transition.native,
      // transitionDuration: const Duration(milliseconds: 800),
      // curve: Curves.easeIn,
      popGesture: false,
    ),
    GetPage(
      title: '두번째 화면',
      name: Routes.SECOND,
      page: () => const SecondView(),
      binding: SecondBinding(),
      transition: Transition.native,
      // transitionDuration: const Duration(milliseconds: 800),
      // curve: Curves.easeIn,
      popGesture: false,
    ),
    GetPage(
      title: '세번째 화면',
      name: Routes.THIRD,
      page: () => const ThirdView(),
      binding: ThirdBinding(),
      transition: Transition.native,
      // transitionDuration: const Duration(milliseconds: 800),
      // curve: Curves.easeIn,
      popGesture: false,
    ),
    GetPage(
      title: '네번째 화면',
      name: Routes.FOURTH,
      page: () => const FourthView(),
      binding: FourthBinding(),
      transition: Transition.native,
      // transitionDuration: const Duration(milliseconds: 800),
      // curve: Curves.easeIn,
      popGesture: false,
    ),
  ];
}
