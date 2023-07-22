import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: AnimatedOpacity(
          opacity: controller.AnimatedOpacity.value,
          duration: controller.AnimatedDuration.value,
          curve: controller.AnimatedCurves.value,
          onEnd: () async => await controller.handleRoutePush(),
          child: Center(
            child: Image.asset(
              'assets/images/logo/logo_black.png',
              width: 75.w,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
