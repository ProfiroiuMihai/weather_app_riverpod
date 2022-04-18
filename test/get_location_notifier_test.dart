// Import the test package and Counter class

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/repository/hive_repository.dart';
import 'package:weather_app_test/src/state_notifiers/get_locations/get_location_notifier.dart';

class MockHiveRepository extends Mock implements HiveRepository {}

void main() {
  late GetLocationsNotifier sut;
  late MockHiveRepository mockHiveRepository;

  setUp(() {
    mockHiveRepository = MockHiveRepository();
    sut = GetLocationsNotifier(hiveRepository: mockHiveRepository);
  });

  test(
    "Test initial states",
    () {
      expect(sut.state, GetLocationsState.initial());
    },
  );

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

  whenReturn2NewLocation() {
    when(() => mockHiveRepository.getLocationsFromHive())
        .thenAnswer((_) => newLocationsList);
  }

  test(
    "getLocations count",
    () async {
      whenReturn2NewLocation();
      await sut.getLocations();
      verify(() => mockHiveRepository.getLocationsFromHive()).called(1);
    },
  );

  test(
    "getLocations Success",
    () async {
      whenReturn2NewLocation();
      sut.getLocations();
      expect(sut.state, GetLocationsState.success(newLocationsList));
    },
  );
}
