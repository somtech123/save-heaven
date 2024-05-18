import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_field.freezed.dart';
part 'login_field.g.dart';

@freezed
class LoginField with _$LoginField {
  const factory LoginField({
    required String email,
    required String password,
    @Default('') String errorMessage,
    @Default(false) bool isValid,
  }) = $LoginField;

  factory LoginField.fromJson(Map<String, Object?> json) =>
      _$LoginFieldFromJson(json);
}
