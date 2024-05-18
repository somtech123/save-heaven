import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';

part 'user_login_fom_state.freezed.dart';

@freezed
class UserLoginFormState with _$UserLoginFormState {
  const factory UserLoginFormState({
    required UserLoginEntity form,
    @Default(true) bool obscureText,
    @Default(false) bool isValidating,
  }) = $UserLoginFormState;
}
