import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_field.freezed.dart';

@freezed
class AuthField with _$AuthField {
  const factory AuthField({
    required String value,
    @Default('') String errorMessage,
    @Default(false) bool isValid,
  }) = _AuthField;
}
