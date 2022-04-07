import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app_test/src/services/location_service.dart';
import 'package:weather_app_test/src/utils/constants.dart';

final mapCurrentLocationRepository =
    ChangeNotifierProvider.autoDispose<MapCurrentLocationViewModel>(
        (ref) => MapCurrentLocationViewModel(ref));

class MapCurrentLocationViewModel extends ChangeNotifier {
  MapCurrentLocationViewModel(this.ref);

  Ref ref;

  Position? currentLocation;
  late CameraPosition currentLocationCameraPosition;
  late Marker currentLocationMarker;

  Future<bool> enableLocationAndRequestPermission() async {
    bool locationServiceEnabled =
        await LocationService.instance.enableLocationService();
    if (locationServiceEnabled) {
      return await requestLocationPermission();
    } else {
      return false;
    }
  }

  Future<bool> requestLocationPermission() async {
    final _inUse = await LocationService.instance.requestWhileInUsePermission();
    if (Platform.isAndroid) {
      final _always = await LocationService.instance.requestAlwaysPermission();
      return _inUse && _always;
    } else {
      return _inUse;
    }
  }

  getCurrentLocation() async {
    bool isLocationPermissionGranted =
        await enableLocationAndRequestPermission();
    if (isLocationPermissionGranted) {
      currentLocation = await LocationService.instance.getLocation();
    }
  }

  getCurrentLocationCameraPosition() {
    currentLocationCameraPosition = CameraPosition(
      target: LatLng(
        currentLocation?.latitude ?? defaultLatLng.latitude,
        currentLocation?.longitude ?? defaultLatLng.longitude,
      ),
      zoom: defaultMapZoom,
    );
  }
}
