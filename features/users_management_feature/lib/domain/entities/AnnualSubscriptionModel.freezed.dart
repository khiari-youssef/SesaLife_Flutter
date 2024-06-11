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
  List<StudentSubscriptionRecord> get transactions =>
      throw _privateConstructorUsedError;

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
      {String id, String name, List<StudentSubscriptionRecord> transactions});
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
    Object? transactions = null,
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
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<StudentSubscriptionRecord>,
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
      {String id, String name, List<StudentSubscriptionRecord> transactions});
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
    Object? transactions = null,
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
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<StudentSubscriptionRecord>,
    ));
  }
}

/// @nodoc

class _$AnnualSubscriptionModelImpl implements _AnnualSubscriptionModel {
  const _$AnnualSubscriptionModelImpl(
      {required this.id,
      required this.name,
      required final List<StudentSubscriptionRecord> transactions})
      : _transactions = transactions;

  @override
  final String id;
  @override
  final String name;
  final List<StudentSubscriptionRecord> _transactions;
  @override
  List<StudentSubscriptionRecord> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'AnnualSubscriptionModel(id: $id, name: $name, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnualSubscriptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_transactions));

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
          required final List<StudentSubscriptionRecord> transactions}) =
      _$AnnualSubscriptionModelImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<StudentSubscriptionRecord> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$AnnualSubscriptionModelImplCopyWith<_$AnnualSubscriptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
