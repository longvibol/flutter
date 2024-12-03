import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const productUrl = "fakestoreapi.com";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List> getProduct() async {
    var products = [];
    final url = Uri.https(productUrl,"products");
    final respond = await http.get(url);
    final productApi = jsonDecode(respond.body);


    products = productApi;

  }

  @override
  void initState() {
    getProduct();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount:
            itemBuilder: (context,index)),
      ),

    );
  }
}
