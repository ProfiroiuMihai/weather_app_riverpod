import 'package:hive/hive.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
part 'locations_wrapper.g.dart';

@HiveType(typeId: 2)
class LocationsDataHolder extends HiveObject {
  LocationsDataHolder({required this.locationsWrapper});

  @HiveField(0, defaultValue: [])
  List<NewLocation> locationsWrapper;
}