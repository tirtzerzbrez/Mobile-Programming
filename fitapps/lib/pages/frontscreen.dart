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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("fitApps"),
      ),
    );
  }
}
