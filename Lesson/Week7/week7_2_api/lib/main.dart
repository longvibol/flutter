import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const productUrl = "fakestoreapi.com";

void main() {
  return runApp(Root());
}

class Root extends StatefulWidget {
  const Root({super.key});
  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  var products = []; // emtply array
  Future<void> getProduct() async {
    final url = Uri.https(productUrl, "products");
    final response = await http.get(url);
    //print("respond = ${response.body}");

    // Convert
    final products = jsonDecode(response.body) as List;
    this.products = products;
  }

  // when we get data we need to set state
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void initState() {
    getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${products[index]["title"]}"),
                leading: Image.network(products[index]['image']),
              );
            }),
      ),
    );
  }
}
