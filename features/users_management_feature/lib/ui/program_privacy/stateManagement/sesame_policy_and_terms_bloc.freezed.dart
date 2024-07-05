// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sesame_policy_and_terms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SesamePolicyAndTermsEvent {
  DocumentType? get documentType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentType? documentType) loadRulesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentType? documentType)? loadRulesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentType? documentType)? loadRulesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadRulesData value) loadRulesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadRulesData value)? loadRulesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadRulesData value)? loadRulesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SesamePolicyAndTermsEventCopyWith<SesamePolicyAndTermsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesamePolicyAndTermsEventCopyWith<$Res> {
  factory $SesamePolicyAndTermsEventCopyWith(SesamePolicyAndTermsEvent value,
          $Res Function(SesamePolicyAndTermsEvent) then) =
      _$SesamePolicyAndTermsEventCopyWithImpl<$Res, SesamePolicyAndTermsEvent>;
  @useResult
  $Res call({DocumentType? documentType});
}

/// @nodoc
class _$SesamePolicyAndTermsEventCopyWithImpl<$Res,
        $Val extends SesamePolicyAndTermsEvent>
    implements $SesamePolicyAndTermsEventCopyWith<$Res> {
  _$SesamePolicyAndTermsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentType = freezed,
  }) {
    return _then(_value.copyWith(
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as DocumentType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$loadRulesDataImplCopyWith<$Res>
    implements $SesamePolicyAndTermsEventCopyWith<$Res> {
  factory _$$loadRulesDataImplCopyWith(
          _$loadRulesDataImpl value, $Res Function(_$loadRulesDataImpl) then) =
      __$$loadRulesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DocumentType? documentType});
}

/// @nodoc
class __$$loadRulesDataImplCopyWithImpl<$Res>
    extends _$SesamePolicyAndTermsEventCopyWithImpl<$Res, _$loadRulesDataImpl>
    implements _$$loadRulesDataImplCopyWith<$Res> {
  __$$loadRulesDataImplCopyWithImpl(
      _$loadRulesDataImpl _value, $Res Function(_$loadRulesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentType = freezed,
  }) {
    return _then(_$loadRulesDataImpl(
      freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as DocumentType?,
    ));
  }
}

/// @nodoc

class _$loadRulesDataImpl implements _loadRulesData {
  const _$loadRulesDataImpl(this.documentType);

  @override
  final DocumentType? documentType;

  @override
  String toString() {
    return 'SesamePolicyAndTermsEvent.loadRulesData(documentType: $documentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadRulesDataImpl &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loadRulesDataImplCopyWith<_$loadRulesDataImpl> get copyWith =>
      __$$loadRulesDataImplCopyWithImpl<_$loadRulesDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentType? documentType) loadRulesData,
  }) {
    return loadRulesData(documentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentType? documentType)? loadRulesData,
  }) {
    return loadRulesData?.call(documentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentType? documentType)? loadRulesData,
    required TResult orElse(),
  }) {
    if (loadRulesData != null) {
      return loadRulesData(documentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadRulesData value) loadRulesData,
  }) {
    return loadRulesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadRulesData value)? loadRulesData,
  }) {
    return loadRulesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadRulesData value)? loadRulesData,
    required TResult orElse(),
  }) {
    if (loadRulesData != null) {
      return loadRulesData(this);
    }
    return orElse();
  }
}

abstract class _loadRulesData implements SesamePolicyAndTermsEvent {
  const factory _loadRulesData(final DocumentType? documentType) =
      _$loadRulesDataImpl;

  @override
  DocumentType? get documentType;
  @override
  @JsonKey(ignore: true)
  _$$loadRulesDataImplCopyWith<_$loadRulesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SesamePolicyAndTermsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(SesamePrivacyPolicyDocument data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(SesamePrivacyPolicyDocument data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(SesamePrivacyPolicyDocument data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesamePolicyAndTermsStateCopyWith<$Res> {
  factory $SesamePolicyAndTermsStateCopyWith(SesamePolicyAndTermsState value,
          $Res Function(SesamePolicyAndTermsState) then) =
      _$SesamePolicyAndTermsStateCopyWithImpl<$Res, SesamePolicyAndTermsState>;
}

/// @nodoc
class _$SesamePolicyAndTermsStateCopyWithImpl<$Res,
        $Val extends SesamePolicyAndTermsState>
    implements $SesamePolicyAndTermsStateCopyWith<$Res> {
  _$SesamePolicyAndTermsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$SesamePolicyAndTermsStateCopyWithImpl<$Res, _$loadingImpl>
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
    return 'SesamePolicyAndTermsState.loading()';
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
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(SesamePrivacyPolicyDocument data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(SesamePrivacyPolicyDocument data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(SesamePrivacyPolicyDocument data)? success,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _loading implements SesamePolicyAndTermsState {
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
    extends _$SesamePolicyAndTermsStateCopyWithImpl<$Res, _$errorImpl>
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
    return 'SesamePolicyAndTermsState.error(errorType: $errorType)';
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
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(SesamePrivacyPolicyDocument data) success,
  }) {
    return error(errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(SesamePrivacyPolicyDocument data)? success,
  }) {
    return error?.call(errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(SesamePrivacyPolicyDocument data)? success,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _error implements SesamePolicyAndTermsState {
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
  $Res call({SesamePrivacyPolicyDocument data});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$SesamePolicyAndTermsStateCopyWithImpl<$Res, _$successImpl>
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
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SesamePrivacyPolicyDocument,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(this.data);

  @override
  final SesamePrivacyPolicyDocument data;

  @override
  String toString() {
    return 'SesamePolicyAndTermsState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DomainErrorType errorType) error,
    required TResult Function(SesamePrivacyPolicyDocument data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DomainErrorType errorType)? error,
    TResult? Function(SesamePrivacyPolicyDocument data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DomainErrorType errorType)? error,
    TResult Function(SesamePrivacyPolicyDocument data)? success,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _success implements SesamePolicyAndTermsState {
  const factory _success(final SesamePrivacyPolicyDocument data) =
      _$successImpl;

  SesamePrivacyPolicyDocument get data;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
