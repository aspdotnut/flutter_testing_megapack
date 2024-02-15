import 'package:mysql1/mysql1.dart';

import 'dart:async';

Future db(String query, int operation, [List<dynamic>? parameters]) async {


  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'todo'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    switch (operation) {
      case 1:
      case 3:
      case 4:
        return result.affectedRows! > 0;
      case 2:
        return result.isNotEmpty ? result : [];
      default:
        return false;
    }
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future<bool> dbInsert([List<dynamic>? parameters]) async {

  return await db("INSERT INTO tasks (task) VALUES (?)", 1, parameters);
}

Future<List<Map<String, dynamic>>> dbSelect() async {

  var result = await db("SELECT * FROM tasks", 2);
  List<Map<String, dynamic>> tasks = [];

  for (var row in result) {

    Map<String, dynamic> task = {
      "id": row['id'],
      "task": row['task'],
      "done": row['done']
    };
    tasks.add(task);
  }
  return tasks;
}

Future<bool> dbUpdate([List<dynamic>? parameters]) async {

  return await db("UPDATE tasks SET done = ? WHERE id = ?", 3, parameters);
}

Future<bool> dbDelete([List<dynamic>? parameters]) async {

  return await db("DELETE FROM tasks WHERE id = ?", 4, parameters);
}
