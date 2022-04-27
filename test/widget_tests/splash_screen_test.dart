// Import the test package and Counter class

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app_test/l10n/l10n.dart';
import 'package:weather_app_test/src/repository/hive_repository.dart';
import 'package:weather_app_test/src/screens/splash_screen.dart';

class MockHiveRepository extends Mock implements HiveRepository {}

void main() {
  Future<Widget> createWidgetUnderTest() async {
    return MaterialApp(
        title: 'News App',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: L10n.supportedLocales,
        home: SplashScreen());
  }

  testWidgets(
    "title is diplayed",
    (WidgetTester tester) async {
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

      expect(find.text("Maybe later"), findsOneWidget);
    },
  );

  testWidgets(
    "logo is diplayed",
    (WidgetTester tester) async {
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

      expect(find.image(AssetImage("assets/logo.png")), findsOneWidget);
    },
  );
}
