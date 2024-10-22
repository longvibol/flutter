import 'package:flutter/material.dart';
void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(icon: Icon(Icons.home, color: Colors.white,), onPressed: null),
          title: const Text('My First Fulluter App', style: TextStyle(
            color: Colors.white
          ),),
        ),
        body: Container(
          color: Colors.black26,
          child: Image.network('https://pbs.twimg.com/media/D9F7l0JUYAEZmJU?format=jpg&name=4096x4096'),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home,color: Colors.white,), onPressed: null),
              IconButton(icon: Icon(Icons.gamepad,color: Colors.white,), onPressed: null),
              IconButton(icon: Icon(Icons.mobile_screen_share,color: Colors.white,), onPressed: null),
              IconButton(icon: Icon(Icons.move_to_inbox,color: Colors.white,), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}




