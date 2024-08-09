import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static const _databaseName = "user.db";
  static const _databaseVersion = 1;
  static const table = 'user_studends';
  static const columnId = 'id';
  static const columnUsername = 'username';

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
                $columnUsername TEXT
              )
              ''');
    await db.insert(table, {
      columnUsername: 'user1',
    });
    await db.insert(table, {
      columnUsername: 'user2',
    });
    print('Database created and users inserted'); // Debugging line
  }

  Future<int> insertUser(String username) async {
    Database db = await database;
    Map<String, dynamic> row = {
      columnUsername: username,
    };
    return await db.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> getAllUsers() async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(table);
    print('All users: $results'); // Debugging line
    return results;
  }

  Future<bool> checkUser(String username) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      table,
      where: '$columnUsername = ?',
      whereArgs: [username],
    );
    print('User check for $username: $results'); // Debugging line
    return results.isNotEmpty; // when user is found
  }
}