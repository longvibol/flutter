import 'package:flutter/material.dart';
import 'package:starter_project/contant.dart';
import 'package:readmore/readmore.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'download.dart';

class MovieDetailView extends StatelessWidget {
  MovieDetailView({super.key});

  final imgMovie =
      "https://lumiere-a.akamaihd.net/v1/images/image_9e35a739.jpeg?region=0,0,540,810";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Hero(
                  tag: "_kImageMoive",
                  child: Image.network(
                    imgMovie,
                    height: size.height * 0.4,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleReusableButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onTab: () {
                          Navigator.pop(context);
                        },
                      ),
                      Spacer(),
                      CircleReusableButton(
                        icon: Icon(Icons.favorite),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleReusableButton(
                        icon: Icon(Icons.share),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Disdey's Aladdin",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "2019 ~ Adventure, Comedy ~ 2h 8m",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              // button play and download
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(kButtomBg),
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.play_arrow),
                          label: Text("Play"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                kUnActiveColor.withOpacity(0.5)),
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.play_arrow),
                          label: Text("Download"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ReadMoreText(
              '''Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth, Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth Aladdin treies to find a way to become a price...''',
              trimLines: 3,
              trimMode: TrimMode.Line,
              lessStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              moreStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.redAccent),
              trimCollapsedText: "Read More",
              trimExpandedText: "Show less",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: <Widget>[
                  TabBar(
                    tabs: [
                      Tab(
                        child: Text(
                          "Episode",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Similar",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "About",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: size.height * 0.2,
                    child: TabBarView(
                      children: [
                        Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    imgMovie,
                                    width: size.width * 0.4,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: size.width * 0.53,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Trailer",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Icon(Icons.download),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ReadMoreText(
                                        '''Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth, Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth Aladdin treies to find a way to become a price...''',
                                        trimLines: 5,
                                        trimMode: TrimMode.Line,
                                        lessStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                        moreStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.redAccent),
                                        trimCollapsedText: "Read More",
                                        trimExpandedText: "Show less",
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    imgMovie,
                                    width: size.width * 0.4,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: size.width * 0.53,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Trailer",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Icon(Icons.download),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ReadMoreText(
                                        '''Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth, Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth Aladdin treies to find a way to become a price...''',
                                        trimLines: 5,
                                        trimMode: TrimMode.Line,
                                        lessStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                        moreStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.redAccent),
                                        trimCollapsedText: "Read More",
                                        trimExpandedText: "Show less",
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    imgMovie,
                                    width: size.width * 0.4,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: size.width * 0.53,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Trailer",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Icon(Icons.download),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      ReadMoreText(
                                        '''Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth, Aladdin, a street boy who falls in love with a princess.With difference in caste and wealth Aladdin treies to find a way to become a price...''',
                                        trimLines: 5,
                                        trimMode: TrimMode.Line,
                                        lessStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                        moreStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.redAccent),
                                        trimCollapsedText: "Read More",
                                        trimExpandedText: "Show less",
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleReusableButton extends StatelessWidget {
  const CircleReusableButton({super.key, required this.icon, this.onTab});
  final Icon icon;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kCircleBackgroundBtn,
      ),
      child: IconButton(onPressed: onTab, icon: icon),
    );
  }
}
