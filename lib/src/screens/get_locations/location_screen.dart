import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/screens/get_locations/widgets/location_item.dart';
import 'package:weather_app_test/src/state_notifiers/get_locations/get_location_notifier.dart';
import 'package:weather_app_test/src/utils/app_router.dart';
import 'package:weather_app_test/src/utils/loading_indicator_widget.dart';
import 'package:weather_app_test/src/widgets/button_widget.dart';
import 'package:weather_app_test/src/widgets/error_text_widget.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';


class LocationScreen extends ConsumerStatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<LocationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(getLocationsProvider2);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Column(
            children: [
              AppTextWidget(
                "My locations",
                style: CustomTextStyles.text22_500,
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: AppButtonWidget(
                    buttonColor: AppColors.buttonPrimaryColor,
                    label: AppLocalizations.of(context)!.new_location,
                    onPressed: () => AppRouter.showAddLocationScreen(context),
                  )),
              Expanded(
                child: provider.when(
                  loading: () => const LoadingIndicatorWidget(),
                  data: (List<NewLocation> locations) => ListView.builder(
                      itemCount: locations.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return LocationItem(
                          newLocation: locations[index],
                        );
                      }),
                  error: (error, s) {
                    return ErrorTextWidget(error: error.toString());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
