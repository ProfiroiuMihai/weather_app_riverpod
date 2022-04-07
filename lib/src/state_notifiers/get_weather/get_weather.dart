import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/model/response/weather_response.dart';
import 'package:weather_app_test/src/network/network_task.dart';
import 'package:weather_app_test/src/state_notifiers/network_task_notifier/network_task_notifier.dart';

final getWeatherForecast = StateNotifierProvider.autoDispose<
    GetWeatherNotifier<WeatherResponse>, NetworkTaskState<WeatherResponse>>((ref) {
  return GetWeatherNotifier();
});

class GetWeatherNotifier<T> extends StateNotifier<NetworkTaskState<T>> {
  GetWeatherNotifier({NetworkTaskState<T>? state})
      : super(state ?? const NetworkTaskState.initial());

  Future<NetworkTaskState<T>> getWeather(
      {required NewLocation location}) async {
    try {
      state = const NetworkTaskState.loading();
      var data = await NetworkTask.getWeatherForecast(location);
      return state = NetworkTaskState.success(data as T);
    } catch (e) {
      return state = NetworkTaskState.error("$e");
    }
  }
}
