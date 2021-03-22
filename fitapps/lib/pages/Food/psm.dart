import 'package:fitapps/pages/Food/Snack.dart';
import 'package:fitapps/pages/Food/makanpagi.dart';
import 'package:fitapps/pages/Food/makanmalam.dart';
import 'package:fitapps/pages/Food/makansiang.dart';
import 'package:flutter/material.dart';

class PSM extends StatefulWidget {
  @override
  _PSMState createState() => _PSMState();
}

class _PSMState extends State<PSM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Makanan.png'),
                    fit: BoxFit.fill)),
          ),
          title: Text(
            "Makanan",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Makanpagi()));
                },
                child: Container(
                    height: 225,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(13.0),
                            child: Image.asset(
                              "assets/image/pagi.png",
                              fit: BoxFit.cover,
                            )),
                      ],
                    )),
              ),
            ),
            ListTile(
              title: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Makansiang()));
                },
                child: Container(
                    height: 225,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(13.0),
                            child: Image.asset(
                              "assets/image/siang.png",
                              fit: BoxFit.cover,
                            )),
                      ],
                    )),
              ),
            ),
            ListTile(
              title: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Makanmalam()));
                },
                child: Container(
                    height: 225,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(13.0),
                            child: Image.asset(
                              "assets/image/malam.png",
                              fit: BoxFit.cover,
                            )),
                      ],
                    )),
              ),
            ),
            ListTile(
              title: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Snack()));
                },
                child: Container(
                    height: 225,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(13.0),
                            child: Image.asset(
                              "assets/image/snack.png",
                              fit: BoxFit.cover,
                            )),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
