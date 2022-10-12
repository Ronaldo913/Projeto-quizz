import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "jogo1.db");
    Database database = await openDatabase(
      path,
      version: 2,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {
      String sql = "CREATE TABLE USUARIO (usuario varchar(100) PRIMARY KEY)";
      await db.execute(sql);

      sql = "INSERT INTO USUARIO (usuario) VALUES ('Tarsis')";
      await db.execute(sql);

      sql = "INSERT INTO USUARIO (usuario) VALUES ('TARSIS')";
      await db.execute(sql);

      sql = "INSERT INTO USUARIO (usuario) VALUES ('tarsis')";
      await db.execute(sql);
    }
  }
}
