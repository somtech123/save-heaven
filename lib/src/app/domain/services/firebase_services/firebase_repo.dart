import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseRepository {
  Future<void> createUser(
      {required UserCredential cred, required String username});
}
