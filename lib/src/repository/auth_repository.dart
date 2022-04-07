import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider((ref) => AuthRepository());

class AuthRepository {
  Future<User?> signIn(String email, String password) async {
    return (await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password))
        .user;
  }

  Future<User?> signUp(String email, String password) async {
    return (await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password))
        .user;
  }
}
