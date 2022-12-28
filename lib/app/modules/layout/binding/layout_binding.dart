import 'package:get/get.dart';

import '../controller/layout_controller.dart';

class LayoutBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(LayoutController());
    Get.lazyPut(() => LayoutController(), fenix: true);
  }
}
