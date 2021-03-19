import 'package:flutter/material.dart';

class berita extends StatefulWidget {

  @override
  _beritaState createState() => _beritaState();
}

class _beritaState extends State<berita> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      "Patuhi selalu protokol kesehatan umum dan terapkan Perilaku Hidup Bersih dan Sehat",
      "Ciptakan lingkungan tanggap protokol kesehatan ketika ada warga yang terpapar",
      "Ketahui prosedur pertolongan dan penanganan ketika ada anggota keluarga yang terpapar COVID-19",
      "Pastikan diri dalam kondisi sehat jika harus beraktivitas di luar rumah. Langsung bersihkan diri dan mengganti pakaian saat pulang ke rumah"
    ];

    final List<String> gambar = <String>[
      "assets/image/spray.png",
      "assets/image/shield.png",
      "assets/image/batuk.png",
      "assets/image/cucit.png"
    ];

    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 221,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0,2.0),
                      blurRadius: 6.0,
                    )
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: Image(
                    image: AssetImage('assets/image/covidnews.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.white,
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
              ),
              Positioned(
                left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Protokol Kesehatan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index){
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 210.0,
                                    child: Text(
                                        "${entries[index]}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            width: 110.0,
                            image: AssetImage(
                              '${gambar[index]}',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
          ),
        ],
      ),
    );
  }
}
