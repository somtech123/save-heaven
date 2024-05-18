// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/app/extensions/email_validator.dart';
import 'package:save_heaven/src/app/extensions/password_validator.dart';

import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';

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

  void obscureText() {
    state = state.copyWith(obscureText: !state.obscureText);
  }
}
