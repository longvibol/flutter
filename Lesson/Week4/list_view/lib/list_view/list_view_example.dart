import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});
  List<String> lstImages =[
    'https://sharedp.com/wp-content/uploads/2024/06/cute-girl-pic-920x1024.jpg',
    'https://pics.craiyon.com/2023-07-24/cf65205990ca434bab1af1e05fe240d2.webp',
    'https://pics.craiyon.com/2023-10-11/cd32e7d9a8fe4958918a9c262a88fd17.webp'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body:

      // ListView.builder(
      //   scrollDirection: Axis.vertical,
      //     itemCount: lstImages.length,
      //     itemBuilder: (context, intex){
      //   return Image.network(lstImages[intex], fit: BoxFit.cover,);
      // })
      
      
      Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for(var img in lstImages) Image.network(img),
              ],
              // children: List.generate(lstImages.length , (index)=>
              // Image.network(lstImages[index])),
            ),
          )
        ],
      ),
    );
    
  }
}

