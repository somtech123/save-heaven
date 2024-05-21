// ignore_for_file: no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/app/domain/manager/superbase_manager/superbase.dart';
import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';
import 'package:save_heaven/src/app/extensions/email_validator.dart';
import 'package:save_heaven/src/app/extensions/password_validator.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';
import 'package:save_heaven/src/ui/feature/dashboard/presentation/view/dashboard.dart';
import 'package:save_heaven/src/ui/shared/toast.dart';
import 'package:save_heaven/src/utils/utils.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginProvider extends StateNotifier<UserLoginFormState> {
  LoginProvider()
      : super(UserLoginFormState(
            form: UserLoginEntity.empty(), obscureText: true));

  void setEmail(String email) {
    final isEmail = email.isValidEmail();

//copy from the state and add email
    UserLoginEntity _form = state.form.copyWith(email: AuthField(value: email));

    late AuthField emailFeild;

    if (isEmail) {
      emailFeild = _form.email.copyWith(isValid: true, errorMessage: '');
    } else {
      emailFeild = _form.email
          .copyWith(isValid: false, errorMessage: 'Ops email is not valid');
    }

    state = state.copyWith(form: _form.copyWith(email: emailFeild));
  }

  void setPassword(String password) {
    final isPasword = password.isValidPassword();

    UserLoginEntity _form =
        state.form.copyWith(password: AuthField(value: password));

    late AuthField passwordFeild;

    if (isPasword) {
      passwordFeild = _form.password.copyWith(isValid: true, errorMessage: '');
    } else {
      passwordFeild = _form.password
          .copyWith(isValid: false, errorMessage: 'Ops password is not valid');
    }

    state = state.copyWith(form: _form.copyWith(password: passwordFeild));
  }

  void obscureText() {
    state = state.copyWith(obscureText: !state.obscureText);
  }

  void login(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    if (state.form.isValid) {
      state = state.copyWith(isValidating: true);

      try {
        await SuperbaseClient.instance.login(
            pram: SingUpResources(
                email: email, password: password, username: ''));

        showToastMessage('Registration Success', isError: false);

        pushReplacement(context, destination: Dashboard());

        state = state.copyWith(isValidating: false);
      } on AuthException catch (e) {
        state = state.copyWith(isValidating: false);

        showToastMessage(e.message, isError: true);
      }
    } else {
      state = state.copyWith(isValidating: false);
    }
  }
}
