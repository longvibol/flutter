import 'package:flutter/material.dart';
import 'package:starter_project/contant.dart';
import 'package:starter_project/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
      //   useMaterial3: true,
      //   fontFamily: "Roboto-Bold",
      //   scaffoldBackgroundColor: kBackgroundcolor,
      // ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: kBackgroundcolor,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: HomeView(),
    );
  }
}
