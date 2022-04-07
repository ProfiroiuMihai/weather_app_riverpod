import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:weather_app_test/src/configs/app_colors.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/state_notifiers/add_location/add_location_notifier.dart';
import 'package:weather_app_test/src/state_notifiers/get_locations/get_location_notifier.dart';
import 'package:weather_app_test/src/utils/app_router.dart';
import 'package:weather_app_test/src/widgets/loading_button_widget.dart';
import 'package:weather_app_test/src/widgets/text_input_field_widget.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class AddLocationScreen extends ConsumerWidget {
  AddLocationScreen({Key? key}) : super(key: key);

  final TextEditingController _nameLocationController = TextEditingController();
  final FocusNode _nameLocationFocusNode = FocusNode();

  final RoundedLoadingButtonController _addLocationButtonController =
      RoundedLoadingButtonController();

  final RoundedLoadingButtonController _getLocationButtonController =
      RoundedLoadingButtonController();

  final Completer<GoogleMapController> _mapController = Completer();

  final double _defaultLong = 23.546473;
  final double _defaultLat = 46.7834818;
  final List<Marker> _markers =
      List.of([const Marker(markerId: MarkerId("center"))]);
  String coordinates = "";

  Future<void> addLocation(BuildContext context, WidgetRef ref) async {
    await ref.read(addLocationProvider.notifier).addLocation(NewLocation(
        startDate: DateTime.now(),
        locationName: _nameLocationController.text,
        locationLong: _defaultLong,
        locationLat: _defaultLat));
    _nameLocationController.clear();
    _addLocationButtonController.success();
    AppRouter.pop(context);
    ref.refresh(getLocationsProvider2);
  }

  Future<void> changeLocation(WidgetRef ref, LatLng latLng) async {
    _markers.first = _markers.first.copyWith(positionParam: latLng);
    ref.read(addLocationProvider.notifier).changeLocationMap(latLng);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          _buildGoogleMap(ref: ref),
          _buildNewLocationWidget(context: context, ref: ref),
          _buildBackButton(context)
        ],
      ),
    ));
  }

  IconButton _buildBackButton(BuildContext context) {
    return IconButton(
        color: AppColors.dividerColor,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          AppRouter.pop(context);
        });
  }

  Widget _buildGoogleMap({required WidgetRef ref}) {
    return ref.watch(addLocationProvider).maybeWhen(
        changeLocation: (LatLng latLang) {
      return googleMapWidget(ref);
    }, orElse: () {
      return googleMapWidget(ref);
    });
  }

  GoogleMap googleMapWidget(WidgetRef ref) {
    return GoogleMap(
      mapType: MapType.terrain,
      markers: _markers.toSet(),
      initialCameraPosition: CameraPosition(
        target: LatLng(_defaultLat, _defaultLong),
        zoom: 10,
      ),
      onMapCreated: (GoogleMapController controller) {
        _mapController.complete(controller);
      },
      onCameraMove: (position) {
        changeLocation(ref, position.target);
        _addLocationButtonController.reset();
      },
      myLocationEnabled: true,
    );
  }

  Widget _buildNewLocationWidget(
      {required BuildContext context, required WidgetRef ref}) {
    final provider = ref.watch(addLocationProvider);

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: AppTextWidget(
                    AppLocalizations.of(context)!.new_location,
                    style: CustomTextStyles.text22_500,
                  ),
                ),
                TextInputFieldWidget(
                  hintText: AppLocalizations.of(context)!.name,
                  inputAction: TextInputAction.done,
                  inputType: TextInputType.text,
                  focusNode: _nameLocationFocusNode,
                  controller: _nameLocationController,
                  onFieldSubmitted: (string) {
                    _nameLocationFocusNode.unfocus();
                    return '$string';
                  },
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 8),
                    child: provider.maybeWhen(changeLocation: (LatLng latLang) {
                      return AppTextWidget(
                          "${latLang.longitude}N ${latLang.latitude}E");
                    }, orElse: () {
                      return Container();
                    })),
                Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: LoadingButton(
                      controller: _addLocationButtonController,
                      label: AppLocalizations.of(context)!.add,
                      onPressed: () {
                        addLocation(context, ref);
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: LoadingButton(
                      controller: _getLocationButtonController,
                      buttonColor: AppColors.buttonSecondaryColor,
                      label: AppLocalizations.of(context)!.use_my_location,
                      onPressed: () {},
                    )),
              ])),
    );
  }
}
