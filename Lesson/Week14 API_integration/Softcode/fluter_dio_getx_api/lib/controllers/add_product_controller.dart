import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class AddProductController extends GetxController {
  final url = "http://10.0.2.2:8000/api/products";
  final dio = Dio();

  void addProduct({
    required String name,
    required String description,
    required double price,
    required int stock,
  }) async {
    final response = await dio.post(
      url,
      data: {
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
      },
    );
    if (response.statusCode == 200) {
      Get.back(result: true);
      Get.snackbar("Success", "Product Added");
    } else {
      Get.defaultDialog(
        content: Text("Failed to add product"),
      );
    }
  }
}
