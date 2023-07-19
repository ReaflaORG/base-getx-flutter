import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../theme/color_paths.dart';
import '../../../theme/text_paths.dart';
import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoader.value
          ? const SplashWidget()
          : const NavigationBarWidget(),
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

class NavigationBarWidget extends GetView<SplashController> {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Navigation Bar Example'),
          ),
          body: Center(
            //   child: SelectableText(
            //     'Selected: ${controller.selectedNav.value}',
            //     style: TextPath.TextF12W400.copyWith(
            //       color: ColorPath.TextGrey1,
            //     ),
            //   ),
            // ),
            child: Center(
              child: LinearProgressIndicator(),
            ),
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: controller.selectedNav.value,
            onDestinationSelected: (int index) {
              controller.selectedNav.value = index;
            },
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: 'First',
              ),
              NavigationDestination(
                icon: Icon(Icons.bookmark_border_outlined),
                selectedIcon: Icon(Icons.bookmark),
                label: 'Second',
              ),
              NavigationDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: '',
              ),
            ],
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
          title: const Text('설정'),
          // centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Get.back();
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Perform search action
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Show more options
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        // body: Scrollbar(
        //   // controller: _scrollController,
        //   child: ListView.builder(
        //     itemCount: 100,
        //     itemBuilder: (BuildContext context, int index) {
        //       return ListTile(
        //         title: Text('Item $index'),
        //       );
        //     },
        //   ),
        // ),
        body: Obx(
          () => ListView(
            children: [
              const ExpansionTile(
                title: Text('Tile 1'),
                children: [
                  ListTile(
                    title: Text('Subtile 1'),
                  ),
                  ListTile(
                    title: Text('Subtile 2'),
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('Tile 2'),
                subtitle: const Text('Tile 22'),
                children: [
                  ListTile(
                    selected: controller.isChecked.value,
                    onTap: () {
                      controller.isChecked.value = !controller.isChecked.value;
                    },
                    splashColor: ColorPath.PrimaryColor,
                    leading: const Icon(Icons.person),
                    title: const Text('Subtile 3'),
                    subtitle: const Text('Subtitle 1'),
                    trailing: const Icon(Icons.arrow_forward),
                    selectedColor: ColorPath.PrimaryColor,
                  ),
                  const ListTile(
                    title: Text('Subtile 4'),
                  ),
                ],
              ),
            ],
          ),
        ),
        // body: Container(
        //   padding: const EdgeInsets.all(22).r,
        //   width: double.infinity,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        // DropdownMenu(
        //   controller: controller.iconController.value,
        //   // initialSelection: 'USA',
        //   leadingIcon: const Icon(Icons.flag),
        //   trailingIcon: const Icon(Icons.arrow_drop_down),
        //   label: Text('Country'),
        //   // hintText: 'hintText',
        //   // helperText: 'helperText',
        //   // errorText: 'errorText',
        //   selectedTrailingIcon: const Icon(Icons.check),
        //   enableFilter: true,
        //   // enableSearch: true,
        //   dropdownMenuEntries: const [
        //     DropdownMenuEntry(
        //       label: 'USA',
        //       value: 'USA',
        //     ),
        //     DropdownMenuEntry(
        //       label: 'Canada',
        //       value: 'Canada',
        //     ),
        //     DropdownMenuEntry(
        //       label: 'Brazil',
        //       value: 'Brazil',
        //     ),
        //     DropdownMenuEntry(
        //       label: 'England',
        //       value: 'England',
        //     ),
        //   ],
        //   onSelected: (String? value) {
        //     controller.selectedValue.value = value ?? '';
        //   },
        // ),
        // SearchAnchor(
        //   searchController: controller.searchController.value,
        //   isFullScreen: true,
        //   viewHintText: 'Search',
        //   // viewLeading: const Icon(Icons.search),
        //   // viewTrailing: [
        //   //   IconButton(
        //   //     icon: const Icon(Icons.keyboard_voice),
        //   //     onPressed: () {
        //   //       print('Use voice command');
        //   //     },
        //   //   ),
        //   //   IconButton(
        //   //     icon: const Icon(Icons.camera_alt),
        //   //     onPressed: () {
        //   //       print('Use image search');
        //   //     },
        //   //   ),
        //   // ],
        //   builder: (BuildContext context, SearchController controller) {
        //     return IconButton(
        //       icon: const Icon(Icons.search),
        //       onPressed: () {
        //         controller.openView();
        //       },
        //     );
        //   },
        //   suggestionsBuilder:
        //       (BuildContext context, SearchController controller) {
        //     return List<ListTile>.generate(
        //       20,
        //       (int index) {
        //         return ListTile(
        //           title: Text('item $index'),
        //           onTap: () {
        //             controller.closeView('item $index');
        //           },
        //         );
        //       },
        //     );
        //   },
        // ),
        // ElevatedButton(
        //   onPressed: () => controller.selectTime(context),
        //   child: const Text('Select Time'),
        // ),
        // DataTable(
        //   border: TableBorder.all(
        //     color: ColorPath.GreyColor,
        //     width: 1.0.w,
        //   ),
        //   columns: [
        //     DataColumn(label: Text('Name')),
        //     DataColumn(label: Text('Age')),
        //     DataColumn(label: Text('City')),
        //   ],
        //   rows: [
        //     DataRow(cells: [
        //       DataCell(Text('John')),
        //       DataCell(Text('25')),
        //       DataCell(Text('New York')),
        //     ]),
        //     DataRow(cells: [
        //       DataCell(Text('Jane')),
        //       DataCell(Text('30')),
        //       DataCell(Text('London')),
        //     ]),
        //     DataRow(cells: [
        //       DataCell(Text('Bob')),
        //       DataCell(Text('40')),
        //       DataCell(Text('Paris')),
        //     ]),
        //   ],
        // ),
        // BackButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        // ),
        // CloseButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        // ),
        // MenuItemButton(
        //   child: Text('Menu Item'),
        //   onPressed: () {
        //     print('Menu Item');
        //   },
        // ),
        // DrawerButton(
        //   onPressed: () {
        //     print('Drawer Button');
        //   },
        // ),
        // EndDrawerButton(
        //   onPressed: () {
        //     print('End Drawer Button');
        //   },
        // ),
        // ElevatedButton(
        //   child: Text('Open DatePicker'),
        //   onPressed: () {
        //     showDatePicker(
        //       context: context,
        //       errorFormatText: 'Enter valid date',
        //       errorInvalidText: 'Enter date in valid range',
        //       fieldHintText: 'Month/Date/Year',
        //       fieldLabelText: 'Enter Date',
        //       initialDate: DateTime.now(),
        //       firstDate: DateTime(1990),
        //       lastDate: DateTime(2023, 12, 31),
        //     );
        //   },
        // ),
        // ElevatedButton(
        //   child: Text('Open Range DatePicker'),
        //   onPressed: () {
        //     showDateRangePicker(
        //       context: context,
        //       firstDate: DateTime(2020),
        //       lastDate: DateTime(2025),
        //     );
        //   },
        // ),
        // Theme(
        //   data: Theme.of(context).copyWith(
        //     inputDecorationTheme: const InputDecorationTheme(
        //       focusedBorder: InputBorder.none,
        //     ),
        //   ),
        //   child: SearchBar(
        //     leading: const Icon(Icons.search),
        //     hintText: 'Type keyword',
        //     trailing: [
        //       IconButton(
        //         icon: const Icon(Icons.keyboard_voice),
        //         onPressed: () {
        //           print('Use voice command');
        //         },
        //       ),
        //       IconButton(
        //         icon: const Icon(Icons.camera_alt),
        //         onPressed: () {
        //           print('Use image search');
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        // TextField(
        //   decoration: InputDecoration(
        //     border: OutlineInputBorder(),
        //     labelText: 'Label',
        //     hintText: 'Hint',
        //   ),
        // ),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.check_circle_outline_rounded,
        //     color: ColorPath.PrimaryColor,
        //   ),
        // ),
        //       Container(
        //         width: double.infinity,
        //         height: 50.h,
        //         color: Colors.white,
        //         child: Text(
        //           '앱 업데이트',
        //           style: TextPath.Heading1.copyWith(),
        //         ),
        //       ),
        //       SizedBox(height: 10.w),
        //       Text(
        //         "${dotenv.env["APP_KO_NAME"]}을 원활하게 이용하기 위해서 최신 버전으로 업데이트할 것을 권장합니다. 이전 버전은 지원되지 않으니, 업데이트를 진행해야 계속할 수 있습니다.",
        //       ),

        // Obx(
        //   () => Switch(
        //     value: controller.gender.value,
        //     onChanged: (value) {
        //       controller.gender.value = value;
        //     },
        //     // activeColor: Colors.blue,
        //     // activeTrackColor: Colors.lightBlue,
        //     // inactiveThumbColor: Colors.grey,
        //     // inactiveTrackColor: Colors.grey.shade300,
        //     // materialTapTargetSize: MaterialTapTargetSize.padded,
        //   ),
        // ),
        // Obx(
        //   () => Slider(
        //     value: controller.slide.value,
        //     onChanged: (newValue) {
        //       controller.slide.value = newValue;
        //     },
        //     min: 0.0,
        //     max: 100.0,
        //     divisions: 100,
        //     label: '${controller.slide.value.toInt()}',
        //   ),
        // ),
        // MaterialBanner(
        //   content: Text('Banner'),
        //   leading: CircleAvatar(
        //     child: Icon(Icons.info),
        //     backgroundColor: Colors.white,
        //   ),
        //   actions: [
        //     TextButton(
        //       child: Text('Action 1'),
        //       onPressed: () {},
        //     ),
        //     TextButton(
        //       child: Text('Action 2'),
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
        // Banner(
        //   message: 'Banner',
        //   location: BannerLocation.topEnd,
        //   child: Container(
        //     width: double.infinity,
        //     height: 50.h,
        //     color: Colors.white,
        //     child: Text(
        //       '앱 업데이트',
        //       style: TextPath.Heading1.copyWith(),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 100.w,
        //   child: DefaultTabController(
        //     length: 3, // Number of tabs
        //     child: Scaffold(
        //       appBar: AppBar(
        //         title: Text('TabBar Example'),
        //         bottom: TabBar(
        //           tabs: [
        //             Tab(
        //               // icon: Icon(Icons.home),
        //               text: 'Home',
        //             ),
        //             Tab(
        //               // icon: Icon(Icons.favorite),
        //               text: 'Favorites',
        //             ),
        //             Tab(
        //               // icon: Icon(Icons.settings),
        //               text: 'Settingsssssssssssss',
        //             ),
        //           ],
        //         ),
        //       ),
        //       body: TabBarView(
        //         children: [
        //           // Content for the Home tab
        //           Center(
        //             child: Text('Home'),
        //           ),
        //           // Content for the Favorites tab
        //           Center(
        //             child: Text('Favorites'),
        //           ),
        //           // Content for the Settings tab
        //           Center(
        //             child: Text('Settings'),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // FilledButton(
        //   child: Text('Alert Dialog test'),
        //   onPressed: () {
        //     showDialog(
        //         context: context,
        //         barrierDismissible: false, // 바깥 영역 터치시 닫을지 여부
        //         builder: (BuildContext context) {
        //           return AlertDialog(
        //             title: Text('팝업 메시지'),
        //             content: SingleChildScrollView(
        //               child: ListBody(
        //                 children: <Widget>[
        //                   Text('Alert Dialog 테스트'),
        //                   Text('ok 버튼 클릭하세요'),
        //                 ],
        //               ),
        //             ),
        //             actions: <Widget>[
        //               TextButton(
        //                 child: Text('ok'),
        //                 onPressed: () {
        //                   Navigator.of(context).pop();
        //                 },
        //               ),
        //               TextButton(
        //                 child: Text('cancel'),
        //                 onPressed: () {
        //                   Navigator.of(context).pop();
        //                 },
        //               ),
        //             ],
        //           );
        //         });
        //   },
        // ),
        // Obx(
        //   () => Checkbox(
        //     value: controller.isChecked.value,
        //     onChanged: (bool? value) {
        //       controller.isChecked.value = value ?? false;
        //     },
        //   ),
        // ),
        // Tooltip(
        //   message:
        // 'This is a tooltipThis is a tooltipThis is a tooltipThis is a tooltipThis is a tooltipThis is a tooltipThis is a tooltipThis is a tooltip',
        // richMessage: TextSpan(
        //   text: 'This is a ',
        //   style: TextStyle(color: Colors.black),
        //   children: [
        //     TextSpan(
        //       text: 'tooltip',
        //       style: TextStyle(color: Colors.blue),
        //     ),
        //   ],
        // ),
        //   child: ElevatedButton(
        //     child: Text('Button'),
        //     onPressed: () {
        //       // 버튼 클릭 시 동작할 내용
        //     },
        //   ),
        // ),
        // ElevatedButton(
        //   child: Text('Show SnackBar'),
        //   onPressed: () {
        //     final snackBar = SnackBar(
        //       content: Text('This is a SnackBar'),
        //       duration: Duration(seconds: 10),
        //       action: SnackBarAction(
        //         label: 'Undo',
        //         onPressed: () {
        //           // Undo logic
        //         },
        //       ),
        //     );
        //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //   },
        // ),
        // ListTile(
        //   leading: Icon(Icons.person),
        //   title: Text('John Doe'),
        //   subtitle: Text('johndoe@example.com'),
        //   trailing: Icon(Icons.arrow_forward),
        //   onTap: () {
        //     // Handle ListTile tap event
        //   },
        // ),
        // ListTile(
        //   selected: false,
        //   leading: Icon(Icons.person),
        //   title: Text('John Doe'),
        //   subtitle: Text('johndoe@example.com'),
        //   trailing: Icon(Icons.arrow_forward),
        //   onTap: () {
        //     // Handle ListTile tap event
        //   },
        // ),
        // ListTile(
        //   selected: true,
        //   leading: Icon(Icons.person),
        //   title: Text('John Doe'),
        //   subtitle: Text('johndoe@example.com'),
        //   trailing: Icon(Icons.arrow_forward),
        //   onTap: () {
        //     // Handle ListTile tap event
        //   },
        // )
        //     ],
        //   ),
        // ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  // 왼쪽 버튼이 클릭되었을 때 동작할 코드 작성
                },
                icon: const Icon(Icons.menu),
              ),
              IconButton(
                onPressed: () {
                  // 오른쪽 버튼이 클릭되었을 때 동작할 코드 작성
                },
                icon: const Icon(Icons.search),
              ),
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
