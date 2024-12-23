import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isDarkMode = false.obs;
  void changeTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    if (Get.isDarkMode) {
      isDarkMode(true);
    } else {
      isDarkMode(false);
    }
  }
}
