import 'package:flutter/material.dart';
import 'package:fitapps/pages/singin.dart';
import 'package:fitapps/pages/frontscreen.dart';

void main() => runApp(MaterialApp(
      home: MemberOnly(),
    ));

class MemberOnly extends StatefulWidget {
  @override
  _MemberOnlyState createState() => _MemberOnlyState();
}

class _MemberOnlyState extends State<MemberOnly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(128, 0, 0, 1),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 350.0,
                color: Color.fromRGBO(128, 0, 0, 1),
              ),
              Text('Nama              :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              Text('Berat Badan   :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Tinggi Badan :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kategori         :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Berat Ideal     :',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text('mulai olahraga'),
                  ),
                  SizedBox(width: 20.0),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => frontscreen()),
                          (route) => false);
                    },
                    child: Text('Log Out'),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('BMI Calculator'),
                    SizedBox(height: 15.0),
                    Text('Berat Badan'),
                    SizedBox(height: 15.0),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Berat',
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                          )),
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                    ),
                    Text('Tinggi Badan'),
                    SizedBox(height: 15.0),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Tinggi Badan',
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          )),
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Update'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
