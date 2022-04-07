// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_task_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkTaskStateTearOff {
  const _$NetworkTaskStateTearOff();

  NetworkTaskInitial<T> initial<T>() {
    return NetworkTaskInitial<T>();
  }

  NetworkTaskLoading<T> loading<T>() {
    return NetworkTaskLoading<T>();
  }

  NetworkTaskSuccess<T> success<T>(T data) {
    return NetworkTaskSuccess<T>(
      data,
    );
  }

  NetworkTaskError<T> error<T>([String? message]) {
    return NetworkTaskError<T>(
      message,
    );
  }
}

/// @nodoc
const $NetworkTaskState = _$NetworkTaskStateTearOff();

/// @nodoc
mixin _$NetworkTaskState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkTaskInitial<T> value) initial,
    required TResult Function(NetworkTaskLoading<T> value) loading,
    required TResult Function(NetworkTaskSuccess<T> value) success,
    required TResult Function(NetworkTaskError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkTaskStateCopyWith<T, $Res> {
  factory $NetworkTaskStateCopyWith(
          NetworkTaskState<T> value, $Res Function(NetworkTaskState<T>) then) =
      _$NetworkTaskStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NetworkTaskStateCopyWithImpl<T, $Res>
    implements $NetworkTaskStateCopyWith<T, $Res> {
  _$NetworkTaskStateCopyWithImpl(this._value, this._then);

  final NetworkTaskState<T> _value;
  // ignore: unused_field
  final $Res Function(NetworkTaskState<T>) _then;
}

/// @nodoc
abstract class $NetworkTaskInitialCopyWith<T, $Res> {
  factory $NetworkTaskInitialCopyWith(NetworkTaskInitial<T> value,
          $Res Function(NetworkTaskInitial<T>) then) =
      _$NetworkTaskInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NetworkTaskInitialCopyWithImpl<T, $Res>
    extends _$NetworkTaskStateCopyWithImpl<T, $Res>
    implements $NetworkTaskInitialCopyWith<T, $Res> {
  _$NetworkTaskInitialCopyWithImpl(
      NetworkTaskInitial<T> _value, $Res Function(NetworkTaskInitial<T>) _then)
      : super(_value, (v) => _then(v as NetworkTaskInitial<T>));

  @override
  NetworkTaskInitial<T> get _value => super._value as NetworkTaskInitial<T>;
}

/// @nodoc

class _$NetworkTaskInitial<T> implements NetworkTaskInitial<T> {
  const _$NetworkTaskInitial();

  @override
  String toString() {
    return 'NetworkTaskState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkTaskInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkTaskInitial<T> value) initial,
    required TResult Function(NetworkTaskLoading<T> value) loading,
    required TResult Function(NetworkTaskSuccess<T> value) success,
    required TResult Function(NetworkTaskError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NetworkTaskInitial<T> implements NetworkTaskState<T> {
  const factory NetworkTaskInitial() = _$NetworkTaskInitial<T>;
}

/// @nodoc
abstract class $NetworkTaskLoadingCopyWith<T, $Res> {
  factory $NetworkTaskLoadingCopyWith(NetworkTaskLoading<T> value,
          $Res Function(NetworkTaskLoading<T>) then) =
      _$NetworkTaskLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NetworkTaskLoadingCopyWithImpl<T, $Res>
    extends _$NetworkTaskStateCopyWithImpl<T, $Res>
    implements $NetworkTaskLoadingCopyWith<T, $Res> {
  _$NetworkTaskLoadingCopyWithImpl(
      NetworkTaskLoading<T> _value, $Res Function(NetworkTaskLoading<T>) _then)
      : super(_value, (v) => _then(v as NetworkTaskLoading<T>));

  @override
  NetworkTaskLoading<T> get _value => super._value as NetworkTaskLoading<T>;
}

/// @nodoc

class _$NetworkTaskLoading<T> implements NetworkTaskLoading<T> {
  const _$NetworkTaskLoading();

  @override
  String toString() {
    return 'NetworkTaskState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkTaskLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkTaskInitial<T> value) initial,
    required TResult Function(NetworkTaskLoading<T> value) loading,
    required TResult Function(NetworkTaskSuccess<T> value) success,
    required TResult Function(NetworkTaskError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NetworkTaskLoading<T> implements NetworkTaskState<T> {
  const factory NetworkTaskLoading() = _$NetworkTaskLoading<T>;
}

/// @nodoc
abstract class $NetworkTaskSuccessCopyWith<T, $Res> {
  factory $NetworkTaskSuccessCopyWith(NetworkTaskSuccess<T> value,
          $Res Function(NetworkTaskSuccess<T>) then) =
      _$NetworkTaskSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$NetworkTaskSuccessCopyWithImpl<T, $Res>
    extends _$NetworkTaskStateCopyWithImpl<T, $Res>
    implements $NetworkTaskSuccessCopyWith<T, $Res> {
  _$NetworkTaskSuccessCopyWithImpl(
      NetworkTaskSuccess<T> _value, $Res Function(NetworkTaskSuccess<T>) _then)
      : super(_value, (v) => _then(v as NetworkTaskSuccess<T>));

  @override
  NetworkTaskSuccess<T> get _value => super._value as NetworkTaskSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(NetworkTaskSuccess<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NetworkTaskSuccess<T> implements NetworkTaskSuccess<T> {
  const _$NetworkTaskSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'NetworkTaskState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkTaskSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $NetworkTaskSuccessCopyWith<T, NetworkTaskSuccess<T>> get copyWith =>
      _$NetworkTaskSuccessCopyWithImpl<T, NetworkTaskSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkTaskInitial<T> value) initial,
    required TResult Function(NetworkTaskLoading<T> value) loading,
    required TResult Function(NetworkTaskSuccess<T> value) success,
    required TResult Function(NetworkTaskError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NetworkTaskSuccess<T> implements NetworkTaskState<T> {
  const factory NetworkTaskSuccess(T data) = _$NetworkTaskSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  $NetworkTaskSuccessCopyWith<T, NetworkTaskSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkTaskErrorCopyWith<T, $Res> {
  factory $NetworkTaskErrorCopyWith(
          NetworkTaskError<T> value, $Res Function(NetworkTaskError<T>) then) =
      _$NetworkTaskErrorCopyWithImpl<T, $Res>;
  $Res call({String? message});
}

/// @nodoc
class _$NetworkTaskErrorCopyWithImpl<T, $Res>
    extends _$NetworkTaskStateCopyWithImpl<T, $Res>
    implements $NetworkTaskErrorCopyWith<T, $Res> {
  _$NetworkTaskErrorCopyWithImpl(
      NetworkTaskError<T> _value, $Res Function(NetworkTaskError<T>) _then)
      : super(_value, (v) => _then(v as NetworkTaskError<T>));

  @override
  NetworkTaskError<T> get _value => super._value as NetworkTaskError<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NetworkTaskError<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkTaskError<T> implements NetworkTaskError<T> {
  const _$NetworkTaskError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkTaskState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkTaskError<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $NetworkTaskErrorCopyWith<T, NetworkTaskError<T>> get copyWith =>
      _$NetworkTaskErrorCopyWithImpl<T, NetworkTaskError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkTaskInitial<T> value) initial,
    required TResult Function(NetworkTaskLoading<T> value) loading,
    required TResult Function(NetworkTaskSuccess<T> value) success,
    required TResult Function(NetworkTaskError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkTaskInitial<T> value)? initial,
    TResult Function(NetworkTaskLoading<T> value)? loading,
    TResult Function(NetworkTaskSuccess<T> value)? success,
    TResult Function(NetworkTaskError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NetworkTaskError<T> implements NetworkTaskState<T> {
  const factory NetworkTaskError([String? message]) = _$NetworkTaskError<T>;

  String? get message;
  @JsonKey(ignore: true)
  $NetworkTaskErrorCopyWith<T, NetworkTaskError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
