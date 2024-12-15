import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsonapi/view/create_post.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:jsonapi/view/update_post_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String url = "http://172.28.240.1:3000/posts";

  Future<List> getPost() async {
    final response = await http.get(Uri.parse(url));
    final posts = jsonDecode(response.body);
    return posts;
  }

  Future<void> deletPosts(String id) async {
    final response =
        await http.delete(Uri.parse("http://172.28.240.1:3000/posts/$id"));
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
                        // GestureDetector(
                        //   onTap: (){
                        //     deletPosts(post['id']);
                        //     setState(() {
                        //
                        //     });
                        //   },
                        //   child: Container(
                        //     width: 50,
                        //     decoration: BoxDecoration(color: Colors.blue),
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Icon(Icons.update),
                        //         Text("Delete"),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        SlidableAction(
                          onPressed: (context) {
                            // perform delete
                            deletPosts(post['id']);
                            setState(() {});
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        SlidableAction(
                          onPressed: (context) async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UpdatePostView(
                                  post: post,
                                ),
                              ),
                            );
                            if (result != null) {
                              setState(() {});
                            }
                          },
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Update',
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
