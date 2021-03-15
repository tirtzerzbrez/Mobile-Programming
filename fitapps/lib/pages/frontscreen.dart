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
        backgroundColor: Colors.red,
        title: Center(
          child: Text('fitApp'),
        )
      )
    );
  }

  Widget makeItem({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/image/jagung.png')
            )
          ),
        ),
      ),
    );
  }
}