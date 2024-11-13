import 'package:flutter/material.dart';

class GridviewExampleView extends StatelessWidget {
  GridviewExampleView({super.key});

  var lstMovie = [
    'https://assets.ajio.com/medias/sys_master/root/20231031/liKo/65413fe5afa4cf41f56b8b78/-473Wx593H-466759913-pink-MODEL5.jpg',
    'https://www.jiomart.com/images/product/original/rvv8veem7t/evoknit-sports-shoes-trekking-shoes-running-shoes-for-women-running-shoes-for-women-pink-product-images-rvv8veem7t-2-202211111214.jpg?im=Resize=(500,630)',
    'https://img.drz.lazcdn.com/static/lk/p/8bdc5f44f62a375eef61ef5948a2f1a5.jpg_720x720q80.jpg',
    'https://img.joomcdn.net/e820529542105258a539f95c1e8c28e160b2d0bd_original.jpeg',
    'https://assets.ajio.com/medias/sys_master/root/20231031/liKo/65413fe5afa4cf41f56b8b78/-473Wx593H-466759913-pink-MODEL5.jpg',
    'https://www.jiomart.com/images/product/original/rvv8veem7t/evoknit-sports-shoes-trekking-shoes-running-shoes-for-women-running-shoes-for-women-pink-product-images-rvv8veem7t-2-202211111214.jpg?im=Resize=(500,630)',
    'https://img.drz.lazcdn.com/static/lk/p/8bdc5f44f62a375eef61ef5948a2f1a5.jpg_720x720q80.jpg',
    'https://img.joomcdn.net/e820529542105258a539f95c1e8c28e160b2d0bd_original.jpeg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: lstMovie.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                lstMovie[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
