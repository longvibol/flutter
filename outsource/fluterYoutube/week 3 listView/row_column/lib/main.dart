import 'package:flutter/material.dart';

void main() {
  runApp(KhmerNews());
}

class KhmerNews extends StatelessWidget {
  const KhmerNews({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(
              onPressed: () {
                print("Hello Vibol");
              },
              icon: Icon(Icons.home, color: Colors.white)),
          title: Text("Khmer News", style: TextStyle(color: Colors.white)),
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            // scrollDirection: Axis.horizontal,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://pbs.twimg.com/media/D9F7l0JUYAEZmJU?format=jpg&name=4096x4096",
                      fit: BoxFit.cover,
                      width: 400,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://d2tdui6flib2aa.cloudfront.net/new-harbinger-wp/wp-content/uploads/2020/10/29103730/heart-hands.jpg",
                      fit: BoxFit.cover,
                      width: 400,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://c4.wallpaperflare.com/wallpaper/222/244/854/asian-beauty-face-girl-wallpaper-preview.jpg",
                      fit: BoxFit.cover,
                      width: 400,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://c.wallhere.com/images/c5/51/b3b2aea7831a55461d9e9f76c366-2227448.jpg!d",
                      fit: BoxFit.cover,
                      width: 400,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://img.goodfon.com/wallpaper/nbig/5/58/asian-sexy-girl-girls-thai-korea-china-cute-woman-model--344.webp",
                      fit: BoxFit.cover,
                      width: 400,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      "https://w0.peakpx.com/wallpaper/134/419/HD-wallpaper-wonderful-girl-hot-asian-girl-sweet.jpg",
                      fit: BoxFit.cover,
                      width: 400,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
