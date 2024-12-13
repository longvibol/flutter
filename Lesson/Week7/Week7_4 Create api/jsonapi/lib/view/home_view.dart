import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsonapi/view/create_post.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<List> getPost() async {
    String url = "http://172.19.64.1:3000/posts";
    final response = await http.get(Uri.parse(url));
    final posts = jsonDecode(response.body);
    return posts;
  }

  Future<void> deletPosts(String id) async {
    final response =
        await http.delete(Uri.parse("http://172.19.64.1:3000/posts/$id"));
    if (response.statusCode == 200) {
      print("Post deleted");
    } else {
      print("Failed to deleted");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: getPost(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: RefreshIndicator(
              onRefresh: () async {
                setState(() {});
              },
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final post = snapshot.data![index];
                  return Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        // Container(
                        //   width: 100,
                        //   decoration: BoxDecoration(color: Colors.red),
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       Icon(Icons.delete),
                        //       Text("Delete"),
                        //     ],
                        //   ),
                        // ),
                        SlidableAction(
                          onPressed: (context) {
                            // perform delete
                            deletPosts(post['id']);
                            setState(() {});
                          },
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${post['title']}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("${post['body']}"),
                        Image.network(
                          post['image_url'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreatePostView(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
