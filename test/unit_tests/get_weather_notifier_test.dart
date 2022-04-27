// Import the test package and Counter class

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/state_notifiers/get_weather/get_weather.dart';
import 'package:weather_app_test/src/state_notifiers/network_task_notifier/network_task_notifier.dart';

void main() {
  late GetWeatherNotifier sut;
  NewLocation location = NewLocation(
      locationName: "locationName",
      startDate: DateTime.now(),
      locationLat: 123,
      locationLong: 123);

  setUp(() {
    sut = GetWeatherNotifier();
  });

  test(
    "Test initial states",
    () {
      expect(sut.state, NetworkTaskState<Never>.initial());
    },
  );

  test(
    "getWeather",
    () async {
      Future future = sut.getWeather(location: location);
      expect(sut.state, NetworkTaskState<Never>.loading());
      future.then(
          (value) => expect(sut.state, NetworkTaskState.success([location])));
    },
  );
}
