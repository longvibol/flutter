import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Future<List<Map<String, dynamic>>> getPost() async {

    final response = await http.get(Uri.parse("http://localhost:3000/posts"));
    final posts = jsonDecode(response.body);

    return posts;

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(future: getPost(), builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }

        if(snapshot.hasError){
          return Center(
            child: Text("${snapshot.error}"),
          );
        }
        
        return ListView.builder(itemCount:snapshot.data!.length,itemBuilder: (context,index){
            return ListTile(
              title: Text("${snapshot.data![index]['title']}"),
            );
        });
      })
    );
  }
}
