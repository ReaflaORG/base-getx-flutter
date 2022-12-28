import 'package:get/get.dart';

import '../controller/fourth_controller.dart';

class FourthBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(FourthController());
    Get.lazyPut(() => FourthController(), fenix: true);
  }
}
