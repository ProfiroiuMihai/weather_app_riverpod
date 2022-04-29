import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/model/response/weather_response.dart';
import 'package:weather_app_test/src/screens/get_locations/widgets/timer_widget.dart';
import 'package:weather_app_test/src/state_notifiers/get_weather/get_weather.dart';
import 'package:weather_app_test/src/utils/loading_indicator_widget.dart';
import 'package:weather_app_test/src/widgets/error_text_widget.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class LocationItem extends ConsumerWidget {
  const LocationItem({required this.newLocation, Key? key})
      : super(key: key);
  final NewLocation newLocation;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(getWeatherForecastFuture(newLocation));
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.appPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppTextWidget(
              "text0",
              style: CustomTextStyles.text14_300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppTextWidget(
              newLocation.locationName,
              style: CustomTextStyles.text14_300,
            ),
          ),
          provider.when(
            loading: () => const LoadingIndicatorWidget(key: Key("location_item_loading"),),
            data: (WeatherResponse weather) {
              return _buildSuccess(weather);
            },
            error: (error, s) => ErrorTextWidget(error: error.toString()),
          ),
        ],
      ),
    );
  }

  Column _buildSuccess(WeatherResponse weatherResponse) {
    return Column(
      children: [





        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppTextWidget(
            "Lat : ${weatherResponse.coord?.lat} Long : ${weatherResponse.coord?.lon}",
            style: CustomTextStyles.text14_300,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppTextWidget(
            "Temperature : ${weatherResponse.main?.temp} Weather : ${weatherResponse.weather?[0]?.main}",
            style: CustomTextStyles.text14_300,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TimerWidget(
            dateTime: newLocation.startDate,
          ),
        ),
      ],
    );
  }
}
