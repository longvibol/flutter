import 'package:flutter/material.dart';

class LayoutExampleView extends StatelessWidget {
  const LayoutExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            "Fullter layout demo",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/products/layout.png",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Kandersteg, Switzerland",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 30,
                      ),
                      Text("44")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.purple,
                          size: 25,
                        ),
                        Text(
                          "CALL",
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.near_me,
                          color: Colors.purple,
                          size: 25,
                        ),
                        Text(
                          "ROUTE",
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.purple,
                          size: 25,
                        ),
                        Text(
                          "SHARE",
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                children: [
                  Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the'
                      'Bernese Alps. Situated 1,578 meters above sea level, it'
                      'is one of the larger Alpine Lakes. A gondola ride from'
                      'Kandersteg, followed by a half-hour walk through pastures'
                      'and pine forest, leads you to the lake, which warms to 20'
                      'degrees Celsius in the summer. Activities enjoyed here'
                      'include rowing, and riding the summer toboggan run.',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
