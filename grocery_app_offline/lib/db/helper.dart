import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final TABLE_GROCERY_ITEM = "grocery_item";

Future<Database> initializeDatabase() async {
  final databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'grocery.db');

  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) {
      db.execute(
        "CREATE TABLE $TABLE_GROCERY_ITEM (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, quantity INTEGER, category TEXT)",
      );
    },
  );
}
