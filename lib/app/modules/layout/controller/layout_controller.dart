// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/bottom_navigation_model.dart';
import '../../first/view/first_view.dart';
import '../../fourth/view/fourth_view.dart';
import '../../second/view/second_view.dart';
import '../../third/view/third_view.dart';

/// 레이아웃 컨트롤러
class LayoutController extends GetxController {
  static LayoutController get to => Get.find();

  // Data ▼

  /// 바텀네비게이션 데이터
  late RxList<Widget> bottomNavigationData = [
    Navigator(
      key: Get.nestedKey(0),
      onGenerateRoute: (routeSetting) {
        return handleGetPageRoute(
          routeSetting: routeSetting,
          initialWidget: const FirstView(),
        );
      },
    ),
    Navigator(
      key: Get.nestedKey(1),
      onGenerateRoute: (routeSetting) {
        return handleGetPageRoute(
          routeSetting: routeSetting,
          initialWidget: const SecondView(),
        );
      },
    ),
    Navigator(
      key: Get.nestedKey(2),
      onGenerateRoute: (routeSetting) {
        return handleGetPageRoute(
          routeSetting: routeSetting,
          initialWidget: const ThirdView(),
        );
      },
    ),
    Navigator(
      key: Get.nestedKey(3),
      onGenerateRoute: (routeSetting) {
        return handleGetPageRoute(
          routeSetting: routeSetting,
          initialWidget: const FourthView(),
        );
      },
    ),
  ].obs;

  // 바텀 네비 아이템
  RxList<BottomNavigationModel> bottomNavigationIconData = [
    BottomNavigationModel(
      label: '홈',
      icon: const Icon(Icons.home_rounded),
    ),
    BottomNavigationModel(
      label: '최신',
      icon: const Icon(Icons.feed_rounded),
    ),
    BottomNavigationModel(
      label: '검색',
      icon: const Icon(Icons.search_rounded),
    ),
    BottomNavigationModel(
      label: '마이페이지',
      icon: const Icon(Icons.account_circle_rounded),
    ),
  ].obs;

  // Variable ▼

  /// 로딩 상태
  RxBool isLoad = true.obs;

  /// 바텀 네비게이션 인덱스
  RxInt bottomNavigationIndex = 0.obs;

  // Function ▼

  /// 페이지 라우터 핸들러
  ///
  /// [routeSetting] RouteSettings
  ///
  /// [initialWidget] Widget
  GetPageRoute<dynamic> handleGetPageRoute({
    required RouteSettings routeSetting,
    required Widget initialWidget,
  }) {
    dynamic result;

    dynamic map = {
      '/first': const FirstView(),
      '/second': const SecondView(),
      '/third': const ThirdView(),
      '/fourth': const FourthView(),
    };

    result = map[routeSetting.name] ?? GetPageRoute(page: () => initialWidget);

    return result;
  }

  void handleChangeBottomNavigationIndex({
    required int index,
  }) {
    bottomNavigationIndex.value = index;
  }

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      isLoad.value = false;
    });

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  InternalFinalCallback<void> get onStart => super.onStart;

  @override
  InternalFinalCallback<void> get onDelete => super.onDelete;
}
