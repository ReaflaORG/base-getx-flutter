import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../utils/app_version_check.dart';

/// 체크 서비스
class CheckService extends GetxService {
  static CheckService get to => Get.find();

  // Variable ▼

  // Funcion ▼

  Future<void> handleScreenSize() async {
    final Rx<BuildContext?> context = Get.context.obs;

    Logger().i('''
스크린 사이즈
displaySize : ${MediaQuery.of(context.value!).size}
window.physicalSize : ${window.physicalSize}
statusBarHeight : ${MediaQuery.of(context.value!).padding.top}
devicePixelRatio : ${MediaQuery.of(context.value!).devicePixelRatio}''');
  }

  Future<bool> handleAppVersionCheck() async {
    bool temp = false;

    await AppVersionCheck().checkUpdate().then((value) {
      Logger().i('''
앱 업데이트 체크
canUpdate : ${value.canUpdate}
currentVersion : ${value.currentVersion}
newVersion : ${value.newVersion}
appURL : ${value.appURL}
errorMessage : ${value.errorMessage}''');

      if (value.canUpdate) {
        // 앱 업데이트가 필요할때
        temp = true;
      } else {
        // 앱 업데이트가 필요 없을때
        temp = false;
      }
    });

    return temp;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    // 다바이스 사이즈 체크
    await handleScreenSize();

    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
