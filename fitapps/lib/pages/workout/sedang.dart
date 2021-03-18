import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fitapps/resource/gerakan/ORsedang.dart';
import 'package:flutter/material.dart';

class Sedang extends StatefulWidget {
  @override
  _SedangState createState() => _SedangState();
}

class _SedangState extends State<Sedang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "FitApp",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 16,
            ),
            child: Column(children: [
              for (int i = 0; i < interchest.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < interchest[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              interchest[i][j].gambar,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          title: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Detail',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    content: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(128, 0, 0, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            interchest[i][j].detail,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          padding: EdgeInsets.all(20),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "\n  Masih bingung ? \n Klik link dibawah ini ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.center,
                                            ),
                                            InkWell(
                                              child: Text(
                                                interchest[i][j].url,
                                                style: TextStyle(
                                                    color: Colors.blue),
                                                textAlign: TextAlign.center,
                                              ),
                                              onTap: () =>
                                                  launch(interchest[i][j].url),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(128, 0, 0, 1),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: Column(children: [
                                Text(
                                  interchest[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  interchest[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < interarm.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < interarm[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              interarm[i][j].gambar,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          title: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Detail',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    content: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(128, 0, 0, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            interarm[i][j].detail,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          padding: EdgeInsets.all(20),
                                        ),
                                        Text(
                                          "\n  Masih bingung ? \n Klik link dibawah ini ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                          textAlign: TextAlign.center,
                                        ),
                                        InkWell(
                                          child: Text(
                                            interarm[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(interarm[i][j].url),
                                        )
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(128, 0, 0, 1),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: Column(children: [
                                Text(
                                  interarm[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  interarm[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < interback.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < interback[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              interback[i][j].gambar,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          title: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Detail',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    content: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(128, 0, 0, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            interback[i][j].detail,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          padding: EdgeInsets.all(20),
                                        ),
                                        Text(
                                          "\n  Masih bingung ? \n Klik link dibawah ini ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                          textAlign: TextAlign.center,
                                        ),
                                        InkWell(
                                          child: Text(
                                            interback[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(interback[i][j].url),
                                        )
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(128, 0, 0, 1),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: Column(children: [
                                Text(
                                  interback[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  interback[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < lowerinter.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < lowerinter[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              lowerinter[i][j].gambar,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          title: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Detail',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    content: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(128, 0, 0, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            lowerinter[i][j].detail,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          padding: EdgeInsets.all(20),
                                        ),
                                        Text(
                                          "\n  Masih bingung ? \n Klik link dibawah ini ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                          textAlign: TextAlign.center,
                                        ),
                                        InkWell(
                                          child: Text(
                                            lowerinter[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(lowerinter[i][j].url),
                                        )
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(128, 0, 0, 1),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: Column(children: [
                                Text(
                                  lowerinter[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  lowerinter[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < interabs.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < interabs[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              interabs[i][j].gambar,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          title: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Detail',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    content: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(128, 0, 0, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            interabs[i][j].detail,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          padding: EdgeInsets.all(20),
                                        ),
                                        Text(
                                          "\n  Masih bingung ? \n Klik link dibawah ini ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                          textAlign: TextAlign.center,
                                        ),
                                        InkWell(
                                          child: Text(
                                            interabs[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(interabs[i][j].url),
                                        )
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(128, 0, 0, 1),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: Column(children: [
                                Text(
                                  interabs[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  interabs[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                )
            ]),
          ),
        ));
  }
}
