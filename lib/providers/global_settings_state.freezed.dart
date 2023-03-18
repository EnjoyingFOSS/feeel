// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalSettingsState {
//todo required Locale preferredLocale,
  FeeelTheme get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalSettingsStateCopyWith<GlobalSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalSettingsStateCopyWith<$Res> {
  factory $GlobalSettingsStateCopyWith(
          GlobalSettingsState value, $Res Function(GlobalSettingsState) then) =
      _$GlobalSettingsStateCopyWithImpl<$Res, GlobalSettingsState>;
  @useResult
  $Res call({FeeelTheme theme});

  $FeeelThemeCopyWith<$Res> get theme;
}

/// @nodoc
class _$GlobalSettingsStateCopyWithImpl<$Res, $Val extends GlobalSettingsState>
    implements $GlobalSettingsStateCopyWith<$Res> {
  _$GlobalSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as FeeelTheme,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeeelThemeCopyWith<$Res> get theme {
    return $FeeelThemeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GlobalSettingsStateCopyWith<$Res>
    implements $GlobalSettingsStateCopyWith<$Res> {
  factory _$$_GlobalSettingsStateCopyWith(_$_GlobalSettingsState value,
          $Res Function(_$_GlobalSettingsState) then) =
      __$$_GlobalSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeeelTheme theme});

  @override
  $FeeelThemeCopyWith<$Res> get theme;
}

/// @nodoc
class __$$_GlobalSettingsStateCopyWithImpl<$Res>
    extends _$GlobalSettingsStateCopyWithImpl<$Res, _$_GlobalSettingsState>
    implements _$$_GlobalSettingsStateCopyWith<$Res> {
  __$$_GlobalSettingsStateCopyWithImpl(_$_GlobalSettingsState _value,
      $Res Function(_$_GlobalSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_GlobalSettingsState(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as FeeelTheme,
    ));
  }
}

/// @nodoc

class _$_GlobalSettingsState implements _GlobalSettingsState {
  const _$_GlobalSettingsState({required this.theme});

//todo required Locale preferredLocale,
  @override
  final FeeelTheme theme;

  @override
  String toString() {
    return 'GlobalSettingsState(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalSettingsState &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalSettingsStateCopyWith<_$_GlobalSettingsState> get copyWith =>
      __$$_GlobalSettingsStateCopyWithImpl<_$_GlobalSettingsState>(
          this, _$identity);
}

abstract class _GlobalSettingsState implements GlobalSettingsState {
  const factory _GlobalSettingsState({required final FeeelTheme theme}) =
      _$_GlobalSettingsState;

  @override //todo required Locale preferredLocale,
  FeeelTheme get theme;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalSettingsStateCopyWith<_$_GlobalSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
