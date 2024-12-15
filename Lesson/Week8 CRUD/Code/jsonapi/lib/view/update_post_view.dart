import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_slidable/flutter_slidable.dart';

class UpdatePostView extends StatefulWidget {
  UpdatePostView({super.key, required this.post});

  Map<String, dynamic> post;

  @override
  State<UpdatePostView> createState() => _UpdatePostViewState();
}

class _UpdatePostViewState extends State<UpdatePostView> {
  final _titleController = TextEditingController();

  final _bodyController = TextEditingController();

  final _imgController = TextEditingController();

  // create validation
  final _formKey = GlobalKey<FormState>();

  Future<void> updatePost(String id) async {
    String url = "http://172.28.240.1:3000/posts/$id";
    final response = await http.put(Uri.parse(url),
        body: jsonEncode({
          'title': _titleController.text,
          'body': _bodyController.text,
          'image_url': _imgController.text
        }));

    if (response.statusCode == 200) {
      Navigator.pop(context,true);
      print("Update Success!");
      // _formKey.currentState!.reset();
    } else {
      print("Fail to Update Post!");
    }
  }

  @override
  void initState() {
    // when we want to get the variable from outside class we use widget. + variable name
    _titleController.text = widget.post['title'] ?? "";
    _bodyController.text = widget.post['body'] ?? "";
    _imgController.text = widget.post['image_url'] ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Post"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                // bind Controller
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: "Title",
                  label: Text("Title"),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Title can not be null";
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // bind Controller
                controller: _bodyController,
                decoration: InputDecoration(
                  hintText: "Body",
                  label: Text("Body"),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Body can not be null";
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // bind Controller
                controller: _imgController,
                decoration: InputDecoration(
                  hintText: "Image Url",
                  label: Text("Image Url"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          updatePost(widget.post['id']);
                        }
                      },
                      child: Text("SAVE"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
