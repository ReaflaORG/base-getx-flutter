import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 설정 서비스
class ConfigService extends GetxService {
  static ConfigService get to => Get.find();

  /// [Repository] ▼

  /// [Data] ▼

  /// 테마 모드
  ///
  /// [ThemeMode.light] : 밝은 테마
  ///
  /// [ThemeMode.dark] : 어두운 테마
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  /// [Variable] ▼

  /// [Funcion] ▼

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
