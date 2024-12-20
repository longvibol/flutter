import 'package:ecommer_app/app/translations/app_translation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      translations: AppTranslation(),
      locale:
          Locale('km', 'KH'), // translations will be displayed in that locale
      fallbackLocale: Locale('kh', 'KH'),
    ),
  );
}
