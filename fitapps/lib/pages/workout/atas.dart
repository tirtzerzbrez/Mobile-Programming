import 'package:fitapps/resource/gerakan/Upper.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Atas extends StatefulWidget {
  @override
  _AtasState createState() => _AtasState();
}

class _AtasState extends State<Atas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(128, 0, 0, 1),
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
            for (int i = 0; i < chest.length; i++)
              Column(
                children: [
                  for (int j = 0; j < chest[i].length; j++)
                    ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Image.asset(
                            chest[i][j].gambar,
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
                                            chest[i][j].detail,
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
                                                chest[i][j].url,
                                                style: TextStyle(
                                                    color: Colors.blue),
                                                textAlign: TextAlign.center,
                                              ),
                                              onTap: () =>
                                                  launch(chest[i][j].url),
                                            ),
                                            YoutubePlayer(
                                              controller:
                                                  YoutubePlayerController(
                                                initialVideoId: YoutubePlayer
                                                    .convertUrlToId(
                                                        chest[i][j].url),
                                              ),
                                              showVideoProgressIndicator: true,
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
                                        onPressed: () => Navigator.pop(context),
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
                                chest[i][j].nama,
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                              ),
                              Text(
                                chest[i][j].instruksi,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ]),
                          ),
                        )),
                ],
              ),
          ]),
        ),
      ),
    );
  }
}
