import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecomerce_app/app/data/providers/api_provider.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterController extends GetxController {
  final _imagePicker = ImagePicker();
  File? image;
  final _apiProvider = Get.find<APIProvider>();

  void pickImage() async {
    final file = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      image = File(file.path); //convert from Xfile to file
      update();
    }
  }

  void register({
    required String name,
    required String email,
    required String password,
    required String confirmPass,
  }) async {
    try {
      final response = await _apiProvider.signUp(
        name: name,
        email: email,
        password: password,
        confirmPass: confirmPass,
        image: image,
      );
      if (response.statusCode == 200) {
        Get.defaultDialog(
          title: "Success",
          content: Text("You register successful"),
          confirm: TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Ok"),
          ),
        );
      } else {
        Get.defaultDialog(
          title: "Failed",
          content: Text("Failed to signup"),
        );
      }
    } catch (e) {
      print("Eroor $e");
    }
  }
}
