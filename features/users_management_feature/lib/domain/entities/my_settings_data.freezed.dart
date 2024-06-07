// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_settings_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MySettingsData {
  bool get isStayLoggedInOptionEnabled => throw _privateConstructorUsedError;
  bool get isHideMyWorkDataOptionEnabled => throw _privateConstructorUsedError;
  bool get isToggleNotifyMeOptionEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MySettingsDataCopyWith<MySettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySettingsDataCopyWith<$Res> {
  factory $MySettingsDataCopyWith(
          MySettingsData value, $Res Function(MySettingsData) then) =
      _$MySettingsDataCopyWithImpl<$Res, MySettingsData>;
  @useResult
  $Res call(
      {bool isStayLoggedInOptionEnabled,
      bool isHideMyWorkDataOptionEnabled,
      bool isToggleNotifyMeOptionEnabled});
}

/// @nodoc
class _$MySettingsDataCopyWithImpl<$Res, $Val extends MySettingsData>
    implements $MySettingsDataCopyWith<$Res> {
  _$MySettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStayLoggedInOptionEnabled = null,
    Object? isHideMyWorkDataOptionEnabled = null,
    Object? isToggleNotifyMeOptionEnabled = null,
  }) {
    return _then(_value.copyWith(
      isStayLoggedInOptionEnabled: null == isStayLoggedInOptionEnabled
          ? _value.isStayLoggedInOptionEnabled
          : isStayLoggedInOptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isHideMyWorkDataOptionEnabled: null == isHideMyWorkDataOptionEnabled
          ? _value.isHideMyWorkDataOptionEnabled
          : isHideMyWorkDataOptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isToggleNotifyMeOptionEnabled: null == isToggleNotifyMeOptionEnabled
          ? _value.isToggleNotifyMeOptionEnabled
          : isToggleNotifyMeOptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MySettingsDataImplCopyWith<$Res>
    implements $MySettingsDataCopyWith<$Res> {
  factory _$$MySettingsDataImplCopyWith(_$MySettingsDataImpl value,
          $Res Function(_$MySettingsDataImpl) then) =
      __$$MySettingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isStayLoggedInOptionEnabled,
      bool isHideMyWorkDataOptionEnabled,
      bool isToggleNotifyMeOptionEnabled});
}

/// @nodoc
class __$$MySettingsDataImplCopyWithImpl<$Res>
    extends _$MySettingsDataCopyWithImpl<$Res, _$MySettingsDataImpl>
    implements _$$MySettingsDataImplCopyWith<$Res> {
  __$$MySettingsDataImplCopyWithImpl(
      _$MySettingsDataImpl _value, $Res Function(_$MySettingsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStayLoggedInOptionEnabled = null,
    Object? isHideMyWorkDataOptionEnabled = null,
    Object? isToggleNotifyMeOptionEnabled = null,
  }) {
    return _then(_$MySettingsDataImpl(
      isStayLoggedInOptionEnabled: null == isStayLoggedInOptionEnabled
          ? _value.isStayLoggedInOptionEnabled
          : isStayLoggedInOptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isHideMyWorkDataOptionEnabled: null == isHideMyWorkDataOptionEnabled
          ? _value.isHideMyWorkDataOptionEnabled
          : isHideMyWorkDataOptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isToggleNotifyMeOptionEnabled: null == isToggleNotifyMeOptionEnabled
          ? _value.isToggleNotifyMeOptionEnabled
          : isToggleNotifyMeOptionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MySettingsDataImpl implements _MySettingsData {
  const _$MySettingsDataImpl(
      {required this.isStayLoggedInOptionEnabled,
      required this.isHideMyWorkDataOptionEnabled,
      required this.isToggleNotifyMeOptionEnabled});

  @override
  final bool isStayLoggedInOptionEnabled;
  @override
  final bool isHideMyWorkDataOptionEnabled;
  @override
  final bool isToggleNotifyMeOptionEnabled;

  @override
  String toString() {
    return 'MySettingsData(isStayLoggedInOptionEnabled: $isStayLoggedInOptionEnabled, isHideMyWorkDataOptionEnabled: $isHideMyWorkDataOptionEnabled, isToggleNotifyMeOptionEnabled: $isToggleNotifyMeOptionEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MySettingsDataImpl &&
            (identical(other.isStayLoggedInOptionEnabled,
                    isStayLoggedInOptionEnabled) ||
                other.isStayLoggedInOptionEnabled ==
                    isStayLoggedInOptionEnabled) &&
            (identical(other.isHideMyWorkDataOptionEnabled,
                    isHideMyWorkDataOptionEnabled) ||
                other.isHideMyWorkDataOptionEnabled ==
                    isHideMyWorkDataOptionEnabled) &&
            (identical(other.isToggleNotifyMeOptionEnabled,
                    isToggleNotifyMeOptionEnabled) ||
                other.isToggleNotifyMeOptionEnabled ==
                    isToggleNotifyMeOptionEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isStayLoggedInOptionEnabled,
      isHideMyWorkDataOptionEnabled, isToggleNotifyMeOptionEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MySettingsDataImplCopyWith<_$MySettingsDataImpl> get copyWith =>
      __$$MySettingsDataImplCopyWithImpl<_$MySettingsDataImpl>(
          this, _$identity);
}

abstract class _MySettingsData implements MySettingsData {
  const factory _MySettingsData(
          {required final bool isStayLoggedInOptionEnabled,
          required final bool isHideMyWorkDataOptionEnabled,
          required final bool isToggleNotifyMeOptionEnabled}) =
      _$MySettingsDataImpl;

  @override
  bool get isStayLoggedInOptionEnabled;
  @override
  bool get isHideMyWorkDataOptionEnabled;
  @override
  bool get isToggleNotifyMeOptionEnabled;
  @override
  @JsonKey(ignore: true)
  _$$MySettingsDataImplCopyWith<_$MySettingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
