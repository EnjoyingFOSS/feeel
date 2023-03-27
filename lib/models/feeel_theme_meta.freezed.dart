// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feeel_theme_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeeelThemeMeta {
  FeeelThemeMode get mode => throw _privateConstructorUsedError;
  bool get personalized => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeeelThemeMetaCopyWith<FeeelThemeMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeelThemeMetaCopyWith<$Res> {
  factory $FeeelThemeMetaCopyWith(
          FeeelThemeMeta value, $Res Function(FeeelThemeMeta) then) =
      _$FeeelThemeMetaCopyWithImpl<$Res, FeeelThemeMeta>;
  @useResult
  $Res call({FeeelThemeMode mode, bool personalized});
}

/// @nodoc
class _$FeeelThemeMetaCopyWithImpl<$Res, $Val extends FeeelThemeMeta>
    implements $FeeelThemeMetaCopyWith<$Res> {
  _$FeeelThemeMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? personalized = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FeeelThemeMode,
      personalized: null == personalized
          ? _value.personalized
          : personalized // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeelThemeMetaCopyWith<$Res>
    implements $FeeelThemeMetaCopyWith<$Res> {
  factory _$$_FeeelThemeMetaCopyWith(
          _$_FeeelThemeMeta value, $Res Function(_$_FeeelThemeMeta) then) =
      __$$_FeeelThemeMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeeelThemeMode mode, bool personalized});
}

/// @nodoc
class __$$_FeeelThemeMetaCopyWithImpl<$Res>
    extends _$FeeelThemeMetaCopyWithImpl<$Res, _$_FeeelThemeMeta>
    implements _$$_FeeelThemeMetaCopyWith<$Res> {
  __$$_FeeelThemeMetaCopyWithImpl(
      _$_FeeelThemeMeta _value, $Res Function(_$_FeeelThemeMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? personalized = null,
  }) {
    return _then(_$_FeeelThemeMeta(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FeeelThemeMode,
      personalized: null == personalized
          ? _value.personalized
          : personalized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FeeelThemeMeta implements _FeeelThemeMeta {
  const _$_FeeelThemeMeta({required this.mode, required this.personalized});

  @override
  final FeeelThemeMode mode;
  @override
  final bool personalized;

  @override
  String toString() {
    return 'FeeelThemeMeta(mode: $mode, personalized: $personalized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeelThemeMeta &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.personalized, personalized) ||
                other.personalized == personalized));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, personalized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeelThemeMetaCopyWith<_$_FeeelThemeMeta> get copyWith =>
      __$$_FeeelThemeMetaCopyWithImpl<_$_FeeelThemeMeta>(this, _$identity);
}

abstract class _FeeelThemeMeta implements FeeelThemeMeta {
  const factory _FeeelThemeMeta(
      {required final FeeelThemeMode mode,
      required final bool personalized}) = _$_FeeelThemeMeta;

  @override
  FeeelThemeMode get mode;
  @override
  bool get personalized;
  @override
  @JsonKey(ignore: true)
  _$$_FeeelThemeMetaCopyWith<_$_FeeelThemeMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
