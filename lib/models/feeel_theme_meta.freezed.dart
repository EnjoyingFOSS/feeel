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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$FeeelThemeMetaImplCopyWith<$Res>
    implements $FeeelThemeMetaCopyWith<$Res> {
  factory _$$FeeelThemeMetaImplCopyWith(_$FeeelThemeMetaImpl value,
          $Res Function(_$FeeelThemeMetaImpl) then) =
      __$$FeeelThemeMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeeelThemeMode mode, bool personalized});
}

/// @nodoc
class __$$FeeelThemeMetaImplCopyWithImpl<$Res>
    extends _$FeeelThemeMetaCopyWithImpl<$Res, _$FeeelThemeMetaImpl>
    implements _$$FeeelThemeMetaImplCopyWith<$Res> {
  __$$FeeelThemeMetaImplCopyWithImpl(
      _$FeeelThemeMetaImpl _value, $Res Function(_$FeeelThemeMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? personalized = null,
  }) {
    return _then(_$FeeelThemeMetaImpl(
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

class _$FeeelThemeMetaImpl implements _FeeelThemeMeta {
  const _$FeeelThemeMetaImpl({required this.mode, required this.personalized});

  @override
  final FeeelThemeMode mode;
  @override
  final bool personalized;

  @override
  String toString() {
    return 'FeeelThemeMeta(mode: $mode, personalized: $personalized)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeelThemeMetaImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.personalized, personalized) ||
                other.personalized == personalized));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, personalized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeelThemeMetaImplCopyWith<_$FeeelThemeMetaImpl> get copyWith =>
      __$$FeeelThemeMetaImplCopyWithImpl<_$FeeelThemeMetaImpl>(
          this, _$identity);
}

abstract class _FeeelThemeMeta implements FeeelThemeMeta {
  const factory _FeeelThemeMeta(
      {required final FeeelThemeMode mode,
      required final bool personalized}) = _$FeeelThemeMetaImpl;

  @override
  FeeelThemeMode get mode;
  @override
  bool get personalized;
  @override
  @JsonKey(ignore: true)
  _$$FeeelThemeMetaImplCopyWith<_$FeeelThemeMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
