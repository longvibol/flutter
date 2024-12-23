import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  String fakeStartUrl = "https://fakestoreapi.com";

  // Future<Response> getProduct() => get("${httpClient.baseUrl}/products");
  Future<Response> getProduct() => get("${fakeStartUrl}/products");
}
