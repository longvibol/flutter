import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RegisterView'),
          centerTitle: true,
        ),
        body: GetBuilder<RegisterController>(
            init: controller,
            builder: (logic) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: FileImage(controller.image!),
                            ),
                            IconButton(
                                onPressed: controller.pickImage,
                                icon: Icon(Icons.camera_alt))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _passwordConfirmController,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          label: Text("Register"),
                          icon: Icon(Icons.login),
                        ),
                      ],
                    )),
              );
            }));
  }
}
