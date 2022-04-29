
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app_test/l10n/l10n.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/repository/hive_repository.dart';
import 'package:weather_app_test/src/screens/get_locations/location_screen.dart';
import 'package:weather_app_test/src/state_notifiers/get_locations/get_location_notifier.dart';
import 'package:weather_app_test/src/utils/loading_indicator_widget.dart';
import 'package:weather_app_test/src/widgets/error_text_widget.dart';

void main() {


  List<NewLocation> newLocationsList = [
    NewLocation(
        locationName: "locationName",
        startDate: DateTime.now(),
        locationLat: 123,
        locationLong: 132),
    NewLocation(
        locationName: "locationName2",
        startDate: DateTime.now(),
        locationLat: 123,
        locationLong: 132)
  ];


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
        home:
        ProviderScope(overrides: [
          getLocationsProvider2.overrideWithValue(AsyncValue.data(newLocationsList))
        ], child: const LocationScreen()));
  }

  testWidgets(
    "title is displayed",
        (WidgetTester tester) async {
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

      expect(find.text("My locations"), findsOneWidget);
    },
  );

  testWidgets(
    "locations are displayed",
        (WidgetTester tester) async {
      // whenReturnNewLocationList();
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

      await tester.pump();

      expect(find.byType(ListView), findsOneWidget);

      for (final location in newLocationsList) {
        expect(find.text(location.locationName), findsOneWidget);
      }

      await tester.pumpAndSettle();
    },
  );
}
