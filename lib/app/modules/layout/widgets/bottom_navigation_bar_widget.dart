import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/layout_controller.dart';

class BottomNavigationBarWidget extends GetView<LayoutController> {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        height: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 30,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23.r),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.bottomNavigationIndex.value,
            // elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            // selectedItemColor: Theme.of(context).primaryColor,
            selectedFontSize: 10.sp,
            // unselectedItemColor: const Color(0xff67686D),
            unselectedFontSize: 10.sp,
            // unselectedLabelStyle: TextStyle(
            //   height: Platform.isIOS ? 1.1.w : null,
            // ),
            backgroundColor: Colors.white,
            onTap: (int index) {
              controller.handleChangeBottomNavigationIndex(index: index);
            },
            items: List.generate(
              controller.bottomNavigationIconData.length,
              (index) {
                return BottomNavigationBarItem(
                  label: controller.bottomNavigationIconData[index].label,
                  icon: SizedBox(
                    width: 26.w,
                    height: 26.w,
                    child: !controller.bottomNavigationIconData[index].isType
                        ? controller.bottomNavigationIconData[index].icon
                        : Image.asset(
                            controller.bottomNavigationIconData[index].image!,
                            color:
                                index == controller.bottomNavigationIndex.value
                                    ? Theme.of(context).primaryColor
                                    : const Color(0xff67686D),
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
