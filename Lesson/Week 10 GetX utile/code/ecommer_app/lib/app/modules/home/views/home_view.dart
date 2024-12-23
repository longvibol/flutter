import 'package:ecommer_app/app/modules/home/views/dialogview_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_title'.tr),
        centerTitle: true,
        actions: [
          Obx(() {
            return IconButton(
              onPressed: () {
                controller.changeTheme();
              },
              icon: controller.isDarkMode.value
                  ? Icon(Icons.light_mode)
                  : Icon(Icons.nightlight_round),
            );
          }),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
              onPressed: () {
                Get.dialog(DialogviewView());
              },
              child: Text("Show Dialog")),

          // Translation variable

          TextButton(
              onPressed: () {
                var locale = Locale('en', 'US');
                Get.updateLocale(locale);
              },
              child: Text("Englksh")),
          TextButton(
              onPressed: () {
                var locale = Locale('kh', 'KH');
                Get.updateLocale(locale);
              },
              child: Text("Khmer")),
        ],
      ),
    );
  }
}
