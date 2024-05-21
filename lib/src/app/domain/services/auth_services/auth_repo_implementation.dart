import 'package:flutter/cupertino.dart';
import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';
import 'package:save_heaven/src/app/domain/services/auth_services/auth_repo.dart';
import 'package:save_heaven/src/ui/feature/authetication/login/presentation/view/sign_in.dart';
import 'package:save_heaven/src/utils/utils.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImplementation extends AuthRepo {
  final _client = Supabase.instance.client;

  @override
  Future<AuthResponse> signup({required SingUpResources pram}) async {
    AuthResponse result = await _client.auth.signUp(
      password: pram.password,
      email: pram.email,
      data: {'username': pram.username},
    );

    return result;
  }

  @override
  Future<void> checkAuthState() async {
    //if (_client.auth.currentUser != null) {}
  }

  @override
  Future<void> logOut(BuildContext context) async {
    await _client.auth.signOut().then(
        (value) => pushReplacement(context, destination: const SiginScreen()));
  }

  @override
  Future<AuthResponse> login({required SingUpResources pram}) async {
    return await _client.auth
        .signInWithPassword(password: pram.password, email: pram.email);
  }
}
