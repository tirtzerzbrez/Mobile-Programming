import 'package:fitapps/providers/network.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Coronaglobal extends StatefulWidget {
  @override
  _CoronaState createState() => _CoronaState();
}

class _CoronaState extends State<Coronaglobal> {

  Future dataGlobalPositif;
  Future dataGlobalSembuh;
  Future dataGlobalMeninggal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataGlobalPositif = getDataGlobalPositif();
    dataGlobalSembuh = getDataGlobalSembuh();
    dataGlobalMeninggal = getDataGlobalMeninggal();
    // data.then((value) => {
    //   print(value[0]["name"])
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36)
                      ),
                      child: Text(
                        'Indonesia',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(36)
                      ),
                      child: Text(
                        'Global',
                        style: TextStyle(
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
                      color: Colors.redAccent,
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
                        globalpositif(),
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
                        globalsembuh()
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
                        globalmeninggal()
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

  Widget globalpositif(){
    return Container(
      margin: EdgeInsets.only(top:10.0),
      alignment: Alignment.topLeft,
      child: FutureBuilder(
          future: dataGlobalPositif,
          builder: (context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data["value"]}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

  Widget globalsembuh(){
    return Container(
      margin: EdgeInsets.only(top:10.0),
      alignment: Alignment.topLeft,
      child: FutureBuilder(
          future: dataGlobalSembuh,
          builder: (context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data["value"]}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

  Widget globalmeninggal(){
    return Container(
      margin: EdgeInsets.only(top:10.0),
      alignment: Alignment.topLeft,
      child: FutureBuilder(
          future: dataGlobalMeninggal,
          builder: (context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return Text(
                "${snapshot.data["value"]}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

  Future getDataGlobalPositif() async {
    Network global = Network('https://api.kawalcorona.com/positif');
    return global.fetchData();
  }
  Future getDataGlobalSembuh() async {
    Network global = Network('https://api.kawalcorona.com/sembuh');
    return global.fetchData();
  }
  Future getDataGlobalMeninggal() async {
    Network global = Network('https://api.kawalcorona.com/meninggal');
    return global.fetchData();
  }
}