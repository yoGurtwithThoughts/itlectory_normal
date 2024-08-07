import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

//this code is creating local db
class DatabaseHelper {
  static final _databaseName = "user.db";
  static final _databaseVersion = 1;
  static final table = 'user_studends';
  static final columnId = 'id';
  static final columnUsername = 'name';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
              CREATE TABLE $table (
                $columnId INTEGER PRIMARY KEY,
                 $columnUsername TEXT NOT NULL UNIQUE
               )
              ''');
  }
//insert data on db

  Future<int> insertUser(String username) async {
    Database db = await database;
    Map<String, dynamic> row = {
      columnUsername: username,

    };
    return await db.insert(table, row);
  }

  Future<bool> checkUser(String username) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      table,
      where: '$columnUsername = ?',
      whereArgs: [username],
    );
    return results.isNotEmpty; //when user it is found
  }
}
