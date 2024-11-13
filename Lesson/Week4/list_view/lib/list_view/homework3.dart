import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homework3 extends StatelessWidget {
  Homework3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram",
            style: TextStyle(
                fontSize: 50,
                fontFamily: 'Billabong',
                fontWeight: FontWeight.w500)),
        actions: [
          SizedBox(
            width: 150,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Image.asset(
                    "assets/icons/heart.png",
                    height: 40,
                    width: 40,
                  ),
                ),
                Image.asset(
                  "assets/icons/direct_message.png",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 300,
                width: 370,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Your story"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://pics.craiyon.com/2023-07-24/cf65205990ca434bab1af1e05fe240d2.webp",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("jaded.ele"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://pics.craiyon.com/2023-10-11/cd32e7d9a8fe4958918a9c262a88fd17.webp",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("pia.in.a.pod"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://photosbook.in/wp-content/uploads/girl-with-cat-dp-photo1.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Your story"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Your story"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Your story"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Your story"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Your story"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.red,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(35),
                                  child: Image.network(
                                    "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Your story"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Image.network(
                "https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg"),
          ),
        ],
      ),
    );
  }
}
