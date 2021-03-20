import 'package:fitapps/resource/Makanan/diet.dart';
import 'package:flutter/material.dart';

class Makansiang extends StatefulWidget {
  @override
  _MakansiangState createState() => _MakansiangState();
}

class _MakansiangState extends State<Makansiang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/siangp.png'),
                      fit: BoxFit.fill)),
            ),
            title: Text(
              "Makan Siang",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: siang.length,
          itemBuilder: (context, index) {
            return Container(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      height: 129,
                      width: 129,
                      child: Image.asset(siang[index].gambar),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              siang[index].nama,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                siang[index].aturan,
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            );
          },
        ));
  }
}
