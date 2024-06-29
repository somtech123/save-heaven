import 'package:firebase_auth/firebase_auth.dart';

import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';

abstract class AuthRepo {
  Future<UserCredential> signup({required SingUpResources pram});

  Future<User?> checkAuthState();

  Future<void> logOut();

  Future<UserCredential> login({required SingUpResources pram});
}
