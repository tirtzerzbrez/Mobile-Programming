import 'package:fitapps/pages/covid19global.dart';
import 'package:fitapps/providers/network.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Corona extends StatefulWidget {
  @override
  _CoronaState createState() => _CoronaState();
}

class _CoronaState extends State<Corona> {

  Future dataIndonesia;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataIndonesia = getDataIndonesia();
    // data.then((value) => {
    //   print(value[0]["name"])
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(128, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(128, 0, 0, 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Statistik',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, bottom: 0, left: 24, right: 24),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(36)
            ),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36)
                      ),
                      child: Text(
                        'Indonesia',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Coronaglobal()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36)
                      ),
                      child: Text(
                        'Global',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 24, right: 0),
            margin: EdgeInsets.only(top: 60),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Positif',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                         createTextFromApi(1),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 24,),
              ],
            ),
          ),
          SizedBox(height: 24,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'sembuh',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        createTextFromApi(2)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 24,),
                Expanded(
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Meninggal',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                          createTextFromApi(3)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 24,),
                Expanded(
                  child: Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dirawat',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        createTextFromApi(4),
                      ],
                    ),
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget createTextFromApi(int i){
    return Container(
      margin: EdgeInsets.only(top:10.0),
      alignment: Alignment.topLeft,
      child: FutureBuilder(
        future: dataIndonesia,
          builder: (context, AsyncSnapshot snapshot){
          if(i == 1){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data[0]["positif"]}",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }
          if(i == 2){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data[0]["sembuh"]}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }
          if(i == 3){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data[0]["meninggal"]}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }
          if(i == 4){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data[0]["dirawat"]}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }
          if(i == 5){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data[0]["positif"]}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }
          else{
            return CircularProgressIndicator();
          }
      }),
    );
  }

  Future getDataIndonesia() async {
    Network indonesia = Network('https://api.kawalcorona.com/indonesia/');
    return indonesia.fetchData();
  }
}
