import 'package:flutter/material.dart';
import 'package:starter_project/contant.dart';
import 'package:starter_project/views/movie_detail_view.dart';
import 'package:starter_project/views/see_more_moive_view.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var listFeatureImage = [
    "https://imageio.forbes.com/blogs-images/scottmendelson/files/2016/04/Captain-America-Civil-War-Poster.jpg?height=380&width=655&fit=bounds",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
  ];

  var listMostPopularMovie = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
  ];

  int selectedPageIndex = 0;
  int selectedCatIndex = 0;

  List<String> lstCategories = [
    'All',
    'Action',
    'Comedy',
    'Roman',
    'youtube',
    'sport'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // carousel_slider
            SizedBox(height: 400, child: _buildStack()),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          lstCategories.length,
                          (index) => Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedCatIndex = index;
                                        print("select Text $selectedCatIndex");
                                      });
                                    },
                                    child: Container(
                                      width: 90,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: selectedCatIndex == index
                                              ? Colors.red
                                              : Color(0xff48455a),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        lstCategories[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              )).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Most Popular"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SeeMoreMoiveView(
                                    title: "Most Popular",
                                  ),
                                ),
                              );
                            },
                            child: Text("See All"))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieDetailView(),
                            ),
                          );
                        },
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listMostPopularMovie.length,
                          itemBuilder: (context, index) {
                            final img = listMostPopularMovie[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(img)),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieDetailView(),
                            ),
                          );
                        },
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listMostPopularMovie.length,
                          itemBuilder: (context, index) {
                            final img = listMostPopularMovie[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Hero(
                                  child: Image.network(img),
                                  tag: "_kImageMoive$index",
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance), label: "Save"),
        BottomNavigationBarItem(
            icon: Icon(Icons.file_download_outlined), label: "Downloads"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
      ]),
    );
  }

  Stack _buildStack() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
            onPageChanged: (index) {
              print("index ${index}");
              selectedPageIndex = index;
              setState(() {});
            },
            children: listFeatureImage
                .map((img) => Image.network(
                      img,
                      fit: BoxFit.cover,
                    ))
                .toList()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            listFeatureImage.length,
            (i) => Container(
              margin: EdgeInsets.only(right: 5, bottom: 5),
              height: 10,
              width: 50,
              decoration: BoxDecoration(
                //switch shape
                borderRadius:
                    selectedPageIndex == i ? BorderRadius.circular(10) : null,
                shape: selectedPageIndex != i
                    ? BoxShape.circle
                    : BoxShape.rectangle,
                color: selectedPageIndex == i ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
