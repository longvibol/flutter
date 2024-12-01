import 'package:flutter/material.dart';
import 'package:week7_data/home_view.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
