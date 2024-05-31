// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SesameUploadRepository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SesameUploadRepository {
  String get baseUrl => throw _privateConstructorUsedError;
  String get moduleBucket => throw _privateConstructorUsedError;
  String get subjectBucket => throw _privateConstructorUsedError;
  String get classBucket => throw _privateConstructorUsedError;
  String get contentName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SesameUploadRepositoryCopyWith<SesameUploadRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesameUploadRepositoryCopyWith<$Res> {
  factory $SesameUploadRepositoryCopyWith(SesameUploadRepository value,
          $Res Function(SesameUploadRepository) then) =
      _$SesameUploadRepositoryCopyWithImpl<$Res, SesameUploadRepository>;
  @useResult
  $Res call(
      {String baseUrl,
      String moduleBucket,
      String subjectBucket,
      String classBucket,
      String contentName});
}

/// @nodoc
class _$SesameUploadRepositoryCopyWithImpl<$Res,
        $Val extends SesameUploadRepository>
    implements $SesameUploadRepositoryCopyWith<$Res> {
  _$SesameUploadRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? moduleBucket = null,
    Object? subjectBucket = null,
    Object? classBucket = null,
    Object? contentName = null,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      moduleBucket: null == moduleBucket
          ? _value.moduleBucket
          : moduleBucket // ignore: cast_nullable_to_non_nullable
              as String,
      subjectBucket: null == subjectBucket
          ? _value.subjectBucket
          : subjectBucket // ignore: cast_nullable_to_non_nullable
              as String,
      classBucket: null == classBucket
          ? _value.classBucket
          : classBucket // ignore: cast_nullable_to_non_nullable
              as String,
      contentName: null == contentName
          ? _value.contentName
          : contentName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SesameUploadRepositoryImplCopyWith<$Res>
    implements $SesameUploadRepositoryCopyWith<$Res> {
  factory _$$SesameUploadRepositoryImplCopyWith(
          _$SesameUploadRepositoryImpl value,
          $Res Function(_$SesameUploadRepositoryImpl) then) =
      __$$SesameUploadRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseUrl,
      String moduleBucket,
      String subjectBucket,
      String classBucket,
      String contentName});
}

/// @nodoc
class __$$SesameUploadRepositoryImplCopyWithImpl<$Res>
    extends _$SesameUploadRepositoryCopyWithImpl<$Res,
        _$SesameUploadRepositoryImpl>
    implements _$$SesameUploadRepositoryImplCopyWith<$Res> {
  __$$SesameUploadRepositoryImplCopyWithImpl(
      _$SesameUploadRepositoryImpl _value,
      $Res Function(_$SesameUploadRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? moduleBucket = null,
    Object? subjectBucket = null,
    Object? classBucket = null,
    Object? contentName = null,
  }) {
    return _then(_$SesameUploadRepositoryImpl(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      moduleBucket: null == moduleBucket
          ? _value.moduleBucket
          : moduleBucket // ignore: cast_nullable_to_non_nullable
              as String,
      subjectBucket: null == subjectBucket
          ? _value.subjectBucket
          : subjectBucket // ignore: cast_nullable_to_non_nullable
              as String,
      classBucket: null == classBucket
          ? _value.classBucket
          : classBucket // ignore: cast_nullable_to_non_nullable
              as String,
      contentName: null == contentName
          ? _value.contentName
          : contentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SesameUploadRepositoryImpl implements _SesameUploadRepository {
  const _$SesameUploadRepositoryImpl(
      {required this.baseUrl,
      required this.moduleBucket,
      required this.subjectBucket,
      required this.classBucket,
      required this.contentName});

  @override
  final String baseUrl;
  @override
  final String moduleBucket;
  @override
  final String subjectBucket;
  @override
  final String classBucket;
  @override
  final String contentName;

  @override
  String toString() {
    return 'SesameUploadRepository(baseUrl: $baseUrl, moduleBucket: $moduleBucket, subjectBucket: $subjectBucket, classBucket: $classBucket, contentName: $contentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SesameUploadRepositoryImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.moduleBucket, moduleBucket) ||
                other.moduleBucket == moduleBucket) &&
            (identical(other.subjectBucket, subjectBucket) ||
                other.subjectBucket == subjectBucket) &&
            (identical(other.classBucket, classBucket) ||
                other.classBucket == classBucket) &&
            (identical(other.contentName, contentName) ||
                other.contentName == contentName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseUrl, moduleBucket,
      subjectBucket, classBucket, contentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SesameUploadRepositoryImplCopyWith<_$SesameUploadRepositoryImpl>
      get copyWith => __$$SesameUploadRepositoryImplCopyWithImpl<
          _$SesameUploadRepositoryImpl>(this, _$identity);
}

abstract class _SesameUploadRepository implements SesameUploadRepository {
  const factory _SesameUploadRepository(
      {required final String baseUrl,
      required final String moduleBucket,
      required final String subjectBucket,
      required final String classBucket,
      required final String contentName}) = _$SesameUploadRepositoryImpl;

  @override
  String get baseUrl;
  @override
  String get moduleBucket;
  @override
  String get subjectBucket;
  @override
  String get classBucket;
  @override
  String get contentName;
  @override
  @JsonKey(ignore: true)
  _$$SesameUploadRepositoryImplCopyWith<_$SesameUploadRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
