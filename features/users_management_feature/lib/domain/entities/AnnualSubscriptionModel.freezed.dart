// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AnnualSubscriptionModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnnualSubscriptionModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Int? get upFrontFee => throw _privateConstructorUsedError;
  Map<String, Int> get paymentParts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnualSubscriptionModelCopyWith<AnnualSubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnualSubscriptionModelCopyWith<$Res> {
  factory $AnnualSubscriptionModelCopyWith(AnnualSubscriptionModel value,
          $Res Function(AnnualSubscriptionModel) then) =
      _$AnnualSubscriptionModelCopyWithImpl<$Res, AnnualSubscriptionModel>;
  @useResult
  $Res call(
      {String id, String name, Int? upFrontFee, Map<String, Int> paymentParts});
}

/// @nodoc
class _$AnnualSubscriptionModelCopyWithImpl<$Res,
        $Val extends AnnualSubscriptionModel>
    implements $AnnualSubscriptionModelCopyWith<$Res> {
  _$AnnualSubscriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? upFrontFee = freezed,
    Object? paymentParts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upFrontFee: freezed == upFrontFee
          ? _value.upFrontFee
          : upFrontFee // ignore: cast_nullable_to_non_nullable
              as Int?,
      paymentParts: null == paymentParts
          ? _value.paymentParts
          : paymentParts // ignore: cast_nullable_to_non_nullable
              as Map<String, Int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnualSubscriptionModelImplCopyWith<$Res>
    implements $AnnualSubscriptionModelCopyWith<$Res> {
  factory _$$AnnualSubscriptionModelImplCopyWith(
          _$AnnualSubscriptionModelImpl value,
          $Res Function(_$AnnualSubscriptionModelImpl) then) =
      __$$AnnualSubscriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, Int? upFrontFee, Map<String, Int> paymentParts});
}

/// @nodoc
class __$$AnnualSubscriptionModelImplCopyWithImpl<$Res>
    extends _$AnnualSubscriptionModelCopyWithImpl<$Res,
        _$AnnualSubscriptionModelImpl>
    implements _$$AnnualSubscriptionModelImplCopyWith<$Res> {
  __$$AnnualSubscriptionModelImplCopyWithImpl(
      _$AnnualSubscriptionModelImpl _value,
      $Res Function(_$AnnualSubscriptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? upFrontFee = freezed,
    Object? paymentParts = null,
  }) {
    return _then(_$AnnualSubscriptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upFrontFee: freezed == upFrontFee
          ? _value.upFrontFee
          : upFrontFee // ignore: cast_nullable_to_non_nullable
              as Int?,
      paymentParts: null == paymentParts
          ? _value._paymentParts
          : paymentParts // ignore: cast_nullable_to_non_nullable
              as Map<String, Int>,
    ));
  }
}

/// @nodoc

class _$AnnualSubscriptionModelImpl implements _AnnualSubscriptionModel {
  const _$AnnualSubscriptionModelImpl(
      {required this.id,
      required this.name,
      this.upFrontFee,
      required final Map<String, Int> paymentParts})
      : _paymentParts = paymentParts;

  @override
  final String id;
  @override
  final String name;
  @override
  final Int? upFrontFee;
  final Map<String, Int> _paymentParts;
  @override
  Map<String, Int> get paymentParts {
    if (_paymentParts is EqualUnmodifiableMapView) return _paymentParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_paymentParts);
  }

  @override
  String toString() {
    return 'AnnualSubscriptionModel(id: $id, name: $name, upFrontFee: $upFrontFee, paymentParts: $paymentParts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnualSubscriptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.upFrontFee, upFrontFee) ||
                other.upFrontFee == upFrontFee) &&
            const DeepCollectionEquality()
                .equals(other._paymentParts, _paymentParts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, upFrontFee,
      const DeepCollectionEquality().hash(_paymentParts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnualSubscriptionModelImplCopyWith<_$AnnualSubscriptionModelImpl>
      get copyWith => __$$AnnualSubscriptionModelImplCopyWithImpl<
          _$AnnualSubscriptionModelImpl>(this, _$identity);
}

abstract class _AnnualSubscriptionModel implements AnnualSubscriptionModel {
  const factory _AnnualSubscriptionModel(
          {required final String id,
          required final String name,
          final Int? upFrontFee,
          required final Map<String, Int> paymentParts}) =
      _$AnnualSubscriptionModelImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  Int? get upFrontFee;
  @override
  Map<String, Int> get paymentParts;
  @override
  @JsonKey(ignore: true)
  _$$AnnualSubscriptionModelImplCopyWith<_$AnnualSubscriptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
