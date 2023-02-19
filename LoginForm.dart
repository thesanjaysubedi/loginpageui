// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/Components/MyButton.dart';
import 'package:widgets/Components/MyTextField.dart';
import 'package:widgets/Components/SquareTile.dart';

class LoginPageUI extends StatelessWidget {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void onTapPrint() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login Page")),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              //size bod
              const SizedBox(height: 50),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              //gretting message here
              const Text("Welcome to our Login Panel",
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
              const SizedBox(height: 25),
              //input text field
              MyTextField(
                  controller: userNameController,
                  hintText: "username or email",
                  obscureText: false),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: "password",
                  obscureText: true),
              //add some space
              SizedBox(height: 25),
              //sign in button
              MyButton(onTapFunction: onTapPrint, buttonText: "Sign In"),
              SizedBox(
                height: 25,
              ),
              //add divider
              Divider(
                thickness: 2,
                color: Colors.grey[200],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTile(imagePath: 'lib/images/facebook.png'),
                ],
              ),
            ],
          ),
        )));
  }
}
