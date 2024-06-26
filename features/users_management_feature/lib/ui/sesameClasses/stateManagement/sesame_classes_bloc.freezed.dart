// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sesame_classes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SesameClassesEvent {
  String? get searchQuery => throw _privateConstructorUsedError;
  SesameClassSearchFilter? get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? searchQuery, SesameClassSearchFilter? filter)
        loadSesameClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchQuery, SesameClassSearchFilter? filter)?
        loadSesameClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchQuery, SesameClassSearchFilter? filter)?
        loadSesameClasses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadSesameClasses value) loadSesameClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadSesameClasses value)? loadSesameClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadSesameClasses value)? loadSesameClasses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SesameClassesEventCopyWith<SesameClassesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesameClassesEventCopyWith<$Res> {
  factory $SesameClassesEventCopyWith(
          SesameClassesEvent value, $Res Function(SesameClassesEvent) then) =
      _$SesameClassesEventCopyWithImpl<$Res, SesameClassesEvent>;
  @useResult
  $Res call({String? searchQuery, SesameClassSearchFilter? filter});
}

/// @nodoc
class _$SesameClassesEventCopyWithImpl<$Res, $Val extends SesameClassesEvent>
    implements $SesameClassesEventCopyWith<$Res> {
  _$SesameClassesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SesameClassSearchFilter?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$loadSesameClassesImplCopyWith<$Res>
    implements $SesameClassesEventCopyWith<$Res> {
  factory _$$loadSesameClassesImplCopyWith(_$loadSesameClassesImpl value,
          $Res Function(_$loadSesameClassesImpl) then) =
      __$$loadSesameClassesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchQuery, SesameClassSearchFilter? filter});
}

/// @nodoc
class __$$loadSesameClassesImplCopyWithImpl<$Res>
    extends _$SesameClassesEventCopyWithImpl<$Res, _$loadSesameClassesImpl>
    implements _$$loadSesameClassesImplCopyWith<$Res> {
  __$$loadSesameClassesImplCopyWithImpl(_$loadSesameClassesImpl _value,
      $Res Function(_$loadSesameClassesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$loadSesameClassesImpl(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SesameClassSearchFilter?,
    ));
  }
}

/// @nodoc

class _$loadSesameClassesImpl implements _loadSesameClasses {
  const _$loadSesameClassesImpl({this.searchQuery, this.filter});

  @override
  final String? searchQuery;
  @override
  final SesameClassSearchFilter? filter;

  @override
  String toString() {
    return 'SesameClassesEvent.loadSesameClasses(searchQuery: $searchQuery, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadSesameClassesImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loadSesameClassesImplCopyWith<_$loadSesameClassesImpl> get copyWith =>
      __$$loadSesameClassesImplCopyWithImpl<_$loadSesameClassesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? searchQuery, SesameClassSearchFilter? filter)
        loadSesameClasses,
  }) {
    return loadSesameClasses(searchQuery, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchQuery, SesameClassSearchFilter? filter)?
        loadSesameClasses,
  }) {
    return loadSesameClasses?.call(searchQuery, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchQuery, SesameClassSearchFilter? filter)?
        loadSesameClasses,
    required TResult orElse(),
  }) {
    if (loadSesameClasses != null) {
      return loadSesameClasses(searchQuery, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadSesameClasses value) loadSesameClasses,
  }) {
    return loadSesameClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadSesameClasses value)? loadSesameClasses,
  }) {
    return loadSesameClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadSesameClasses value)? loadSesameClasses,
    required TResult orElse(),
  }) {
    if (loadSesameClasses != null) {
      return loadSesameClasses(this);
    }
    return orElse();
  }
}

abstract class _loadSesameClasses implements SesameClassesEvent {
  const factory _loadSesameClasses(
      {final String? searchQuery,
      final SesameClassSearchFilter? filter}) = _$loadSesameClassesImpl;

  @override
  String? get searchQuery;
  @override
  SesameClassSearchFilter? get filter;
  @override
  @JsonKey(ignore: true)
  _$$loadSesameClassesImplCopyWith<_$loadSesameClassesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SesameClassesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SesameClassGroups>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<SesameClassGroups> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SesameClassGroups>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<SesameClassGroups> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SesameClassGroups>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<SesameClassGroups> data)? success,
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
abstract class $SesameClassesStateCopyWith<$Res> {
  factory $SesameClassesStateCopyWith(
          SesameClassesState value, $Res Function(SesameClassesState) then) =
      _$SesameClassesStateCopyWithImpl<$Res, SesameClassesState>;
}

/// @nodoc
class _$SesameClassesStateCopyWithImpl<$Res, $Val extends SesameClassesState>
    implements $SesameClassesStateCopyWith<$Res> {
  _$SesameClassesStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<SesameClassGroups>? initialData});
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$SesameClassesStateCopyWithImpl<$Res, _$initialImpl>
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
              as List<SesameClassGroups>?,
    ));
  }
}

/// @nodoc

class _$initialImpl implements _initial {
  const _$initialImpl({final List<SesameClassGroups>? initialData})
      : _initialData = initialData;

  final List<SesameClassGroups>? _initialData;
  @override
  List<SesameClassGroups>? get initialData {
    final value = _initialData;
    if (value == null) return null;
    if (_initialData is EqualUnmodifiableListView) return _initialData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SesameClassesState.initial(initialData: $initialData)';
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
    required TResult Function(List<SesameClassGroups>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<SesameClassGroups> data) success,
  }) {
    return initial(initialData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SesameClassGroups>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<SesameClassGroups> data)? success,
  }) {
    return initial?.call(initialData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SesameClassGroups>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<SesameClassGroups> data)? success,
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

abstract class _initial implements SesameClassesState {
  const factory _initial({final List<SesameClassGroups>? initialData}) =
      _$initialImpl;

  List<SesameClassGroups>? get initialData;
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
    extends _$SesameClassesStateCopyWithImpl<$Res, _$loadingImpl>
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
    return 'SesameClassesState.loading()';
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
    required TResult Function(List<SesameClassGroups>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<SesameClassGroups> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SesameClassGroups>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<SesameClassGroups> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SesameClassGroups>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<SesameClassGroups> data)? success,
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

abstract class _loading implements SesameClassesState {
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
    extends _$SesameClassesStateCopyWithImpl<$Res, _$errorImpl>
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
    return 'SesameClassesState.error(errorType: $errorType)';
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
    required TResult Function(List<SesameClassGroups>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<SesameClassGroups> data) success,
  }) {
    return error(errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SesameClassGroups>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<SesameClassGroups> data)? success,
  }) {
    return error?.call(errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SesameClassGroups>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<SesameClassGroups> data)? success,
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

abstract class _error implements SesameClassesState {
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
  $Res call({List<SesameClassGroups> data});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$SesameClassesStateCopyWithImpl<$Res, _$successImpl>
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
              as List<SesameClassGroups>,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(final List<SesameClassGroups> data) : _data = data;

  final List<SesameClassGroups> _data;
  @override
  List<SesameClassGroups> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SesameClassesState.success(data: $data)';
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
    required TResult Function(List<SesameClassGroups>? initialData) initial,
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(List<SesameClassGroups> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SesameClassGroups>? initialData)? initial,
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(List<SesameClassGroups> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SesameClassGroups>? initialData)? initial,
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(List<SesameClassGroups> data)? success,
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

abstract class _success implements SesameClassesState {
  const factory _success(final List<SesameClassGroups> data) = _$successImpl;

  List<SesameClassGroups> get data;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
