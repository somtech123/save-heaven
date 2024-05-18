import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up.freezed.dart';

part 'sign_up.g.dart';

@freezed
class SignupField with _$SignupField {
  const factory SignupField({
    required String email,
    required String password,
    @Default('') String errorMessage,
    @Default(false) bool isValid,
  }) = _SignupField;

  factory SignupField.fromJson(Map<String, Object?> json) =>
      _$SignupFieldFromJson(json);
}
