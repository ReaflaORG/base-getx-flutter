import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';

import '../global_widgets/global_dialog_widget.dart';
import '../models/permission_model.dart';
import '../theme/color_paths.dart';
import 'firebase_cloud_messaging_service.dart';

/// 권한 서비스
class PermissionService extends GetxService {
  static PermissionService get to => Get.find();

  /// [Data] ▼

  RxList<PermissionModel> permissionList = [
    PermissionModel(
      title: '위치 권한',
      // image: 'assets/images/permission/location.png',
      icon: Icon(
        Icons.location_on_rounded,
        color: ColorPath.GreyColor800,
      ),
      description: '위치기반 검색을 허용합니다',
      isRequired: true,
      isExpanded: false,
    ),
    PermissionModel(
      title: '알림',
      // image: 'assets/images/permission/notifications.png',
      icon: Icon(
        Icons.notification_add_rounded,
        color: ColorPath.GreyColor600,
      ),
      description: '푸시 알림을 허용합니다',
      isRequired: true,
      isExpanded: false,
    ),
    PermissionModel(
      title: '카메라',
      // image: 'assets/images/permission/address.png',
      icon: Icon(
        Icons.camera_alt_rounded,
        color: ColorPath.GreyColor600,
        size: 24,
      ),
      description: '파일 업로드를 위해 카메라를 사용합니다',
      isRequired: true,
      isExpanded: false,
    ),
    PermissionModel(
      title: '마이크',
      // image: 'assets/images/permission/address.png',
      icon: Icon(
        Icons.mic_rounded,
        color: ColorPath.GreyColor600,
        size: 24,
      ),
      description: '파일 업로드를 위해 마이크를 사용합니다',
      isRequired: true,
      isExpanded: false,
    ),
    PermissionModel(
      title: '주소록',
      // image: 'assets/images/permission/address.png',
      icon: Icon(
        Icons.contact_phone_rounded,
        color: ColorPath.GreyColor600,
        size: 24,
      ),
      description: '연락을 위해 주소록을 사용합니다',
      isRequired: true,
      isExpanded: false,
    ),
    PermissionModel(
      title: '연락처',
      // image: 'assets/images/permission/phone.png',
      icon: Icon(
        Icons.phone_rounded,
        color: ColorPath.GreyColor600,
      ),
      description: '연락을 위해 주소록을 사용합니다',
      isRequired: true,
      isExpanded: false,
    ),
  ].obs;

  /// [Variable] ▼

  /// 권한 프로세스 종료 체크
  RxBool isPermissionSuccess = false.obs;

  /// 위치기반 허용 여부
  RxBool isLocationPermissionsGranted = false.obs;

  /// [Funcion] ▼

