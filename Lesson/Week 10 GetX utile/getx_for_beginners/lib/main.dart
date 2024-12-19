import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_for_beginners/controller/home_controller.dart';
import 'package:getx_for_beginners/view/detail.dart';
import 'package:getx_for_beginners/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: Detail(),
      // initialRoute: "/detail",
      getPages: [
        GetPage(
          name: "/",
          page: () => HomeView(),
          binding: BindingsBuilder(() {
            // Get.put(HomeController());
            Get.lazyPut(() => HomeController());
          }),
        ),
        GetPage(name: "/detail", page: () => Detail()),
      ],
    );
  }
}
