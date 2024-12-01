class Movie {
  final int id;
  final String title;
  final String? decs;
  final String poster_url;

  Movie(
      {required this.id,
      required this.title,
      required this.decs,
      required this.poster_url});
}

List<Movie> moives = [
  Movie(
      id: 1,
      title: "Sahng Chi",
      decs: "The Best moive",
      poster_url:
          "https://cdnb.artstation.com/p/assets/images/images/053/000/821/large/sonu-avtar-title.jpg?1661189157"),
  Movie(
      id: 1,
      title: "Sahng Chi",
      decs: "The Best moive",
      poster_url:
          "https://i.ytimg.com/vi/qiGDJ5-dXaI/hq720.jpg?sqp=-oaymwEXCK4FEIIDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLA6c2UtTODU6xMyx2beyVvMo69oXA"),
];

List LstMovie = [
  {
    "id": 1,
    "title": "Shang Chi",
    "decs": "the best movie 2025",
    "poster_url":
        "https://cdnb.artstation.com/p/assets/images/images/053/000/821/large/sonu-avtar-title.jpg?1661189157"
  },
  {
    "id": 2,
    "title": "Amerrica",
    "decs": "the best movie 2025",
    "poster_url":
        "https://i.ytimg.com/vi/qiGDJ5-dXaI/hq720.jpg?sqp=-oaymwEXCK4FEIIDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLA6c2UtTODU6xMyx2beyVvMo69oXA"
  }
];
