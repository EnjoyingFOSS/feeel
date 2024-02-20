// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutListState {
  bool get exporting => throw _privateConstructorUsedError;
  bool get importing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutListStateCopyWith<WorkoutListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutListStateCopyWith<$Res> {
  factory $WorkoutListStateCopyWith(
          WorkoutListState value, $Res Function(WorkoutListState) then) =
      _$WorkoutListStateCopyWithImpl<$Res, WorkoutListState>;
  @useResult
  $Res call({bool exporting, bool importing});
}

/// @nodoc
class _$WorkoutListStateCopyWithImpl<$Res, $Val extends WorkoutListState>
    implements $WorkoutListStateCopyWith<$Res> {
  _$WorkoutListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exporting = null,
    Object? importing = null,
  }) {
    return _then(_value.copyWith(
      exporting: null == exporting
          ? _value.exporting
          : exporting // ignore: cast_nullable_to_non_nullable
              as bool,
      importing: null == importing
          ? _value.importing
          : importing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutListStateImplCopyWith<$Res>
    implements $WorkoutListStateCopyWith<$Res> {
  factory _$$WorkoutListStateImplCopyWith(_$WorkoutListStateImpl value,
          $Res Function(_$WorkoutListStateImpl) then) =
      __$$WorkoutListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool exporting, bool importing});
}

/// @nodoc
class __$$WorkoutListStateImplCopyWithImpl<$Res>
    extends _$WorkoutListStateCopyWithImpl<$Res, _$WorkoutListStateImpl>
    implements _$$WorkoutListStateImplCopyWith<$Res> {
  __$$WorkoutListStateImplCopyWithImpl(_$WorkoutListStateImpl _value,
      $Res Function(_$WorkoutListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exporting = null,
    Object? importing = null,
  }) {
    return _then(_$WorkoutListStateImpl(
      exporting: null == exporting
          ? _value.exporting
          : exporting // ignore: cast_nullable_to_non_nullable
              as bool,
      importing: null == importing
          ? _value.importing
          : importing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WorkoutListStateImpl implements _WorkoutListState {
  const _$WorkoutListStateImpl(
      {required this.exporting, required this.importing});

  @override
  final bool exporting;
  @override
  final bool importing;

  @override
  String toString() {
    return 'WorkoutListState(exporting: $exporting, importing: $importing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutListStateImpl &&
            (identical(other.exporting, exporting) ||
                other.exporting == exporting) &&
            (identical(other.importing, importing) ||
                other.importing == importing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exporting, importing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutListStateImplCopyWith<_$WorkoutListStateImpl> get copyWith =>
      __$$WorkoutListStateImplCopyWithImpl<_$WorkoutListStateImpl>(
          this, _$identity);
}

abstract class _WorkoutListState implements WorkoutListState {
  const factory _WorkoutListState(
      {required final bool exporting,
      required final bool importing}) = _$WorkoutListStateImpl;

  @override
  bool get exporting;
  @override
  bool get importing;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutListStateImplCopyWith<_$WorkoutListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
