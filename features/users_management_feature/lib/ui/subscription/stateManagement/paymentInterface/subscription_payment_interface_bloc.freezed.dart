// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_payment_interface_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionPaymentInterfaceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ccNumber) checkCreditCardNumberFormat,
    required TResult Function(String name) checkCreditCardHolderNameFormat,
    required TResult Function(String cvv) checkCreditCardCVVFormat,
    required TResult Function(String date) checkCreditCardExpiryDateFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult? Function(String name)? checkCreditCardHolderNameFormat,
    TResult? Function(String cvv)? checkCreditCardCVVFormat,
    TResult? Function(String date)? checkCreditCardExpiryDateFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult Function(String name)? checkCreditCardHolderNameFormat,
    TResult Function(String cvv)? checkCreditCardCVVFormat,
    TResult Function(String date)? checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionPaymentInterfaceEvent value)
        checkCreditCardNumberFormat,
    required TResult Function(_checkCreditCardHolderNameFormat value)
        checkCreditCardHolderNameFormat,
    required TResult Function(_checkCreditCardCVVFormat value)
        checkCreditCardCVVFormat,
    required TResult Function(_checkCreditCardExpiryDateFormat value)
        checkCreditCardExpiryDateFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult? Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult? Function(_checkCreditCardCVVFormat value)?
        checkCreditCardCVVFormat,
    TResult? Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult Function(_checkCreditCardCVVFormat value)? checkCreditCardCVVFormat,
    TResult Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPaymentInterfaceEventCopyWith<$Res> {
  factory $SubscriptionPaymentInterfaceEventCopyWith(
          SubscriptionPaymentInterfaceEvent value,
          $Res Function(SubscriptionPaymentInterfaceEvent) then) =
      _$SubscriptionPaymentInterfaceEventCopyWithImpl<$Res,
          SubscriptionPaymentInterfaceEvent>;
}

/// @nodoc
class _$SubscriptionPaymentInterfaceEventCopyWithImpl<$Res,
        $Val extends SubscriptionPaymentInterfaceEvent>
    implements $SubscriptionPaymentInterfaceEventCopyWith<$Res> {
  _$SubscriptionPaymentInterfaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscriptionPaymentInterfaceEventImplCopyWith<$Res> {
  factory _$$SubscriptionPaymentInterfaceEventImplCopyWith(
          _$SubscriptionPaymentInterfaceEventImpl value,
          $Res Function(_$SubscriptionPaymentInterfaceEventImpl) then) =
      __$$SubscriptionPaymentInterfaceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ccNumber});
}

