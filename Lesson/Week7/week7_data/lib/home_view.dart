import 'package:flutter/material.dart';

import 'moive.model.dart';
import 'movie_detail.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: ListView.builder(
          itemCount: LstMovie.length,
          itemBuilder: (context, index) {
            final movie = moives[index];
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieDetailView(movie: movie)));
              },
              title: Text(
                movie.title,
              ),
              subtitle: Text(movie.decs ?? ""),
              leading: Image.network(movie.poster_url),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
}