  /// 권한 허용 버튼
  Future<dynamic> handlePermissionOnPressed() async {
    final Map<Permission, PermissionStatus> permissionStatus = await [
      // 알림 권한
      Permission.notification,
      // 카메라 권한
      Permission.camera,
      // 사진 권한
      Permission.photos,
      // 마이크 권한
      Permission.microphone,
      // 주소록 권한
      Permission.contacts,
      // 위치 기반 권한
      // Permission.location,
      // 미디어와 위치 기반 권한
      // Permission.accessMediaLocation,
      // 알림 정책 액세스 권한
      // Permission.accessNotificationPolicy,
      // 활동 인식 권한
      // Permission.activityRecognition,
      // 앱 추적 투명성 권한
      // Permission.appTrackingTransparency,
      // 오디오 권한
      // Permission.audio,
      // 블루투스 권한
      // Permission.bluetooth,
      // 블루투스 광고 권한
      // Permission.bluetoothAdvertise,
      // 블루투스 연결 권한
      // Permission.bluetoothConnect,
      // 블루투스 스캔 권한
      // Permission.bluetoothScan,
      // 캘린더 권한
      // Permission.calendar,
      // 중요한 알림 권한
      // Permission.criticalAlerts,
      // 배터리 최적화 무시 권한
      // Permission.ignoreBatteryOptimizations,
      // 위치 권한
      // Permission.location,
      // 항상 위치 권한
      // Permission.locationAlways,
      // 위치 사용 중일 때 위치 권한
      // Permission.locationWhenInUse,
      // 외부 저장소 관리 권한
      // Permission.manageExternalStorage,
      // 미디어 라이브러리 권한
      // Permission.mediaLibrary,
      // 근처 와이파이 장치 권한
      // Permission.nearbyWifiDevices,
      // 전화 권한
      // Permission.phone,
      // 사진 추가 권한
      // Permission.photosAddOnly,
      // 알림 권한
      // Permission.reminders,
      // 패키지 설치 요청 권한
      // Permission.requestInstallPackages,
      // 정확한 알람 예약 권한
      // Permission.scheduleExactAlarm,
      // 센서 권한
      // Permission.sensors,
      // 항상 센서 권한
      // Permission.sensorsAlways,
      // SMS 권한
      // Permission.sms,
      // 음성 권한
      // Permission.speech,
      // 저장소 권한
      // Permission.storage,
      // 시스템 알림 창 권한
      // Permission.systemAlertWindow,
    ].request();

    /// 파이어베이스 클라우드 메시징 서비스 초기화
    await FirebaseCloudMessagingService.to.handleInitialize();

    for (var index = 0; index < permissionStatus.length; index++) {
      if (index == permissionStatus.length - 1) {
        isPermissionSuccess.value = true;
      }

      switch (permissionStatus[index]) {
        case PermissionStatus.denied:
          Logger().d('사용자가 요청한 기능에 대한 액세스를 거부한 경우');

          isLocationPermissionsGranted.value = false;
          await GlobalDialog.PermissionModalOpenAppSettingsWidget(
              controller: this);
          break;
        case PermissionStatus.granted:
          Logger().d('사용자가 요청한 기능에 대한 액세스 권한을 부여한 경우');

          handlePermissionGranted();
          break;
        case PermissionStatus.limited:
          Logger().d('사용자가 제한된 액세스를 위해 이 애플리케이션을 승인했습니다. iOS(iOS14+)에서만 지원됨');

          isLocationPermissionsGranted.value = false;
          break;
        case PermissionStatus.permanentlyDenied:
          Logger().d(
              '요청된 기능에 대한 권한이 영구적으로 거부되면 이 권한을 요청할 때 권한 대화 상자가 표시되지 않습니다. 사용자는 여전히 설정에서 권한 상태를 변경할 수 있습니다. Android에서만 지원됩니다.');

          isLocationPermissionsGranted.value = false;
          Get.back();
          await GlobalDialog.PermissionModalOpenAppSettingsWidget(
              controller: this);
          break;
        case PermissionStatus.restricted:
          Logger().d(
              'OS가 요청한 기능에 대한 액세스를 거부했습니다. 사용자는 자녀 보호 기능과 같은 활성 제한으로 인해 이 앱의 상태를 변경할 수 없습니다. iOS에서만 지원됩니다.');

          isLocationPermissionsGranted.value = false;
          await GlobalDialog.PermissionModalOpenAppSettingsWidget(
              controller: this);
          break;
        default:
          // 여러 권한이 있는 경우에는 해당되지 않을 경우 넘긴다.
          handlePermissionGranted();
          break;
      }
    }
  }

  /// 모달 취소 버튼
  Future<dynamic> handlePermissionDialogCancelOnPressed() async {
    Get.back();

    /// 권한의 허용이 필수인 경우
    // Future.delayed(const Duration(milliseconds: 100), () async {
    //   await GlobalPermissionModalBottomSheetWidget(
    //     controller: this,
    //   );
    // });
  }

  /// 권한 재요청
  Future<dynamic> handlePermissionReOnPressed() async {
    Get.back();
    openAppSettings();
  }

  /// 권한 허용
  Future<dynamic> handlePermissionGranted() async {
    if (isPermissionSuccess.value) {
      GetStorage().write('initialize_permission', true);
      Get.offAllNamed('/layout');
    }
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
