import 'package:flutter/material.dart';

import 'moive.model.dart';

class MovieDetailView extends StatelessWidget {
  final Movie movie; // to push the value from movies

  const MovieDetailView({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text(movie.title),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.network(
            movie.poster_url,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
