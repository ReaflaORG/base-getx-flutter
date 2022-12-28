import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/third_controller.dart';

class ThirdView extends GetView<ThirdController> {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ThirdView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
