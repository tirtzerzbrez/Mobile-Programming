import 'package:flutter/material.dart';
import 'package:fitapps/pages/singin.dart';
import 'package:fitapps/pages/frontscreen.dart';

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
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 350.0,
              color: Colors.red,
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
            Text('Resiko            :',
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
                        MaterialPageRoute(builder: (context) => frontscreen()),
                        (route) => false);
                  },
                  child: Text('Log Out'),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 247.0, 10.0),
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('BMI Calculator'),
                  Text('Berat Badan'),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
