import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databaseName = "user.db";
  static final _databaseVersion = 1;
  static final table = 'users';
  static final columnId = 'id';
  static final columnUsername = 'username';
  static final columnUserPas = 'userpas';
  static final columnUserLog = 'userlog';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY,
        $columnUsername TEXT,
        $columnUserPas TEXT,
        $columnUserLog TEXT
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
  Future<int> insertUser1(String username, userpas, userlog) async {
    Database db = await database;
    Map<String, dynamic> row = {
      columnUsername: username,
      columnUserPas: userpas,
      columnUserLog: userlog,
    };
    return await db.insert(table, row);
  }}