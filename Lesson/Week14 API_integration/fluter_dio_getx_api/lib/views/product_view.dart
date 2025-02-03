import 'package:fluter_dio_getx_api/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});
  final _controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products View'),
      ),
      body: Obx(() {
        if (_controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return RefreshIndicator(
          onRefresh: () {
            return _controller.getProducts();
          },
          child: ListView.builder(
              itemCount: _controller.lstProducts.length,
              itemBuilder: (context, index) {
                final product = _controller.lstProducts[index];
                final id = _controller.lstProducts[index].id;
                return ListTile(
                  leading: Text("$id"),
                  title: Text(product.name ?? ""),
                  trailing: IconButton(
                      onPressed: () {
                        // onpress
                        _controller.deleteProduct(id!);
                      },
                      icon: Icon(Icons.delete)),
                );
              }),
        );
      }),
    );
  }
}
