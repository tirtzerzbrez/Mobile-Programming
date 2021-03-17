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
}
