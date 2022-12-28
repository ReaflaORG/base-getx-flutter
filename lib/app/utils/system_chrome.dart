import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 기기 방향 타입
enum DeviceOrientationType {
  Portrait,
  PreventLandscape,
  Landscape,
}

class SystemChome {
  /// 상단 상태 표시줄 색상 설정
  ///
  /// ※ Android 버전 M 이상에서만 작동
  ///
  /// [color] Color : 상단 상태 표시줄 색상
  ///
  /// [brightness] Brightness : 상단 상태 표시줄 아이콘 밝기
  static void setSystemChromeStatusBarColor({
    Color color = Colors.transparent,
    Brightness brightness = Brightness.light,
  }) {
    return SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: brightness,
      ),
    );
  }

  /// 디바이스 방향 설정
  ///
  /// [type] DeviceOrientationType : 기기 방향 타입
  static Future<void> setSystemChromeDeviceOrientation({
    required DeviceOrientationType type,
  }) async {
    switch (type) {
      case DeviceOrientationType.Portrait:
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        break;
      case DeviceOrientationType.PreventLandscape:
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        break;
      case DeviceOrientationType.Landscape:
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        break;
    }
  }
}
