// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MyProfileScreenGlobalState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyProfileScreenGlobalState {
  MyProfileDataState get profileDataState => throw _privateConstructorUsedError;
  bool get isLoggedOut => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyProfileScreenGlobalStateCopyWith<MyProfileScreenGlobalState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileScreenGlobalStateCopyWith<$Res> {
  factory $MyProfileScreenGlobalStateCopyWith(MyProfileScreenGlobalState value,
          $Res Function(MyProfileScreenGlobalState) then) =
      _$MyProfileScreenGlobalStateCopyWithImpl<$Res,
          MyProfileScreenGlobalState>;
  @useResult
  $Res call({MyProfileDataState profileDataState, bool isLoggedOut});

  $MyProfileDataStateCopyWith<$Res> get profileDataState;
}

/// @nodoc
class _$MyProfileScreenGlobalStateCopyWithImpl<$Res,
        $Val extends MyProfileScreenGlobalState>
    implements $MyProfileScreenGlobalStateCopyWith<$Res> {
  _$MyProfileScreenGlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileDataState = null,
    Object? isLoggedOut = null,
  }) {
    return _then(_value.copyWith(
      profileDataState: null == profileDataState
          ? _value.profileDataState
          : profileDataState // ignore: cast_nullable_to_non_nullable
              as MyProfileDataState,
      isLoggedOut: null == isLoggedOut
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyProfileDataStateCopyWith<$Res> get profileDataState {
    return $MyProfileDataStateCopyWith<$Res>(_value.profileDataState, (value) {
      return _then(_value.copyWith(profileDataState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyProfileScreenGlobalStateImplCopyWith<$Res>
    implements $MyProfileScreenGlobalStateCopyWith<$Res> {
  factory _$$MyProfileScreenGlobalStateImplCopyWith(
          _$MyProfileScreenGlobalStateImpl value,
          $Res Function(_$MyProfileScreenGlobalStateImpl) then) =
      __$$MyProfileScreenGlobalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyProfileDataState profileDataState, bool isLoggedOut});

  @override
  $MyProfileDataStateCopyWith<$Res> get profileDataState;
}

/// @nodoc
class __$$MyProfileScreenGlobalStateImplCopyWithImpl<$Res>
    extends _$MyProfileScreenGlobalStateCopyWithImpl<$Res,
        _$MyProfileScreenGlobalStateImpl>
    implements _$$MyProfileScreenGlobalStateImplCopyWith<$Res> {
  __$$MyProfileScreenGlobalStateImplCopyWithImpl(
      _$MyProfileScreenGlobalStateImpl _value,
      $Res Function(_$MyProfileScreenGlobalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileDataState = null,
    Object? isLoggedOut = null,
  }) {
    return _then(_$MyProfileScreenGlobalStateImpl(
      profileDataState: null == profileDataState
          ? _value.profileDataState
          : profileDataState // ignore: cast_nullable_to_non_nullable
              as MyProfileDataState,
      isLoggedOut: null == isLoggedOut
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyProfileScreenGlobalStateImpl implements _MyProfileScreenGlobalState {
  const _$MyProfileScreenGlobalStateImpl(
      {required this.profileDataState, required this.isLoggedOut});

  @override
  final MyProfileDataState profileDataState;
  @override
  final bool isLoggedOut;

  @override
  String toString() {
    return 'MyProfileScreenGlobalState(profileDataState: $profileDataState, isLoggedOut: $isLoggedOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProfileScreenGlobalStateImpl &&
            (identical(other.profileDataState, profileDataState) ||
                other.profileDataState == profileDataState) &&
            (identical(other.isLoggedOut, isLoggedOut) ||
                other.isLoggedOut == isLoggedOut));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileDataState, isLoggedOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProfileScreenGlobalStateImplCopyWith<_$MyProfileScreenGlobalStateImpl>
      get copyWith => __$$MyProfileScreenGlobalStateImplCopyWithImpl<
          _$MyProfileScreenGlobalStateImpl>(this, _$identity);
}

abstract class _MyProfileScreenGlobalState
    implements MyProfileScreenGlobalState {
  const factory _MyProfileScreenGlobalState(
      {required final MyProfileDataState profileDataState,
      required final bool isLoggedOut}) = _$MyProfileScreenGlobalStateImpl;

  @override
  MyProfileDataState get profileDataState;
  @override
  bool get isLoggedOut;
  @override
  @JsonKey(ignore: true)
  _$$MyProfileScreenGlobalStateImplCopyWith<_$MyProfileScreenGlobalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
