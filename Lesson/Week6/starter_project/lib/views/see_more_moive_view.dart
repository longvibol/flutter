import 'package:flutter/material.dart';

class SeeMoreMoiveView extends StatelessWidget {
  SeeMoreMoiveView({super.key, required this.title});
  final String title;

  var listMostPopularMovie = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://imageio.forbes.com/blogs-images/scottmendelson/files/2016/04/Captain-America-Civil-War-Poster.jpg?height=380&width=655&fit=bounds",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://imageio.forbes.com/blogs-images/scottmendelson/files/2016/04/Captain-America-Civil-War-Poster.jpg?height=380&width=655&fit=bounds",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://imageio.forbes.com/blogs-images/scottmendelson/files/2016/04/Captain-America-Civil-War-Poster.jpg?height=380&width=655&fit=bounds",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://imageio.forbes.com/blogs-images/scottmendelson/files/2016/04/Captain-America-Civil-War-Poster.jpg?height=380&width=655&fit=bounds",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7aZ10db3VBezUb54c2NcroWaORUqeA145w&s",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://images.moviesanywhere.com/817ffd33edb160c17d14a14002605c30/3d62cdca-e516-49f2-9390-97e99992a209.jpg?h=375&resize=fit&w=250",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OrientationBuilder(builder: (context, orientation) {
          return GridView.builder(
            itemCount: listMostPopularMovie.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: orientation == Orientation.landscape ? 6 : 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              final img = listMostPopularMovie[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
