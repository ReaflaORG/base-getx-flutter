import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../global/global_divier_widget.dart';
import '../../../models/permission_model.dart';
import '../../../service/permission_service.dart';
import '../../../theme/color_path.dart';
import '../../../theme/texts.dart';
import '../controller/permission_controller.dart';

class PermissionView extends GetView<PermissionController> {
  const PermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                // height: 52.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      width: 36.w,
                      height: 38.67.w,
                      decoration: BoxDecoration(
                        color: ColorPath.GreyColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.r),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.r),
                        ),
                        child: SizedBox(
                          width: 28.w,
                          height: 22.67.w,
                          child: Image.asset(
                            'assets/images/logo/logo.png',
                            // fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 14.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '앱 접근권한 안내',
                          style: TextPath.Heading3F16W600.copyWith(
                            height: 1.20.w,
                          ),
                        ),
                        SizedBox(height: 2.w),
                        Text(
                          '파킨슨 앱 이용 시 다음 권한들을 사용하오니\r\n허용해 주시기 바랍니다.',
                          style: TextPath.TextF12W500.copyWith(
                            color: ColorPath.TextGrey3H616161,
                            height: 1.15.w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GlobalDividerWidget.basic(),
              const RequiredPermissionsWidget(),
              SizedBox(height: 25.w),
              const OptionPermissionsWidget(),
            ],
          ),
        ),
        bottomSheet: SizedBox(
          width: double.infinity,
          height: 48.w,
          child: TextButton(
            onPressed: () {
              PermissionService.to.handlePermissionOnPressed();
            },
            style: TextButton.styleFrom(
              backgroundColor: ColorPath.PrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.r),
              ),
            ),
            child: Text(
              '동의하고 계속하기',
              style: TextPath.TextF14W600.copyWith(
                color: ColorPath.TextWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 필수 접근 권한 위젯
class RequiredPermissionsWidget extends GetView<PermissionController> {
  const RequiredPermissionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.permissionRequiredList.isEmpty
        ? const SizedBox.shrink()
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '필수 접근 권한',
                style: TextPath.TextF14W600.copyWith(
                  color: ColorPath.TextGrey1H212121,
                ),
              ),
              SizedBox(height: 25.w),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.permissionRequiredList.length,
                itemBuilder: (context, index) {
                  return PermissionContentWidget(
                    index: index,
                    permissionList: controller.permissionRequiredList,
                  );
                },
              ),
            ],
          );
  }
}

/// 선택 접근 권한 위젯
class OptionPermissionsWidget extends GetView<PermissionController> {
  const OptionPermissionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.permissionOptionList.isEmpty
        ? const SizedBox.shrink()
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '선택 접근 권한',
                style: TextPath.TextF14W600.copyWith(
                  color: ColorPath.TextGrey1H212121,
                ),
              ),
              SizedBox(height: 25.w),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.permissionOptionList.length,
                itemBuilder: (context, index) {
                  return PermissionContentWidget(
                    index: index,
                    permissionList: controller.permissionOptionList,
                  );
                },
              ),
            ],
          );
  }
}

/// 권한 동의 내용 위젯
///
/// [index] int : 권한 리스트 인덱스
///
/// [permissionList] List<PermissionModel> : 권한 리스트
class PermissionContentWidget extends StatelessWidget {
  const PermissionContentWidget({
    super.key,
    required this.index,
    required this.permissionList,
  });

  final int index;
  final List<PermissionModel> permissionList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: index == 0 ? 0 : 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 36.w,
            height: 36.w,
            decoration: BoxDecoration(
              color: ColorPath.Background1HECEFF1,
              shape: BoxShape.circle,
            ),
            child: permissionList[index].isType
                ? Image.asset(
                    permissionList[index].image!,
                    width: 19.w,
                    height: 19.w,
                  )
                : permissionList[index].icon,
          ),
          SizedBox(width: 18.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                permissionList[index].title,
                style: TextPath.TextF14W500,
              ),
              Text(
                permissionList[index].description,
                style: TextPath.TextF12W400.copyWith(
                  color: ColorPath.TextGrey2H424242,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
