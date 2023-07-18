import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../theme/text_paths.dart';
import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoader.value
          ? const SplashWidget()
          : const AppUpdateWidget(),
    );
  }
}

/// 스플래시 화면 위젯
class SplashWidget extends GetView<SplashController> {
  const SplashWidget({super.key});

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

/// 앱 업데이트 화면 위젯
class AppUpdateWidget extends GetView<SplashController> {
  const AppUpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('설정'),
          // centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Get.back();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Perform search action
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Show more options
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(22).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 50.h,
                color: Colors.white,
                child: Text(
                  '앱 업데이트',
                  style: TextPath.Heading1.copyWith(),
                ),
              ),
              SizedBox(height: 10.w),
              Text(
                "${dotenv.env["APP_KO_NAME"]}을 원활하게 이용하기 위해서 최신 버전으로 업데이트할 것을 권장합니다. 이전 버전은 지원되지 않으니, 업데이트를 진행해야 계속할 수 있습니다.",
              ),
              Obx(
                () => Switch(
                  value: controller.gender.value,
                  onChanged: (value) {
                    controller.gender.value = value;
                  },
                  activeColor: Colors.blue,
                  activeTrackColor: Colors.lightBlue,
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey.shade300,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                ),
              ),
              // AlertDialog(
              //   title: Text('Dialog Title'),
              //   content: Text('Dialog Content'),
              //   actions: [
              //     OutlinedButton(
              //       child: Text('Cancel'),
              //       onPressed: () {
              //         Navigator.of(context).pop();
              //       },
              //     ),
              //     OutlinedButton(
              //       child: Text('OK'),
              //       onPressed: () {
              //         // Perform OK action
              //         Navigator.of(context).pop();
              //       },
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.all(22).r,
          width: double.infinity,
          color: Colors.white,
          // child: PopupMenuButton<String>(
          //   itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          //     const PopupMenuItem<String>(
          //       value: 'option1',
          //       child: Text('Option 1'),
          //     ),
          //     const PopupMenuItem<String>(
          //       value: 'option2',
          //       child: Text('Option 2'),
          //     ),
          //     const PopupMenuItem<String>(
          //       value: 'option3',
          //       child: Text('Option 3'),
          //     ),
          //   ],
          //   onSelected: (String value) {
          //     // 선택된 항목에 대한 작업 수행
          //     print('Selected: $value');
          //   },
          // ),
          // child: ToggleButtons(
          //   isSelected: controller.isSelected,
          //   onPressed: (index) {
          //     controller.isSelected[index] = !controller.isSelected[index];
          //   },
          //   children: const [
          //     Icon(Icons.format_bold),
          //     Icon(Icons.format_italic),
          //     Icon(Icons.format_underline),
          //   ],
          // ),
          // child: ButtonBar(
          //   alignment: MainAxisAlignment.center,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text(
          //         '업데이트',
          //         style: TextPath.TextF16W600.copyWith(
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text(
          //         '업데이트',
          //         style: TextPath.TextF16W600.copyWith(
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text(
          //         '업데이트',
          //         style: TextPath.TextF16W600.copyWith(
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // child: SegmentedButton<int>(
          //   onSelectionChanged: (i) {},
          //   showSelectedIcon: false,
          //   segments: const <ButtonSegment<int>>[
          //     ButtonSegment<int>(
          //       value: 12,
          //       icon: Icon(Icons.thumb_up_alt_rounded),
          //       enabled: true,
          //     ),
          //     ButtonSegment<int>(
          //       value: 20,
          //       icon: Icon(Icons.thumb_down_alt_rounded),
          //     ),
          //   ],
          //   selected: const {12},
          // ),
          // child: FilledButton.tonal(
          //   onPressed: () {},
          //   child: Text(
          //     '업데이트',
          //     style: TextPath.TextF16W600.copyWith(
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          // child: FilledButton(
          //   onPressed: () {},
          //   child: Text(
          //     '업데이트',
          //     style: TextPath.TextF16W600.copyWith(
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          // child: IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.check_circle_outline_rounded,
          //     color: ColorPath.PrimaryColor,
          //   ),
          // ),
          // child: TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     '업데이트',
          //     style: TextPath.TextF16W600.copyWith(
          //       color: ColorPath.PrimaryColor,
          //     ),
          //   ),
          // ),
          // child: OutlinedButton(
          //   onPressed: () {},
          //   child: Text(
          //     '업데이트',
          //     style: TextPath.TextF16W600.copyWith(
          //       color: ColorPath.PrimaryColor,
          //     ),
          //   ),
          // ),
          child: ElevatedButton(
            onPressed: () {
              controller.showBottomSheet(context);
            },
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
