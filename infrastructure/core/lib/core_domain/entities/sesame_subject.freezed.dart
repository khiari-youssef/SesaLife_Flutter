// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sesame_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SesameSubject {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get moduleId => throw _privateConstructorUsedError;
  SesameClass get sesameClass => throw _privateConstructorUsedError;
  double get coefficient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SesameSubjectCopyWith<SesameSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesameSubjectCopyWith<$Res> {
  factory $SesameSubjectCopyWith(
          SesameSubject value, $Res Function(SesameSubject) then) =
      _$SesameSubjectCopyWithImpl<$Res, SesameSubject>;
  @useResult
  $Res call(
      {String id,
      String label,
      String description,
      String moduleId,
      SesameClass sesameClass,
      double coefficient});
}

/// @nodoc
class _$SesameSubjectCopyWithImpl<$Res, $Val extends SesameSubject>
    implements $SesameSubjectCopyWith<$Res> {
  _$SesameSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? description = null,
    Object? moduleId = null,
    Object? sesameClass = null,
    Object? coefficient = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
      sesameClass: null == sesameClass
          ? _value.sesameClass
          : sesameClass // ignore: cast_nullable_to_non_nullable
              as SesameClass,
      coefficient: null == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SesameSubjectImplCopyWith<$Res>
    implements $SesameSubjectCopyWith<$Res> {
  factory _$$SesameSubjectImplCopyWith(
          _$SesameSubjectImpl value, $Res Function(_$SesameSubjectImpl) then) =
      __$$SesameSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      String description,
      String moduleId,
      SesameClass sesameClass,
      double coefficient});
}

/// @nodoc
class __$$SesameSubjectImplCopyWithImpl<$Res>
    extends _$SesameSubjectCopyWithImpl<$Res, _$SesameSubjectImpl>
    implements _$$SesameSubjectImplCopyWith<$Res> {
  __$$SesameSubjectImplCopyWithImpl(
      _$SesameSubjectImpl _value, $Res Function(_$SesameSubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? description = null,
    Object? moduleId = null,
    Object? sesameClass = null,
    Object? coefficient = null,
  }) {
    return _then(_$SesameSubjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
      sesameClass: null == sesameClass
          ? _value.sesameClass
          : sesameClass // ignore: cast_nullable_to_non_nullable
              as SesameClass,
      coefficient: null == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SesameSubjectImpl implements _SesameSubject {
  const _$SesameSubjectImpl(
      {required this.id,
      required this.label,
      required this.description,
      required this.moduleId,
      required this.sesameClass,
      required this.coefficient});

  @override
  final String id;
  @override
  final String label;
  @override
  final String description;
  @override
  final String moduleId;
  @override
  final SesameClass sesameClass;
  @override
  final double coefficient;

  @override
  String toString() {
    return 'SesameSubject(id: $id, label: $label, description: $description, moduleId: $moduleId, sesameClass: $sesameClass, coefficient: $coefficient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SesameSubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId) &&
            (identical(other.sesameClass, sesameClass) ||
                other.sesameClass == sesameClass) &&
            (identical(other.coefficient, coefficient) ||
                other.coefficient == coefficient));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, label, description, moduleId, sesameClass, coefficient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SesameSubjectImplCopyWith<_$SesameSubjectImpl> get copyWith =>
      __$$SesameSubjectImplCopyWithImpl<_$SesameSubjectImpl>(this, _$identity);
}

abstract class _SesameSubject implements SesameSubject {
  const factory _SesameSubject(
      {required final String id,
      required final String label,
      required final String description,
      required final String moduleId,
      required final SesameClass sesameClass,
      required final double coefficient}) = _$SesameSubjectImpl;

  @override
  String get id;
  @override
  String get label;
  @override
  String get description;
  @override
  String get moduleId;
  @override
  SesameClass get sesameClass;
  @override
  double get coefficient;
  @override
  @JsonKey(ignore: true)
  _$$SesameSubjectImplCopyWith<_$SesameSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
