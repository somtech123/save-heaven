// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_up_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSignUpFormState {
  UserSignUpEntity get form => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSignUpFormStateCopyWith<UserSignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpFormStateCopyWith<$Res> {
  factory $UserSignUpFormStateCopyWith(
          UserSignUpFormState value, $Res Function(UserSignUpFormState) then) =
      _$UserSignUpFormStateCopyWithImpl<$Res, UserSignUpFormState>;
  @useResult
  $Res call({UserSignUpEntity form, bool obscureText});

  $UserSignUpEntityCopyWith<$Res> get form;
}

/// @nodoc
class _$UserSignUpFormStateCopyWithImpl<$Res, $Val extends UserSignUpFormState>
    implements $UserSignUpFormStateCopyWith<$Res> {
  _$UserSignUpFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? obscureText = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserSignUpEntity,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSignUpEntityCopyWith<$Res> get form {
    return $UserSignUpEntityCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSignUpFormStateImplCopyWith<$Res>
    implements $UserSignUpFormStateCopyWith<$Res> {
  factory _$$UserSignUpFormStateImplCopyWith(_$UserSignUpFormStateImpl value,
          $Res Function(_$UserSignUpFormStateImpl) then) =
      __$$UserSignUpFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserSignUpEntity form, bool obscureText});

  @override
  $UserSignUpEntityCopyWith<$Res> get form;
}

/// @nodoc
class __$$UserSignUpFormStateImplCopyWithImpl<$Res>
    extends _$UserSignUpFormStateCopyWithImpl<$Res, _$UserSignUpFormStateImpl>
    implements _$$UserSignUpFormStateImplCopyWith<$Res> {
  __$$UserSignUpFormStateImplCopyWithImpl(_$UserSignUpFormStateImpl _value,
      $Res Function(_$UserSignUpFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? obscureText = null,
  }) {
    return _then(_$UserSignUpFormStateImpl(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as UserSignUpEntity,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserSignUpFormStateImpl implements _UserSignUpFormState {
  const _$UserSignUpFormStateImpl(
      {required this.form, this.obscureText = true});

  @override
  final UserSignUpEntity form;
  @override
  @JsonKey()
  final bool obscureText;

  @override
  String toString() {
    return 'UserSignUpFormState(form: $form, obscureText: $obscureText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpFormStateImpl &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form, obscureText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpFormStateImplCopyWith<_$UserSignUpFormStateImpl> get copyWith =>
      __$$UserSignUpFormStateImplCopyWithImpl<_$UserSignUpFormStateImpl>(
          this, _$identity);
}

abstract class _UserSignUpFormState implements UserSignUpFormState {
  const factory _UserSignUpFormState(
      {required final UserSignUpEntity form,
      final bool obscureText}) = _$UserSignUpFormStateImpl;

  @override
  UserSignUpEntity get form;
  @override
  bool get obscureText;
  @override
  @JsonKey(ignore: true)
  _$$UserSignUpFormStateImplCopyWith<_$UserSignUpFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
