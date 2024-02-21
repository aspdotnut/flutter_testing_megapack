import 'package:dio/dio.dart';

import 'dart:async';
import 'dart:convert';

Future getTodoItems() async {

  final dio = Dio();
  final response = await dio.get('http://localhost:5208/todo');
  return response.data;
}

Future addTodoItem(String name) async {

  final dio = Dio();
  final data = jsonEncode(name);
  final response = await dio.post('http://localhost:5208/todo', data: data,);
  return response.data;
}

Future updateTodoItem(int id) async {

  final dio = Dio();
  final response = await dio.put('http://localhost:5208/todo/$id', data: {"id": id});
  return response.data;
}

Future deleteTodoItem(int id) async {

  final dio = Dio();
  final response = await dio.delete('http://localhost:5208/todo/$id', data: {"id": id});
  return response.data;
}