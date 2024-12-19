import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_app/2_getx_API/product.model.dart';
import 'package:http/http.dart' as http;

const String productEndpoint = 'https://fakestoreapi.com/products';

class ProductController extends GetxController {
  RxList<Products> products = RxList([]);
  var isLoading = false.obs;

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
        final productJson = jsonDecode(response.body)
            as List; // when we get the json from api we convert to object list
        products.value = productJson.map((e) => Products.fromJson(e)).toList();
        print(products);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
      // Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }
}
