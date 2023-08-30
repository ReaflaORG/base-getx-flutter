// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../service/loading_service.dart';
import '../service/permission_service.dart';
import '../theme/color_paths.dart';
import '../theme/text_paths.dart';
import 'global_button_widget.dart';
import 'global_divier_widget.dart';

/// 글로벌 다이얼로그
class GlobalDialog {
  /// 앱 업데이트 모달
  ///
  /// [cancelOnPressed] : 취소 함수
  ///
  /// [okOnPressed] : 업데이트 함수
  static Future<dynamic> GlobalAppVersionUpgradeModalWidget({
    Future<void> Function()? cancelOnPressed,
    Future<void> Function()? okOnPressed,
  }) =>
      Get.dialog(
        WillPopScope(
          onWillPop: () => Future(() => false),
          child: AlertDialog(
            title: const Text('앱 업데이트'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.w),
                SizedBox(
                  width: Get.width,
                  child: Text(
                    "${dotenv.env["APP_KO_NAME"]}을 원활하게 이용하기 위해서 최신 버전으로 업데이트할 것을 권장합니다. 이전 버전은 지원되지 않으니, 업데이트를 진행해야 계속할 수 있습니다.",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 10.w),
              ],
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: cancelOnPressed,
                child: Text(
                  '취소',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              CupertinoDialogAction(
                onPressed: okOnPressed,
                child: Text(
                  '업데이트',
                  style: TextStyle(
                    color: ColorPath.PrimaryDarkColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        name: 'GlobalAppVersionUpgradeModalWidget',
        barrierDismissible: false,
        routeSettings:
            const RouteSettings(name: 'GlobalAppVersionUpgradeModalWidget'),
      );

  /// 권한 허용 확인 모달
  ///
  /// [controller] : PermissionService
  ///
  /// [onWillPop] : 뒤로가기 버튼 클릭 시 실행할 함수
  ///
  /// [okOnPressed] : 허용하기 버튼 클릭 시 실행할 함수
  static Future<dynamic> PermissionModalOpenAppSettingsWidget({
    required PermissionService controller,
    Future<bool> Function()? onWillPop,
    Future<void> Function()? okOnPressed,
  }) =>
      Get.dialog(
        WillPopScope(
          onWillPop: () => Future(() => false),
          child: CupertinoAlertDialog(
            title: const Text('권한을 허용해주세요'),
            content: Column(
              children: [
                SizedBox(height: 10.w),
                SizedBox(
                  width: Get.width,
                  child: Text(
                    "접근 권한이 없어 해당 기능을 사용할 수 없습니다. ${dotenv.env["APP_KO_NAME"]}을 원활하게 이용하기 위해서 권한을 허용해주세요",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 10.w),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ).r,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width,
                        child: const Text(
                          '허용이 필요한 항목',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '위치기반',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12.sp,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(width: 21.w),
                          Text(
                            controller.isLocationPermissionsGranted.value
                                ? '허용'
                                : '비허용',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12.sp,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              CupertinoDialogAction(
                child: Text(
                  '취소',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
                onPressed: () {
                  controller.handlePermissionDialogCancelOnPressed();
                },
              ),
              CupertinoDialogAction(
                child: const Text('설정'),
                onPressed: () {
                  controller.handlePermissionReOnPressed();
                },
              ),
            ],
          ),
        ),
        name: 'PermissionModalOpenAppSettingsWidget',
        barrierDismissible: false,
        routeSettings: const RouteSettings(
          name: 'PermissionModalOpenAppSettingsWidget',
        ),
      );

  /// 권한 허용 필수 모달
  ///
  /// [controller] : PermissionService
  static Future<dynamic> PermissionModalBottomSheetWidget(
    BuildContext context, {
    required PermissionService controller,
  }) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            alignment: Alignment.center,
            actionsAlignment: MainAxisAlignment.center,
            title: Text(
              "${dotenv.env["APP_KO_NAME"]} 이용 안내",
              textAlign: TextAlign.center,
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(controller.permissionList.length, (index) {
                    return Theme(
                      data: ThemeData().copyWith(
                        colorScheme: ColorScheme.light(
                          primary: Colors.grey.shade600,
                        ),
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        title: Row(
                          children: [
                            controller.permissionList[index].icon!,
                            SizedBox(width: 10.w),
                            Text(
                              controller.permissionList[index].title,
                              style: TextPath().F14W600,
                            ),
                          ],
                        ),
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 0,
                              right: 20,
                            ).w,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ).w,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              controller.permissionList[index].description,
                              style: TextPath().F14W500.copyWith(
                                    color: ColorPath.GreyColor500,
                                  ),
                            ),
                          ),
                          GlobalDividerWidget.horizontal(
                            margin: const EdgeInsets.fromLTRB(20, 15, 20, 0).w,
                          ),
                        ],
                      ),
                    );
                  }),
                  SizedBox(height: 20.w),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_rounded,
                        color: Colors.grey.shade600,
                        size: 16.sp,
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  "권한 허용 후 ${dotenv.env["APP_KO_NAME"]}를 시작합니다",
                                  style: TextPath().F14W500.copyWith(
                                        color: ColorPath.GreyColor500,
                                      ),
                                ),
                              ],
                            ),
                            Wrap(
                              children: [
                                Text(
                                  "아래 '허용하기'를 눌러 권한을 허용해 주세요",
                                  style: TextPath().F14W500.copyWith(
                                        color: ColorPath.GreyColor500,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              Obx(
                () => SizedBox(
                  width: double.infinity,
                  child: RElevatedButton(
                    isLoader: LoadingService.to.isButtonLoading.value,
                    onPressed: () => controller.handlePermissionOnPressed(),
                    child: Text(
                      '허용하기',
                      style: TextPath().F16W500.copyWith(
                            color: ColorPath.WhiteColor,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  /// 컨펌 다이어로그 위젯
  ///
  /// [context] 컨텍스트
  ///
  /// [title] 타이틀
  ///
  /// [content] 내용
  ///
  /// [cancelLabel] 취소 버튼 텍스트
  ///
  /// [okLabel] 확인 버튼 텍스트
  ///
  /// [cancelOnPressed] 취소 버튼 콜백
  ///
  /// [okOnPressed] 확인 버튼 콜백
  ///
  /// [isLoading] 로딩중 여부
  static Future<dynamic> ConfirmDialogWidget(
    BuildContext context, {
    required String title,
    required String content,
    String? cancelLabel = '취소',
    dynamic okLabel = '확인',
    Color? cancelColor,
    Color? okColor,
    void Function()? cancelOnPressed,
    void Function()? okOnPressed,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(content),
              ],
            ),
          ),
          actions: [
            Obx(
              () => TextButton(
                onPressed: LoadingService.to.isButtonLoading.value
                    ? null
                    : () {
                        if (cancelOnPressed == null) {
                          Get.back();
                          return;
                        }

                        cancelOnPressed();
                      },
                child: Text(
                  cancelLabel!,
                  style: TextPath().F16W500.copyWith(
                        color: cancelColor ?? ColorPath.GreyColor600,
                      ),
                ),
              ),
            ),
            Obx(
              () => TextButton(
                onPressed: LoadingService.to.isButtonLoading.value
                    ? null
                    : okOnPressed,
                child: LoadingService.to.isButtonLoading.value
                    ? SizedBox(
                        width: 15.w,
                        height: 15.w,
                        child: CircularProgressIndicator(
                          strokeWidth: 3.0.w,
                        ),
                      )
                    : Text(
                        okLabel!,
                        style: TextPath().F16W500.copyWith(
                              color: okColor ?? ColorPath.PrimaryColor,
                            ),
                      ),
              ),
            ),
          ],
        );
      },
    );
  }

  /// 얼럿 다이어로그 위젯
  ///
  /// [context] 컨텍스트
  ///
  /// [title] 타이틀
  ///
  /// [content] 내용
  ///
  /// [okLabel] 확인 버튼 텍스트
  ///
  /// [okOnPressed] 확인 버튼 콜백
  static Future<dynamic> AlertDialogWidget(
    BuildContext context, {
    required String title,
    required String content,
    dynamic okLabel = '확인',
    Color? okColor,
    void Function()? okOnPressed,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // 뒤로가기 불가
        return WillPopScope(
          onWillPop: () => Future(() => false),
          child: AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(content),
                ],
              ),
            ),
            actions: [
              Obx(
                () => TextButton(
                  onPressed: LoadingService.to.isButtonLoading.value
                      ? null
                      : okOnPressed,
                  child: LoadingService.to.isButtonLoading.value
                      ? SizedBox(
                          width: 15.w,
                          height: 15.w,
                          child: CircularProgressIndicator(
                            strokeWidth: 3.0.w,
                          ),
                        )
                      : Text(
                          okLabel!,
                          style: TextPath().F16W500.copyWith(
                                color: okColor ?? ColorPath.PrimaryColor,
                              ),
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// 바텀시트 진행사항 진행 여부 다이어로그 위젯
  static Future<dynamic> BottomSheetWillPopScopeDialogWidget({String? type}) {
    return Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(10).w,
        height: 160.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ).r,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20).w,
              child: Wrap(
                children: [
                  Text(
                    '진행사항이 저장되지 않을 수 있습니다',
                    style: TextPath().F18W600,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.w),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 50.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();

                        switch (type) {
                          case 'signin':
                            Get.until((route) => Get.currentRoute == '/signin');
                            break;
                          default:
                            Get.back();
                            break;
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.grey.shade400,
                        ),
                      ),
                      child: const Text(
                        '나가기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 50.w,
                    child: ElevatedButton(
                      child: const Text(
                        '계속진행',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Get.back(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ).r,
      ),
      enterBottomSheetDuration: const Duration(milliseconds: 250),
      exitBottomSheetDuration: const Duration(milliseconds: 100),
    );
  }
}
