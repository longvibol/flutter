import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_for_beginners/view/detail.dart';

import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final controllerHome = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controllerHome.title),
        // title: Text(controllerHome.title),
      ),
      body: Column(
        children: [
          TextButton.icon(
            onPressed: () {
              Get.to(() => Detail());
            },
            label: Icon(Icons.public_sharp),
          ),
          TextButton.icon(
            onPressed: () {
              Get.defaultDialog(
                title: "Message",
                content: Column(
                  children: [
                    Text("Create Successully!"),
                  ],
                ),
                actions: [
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.info),
                  // ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Ok"),
                  ),
                ],
              );
            },
            label: Icon(Icons.arrow_forward),
          ),
          // Container(
          //   height: Get.height * 0.5,
          //   width: Get.width * 0.5,
          //   decoration: BoxDecoration(color: Colors.red),
          // ),
          // snackbar
          TextButton(
            onPressed: () {
              Get.snackbar("Message", "Snackbar Showing",
                  backgroundColor: Colors.green, colorText: Colors.white);
            },
            child: Text("Snackbar"),
          ),
          TextButton(
            onPressed: () {
              Get.to(() => Detail(), arguments: {
                "message": "from home to detail",
                "contect": "pass data success",
              });
            },
            child: Text("Pass Data from Home View to Detail Calss"),
          ),
          // GetPlateform
          TextButton(
              onPressed: () {
                // if (GetPlatform.isAndroid) {
                //   Get.defaultDialog(
                //       content: Column(
                //     children: [
                //       Text("Android"),
                //     ],
                //   ));
                // }
                if (!GetPlatform.isIOS) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                            title: new Text("Dialog Title"),
                            content: new Text("This is my content"),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                child: Text("ISO dialog"),
                              ),
                              CupertinoDialogAction(
                                child: Text("No"),
                              )
                            ],
                          ));
                }
              },
              child: Text("GetPlatForm"))
        ],
      ),
    );
  }
}
