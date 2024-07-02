// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) credentialLogin,
    required TResult Function() tokenLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? credentialLogin,
    TResult? Function()? tokenLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? credentialLogin,
    TResult Function()? tokenLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_credentialLogin value) credentialLogin,
    required TResult Function(_tokenLogin value) tokenLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_credentialLogin value)? credentialLogin,
    TResult? Function(_tokenLogin value)? tokenLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_credentialLogin value)? credentialLogin,
    TResult Function(_tokenLogin value)? tokenLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginMethodCopyWith<$Res> {
  factory $LoginMethodCopyWith(
          LoginMethod value, $Res Function(LoginMethod) then) =
      _$LoginMethodCopyWithImpl<$Res, LoginMethod>;
}

/// @nodoc
class _$LoginMethodCopyWithImpl<$Res, $Val extends LoginMethod>
    implements $LoginMethodCopyWith<$Res> {
  _$LoginMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$credentialLoginImplCopyWith<$Res> {
  factory _$$credentialLoginImplCopyWith(_$credentialLoginImpl value,
          $Res Function(_$credentialLoginImpl) then) =
      __$$credentialLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$credentialLoginImplCopyWithImpl<$Res>
    extends _$LoginMethodCopyWithImpl<$Res, _$credentialLoginImpl>
    implements _$$credentialLoginImplCopyWith<$Res> {
  __$$credentialLoginImplCopyWithImpl(
      _$credentialLoginImpl _value, $Res Function(_$credentialLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$credentialLoginImpl(
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

class _$credentialLoginImpl implements _credentialLogin {
  const _$credentialLoginImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginMethod.credentialLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$credentialLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$credentialLoginImplCopyWith<_$credentialLoginImpl> get copyWith =>
      __$$credentialLoginImplCopyWithImpl<_$credentialLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) credentialLogin,
    required TResult Function() tokenLogin,
  }) {
    return credentialLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? credentialLogin,
    TResult? Function()? tokenLogin,
  }) {
    return credentialLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? credentialLogin,
    TResult Function()? tokenLogin,
    required TResult orElse(),
  }) {
    if (credentialLogin != null) {
      return credentialLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_credentialLogin value) credentialLogin,
    required TResult Function(_tokenLogin value) tokenLogin,
  }) {
    return credentialLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_credentialLogin value)? credentialLogin,
    TResult? Function(_tokenLogin value)? tokenLogin,
  }) {
    return credentialLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_credentialLogin value)? credentialLogin,
    TResult Function(_tokenLogin value)? tokenLogin,
    required TResult orElse(),
  }) {
    if (credentialLogin != null) {
      return credentialLogin(this);
    }
    return orElse();
  }
}

abstract class _credentialLogin implements LoginMethod {
  const factory _credentialLogin(final String email, final String password) =
      _$credentialLoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$credentialLoginImplCopyWith<_$credentialLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$tokenLoginImplCopyWith<$Res> {
  factory _$$tokenLoginImplCopyWith(
          _$tokenLoginImpl value, $Res Function(_$tokenLoginImpl) then) =
      __$$tokenLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$tokenLoginImplCopyWithImpl<$Res>
    extends _$LoginMethodCopyWithImpl<$Res, _$tokenLoginImpl>
    implements _$$tokenLoginImplCopyWith<$Res> {
  __$$tokenLoginImplCopyWithImpl(
      _$tokenLoginImpl _value, $Res Function(_$tokenLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$tokenLoginImpl implements _tokenLogin {
  const _$tokenLoginImpl();

  @override
  String toString() {
    return 'LoginMethod.tokenLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$tokenLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) credentialLogin,
    required TResult Function() tokenLogin,
  }) {
    return tokenLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? credentialLogin,
    TResult? Function()? tokenLogin,
  }) {
    return tokenLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? credentialLogin,
    TResult Function()? tokenLogin,
    required TResult orElse(),
  }) {
    if (tokenLogin != null) {
      return tokenLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_credentialLogin value) credentialLogin,
    required TResult Function(_tokenLogin value) tokenLogin,
  }) {
    return tokenLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_credentialLogin value)? credentialLogin,
    TResult? Function(_tokenLogin value)? tokenLogin,
  }) {
    return tokenLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_credentialLogin value)? credentialLogin,
    TResult Function(_tokenLogin value)? tokenLogin,
    required TResult orElse(),
  }) {
    if (tokenLogin != null) {
      return tokenLogin(this);
    }
    return orElse();
  }
}

abstract class _tokenLogin implements LoginMethod {
  const factory _tokenLogin() = _$tokenLoginImpl;
}
