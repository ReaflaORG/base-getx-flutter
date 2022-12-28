import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global/global_indicator.dart';
import '../controller/layout_controller.dart';
import '../widgets/bottom_navigation_bar_widget.dart';

class LayoutView extends GetView<LayoutController> {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Scaffold(
          body: controller.isLoad.value
              ? const GlobalCircularProgressIndicatorWidget()
              : IndexedStack(
                  index: controller.bottomNavigationIndex.value,
                  children: controller.bottomNavigationData,
                ),
          bottomNavigationBar: const BottomNavigationBarWidget(),
        ),
      ),
    );
  }
}
