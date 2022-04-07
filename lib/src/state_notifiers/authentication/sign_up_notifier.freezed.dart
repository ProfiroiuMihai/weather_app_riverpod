// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  SignUpStateInitial initial() {
    return const SignUpStateInitial();
  }

  SignUpStateLoading loading() {
    return const SignUpStateLoading();
  }

  SignUpStateSuccess success(User? response) {
    return SignUpStateSuccess(
      response,
    );
  }

  SignUpStateError error([String? message]) {
    return SignUpStateError(
      message,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? response) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class $SignUpStateInitialCopyWith<$Res> {
  factory $SignUpStateInitialCopyWith(
          SignUpStateInitial value, $Res Function(SignUpStateInitial) then) =
      _$SignUpStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateInitialCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateInitialCopyWith<$Res> {
  _$SignUpStateInitialCopyWithImpl(
      SignUpStateInitial _value, $Res Function(SignUpStateInitial) _then)
      : super(_value, (v) => _then(v as SignUpStateInitial));

  @override
  SignUpStateInitial get _value => super._value as SignUpStateInitial;
}

/// @nodoc

class _$SignUpStateInitial implements SignUpStateInitial {
  const _$SignUpStateInitial();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? response) success,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
    TResult Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
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
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInitial implements SignUpState {
  const factory SignUpStateInitial() = _$SignUpStateInitial;
}

/// @nodoc
abstract class $SignUpStateLoadingCopyWith<$Res> {
  factory $SignUpStateLoadingCopyWith(
          SignUpStateLoading value, $Res Function(SignUpStateLoading) then) =
      _$SignUpStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateLoadingCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateLoadingCopyWith<$Res> {
  _$SignUpStateLoadingCopyWithImpl(
      SignUpStateLoading _value, $Res Function(SignUpStateLoading) _then)
      : super(_value, (v) => _then(v as SignUpStateLoading));

  @override
  SignUpStateLoading get _value => super._value as SignUpStateLoading;
}

/// @nodoc

class _$SignUpStateLoading implements SignUpStateLoading {
  const _$SignUpStateLoading();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? response) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
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
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLoading implements SignUpState {
  const factory SignUpStateLoading() = _$SignUpStateLoading;
}

/// @nodoc
abstract class $SignUpStateSuccessCopyWith<$Res> {
  factory $SignUpStateSuccessCopyWith(
          SignUpStateSuccess value, $Res Function(SignUpStateSuccess) then) =
      _$SignUpStateSuccessCopyWithImpl<$Res>;
  $Res call({User? response});
}

/// @nodoc
class _$SignUpStateSuccessCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateSuccessCopyWith<$Res> {
  _$SignUpStateSuccessCopyWithImpl(
      SignUpStateSuccess _value, $Res Function(SignUpStateSuccess) _then)
      : super(_value, (v) => _then(v as SignUpStateSuccess));

  @override
  SignUpStateSuccess get _value => super._value as SignUpStateSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(SignUpStateSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$SignUpStateSuccess implements SignUpStateSuccess {
  const _$SignUpStateSuccess(this.response);

  @override
  final User? response;

  @override
  String toString() {
    return 'SignUpState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStateSuccess &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  $SignUpStateSuccessCopyWith<SignUpStateSuccess> get copyWith =>
      _$SignUpStateSuccessCopyWithImpl<SignUpStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? response) success,
    required TResult Function(String? message) error,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
    TResult Function(String? message)? error,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSuccess implements SignUpState {
  const factory SignUpStateSuccess(User? response) = _$SignUpStateSuccess;

  User? get response;
  @JsonKey(ignore: true)
  $SignUpStateSuccessCopyWith<SignUpStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateErrorCopyWith<$Res> {
  factory $SignUpStateErrorCopyWith(
          SignUpStateError value, $Res Function(SignUpStateError) then) =
      _$SignUpStateErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$SignUpStateErrorCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateErrorCopyWith<$Res> {
  _$SignUpStateErrorCopyWithImpl(
      SignUpStateError _value, $Res Function(SignUpStateError) _then)
      : super(_value, (v) => _then(v as SignUpStateError));

  @override
  SignUpStateError get _value => super._value as SignUpStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SignUpStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpStateError implements SignUpStateError {
  const _$SignUpStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignUpState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SignUpStateErrorCopyWith<SignUpStateError> get copyWith =>
      _$SignUpStateErrorCopyWithImpl<SignUpStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? response) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? response)? success,
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
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpStateError implements SignUpState {
  const factory SignUpStateError([String? message]) = _$SignUpStateError;

  String? get message;
  @JsonKey(ignore: true)
  $SignUpStateErrorCopyWith<SignUpStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
