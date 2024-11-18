import 'package:flutter/material.dart';
import 'package:starter_project/contant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // carousel_slider
          SizedBox(
            height: 400,
            child: PageView(
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
