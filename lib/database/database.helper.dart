import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{
  static final DatabaseHelper _databaseHelper = DatabaseHelper._internal();
  Database _database;
  factory DatabaseHelper(){
    return _databaseHelper;
  }
  DatabaseHelper._internal(){}

  get database async{
    if(_database != null){
      return _database;
    }else{
      _database = await initializeDatabase();
    }
  }

  initializeDatabase() async {
    var path = await getDatabasesPath();
    var file = join(path, 'brunasDatabase.db');
    var db = await openDatabase(file, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version){
    // String sql = 'CREATE TABLE tasks(';
    
  }

  

}