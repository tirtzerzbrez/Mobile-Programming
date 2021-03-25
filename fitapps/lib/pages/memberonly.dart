// import 'package:flutter/material.dart';
// import 'package:fitapps/pages/singin.dart';
// import 'package:fitapps/pages/frontscreen.dart';
//
// void main() => runApp(MaterialApp(
//       home: MemberOnly(),
//     ));
//
// class MemberOnly extends StatefulWidget {
//   @override
//   _MemberOnlyState createState() => _MemberOnlyState();
// }
//
// class _MemberOnlyState extends State<MemberOnly> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Profile',
//           style: TextStyle(
//             fontSize: 25.0,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Color.fromRGBO(128, 0, 0, 1),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 width: 350.0,
//                 color: Color.fromRGBO(128, 0, 0, 1),
//               ),
//               Text('Nama              :',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   )),
//               Text('Berat Badan   :',
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               Text('Tinggi Badan :',
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               Text('Kategori         :',
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               Text('Berat Ideal     :',
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               Text('Resiko            :',
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               SizedBox(height: 20),
//               Row(
//                 children: <Widget>[
//                   RaisedButton(
//                     onPressed: () {},
//                     child: Text('mulai olahraga'),
//                   ),
//                   SizedBox(width: 20.0),
//                   RaisedButton(
//                     onPressed: () {
//                       Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => frontscreen()),
//                           (route) => false);
//                     },
//                     child: Text('Log Out'),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 40.0),
//               Container(
//                 padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
//                 color: Colors.grey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text('BMI Calculator'),
//                     SizedBox(height: 15.0),
//                     Text('Berat Badan'),
//                     SizedBox(height: 15.0),
//                     TextField(
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           hintText: 'Berat',
//                           filled: true,
//                           fillColor: Colors.white,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.blueAccent,
//                             ),
//                           )),
//                       keyboardType: TextInputType.number,
//                       maxLength: 3,
//                     ),
//                     Text('Tinggi Badan'),
//                     SizedBox(height: 15.0),
//                     TextField(
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           hintText: 'Tinggi Badan',
//                           filled: true,
//                           fillColor: Colors.white,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                             ),
//                           )),
//                       keyboardType: TextInputType.number,
//                       maxLength: 3,
//                     ),
//                     RaisedButton(
//                       onPressed: () {},
//                       child: Text('Update'),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:fitapps/db/databasepvdr.dart';
import 'package:fitapps/pages/frontpage.dart';
import 'package:fitapps/pages/frontscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(MaterialApp(
       home: Member(),
     ));

class Member extends StatefulWidget {
  final String query;
  Member({Key key, @required this.query}) : super(key: key);
  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
  String username;
  int height;
  int weight;
  double BMI;
  double bemi;
  String user;
  List dataaja;

  String ktgr;

  Future dataMember;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
    dataMember = getMemberinfo();
  }

  Future getMemberinfo() async {
    List<Map> member = await Databasepvdr.db.querymember(widget.query);
    setState(() {
      bemi = member[0]['bmi'];
      user = member[0]['username'];
    });
    return member;
  }

  Widget _buildheight() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Tinggi",
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
            borderRadius: BorderRadius.circular(10.0),
          )),
      validator: (String value) {
        if (value.isEmpty) {
          return "value is required";
        } else {
          setState(() {
            height = int.parse(value);
          });
        }
      },
      onSaved: (String value) {
        height = int.parse(value);
      },
    );
  }

  Widget _buildweight() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Berat",
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
            borderRadius: BorderRadius.circular(10.0),
          )),
      validator: (String value) {
        if (value == 0) {
          return "value is required";
        } else {
          setState(() {
            weight = int.parse(value);
          });
        }
      },
      onSaved: (String value) {
        weight = int.parse(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(102, 0, 0, 1),
                Color.fromRGBO(255, 102, 102, 1),
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 34),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Icon(
                          AntDesign.arrowleft,
                          color: Colors.white,
                        ),
                        onTap: () {
                          setState(() {
                            dataaja = [bemi,user];
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      frontpage(query: dataaja)));
                        },
                      ),
                      InkWell(
                        child: Icon(
                          AntDesign.logout,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      frontscreen()),
                                  (route) => false);
                        },
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My\nProfile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Nise',
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: FutureBuilder(
                                  future: dataMember,
                                  builder: (context, AsyncSnapshot snapshot){
                                    if(snapshot.hasData){
                                      return Container(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text("${snapshot.data[0]['username']}",
                                            style: TextStyle(
                                              color: Color.fromRGBO(39, 105, 171, 1),
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      "Berat",
                                                      style: TextStyle(
                                                          color: Colors.grey[700],
                                                          fontSize: 21
                                                      ),
                                                    ),
                                                    Text(
                                                      '${snapshot.data[0]['weight']}',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(39, 105, 171, 1),
                                                        fontSize: 21,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 110,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 40,
                                                    width: 2.5,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "Tinggi",
                                                      style: TextStyle(
                                                          color: Colors.grey[700],
                                                          fontSize: 21
                                                      ),
                                                    ),
                                                    Text(
                                                      '${snapshot.data[0]['height']}',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(39, 105, 171, 1),
                                                        fontSize: 21,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 40,
                                                    width: 2.5,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "BMI",
                                                      style: TextStyle(
                                                          color: Colors.grey[700],
                                                          fontSize: 21
                                                      ),
                                                    ),
                                                    Text(
                                                      snapshot.data[0]['bmi'] == null ?
                                                      '${snapshot.data[0]['bmi']}' : '${snapshot.data[0]['bmi'].toStringAsFixed(1)}',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(39, 105, 171, 1),
                                                        fontSize: 21,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 40,
                                                    width: 2.5,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "Kategori",
                                                      style: TextStyle(
                                                          color: Colors.grey[700],
                                                          fontSize: 21
                                                      ),
                                                    ),
                                                    Text(
                                                      '${snapshot.data[0]['kategori']}',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(39, 105, 171, 1),
                                                        fontSize: 21,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    } else {
                                      return CircularProgressIndicator();
                                    }
                                  }
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'BMI Calculator',
                            style: TextStyle(
                              color: Color.fromRGBO(39, 105, 171, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            thickness: 2.5,
                          ),
                          Form(
                            key: _formkey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 10),
                                _buildheight(),
                                SizedBox(height: 10),
                                _buildweight(),
                                SizedBox(height: 23),
                                SizedBox(
                                  height: 40,
                                  width: 800,
                                  child: RaisedButton(
                                    onPressed: () {
                                      if (!_formkey.currentState.validate()) {
                                        return;
                                      } else {
                                        var berat = weight;
                                        double tinggi = height / 100;
                                        BMI = berat / (pow(tinggi, 2));
                                        if(BMI < 19){
                                          ktgr = "'under'";
                                        }
                                        else if(BMI < 25 && BMI > 19){
                                          ktgr = "'normal'";
                                        }
                                        else if(BMI < 30 && BMI > 25){
                                          ktgr = "'overweight'";
                                        }
                                        else{
                                          ktgr = "'obese'";
                                        }
                                        print(BMI);

                                        Databasepvdr.db.update(height, berat, BMI, ktgr, widget.query);
                                        setState(() {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Member(query: widget.query)),
                                                  (route) => false);
                                        });
                                      }
                                    },
                                    color: Color.fromRGBO(39, 105, 171, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Text(
                                        'Update',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


