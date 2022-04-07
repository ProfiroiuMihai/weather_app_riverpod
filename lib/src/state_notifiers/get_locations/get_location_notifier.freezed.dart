// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_location_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetLocationsStateTearOff {
  const _$GetLocationsStateTearOff();

  GetLocationsStateInitial initial() {
    return const GetLocationsStateInitial();
  }

  GetLocationsStateLoading loading() {
    return const GetLocationsStateLoading();
  }

  GetLocationsStateSuccess success(List<NewLocation> locations) {
    return GetLocationsStateSuccess(
      locations,
    );
  }

  GetLocationsStateError error([String? message]) {
    return GetLocationsStateError(
      message,
    );
  }
}

/// @nodoc
const $GetLocationsState = _$GetLocationsStateTearOff();

/// @nodoc
mixin _$GetLocationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewLocation> locations) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationsStateInitial value) initial,
    required TResult Function(GetLocationsStateLoading value) loading,
    required TResult Function(GetLocationsStateSuccess value) success,
    required TResult Function(GetLocationsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationsStateCopyWith<$Res> {
  factory $GetLocationsStateCopyWith(
          GetLocationsState value, $Res Function(GetLocationsState) then) =
      _$GetLocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationsStateCopyWithImpl<$Res>
    implements $GetLocationsStateCopyWith<$Res> {
  _$GetLocationsStateCopyWithImpl(this._value, this._then);

  final GetLocationsState _value;
  // ignore: unused_field
  final $Res Function(GetLocationsState) _then;
}

/// @nodoc
abstract class $GetLocationsStateInitialCopyWith<$Res> {
  factory $GetLocationsStateInitialCopyWith(GetLocationsStateInitial value,
          $Res Function(GetLocationsStateInitial) then) =
      _$GetLocationsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationsStateInitialCopyWithImpl<$Res>
    extends _$GetLocationsStateCopyWithImpl<$Res>
    implements $GetLocationsStateInitialCopyWith<$Res> {
  _$GetLocationsStateInitialCopyWithImpl(GetLocationsStateInitial _value,
      $Res Function(GetLocationsStateInitial) _then)
      : super(_value, (v) => _then(v as GetLocationsStateInitial));

  @override
  GetLocationsStateInitial get _value =>
      super._value as GetLocationsStateInitial;
}

/// @nodoc

class _$GetLocationsStateInitial implements GetLocationsStateInitial {
  const _$GetLocationsStateInitial();

  @override
  String toString() {
    return 'GetLocationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetLocationsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewLocation> locations) success,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
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
    required TResult Function(GetLocationsStateInitial value) initial,
    required TResult Function(GetLocationsStateLoading value) loading,
    required TResult Function(GetLocationsStateSuccess value) success,
    required TResult Function(GetLocationsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetLocationsStateInitial implements GetLocationsState {
  const factory GetLocationsStateInitial() = _$GetLocationsStateInitial;
}

/// @nodoc
abstract class $GetLocationsStateLoadingCopyWith<$Res> {
  factory $GetLocationsStateLoadingCopyWith(GetLocationsStateLoading value,
          $Res Function(GetLocationsStateLoading) then) =
      _$GetLocationsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationsStateLoadingCopyWithImpl<$Res>
    extends _$GetLocationsStateCopyWithImpl<$Res>
    implements $GetLocationsStateLoadingCopyWith<$Res> {
  _$GetLocationsStateLoadingCopyWithImpl(GetLocationsStateLoading _value,
      $Res Function(GetLocationsStateLoading) _then)
      : super(_value, (v) => _then(v as GetLocationsStateLoading));

  @override
  GetLocationsStateLoading get _value =>
      super._value as GetLocationsStateLoading;
}

/// @nodoc

class _$GetLocationsStateLoading implements GetLocationsStateLoading {
  const _$GetLocationsStateLoading();

  @override
  String toString() {
    return 'GetLocationsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetLocationsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewLocation> locations) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
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
    required TResult Function(GetLocationsStateInitial value) initial,
    required TResult Function(GetLocationsStateLoading value) loading,
    required TResult Function(GetLocationsStateSuccess value) success,
    required TResult Function(GetLocationsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetLocationsStateLoading implements GetLocationsState {
  const factory GetLocationsStateLoading() = _$GetLocationsStateLoading;
}

/// @nodoc
abstract class $GetLocationsStateSuccessCopyWith<$Res> {
  factory $GetLocationsStateSuccessCopyWith(GetLocationsStateSuccess value,
          $Res Function(GetLocationsStateSuccess) then) =
      _$GetLocationsStateSuccessCopyWithImpl<$Res>;
  $Res call({List<NewLocation> locations});
}

/// @nodoc
class _$GetLocationsStateSuccessCopyWithImpl<$Res>
    extends _$GetLocationsStateCopyWithImpl<$Res>
    implements $GetLocationsStateSuccessCopyWith<$Res> {
  _$GetLocationsStateSuccessCopyWithImpl(GetLocationsStateSuccess _value,
      $Res Function(GetLocationsStateSuccess) _then)
      : super(_value, (v) => _then(v as GetLocationsStateSuccess));

  @override
  GetLocationsStateSuccess get _value =>
      super._value as GetLocationsStateSuccess;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(GetLocationsStateSuccess(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<NewLocation>,
    ));
  }
}

/// @nodoc

class _$GetLocationsStateSuccess implements GetLocationsStateSuccess {
  const _$GetLocationsStateSuccess(this.locations);

  @override
  final List<NewLocation> locations;

  @override
  String toString() {
    return 'GetLocationsState.success(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetLocationsStateSuccess &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  $GetLocationsStateSuccessCopyWith<GetLocationsStateSuccess> get copyWith =>
      _$GetLocationsStateSuccessCopyWithImpl<GetLocationsStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewLocation> locations) success,
    required TResult Function(String? message) error,
  }) {
    return success(locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
  }) {
    return success?.call(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationsStateInitial value) initial,
    required TResult Function(GetLocationsStateLoading value) loading,
    required TResult Function(GetLocationsStateSuccess value) success,
    required TResult Function(GetLocationsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetLocationsStateSuccess implements GetLocationsState {
  const factory GetLocationsStateSuccess(List<NewLocation> locations) =
      _$GetLocationsStateSuccess;

  List<NewLocation> get locations;
  @JsonKey(ignore: true)
  $GetLocationsStateSuccessCopyWith<GetLocationsStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationsStateErrorCopyWith<$Res> {
  factory $GetLocationsStateErrorCopyWith(GetLocationsStateError value,
          $Res Function(GetLocationsStateError) then) =
      _$GetLocationsStateErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$GetLocationsStateErrorCopyWithImpl<$Res>
    extends _$GetLocationsStateCopyWithImpl<$Res>
    implements $GetLocationsStateErrorCopyWith<$Res> {
  _$GetLocationsStateErrorCopyWithImpl(GetLocationsStateError _value,
      $Res Function(GetLocationsStateError) _then)
      : super(_value, (v) => _then(v as GetLocationsStateError));

  @override
  GetLocationsStateError get _value => super._value as GetLocationsStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(GetLocationsStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetLocationsStateError implements GetLocationsStateError {
  const _$GetLocationsStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'GetLocationsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetLocationsStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $GetLocationsStateErrorCopyWith<GetLocationsStateError> get copyWith =>
      _$GetLocationsStateErrorCopyWithImpl<GetLocationsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewLocation> locations) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewLocation> locations)? success,
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
    required TResult Function(GetLocationsStateInitial value) initial,
    required TResult Function(GetLocationsStateLoading value) loading,
    required TResult Function(GetLocationsStateSuccess value) success,
    required TResult Function(GetLocationsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationsStateInitial value)? initial,
    TResult Function(GetLocationsStateLoading value)? loading,
    TResult Function(GetLocationsStateSuccess value)? success,
    TResult Function(GetLocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLocationsStateError implements GetLocationsState {
  const factory GetLocationsStateError([String? message]) =
      _$GetLocationsStateError;

  String? get message;
  @JsonKey(ignore: true)
  $GetLocationsStateErrorCopyWith<GetLocationsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
