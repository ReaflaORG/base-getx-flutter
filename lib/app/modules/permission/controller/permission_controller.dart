// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:get/get.dart';

import '../../../models/permission_model.dart';
import '../../../service/permission_service.dart';

/// 권한 요청 컨트롤러
class PermissionController extends GetxController {
  static PermissionController get to => Get.find();

  // Data ▼

  /// 필수 권한 요청 데이터
  RxList<PermissionModel> permissionRequiredList = <PermissionModel>[].obs;

  /// 선택 권한 요청 데이터
  RxList<PermissionModel> permissionOptionList = <PermissionModel>[].obs;

  // Function ▼

  @override
  Future<void> onInit() async {
    await Future.value([
      permissionRequiredList.assignAll(
        PermissionService.to.permissionList.where(
          (element) => element.isRequired == true,
        ),
      ),
      permissionOptionList.assignAll(
        PermissionService.to.permissionList.where(
          (element) => element.isRequired == false,
        ),
      ),
    ]);

    super.onInit();
  }

  @override
  void onReady() {
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
