import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/model/wrappers/locations_wrapper.dart';

class HiveUtil {

  static const String locationBoxName = 'locationBoxName';
  static const String locationBoxKey = 'locationBoxKey';

  static Future<void> initialize() async {
    _registerTypeAdapters();
    await _initializeBoxes();
  }

  static void _registerTypeAdapters() {
    Hive.registerAdapter(LocationsDataHolderAdapter());
    Hive.registerAdapter(NewLocationAdapter());
  }

  static Future<void> _initializeBoxes() async {
    await Hive.openBox(locationBoxName);
  }
}