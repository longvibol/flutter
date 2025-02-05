import 'package:fluter_dio_getx_api/controllers/product_controller.dart';
import 'package:fluter_dio_getx_api/views/update_product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_product_view.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});
  final _controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products View'),
        actions: [
          IconButton(
            onPressed: () async {
              final result = await Get.to(() => AddProductView());
              if (result != null) {
                _controller.getProducts();
              }
            },
            icon: Icon(Icons.add),
          )
        ],
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
                  onTap: () async {
                    final result =
                        await Get.to(() => UpdateProductView(), arguments: {
                      'id': id,
                      'name': product.name,
                      'description': product.description,
                      'price': product.price,
                      'stock': product.stock,
                    });
                    if (result != null) {
                      _controller.getProducts();
                    }
                  },
                  leading: Text("$id"),
                  title: Text(product.name ?? ""),
                  subtitle: Text(product.price.toString() ?? ""),
                  trailing: IconButton(
                      onPressed: () {
                        _controller.deleteProduct(id);
                      },
                      icon: Icon(Icons.delete)),
                );
              }),
        );
      }),
    );
  }
}
