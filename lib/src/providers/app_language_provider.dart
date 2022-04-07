import 'package:flutter/cupertino.dart';
import '../utils/secure_storage_util.dart';

class AppLanguageProvider extends ChangeNotifier {
  AppLanguageProvider();

  final String _secureStorageLocaleKey = 'locale_key';

  Locale? _appLocale;

  Locale get appLocale => _appLocale ?? const Locale("en", 'US');

  Future<void> init() async {
    String? languageCode =
    await SecureStorageUtil.getValue(_secureStorageLocaleKey);
    if (languageCode == null) {
      await setLanguage(const Locale('en', 'US'), save: true);
    } else {
      await setLanguage(Locale(languageCode), save: false);
    }
  }

  Future<void> setLanguage(Locale locale, {bool save = true}) async {
    _appLocale = locale;
    if (save) {
      await SecureStorageUtil.setValue(
          _secureStorageLocaleKey, locale.languageCode);
    }
    notifyListeners();
  }
}
