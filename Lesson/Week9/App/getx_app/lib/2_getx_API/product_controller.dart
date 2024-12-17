import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const productEndpoint = 'https://fakestoreapi.com/products';

class ProductController extends GetxController {
  var products = [];
  @override
  void onClose() {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    try {
      final response = await http.get(Uri.parse(productEndpoint));
      if (response.statusCode == 200) {
        print(response.body);
        products = jsonDecode(response.body);
        print(products);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error", e.toString());
    }
  }
}
