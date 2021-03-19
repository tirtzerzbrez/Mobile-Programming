import 'package:fitapps/db/databasepvdr.dart';

class Fulldatamdl {
  int id;
  String username;
  int height;
  int weight;
  double bmi;

  Fulldatamdl({this.id, this.username, this.height, this.weight, this.bmi});

  Fulldatamdl.keMap(Map<String, dynamic> map) {
    var map = <String, dynamic>{
      Databasepvdr.COLUMN_USERNAME: username,
      Databasepvdr.COLUMN_HEIGHT: height,
      Databasepvdr.COLUMN_WEIGHT: weight,
      Databasepvdr.COLUMN_BMI: bmi
    };

    if (id != null) {
      map[Databasepvdr.COLUMN_ID] = id;
    }
  }

  Fulldatamdl.dariMap(Map<String, dynamic> map) {
    id = map[Databasepvdr.COLUMN_ID];
    username = map[Databasepvdr.COLUMN_USERNAME];
    height = map[Databasepvdr.COLUMN_HEIGHT];
    weight = map[Databasepvdr.COLUMN_WEIGHT];
    bmi = map[Databasepvdr.COLUMN_BMI];
  }
}
