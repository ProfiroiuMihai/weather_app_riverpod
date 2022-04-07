// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  SignInStateInitial initial() {
    return const SignInStateInitial();
  }

  SignInStateLoading loading() {
    return const SignInStateLoading();
  }

  SignInStateSuccess success(User? response) {
    return SignInStateSuccess(
      response,
    );
  }

  SignInStateError error([String? message]) {
    return SignInStateError(
      message,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
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
    required TResult Function(SignInStateInitial value) initial,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateSuccess value) success,
    required TResult Function(SignInStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class $SignInStateInitialCopyWith<$Res> {
  factory $SignInStateInitialCopyWith(
          SignInStateInitial value, $Res Function(SignInStateInitial) then) =
      _$SignInStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateInitialCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateInitialCopyWith<$Res> {
  _$SignInStateInitialCopyWithImpl(
      SignInStateInitial _value, $Res Function(SignInStateInitial) _then)
      : super(_value, (v) => _then(v as SignInStateInitial));

  @override
  SignInStateInitial get _value => super._value as SignInStateInitial;
}

/// @nodoc

class _$SignInStateInitial implements SignInStateInitial {
  const _$SignInStateInitial();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInStateInitial);
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
    required TResult Function(SignInStateInitial value) initial,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateSuccess value) success,
    required TResult Function(SignInStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignInStateInitial implements SignInState {
  const factory SignInStateInitial() = _$SignInStateInitial;
}

/// @nodoc
abstract class $SignInStateLoadingCopyWith<$Res> {
  factory $SignInStateLoadingCopyWith(
          SignInStateLoading value, $Res Function(SignInStateLoading) then) =
      _$SignInStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateLoadingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateLoadingCopyWith<$Res> {
  _$SignInStateLoadingCopyWithImpl(
      SignInStateLoading _value, $Res Function(SignInStateLoading) _then)
      : super(_value, (v) => _then(v as SignInStateLoading));

  @override
  SignInStateLoading get _value => super._value as SignInStateLoading;
}

/// @nodoc

class _$SignInStateLoading implements SignInStateLoading {
  const _$SignInStateLoading();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInStateLoading);
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
    required TResult Function(SignInStateInitial value) initial,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateSuccess value) success,
    required TResult Function(SignInStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignInStateLoading implements SignInState {
  const factory SignInStateLoading() = _$SignInStateLoading;
}

/// @nodoc
abstract class $SignInStateSuccessCopyWith<$Res> {
  factory $SignInStateSuccessCopyWith(
          SignInStateSuccess value, $Res Function(SignInStateSuccess) then) =
      _$SignInStateSuccessCopyWithImpl<$Res>;
  $Res call({User? response});
}

/// @nodoc
class _$SignInStateSuccessCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateSuccessCopyWith<$Res> {
  _$SignInStateSuccessCopyWithImpl(
      SignInStateSuccess _value, $Res Function(SignInStateSuccess) _then)
      : super(_value, (v) => _then(v as SignInStateSuccess));

  @override
  SignInStateSuccess get _value => super._value as SignInStateSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(SignInStateSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$SignInStateSuccess implements SignInStateSuccess {
  const _$SignInStateSuccess(this.response);

  @override
  final User? response;

  @override
  String toString() {
    return 'SignInState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInStateSuccess &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  $SignInStateSuccessCopyWith<SignInStateSuccess> get copyWith =>
      _$SignInStateSuccessCopyWithImpl<SignInStateSuccess>(this, _$identity);

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
    required TResult Function(SignInStateInitial value) initial,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateSuccess value) success,
    required TResult Function(SignInStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignInStateSuccess implements SignInState {
  const factory SignInStateSuccess(User? response) = _$SignInStateSuccess;

  User? get response;
  @JsonKey(ignore: true)
  $SignInStateSuccessCopyWith<SignInStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateErrorCopyWith<$Res> {
  factory $SignInStateErrorCopyWith(
          SignInStateError value, $Res Function(SignInStateError) then) =
      _$SignInStateErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$SignInStateErrorCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateErrorCopyWith<$Res> {
  _$SignInStateErrorCopyWithImpl(
      SignInStateError _value, $Res Function(SignInStateError) _then)
      : super(_value, (v) => _then(v as SignInStateError));

  @override
  SignInStateError get _value => super._value as SignInStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(SignInStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInStateError implements SignInStateError {
  const _$SignInStateError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'SignInState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $SignInStateErrorCopyWith<SignInStateError> get copyWith =>
      _$SignInStateErrorCopyWithImpl<SignInStateError>(this, _$identity);

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
    required TResult Function(SignInStateInitial value) initial,
    required TResult Function(SignInStateLoading value) loading,
    required TResult Function(SignInStateSuccess value) success,
    required TResult Function(SignInStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStateInitial value)? initial,
    TResult Function(SignInStateLoading value)? loading,
    TResult Function(SignInStateSuccess value)? success,
    TResult Function(SignInStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInStateError implements SignInState {
  const factory SignInStateError([String? message]) = _$SignInStateError;

  String? get message;
  @JsonKey(ignore: true)
  $SignInStateErrorCopyWith<SignInStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
