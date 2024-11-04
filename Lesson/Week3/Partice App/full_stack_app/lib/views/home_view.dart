import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 4),
                blurRadius: 20,
            )
          ]
        ),
        child: Image.network(
            "https://static.vecteezy.com/system/resources/thumbnails/011/286/927/small/t-shirt-isolated-png.png"),
      ),
    );
  }
}
