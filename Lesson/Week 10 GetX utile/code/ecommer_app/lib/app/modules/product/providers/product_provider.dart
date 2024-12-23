import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  @override
  void onInit() {
    // httpClient.baseUrl = 'https://fakestoreapi.com/';
  }
  String url = "https://api.escuelajs.co/api/v1/products";
  String fackStartUrl = "https://fakestoreapi.com/products";

  // Future<Response> getProduct() => get("${httpClient.baseUrl}/products");
  Future<Response> getProduct() => get(fackStartUrl);
}
