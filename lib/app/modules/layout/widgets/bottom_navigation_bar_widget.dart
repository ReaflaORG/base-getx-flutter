import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../theme/color_paths.dart';
import '../controller/layout_controller.dart';

class BottomNavigationBarWidget extends GetView<LayoutController> {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 20,
        //   vertical: 20,
        // ),
        // height: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: const Radius.circular(16).r,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.35),
              blurRadius: 10,
              offset: const Offset(0, 5),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: const Radius.circular(16).r,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.bottomNavigationIndex.value,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (int index) {
              controller.handleChangeBottomNavigationIndex(index: index);
            },
            items: List.generate(
              controller.bottomNavigationIconData.length,
              (index) {
                return BottomNavigationBarItem(
                  label: controller.bottomNavigationIconData[index].label,
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    width: 26,
                    height: 26,
                    child: !controller.bottomNavigationIconData[index].isType
                        ? controller.bottomNavigationIconData[index].icon
                        : Image.asset(
                            controller.bottomNavigationIconData[index].image!,
                            color:
                                index == controller.bottomNavigationIndex.value
                                    ? ColorPath.PrimaryColor
                                    : ColorPath.GreyColor400,
                          ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
