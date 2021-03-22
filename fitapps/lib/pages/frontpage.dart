import 'package:fitapps/pages/CovidNews.dart';
import 'package:fitapps/pages/covid19.dart';
import 'package:fitapps/pages/singin.dart';
import 'package:flutter/material.dart';
import 'workout/atas.dart';
import 'workout/bawah.dart';

// ignore: camel_case_types
class frontpage extends StatefulWidget {
  final List query;
  frontpage({Key key, @required this.query}) : super(key: key);

  @override
  _frontpageState createState() => _frontpageState(query);
}

// ignore: camel_case_types
class _frontpageState extends State<frontpage> {
  List query;
  _frontpageState(this.query);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(128, 0, 0, 1),
      ),
      endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  query[1],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                accountEmail: Text(' '),
                decoration: new BoxDecoration(
                    image: new  DecorationImage(
                      image: new AssetImage('assets/image/sidebardugdug.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              ListTile(
                title: Text('Covid-19', style: TextStyle(fontSize: 18)),
                leading: Icon(Icons.new_releases, color: Colors.red),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => berita()),
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.vpn_key_outlined),
                onTap: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
              ListTile(
                title: Text('Tentang Developer'),
                leading: Icon(Icons.info_outline),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 2,
            ),
            makeList1(image: 'assets/image/virus.png', tag: 'red'),
            makeList2(image: 'assets/image/olahraga.jpg', tag: 'blue'),
            makeList3(image: 'assets/image/sayuur.jpg', tag: 'cyan'),
          ]),
        ),
      ),
    );
  }

  Widget makeList1({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Corona()),
          );
        },
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
                            Text(
                              "fitur khusus pandemi\nCovid-19",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Atas()),
          );
        },
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
                            Text(
                              "Olahraga",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Bawah()),
          );
        },
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
                            Text(
                              "Makanan",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
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
