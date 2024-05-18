// a Singleton class for subase client that holds only one instance for our class

import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';
import 'package:save_heaven/src/app/domain/services/auth_services/auth_repo_implementation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SuperbaseClient {
  SuperbaseClient._internal();

  static final SuperbaseClient _instance = SuperbaseClient._internal();

  static SuperbaseClient get instance => _instance;

  final AuthRepoImplementation _authRepoImplementation =
      AuthRepoImplementation();

  Future<AuthResponse> signup({required SingUpResources pram}) =>
      _authRepoImplementation.signup(pram: pram);
}
