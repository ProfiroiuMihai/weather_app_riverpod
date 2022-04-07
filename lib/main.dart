import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart' as providerImport;
import 'package:weather_app_test/src/app.dart';
import 'package:weather_app_test/src/providers/app_language_provider.dart';
import 'package:weather_app_test/src/providers/theme_provider.dart';
import 'package:weather_app_test/src/utils/hive_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await HiveUtil.initialize();
  await Firebase.initializeApp();
  final AppLanguageProvider _appLanguageProvider = AppLanguageProvider();
  final ThemeNotifier _themeNotifier = ThemeNotifier();
  await _appLanguageProvider.init();
  runApp(
    providerImport.MultiProvider(
      providers: [
        providerImport.ChangeNotifierProvider<AppLanguageProvider>.value(
          value: _appLanguageProvider,
        ),
        providerImport.ChangeNotifierProvider<ThemeNotifier>.value(
          value: _themeNotifier,
        ),
      ],
      child: const ProviderScope(child: MyApp()),
    ),
  );
}
