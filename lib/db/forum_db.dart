import 'package:mysql1/mysql1.dart';

import 'dart:async';

Future addMember([List<dynamic>? parameters]) async {

  const query = "INSERT INTO members (email, password) VALUES (?, ?)";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    return result;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future getMember([List<dynamic>? parameters]) async {

  const query = "SELECT * FROM members WHERE email = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    return result;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future addPost([List<dynamic>? parameters]) async {

  const query = "INSERT INTO posts (member_id, title, content) VALUES (?, ?, ?)";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    return result;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future getPosts() async {

  const query = "SELECT posts.*, members.email FROM posts JOIN members ON posts.member_id = members.id";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query);
    List<Map<String, dynamic>> posts = [];

    for (var row in result) {

      Map<String, dynamic> post = {
        "id": row['id'],
        "title": row['title'],
        "content": row['content'],
        "member_id": row['member_id'],
        "email": row['email'],
      };
      posts.add(post);
    }
    return posts;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future updatePost([List<dynamic>? parameters]) async {

  const query = "UPDATE posts SET title = ?, content = ? WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    if (result.isNotEmpty || result.affectedRows! > 0) {

      return true;
    }
    return false;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future deletePost([List<dynamic>? parameters]) async {

  const query = "DELETE FROM posts WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    if (result.isNotEmpty || result.affectedRows! > 0) {

      return true;
    }
    return false;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future addComment([List<dynamic>? parameters]) async {

  const query = "INSERT INTO comments (member_id, post_id, content) VALUES (?, ?, ?)";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    return result;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future getComments([List<dynamic>? parameters]) async {

  const query = "SELECT * FROM comments WHERE post_id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);
    List<Map<String, dynamic>> posts = [];

    for (var row in result) {

      Map<String, dynamic> post = {
        "id": row['id'],
        "title": row['title'],
        "content": row['content'],
        "member_id": row['member_id'],
      };
      posts.add(post);
    }
    return posts;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future updateComment([List<dynamic>? parameters]) async {

  const query = "UPDATE comments SET content = ? WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    if (result.isNotEmpty || result.affectedRows! > 0) {

      return true;
    }
    return false;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}

Future deleteComment([List<dynamic>? parameters]) async {

  const query = "DELETE FROM comments WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = parameters == null ? await conn.query(query) : await conn.query(query, parameters);

    if (result.isNotEmpty || result.affectedRows! > 0) {

      return true;
    }
    return false;
  }
  catch (e) {

    print(e);
    return false;
  }
  finally {

    await conn.close();
  }
}
