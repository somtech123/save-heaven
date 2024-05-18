import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepo {
  Future<AuthResponse> signup({required SingUpResources pram});

  Future<void> checkAuthState();
}
