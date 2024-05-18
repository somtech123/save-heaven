// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupFieldImpl _$$SignupFieldImplFromJson(Map<String, dynamic> json) =>
    _$SignupFieldImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      errorMessage: json['errorMessage'] as String? ?? '',
      isValid: json['isValid'] as bool? ?? false,
    );

Map<String, dynamic> _$$SignupFieldImplToJson(_$SignupFieldImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'errorMessage': instance.errorMessage,
      'isValid': instance.isValid,
    };
