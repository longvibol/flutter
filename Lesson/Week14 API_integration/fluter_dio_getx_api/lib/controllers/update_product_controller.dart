import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class UpdateProductController extends GetxController {
  final url = "http://10.0.2.2:8000/api/product";
  final dio = Dio();
  final formKey = GlobalKey<FormState>();
  final nameCon = TextEditingController();
  final descCon = TextEditingController();
  var priceCon = TextEditingController();
  var stockCon = TextEditingController();

  @override
  void onInit() {
    nameCon.text = Get.arguments['name'];
    descCon.text = Get.arguments['description'];
    priceCon.text = Get.arguments['price'].toString();
    stockCon.text = Get.arguments['stock'].toString();
    super.onInit();
  }

  void updateProduct({
    required int id,
    required String name,
    required String description,
    required double price,
    required int stock,
  }) async {
    final response = await dio.put(
      "$url/$id",
      data: {
        "name": name,
        "description": description,
        "price": price.toString(),
        "stock": stock,
      },
    );
    if (response.statusCode == 200) {
      Get.back(result: true);
      Get.snackbar("Success Update", "Product Updated");
    } else {
      Get.defaultDialog(
        content: Text("Failed to update product"),
      );
    }
  }
}
