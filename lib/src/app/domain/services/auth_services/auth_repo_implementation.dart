import 'package:firebase_auth/firebase_auth.dart';

import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';
import 'package:save_heaven/src/app/domain/services/auth_services/auth_repo.dart';

class AuthRepoImplementation extends AuthRepo {
  final FirebaseAuth _client = FirebaseAuth.instance;

  @override
  Future<UserCredential> signup({required SingUpResources pram}) async {
    UserCredential cred = await _client.createUserWithEmailAndPassword(
        email: pram.email, password: pram.password);

    return cred;
  }

  @override
  Future<UserCredential> login({required SingUpResources pram}) async {
    UserCredential credential = await _client.signInWithEmailAndPassword(
        email: pram.email, password: pram.password);
    return credential;
  }

  @override
  Future<User?> checkAuthState() async {
    return _client.currentUser;
  }

  @override
  Future<void> logOut() async {
    await _client.signOut();
  }
}
