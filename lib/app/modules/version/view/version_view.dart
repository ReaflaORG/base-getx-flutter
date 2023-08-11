import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../theme/color_paths.dart';
import '../../../theme/text_paths.dart';
import '../controller/version_controller.dart';

class VersionView extends GetView<VersionController> {
  const VersionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(22).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 30.h,
                color: Colors.white,
                child: Text(
                  '앱 업데이트',
                  style: TextPath.TextF24Bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "${dotenv.env["APP_KO_NAME"]}을 원활하게 이용하기 위해서 최신 버전으로 업데이트할 것을 권장합니다.\n이전 버전은 지원되지 않으니, 업데이트를 진행해야 계속할 수 있습니다.",
                style: TextPath.TextF14W400.copyWith(
                  color: ColorPath.GreyColor600,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.all(22).r,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              '업데이트',
              style: TextPath.TextF16W600.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
