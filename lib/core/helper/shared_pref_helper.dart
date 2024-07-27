import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedPrefHelper {
  static setSecuredString(String key, String value) async {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.write(key: key, value: value);
  }

  static getSecuredString(String key) async {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    return await storage.read(key: key);
  }
}
