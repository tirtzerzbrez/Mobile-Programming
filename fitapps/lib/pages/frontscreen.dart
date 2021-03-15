import 'dart:ui';

import 'package:flutter/material.dart';

class frontscreen extends StatefulWidget {
  @override
  _frontscreenState createState() => _frontscreenState();
}

class _frontscreenState extends State<frontscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/barbelguy.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(children: [
            Text(
              "Sign In",
              style: TextStyle(color: Colors.red),
            ),
            Text(
              "Sign Up",
              style: TextStyle(color: Colors.grey),
            ),
          ])),
    );
  }
}
