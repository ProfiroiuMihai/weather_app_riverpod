import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_test/src/model/request/add_location.dart';
import 'package:weather_app_test/src/repository/hive_repository.dart';

part 'get_location_notifier.freezed.dart';

final getLocationsProvider2 =
    FutureProvider.autoDispose<List<NewLocation>>((ref) {
  final _hiveRepositoryProvider = ref.watch(hiveRepositoryProvider);
  return _hiveRepositoryProvider.getLocationsFromHive();
});

final getLocationsProvider =
    StateNotifierProvider.autoDispose<GetLocationsNotifier, GetLocationsState>(
        (ref) {
  final _hiveRepositoryProvider = ref.watch(hiveRepositoryProvider);
  return GetLocationsNotifier(hiveRepository: _hiveRepositoryProvider);
});

class GetLocationsNotifier extends StateNotifier<GetLocationsState> {
  final HiveRepository hiveRepository;

  GetLocationsNotifier({required this.hiveRepository, GetLocationsState? state})
      : super(state ?? const GetLocationsState.initial());

  Future<GetLocationsState> getLocations() async {
    try {
      state = const GetLocationsState.loading();
      List<NewLocation> locations = hiveRepository.getLocationsFromHive();
      return state = GetLocationsState.success(locations);
    } catch (e) {
      return state = GetLocationsState.error("$e");
    }
  }
}

@freezed
abstract class GetLocationsState with _$GetLocationsState {
  const factory GetLocationsState.initial() = GetLocationsStateInitial;

  const factory GetLocationsState.loading() = GetLocationsStateLoading;

  const factory GetLocationsState.success(List<NewLocation> locations) =
      GetLocationsStateSuccess;

  const factory GetLocationsState.error([String? message]) =
      GetLocationsStateError;
}
