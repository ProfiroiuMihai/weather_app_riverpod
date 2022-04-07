

import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng defaultLatLng = LatLng(46.7834818,23.546473);
const double _defaultLong = 23.546473;
const double _defaultLat = 46.7834818;
const googleMapAPIKey = 'enterYouGoogleMapKey';
const double defaultMapZoom = 17.0;
const double mediumMapZoom = 14.0;

const int getLocationTimeLimit = 20; //in seconds
const int locationChangeInterval = 5; //in seconds
const int locationChangeDistance = 20; //in meters
const double locationArriveDistance = 200.0; //in meters
