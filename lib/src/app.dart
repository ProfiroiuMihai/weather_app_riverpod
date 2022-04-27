import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_test/l10n/l10n.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/providers/app_language_provider.dart';
import 'package:weather_app_test/src/providers/theme_provider.dart';
import 'package:weather_app_test/src/screens/splash_screen.dart';
import 'package:weather_app_test/src/utils/global_values.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///load colors based on light or dark theme.
    AppColors.loadColors(context);

    return Consumer2<AppLanguageProvider, ThemeNotifier>(
      builder: (BuildContext context, AppLanguageProvider provider1,
          ThemeNotifier provider2, Widget? child) {
        return MaterialApp(
          navigatorKey: GlobalValues.navKey,
          debugShowCheckedModeBanner: false,
          title: 'Security App',
          themeMode:
              provider2.theme == 'dark' ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
            primaryColor: Colors.black,
            scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: L10n.supportedLocales,
          home: const SplashScreen(),
        );
      },
    );
  }
}