/// @nodoc
class __$$SubscriptionPaymentInterfaceEventImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceEventCopyWithImpl<$Res,
        _$SubscriptionPaymentInterfaceEventImpl>
    implements _$$SubscriptionPaymentInterfaceEventImplCopyWith<$Res> {
  __$$SubscriptionPaymentInterfaceEventImplCopyWithImpl(
      _$SubscriptionPaymentInterfaceEventImpl _value,
      $Res Function(_$SubscriptionPaymentInterfaceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccNumber = null,
  }) {
    return _then(_$SubscriptionPaymentInterfaceEventImpl(
      null == ccNumber
          ? _value.ccNumber
          : ccNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubscriptionPaymentInterfaceEventImpl
    implements _SubscriptionPaymentInterfaceEvent {
  const _$SubscriptionPaymentInterfaceEventImpl(this.ccNumber);

  @override
  final String ccNumber;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceEvent.checkCreditCardNumberFormat(ccNumber: $ccNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPaymentInterfaceEventImpl &&
            (identical(other.ccNumber, ccNumber) ||
                other.ccNumber == ccNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ccNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPaymentInterfaceEventImplCopyWith<
          _$SubscriptionPaymentInterfaceEventImpl>
      get copyWith => __$$SubscriptionPaymentInterfaceEventImplCopyWithImpl<
          _$SubscriptionPaymentInterfaceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ccNumber) checkCreditCardNumberFormat,
    required TResult Function(String name) checkCreditCardHolderNameFormat,
    required TResult Function(String cvv) checkCreditCardCVVFormat,
    required TResult Function(String date) checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardNumberFormat(ccNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult? Function(String name)? checkCreditCardHolderNameFormat,
    TResult? Function(String cvv)? checkCreditCardCVVFormat,
    TResult? Function(String date)? checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardNumberFormat?.call(ccNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult Function(String name)? checkCreditCardHolderNameFormat,
    TResult Function(String cvv)? checkCreditCardCVVFormat,
    TResult Function(String date)? checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardNumberFormat != null) {
      return checkCreditCardNumberFormat(ccNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionPaymentInterfaceEvent value)
        checkCreditCardNumberFormat,
    required TResult Function(_checkCreditCardHolderNameFormat value)
        checkCreditCardHolderNameFormat,
    required TResult Function(_checkCreditCardCVVFormat value)
        checkCreditCardCVVFormat,
    required TResult Function(_checkCreditCardExpiryDateFormat value)
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardNumberFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult? Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult? Function(_checkCreditCardCVVFormat value)?
        checkCreditCardCVVFormat,
    TResult? Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardNumberFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult Function(_checkCreditCardCVVFormat value)? checkCreditCardCVVFormat,
    TResult Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardNumberFormat != null) {
      return checkCreditCardNumberFormat(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionPaymentInterfaceEvent
    implements SubscriptionPaymentInterfaceEvent {
  const factory _SubscriptionPaymentInterfaceEvent(final String ccNumber) =
      _$SubscriptionPaymentInterfaceEventImpl;

  String get ccNumber;
  @JsonKey(ignore: true)
  _$$SubscriptionPaymentInterfaceEventImplCopyWith<
          _$SubscriptionPaymentInterfaceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkCreditCardHolderNameFormatImplCopyWith<$Res> {
  factory _$$checkCreditCardHolderNameFormatImplCopyWith(
          _$checkCreditCardHolderNameFormatImpl value,
          $Res Function(_$checkCreditCardHolderNameFormatImpl) then) =
      __$$checkCreditCardHolderNameFormatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$checkCreditCardHolderNameFormatImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceEventCopyWithImpl<$Res,
        _$checkCreditCardHolderNameFormatImpl>
    implements _$$checkCreditCardHolderNameFormatImplCopyWith<$Res> {
  __$$checkCreditCardHolderNameFormatImplCopyWithImpl(
      _$checkCreditCardHolderNameFormatImpl _value,
      $Res Function(_$checkCreditCardHolderNameFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$checkCreditCardHolderNameFormatImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$checkCreditCardHolderNameFormatImpl
    implements _checkCreditCardHolderNameFormat {
  const _$checkCreditCardHolderNameFormatImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceEvent.checkCreditCardHolderNameFormat(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkCreditCardHolderNameFormatImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$checkCreditCardHolderNameFormatImplCopyWith<
          _$checkCreditCardHolderNameFormatImpl>
      get copyWith => __$$checkCreditCardHolderNameFormatImplCopyWithImpl<
          _$checkCreditCardHolderNameFormatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ccNumber) checkCreditCardNumberFormat,
    required TResult Function(String name) checkCreditCardHolderNameFormat,
    required TResult Function(String cvv) checkCreditCardCVVFormat,
    required TResult Function(String date) checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardHolderNameFormat(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult? Function(String name)? checkCreditCardHolderNameFormat,
    TResult? Function(String cvv)? checkCreditCardCVVFormat,
    TResult? Function(String date)? checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardHolderNameFormat?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult Function(String name)? checkCreditCardHolderNameFormat,
    TResult Function(String cvv)? checkCreditCardCVVFormat,
    TResult Function(String date)? checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardHolderNameFormat != null) {
      return checkCreditCardHolderNameFormat(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionPaymentInterfaceEvent value)
        checkCreditCardNumberFormat,
    required TResult Function(_checkCreditCardHolderNameFormat value)
        checkCreditCardHolderNameFormat,
    required TResult Function(_checkCreditCardCVVFormat value)
        checkCreditCardCVVFormat,
    required TResult Function(_checkCreditCardExpiryDateFormat value)
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardHolderNameFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult? Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult? Function(_checkCreditCardCVVFormat value)?
        checkCreditCardCVVFormat,
    TResult? Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardHolderNameFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult Function(_checkCreditCardCVVFormat value)? checkCreditCardCVVFormat,
    TResult Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardHolderNameFormat != null) {
      return checkCreditCardHolderNameFormat(this);
    }
    return orElse();
  }
}

abstract class _checkCreditCardHolderNameFormat
    implements SubscriptionPaymentInterfaceEvent {
  const factory _checkCreditCardHolderNameFormat(final String name) =
      _$checkCreditCardHolderNameFormatImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$checkCreditCardHolderNameFormatImplCopyWith<
          _$checkCreditCardHolderNameFormatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkCreditCardCVVFormatImplCopyWith<$Res> {
  factory _$$checkCreditCardCVVFormatImplCopyWith(
          _$checkCreditCardCVVFormatImpl value,
          $Res Function(_$checkCreditCardCVVFormatImpl) then) =
      __$$checkCreditCardCVVFormatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cvv});
}

/// @nodoc
class __$$checkCreditCardCVVFormatImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceEventCopyWithImpl<$Res,
        _$checkCreditCardCVVFormatImpl>
    implements _$$checkCreditCardCVVFormatImplCopyWith<$Res> {
  __$$checkCreditCardCVVFormatImplCopyWithImpl(
      _$checkCreditCardCVVFormatImpl _value,
      $Res Function(_$checkCreditCardCVVFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvv = null,
  }) {
    return _then(_$checkCreditCardCVVFormatImpl(
      null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$checkCreditCardCVVFormatImpl implements _checkCreditCardCVVFormat {
  const _$checkCreditCardCVVFormatImpl(this.cvv);

  @override
  final String cvv;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceEvent.checkCreditCardCVVFormat(cvv: $cvv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkCreditCardCVVFormatImpl &&
            (identical(other.cvv, cvv) || other.cvv == cvv));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cvv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$checkCreditCardCVVFormatImplCopyWith<_$checkCreditCardCVVFormatImpl>
      get copyWith => __$$checkCreditCardCVVFormatImplCopyWithImpl<
          _$checkCreditCardCVVFormatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ccNumber) checkCreditCardNumberFormat,
    required TResult Function(String name) checkCreditCardHolderNameFormat,
    required TResult Function(String cvv) checkCreditCardCVVFormat,
    required TResult Function(String date) checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardCVVFormat(cvv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult? Function(String name)? checkCreditCardHolderNameFormat,
    TResult? Function(String cvv)? checkCreditCardCVVFormat,
    TResult? Function(String date)? checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardCVVFormat?.call(cvv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult Function(String name)? checkCreditCardHolderNameFormat,
    TResult Function(String cvv)? checkCreditCardCVVFormat,
    TResult Function(String date)? checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardCVVFormat != null) {
      return checkCreditCardCVVFormat(cvv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionPaymentInterfaceEvent value)
        checkCreditCardNumberFormat,
    required TResult Function(_checkCreditCardHolderNameFormat value)
        checkCreditCardHolderNameFormat,
    required TResult Function(_checkCreditCardCVVFormat value)
        checkCreditCardCVVFormat,
    required TResult Function(_checkCreditCardExpiryDateFormat value)
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardCVVFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult? Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult? Function(_checkCreditCardCVVFormat value)?
        checkCreditCardCVVFormat,
    TResult? Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardCVVFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult Function(_checkCreditCardCVVFormat value)? checkCreditCardCVVFormat,
    TResult Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardCVVFormat != null) {
      return checkCreditCardCVVFormat(this);
    }
    return orElse();
  }
}

abstract class _checkCreditCardCVVFormat
    implements SubscriptionPaymentInterfaceEvent {
  const factory _checkCreditCardCVVFormat(final String cvv) =
      _$checkCreditCardCVVFormatImpl;

  String get cvv;
  @JsonKey(ignore: true)
  _$$checkCreditCardCVVFormatImplCopyWith<_$checkCreditCardCVVFormatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkCreditCardExpiryDateFormatImplCopyWith<$Res> {
  factory _$$checkCreditCardExpiryDateFormatImplCopyWith(
          _$checkCreditCardExpiryDateFormatImpl value,
          $Res Function(_$checkCreditCardExpiryDateFormatImpl) then) =
      __$$checkCreditCardExpiryDateFormatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$checkCreditCardExpiryDateFormatImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceEventCopyWithImpl<$Res,
        _$checkCreditCardExpiryDateFormatImpl>
    implements _$$checkCreditCardExpiryDateFormatImplCopyWith<$Res> {
  __$$checkCreditCardExpiryDateFormatImplCopyWithImpl(
      _$checkCreditCardExpiryDateFormatImpl _value,
      $Res Function(_$checkCreditCardExpiryDateFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$checkCreditCardExpiryDateFormatImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$checkCreditCardExpiryDateFormatImpl
    implements _checkCreditCardExpiryDateFormat {
  const _$checkCreditCardExpiryDateFormatImpl(this.date);

  @override
  final String date;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceEvent.checkCreditCardExpiryDateFormat(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkCreditCardExpiryDateFormatImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$checkCreditCardExpiryDateFormatImplCopyWith<
          _$checkCreditCardExpiryDateFormatImpl>
      get copyWith => __$$checkCreditCardExpiryDateFormatImplCopyWithImpl<
          _$checkCreditCardExpiryDateFormatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ccNumber) checkCreditCardNumberFormat,
    required TResult Function(String name) checkCreditCardHolderNameFormat,
    required TResult Function(String cvv) checkCreditCardCVVFormat,
    required TResult Function(String date) checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardExpiryDateFormat(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult? Function(String name)? checkCreditCardHolderNameFormat,
    TResult? Function(String cvv)? checkCreditCardCVVFormat,
    TResult? Function(String date)? checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardExpiryDateFormat?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ccNumber)? checkCreditCardNumberFormat,
    TResult Function(String name)? checkCreditCardHolderNameFormat,
    TResult Function(String cvv)? checkCreditCardCVVFormat,
    TResult Function(String date)? checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardExpiryDateFormat != null) {
      return checkCreditCardExpiryDateFormat(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionPaymentInterfaceEvent value)
        checkCreditCardNumberFormat,
    required TResult Function(_checkCreditCardHolderNameFormat value)
        checkCreditCardHolderNameFormat,
    required TResult Function(_checkCreditCardCVVFormat value)
        checkCreditCardCVVFormat,
    required TResult Function(_checkCreditCardExpiryDateFormat value)
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardExpiryDateFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult? Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult? Function(_checkCreditCardCVVFormat value)?
        checkCreditCardCVVFormat,
    TResult? Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
  }) {
    return checkCreditCardExpiryDateFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionPaymentInterfaceEvent value)?
        checkCreditCardNumberFormat,
    TResult Function(_checkCreditCardHolderNameFormat value)?
        checkCreditCardHolderNameFormat,
    TResult Function(_checkCreditCardCVVFormat value)? checkCreditCardCVVFormat,
    TResult Function(_checkCreditCardExpiryDateFormat value)?
        checkCreditCardExpiryDateFormat,
    required TResult orElse(),
  }) {
    if (checkCreditCardExpiryDateFormat != null) {
      return checkCreditCardExpiryDateFormat(this);
    }
    return orElse();
  }
}

abstract class _checkCreditCardExpiryDateFormat
    implements SubscriptionPaymentInterfaceEvent {
  const factory _checkCreditCardExpiryDateFormat(final String date) =
      _$checkCreditCardExpiryDateFormatImpl;

  String get date;
  @JsonKey(ignore: true)
  _$$checkCreditCardExpiryDateFormatImplCopyWith<
          _$checkCreditCardExpiryDateFormatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionPaymentInterfaceBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardNumberFormatState,
    required TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardHolderNameFormatState,
    required TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardCVVFormatState,
    required TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardExpiryDateFormatState,
    required TResult Function() allStateCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult? Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult? Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult? Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult? Function()? allStateCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult Function()? allStateCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_creditCardNumberFormatState value)
        creditCardNumberFormatState,
    required TResult Function(_creditCardHolderNameFormatState value)
        creditCardHolderNameFormatState,
    required TResult Function(_creditCardCVVFormatState value)
        creditCardCVVFormatState,
    required TResult Function(_creditCardExpiryDateFormatState value)
        creditCardExpiryDateFormatState,
    required TResult Function(_allStateCleared value) allStateCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult? Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult? Function(_creditCardCVVFormatState value)?
        creditCardCVVFormatState,
    TResult? Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult? Function(_allStateCleared value)? allStateCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult Function(_creditCardCVVFormatState value)? creditCardCVVFormatState,
    TResult Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult Function(_allStateCleared value)? allStateCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPaymentInterfaceBlocStateCopyWith<$Res> {
  factory $SubscriptionPaymentInterfaceBlocStateCopyWith(
          SubscriptionPaymentInterfaceBlocState value,
          $Res Function(SubscriptionPaymentInterfaceBlocState) then) =
      _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
          SubscriptionPaymentInterfaceBlocState>;
}

/// @nodoc
class _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
        $Val extends SubscriptionPaymentInterfaceBlocState>
    implements $SubscriptionPaymentInterfaceBlocStateCopyWith<$Res> {
  _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$creditCardNumberFormatStateImplCopyWith<$Res> {
  factory _$$creditCardNumberFormatStateImplCopyWith(
          _$creditCardNumberFormatStateImpl value,
          $Res Function(_$creditCardNumberFormatStateImpl) then) =
      __$$creditCardNumberFormatStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String ccNumber, CreditCardInputErrorConstraint? brokenConstraint});
}

/// @nodoc
class __$$creditCardNumberFormatStateImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
        _$creditCardNumberFormatStateImpl>
    implements _$$creditCardNumberFormatStateImplCopyWith<$Res> {
  __$$creditCardNumberFormatStateImplCopyWithImpl(
      _$creditCardNumberFormatStateImpl _value,
      $Res Function(_$creditCardNumberFormatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccNumber = null,
    Object? brokenConstraint = freezed,
  }) {
    return _then(_$creditCardNumberFormatStateImpl(
      null == ccNumber
          ? _value.ccNumber
          : ccNumber // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == brokenConstraint
          ? _value.brokenConstraint
          : brokenConstraint // ignore: cast_nullable_to_non_nullable
              as CreditCardInputErrorConstraint?,
    ));
  }
}

/// @nodoc

class _$creditCardNumberFormatStateImpl
    implements _creditCardNumberFormatState {
  const _$creditCardNumberFormatStateImpl(this.ccNumber, this.brokenConstraint);

  @override
  final String ccNumber;
  @override
  final CreditCardInputErrorConstraint? brokenConstraint;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceBlocState.creditCardNumberFormatState(ccNumber: $ccNumber, brokenConstraint: $brokenConstraint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$creditCardNumberFormatStateImpl &&
            (identical(other.ccNumber, ccNumber) ||
                other.ccNumber == ccNumber) &&
            (identical(other.brokenConstraint, brokenConstraint) ||
                other.brokenConstraint == brokenConstraint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ccNumber, brokenConstraint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$creditCardNumberFormatStateImplCopyWith<_$creditCardNumberFormatStateImpl>
      get copyWith => __$$creditCardNumberFormatStateImplCopyWithImpl<
          _$creditCardNumberFormatStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardNumberFormatState,
    required TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardHolderNameFormatState,
    required TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardCVVFormatState,
    required TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardExpiryDateFormatState,
    required TResult Function() allStateCleared,
  }) {
    return creditCardNumberFormatState(ccNumber, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult? Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult? Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult? Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult? Function()? allStateCleared,
  }) {
    return creditCardNumberFormatState?.call(ccNumber, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult Function()? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardNumberFormatState != null) {
      return creditCardNumberFormatState(ccNumber, brokenConstraint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_creditCardNumberFormatState value)
        creditCardNumberFormatState,
    required TResult Function(_creditCardHolderNameFormatState value)
        creditCardHolderNameFormatState,
    required TResult Function(_creditCardCVVFormatState value)
        creditCardCVVFormatState,
    required TResult Function(_creditCardExpiryDateFormatState value)
        creditCardExpiryDateFormatState,
    required TResult Function(_allStateCleared value) allStateCleared,
  }) {
    return creditCardNumberFormatState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult? Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult? Function(_creditCardCVVFormatState value)?
        creditCardCVVFormatState,
    TResult? Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult? Function(_allStateCleared value)? allStateCleared,
  }) {
    return creditCardNumberFormatState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult Function(_creditCardCVVFormatState value)? creditCardCVVFormatState,
    TResult Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult Function(_allStateCleared value)? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardNumberFormatState != null) {
      return creditCardNumberFormatState(this);
    }
    return orElse();
  }
}

abstract class _creditCardNumberFormatState
    implements SubscriptionPaymentInterfaceBlocState {
  const factory _creditCardNumberFormatState(final String ccNumber,
          final CreditCardInputErrorConstraint? brokenConstraint) =
      _$creditCardNumberFormatStateImpl;

  String get ccNumber;
  CreditCardInputErrorConstraint? get brokenConstraint;
  @JsonKey(ignore: true)
  _$$creditCardNumberFormatStateImplCopyWith<_$creditCardNumberFormatStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$creditCardHolderNameFormatStateImplCopyWith<$Res> {
  factory _$$creditCardHolderNameFormatStateImplCopyWith(
          _$creditCardHolderNameFormatStateImpl value,
          $Res Function(_$creditCardHolderNameFormatStateImpl) then) =
      __$$creditCardHolderNameFormatStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, CreditCardInputErrorConstraint? brokenConstraint});
}

/// @nodoc
class __$$creditCardHolderNameFormatStateImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
        _$creditCardHolderNameFormatStateImpl>
    implements _$$creditCardHolderNameFormatStateImplCopyWith<$Res> {
  __$$creditCardHolderNameFormatStateImplCopyWithImpl(
      _$creditCardHolderNameFormatStateImpl _value,
      $Res Function(_$creditCardHolderNameFormatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? brokenConstraint = freezed,
  }) {
    return _then(_$creditCardHolderNameFormatStateImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == brokenConstraint
          ? _value.brokenConstraint
          : brokenConstraint // ignore: cast_nullable_to_non_nullable
              as CreditCardInputErrorConstraint?,
    ));
  }
}

/// @nodoc

class _$creditCardHolderNameFormatStateImpl
    implements _creditCardHolderNameFormatState {
  const _$creditCardHolderNameFormatStateImpl(this.name, this.brokenConstraint);

  @override
  final String name;
  @override
  final CreditCardInputErrorConstraint? brokenConstraint;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceBlocState.creditCardHolderNameFormatState(name: $name, brokenConstraint: $brokenConstraint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$creditCardHolderNameFormatStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brokenConstraint, brokenConstraint) ||
                other.brokenConstraint == brokenConstraint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, brokenConstraint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$creditCardHolderNameFormatStateImplCopyWith<
          _$creditCardHolderNameFormatStateImpl>
      get copyWith => __$$creditCardHolderNameFormatStateImplCopyWithImpl<
          _$creditCardHolderNameFormatStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardNumberFormatState,
    required TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardHolderNameFormatState,
    required TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardCVVFormatState,
    required TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardExpiryDateFormatState,
    required TResult Function() allStateCleared,
  }) {
    return creditCardHolderNameFormatState(name, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult? Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult? Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult? Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult? Function()? allStateCleared,
  }) {
    return creditCardHolderNameFormatState?.call(name, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult Function()? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardHolderNameFormatState != null) {
      return creditCardHolderNameFormatState(name, brokenConstraint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_creditCardNumberFormatState value)
        creditCardNumberFormatState,
    required TResult Function(_creditCardHolderNameFormatState value)
        creditCardHolderNameFormatState,
    required TResult Function(_creditCardCVVFormatState value)
        creditCardCVVFormatState,
    required TResult Function(_creditCardExpiryDateFormatState value)
        creditCardExpiryDateFormatState,
    required TResult Function(_allStateCleared value) allStateCleared,
  }) {
    return creditCardHolderNameFormatState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult? Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult? Function(_creditCardCVVFormatState value)?
        creditCardCVVFormatState,
    TResult? Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult? Function(_allStateCleared value)? allStateCleared,
  }) {
    return creditCardHolderNameFormatState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult Function(_creditCardCVVFormatState value)? creditCardCVVFormatState,
    TResult Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult Function(_allStateCleared value)? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardHolderNameFormatState != null) {
      return creditCardHolderNameFormatState(this);
    }
    return orElse();
  }
}

abstract class _creditCardHolderNameFormatState
    implements SubscriptionPaymentInterfaceBlocState {
  const factory _creditCardHolderNameFormatState(final String name,
          final CreditCardInputErrorConstraint? brokenConstraint) =
      _$creditCardHolderNameFormatStateImpl;

  String get name;
  CreditCardInputErrorConstraint? get brokenConstraint;
  @JsonKey(ignore: true)
  _$$creditCardHolderNameFormatStateImplCopyWith<
          _$creditCardHolderNameFormatStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$creditCardCVVFormatStateImplCopyWith<$Res> {
  factory _$$creditCardCVVFormatStateImplCopyWith(
          _$creditCardCVVFormatStateImpl value,
          $Res Function(_$creditCardCVVFormatStateImpl) then) =
      __$$creditCardCVVFormatStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cvv, CreditCardInputErrorConstraint? brokenConstraint});
}

/// @nodoc
class __$$creditCardCVVFormatStateImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
        _$creditCardCVVFormatStateImpl>
    implements _$$creditCardCVVFormatStateImplCopyWith<$Res> {
  __$$creditCardCVVFormatStateImplCopyWithImpl(
      _$creditCardCVVFormatStateImpl _value,
      $Res Function(_$creditCardCVVFormatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvv = null,
    Object? brokenConstraint = freezed,
  }) {
    return _then(_$creditCardCVVFormatStateImpl(
      null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == brokenConstraint
          ? _value.brokenConstraint
          : brokenConstraint // ignore: cast_nullable_to_non_nullable
              as CreditCardInputErrorConstraint?,
    ));
  }
}

/// @nodoc

class _$creditCardCVVFormatStateImpl implements _creditCardCVVFormatState {
  const _$creditCardCVVFormatStateImpl(this.cvv, this.brokenConstraint);

  @override
  final String cvv;
  @override
  final CreditCardInputErrorConstraint? brokenConstraint;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceBlocState.creditCardCVVFormatState(cvv: $cvv, brokenConstraint: $brokenConstraint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$creditCardCVVFormatStateImpl &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.brokenConstraint, brokenConstraint) ||
                other.brokenConstraint == brokenConstraint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cvv, brokenConstraint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$creditCardCVVFormatStateImplCopyWith<_$creditCardCVVFormatStateImpl>
      get copyWith => __$$creditCardCVVFormatStateImplCopyWithImpl<
          _$creditCardCVVFormatStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardNumberFormatState,
    required TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardHolderNameFormatState,
    required TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardCVVFormatState,
    required TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardExpiryDateFormatState,
    required TResult Function() allStateCleared,
  }) {
    return creditCardCVVFormatState(cvv, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult? Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult? Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult? Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult? Function()? allStateCleared,
  }) {
    return creditCardCVVFormatState?.call(cvv, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult Function()? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardCVVFormatState != null) {
      return creditCardCVVFormatState(cvv, brokenConstraint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_creditCardNumberFormatState value)
        creditCardNumberFormatState,
    required TResult Function(_creditCardHolderNameFormatState value)
        creditCardHolderNameFormatState,
    required TResult Function(_creditCardCVVFormatState value)
        creditCardCVVFormatState,
    required TResult Function(_creditCardExpiryDateFormatState value)
        creditCardExpiryDateFormatState,
    required TResult Function(_allStateCleared value) allStateCleared,
  }) {
    return creditCardCVVFormatState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult? Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult? Function(_creditCardCVVFormatState value)?
        creditCardCVVFormatState,
    TResult? Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult? Function(_allStateCleared value)? allStateCleared,
  }) {
    return creditCardCVVFormatState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult Function(_creditCardCVVFormatState value)? creditCardCVVFormatState,
    TResult Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult Function(_allStateCleared value)? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardCVVFormatState != null) {
      return creditCardCVVFormatState(this);
    }
    return orElse();
  }
}

abstract class _creditCardCVVFormatState
    implements SubscriptionPaymentInterfaceBlocState {
  const factory _creditCardCVVFormatState(final String cvv,
          final CreditCardInputErrorConstraint? brokenConstraint) =
      _$creditCardCVVFormatStateImpl;

  String get cvv;
  CreditCardInputErrorConstraint? get brokenConstraint;
  @JsonKey(ignore: true)
  _$$creditCardCVVFormatStateImplCopyWith<_$creditCardCVVFormatStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$creditCardExpiryDateFormatStateImplCopyWith<$Res> {
  factory _$$creditCardExpiryDateFormatStateImplCopyWith(
          _$creditCardExpiryDateFormatStateImpl value,
          $Res Function(_$creditCardExpiryDateFormatStateImpl) then) =
      __$$creditCardExpiryDateFormatStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date, CreditCardInputErrorConstraint? brokenConstraint});
}

/// @nodoc
class __$$creditCardExpiryDateFormatStateImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
        _$creditCardExpiryDateFormatStateImpl>
    implements _$$creditCardExpiryDateFormatStateImplCopyWith<$Res> {
  __$$creditCardExpiryDateFormatStateImplCopyWithImpl(
      _$creditCardExpiryDateFormatStateImpl _value,
      $Res Function(_$creditCardExpiryDateFormatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? brokenConstraint = freezed,
  }) {
    return _then(_$creditCardExpiryDateFormatStateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == brokenConstraint
          ? _value.brokenConstraint
          : brokenConstraint // ignore: cast_nullable_to_non_nullable
              as CreditCardInputErrorConstraint?,
    ));
  }
}

