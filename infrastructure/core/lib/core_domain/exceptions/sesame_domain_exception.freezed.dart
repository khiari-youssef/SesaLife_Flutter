// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sesame_domain_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SesameDomainException {
  DomainErrorType? get type => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SesameDomainExceptionCopyWith<SesameDomainException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesameDomainExceptionCopyWith<$Res> {
  factory $SesameDomainExceptionCopyWith(SesameDomainException value,
          $Res Function(SesameDomainException) then) =
      _$SesameDomainExceptionCopyWithImpl<$Res, SesameDomainException>;
  @useResult
  $Res call(
      {DomainErrorType? type, String? message, Map<String, dynamic>? details});
}

/// @nodoc
class _$SesameDomainExceptionCopyWithImpl<$Res,
        $Val extends SesameDomainException>
    implements $SesameDomainExceptionCopyWith<$Res> {
  _$SesameDomainExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? message = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DomainErrorType?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SesameDomainExceptionImplCopyWith<$Res>
    implements $SesameDomainExceptionCopyWith<$Res> {
  factory _$$SesameDomainExceptionImplCopyWith(
          _$SesameDomainExceptionImpl value,
          $Res Function(_$SesameDomainExceptionImpl) then) =
      __$$SesameDomainExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DomainErrorType? type, String? message, Map<String, dynamic>? details});
}

/// @nodoc
class __$$SesameDomainExceptionImplCopyWithImpl<$Res>
    extends _$SesameDomainExceptionCopyWithImpl<$Res,
        _$SesameDomainExceptionImpl>
    implements _$$SesameDomainExceptionImplCopyWith<$Res> {
  __$$SesameDomainExceptionImplCopyWithImpl(_$SesameDomainExceptionImpl _value,
      $Res Function(_$SesameDomainExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? message = freezed,
    Object? details = freezed,
  }) {
    return _then(_$SesameDomainExceptionImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DomainErrorType?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$SesameDomainExceptionImpl implements _SesameDomainException {
  const _$SesameDomainExceptionImpl(
      {this.type, this.message, final Map<String, dynamic>? details})
      : _details = details;

  @override
  final DomainErrorType? type;
  @override
  final String? message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SesameDomainException(type: $type, message: $message, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SesameDomainExceptionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, message,
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SesameDomainExceptionImplCopyWith<_$SesameDomainExceptionImpl>
      get copyWith => __$$SesameDomainExceptionImplCopyWithImpl<
          _$SesameDomainExceptionImpl>(this, _$identity);
}

abstract class _SesameDomainException implements SesameDomainException {
  const factory _SesameDomainException(
      {final DomainErrorType? type,
      final String? message,
      final Map<String, dynamic>? details}) = _$SesameDomainExceptionImpl;

  @override
  DomainErrorType? get type;
  @override
  String? get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(ignore: true)
  _$$SesameDomainExceptionImplCopyWith<_$SesameDomainExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
