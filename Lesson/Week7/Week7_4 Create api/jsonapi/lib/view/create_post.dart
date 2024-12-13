import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreatePostView extends StatelessWidget {
  CreatePostView({super.key});
  // create controller

  final _titleController = TextEditingController(text: "Hello Flutter 2025");
  final _bodyController = TextEditingController(text: "Flutter is easy");
  final _imgController = TextEditingController(
      text:
          "https://static.vecteezy.com/system/resources/previews/039/655/206/large_2x/ai-generated-cute-girl-smiling-looking-at-camera-enjoying-nature-outdoors-generated-by-ai-free-photo.jpg");
  // create validation
  final _formKey = GlobalKey<FormState>();

  Future createPost() async {
    final response = await http.post(Uri.parse("http://172.19.64.1:3000/posts"),
        body: jsonEncode({
          'title': _titleController.text,
          'body': _bodyController.text,
          'image_url': _imgController.text
        }));

    if (response.statusCode == 201) {
      print("Created Success");
      // _formKey.currentState!.reset();
    } else {
      print("Fail to Create Post!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Post"),
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
                          // perform task
                          createPost();
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
