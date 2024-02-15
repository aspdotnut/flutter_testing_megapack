import 'package:pointycastle/pointycastle.dart';

import 'dart:convert';

String hashPassword(String password) {

  var digest = Digest("SHA-256");
  return base64Encode(digest.process(utf8.encode(password)));
}