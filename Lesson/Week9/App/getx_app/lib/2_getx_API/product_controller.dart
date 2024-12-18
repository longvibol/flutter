import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const String productEndpoint = 'https://fakestoreapi.com/products';

class ProductController extends GetxController {
  var products = [];

  @override
  void onInit() {
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
