import 'package:fitapps/db/databasepvdr.dart';

class Databasemdl {
  int id;
  String username;
  String password;
  String kategori;
  int height;
  int weight;
  double bmi;

  Databasemdl({
    this.username,
    this.password,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      Databasepvdr.COLUMN_USERNAME: username,
      Databasepvdr.COLUMN_PASSWORD: password
    };

    if (id != null) {
      map[Databasepvdr.COLUMN_ID] = id;
    }

    return map;
  }

  Databasemdl.fromMap(Map<String, dynamic> map) {
    id = map[Databasepvdr.COLUMN_ID];
    username = map[Databasepvdr.COLUMN_USERNAME];
    password = map[Databasepvdr.COLUMN_PASSWORD];
  }
}
