import 'package:get/get.dart';

import '../controller/third_controller.dart';

class ThirdBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(ThridController());
    Get.lazyPut(() => ThirdController(), fenix: true);
  }
}
