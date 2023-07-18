import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_color/random_color.dart';

class ThemeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  static ThemeController get to => Get.find();

  Rx<ScrollController?> scrollController = ScrollController().obs;
  Rx<TabController?> tabController = (null as TabController?).obs;
  Rx<PageController?> pageController = PageController(initialPage: 0).obs;

  RxList<ScrollController> scrollControllers = [
    ScrollController(),
    ScrollController(),
    ScrollController(),
  ].obs;

  Rx<Random> random = Random().obs;
  Rx<RandomColor> randomColor = RandomColor().obs;
  Rx<bool> isShowBottomBar = true.obs;
  Rx<int> currentIndex = 0.obs;

  Rx<double> sliverMinHeight = 80.0.obs;
  Rx<double> sliverMaxHeight = 140.0.obs;
  Rx<int> pageIndex = 0.obs;

  void pageBtnOnTap(int page) {
    pageIndex.value = page;
    pageController.value!.animateToPage(
      page,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeOutCirc,
    );
  }

  @override
  Future<void> onInit() async {
    tabController.value = TabController(vsync: this, length: 3);

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
