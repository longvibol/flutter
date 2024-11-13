import 'package:flutter/material.dart';
import 'package:list_view/list_view/gridview_example.dart';

class GridViewHomework4 extends StatelessWidget {
  GridViewHomework4({super.key});
  var lstMovie = [
    'https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYkd34hvx4j8h8DjTBmog7kRXPy_8DhiwsyA&s',
    'https://m.media-amazon.com/images/M/MV5BZTgzZDdjN2UtMmM4ZC00OGQzLThkZjgtZTc5ZGIyYTM4N2JkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://i.ebayimg.com/images/g/-8YAAOSwayZksBlL/s-l1200.jpg',
    'https://all.web.img.acsta.net/img/48/bf/48bfb8b0f804d76ea05bb5d9642411f1.jpg/r_2500_x',
    'https://m.media-amazon.com/images/M/MV5BZTgzZDdjN2UtMmM4ZC00OGQzLThkZjgtZTc5ZGIyYTM4N2JkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
    'https://i.ebayimg.com/images/g/-8YAAOSwayZksBlL/s-l1200.jpg',
    'https://all.web.img.acsta.net/img/48/bf/48bfb8b0f804d76ea05bb5d9642411f1.jpg/r_2500_x'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Browse",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Women Shoes"),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 380,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      const Text("Search shoes"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Women Shoes",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  ],
                ),
                SizedBox(
                  width: 145,
                ),
                Row(
                  children: [
                    Text("Filters"),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ],
            ),
          SizedBox(height: 10,),
          Expanded(child: GridviewExampleView()),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar:
      BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [

        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: "Account"),
      ]),
    );
  }
}
