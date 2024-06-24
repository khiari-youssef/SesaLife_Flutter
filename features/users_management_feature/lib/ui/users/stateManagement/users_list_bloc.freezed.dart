// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersListEvent {
  String? get nameQuery => throw _privateConstructorUsedError;
  bool? get withMoreDetails => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? nameQuery, bool? withMoreDetails)
        loadUsersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? nameQuery, bool? withMoreDetails)? loadUsersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? nameQuery, bool? withMoreDetails)? loadUsersList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadUsersList value) loadUsersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadUsersList value)? loadUsersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadUsersList value)? loadUsersList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersListEventCopyWith<UsersListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListEventCopyWith<$Res> {
  factory $UsersListEventCopyWith(
          UsersListEvent value, $Res Function(UsersListEvent) then) =
      _$UsersListEventCopyWithImpl<$Res, UsersListEvent>;
  @useResult
  $Res call({String? nameQuery, bool? withMoreDetails});
}

/// @nodoc
class _$UsersListEventCopyWithImpl<$Res, $Val extends UsersListEvent>
    implements $UsersListEventCopyWith<$Res> {
  _$UsersListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameQuery = freezed,
    Object? withMoreDetails = freezed,
  }) {
    return _then(_value.copyWith(
      nameQuery: freezed == nameQuery
          ? _value.nameQuery
          : nameQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      withMoreDetails: freezed == withMoreDetails
          ? _value.withMoreDetails
          : withMoreDetails // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$loadUsersListImplCopyWith<$Res>
    implements $UsersListEventCopyWith<$Res> {
  factory _$$loadUsersListImplCopyWith(
          _$loadUsersListImpl value, $Res Function(_$loadUsersListImpl) then) =
      __$$loadUsersListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nameQuery, bool? withMoreDetails});
}

/// @nodoc
class __$$loadUsersListImplCopyWithImpl<$Res>
    extends _$UsersListEventCopyWithImpl<$Res, _$loadUsersListImpl>
    implements _$$loadUsersListImplCopyWith<$Res> {
  __$$loadUsersListImplCopyWithImpl(
      _$loadUsersListImpl _value, $Res Function(_$loadUsersListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameQuery = freezed,
    Object? withMoreDetails = freezed,
  }) {
    return _then(_$loadUsersListImpl(
      nameQuery: freezed == nameQuery
          ? _value.nameQuery
          : nameQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      withMoreDetails: freezed == withMoreDetails
          ? _value.withMoreDetails
          : withMoreDetails // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$loadUsersListImpl implements _loadUsersList {
  const _$loadUsersListImpl({this.nameQuery, this.withMoreDetails});

  @override
  final String? nameQuery;
  @override
  final bool? withMoreDetails;

  @override
  String toString() {
    return 'UsersListEvent.loadUsersList(nameQuery: $nameQuery, withMoreDetails: $withMoreDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadUsersListImpl &&
            (identical(other.nameQuery, nameQuery) ||
                other.nameQuery == nameQuery) &&
            (identical(other.withMoreDetails, withMoreDetails) ||
                other.withMoreDetails == withMoreDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameQuery, withMoreDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loadUsersListImplCopyWith<_$loadUsersListImpl> get copyWith =>
      __$$loadUsersListImplCopyWithImpl<_$loadUsersListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? nameQuery, bool? withMoreDetails)
        loadUsersList,
  }) {
    return loadUsersList(nameQuery, withMoreDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? nameQuery, bool? withMoreDetails)? loadUsersList,
  }) {
    return loadUsersList?.call(nameQuery, withMoreDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? nameQuery, bool? withMoreDetails)? loadUsersList,
    required TResult orElse(),
  }) {
    if (loadUsersList != null) {
      return loadUsersList(nameQuery, withMoreDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadUsersList value) loadUsersList,
  }) {
    return loadUsersList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadUsersList value)? loadUsersList,
  }) {
    return loadUsersList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadUsersList value)? loadUsersList,
    required TResult orElse(),
  }) {
    if (loadUsersList != null) {
      return loadUsersList(this);
    }
    return orElse();
  }
}

