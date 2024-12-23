import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductView'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(controller.products[index]['image']),
              title: Text(controller.products[index]['title']),
            );
          },
        ),
        onEmpty: Center(
          child: CircularProgressIndicator(),
        ),
        onError: (err) => Text(err.toString()),
      ),
    );
  }
}
