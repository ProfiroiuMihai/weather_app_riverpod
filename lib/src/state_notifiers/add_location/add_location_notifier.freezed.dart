// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_location_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewLocationStateTearOff {
  const _$NewLocationStateTearOff();

  NewLocationStateInitail initial() {
    return const NewLocationStateInitail();
  }

  NewLocationStateLoading loading() {
    return const NewLocationStateLoading();
  }

  NewLocationStateChange changeLocation(LatLng latLng) {
    return NewLocationStateChange(
      latLng,
    );
  }

  NewLocationStateSuccess success(List<NewLocation> locations) {
    return NewLocationStateSuccess(
      locations,
    );
  }

  NewLocationStateError error([String? message]) {
    return NewLocationStateError(
      message,
    );
  }
}

/// @nodoc
const $NewLocationState = _$NewLocationStateTearOff();

/// @nodoc
mixin _$NewLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LatLng latLng) changeLocation,
    required TResult Function(List<NewLocation> locations) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng latLng)? changeLocation,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng latLng)? changeLocation,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewLocationStateInitail value) initial,
    required TResult Function(NewLocationStateLoading value) loading,
    required TResult Function(NewLocationStateChange value) changeLocation,
    required TResult Function(NewLocationStateSuccess value) success,
    required TResult Function(NewLocationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewLocationStateCopyWith<$Res> {
  factory $NewLocationStateCopyWith(
          NewLocationState value, $Res Function(NewLocationState) then) =
      _$NewLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewLocationStateCopyWithImpl<$Res>
    implements $NewLocationStateCopyWith<$Res> {
  _$NewLocationStateCopyWithImpl(this._value, this._then);

  final NewLocationState _value;
  // ignore: unused_field
  final $Res Function(NewLocationState) _then;
}

/// @nodoc
abstract class $NewLocationStateInitailCopyWith<$Res> {
  factory $NewLocationStateInitailCopyWith(NewLocationStateInitail value,
          $Res Function(NewLocationStateInitail) then) =
      _$NewLocationStateInitailCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewLocationStateInitailCopyWithImpl<$Res>
    extends _$NewLocationStateCopyWithImpl<$Res>
    implements $NewLocationStateInitailCopyWith<$Res> {
  _$NewLocationStateInitailCopyWithImpl(NewLocationStateInitail _value,
      $Res Function(NewLocationStateInitail) _then)
      : super(_value, (v) => _then(v as NewLocationStateInitail));

  @override
  NewLocationStateInitail get _value => super._value as NewLocationStateInitail;
}

/// @nodoc

class _$NewLocationStateInitail implements NewLocationStateInitail {
  const _$NewLocationStateInitail();

  @override
  String toString() {
    return 'NewLocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewLocationStateInitail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LatLng latLng) changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    required TResult Function(NewLocationStateInitail value) initial,
    required TResult Function(NewLocationStateLoading value) loading,
    required TResult Function(NewLocationStateChange value) changeLocation,
    required TResult Function(NewLocationStateSuccess value) success,
    required TResult Function(NewLocationStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewLocationStateInitail implements NewLocationState {
  const factory NewLocationStateInitail() = _$NewLocationStateInitail;
}

/// @nodoc
abstract class $NewLocationStateLoadingCopyWith<$Res> {
  factory $NewLocationStateLoadingCopyWith(NewLocationStateLoading value,
          $Res Function(NewLocationStateLoading) then) =
      _$NewLocationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewLocationStateLoadingCopyWithImpl<$Res>
    extends _$NewLocationStateCopyWithImpl<$Res>
    implements $NewLocationStateLoadingCopyWith<$Res> {
  _$NewLocationStateLoadingCopyWithImpl(NewLocationStateLoading _value,
      $Res Function(NewLocationStateLoading) _then)
      : super(_value, (v) => _then(v as NewLocationStateLoading));

  @override
  NewLocationStateLoading get _value => super._value as NewLocationStateLoading;
}

/// @nodoc

class _$NewLocationStateLoading implements NewLocationStateLoading {
  const _$NewLocationStateLoading();

  @override
  String toString() {
    return 'NewLocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewLocationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LatLng latLng) changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    required TResult Function(NewLocationStateInitail value) initial,
    required TResult Function(NewLocationStateLoading value) loading,
    required TResult Function(NewLocationStateChange value) changeLocation,
    required TResult Function(NewLocationStateSuccess value) success,
    required TResult Function(NewLocationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewLocationStateLoading implements NewLocationState {
  const factory NewLocationStateLoading() = _$NewLocationStateLoading;
}

/// @nodoc
abstract class $NewLocationStateChangeCopyWith<$Res> {
  factory $NewLocationStateChangeCopyWith(NewLocationStateChange value,
          $Res Function(NewLocationStateChange) then) =
      _$NewLocationStateChangeCopyWithImpl<$Res>;
  $Res call({LatLng latLng});
}

/// @nodoc
class _$NewLocationStateChangeCopyWithImpl<$Res>
    extends _$NewLocationStateCopyWithImpl<$Res>
    implements $NewLocationStateChangeCopyWith<$Res> {
  _$NewLocationStateChangeCopyWithImpl(NewLocationStateChange _value,
      $Res Function(NewLocationStateChange) _then)
      : super(_value, (v) => _then(v as NewLocationStateChange));

  @override
  NewLocationStateChange get _value => super._value as NewLocationStateChange;

  @override
  $Res call({
    Object? latLng = freezed,
  }) {
    return _then(NewLocationStateChange(
      latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$NewLocationStateChange implements NewLocationStateChange {
  const _$NewLocationStateChange(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'NewLocationState.changeLocation(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewLocationStateChange &&
            const DeepCollectionEquality().equals(other.latLng, latLng));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(latLng));

  @JsonKey(ignore: true)
  @override
  $NewLocationStateChangeCopyWith<NewLocationStateChange> get copyWith =>
      _$NewLocationStateChangeCopyWithImpl<NewLocationStateChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LatLng latLng) changeLocation,
    required TResult Function(List<NewLocation> locations) success,
    required TResult Function(String? message) error,
  }) {
    return changeLocation(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng latLng)? changeLocation,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
  }) {
    return changeLocation?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LatLng latLng)? changeLocation,
    TResult Function(List<NewLocation> locations)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewLocationStateInitail value) initial,
    required TResult Function(NewLocationStateLoading value) loading,
    required TResult Function(NewLocationStateChange value) changeLocation,
    required TResult Function(NewLocationStateSuccess value) success,
    required TResult Function(NewLocationStateError value) error,
  }) {
    return changeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
  }) {
    return changeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(this);
    }
    return orElse();
  }
}

abstract class NewLocationStateChange implements NewLocationState {
  const factory NewLocationStateChange(LatLng latLng) =
      _$NewLocationStateChange;

  LatLng get latLng;
  @JsonKey(ignore: true)
  $NewLocationStateChangeCopyWith<NewLocationStateChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewLocationStateSuccessCopyWith<$Res> {
  factory $NewLocationStateSuccessCopyWith(NewLocationStateSuccess value,
          $Res Function(NewLocationStateSuccess) then) =
      _$NewLocationStateSuccessCopyWithImpl<$Res>;
  $Res call({List<NewLocation> locations});
}

/// @nodoc
class _$NewLocationStateSuccessCopyWithImpl<$Res>
    extends _$NewLocationStateCopyWithImpl<$Res>
    implements $NewLocationStateSuccessCopyWith<$Res> {
  _$NewLocationStateSuccessCopyWithImpl(NewLocationStateSuccess _value,
      $Res Function(NewLocationStateSuccess) _then)
      : super(_value, (v) => _then(v as NewLocationStateSuccess));

  @override
  NewLocationStateSuccess get _value => super._value as NewLocationStateSuccess;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(NewLocationStateSuccess(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<NewLocation>,
    ));
  }
}

/// @nodoc

class _$NewLocationStateSuccess implements NewLocationStateSuccess {
  const _$NewLocationStateSuccess(this.locations);

  @override
  final List<NewLocation> locations;

  @override
  String toString() {
    return 'NewLocationState.success(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewLocationStateSuccess &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  $NewLocationStateSuccessCopyWith<NewLocationStateSuccess> get copyWith =>
      _$NewLocationStateSuccessCopyWithImpl<NewLocationStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LatLng latLng) changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    required TResult Function(NewLocationStateInitail value) initial,
    required TResult Function(NewLocationStateLoading value) loading,
    required TResult Function(NewLocationStateChange value) changeLocation,
    required TResult Function(NewLocationStateSuccess value) success,
    required TResult Function(NewLocationStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NewLocationStateSuccess implements NewLocationState {
  const factory NewLocationStateSuccess(List<NewLocation> locations) =
      _$NewLocationStateSuccess;

  List<NewLocation> get locations;
  @JsonKey(ignore: true)
  $NewLocationStateSuccessCopyWith<NewLocationStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewLocationStateErrorCopyWith<$Res> {
  factory $NewLocationStateErrorCopyWith(NewLocationStateError value,
          $Res Function(NewLocationStateError) then) =
      _$NewLocationStateErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$NewLocationStateErrorCopyWithImpl<$Res>
    extends _$NewLocationStateCopyWithImpl<$Res>
    implements $NewLocationStateErrorCopyWith<$Res> {
  _$NewLocationStateErrorCopyWithImpl(
      NewLocationStateError _value, $Res Function(NewLocationStateError) _then)
      : super(_value, (v) => _then(v as NewLocationStateError));

  @override
  NewLocationStateError get _value => super._value as NewLocationStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NewLocationStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewLocationStateError implements NewLocationStateError {
  const _$NewLocationStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'NewLocationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewLocationStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $NewLocationStateErrorCopyWith<NewLocationStateError> get copyWith =>
      _$NewLocationStateErrorCopyWithImpl<NewLocationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LatLng latLng) changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    TResult Function(LatLng latLng)? changeLocation,
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
    required TResult Function(NewLocationStateInitail value) initial,
    required TResult Function(NewLocationStateLoading value) loading,
    required TResult Function(NewLocationStateChange value) changeLocation,
    required TResult Function(NewLocationStateSuccess value) success,
    required TResult Function(NewLocationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewLocationStateInitail value)? initial,
    TResult Function(NewLocationStateLoading value)? loading,
    TResult Function(NewLocationStateChange value)? changeLocation,
    TResult Function(NewLocationStateSuccess value)? success,
    TResult Function(NewLocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewLocationStateError implements NewLocationState {
  const factory NewLocationStateError([String? message]) =
      _$NewLocationStateError;

  String? get message;
  @JsonKey(ignore: true)
  $NewLocationStateErrorCopyWith<NewLocationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
