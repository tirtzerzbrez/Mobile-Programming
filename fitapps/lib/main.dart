import 'package:fitapps/pages/frontscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return S(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'fitapps',
        home: frontscreen(),
      ),
    );
  }
}