import 'package:flutter/material.dart';
import 'package:jsonapi/view/home_view.dart';

// npx json-server db.json --host=172.28.240.1

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
