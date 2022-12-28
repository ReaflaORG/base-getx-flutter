import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../global/global_toast_widget.dart';
import '../models/base_response_model.dart';
import '../models/user_model.dart';
import '../provider/provider.dart';

/// 인증 서비스
class AuthService extends GetxService {
  static AuthService get to => Get.find();

  // Data ▼

  /// 유저 데이터
  Rx<UserModel> userData = UserModel().obs;

  // Variable ▼

  /// 액세스 토큰
  Rx<dynamic> accessToken = GetStorage().read('access_token').obs;

  /// 로그인 체크
  RxBool isLogin = false.obs;

  // Function ▼

  /// 로그인 처리 핸들러
  Future<void> handleLogin({
    required UserModel user,
    required String responseAccessToken,
  }) async {
    return;
  }

  /// 토큰 로그인 처리 핸들러
  Future<void> handleTokenLogin({
    required BaseResponseModel resposne,
  }) async {}

  /// 로그아웃 처리 핸들러
  Future<void> handleLogout() async {
    // 스토리지 초기화
    await handleAuthClear().then((value) {
      Get.offAllNamed('/signin');
    });
  }

  /// 회원탈퇴 처리 핸들러
  Future<void> handleWithOut() async {
    try {
      await Provider.dio(
        method: 'DELETE',
        url: '/myinfo',
      ).then((response) async {
        switch (response.statusCode) {
          case 200:
            await handleAuthClear().then((value) {
              Get.offAllNamed('/signin');
            });
            break;
          default:
            throw Exception(response.message);
        }
      });
    } catch (e) {
      GlobalToastWidget(e.toString().substring(11));
    }
  }

  /// Auth, 스토리지 초기화
  Future<void> handleAuthClear() async {
    await Future.value([
      accessToken.value = '',
      isLogin.value = false,
      GetStorage().remove('access_token'),
    ]);
  }

  /// 내 정보 확인
  Future<void> handleMyInfo() async {
    try {
      await Provider.dio(
        method: 'GET',
        url: '/myinfo',
      ).then((response) {
        switch (response.statusCode) {
          case 200:
            break;
          default:
            throw Exception(response.message);
        }
      });
    } catch (e) {
      GlobalToastWidget(e.toString().substring(11));
    }
  }

  /// 초기화
  Future<void> handleInitialization() async {}

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
