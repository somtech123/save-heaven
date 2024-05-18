// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_up_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSignUpEntity {
  AuthField get email => throw _privateConstructorUsedError;
  AuthField get password => throw _privateConstructorUsedError;
  AuthField get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSignUpEntityCopyWith<UserSignUpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpEntityCopyWith<$Res> {
  factory $UserSignUpEntityCopyWith(
          UserSignUpEntity value, $Res Function(UserSignUpEntity) then) =
      _$UserSignUpEntityCopyWithImpl<$Res, UserSignUpEntity>;
  @useResult
  $Res call({AuthField email, AuthField password, AuthField username});

  $AuthFieldCopyWith<$Res> get email;
  $AuthFieldCopyWith<$Res> get password;
  $AuthFieldCopyWith<$Res> get username;
}

/// @nodoc
class _$UserSignUpEntityCopyWithImpl<$Res, $Val extends UserSignUpEntity>
    implements $UserSignUpEntityCopyWith<$Res> {
  _$UserSignUpEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as AuthField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as AuthField,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as AuthField,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFieldCopyWith<$Res> get email {
    return $AuthFieldCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFieldCopyWith<$Res> get password {
    return $AuthFieldCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFieldCopyWith<$Res> get username {
    return $AuthFieldCopyWith<$Res>(_value.username, (value) {
      return _then(_value.copyWith(username: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSignUpEntityImplCopyWith<$Res>
    implements $UserSignUpEntityCopyWith<$Res> {
  factory _$$UserSignUpEntityImplCopyWith(_$UserSignUpEntityImpl value,
          $Res Function(_$UserSignUpEntityImpl) then) =
      __$$UserSignUpEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthField email, AuthField password, AuthField username});

  @override
  $AuthFieldCopyWith<$Res> get email;
  @override
  $AuthFieldCopyWith<$Res> get password;
  @override
  $AuthFieldCopyWith<$Res> get username;
}

/// @nodoc
class __$$UserSignUpEntityImplCopyWithImpl<$Res>
    extends _$UserSignUpEntityCopyWithImpl<$Res, _$UserSignUpEntityImpl>
    implements _$$UserSignUpEntityImplCopyWith<$Res> {
  __$$UserSignUpEntityImplCopyWithImpl(_$UserSignUpEntityImpl _value,
      $Res Function(_$UserSignUpEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$UserSignUpEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as AuthField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as AuthField,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as AuthField,
    ));
  }
}

/// @nodoc

class _$UserSignUpEntityImpl extends _UserSignUpEntity {
  const _$UserSignUpEntityImpl(
      {required this.email, required this.password, required this.username})
      : super._();

  @override
  final AuthField email;
  @override
  final AuthField password;
  @override
  final AuthField username;

  @override
  String toString() {
    return 'UserSignUpEntity(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpEntityImplCopyWith<_$UserSignUpEntityImpl> get copyWith =>
      __$$UserSignUpEntityImplCopyWithImpl<_$UserSignUpEntityImpl>(
          this, _$identity);
}

abstract class _UserSignUpEntity extends UserSignUpEntity {
  const factory _UserSignUpEntity(
      {required final AuthField email,
      required final AuthField password,
      required final AuthField username}) = _$UserSignUpEntityImpl;
  const _UserSignUpEntity._() : super._();

  @override
  AuthField get email;
  @override
  AuthField get password;
  @override
  AuthField get username;
  @override
  @JsonKey(ignore: true)
  _$$UserSignUpEntityImplCopyWith<_$UserSignUpEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