/// @nodoc

class _$creditCardExpiryDateFormatStateImpl
    implements _creditCardExpiryDateFormatState {
  const _$creditCardExpiryDateFormatStateImpl(this.date, this.brokenConstraint);

  @override
  final String date;
  @override
  final CreditCardInputErrorConstraint? brokenConstraint;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceBlocState.creditCardExpiryDateFormatState(date: $date, brokenConstraint: $brokenConstraint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$creditCardExpiryDateFormatStateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.brokenConstraint, brokenConstraint) ||
                other.brokenConstraint == brokenConstraint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, brokenConstraint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$creditCardExpiryDateFormatStateImplCopyWith<
          _$creditCardExpiryDateFormatStateImpl>
      get copyWith => __$$creditCardExpiryDateFormatStateImplCopyWithImpl<
          _$creditCardExpiryDateFormatStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardNumberFormatState,
    required TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardHolderNameFormatState,
    required TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardCVVFormatState,
    required TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardExpiryDateFormatState,
    required TResult Function() allStateCleared,
  }) {
    return creditCardExpiryDateFormatState(date, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult? Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult? Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult? Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult? Function()? allStateCleared,
  }) {
    return creditCardExpiryDateFormatState?.call(date, brokenConstraint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult Function()? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardExpiryDateFormatState != null) {
      return creditCardExpiryDateFormatState(date, brokenConstraint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_creditCardNumberFormatState value)
        creditCardNumberFormatState,
    required TResult Function(_creditCardHolderNameFormatState value)
        creditCardHolderNameFormatState,
    required TResult Function(_creditCardCVVFormatState value)
        creditCardCVVFormatState,
    required TResult Function(_creditCardExpiryDateFormatState value)
        creditCardExpiryDateFormatState,
    required TResult Function(_allStateCleared value) allStateCleared,
  }) {
    return creditCardExpiryDateFormatState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult? Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult? Function(_creditCardCVVFormatState value)?
        creditCardCVVFormatState,
    TResult? Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult? Function(_allStateCleared value)? allStateCleared,
  }) {
    return creditCardExpiryDateFormatState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult Function(_creditCardCVVFormatState value)? creditCardCVVFormatState,
    TResult Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult Function(_allStateCleared value)? allStateCleared,
    required TResult orElse(),
  }) {
    if (creditCardExpiryDateFormatState != null) {
      return creditCardExpiryDateFormatState(this);
    }
    return orElse();
  }
}

