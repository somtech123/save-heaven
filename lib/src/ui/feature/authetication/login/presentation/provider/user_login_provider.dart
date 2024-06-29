// ignore_for_file: no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/app/domain/manager/auth_manager/auth_client.dart';
import 'package:save_heaven/src/app/domain/resource/signup_resource.dart';

import 'package:save_heaven/src/app/extensions/email_validator.dart';
import 'package:save_heaven/src/app/extensions/password_validator.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';
import 'package:save_heaven/src/ui/feature/dashboard/presentation/view/dashboard.dart';
import 'package:save_heaven/src/ui/shared/toast.dart';

import 'package:save_heaven/src/utils/utils.dart';

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
        UserCredential cred = await AuthClient.instance.login(
            pram: SingUpResources(
                email: email, password: password, username: ''));

        // ignore: unnecessary_null_comparison
        if (cred != null) {
          showToastMessage('Login Success', isError: false);

          pushReplacement(context, destination: Dashboard());

          state = state.copyWith(isValidating: false);
        } else {
          showToastMessage('An Error Occured', isError: true);
        }
      } on FirebaseAuthException catch (e) {
        state = state.copyWith(isValidating: false);

        if (e.code == 'user-not-found') {
          showToastMessage('No user found for that email.', isError: true);
        } else if (e.code == 'wrong-password') {
          showToastMessage('Wrong password provided for that user.',
              isError: true);
        } else {
          showToastMessage(e.message.toString(), isError: true);
        }
      } catch (e) {
        showToastMessage(e.toString(), isError: true);
      }
    } else {
      state = state.copyWith(isValidating: false);
    }
  }
}
