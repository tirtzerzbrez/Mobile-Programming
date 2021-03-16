import 'package:fitapps/pages/singin.dart';
import 'package:fitapps/pages/singup.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class frontscreen extends StatefulWidget {
  @override
  _frontscreenState createState() => _frontscreenState();
}

// ignore: camel_case_types
class _frontscreenState extends State<frontscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color:Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Signin'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Singin()),
                );
              },
            ),
            ListTile(
              title: Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              children: <Widget>[
                SizedBox(height: 2,),
                makeList1(image: 'assets/image/virus.png', tag: 'red'),
                makeList2(image: 'assets/image/upper.png', tag: 'blue'),
                makeList3(image: 'assets/image/lower.png', tag: 'cyan'),
                makeList4(image: 'assets/image/back.png', tag: 'orange'),
              ]),
        ),
      ),
    );
  }

  Widget makeList1({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Center(
          child: Container(
            height: 140,
            width: 370,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 35, bottom: 70),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("fitur khusus pandemi\nCovid-19", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                          ]
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeList2({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Center(
          child: Container(
            height: 105,
            width: 370,
            padding: EdgeInsets.only(top: 15, left: 20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Upper Body", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                          ]
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeList3({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Center(
          child: Container(
            height: 105,
            width: 370,
            padding: EdgeInsets.only(top: 15, left: 20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lower Body", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                          ]
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeList4({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Center(
          child: Container(
            height: 105,
            width: 370,
            padding: EdgeInsets.only(top: 15, left: 20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Back", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                          ]
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}