import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';
import 'package:weather_app_test/src/repository/auth_repository.dart';

part 'sign_in_notifier.freezed.dart';

///perform sign in
final signInProvider =
    StateNotifierProvider.autoDispose<SignInNotifier, SignInState>((ref) {
  final _authRepo = ref.watch(authRepositoryProvider);
  return SignInNotifier(authRepository: _authRepo);
});

class SignInNotifier extends StateNotifier<SignInState> {
  final AuthRepository authRepository;

  SignInNotifier({SignInState? state, required this.authRepository})
      : super(state ?? const SignInState.initial());

  Future<SignInState> signIn(Tuple2 request) async {
    try {
      state = const SignInState.loading();
      User? user =
          await authRepository.signIn(request.item1, request.item2);
      return state = SignInState.success(user);
    } catch (e) {
      return state = SignInState.error("$e");
    }
  }
}

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.initial() = SignInStateInitial;

  const factory SignInState.loading() = SignInStateLoading;

  const factory SignInState.success(User? response) = SignInStateSuccess;

  const factory SignInState.error([String? message]) = SignInStateError;
}
