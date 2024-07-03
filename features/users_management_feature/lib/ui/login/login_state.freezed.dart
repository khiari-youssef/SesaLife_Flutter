// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInValidInput) idle,
    required TResult Function(String email) onEmailUpdated,
    required TResult Function(String password) onPasswordUpdated,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DomainErrorType errorType) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInValidInput)? idle,
    TResult? Function(String email)? onEmailUpdated,
    TResult? Function(String password)? onPasswordUpdated,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DomainErrorType errorType)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInValidInput)? idle,
    TResult Function(String email)? onEmailUpdated,
    TResult Function(String password)? onPasswordUpdated,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_onEmailUpdated value) onEmailUpdated,
    required TResult Function(_onPasswordUpdated value) onPasswordUpdated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_idle value)? idle,
    TResult? Function(_onEmailUpdated value)? onEmailUpdated,
    TResult? Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_onEmailUpdated value)? onEmailUpdated,
    TResult Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$idleImplCopyWith<$Res> {
  factory _$$idleImplCopyWith(
          _$idleImpl value, $Res Function(_$idleImpl) then) =
      __$$idleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasInValidInput});
}

/// @nodoc
class __$$idleImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$idleImpl>
    implements _$$idleImplCopyWith<$Res> {
  __$$idleImplCopyWithImpl(_$idleImpl _value, $Res Function(_$idleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasInValidInput = null,
  }) {
    return _then(_$idleImpl(
      null == hasInValidInput
          ? _value.hasInValidInput
          : hasInValidInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$idleImpl implements _idle {
  const _$idleImpl(this.hasInValidInput);

  @override
  final bool hasInValidInput;

  @override
  String toString() {
    return 'LoginState.idle(hasInValidInput: $hasInValidInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$idleImpl &&
            (identical(other.hasInValidInput, hasInValidInput) ||
                other.hasInValidInput == hasInValidInput));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasInValidInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$idleImplCopyWith<_$idleImpl> get copyWith =>
      __$$idleImplCopyWithImpl<_$idleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInValidInput) idle,
    required TResult Function(String email) onEmailUpdated,
    required TResult Function(String password) onPasswordUpdated,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return idle(hasInValidInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInValidInput)? idle,
    TResult? Function(String email)? onEmailUpdated,
    TResult? Function(String password)? onPasswordUpdated,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return idle?.call(hasInValidInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInValidInput)? idle,
    TResult Function(String email)? onEmailUpdated,
    TResult Function(String password)? onPasswordUpdated,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(hasInValidInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_onEmailUpdated value) onEmailUpdated,
    required TResult Function(_onPasswordUpdated value) onPasswordUpdated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_idle value)? idle,
    TResult? Function(_onEmailUpdated value)? onEmailUpdated,
    TResult? Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_onEmailUpdated value)? onEmailUpdated,
    TResult Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _idle implements LoginState {
  const factory _idle(final bool hasInValidInput) = _$idleImpl;

  bool get hasInValidInput;
  @JsonKey(ignore: true)
  _$$idleImplCopyWith<_$idleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onEmailUpdatedImplCopyWith<$Res> {
  factory _$$onEmailUpdatedImplCopyWith(_$onEmailUpdatedImpl value,
          $Res Function(_$onEmailUpdatedImpl) then) =
      __$$onEmailUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$onEmailUpdatedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$onEmailUpdatedImpl>
    implements _$$onEmailUpdatedImplCopyWith<$Res> {
  __$$onEmailUpdatedImplCopyWithImpl(
      _$onEmailUpdatedImpl _value, $Res Function(_$onEmailUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$onEmailUpdatedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onEmailUpdatedImpl implements _onEmailUpdated {
  const _$onEmailUpdatedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginState.onEmailUpdated(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onEmailUpdatedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onEmailUpdatedImplCopyWith<_$onEmailUpdatedImpl> get copyWith =>
      __$$onEmailUpdatedImplCopyWithImpl<_$onEmailUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInValidInput) idle,
    required TResult Function(String email) onEmailUpdated,
    required TResult Function(String password) onPasswordUpdated,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return onEmailUpdated(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInValidInput)? idle,
    TResult? Function(String email)? onEmailUpdated,
    TResult? Function(String password)? onPasswordUpdated,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return onEmailUpdated?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInValidInput)? idle,
    TResult Function(String email)? onEmailUpdated,
    TResult Function(String password)? onPasswordUpdated,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (onEmailUpdated != null) {
      return onEmailUpdated(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_onEmailUpdated value) onEmailUpdated,
    required TResult Function(_onPasswordUpdated value) onPasswordUpdated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return onEmailUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_idle value)? idle,
    TResult? Function(_onEmailUpdated value)? onEmailUpdated,
    TResult? Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return onEmailUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_onEmailUpdated value)? onEmailUpdated,
    TResult Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (onEmailUpdated != null) {
      return onEmailUpdated(this);
    }
    return orElse();
  }
}

abstract class _onEmailUpdated implements LoginState {
  const factory _onEmailUpdated(final String email) = _$onEmailUpdatedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$onEmailUpdatedImplCopyWith<_$onEmailUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onPasswordUpdatedImplCopyWith<$Res> {
  factory _$$onPasswordUpdatedImplCopyWith(_$onPasswordUpdatedImpl value,
          $Res Function(_$onPasswordUpdatedImpl) then) =
      __$$onPasswordUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$onPasswordUpdatedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$onPasswordUpdatedImpl>
    implements _$$onPasswordUpdatedImplCopyWith<$Res> {
  __$$onPasswordUpdatedImplCopyWithImpl(_$onPasswordUpdatedImpl _value,
      $Res Function(_$onPasswordUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$onPasswordUpdatedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onPasswordUpdatedImpl implements _onPasswordUpdated {
  const _$onPasswordUpdatedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginState.onPasswordUpdated(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onPasswordUpdatedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onPasswordUpdatedImplCopyWith<_$onPasswordUpdatedImpl> get copyWith =>
      __$$onPasswordUpdatedImplCopyWithImpl<_$onPasswordUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInValidInput) idle,
    required TResult Function(String email) onEmailUpdated,
    required TResult Function(String password) onPasswordUpdated,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return onPasswordUpdated(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInValidInput)? idle,
    TResult? Function(String email)? onEmailUpdated,
    TResult? Function(String password)? onPasswordUpdated,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return onPasswordUpdated?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInValidInput)? idle,
    TResult Function(String email)? onEmailUpdated,
    TResult Function(String password)? onPasswordUpdated,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (onPasswordUpdated != null) {
      return onPasswordUpdated(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_onEmailUpdated value) onEmailUpdated,
    required TResult Function(_onPasswordUpdated value) onPasswordUpdated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return onPasswordUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_idle value)? idle,
    TResult? Function(_onEmailUpdated value)? onEmailUpdated,
    TResult? Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return onPasswordUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_onEmailUpdated value)? onEmailUpdated,
    TResult Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (onPasswordUpdated != null) {
      return onPasswordUpdated(this);
    }
    return orElse();
  }
}

abstract class _onPasswordUpdated implements LoginState {
  const factory _onPasswordUpdated(final String password) =
      _$onPasswordUpdatedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$onPasswordUpdatedImplCopyWith<_$onPasswordUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInValidInput) idle,
    required TResult Function(String email) onEmailUpdated,
    required TResult Function(String password) onPasswordUpdated,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInValidInput)? idle,
    TResult? Function(String email)? onEmailUpdated,
    TResult? Function(String password)? onPasswordUpdated,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInValidInput)? idle,
    TResult Function(String email)? onEmailUpdated,
    TResult Function(String password)? onPasswordUpdated,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_idle value) idle,
    required TResult Function(_onEmailUpdated value) onEmailUpdated,
    required TResult Function(_onPasswordUpdated value) onPasswordUpdated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_idle value)? idle,
    TResult? Function(_onEmailUpdated value)? onEmailUpdated,
    TResult? Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_onEmailUpdated value)? onEmailUpdated,
    TResult Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInValidInput) idle,
    required TResult Function(String email) onEmailUpdated,
    required TResult Function(String password) onPasswordUpdated,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInValidInput)? idle,
    TResult? Function(String email)? onEmailUpdated,
    TResult? Function(String password)? onPasswordUpdated,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInValidInput)? idle,
    TResult Function(String email)? onEmailUpdated,
    TResult Function(String password)? onPasswordUpdated,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DomainErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_onEmailUpdated value) onEmailUpdated,
    required TResult Function(_onPasswordUpdated value) onPasswordUpdated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_idle value)? idle,
    TResult? Function(_onEmailUpdated value)? onEmailUpdated,
    TResult? Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_onEmailUpdated value)? onEmailUpdated,
    TResult Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DomainErrorType errorType});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
  }) {
    return _then(_$ErrorImpl(
      null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as DomainErrorType,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.errorType);

  @override
  final DomainErrorType errorType;

  @override
  String toString() {
    return 'LoginState.error(errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasInValidInput) idle,
    required TResult Function(String email) onEmailUpdated,
    required TResult Function(String password) onPasswordUpdated,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DomainErrorType errorType) error,
  }) {
    return error(errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasInValidInput)? idle,
    TResult? Function(String email)? onEmailUpdated,
    TResult? Function(String password)? onPasswordUpdated,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DomainErrorType errorType)? error,
  }) {
    return error?.call(errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasInValidInput)? idle,
    TResult Function(String email)? onEmailUpdated,
    TResult Function(String password)? onPasswordUpdated,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_idle value) idle,
    required TResult Function(_onEmailUpdated value) onEmailUpdated,
    required TResult Function(_onPasswordUpdated value) onPasswordUpdated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_idle value)? idle,
    TResult? Function(_onEmailUpdated value)? onEmailUpdated,
    TResult? Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_onEmailUpdated value)? onEmailUpdated,
    TResult Function(_onPasswordUpdated value)? onPasswordUpdated,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error(final DomainErrorType errorType) = _$ErrorImpl;

  DomainErrorType get errorType;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_updateEmail value) updateEmail,
    required TResult Function(_updatePassword value) updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_updateEmail value)? updateEmail,
    TResult? Function(_updatePassword value)? updatePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_updateEmail value)? updateEmail,
    TResult Function(_updatePassword value)? updatePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loginImplCopyWith<$Res> {
  factory _$$loginImplCopyWith(
          _$loginImpl value, $Res Function(_$loginImpl) then) =
      __$$loginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$loginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$loginImpl>
    implements _$$loginImplCopyWith<$Res> {
  __$$loginImplCopyWithImpl(
      _$loginImpl _value, $Res Function(_$loginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$loginImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$loginImpl implements _login {
  const _$loginImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginImplCopyWith<_$loginImpl> get copyWith =>
      __$$loginImplCopyWithImpl<_$loginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_updateEmail value) updateEmail,
    required TResult Function(_updatePassword value) updatePassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_updateEmail value)? updateEmail,
    TResult? Function(_updatePassword value)? updatePassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_updateEmail value)? updateEmail,
    TResult Function(_updatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _login implements LoginEvent {
  const factory _login(final String email, final String password) = _$loginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$loginImplCopyWith<_$loginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateEmailImplCopyWith<$Res> {
  factory _$$updateEmailImplCopyWith(
          _$updateEmailImpl value, $Res Function(_$updateEmailImpl) then) =
      __$$updateEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$updateEmailImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$updateEmailImpl>
    implements _$$updateEmailImplCopyWith<$Res> {
  __$$updateEmailImplCopyWithImpl(
      _$updateEmailImpl _value, $Res Function(_$updateEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$updateEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updateEmailImpl implements _updateEmail {
  const _$updateEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateEmailImplCopyWith<_$updateEmailImpl> get copyWith =>
      __$$updateEmailImplCopyWithImpl<_$updateEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_updateEmail value) updateEmail,
    required TResult Function(_updatePassword value) updatePassword,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_updateEmail value)? updateEmail,
    TResult? Function(_updatePassword value)? updatePassword,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_updateEmail value)? updateEmail,
    TResult Function(_updatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _updateEmail implements LoginEvent {
  const factory _updateEmail(final String email) = _$updateEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$updateEmailImplCopyWith<_$updateEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updatePasswordImplCopyWith<$Res> {
  factory _$$updatePasswordImplCopyWith(_$updatePasswordImpl value,
          $Res Function(_$updatePasswordImpl) then) =
      __$$updatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$updatePasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$updatePasswordImpl>
    implements _$$updatePasswordImplCopyWith<$Res> {
  __$$updatePasswordImplCopyWithImpl(
      _$updatePasswordImpl _value, $Res Function(_$updatePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$updatePasswordImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updatePasswordImpl implements _updatePassword {
  const _$updatePasswordImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updatePasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updatePasswordImplCopyWith<_$updatePasswordImpl> get copyWith =>
      __$$updatePasswordImplCopyWithImpl<_$updatePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_updateEmail value) updateEmail,
    required TResult Function(_updatePassword value) updatePassword,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_updateEmail value)? updateEmail,
    TResult? Function(_updatePassword value)? updatePassword,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_updateEmail value)? updateEmail,
    TResult Function(_updatePassword value)? updatePassword,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _updatePassword implements LoginEvent {
  const factory _updatePassword(final String password) = _$updatePasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$updatePasswordImplCopyWith<_$updatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
