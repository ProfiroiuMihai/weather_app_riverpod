// Import the test package and Counter class

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/repository/auth_repository.dart';
import 'package:weather_app_test/src/repository/hive_repository.dart';
import 'package:weather_app_test/src/state_notifiers/add_location/add_location_notifier.dart';
import 'package:weather_app_test/src/state_notifiers/authentication/sign_in_notifier.dart';
import 'package:weather_app_test/src/utils/form_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MockHiveRepository implements HiveRepository {
  @override
  List<NewLocation> getLocationsFromHive() {
    return [
      NewLocation(locationName: "locationName",
          startDate: DateTime.now(),
          locationLat: 123,
          locationLong: 132)
    ];
  }

  @override
  Future saveLocationsToHive(List<NewLocation> locationAdapterList) {
    return Future.value();
  }

  @override
  Future<List<NewLocation>> saveNewLocation(NewLocation addLocation) {
    return Future.value([
      NewLocation(locationName: "locationName",
          startDate: DateTime.now(),
          locationLat: 123,
          locationLong: 132)
    ]);
  }
}



void main() {
  late AddLocationNotifier sut;

  setUp(() {
    sut = AddLocationNotifier(hiveRepository:MockHiveRepository());
  });
}
