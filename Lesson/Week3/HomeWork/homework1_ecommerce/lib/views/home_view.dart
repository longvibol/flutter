import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.search),
        title: Text(
          "Man",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      actions: [
        Icon(Icons.shop)
      ],
      ),
    );
  }
}
