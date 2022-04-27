// Import the test package and Counter class

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

class MockHiveRepository extends Mock implements HiveRepository {}

void main() {
  late MockHiveRepository mockHiveRepository;
  late Provider mockProvider;

  setUp(() {
    mockHiveRepository = MockHiveRepository();
    mockProvider = Provider((ref) => MockHiveRepository());
  });

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

  whenReturnNewLocationList() {
    when(() => mockHiveRepository.getLocationsFromHive())
        .thenAnswer((_) => newLocationsList);
  }


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
        home: ProviderScope(
            overrides:[mockProvider],
            child: LocationScreen()));
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
          whenReturnNewLocationList();
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

    for(final location in newLocationsList){
      expect(find.text(location.locationName),findsOneWidget);
    }
    },
  );


}
