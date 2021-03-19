import 'dart:ffi';

import 'package:fitapps/db/databasepvdr.dart';
import 'package:fitapps/db/fulldatamdl.dart';
import 'package:flutter/material.dart';
import 'package:fitapps/pages/singin.dart';
import 'package:fitapps/pages/frontscreen.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: MemberOnly(
        query: null,
      ),
    ));

class MemberOnly extends StatefulWidget {
  final String query;
  MemberOnly({Key key, @required this.query}) : super(key: key);
  @override
  _MemberOnlyState createState() => _MemberOnlyState();
}

class _MemberOnlyState extends State<MemberOnly> {
  var _tinggi = 0;
  var _berat = 0;
  double bmi = 0;
  var nama;

  List<Fulldatamdl> fullDetail;

  @override
  void initState() {
    super.initState();
    fullDetail:
    Databasepvdr.db.getdetail(widget.query);
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Nama',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Berat Badan',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Tinggi Badan',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Kategori',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Berat Ideal',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(':',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(':',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(':',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(':',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(':',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  RaisedButton(
                    color: Color.fromRGBO(128, 0, 0, 1),
                    onPressed: () {},
                    child: Text(
                      'mulai olahraga',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  RaisedButton(
                    color: Color.fromRGBO(128, 0, 0, 1),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => frontscreen()),
                          (route) => false);
                    },
                    child:
                        Text('Log Out', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                  color: Colors.grey,
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('BMI Calculator',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                        SizedBox(height: 15.0),
                         Text('Berat Badan'),
                    SizedBox(height: 15.0),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Berat Badan',
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                          )),
                      keyboardType: TextInputType.number,
                      maxLength: 3,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Berat is required";
                            } else {
                              setState(() {
                                _berat = int.parse(value);
                              });
                            }
                          },
                          onSaved: (String value) {
                            _berat = int.parse(value);
                          },
                        ),
                        Text('Tinggi Badan'),
                        SizedBox(height: 15.0),
                        TextFormField(
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
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Tinggi is required';
                            } else {
                              setState(() {
                                _tinggi = int.parse(value);
                              });
                            }
                          },
                          onSaved: (String value) {
                            _tinggi = int.parse(value);
                          },
                        ),
                        RaisedButton(
                          onPressed: () {
                            if (!_formkey.currentState.validate()) {
                              return;
                            } else {
                              var berat = _berat;
                              double tinggi = _tinggi / 100;
                              bmi = berat / (pow(tinggi, 2));
                              print(bmi);
                            }
                          },
                          child: Text('Update', style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
