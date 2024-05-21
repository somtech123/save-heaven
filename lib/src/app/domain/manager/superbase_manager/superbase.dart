// a Singleton class for subase client that holds only one instance for our class

import 'package:flutter/cupertino.dart';
import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';
import 'package:save_heaven/src/app/domain/services/auth_services/auth_repo_implementation.dart';
import 'package:save_heaven/src/app/domain/services/user_services/user_repo_implementation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SuperbaseClient {
  SuperbaseClient._internal();

  static final SuperbaseClient _instance = SuperbaseClient._internal();

  static SuperbaseClient get instance => _instance;

  final AuthRepoImplementation _authRepoImplementation =
      AuthRepoImplementation();

  final UserRepoImplementation _userRepoImplementation =
      UserRepoImplementation();

  Future<AuthResponse> signup({required SingUpResources pram}) =>
      _authRepoImplementation.signup(pram: pram);

  Future<void> logout(BuildContext context) =>
      _authRepoImplementation.logOut(context);

  Future<AuthResponse> login({required SingUpResources pram}) =>
      _authRepoImplementation.login(pram: pram);

  Future<void> uploadFile() => _userRepoImplementation.uploadFile();
}
