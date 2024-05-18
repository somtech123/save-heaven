// ignore_for_file: no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:flutter/material.dart';
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

class UserSignUpFormProvider extends StateNotifier<UserSignUpFormState> {
  UserSignUpFormProvider()
      : super(UserSignUpFormState(
            form: UserSignUpEntity.empty(), obscureText: true));

  void setEmail(String email) {
    final isEmail = email.isValidEmail();

//copy from the state and add email
    UserSignUpEntity _form =
        state.form.copyWith(email: AuthField(value: email));

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

    UserSignUpEntity _form =
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

  void setUserName(String username) {
    UserSignUpEntity _form =
        state.form.copyWith(password: AuthField(value: username));

    late AuthField usernameField;

    if (username.isNotEmpty) {
      usernameField = _form.username.copyWith(isValid: true, errorMessage: '');
    } else {
      usernameField = _form.username
          .copyWith(isValid: false, errorMessage: 'Ops password is not valid');
    }

    state = state.copyWith(form: _form.copyWith(username: usernameField));
  }

  void obscureText() {
    state = state.copyWith(obscureText: !state.obscureText);
  }

  signupUser(BuildContext context,
      {required String email, required String password}) async {
    if (state.form.isValid) {
      state = state.copyWith(isValidating: true);

      try {
        await SuperbaseClient.instance.signup(
            pram: SingUpResources(
                email: email, password: password, username: ''));

        showToastMessage('Registration Success', isError: false);

        await pushReplacement(context, destination: const Dashboard());

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
