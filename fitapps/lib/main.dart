import 'package:fitapps/pages/frontscreen.dart';
import 'package:fitapps/pages/singin.dart';
import 'package:fitapps/pages/workout/berat.dart';
import 'package:fitapps/pages/workout/ringan.dart';
import 'package:fitapps/pages/workout/sedang.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fitapps',
      home: Sedang(),
    );
  }
}
