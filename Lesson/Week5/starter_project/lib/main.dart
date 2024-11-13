import 'package:flutter/material.dart';
void main(){
  runApp(HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ខ្ញុំស្រលាញអ្នក"),
        ),
      ),
    );
  }
}
