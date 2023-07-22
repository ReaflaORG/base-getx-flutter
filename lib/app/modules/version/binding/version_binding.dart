import 'package:get/get.dart';

import '../controller/version_controller.dart';

class VersionBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(VersionController());
    Get.lazyPut(() => VersionController(), fenix: true);
  }
}
