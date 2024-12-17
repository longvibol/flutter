import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  CounterView({super.key});
  var counter = 0.obs;
  var counter2 = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You can push the button below",
              style: TextStyle(fontSize: 20),
            ),
            Obx(
              () => Column(
                children: [
                  Text(
                    "$counter",
                    style: TextStyle(fontSize: 50),
                  ),
                  Text(
                    "$counter2",
                    style: TextStyle(fontSize: 50),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          counter2--;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContainerController>(
      // to create object
      init: ContainerController(),
      builder: (logic) {
        return GestureDetector(
          onTap: logic.changeBg,
          child: Container(
            decoration: BoxDecoration(
              color: logic.color,
            ),
          ),
        );
      },
    );
  }
}

class ContainerController extends GetxController {
  Color color = Colors.red;
  void changeBg() {
    if (color == Colors.red) {
      color = Colors.blue;
    } else {
      color = Colors.red;
    }
    update(); // method update the UI
  }
}
