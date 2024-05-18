// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthField {
  String get value => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFieldCopyWith<AuthField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFieldCopyWith<$Res> {
  factory $AuthFieldCopyWith(AuthField value, $Res Function(AuthField) then) =
      _$AuthFieldCopyWithImpl<$Res, AuthField>;
  @useResult
  $Res call({String value, String errorMessage, bool isValid});
}

/// @nodoc
class _$AuthFieldCopyWithImpl<$Res, $Val extends AuthField>
    implements $AuthFieldCopyWith<$Res> {
  _$AuthFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AuthFieldImplCopyWith<$Res>
    implements $AuthFieldCopyWith<$Res> {
  factory _$$AuthFieldImplCopyWith(
          _$AuthFieldImpl value, $Res Function(_$AuthFieldImpl) then) =
      __$$AuthFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String errorMessage, bool isValid});
}

/// @nodoc
class __$$AuthFieldImplCopyWithImpl<$Res>
    extends _$AuthFieldCopyWithImpl<$Res, _$AuthFieldImpl>
    implements _$$AuthFieldImplCopyWith<$Res> {
  __$$AuthFieldImplCopyWithImpl(
      _$AuthFieldImpl _value, $Res Function(_$AuthFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_$AuthFieldImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
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

class _$AuthFieldImpl implements _AuthField {
  const _$AuthFieldImpl(
      {required this.value, this.errorMessage = '', this.isValid = false});

  @override
  final String value;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'AuthField(value: $value, errorMessage: $errorMessage, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFieldImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFieldImplCopyWith<_$AuthFieldImpl> get copyWith =>
      __$$AuthFieldImplCopyWithImpl<_$AuthFieldImpl>(this, _$identity);
}

abstract class _AuthField implements AuthField {
  const factory _AuthField(
      {required final String value,
      final String errorMessage,
      final bool isValid}) = _$AuthFieldImpl;

  @override
  String get value;
  @override
  String get errorMessage;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$AuthFieldImplCopyWith<_$AuthFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
