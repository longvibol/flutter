import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/2_getx_API/product_controller.dart';

// Homework
// using Obx to fetch data from an API [fake store API]
// using GetBuilder fetch the data from API

class ProductView extends StatelessWidget {
  ProductView({super.key});

  // call class but this in old way in Getx we use new way
  // ProductController _controller = ProductController();

  final _controller = Get.put(ProductController());
  // when we do like above we can access to the whole app (sigle tone)

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
