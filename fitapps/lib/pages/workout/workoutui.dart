import 'package:fitapps/resource/gerakan/ORbeginner.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Workout());
}

class Workout extends StatelessWidget {
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
            for (int i = 0; i < upperbeginnerchest.length; i++)
              Column(
                children: [
                  for (int j = 0; j < upperbeginnerchest[i].length; j++)
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Image.asset(
                          upperbeginnerchest[i][j].gambar,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      title: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(128, 0, 0, 1),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: Column(children: [
                          Text(
                            upperbeginnerchest[i][j].nama,
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                          ),
                          Text(
                            upperbeginnerchest[i][j].instruksi,
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ]),
                      ),
                    ),
                ],
              ),
          ]),
        )));
  }
}
