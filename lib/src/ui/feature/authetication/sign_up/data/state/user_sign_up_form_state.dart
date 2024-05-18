import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';

part 'user_sign_up_form_state.freezed.dart';

@freezed
class UserSignUpFormState with _$UserSignUpFormState {
  const factory UserSignUpFormState({
    required UserSignUpEntity form,
    @Default(true) bool obscureText,
  }) = _UserSignUpFormState;
}
