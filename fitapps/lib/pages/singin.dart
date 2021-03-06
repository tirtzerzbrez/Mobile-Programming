import 'package:fitapps/db/databasemdl.dart';
import 'package:fitapps/db/databasepvdr.dart';
import 'package:fitapps/pages/frontscreen.dart';
import 'package:fitapps/pages/memberonly.dart';
import 'package:fitapps/pages/singup.dart';
import 'package:flutter/material.dart';

class Singin extends StatefulWidget {
  @override
  _SinginState createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  String _username;
  String _password;
  List<Databasemdl> users;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildname() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Username",
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
          return "Username is required";
        } else {
          setState(() {
            _username = value;
          });
        }
      },
      onSaved: (String value) {
        _username = value;
      },
    );
  }

  Widget _buildpass() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password',
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
          return 'Password is required';
        } else {
          setState(() {
            _password = value;
          });
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(128, 0, 0, 1),
        ),
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/barbelguy.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text("Sign In",
                            style: TextStyle(
                                color: Color.fromRGBO(128, 0, 0, 1),
                                fontSize: 55,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        height: 125,
                      ),
                      Text("Sign Up",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 55,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(25),
                    child: SingleChildScrollView(
                        child: Form(
                            key: _formkey,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 200),
                                  _buildname(),
                                  SizedBox(height: 25),
                                  _buildpass(),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    width: 350,
                                    child: FlatButton(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      color: Color.fromRGBO(128, 0, 0, 1),
                                      textColor: Colors.white,
                                      padding: EdgeInsets.all(8.0),
                                      onPressed: () async {
                                        if (!_formkey.currentState.validate()) {
                                          return;
                                        } else {
                                          String username = _username;
                                          String password = _password;
                                          int hsl = await Databasepvdr.db
                                              .query(username, password);
                                          if (hsl != 0) {
                                            print(hsl);
                                            Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Member(query: username)),
                                                (route) => false);
                                          } else {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text("Attention !"),
                                                    content: Text(
                                                        "Username / Password anda salah !"),
                                                    actions: <Widget>[
                                                      new FlatButton(
                                                        child: Text("OK"),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      )
                                                    ],
                                                  );
                                                });
                                          }
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  FlatButton(
                                    child: Text(
                                      "Register New Account",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    color: Color.fromRGBO(128, 0, 0, 1),
                                    textColor: Colors.white,
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Singup()));
                                    },
                                  )
                                ]))))
              ],
            )));
  }
}
