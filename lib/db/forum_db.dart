import 'package:mysql1/mysql1.dart';

import 'dart:async';

Future addMember(String name, String hashedPassword) async {

  const query = "INSERT INTO members (name, password) "
      "VALUES (?, ?)";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [name, hashedPassword]);

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

Future getMember(String name) async {

  const query = "SELECT * "
      "FROM members "
      "WHERE name = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [name]);
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

Future authMember(String name, String hashedPassword) async {

  const query = "SELECT * "
      "FROM members "
      "WHERE name = ? "
      "AND password = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [name, hashedPassword]);
    if (result.isNotEmpty || result.affectedRows! > 0) {

      return result.first['id'];
    }
    return 0;
  }
  catch (e) {

    print(e);
    return 0;
  }
  finally {

    await conn.close();
  }
}

Future addPost(int memberId, String title, String content) async {

  const query = "INSERT INTO posts (member_id, title, content) "
      "VALUES (?, ?, ?)";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [memberId, title, content]);

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

Future getPosts() async {

  const query = "SELECT posts.*, members.name "
      "FROM posts "
      "JOIN members ON posts.member_id = members.id "
      "ORDER BY posts.created_at DESC";

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
        "name": row['name'],
        "created_at": row['created_at'],
        "is_edited": row['is_edited'] == 1 ? "(edited)" : "",
      };
      posts.add(post);
    }
    return posts;
  }
  catch (e) {

    print(e);
    return [];
  }
  finally {

    await conn.close();
  }
}

Future getPost(int id) async {

  const query = "SELECT * "
      "FROM posts "
      "WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [id]);
    List<Map<String, dynamic>> posts = [];

    for (var row in result) {

      Map<String, dynamic> post = {
        "title": row['title'],
        "content": row['content'],
      };
      posts.add(post);
    }
    return posts;
  }
  catch (e) {

    print(e);
    return [];
  }
  finally {

    await conn.close();
  }
}

Future updatePost(String title, String content, int id) async {

  const query = "UPDATE posts "
      "SET title = ?, content = ?, is_edited = 1 "
      "WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [title, content, id]);

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

Future deletePost(int id) async {

  const query = "DELETE FROM posts "
      "WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [id]);

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

Future addComment(int memberId, int postId, String content) async {

  const query = "INSERT INTO comments (member_id, post_id, content) "
      "VALUES (?, ?, ?)";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [memberId, postId, content]);

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

Future getComments() async {

  const query = "SELECT comments.*, members.name "
      "FROM comments "
      "JOIN members ON comments.member_id = members.id "
      "ORDER BY comments.created_at ASC";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query);
    List<Map<String, dynamic>> comments = [];

    for (var row in result) {

      Map<String, dynamic> comment = {
        "id": row['id'],
        "content": row['content'],
        "member_id": row['member_id'],
        "name": row['name'],
        "post_id": row['post_id'],
        "created_at": row['created_at'],
        "is_edited": row['is_edited'] == 1 ? "(edited)" : "",
      };
      comments.add(comment);
    }
    return comments;
  }
  catch (e) {

    print(e);
    return [];
  }
  finally {

    await conn.close();
  }
}

Future getComment(int id) async {

  const query = "SELECT * "
      "FROM comments "
      "WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [id]);
    List<Map<String, dynamic>> comments = [];

    for (var row in result) {

      Map<String, dynamic> comment = {
        "content": row['content'],
      };
      comments.add(comment);
    }
    return comments;
  }
  catch (e) {

    print(e);
    return [];
  }
  finally {

    await conn.close();
  }
}

Future updateComment(String content, int commentId) async {

  const query = "UPDATE comments "
      "SET content = ?, is_edited = 1 "
      "WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [content, commentId]);

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

Future deleteComment(int id) async {

  const query = "DELETE FROM comments "
      "WHERE id = ?";

  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'forum'
  ));

  try {

    var result = await conn.query(query, [id]);

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
