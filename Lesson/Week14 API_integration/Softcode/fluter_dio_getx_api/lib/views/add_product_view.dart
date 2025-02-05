import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fluter_dio_getx_api/controllers/add_product_controller.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends StatelessWidget {
  AddProductView({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nameCon = TextEditingController();
  final _descCon = TextEditingController();
  final _priceCon = TextEditingController();
  final _stockCon = TextEditingController();
  final _controller = Get.put(AddProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _nameCon,
                  decoration: InputDecoration(hintText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name is required";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _descCon,
                  decoration: InputDecoration(hintText: "Desc"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Decs is required";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _priceCon,
                  decoration: InputDecoration(hintText: "Price"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Price is required";
                    }
                  },
                ),
                TextFormField(
                  controller: _stockCon,
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
                    if (_formKey.currentState!.validate()) {
                      final name = _nameCon.text;
                      final price = double.parse(_priceCon.text);
                      final stock = int.parse(_stockCon.text);
                      final desc = _descCon.text;
                      _controller.addProduct(
                          name: name,
                          description: desc,
                          price: price,
                          stock: stock);
                      _formKey.currentState!.reset();
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
