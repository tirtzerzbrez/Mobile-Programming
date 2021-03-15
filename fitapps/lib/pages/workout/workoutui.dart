import 'package:fitapps/resource/gerakan/ORadvance.dart';
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
        body: ListView.builder(
          itemCount: upperbeginnerchest.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
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
                          title: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromRGBO(128, 0, 0, 1),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            child: Row(children: [
                              Text(upperbeginnerchest[i][j].nama),
                              Text(upperbeginnerchest[i][j].instruksi)
                            ]),
                          ),
                        ),
                    ],
                  ),
              ]),
            ));
          },
        ));
  }
}
