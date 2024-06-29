// a Singleton class for auth client that holds only one instance for our class

import 'package:firebase_auth/firebase_auth.dart';

import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';
import 'package:save_heaven/src/app/domain/services/auth_services/auth_repo_implementation.dart';
import 'package:save_heaven/src/app/domain/services/firebase_services/firebase_repo_implementation.dart';

// class SuperbaseClient {
//   SuperbaseClient._internal();

//   static final SuperbaseClient _instance = SuperbaseClient._internal();

//   static SuperbaseClient get instance => _instance;

//   final AuthRepoImplementation _authRepoImplementation =
//       AuthRepoImplementation();

//   final UserRepoImplementation _userRepoImplementation =
//       UserRepoImplementation();

//   Future<AuthResponse> signup({required SingUpResources pram}) =>
//       _authRepoImplementation.signup(pram: pram);

//   Future<void> logout(BuildContext context) =>
//       _authRepoImplementation.logOut(context);

//   Future<AuthResponse> login({required SingUpResources pram}) =>
//       _authRepoImplementation.login(pram: pram);

//   Future<void> uploadFile() => _userRepoImplementation.uploadFile();
// }

class AuthClient {
  AuthClient._internal();

  static final AuthClient _instance = AuthClient._internal();
  static AuthClient get instance => _instance;

  final AuthRepoImplementation _authRepoImplementation =
      AuthRepoImplementation();

  final FirebaseServices _firebaseServices = FirebaseServices();

  Future<UserCredential> signup({required SingUpResources pram}) =>
      _authRepoImplementation.signup(pram: pram);

  Future<void> createUser(
          {required UserCredential cred, required String username}) =>
      _firebaseServices.createUser(cred: cred, username: username);

  Future<UserCredential> login({required SingUpResources pram}) =>
      _authRepoImplementation.login(pram: pram);

  Future<User?> checkAuthState() => _authRepoImplementation.checkAuthState();

  Future<void> logOut() => _authRepoImplementation.logOut();
}
