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
  CreditCardInputState<dynamic> get ccNumberState =>
      throw _privateConstructorUsedError;
  CreditCardInputState<dynamic> get ccHolderNameState =>
      throw _privateConstructorUsedError;
  CreditCardInputState<dynamic> get ccExpiryDateState =>
      throw _privateConstructorUsedError;
  CreditCardInputState<dynamic> get ccCVVState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionPaymentInterfaceBlocStateCopyWith<
          SubscriptionPaymentInterfaceBlocState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPaymentInterfaceBlocStateCopyWith<$Res> {
  factory $SubscriptionPaymentInterfaceBlocStateCopyWith(
          SubscriptionPaymentInterfaceBlocState value,
          $Res Function(SubscriptionPaymentInterfaceBlocState) then) =
      _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
          SubscriptionPaymentInterfaceBlocState>;
  @useResult
  $Res call(
      {CreditCardInputState<dynamic> ccNumberState,
      CreditCardInputState<dynamic> ccHolderNameState,
      CreditCardInputState<dynamic> ccExpiryDateState,
      CreditCardInputState<dynamic> ccCVVState});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccNumberState = null,
    Object? ccHolderNameState = null,
    Object? ccExpiryDateState = null,
    Object? ccCVVState = null,
  }) {
    return _then(_value.copyWith(
      ccNumberState: null == ccNumberState
          ? _value.ccNumberState
          : ccNumberState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
      ccHolderNameState: null == ccHolderNameState
          ? _value.ccHolderNameState
          : ccHolderNameState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
      ccExpiryDateState: null == ccExpiryDateState
          ? _value.ccExpiryDateState
          : ccExpiryDateState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
      ccCVVState: null == ccCVVState
          ? _value.ccCVVState
          : ccCVVState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionPaymentInterfaceBlocStateImplCopyWith<$Res>
    implements $SubscriptionPaymentInterfaceBlocStateCopyWith<$Res> {
  factory _$$SubscriptionPaymentInterfaceBlocStateImplCopyWith(
          _$SubscriptionPaymentInterfaceBlocStateImpl value,
          $Res Function(_$SubscriptionPaymentInterfaceBlocStateImpl) then) =
      __$$SubscriptionPaymentInterfaceBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreditCardInputState<dynamic> ccNumberState,
      CreditCardInputState<dynamic> ccHolderNameState,
      CreditCardInputState<dynamic> ccExpiryDateState,
      CreditCardInputState<dynamic> ccCVVState});
}

/// @nodoc
class __$$SubscriptionPaymentInterfaceBlocStateImplCopyWithImpl<$Res>
    extends _$SubscriptionPaymentInterfaceBlocStateCopyWithImpl<$Res,
        _$SubscriptionPaymentInterfaceBlocStateImpl>
    implements _$$SubscriptionPaymentInterfaceBlocStateImplCopyWith<$Res> {
  __$$SubscriptionPaymentInterfaceBlocStateImplCopyWithImpl(
      _$SubscriptionPaymentInterfaceBlocStateImpl _value,
      $Res Function(_$SubscriptionPaymentInterfaceBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ccNumberState = null,
    Object? ccHolderNameState = null,
    Object? ccExpiryDateState = null,
    Object? ccCVVState = null,
  }) {
    return _then(_$SubscriptionPaymentInterfaceBlocStateImpl(
      ccNumberState: null == ccNumberState
          ? _value.ccNumberState
          : ccNumberState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
      ccHolderNameState: null == ccHolderNameState
          ? _value.ccHolderNameState
          : ccHolderNameState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
      ccExpiryDateState: null == ccExpiryDateState
          ? _value.ccExpiryDateState
          : ccExpiryDateState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
      ccCVVState: null == ccCVVState
          ? _value.ccCVVState
          : ccCVVState // ignore: cast_nullable_to_non_nullable
              as CreditCardInputState<dynamic>,
    ));
  }
}

/// @nodoc

class _$SubscriptionPaymentInterfaceBlocStateImpl
    implements _SubscriptionPaymentInterfaceBlocState {
  const _$SubscriptionPaymentInterfaceBlocStateImpl(
      {required this.ccNumberState,
      required this.ccHolderNameState,
      required this.ccExpiryDateState,
      required this.ccCVVState});

  @override
  final CreditCardInputState<dynamic> ccNumberState;
  @override
  final CreditCardInputState<dynamic> ccHolderNameState;
  @override
  final CreditCardInputState<dynamic> ccExpiryDateState;
  @override
  final CreditCardInputState<dynamic> ccCVVState;

  @override
  String toString() {
    return 'SubscriptionPaymentInterfaceBlocState(ccNumberState: $ccNumberState, ccHolderNameState: $ccHolderNameState, ccExpiryDateState: $ccExpiryDateState, ccCVVState: $ccCVVState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPaymentInterfaceBlocStateImpl &&
            (identical(other.ccNumberState, ccNumberState) ||
                other.ccNumberState == ccNumberState) &&
            (identical(other.ccHolderNameState, ccHolderNameState) ||
                other.ccHolderNameState == ccHolderNameState) &&
            (identical(other.ccExpiryDateState, ccExpiryDateState) ||
                other.ccExpiryDateState == ccExpiryDateState) &&
            (identical(other.ccCVVState, ccCVVState) ||
                other.ccCVVState == ccCVVState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ccNumberState, ccHolderNameState,
      ccExpiryDateState, ccCVVState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPaymentInterfaceBlocStateImplCopyWith<
          _$SubscriptionPaymentInterfaceBlocStateImpl>
      get copyWith => __$$SubscriptionPaymentInterfaceBlocStateImplCopyWithImpl<
          _$SubscriptionPaymentInterfaceBlocStateImpl>(this, _$identity);
}

abstract class _SubscriptionPaymentInterfaceBlocState
    implements SubscriptionPaymentInterfaceBlocState {
  const factory _SubscriptionPaymentInterfaceBlocState(
          {required final CreditCardInputState<dynamic> ccNumberState,
          required final CreditCardInputState<dynamic> ccHolderNameState,
          required final CreditCardInputState<dynamic> ccExpiryDateState,
          required final CreditCardInputState<dynamic> ccCVVState}) =
      _$SubscriptionPaymentInterfaceBlocStateImpl;

  @override
  CreditCardInputState<dynamic> get ccNumberState;
  @override
  CreditCardInputState<dynamic> get ccHolderNameState;
  @override
  CreditCardInputState<dynamic> get ccExpiryDateState;
  @override
  CreditCardInputState<dynamic> get ccCVVState;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionPaymentInterfaceBlocStateImplCopyWith<
          _$SubscriptionPaymentInterfaceBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
