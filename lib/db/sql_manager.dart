import 'dart:io';

import 'package:fish_redux_crawler/db/accont_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlManager {
  static final String _dbName = "db_fish_redux_crawer.db";

  static final int _dbVersion = 1;
  static Database _database;

  AccountProvider _accountProvider;

  // 初始化
  static init() async {
    // 1.  在创建数据库前，需要设置创建数据库的路径
    var dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, _dbName);

    if (Platform.isIOS) {
      path = dataBasePath + "/" + _dbName;
    }

    // 2. 创建数据库、数据库表：
    _database = await openDatabase(path,
        version: _dbVersion,
        onUpgrade: (Database db, int oldVersion, int newVersion) async {},
        onCreate: (Database db, int vers) async {
      //创建表，只回调一次
      // await db.execute(dbTables);
      // await db.close();
    });
  }

  /// 表是否存在
  static isTableExits(String tableName) async {
    await getCurrentDatabase();
    var res = await _database.rawQuery(
        "select * from Sqlite_master where type = 'table' and name = '$tableName'");
    return res != null && res.length > 0;
  }

  ///获取当前数据库对象
  static Future<Database> getCurrentDatabase() async {
    if (_database == null) {
      await init();
    }
    return _database;
  }

  ///关闭
  static close() {
    _database?.close();
    _database = null;
  }
}
