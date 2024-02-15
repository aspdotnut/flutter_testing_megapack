import 'package:mysql1/mysql1.dart';

import 'dart:async';

Future<bool> db(String query, [List<dynamic>? parameters]) async {

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'passwords'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    if (result.isNotEmpty || result.affectedRows! > 0) {

      return true;
    }
    return false;
  }
  catch (e) {

    return false;
  }
  finally {

    await conn.close();
  }
}

Future<bool> dbInsert([List<dynamic>? parameters]) async {

  return await db("INSERT INTO passwords (password) VALUES (?)", parameters);
}

Future<bool> dbSelect([List<dynamic>? parameters]) async {

  return await db("SELECT * FROM passwords WHERE password = ?", parameters);
}

Future<bool> dbUpdate([List<dynamic>? parameters]) async {

  return await db("UPDATE passwords SET password = ? WHERE password = ?", parameters);
}

Future<bool> dbDelete([List<dynamic>? parameters]) async {

  return await db("DELETE FROM passwords WHERE password = ?", parameters);
}
