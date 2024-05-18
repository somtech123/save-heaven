// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$LoginFieldImpl _$$$LoginFieldImplFromJson(Map<String, dynamic> json) =>
    _$$LoginFieldImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      errorMessage: json['errorMessage'] as String? ?? '',
      isValid: json['isValid'] as bool? ?? false,
    );

Map<String, dynamic> _$$$LoginFieldImplToJson(_$$LoginFieldImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'errorMessage': instance.errorMessage,
      'isValid': instance.isValid,
    };
