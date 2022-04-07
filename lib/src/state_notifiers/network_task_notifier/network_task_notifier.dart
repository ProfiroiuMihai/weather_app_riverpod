import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_task_notifier.freezed.dart';

///A generic class for performing any api calls
///We won't be using it now, since the functionality of this class is found
///to be similar to futureProvider that is provided by default in riverpod.
///This class can be used for fetching data mainly.
///
///The drawback that this implementation has is:
///We need to define the function we would like to compute at the time of creation
///of the task notifier class, and in scenarios like signing in, it would be impossible
/// to define the function since the values like username and password would
/// be unknown at the initialization of the page.
@freezed
abstract class NetworkTaskState<T> with _$NetworkTaskState {
  const factory NetworkTaskState.initial() = NetworkTaskInitial;

  const factory NetworkTaskState.loading() = NetworkTaskLoading;

  const factory NetworkTaskState.success(T data) = NetworkTaskSuccess;

  const factory NetworkTaskState.error([String? message]) =
      NetworkTaskError;
}

class NetworkTaskNotifier<T> extends StateNotifier<NetworkTaskState<T>> {
  final Future<T> Function() networkTask;

  NetworkTaskNotifier({
    NetworkTaskState<T>? state,
    required this.networkTask,
    bool autoInitialize = true,
  }) : super(state ?? const NetworkTaskState.initial()) {
    if (autoInitialize) {
      initialize();
    }
  }

  Future<NetworkTaskState<T>> initialize() async {
    try {
      state = const NetworkTaskState.loading();
      T data = await networkTask.call();
      if (data != null) {
        return state = NetworkTaskState.success(data);
      }
      return state = const NetworkTaskState.error('Error occurred!');
    } catch (e) {
      return state = NetworkTaskState.error("$e");
    }
  }
}
