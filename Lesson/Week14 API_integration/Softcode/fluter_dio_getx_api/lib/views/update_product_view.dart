import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controllers/update_product_controller.dart';

class UpdateProductView extends StatelessWidget {
  UpdateProductView({super.key});

  final _controller = Get.put(UpdateProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Product"),
      ),
      body: Form(
          key: _controller.formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _controller.nameCon,
                  decoration: InputDecoration(hintText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name is required";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controller.descCon,
                  decoration: InputDecoration(hintText: "Desc"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Decs is required";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controller.priceCon,
                  decoration: InputDecoration(hintText: "Price"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Price is required";
                    }
                  },
                ),
                TextFormField(
                  controller: _controller.stockCon,
                  decoration: InputDecoration(hintText: "Stock"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Price is required";
                    }
                    return null;
                  },
                ),
                TextButton(
                  onPressed: () {
                    if (_controller.formKey.currentState!.validate()) {
                      final name = _controller.nameCon.text;
                      final desc = _controller.descCon.text;
                      var price = double.parse(_controller.priceCon.text);
                      var stock = int.parse(_controller.stockCon.text);
                      final id = Get.arguments['id'];
                      _controller.updateProduct(
                          id: id,
                          name: name,
                          description: desc,
                          price: price,
                          stock: stock);
                      _controller.formKey.currentState!.reset();
                    }
                  },
                  child: Text("Save"),
                ),
              ],
            ),
          )),
    );
  }
}
