// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupField _$SignupFieldFromJson(Map<String, dynamic> json) {
  return _SignupField.fromJson(json);
}

/// @nodoc
mixin _$SignupField {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupFieldCopyWith<SignupField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFieldCopyWith<$Res> {
  factory $SignupFieldCopyWith(
          SignupField value, $Res Function(SignupField) then) =
      _$SignupFieldCopyWithImpl<$Res, SignupField>;
  @useResult
  $Res call({String email, String password, String errorMessage, bool isValid});
}

/// @nodoc
class _$SignupFieldCopyWithImpl<$Res, $Val extends SignupField>
    implements $SignupFieldCopyWith<$Res> {
  _$SignupFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupFieldImplCopyWith<$Res>
    implements $SignupFieldCopyWith<$Res> {
  factory _$$SignupFieldImplCopyWith(
          _$SignupFieldImpl value, $Res Function(_$SignupFieldImpl) then) =
      __$$SignupFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String errorMessage, bool isValid});
}

/// @nodoc
class __$$SignupFieldImplCopyWithImpl<$Res>
    extends _$SignupFieldCopyWithImpl<$Res, _$SignupFieldImpl>
    implements _$$SignupFieldImplCopyWith<$Res> {
  __$$SignupFieldImplCopyWithImpl(
      _$SignupFieldImpl _value, $Res Function(_$SignupFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_$SignupFieldImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupFieldImpl implements _SignupField {
  const _$SignupFieldImpl(
      {required this.email,
      required this.password,
      this.errorMessage = '',
      this.isValid = false});

  factory _$SignupFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupFieldImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'SignupField(email: $email, password: $password, errorMessage: $errorMessage, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFieldImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, errorMessage, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFieldImplCopyWith<_$SignupFieldImpl> get copyWith =>
      __$$SignupFieldImplCopyWithImpl<_$SignupFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupFieldImplToJson(
      this,
    );
  }
}

abstract class _SignupField implements SignupField {
  const factory _SignupField(
      {required final String email,
      required final String password,
      final String errorMessage,
      final bool isValid}) = _$SignupFieldImpl;

  factory _SignupField.fromJson(Map<String, dynamic> json) =
      _$SignupFieldImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get errorMessage;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$SignupFieldImplCopyWith<_$SignupFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
