import 'package:flutter/material.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You can push this button these many time."),
            Text(
              "1",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
