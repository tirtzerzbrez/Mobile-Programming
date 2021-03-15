import 'package:flutter/material.dart';

class Singin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/barbelman.jpg'))),
      ),
    );
  }
}
