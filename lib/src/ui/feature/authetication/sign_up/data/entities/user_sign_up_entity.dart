import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';

part 'user_sign_up_entity.freezed.dart';

@freezed
class UserSignUpEntity with _$UserSignUpEntity {
  const UserSignUpEntity._();

  const factory UserSignUpEntity({
    required AuthField email,
    required AuthField password,
  }) = _UserSignUpEntity;

  factory UserSignUpEntity.empty() => const UserSignUpEntity(
        email: AuthField(value: ''),
        password: AuthField(value: ''),
      );

  bool get isValid => email.isValid && password.isValid;
}
