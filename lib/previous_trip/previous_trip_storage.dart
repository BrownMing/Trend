import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PreviousTripStorage {
  final _secureStorage = const FlutterSecureStorage();

  Future<String?> readData(String key) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> saveData(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<void> deleteData(String key) async {
    await _secureStorage.delete(key: key);
  }

  Future<Map<String, String>> getAllData() async {
    return await _secureStorage.readAll();
  }

  Future<void> deleteAllData() async {
    await _secureStorage.deleteAll();
  }
}

