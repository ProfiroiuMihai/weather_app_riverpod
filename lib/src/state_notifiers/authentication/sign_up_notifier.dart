import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';
import 'package:weather_app_test/src/repository/auth_repository.dart';

part 'sign_up_notifier.freezed.dart';

///perform sign up
final signUpProvider =
StateNotifierProvider.autoDispose<SignInNotifier, SignUpState>((ref) {
  final _authRepo = ref.watch(authRepositoryProvider);
  return SignInNotifier(authRepository: _authRepo);
});

class SignInNotifier extends StateNotifier<SignUpState> {
  final AuthRepository authRepository;

  SignInNotifier({SignUpState? state, required this.authRepository})
      : super(state ?? const SignUpState.initial());

  Future<SignUpState> signUp(Tuple2 request) async {
    try {
      state = const SignUpState.loading();
      User? user =
      await authRepository.signUp(request.item1, request.item2);
      return state = SignUpState.success(user);
    } catch (e) {
      return state = SignUpState.error("$e");
    }
  }
}

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpStateInitial;

  const factory SignUpState.loading() = SignUpStateLoading;

  const factory SignUpState.success(User? response) =
      SignUpStateSuccess;

  const factory SignUpState.error([String? message]) = SignUpStateError;
}