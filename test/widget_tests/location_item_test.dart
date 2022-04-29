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
import 'package:weather_app_test/src/model/response/weather_response.dart';
import 'package:weather_app_test/src/repository/hive_repository.dart';
import 'package:weather_app_test/src/screens/get_locations/location_screen.dart';
import 'package:weather_app_test/src/screens/get_locations/widgets/location_item.dart';
import 'package:weather_app_test/src/state_notifiers/get_locations/get_location_notifier.dart';
import 'package:weather_app_test/src/state_notifiers/get_weather/get_weather.dart';
import 'package:weather_app_test/src/utils/loading_indicator_widget.dart';
import 'package:weather_app_test/src/widgets/error_text_widget.dart';

class MockWeatherRepository extends Mock implements WeatherForecastRepository {}

void main() {
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
  });

  WeatherResponse weatherResponse =
      WeatherResponse(visibility: 0, main: Main(temp: 789), weather: [
    Weather(
      main: "rain",
    )
  ]);

  NewLocation newLocation = NewLocation(
      locationName: "locationName",
      startDate: DateTime.now(),
      locationLat: 123,
      locationLong: 132);

  List<NewLocation> newLocationsList = [newLocation, newLocation];

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
        home: ProviderScope(overrides: [
          weatherRepositoryProvider.overrideWithValue(mockWeatherRepository),
          getLocationsProvider2
              .overrideWithValue(AsyncValue.data(newLocationsList))
        ], child: LocationItem(newLocation: newLocation)));
  }

  whenReturnWeatherResponse(NewLocation location) {
    when(() => mockWeatherRepository.getWeatherForecast(location))
        .thenAnswer((_) async {
      return weatherResponse;
    });
  }

  whenReturnWeatherResponseAfter2Seconds(NewLocation location) {
    when(() => mockWeatherRepository.getWeatherForecast(location))
        .thenAnswer((_) async {
      await Future.delayed(Duration(seconds: 2));
      return weatherResponse;
    });
  }

  testWidgets(
    "title is displayed",
    (WidgetTester tester) async {
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

      expect(find.text("text0"), findsOneWidget);
    },
  );

  testWidgets(
    "show loading ",
    (WidgetTester tester) async {
      whenReturnWeatherResponseAfter2Seconds(newLocation);
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

      await tester.pump(Duration(seconds: 1));

      expect(find.byKey(Key("location_item_loading")), findsWidgets);

      await tester.pumpAndSettle();
    },
  );

  testWidgets(
    "show data",
    (WidgetTester tester) async {
      whenReturnWeatherResponse(newLocation);
      Widget widgetToPump = await createWidgetUnderTest();
      await tester.pumpWidget(widgetToPump);

      await tester.pump(Duration(seconds: 3));

      expect(find.text( "Temperature : ${weatherResponse.main?.temp} Weather : ${weatherResponse.weather?[0]?.main}"), findsWidgets);

      await tester.pumpAndSettle();
    },
  );
}
