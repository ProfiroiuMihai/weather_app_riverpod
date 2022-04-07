import 'package:hive/hive.dart';
part 'add_location.g.dart';

@HiveType(typeId: 1)
class NewLocation extends HiveObject{
  @HiveField(0)
  final String locationName;

  @HiveField(1)
  final double locationLat;

  @HiveField(2)
  final double locationLong;

  @HiveField(3)
  final DateTime startDate;

  NewLocation(
      {required this.locationName,
        required this.startDate,
      required this.locationLat,
      required this.locationLong});

  static NewLocation fromJson(json) {
    return NewLocation(
        startDate: json["startDate"],
        locationName: json["locationName"],
        locationLat: json["locationLat"],
        locationLong: json["locationLong"]);
  }
}
