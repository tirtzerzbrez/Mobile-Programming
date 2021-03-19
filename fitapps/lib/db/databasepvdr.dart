import 'package:fitapps/db/databasemdl.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Databasepvdr {
  static const String TABLE_USER = "usertbl";
  static const String COLUMN_ID = "id";
  static const String COLUMN_USERNAME = "username";
  static const String COLUMN_PASSWORD = "password";
  static const String COLUMN_WEIGHT = "weight";
  static const String COLUMN_HEIGHT = "height";
  static const String COLUMN_BMI = "bmi";

  Databasepvdr._();
  static final Databasepvdr db = Databasepvdr._();

  Database _database;

  Future<Database> get database async {
    print("Data sedang diambil");

    if (_database != null) {
      return (_database);
    }

    _database = await createDB();

    return (_database);
  }

  Future<Database> createDB() async {
    String dbpath = await getDatabasesPath();

    return await openDatabase(join(dbpath, 'userdetail.db'), version: 1,
        onCreate: (Database database, int version) async {
      print("Creating Table.....");

      await database.execute("CREATE TABLE $TABLE_USER ("
          "$COLUMN_ID INTEGER PRIMARY KEY,"
          "$COLUMN_USERNAME TEXT,"
          "$COLUMN_PASSWORD TEXT,"
          "$COLUMN_HEIGHT INTEGER,"
          "$COLUMN_WEIGHT INTEGER,"
          "$COLUMN_BMI REAL"
          ")");
    });
  }

  Future insert(Databasemdl databasemdl) async {
    final db = await database;
    databasemdl.id = await db.insert(TABLE_USER, databasemdl.toMap());
    List datauser = await db.rawQuery(
        'SELECT username FROM usertbl WHERE id LIKE "${databasemdl.id}"');
    List checker = await db
        .rawQuery('SELECT id FROM usertbl WHERE username LIKE "${datauser}"');
    if (checker.length != 0) {
      await db.rawDelete('DELETE FROM usertbl WHERE id = "$databasemdl.id"');
      return 1;
    } else {
      return 0;
    }
  }

  Future query(String username, String password) async {
    final db = await database;
    print(username);
    List datauser = await db.rawQuery(
        'SELECT id FROM usertbl WHERE LOWER(username) LIKE LOWER("$username") AND password LIKE LOWER("$password")');
    List res = datauser;
    if (datauser.length != 0) {
      print(res);
      return 1;
    } else {
      return 0;
    }
}

  Future querycheck(String username) async {
    final db = await database;
    List datauser = await db.rawQuery(
      'select username from usertbl where lower(username) like lower("$username")'
    );
    if(datauser.length != 0) {
      return 1;
    } else {
      return 0;
    }
  }

  Future queryid(String username) async {
    final db = await database;
    print(username);
    List datauser = await db.rawQuery(
        'SELECT id,username,height,weight,bmi FROM usertbl WHERE LOWER(username) LIKE LOWER("$username")');
    List res = datauser;
    print(res);
    return datauser;
  }
}
