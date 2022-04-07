import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageUtil {
  //It denotes whether Starting Walk Through Screen was seen and completed by user
  static const String isWalkThroughCompleted = 'is_walkthrough_completed';

  static const String theme = 'theme';

  static const _storage = FlutterSecureStorage();

  //Check and get if Theme saved, Otherwise add light theme as default
  static Future<String> getTheme(String key) async {
    const _defaultTheme = "light";
    const storage = FlutterSecureStorage();
    final String? val = await storage.read(key: key);
    if (val == null) {
      await storage.write(key: key, value: _defaultTheme);
      return _defaultTheme;
    } else {
      return val;
    }
  }

  static Future<bool> getIsWalkThroughSectionCompleted() async {
    final String? val = await _storage.read(key: isWalkThroughCompleted);
    if (val == null) {
      return false;
    } else {
      return val == 'true';
    }
  }

  static Future<String?>? getValue(String key) async {
    final String? val = await _storage.read(key: key);
    return val;
  }

  static setValue(String key, String val) async {
    await _storage.write(key: key, value: val);
  }

  static deleteValue(String key) async {
    await _storage.delete(key: key);
  }
}
