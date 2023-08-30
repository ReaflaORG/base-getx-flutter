import 'package:get/get.dart';

/// 로딩 서비스
class LoadingService extends GetxService {
  static LoadingService get to => Get.find();

  /// 로딩 체크
  Rx<bool> isLoading = false.obs;

  /// 버튼 로딩 체크
  Rx<bool> isButtonLoading = false.obs;

  @override
  void onInit() {
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
}
