import 'dart:convert';

class SecureStringDecodingService {
  static String d(String s) {
    return utf8.decode(base64.decode(s));
  }
}

