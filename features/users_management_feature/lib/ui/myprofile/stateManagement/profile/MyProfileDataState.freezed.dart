// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MyProfileDataState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyProfileDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SesameUser sesameUser) success,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SesameUser sesameUser)? success,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SesameUser sesameUser)? success,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$success value) success,
    required TResult Function(_$loading value) loading,
    required TResult Function(_$error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$success value)? success,
    TResult? Function(_$loading value)? loading,
    TResult? Function(_$error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$success value)? success,
    TResult Function(_$loading value)? loading,
    TResult Function(_$error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileDataStateCopyWith<$Res> {
  factory $MyProfileDataStateCopyWith(
          MyProfileDataState value, $Res Function(MyProfileDataState) then) =
      _$MyProfileDataStateCopyWithImpl<$Res, MyProfileDataState>;
}

/// @nodoc
class _$MyProfileDataStateCopyWithImpl<$Res, $Val extends MyProfileDataState>
    implements $MyProfileDataStateCopyWith<$Res> {
  _$MyProfileDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$successImplCopyWith<$Res> {
  factory _$$$successImplCopyWith(
          _$$successImpl value, $Res Function(_$$successImpl) then) =
      __$$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SesameUser sesameUser});
}

/// @nodoc
class __$$$successImplCopyWithImpl<$Res>
    extends _$MyProfileDataStateCopyWithImpl<$Res, _$$successImpl>
    implements _$$$successImplCopyWith<$Res> {
  __$$$successImplCopyWithImpl(
      _$$successImpl _value, $Res Function(_$$successImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sesameUser = null,
  }) {
    return _then(_$$successImpl(
      null == sesameUser
          ? _value.sesameUser
          : sesameUser // ignore: cast_nullable_to_non_nullable
              as SesameUser,
    ));
  }
}

/// @nodoc

class _$$successImpl implements _$success {
  const _$$successImpl(this.sesameUser);

  @override
  final SesameUser sesameUser;

  @override
  String toString() {
    return 'MyProfileDataState.success(sesameUser: $sesameUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$successImpl &&
            (identical(other.sesameUser, sesameUser) ||
                other.sesameUser == sesameUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sesameUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$successImplCopyWith<_$$successImpl> get copyWith =>
      __$$$successImplCopyWithImpl<_$$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SesameUser sesameUser) success,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return success(sesameUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SesameUser sesameUser)? success,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return success?.call(sesameUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SesameUser sesameUser)? success,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(sesameUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$success value) success,
    required TResult Function(_$loading value) loading,
    required TResult Function(_$error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$success value)? success,
    TResult? Function(_$loading value)? loading,
    TResult? Function(_$error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$success value)? success,
    TResult Function(_$loading value)? loading,
    TResult Function(_$error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$success implements MyProfileDataState {
  const factory _$success(final SesameUser sesameUser) = _$$successImpl;

  SesameUser get sesameUser;
  @JsonKey(ignore: true)
  _$$$successImplCopyWith<_$$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$loadingImplCopyWith<$Res> {
  factory _$$$loadingImplCopyWith(
          _$$loadingImpl value, $Res Function(_$$loadingImpl) then) =
      __$$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$loadingImplCopyWithImpl<$Res>
    extends _$MyProfileDataStateCopyWithImpl<$Res, _$$loadingImpl>
    implements _$$$loadingImplCopyWith<$Res> {
  __$$$loadingImplCopyWithImpl(
      _$$loadingImpl _value, $Res Function(_$$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$loadingImpl implements _$loading {
  const _$$loadingImpl();

  @override
  String toString() {
    return 'MyProfileDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SesameUser sesameUser) success,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SesameUser sesameUser)? success,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SesameUser sesameUser)? success,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$success value) success,
    required TResult Function(_$loading value) loading,
    required TResult Function(_$error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$success value)? success,
    TResult? Function(_$loading value)? loading,
    TResult? Function(_$error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$success value)? success,
    TResult Function(_$loading value)? loading,
    TResult Function(_$error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$loading implements MyProfileDataState {
  const factory _$loading() = _$$loadingImpl;
}

/// @nodoc
abstract class _$$$errorImplCopyWith<$Res> {
  factory _$$$errorImplCopyWith(
          _$$errorImpl value, $Res Function(_$$errorImpl) then) =
      __$$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DomainErrorType errorType});
}

/// @nodoc
class __$$$errorImplCopyWithImpl<$Res>
    extends _$MyProfileDataStateCopyWithImpl<$Res, _$$errorImpl>
    implements _$$$errorImplCopyWith<$Res> {
  __$$$errorImplCopyWithImpl(
      _$$errorImpl _value, $Res Function(_$$errorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
  }) {
    return _then(_$$errorImpl(
      null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as DomainErrorType,
    ));
  }
}

/// @nodoc

class _$$errorImpl implements _$error {
  const _$$errorImpl(this.errorType);

  @override
  final DomainErrorType errorType;

  @override
  String toString() {
    return 'MyProfileDataState.error(errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$errorImpl &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$errorImplCopyWith<_$$errorImpl> get copyWith =>
      __$$$errorImplCopyWithImpl<_$$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SesameUser sesameUser) success,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return error(errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SesameUser sesameUser)? success,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return error?.call(errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SesameUser sesameUser)? success,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$success value) success,
    required TResult Function(_$loading value) loading,
    required TResult Function(_$error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$success value)? success,
    TResult? Function(_$loading value)? loading,
    TResult? Function(_$error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$success value)? success,
    TResult Function(_$loading value)? loading,
    TResult Function(_$error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$error implements MyProfileDataState {
  const factory _$error(final DomainErrorType errorType) = _$$errorImpl;

  DomainErrorType get errorType;
  @JsonKey(ignore: true)
  _$$$errorImplCopyWith<_$$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
