import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../utils/app_version_check.dart';

/// 전역 서비스
class GlobalService extends GetxService {
  static GlobalService get to => Get.find();

  // Variable ▼

  /// 테마 모드
  ///
  /// [ThemeMode.light] : 밝은 테마
  ///
  /// [ThemeMode.dark] : 어두운 테마
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

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
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
