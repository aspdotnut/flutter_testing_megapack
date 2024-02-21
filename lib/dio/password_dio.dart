import 'package:dio/dio.dart';

import 'dart:async';
import 'dart:convert';

Future getPassword(String passwrd) async {
  try {
    final dio = Dio();
    print(passwrd);
    final data = jsonEncode(passwrd);
    final response = await dio.post(
      'http://localhost:5181/password', data: data,);
    print(response.data);

    return true;
  }
  catch(e) {
    print(e);
    return false;
  }
}

Future addPassword(String password) async {

  final dio = Dio();
  final data = jsonEncode(password);
  final response = await dio.post('http://localhost:5181/password/add', data: data,);
  if (response.statusCode == 200) {

    return true;
  }
  return false;
}