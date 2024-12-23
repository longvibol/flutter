import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../providers/product_provider.dart';

class ProductController extends GetxController with StateMixin<RxList> {
  final _provider = Get.put(ProductProvider());
  var products = [].obs;

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  // method get
  void getProduct() async {
    try {
      change(null, status: RxStatus.loading());
      final response = await _provider.getProduct();
      // print("Response ${response.body}");
      products.value = response.body;
      if (products.isEmpty) {
        change(products, status: RxStatus.empty());
        return; // to break stament
      }
      change(
        products,
        status: RxStatus.success(),
      );
    } catch (e) {
      Get.snackbar("Message Error", e.toString());
      change(products, status: RxStatus.error(e.toString()));
    } finally {}
  }
}
