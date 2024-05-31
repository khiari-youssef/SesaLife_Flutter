// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserProfilePreview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfilePreview {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfilePreviewCopyWith<UserProfilePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfilePreviewCopyWith<$Res> {
  factory $UserProfilePreviewCopyWith(
          UserProfilePreview value, $Res Function(UserProfilePreview) then) =
      _$UserProfilePreviewCopyWithImpl<$Res, UserProfilePreview>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String email,
      String profilePicture});
}

/// @nodoc
class _$UserProfilePreviewCopyWithImpl<$Res, $Val extends UserProfilePreview>
    implements $UserProfilePreviewCopyWith<$Res> {
  _$UserProfilePreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfilePreviewImplCopyWith<$Res>
    implements $UserProfilePreviewCopyWith<$Res> {
  factory _$$UserProfilePreviewImplCopyWith(_$UserProfilePreviewImpl value,
          $Res Function(_$UserProfilePreviewImpl) then) =
      __$$UserProfilePreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String email,
      String profilePicture});
}

/// @nodoc
class __$$UserProfilePreviewImplCopyWithImpl<$Res>
    extends _$UserProfilePreviewCopyWithImpl<$Res, _$UserProfilePreviewImpl>
    implements _$$UserProfilePreviewImplCopyWith<$Res> {
  __$$UserProfilePreviewImplCopyWithImpl(_$UserProfilePreviewImpl _value,
      $Res Function(_$UserProfilePreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? profilePicture = null,
  }) {
    return _then(_$UserProfilePreviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfilePreviewImpl implements _UserProfilePreview {
  const _$UserProfilePreviewImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.profilePicture});

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String profilePicture;

  @override
  String toString() {
    return 'UserProfilePreview(id: $id, firstName: $firstName, lastName: $lastName, email: $email, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfilePreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, email, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfilePreviewImplCopyWith<_$UserProfilePreviewImpl> get copyWith =>
      __$$UserProfilePreviewImplCopyWithImpl<_$UserProfilePreviewImpl>(
          this, _$identity);
}

abstract class _UserProfilePreview implements UserProfilePreview {
  const factory _UserProfilePreview(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String profilePicture}) = _$UserProfilePreviewImpl;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$UserProfilePreviewImplCopyWith<_$UserProfilePreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
