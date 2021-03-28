import 'package:flutter/material.dart';

class tentangdev extends StatefulWidget {

  @override
  _tentangdevState createState() => _tentangdevState();
}

class _tentangdevState extends State<tentangdev> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      "Hizkia Halim\n\nNIM : 535190001\nJurusan : Teknik Informatika",
      "Jason Benedict\n\nNIM : 535190005\nJurusan : Teknik Informatika",
      "Arya Prawira\n\nNIM : 535190015\nJurusan : Teknik Informatika",
      "Vincent Fernandes\n\nNIM : 535190024\nJurusan : Teknik Informatika",
      "Catur Ariya\n\nNIM : 535190043\nJurusan : Teknik Informatika"
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(128, 0, 0, 1),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Tentang Developer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index){
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 250.0,
                                  child: Text(
                                    "${entries[index]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
