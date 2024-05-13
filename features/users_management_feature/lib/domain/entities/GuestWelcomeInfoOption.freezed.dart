// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GuestWelcomeInfoOption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GuestWelcomeInfoOption {
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get clickDestinationPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestWelcomeInfoOptionCopyWith<GuestWelcomeInfoOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestWelcomeInfoOptionCopyWith<$Res> {
  factory $GuestWelcomeInfoOptionCopyWith(GuestWelcomeInfoOption value,
          $Res Function(GuestWelcomeInfoOption) then) =
      _$GuestWelcomeInfoOptionCopyWithImpl<$Res, GuestWelcomeInfoOption>;
  @useResult
  $Res call({String headline, String description, String clickDestinationPath});
}

/// @nodoc
class _$GuestWelcomeInfoOptionCopyWithImpl<$Res,
        $Val extends GuestWelcomeInfoOption>
    implements $GuestWelcomeInfoOptionCopyWith<$Res> {
  _$GuestWelcomeInfoOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headline = null,
    Object? description = null,
    Object? clickDestinationPath = null,
  }) {
    return _then(_value.copyWith(
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      clickDestinationPath: null == clickDestinationPath
          ? _value.clickDestinationPath
          : clickDestinationPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestWelcomeInfoOptionImplCopyWith<$Res>
    implements $GuestWelcomeInfoOptionCopyWith<$Res> {
  factory _$$GuestWelcomeInfoOptionImplCopyWith(
          _$GuestWelcomeInfoOptionImpl value,
          $Res Function(_$GuestWelcomeInfoOptionImpl) then) =
      __$$GuestWelcomeInfoOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String headline, String description, String clickDestinationPath});
}

/// @nodoc
class __$$GuestWelcomeInfoOptionImplCopyWithImpl<$Res>
    extends _$GuestWelcomeInfoOptionCopyWithImpl<$Res,
        _$GuestWelcomeInfoOptionImpl>
    implements _$$GuestWelcomeInfoOptionImplCopyWith<$Res> {
  __$$GuestWelcomeInfoOptionImplCopyWithImpl(
      _$GuestWelcomeInfoOptionImpl _value,
      $Res Function(_$GuestWelcomeInfoOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headline = null,
    Object? description = null,
    Object? clickDestinationPath = null,
  }) {
    return _then(_$GuestWelcomeInfoOptionImpl(
      null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == clickDestinationPath
          ? _value.clickDestinationPath
          : clickDestinationPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GuestWelcomeInfoOptionImpl implements _GuestWelcomeInfoOption {
  const _$GuestWelcomeInfoOptionImpl(
      this.headline, this.description, this.clickDestinationPath);

  @override
  final String headline;
  @override
  final String description;
  @override
  final String clickDestinationPath;

  @override
  String toString() {
    return 'GuestWelcomeInfoOption(headline: $headline, description: $description, clickDestinationPath: $clickDestinationPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestWelcomeInfoOptionImpl &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.clickDestinationPath, clickDestinationPath) ||
                other.clickDestinationPath == clickDestinationPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, headline, description, clickDestinationPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestWelcomeInfoOptionImplCopyWith<_$GuestWelcomeInfoOptionImpl>
      get copyWith => __$$GuestWelcomeInfoOptionImplCopyWithImpl<
          _$GuestWelcomeInfoOptionImpl>(this, _$identity);
}

abstract class _GuestWelcomeInfoOption implements GuestWelcomeInfoOption {
  const factory _GuestWelcomeInfoOption(
      final String headline,
      final String description,
      final String clickDestinationPath) = _$GuestWelcomeInfoOptionImpl;

  @override
  String get headline;
  @override
  String get description;
  @override
  String get clickDestinationPath;
  @override
  @JsonKey(ignore: true)
  _$$GuestWelcomeInfoOptionImplCopyWith<_$GuestWelcomeInfoOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
