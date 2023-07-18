// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:get/get.dart';

import '../../../service/global_service.dart';

class FourthController extends GetxController {
  static FourthController get to => Get.find();

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    // 디바이스 사이즈 체크
    GlobalService.to.handleScreenSize();

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
