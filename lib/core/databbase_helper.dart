import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final _databaseName = "users";
  static final _databaseVersion = 1;
  static final table = 'users';
  static final columnId = 'id';
  static final columnUsername = 'username';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
              CREATE TABLE $table (
                $columnId INTEGER PRIMARY KEY,
                $columnUsername TEXT
                )
              ''');
  }

  Future<int> insertUser(String username) async {
    Database db = await database;
    Map<String, dynamic> row = {
      columnUsername: username,

    };
    return await db.insert(table, row);
  }
}
