import 'package:flutter/material.dart';
import 'package:homework1_ecommerce/views/LayoutExampleView.dart';
import 'package:homework1_ecommerce/views/home_view.dart';
import 'package:homework1_ecommerce/views/row_crossAxiz.dart';
import 'package:homework1_ecommerce/views/rows_column_view.dart';
void main(){
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutExampleView(),
    );

  }
}
