import 'package:get/get.dart';

import '../controller/second_controller.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(SecondController());
    Get.lazyPut(() => SecondController(), fenix: true);
  }
}
