import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '2_getx_API/product_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductView(),
    );
  }
}
