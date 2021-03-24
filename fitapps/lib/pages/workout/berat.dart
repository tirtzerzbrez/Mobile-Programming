import 'package:fitapps/resource/gerakan/ORadvance.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Berat extends StatefulWidget {
  @override
  _BeratState createState() => _BeratState();
}

class _BeratState extends State<Berat> {
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
              for (int i = 0; i < beratchest.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < beratchest[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              beratchest[i][j].gambar,
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
                                                color: Color.fromRGBO(
                                                    128, 0, 0, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Text(
                                              beratchest[i][j].detail,
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
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.center,
                                              ),
                                              InkWell(
                                                child: Text(
                                                  beratchest[i][j].url,
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                  textAlign: TextAlign.center,
                                                ),
                                                onTap: () => launch(
                                                    beratchest[i][j].url),
                                              ),
                                              YoutubePlayer(
                                                controller:
                                                    YoutubePlayerController(
                                                  initialVideoId: YoutubePlayer
                                                      .convertUrlToId(
                                                          beratchest[i][j].url),
                                                ),
                                                showVideoProgressIndicator:
                                                    true,
                                                progressIndicatorColor:
                                                    Colors.blueAccent,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      contentPadding: EdgeInsets.all(40),
                                      actions: [
                                        FlatButton(
                                          child: Text("Back"),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ]);
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
                                  beratchest[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  beratchest[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < beratarm.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < beratarm[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              beratarm[i][j].gambar,
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
                                                color: Color.fromRGBO(
                                                    128, 0, 0, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Text(
                                              beratarm[i][j].detail,
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
                                              beratarm[i][j].url,
                                              style:
                                                  TextStyle(color: Colors.blue),
                                              textAlign: TextAlign.center,
                                            ),
                                            onTap: () =>
                                                launch(beratarm[i][j].url),
                                          ),
                                          YoutubePlayer(
                                            controller: YoutubePlayerController(
                                              initialVideoId:
                                                  YoutubePlayer.convertUrlToId(
                                                      beratarm[i][j].url),
                                            ),
                                            showVideoProgressIndicator: true,
                                            progressIndicatorColor:
                                                Colors.blueAccent,
                                          )
                                        ],
                                      ),
                                      contentPadding: EdgeInsets.all(40),
                                      actions: [
                                        FlatButton(
                                          child: Text("Back"),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ]);
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
                                  beratarm[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  beratarm[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < beratback.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < beratback[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              beratback[i][j].gambar,
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
                                                color: Color.fromRGBO(
                                                    128, 0, 0, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Text(
                                              beratback[i][j].detail,
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
                                              beratback[i][j].url,
                                              style:
                                                  TextStyle(color: Colors.blue),
                                              textAlign: TextAlign.center,
                                            ),
                                            onTap: () =>
                                                launch(beratback[i][j].url),
                                          ),
                                          YoutubePlayer(
                                            controller: YoutubePlayerController(
                                              initialVideoId:
                                                  YoutubePlayer.convertUrlToId(
                                                      beratback[i][j].url),
                                            ),
                                            showVideoProgressIndicator: true,
                                            progressIndicatorColor:
                                                Colors.blueAccent,
                                          )
                                        ],
                                      ),
                                      contentPadding: EdgeInsets.all(40),
                                      actions: [
                                        FlatButton(
                                          child: Text("Back"),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ]);
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
                                  beratback[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  beratback[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < lowerberat.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < lowerberat[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              lowerberat[i][j].gambar,
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
                                                color: Color.fromRGBO(
                                                    128, 0, 0, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Text(
                                              lowerberat[i][j].detail,
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
                                              lowerberat[i][j].url,
                                              style:
                                                  TextStyle(color: Colors.blue),
                                              textAlign: TextAlign.center,
                                            ),
                                            onTap: () =>
                                                launch(lowerberat[i][j].url),
                                          ),
                                          YoutubePlayer(
                                            controller: YoutubePlayerController(
                                              initialVideoId:
                                                  YoutubePlayer.convertUrlToId(
                                                      lowerberat[i][j].url),
                                            ),
                                            showVideoProgressIndicator: true,
                                            progressIndicatorColor:
                                                Colors.blueAccent,
                                          )
                                        ],
                                      ),
                                      contentPadding: EdgeInsets.all(40),
                                      actions: [
                                        FlatButton(
                                          child: Text("Back"),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ]);
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
                                  lowerberat[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  lowerberat[i][j].instruksi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ]),
                            ),
                          )),
                  ],
                ),
              for (int i = 0; i < beratabs.length; i++)
                Column(
                  children: [
                    for (int j = 0; j < beratabs[i].length; j++)
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image.asset(
                              beratabs[i][j].gambar,
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
                                                color: Color.fromRGBO(
                                                    128, 0, 0, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Text(
                                              beratabs[i][j].detail,
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
                                              beratabs[i][j].url,
                                              style:
                                                  TextStyle(color: Colors.blue),
                                              textAlign: TextAlign.center,
                                            ),
                                            onTap: () =>
                                                launch(beratabs[i][j].url),
                                          ),
                                          YoutubePlayer(
                                            controller: YoutubePlayerController(
                                              initialVideoId:
                                                  YoutubePlayer.convertUrlToId(
                                                      beratabs[i][j].url),
                                            ),
                                            showVideoProgressIndicator: true,
                                            progressIndicatorColor:
                                                Colors.blueAccent,
                                          )
                                        ],
                                      ),
                                      contentPadding: EdgeInsets.all(40),
                                      actions: [
                                        FlatButton(
                                          child: Text("Back"),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ]);
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
                                  beratabs[i][j].nama,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                ),
                                Text(
                                  beratabs[i][j].instruksi,
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
