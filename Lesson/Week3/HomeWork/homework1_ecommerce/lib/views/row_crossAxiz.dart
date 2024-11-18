import 'package:flutter/material.dart';

class RowCrossAxiz extends StatelessWidget {
  const RowCrossAxiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cross Row Axix Example"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 300,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],

      ),
    );
  }
}
