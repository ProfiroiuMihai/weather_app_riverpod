import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/utils/global_values.dart';

import '../utils/secure_storage_util.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,

);


ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,


);



class ThemeNotifier with ChangeNotifier {
  String _theme = "light";

  ThemeNotifier() {
    _loadThemeFromLocalStorage();
  }

  String get theme => _theme;

  bool isDark() {
    return _theme == 'dark' ? true : false;
  }

  ThemeData getTheme() {
    SystemChrome.setSystemUIOverlayStyle(
      _theme == 'light'
          ? SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle.light,
    );
    // AppColors.loadColors(GlobalValues.navKey.currentContext!);
    return _theme == 'light' ? lightTheme : darkTheme;
  }

  _loadThemeFromLocalStorage() async {
    _theme = await SecureStorageUtil.getTheme(SecureStorageUtil.theme);
    notifyListeners();
  }

  toggleTheme() async {
    String newTheme = _theme == 'light' ? "dark" : "light";
    await SecureStorageUtil.setValue(
      SecureStorageUtil.theme,
      newTheme,
    );
    SystemChrome.setSystemUIOverlayStyle(
      newTheme == 'light'
          ? SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle.light,
    );
    _theme = newTheme;
    AppColors.loadColors(GlobalValues.navKey.currentContext!);
    notifyListeners();
  }
}
