import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fitapps/resource/gerakan/ORringan.dart';
import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
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
              for (int i = 0; i < ringanchest.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < ringanchest[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              ringanchest[i][j].gambar,
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
                                            ringanchest[i][j].detail,
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
                                                ringanchest[i][j].url,
                                                style: TextStyle(
                                                    color: Colors.blue),
                                                textAlign: TextAlign.center,
                                              ),
                                              onTap: () =>
                                                  launch(ringanchest[i][j].url),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                     actions: [
                                    FlatButton(
                                      child: Text("Back"),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                   ]
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
                                  ringanchest[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  ringanchest[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < ringanarm.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < ringanarm[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              ringanarm[i][j].gambar,
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
                                            ringanarm[i][j].detail,
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
                                            ringanarm[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(ringanarm[i][j].url),
                                        )
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                     actions: [
                                    FlatButton(
                                      child: Text("Back"),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                   ]
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
                                  ringanarm[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  ringanarm[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < ringanback.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < ringanback[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              ringanback[i][j].gambar,
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
                                            ringanback[i][j].detail,
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
                                            ringanback[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(ringanback[i][j].url),
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
                                  ringanback[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  ringanback[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < lowerringan.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < lowerringan[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              lowerringan[i][j].gambar,
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
                                            lowerringan[i][j].detail,
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
                                            lowerringan[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(lowerringan[i][j].url),
                                        )
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                     actions: [
                                    FlatButton(
                                      child: Text("Back"),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                   ]
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
                                  lowerringan[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  lowerringan[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < ringanabs.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < ringanabs[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              ringanabs[i][j].gambar,
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
                                            ringanabs[i][j].detail,
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
                                            ringanabs[i][j].url,
                                            style:
                                                TextStyle(color: Colors.blue),
                                            textAlign: TextAlign.center,
                                          ),
                                          onTap: () =>
                                              launch(ringanabs[i][j].url),
                                        )
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(40),
                                     actions: [
                                    FlatButton(
                                      child: Text("Back"),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                   ]
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
                                  ringanabs[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  ringanabs[i][j].instruksi,
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
