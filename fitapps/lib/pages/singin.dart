import 'package:fitapps/pages/frontscreen.dart';
import 'package:fitapps/pages/memberonly.dart';
import 'package:fitapps/pages/singup.dart';
import 'package:flutter/material.dart';

class Singin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                Align(
                    alignment: Alignment(-0.7, -0.85),
                    child: Text("Sign In",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 55,
                            fontWeight: FontWeight.bold))),
                Align(
                  alignment: Alignment(-0.7, -0.65),
                  child: InkWell(
                    child: Text("Sign Up",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 55,
                            fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Singup()));
                    },
                  ),
                ),
                Align(
                    alignment: Alignment(-0.5, -0.3),
                    child: Container(
                      width: 350,
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: "Email/Username",
                              hintStyle: TextStyle(fontSize: 20))),
                    )),
                Align(
                    alignment: Alignment(-0.5, -0.1),
                    child: Container(
                      width: 350,
                      height: 50,
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(fontSize: 20))),
                    )),
                Align(
                  alignment: Alignment(-0.5, 0.2),
                  child: Container(
                      width: 350,
                      padding: EdgeInsets.only(left: 20),
                      child: FlatButton(
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.red,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MemberOnly()),
                              (route) => false);
                        },
                      )),
                )
              ],
            )));
  }
}