abstract class _loadUsersList implements UsersListEvent {
  const factory _loadUsersList(
      {final String? nameQuery,
      final bool? withMoreDetails}) = _$loadUsersListImpl;

  @override
  String? get nameQuery;
  @override
  bool? get withMoreDetails;
  @override
  @JsonKey(ignore: true)
  _$$loadUsersListImplCopyWith<_$loadUsersListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserProfilePreview>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<UserProfilePreview> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserProfilePreview>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<UserProfilePreview> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserProfilePreview>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<UserProfilePreview> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListStateCopyWith<$Res> {
  factory $UsersListStateCopyWith(
          UsersListState value, $Res Function(UsersListState) then) =
      _$UsersListStateCopyWithImpl<$Res, UsersListState>;
}

/// @nodoc
class _$UsersListStateCopyWithImpl<$Res, $Val extends UsersListState>
    implements $UsersListStateCopyWith<$Res> {
  _$UsersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserProfilePreview>? initialData});
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialData = freezed,
  }) {
    return _then(_$initialImpl(
      initialData: freezed == initialData
          ? _value._initialData
          : initialData // ignore: cast_nullable_to_non_nullable
              as List<UserProfilePreview>?,
    ));
  }
}

/// @nodoc

class _$initialImpl implements _initial {
  const _$initialImpl({final List<UserProfilePreview>? initialData})
      : _initialData = initialData;

  final List<UserProfilePreview>? _initialData;
  @override
  List<UserProfilePreview>? get initialData {
    final value = _initialData;
    if (value == null) return null;
    if (_initialData is EqualUnmodifiableListView) return _initialData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UsersListState.initial(initialData: $initialData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$initialImpl &&
            const DeepCollectionEquality()
                .equals(other._initialData, _initialData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_initialData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      __$$initialImplCopyWithImpl<_$initialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserProfilePreview>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<UserProfilePreview> data) success,
  }) {
    return initial(initialData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserProfilePreview>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<UserProfilePreview> data)? success,
  }) {
    return initial?.call(initialData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserProfilePreview>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<UserProfilePreview> data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(initialData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial implements UsersListState {
  const factory _initial({final List<UserProfilePreview>? initialData}) =
      _$initialImpl;

  List<UserProfilePreview>? get initialData;
  @JsonKey(ignore: true)
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl implements _loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'UsersListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserProfilePreview>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<UserProfilePreview> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserProfilePreview>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<UserProfilePreview> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserProfilePreview>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<UserProfilePreview> data)? success,
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
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements UsersListState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DomainErrorType errorType});
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = null,
  }) {
    return _then(_$errorImpl(
      null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as DomainErrorType,
    ));
  }
}

/// @nodoc

class _$errorImpl implements _error {
  const _$errorImpl(this.errorType);

  @override
  final DomainErrorType errorType;

  @override
  String toString() {
    return 'UsersListState.error(errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      __$$errorImplCopyWithImpl<_$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserProfilePreview>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<UserProfilePreview> data) success,
  }) {
    return error(errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserProfilePreview>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<UserProfilePreview> data)? success,
  }) {
    return error?.call(errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserProfilePreview>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<UserProfilePreview> data)? success,
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
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements UsersListState {
  const factory _error(final DomainErrorType errorType) = _$errorImpl;

  DomainErrorType get errorType;
  @JsonKey(ignore: true)
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserProfilePreview> data});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$UsersListStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$successImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserProfilePreview>,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(final List<UserProfilePreview> data) : _data = data;

  final List<UserProfilePreview> _data;
  @override
  List<UserProfilePreview> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UsersListState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserProfilePreview>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<UserProfilePreview> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserProfilePreview>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<UserProfilePreview> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserProfilePreview>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<UserProfilePreview> data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements UsersListState {
  const factory _success(final List<UserProfilePreview> data) = _$successImpl;

  List<UserProfilePreview> get data;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
