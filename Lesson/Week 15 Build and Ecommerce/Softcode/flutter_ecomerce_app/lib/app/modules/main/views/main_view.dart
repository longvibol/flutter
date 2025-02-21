import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../notification/views/notification_view.dart';
import '../../product/views/product_view.dart';
import '../../search_product/views/search_product_view.dart';
import '../../setting/views/setting_view.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (logic) {
      return Scaffold(
        // appBar: AppBar(
        //   title: const Text('MainView'),
        //   centerTitle: true,
        //   actions: [
        //     IconButton(
        //       onPressed: controller.logout,
        //       icon: Icon(Icons.logout),
        //     )
        //   ],
        // ),
        body: IndexedStack(
          index: controller.currentIndex,
          children: [
            ProductView(),
            SearchProductView(),
            NotificationView(),
            SettingView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: controller.onTab,
            currentIndex: controller.currentIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "Notificaiton"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
      );
    });
  }
}
