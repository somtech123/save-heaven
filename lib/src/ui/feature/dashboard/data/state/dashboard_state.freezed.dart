// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  DashboardEntity get entity => throw _privateConstructorUsedError;
  List<UserFileModel> get userFile => throw _privateConstructorUsedError;
  LoadingState get loadingState => throw _privateConstructorUsedError;
  bool get isGrid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {DashboardEntity entity,
      List<UserFileModel> userFile,
      LoadingState loadingState,
      bool isGrid});

  $DashboardEntityCopyWith<$Res> get entity;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? userFile = null,
    Object? loadingState = null,
    Object? isGrid = null,
  }) {
    return _then(_value.copyWith(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as DashboardEntity,
      userFile: null == userFile
          ? _value.userFile
          : userFile // ignore: cast_nullable_to_non_nullable
              as List<UserFileModel>,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      isGrid: null == isGrid
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardEntityCopyWith<$Res> get entity {
    return $DashboardEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$$DashboardStateImplCopyWith(_$$DashboardStateImpl value,
          $Res Function(_$$DashboardStateImpl) then) =
      __$$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DashboardEntity entity,
      List<UserFileModel> userFile,
      LoadingState loadingState,
      bool isGrid});

  @override
  $DashboardEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$$DashboardStateImpl>
    implements _$$$DashboardStateImplCopyWith<$Res> {
  __$$$DashboardStateImplCopyWithImpl(
      _$$DashboardStateImpl _value, $Res Function(_$$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? userFile = null,
    Object? loadingState = null,
    Object? isGrid = null,
  }) {
    return _then(_$$DashboardStateImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as DashboardEntity,
      userFile: null == userFile
          ? _value._userFile
          : userFile // ignore: cast_nullable_to_non_nullable
              as List<UserFileModel>,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      isGrid: null == isGrid
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$DashboardStateImpl implements $DashboardState {
  const _$$DashboardStateImpl(
      {required this.entity,
      required final List<UserFileModel> userFile,
      this.loadingState = LoadingState.initial,
      this.isGrid = false})
      : _userFile = userFile;

  @override
  final DashboardEntity entity;
  final List<UserFileModel> _userFile;
  @override
  List<UserFileModel> get userFile {
    if (_userFile is EqualUnmodifiableListView) return _userFile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userFile);
  }

  @override
  @JsonKey()
  final LoadingState loadingState;
  @override
  @JsonKey()
  final bool isGrid;

  @override
  String toString() {
    return 'DashboardState(entity: $entity, userFile: $userFile, loadingState: $loadingState, isGrid: $isGrid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$DashboardStateImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            const DeepCollectionEquality().equals(other._userFile, _userFile) &&
            (identical(other.loadingState, loadingState) ||
                other.loadingState == loadingState) &&
            (identical(other.isGrid, isGrid) || other.isGrid == isGrid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity,
      const DeepCollectionEquality().hash(_userFile), loadingState, isGrid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$DashboardStateImplCopyWith<_$$DashboardStateImpl> get copyWith =>
      __$$$DashboardStateImplCopyWithImpl<_$$DashboardStateImpl>(
          this, _$identity);
}

abstract class $DashboardState implements DashboardState {
  const factory $DashboardState(
      {required final DashboardEntity entity,
      required final List<UserFileModel> userFile,
      final LoadingState loadingState,
      final bool isGrid}) = _$$DashboardStateImpl;

  @override
  DashboardEntity get entity;
  @override
  List<UserFileModel> get userFile;
  @override
  LoadingState get loadingState;
  @override
  bool get isGrid;
  @override
  @JsonKey(ignore: true)
  _$$$DashboardStateImplCopyWith<_$$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
