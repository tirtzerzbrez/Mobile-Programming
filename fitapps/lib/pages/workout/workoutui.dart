import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Workout());
}

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          "FitApp",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}
