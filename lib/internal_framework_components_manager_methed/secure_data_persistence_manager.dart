import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureDataPersistenceManager {
  final _s = const FlutterSecureStorage();

  Future<String?> s1RetrieveValue(String k) async {
    return await _s.read(key: k);
  }

  Future<void> s2StoreValue(String k, String v) async {
    await _s.write(key: k, value: v);
  }

  Future<void> s3RemoveValue(String k) async {
    await _s.delete(key: k);
  }

  Future<Map<String, String>> s4RetrieveAll() async {
    return await _s.readAll();
  }

  Future<void> s5RemoveAll() async {
    await _s.deleteAll();
  }
}
