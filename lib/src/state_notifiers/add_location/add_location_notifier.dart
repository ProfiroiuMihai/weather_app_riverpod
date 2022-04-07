import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/repository/hive_repository.dart';
import 'package:weather_app_test/src/state_notifiers/get_locations/get_location_notifier.dart';

part 'add_location_notifier.freezed.dart';

final addLocationProvider =
    StateNotifierProvider.autoDispose<AddLocationNotifier, NewLocationState>(
        (ref) {
  final _hiveRepositoryProvider = ref.watch(hiveRepositoryProvider);
  return AddLocationNotifier(hiveRepository: _hiveRepositoryProvider);
});

class AddLocationNotifier extends StateNotifier<NewLocationState> {
  final HiveRepository hiveRepository;

  AddLocationNotifier(
      {required this.hiveRepository, NewLocationState? state})
      : super(state ?? const NewLocationState.initial());

  Future<NewLocationState> addLocation(NewLocation addLocation) async {
    try {
      state = const NewLocationState.loading();
      List<NewLocation> locations = await hiveRepository.saveNewLocation(addLocation);
      return state =  NewLocationState.success(locations);
    } catch (e) {
      return state = NewLocationState.error("$e");
    }
  }

  Future<NewLocationState> changeLocationMap(LatLng latLng) async {
    return state = NewLocationState.changeLocation(latLng);
  }
}

@freezed
abstract class NewLocationState with _$NewLocationState {

  const factory NewLocationState.initial() = NewLocationStateInitail;

  const factory NewLocationState.loading() = NewLocationStateLoading;

  const factory NewLocationState.changeLocation(LatLng latLng) =
      NewLocationStateChange;

  const factory NewLocationState.success(List<NewLocation> locations) = NewLocationStateSuccess;

  const factory NewLocationState.error([String? message]) =
      NewLocationStateError;
}
