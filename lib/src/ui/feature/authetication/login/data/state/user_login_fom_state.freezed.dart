// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_fom_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserLoginFormState {
  UserLoginEntity get form => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;
  bool get isValidating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLoginFormStateCopyWith<UserLoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginFormStateCopyWith<$Res> {
  factory $UserLoginFormStateCopyWith(
          UserLoginFormState value, $Res Function(UserLoginFormState) then) =
      _$UserLoginFormStateCopyWithImpl<$Res, UserLoginFormState>;
  @useResult
  $Res call({UserLoginEntity form, bool obscureText, bool isValidating});

  $UserLoginEntityCopyWith<$Res> get form;
}

/// @nodoc
class _$UserLoginFormStateCopyWithImpl<$Res, $Val extends UserLoginFormState>
    implements $UserLoginFormStateCopyWith<$Res> {
  _$UserLoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? obscureText = null,
    Object? isValidating = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserLoginEntity,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLoginEntityCopyWith<$Res> get form {
    return $UserLoginEntityCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$$UserLoginFormStateImplCopyWith<$Res>
    implements $UserLoginFormStateCopyWith<$Res> {
  factory _$$$UserLoginFormStateImplCopyWith(_$$UserLoginFormStateImpl value,
          $Res Function(_$$UserLoginFormStateImpl) then) =
      __$$$UserLoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserLoginEntity form, bool obscureText, bool isValidating});

  @override
  $UserLoginEntityCopyWith<$Res> get form;
}

/// @nodoc
class __$$$UserLoginFormStateImplCopyWithImpl<$Res>
    extends _$UserLoginFormStateCopyWithImpl<$Res, _$$UserLoginFormStateImpl>
    implements _$$$UserLoginFormStateImplCopyWith<$Res> {
  __$$$UserLoginFormStateImplCopyWithImpl(_$$UserLoginFormStateImpl _value,
      $Res Function(_$$UserLoginFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? obscureText = null,
    Object? isValidating = null,
  }) {
    return _then(_$$UserLoginFormStateImpl(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserLoginEntity,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$UserLoginFormStateImpl implements $UserLoginFormState {
  const _$$UserLoginFormStateImpl(
      {required this.form, this.obscureText = true, this.isValidating = false});

  @override
  final UserLoginEntity form;
  @override
  @JsonKey()
  final bool obscureText;
  @override
  @JsonKey()
  final bool isValidating;

  @override
  String toString() {
    return 'UserLoginFormState(form: $form, obscureText: $obscureText, isValidating: $isValidating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UserLoginFormStateImpl &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form, obscureText, isValidating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$UserLoginFormStateImplCopyWith<_$$UserLoginFormStateImpl> get copyWith =>
      __$$$UserLoginFormStateImplCopyWithImpl<_$$UserLoginFormStateImpl>(
          this, _$identity);
}

abstract class $UserLoginFormState implements UserLoginFormState {
  const factory $UserLoginFormState(
      {required final UserLoginEntity form,
      final bool obscureText,
      final bool isValidating}) = _$$UserLoginFormStateImpl;

  @override
  UserLoginEntity get form;
  @override
  bool get obscureText;
  @override
  bool get isValidating;
  @override
  @JsonKey(ignore: true)
  _$$$UserLoginFormStateImplCopyWith<_$$UserLoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
