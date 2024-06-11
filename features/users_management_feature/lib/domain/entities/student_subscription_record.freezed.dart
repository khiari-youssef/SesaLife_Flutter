// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_subscription_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentSubscriptionRecord {
  UnPaidStudentSubscriptionRecord get data =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnPaidStudentSubscriptionRecord data) unPaid,
    required TResult Function(PaidStudentSubscriptionRecord data) paid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnPaidStudentSubscriptionRecord data)? unPaid,
    TResult? Function(PaidStudentSubscriptionRecord data)? paid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnPaidStudentSubscriptionRecord data)? unPaid,
    TResult Function(PaidStudentSubscriptionRecord data)? paid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnPaid value) unPaid,
    required TResult Function(_Paid value) paid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnPaid value)? unPaid,
    TResult? Function(_Paid value)? paid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnPaid value)? unPaid,
    TResult Function(_Paid value)? paid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSubscriptionRecordCopyWith<$Res> {
  factory $StudentSubscriptionRecordCopyWith(StudentSubscriptionRecord value,
          $Res Function(StudentSubscriptionRecord) then) =
      _$StudentSubscriptionRecordCopyWithImpl<$Res, StudentSubscriptionRecord>;
}

/// @nodoc
class _$StudentSubscriptionRecordCopyWithImpl<$Res,
        $Val extends StudentSubscriptionRecord>
    implements $StudentSubscriptionRecordCopyWith<$Res> {
  _$StudentSubscriptionRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnPaidImplCopyWith<$Res> {
  factory _$$UnPaidImplCopyWith(
          _$UnPaidImpl value, $Res Function(_$UnPaidImpl) then) =
      __$$UnPaidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UnPaidStudentSubscriptionRecord data});
}

/// @nodoc
class __$$UnPaidImplCopyWithImpl<$Res>
    extends _$StudentSubscriptionRecordCopyWithImpl<$Res, _$UnPaidImpl>
    implements _$$UnPaidImplCopyWith<$Res> {
  __$$UnPaidImplCopyWithImpl(
      _$UnPaidImpl _value, $Res Function(_$UnPaidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UnPaidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnPaidStudentSubscriptionRecord,
    ));
  }
}

/// @nodoc

class _$UnPaidImpl implements _UnPaid {
  const _$UnPaidImpl({required this.data});

  @override
  final UnPaidStudentSubscriptionRecord data;

  @override
  String toString() {
    return 'StudentSubscriptionRecord.unPaid(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnPaidImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnPaidImplCopyWith<_$UnPaidImpl> get copyWith =>
      __$$UnPaidImplCopyWithImpl<_$UnPaidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnPaidStudentSubscriptionRecord data) unPaid,
    required TResult Function(PaidStudentSubscriptionRecord data) paid,
  }) {
    return unPaid(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnPaidStudentSubscriptionRecord data)? unPaid,
    TResult? Function(PaidStudentSubscriptionRecord data)? paid,
  }) {
    return unPaid?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnPaidStudentSubscriptionRecord data)? unPaid,
    TResult Function(PaidStudentSubscriptionRecord data)? paid,
    required TResult orElse(),
  }) {
    if (unPaid != null) {
      return unPaid(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnPaid value) unPaid,
    required TResult Function(_Paid value) paid,
  }) {
    return unPaid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnPaid value)? unPaid,
    TResult? Function(_Paid value)? paid,
  }) {
    return unPaid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnPaid value)? unPaid,
    TResult Function(_Paid value)? paid,
    required TResult orElse(),
  }) {
    if (unPaid != null) {
      return unPaid(this);
    }
    return orElse();
  }
}

abstract class _UnPaid implements StudentSubscriptionRecord {
  const factory _UnPaid({required final UnPaidStudentSubscriptionRecord data}) =
      _$UnPaidImpl;

  @override
  UnPaidStudentSubscriptionRecord get data;
  @JsonKey(ignore: true)
  _$$UnPaidImplCopyWith<_$UnPaidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaidImplCopyWith<$Res> {
  factory _$$PaidImplCopyWith(
          _$PaidImpl value, $Res Function(_$PaidImpl) then) =
      __$$PaidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaidStudentSubscriptionRecord data});
}

/// @nodoc
class __$$PaidImplCopyWithImpl<$Res>
    extends _$StudentSubscriptionRecordCopyWithImpl<$Res, _$PaidImpl>
    implements _$$PaidImplCopyWith<$Res> {
  __$$PaidImplCopyWithImpl(_$PaidImpl _value, $Res Function(_$PaidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PaidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaidStudentSubscriptionRecord,
    ));
  }
}

/// @nodoc

class _$PaidImpl implements _Paid {
  const _$PaidImpl({required this.data});

  @override
  final PaidStudentSubscriptionRecord data;

  @override
  String toString() {
    return 'StudentSubscriptionRecord.paid(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaidImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidImplCopyWith<_$PaidImpl> get copyWith =>
      __$$PaidImplCopyWithImpl<_$PaidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnPaidStudentSubscriptionRecord data) unPaid,
    required TResult Function(PaidStudentSubscriptionRecord data) paid,
  }) {
    return paid(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnPaidStudentSubscriptionRecord data)? unPaid,
    TResult? Function(PaidStudentSubscriptionRecord data)? paid,
  }) {
    return paid?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnPaidStudentSubscriptionRecord data)? unPaid,
    TResult Function(PaidStudentSubscriptionRecord data)? paid,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnPaid value) unPaid,
    required TResult Function(_Paid value) paid,
  }) {
    return paid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnPaid value)? unPaid,
    TResult? Function(_Paid value)? paid,
  }) {
    return paid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnPaid value)? unPaid,
    TResult Function(_Paid value)? paid,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(this);
    }
    return orElse();
  }
}

abstract class _Paid implements StudentSubscriptionRecord {
  const factory _Paid({required final PaidStudentSubscriptionRecord data}) =
      _$PaidImpl;

  @override
  PaidStudentSubscriptionRecord get data;
  @JsonKey(ignore: true)
  _$$PaidImplCopyWith<_$PaidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
