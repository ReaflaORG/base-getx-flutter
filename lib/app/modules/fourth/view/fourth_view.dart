import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/fourth_controller.dart';

class FourthView extends GetView<FourthController> {
  const FourthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FourthView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FourthView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
