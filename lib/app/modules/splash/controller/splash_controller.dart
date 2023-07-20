// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../service/global_service.dart';
import '../../../service/permission_service.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  // Variable ▼

  // 처리 상태
  RxBool isLoader = false.obs;
  // 애니메이션 투명도 (0.0 ~ 1.0)
  Rx<double> AnimatedOpacity = 0.0.obs;
  // 애니메이션 지연 시간
  Rx<Duration> AnimatedDuration = const Duration(milliseconds: 1500).obs;
  // 애니메이션 효과
  Rx<Cubic> AnimatedCurves = Curves.easeIn.obs;

  Rx<TextEditingController> iconController = TextEditingController().obs;
  Rx<String> selectedValue = "USA".obs;
  Rx<bool> isChecked = false.obs;
  Rx<double> slide = 0.0.obs;
  Rx<bool> gender = false.obs;
  Rx<SearchController> searchController = SearchController().obs;
  Rx<TimeOfDay> selectedTime = TimeOfDay.now().obs;
  Rx<int> selectedNav = 0.obs;

  Future<void> handleRefresh() async {
    isChecked.value = !isChecked.value;
    // 새로고침 작업 수행
    await Future.delayed(const Duration(seconds: 10));

    // 새로고침 작업 완료
    isChecked.value = !isChecked.value;
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      cancelText: '취소',
      confirmText: '확인',
      helpText: '시간 선택',
      // builder: (BuildContext context, Widget? child) {
      //   return Theme(
      //     data: ThemeData.light(
      //       useMaterial3: true,
      //     ).copyWith(
      //       colorScheme: ColorScheme.light(
      //         primary: Colors.black,
      //         onPrimary: Colors.white,
      //         surface: Colors.white,
      //         onSurface: Colors.black,
      //       ),
      //       dialogBackgroundColor: Colors.white,
      //     ),
      //     child: child!,
      //   );
      // },
    );

    if (pickedTime != null && pickedTime != selectedTime) {
      selectedTime.value = pickedTime;
    }
  }

  // Function ▼

  /// 화면 이동 처리 핸들러
  Future<void> handleRoutePush({
    int milliseconds = 2000,
  }) async {
    // 앱 버전 체크
    if (!await GlobalService.to.handleAppVersionCheck()) {
      // 처리 상태 변경
      isLoader.value = true;
      return;
    }

    await Future.delayed(Duration(milliseconds: milliseconds), () {
      if (isLoader.value) {
        return;
      }

      // 처리 상태 변경
      isLoader.value = true;

      // 권한을 처음 체크하는 경우
      if (GetStorage().read('initialize_permission') == null) {
        if (PermissionService.to.permissionList.isNotEmpty) {
          // 권한을 허용할 리스트가 있는 경우
          Get.offAllNamed('/permission');
        } else {
          // 권한을 허용할 리스트가 없는 경우
          Get.offAllNamed('/permission');
        }
      } else {
        // 이미 권한을 허용한 경우
        Get.offAllNamed('/permission');
      }
    });
  }

  /// 애니메이션 핸들러
  Future<void> handleAnimatedChange() async {
    // 애니메이션 시작 (Fade In)
    await Future.delayed(const Duration(milliseconds: 0), () {
      AnimatedOpacity.value = 1.0;
    });

    // 애니메이션 종료 (Fade Out)
    await Future.delayed(const Duration(milliseconds: 2000), () {
      AnimatedCurves.value = Curves.easeOut;
      AnimatedOpacity.value = 0.0;
    });
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const SizedBox(
          height: 200,
          child: Center(
            child: Text(
              'This is a bottom sheet',
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    );
  }

  @override
  Future<void> onInit() async {
    // 애니메이션 핸들러
    await handleAnimatedChange();

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
