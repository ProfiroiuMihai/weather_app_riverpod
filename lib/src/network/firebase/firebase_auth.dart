import 'package:firebase_auth/firebase_auth.dart';

class FireAuth {
  static User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }
}
