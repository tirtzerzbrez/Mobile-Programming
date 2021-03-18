import 'package:fitapps/db/databasemdl.dart';
import 'package:fitapps/db/databasepvdr.dart';
import 'package:fitapps/pages/singin.dart';
import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  String _username;
  String _password;

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
                                color: Colors.grey,
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
                              color: Color.fromRGBO(128, 0, 0, 1),
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
                                        "Register",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      color: Color.fromRGBO(128, 0, 0, 1),
                                      textColor: Colors.white,
                                      padding: EdgeInsets.all(8.0),
                                      onPressed: () async {
                                        if (!_formkey.currentState.validate()) {
                                          return;
                                        } else {
                                          Databasemdl userdet = Databasemdl(
                                              username: _username,
                                              password: _password);
                                          print(_username);
                                          int hasil = await Databasepvdr.db
                                              .insert(userdet);
                                          if (hasil == 1) {
                                            return;
                                          } else {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text("Attention !"),
                                                    content: Text(
                                                        "Username anda sudah dipakai!"),
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
                                ]))))
              ],
            )));
  }
}
