import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/utils/hive_util.dart';

final hiveRepositoryProvider = Provider((ref) => HiveRepository());

class HiveRepository {

  Future<List<NewLocation>> saveNewLocation(NewLocation addLocation) async {
    List<NewLocation> locations =  getLocationsFromHive();
    locations.add(addLocation);
    await saveLocationsToHive(locations);
    return locations;
  }

  Future saveLocationsToHive(
      List<NewLocation> locationAdapterList) async {
    final Box hiveBox = Hive.box<dynamic>(HiveUtil.locationBoxName);
    await hiveBox.put(HiveUtil.locationBoxKey, locationAdapterList);
  }

  List<NewLocation>  getLocationsFromHive()  {
    try {
      final Box hiveBox = Hive.box<dynamic>(HiveUtil.locationBoxName);
      final List<NewLocation> _holder =
          hiveBox.get(HiveUtil.locationBoxKey);
      return _holder;
    } catch (e) {
      return <NewLocation>[];
    }
  }
}
