import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../models/product.res.model.dart';

class ProductController extends GetxController {
  final _dio = Dio();
  // final url = "http://127.0.0.1:8000/api/products";
  // final url = "http://192.168.1.198:8000/api/products";
  final url = "http://10.0.2.2:8000/api/products";
  final urlDelete = "http://10.0.2.2:8000/api/product";

  RxList<Product> lstProducts = RxList([]);
  RxBool isError = RxBool(false);
  RxBool isLoading = RxBool(true);

  @override
  void onInit() {
    getProducts();
    // _checkInternetConnection();
    super.onInit();
  }

  Future<bool> _checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup(
          'google.com'); // we can use this to check with the server
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
      print('not connected');
    }
  }

  // create a method to fetch products from an API
  Future<void> getProducts() async {
    final connected = await _checkInternetConnection();
    if (!connected) return; // if it not connect can not get data
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        //success
        final products = response.data as List;
        lstProducts.value = products.map((e) => Product.fromJson(e)).toList();
      } else {
        isError(true);
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    } finally {
      isLoading(false);
    }
  }

  void deleteProduct(int id) async {
    final result = Get.defaultDialog(
        content: Text("Are you sure you want to delete"),
        actions: [
          TextButton(
              onPressed: () {
                deleteImp(id);
                Get.back();
              },
              child: Text("Delete")),
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Cancel")),
        ]);
  }

  void deleteImp(int id) async {
    try {
      final response = await _dio.delete(urlDelete + "/$id");
      if (response.statusCode == 200) {
        getProducts();
        Get.snackbar("Message", "Product Deleted");
      } else {
        Get.snackbar("Error", "Failed to delete");
      }
    } catch (e) {
      isError(true);
      Get.snackbar("Message", e.toString());
    } finally {
      isLoading(false);
    }
  }
}
