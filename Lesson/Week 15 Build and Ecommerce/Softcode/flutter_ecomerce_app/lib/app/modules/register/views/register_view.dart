import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
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
        body: SingleChildScrollView(
          child: GetBuilder<RegisterController>(
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
                              controller.image != null
                                  ? CircleAvatar(
                                      radius: 60,
                                      backgroundImage:
                                          FileImage(controller.image!),
                                    )
                                  : CircleAvatar(
                                      radius: 60,
                                      backgroundImage: AssetImage(
                                          "assets/images/noprofile.avif"),
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Name is required";
                              }
                            },
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email is required";
                              }
                              if (!GetUtils.isEmail(value)) {
                                return "Email invalid";
                              }
                            },
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password is required";
                              }
                            },
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Confirm Password is required";
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton.icon(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                final email = _emailController.text;
                                final password = _passwordController.text;
                                final confirmPass =
                                    _passwordConfirmController.text;
                                final name = _nameController.text;
                                if (password != confirmPass) {
                                  Get.snackbar("Password", "Password Not Math");
                                  return;
                                }
                                controller.register(
                                    name: name,
                                    email: email,
                                    password: password,
                                    confirmPass: confirmPass);
                              }
                            },
                            label: Text("Register"),
                            icon: Icon(Icons.login),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text("Login"),
                              ),
                            ],
                          ),
                        ],
                      )),
                );
              }),
        ));
  }
}
