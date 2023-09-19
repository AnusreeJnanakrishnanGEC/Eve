import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;
import 'package:path/path.dart' show join;
import 'dart:io' show Directory;

class DatabaseHelper{
  static const _databaseName='eve.db';
  static const _databaseVersion=1;

  static const tableYear='first_year';
  static const columntableYearId='id';
  static const columntableYearMonthName='month_name';
  static const columntableYearSavings='year_savings';

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  Future <Database> get database async{
    if(_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async{
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path=join(documentsDirectory.path,_databaseName);
  print(path);
  return openDatabase(path,version:_databaseVersion ,onCreate: _onCreate);
  }

  Future _onCreate (Database db, int version)async{
    await db.execute('''
    CREATE TABLE $tableYear (
    $columntableYearId INTEGER PRIMARY KEY,
    $columntableYearMonthName TEXT,
    $columntableYearSavings FLOAT
    )
     ''');
  }

  Future<List> get getAllSavings async{
    var dbClient=_database;
    var result = await dbClient!.rawQuery("SELECT * FROM $tableYear");
    return result.toList();
  }



}