import 'package:get/get.dart';

import '../controller/first_controller.dart';

class FirstBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(FirstController());
    Get.lazyPut(() => FirstController(), fenix: true);
  }
}
