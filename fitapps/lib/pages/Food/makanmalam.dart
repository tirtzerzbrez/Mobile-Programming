import 'package:fitapps/resource/Makanan/diet.dart';
import 'package:flutter/material.dart';

class Makanmalam extends StatefulWidget {
  @override
  _MakanmalamState createState() => _MakanmalamState();
}

class _MakanmalamState extends State<Makanmalam> {
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
                      image: AssetImage('assets/image/malamp.png'),
                      fit: BoxFit.fill)),
            ),
            title: Text(
              "Makan Malam",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: malam.length,
          itemBuilder: (context, index) {
            return Container(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      height: 129,
                      width: 129,
                      child: Image.asset(malam[index].gambar),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              malam[index].nama,
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
                                malam[index].aturan,
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
