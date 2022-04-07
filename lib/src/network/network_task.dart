import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/model/response/weather_response.dart';
import 'package:weather_app_test/src/utils/global_values.dart';
import 'network_response.dart';
import 'network_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NetworkTask {

  static String weatherAppId="eaa9a7f9f851c9016eae981179123109";

  static Map<String, String> _getHeaders() {
    return {"Content-Type": "application/json"};
  }


  static bool _isResponseSuccessful(http.Response response) {
    return response.statusCode >= 200 && response.statusCode < 300;
  }

  static NetworkResponse _handleNetworkResponse(http.Response response) {
    if (_isResponseSuccessful(response)) {
      return NetworkResponse.success(json.decode(response.body), null);
    }
    final Map<String, dynamic> _body = json.decode(response.body);
    return NetworkResponse.error(
      (_body['message']) ??
          AppLocalizations.of(GlobalValues.navKey.currentContext!)!
              .something_went_wrong,
    );
  }

  ///Generic get request for the application
  static Future<NetworkResponse> _getRequest(
      String url, {
        Map<String, String>? headers,
      }) async {
    try {
      final http.Response _response =
      await http.get(Uri.parse(url), headers: headers ?? _getHeaders());
      return _handleNetworkResponse(_response);
    } catch (e) {
      if (e is SocketException) {
        return NetworkResponse.error(
          AppLocalizations.of(GlobalValues.navKey.currentContext!)!
              .no_internet_connection,
        );
      }
      return NetworkResponse.error(e.toString());
    }
  }

  ///Generic post request for the application
  static Future<NetworkResponse> _postRequest(
      String url, {
        Map<String, String>? headers,
        Map<String, dynamic>? body,
      }) async {
    try {
      final http.Response _response = await http.post(
        Uri.parse(url),
        headers: headers ?? _getHeaders(),
        body: body != null ? json.encode(body) : null,
      );
      return _handleNetworkResponse(_response);
    } catch (e) {
      print('Error in post request: ${e.toString()}');
      if (e is SocketException) {
        return NetworkResponse.error(
          AppLocalizations.of(GlobalValues.navKey.currentContext!)!
              .no_internet_connection,
        );
      }
      return NetworkResponse.error(e.toString());
    }
  }

  static Future<WeatherResponse> getWeatherForecast(NewLocation location) async {
    Map<String, String> queryParams = {
      'lat': location.locationLat.toString(),
      'lon': location.locationLong.toString(),
      'appId':weatherAppId
    };

    String queryString = Uri(queryParameters: queryParams).query;

    final NetworkResponse response = await _getRequest(
      NetworkRoutes.weather+"?"+queryString,
    );
    if (response.isSuccessful) {
      return WeatherResponse.fromJson(response.data);
    } else {
      throw (response.message);
    }
  }

}