abstract class _creditCardExpiryDateFormatState
    implements SubscriptionPaymentInterfaceBlocState {
  const factory _creditCardExpiryDateFormatState(final String date,
          final CreditCardInputErrorConstraint? brokenConstraint) =
      _$creditCardExpiryDateFormatStateImpl;

  String get date;
  CreditCardInputErrorConstraint? get brokenConstraint;
  @JsonKey(ignore: true)
  _$$creditCardExpiryDateFormatStateImplCopyWith<
          _$creditCardExpiryDateFormatStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$allStateClearedImplCopyWith<$Res> {
  factory _$$allStateClearedImplCopyWith(_$allStateClearedImpl value,
          $Res Function(_$allStateClearedImpl) then) =
      __$$allStateClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$allStateClearedImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
        _$allStateClearedImpl> implements _$$allStateClearedImplCopyWith<$Res> {
  __$$allStateClearedImplCopyWithImpl(
      _$allStateClearedImpl _value, $Res Function(_$allStateClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$allStateClearedImpl implements _allStateCleared {
  const _$allStateClearedImpl();

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceBlocState.allStateCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$allStateClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardNumberFormatState,
    required TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardHolderNameFormatState,
    required TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardCVVFormatState,
    required TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)
        creditCardExpiryDateFormatState,
    required TResult Function() allStateCleared,
  }) {
    return allStateCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult? Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult? Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult? Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult? Function()? allStateCleared,
  }) {
    return allStateCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String ccNumber, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardNumberFormatState,
    TResult Function(
            String name, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardHolderNameFormatState,
    TResult Function(
            String cvv, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardCVVFormatState,
    TResult Function(
            String date, CreditCardInputErrorConstraint? brokenConstraint)?
        creditCardExpiryDateFormatState,
    TResult Function()? allStateCleared,
    required TResult orElse(),
  }) {
    if (allStateCleared != null) {
      return allStateCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_creditCardNumberFormatState value)
        creditCardNumberFormatState,
    required TResult Function(_creditCardHolderNameFormatState value)
        creditCardHolderNameFormatState,
    required TResult Function(_creditCardCVVFormatState value)
        creditCardCVVFormatState,
    required TResult Function(_creditCardExpiryDateFormatState value)
        creditCardExpiryDateFormatState,
    required TResult Function(_allStateCleared value) allStateCleared,
  }) {
    return allStateCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult? Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult? Function(_creditCardCVVFormatState value)?
        creditCardCVVFormatState,
    TResult? Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult? Function(_allStateCleared value)? allStateCleared,
  }) {
    return allStateCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_creditCardNumberFormatState value)?
        creditCardNumberFormatState,
    TResult Function(_creditCardHolderNameFormatState value)?
        creditCardHolderNameFormatState,
    TResult Function(_creditCardCVVFormatState value)? creditCardCVVFormatState,
    TResult Function(_creditCardExpiryDateFormatState value)?
        creditCardExpiryDateFormatState,
    TResult Function(_allStateCleared value)? allStateCleared,
    required TResult orElse(),
  }) {
    if (allStateCleared != null) {
      return allStateCleared(this);
    }
    return orElse();
  }
}

abstract class _allStateCleared
    implements SubscriptionPaymentInterfaceBlocState {
  const factory _allStateCleared() = _$allStateClearedImpl;
}
