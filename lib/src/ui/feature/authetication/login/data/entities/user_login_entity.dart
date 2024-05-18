import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';
part 'user_login_entity.freezed.dart';

@freezed
class UserLoginEntity with _$UserLoginEntity {
  const UserLoginEntity._();

  const factory UserLoginEntity({
    required AuthField email,
    required AuthField password,
  }) = _UserLoginEntity;

  factory UserLoginEntity.empty() => const UserLoginEntity(
        email: AuthField(value: ''),
        password: AuthField(value: ''),
      );

  bool get isValid => email.isValid && password.isValid;
}
