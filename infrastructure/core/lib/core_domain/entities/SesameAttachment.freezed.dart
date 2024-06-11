// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SesameAttachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SesameAttachment {
  SesameAttachmentType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, SesameAttachmentType type) local,
    required TResult Function(String url, SesameAttachmentType type) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, SesameAttachmentType type)? local,
    TResult? Function(String url, SesameAttachmentType type)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, SesameAttachmentType type)? local,
    TResult Function(String url, SesameAttachmentType type)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_local value) local,
    required TResult Function(_network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_local value)? local,
    TResult? Function(_network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_local value)? local,
    TResult Function(_network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SesameAttachmentCopyWith<SesameAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesameAttachmentCopyWith<$Res> {
  factory $SesameAttachmentCopyWith(
          SesameAttachment value, $Res Function(SesameAttachment) then) =
      _$SesameAttachmentCopyWithImpl<$Res, SesameAttachment>;
  @useResult
  $Res call({SesameAttachmentType type});
}

/// @nodoc
class _$SesameAttachmentCopyWithImpl<$Res, $Val extends SesameAttachment>
    implements $SesameAttachmentCopyWith<$Res> {
  _$SesameAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SesameAttachmentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$localImplCopyWith<$Res>
    implements $SesameAttachmentCopyWith<$Res> {
  factory _$$localImplCopyWith(
          _$localImpl value, $Res Function(_$localImpl) then) =
      __$$localImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, SesameAttachmentType type});
}

/// @nodoc
class __$$localImplCopyWithImpl<$Res>
    extends _$SesameAttachmentCopyWithImpl<$Res, _$localImpl>
    implements _$$localImplCopyWith<$Res> {
  __$$localImplCopyWithImpl(
      _$localImpl _value, $Res Function(_$localImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? type = null,
  }) {
    return _then(_$localImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SesameAttachmentType,
    ));
  }
}

/// @nodoc

class _$localImpl implements _local {
  const _$localImpl({required this.uri, required this.type});

  @override
  final String uri;
  @override
  final SesameAttachmentType type;

  @override
  String toString() {
    return 'SesameAttachment.local(uri: $uri, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$localImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$localImplCopyWith<_$localImpl> get copyWith =>
      __$$localImplCopyWithImpl<_$localImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, SesameAttachmentType type) local,
    required TResult Function(String url, SesameAttachmentType type) network,
  }) {
    return local(uri, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, SesameAttachmentType type)? local,
    TResult? Function(String url, SesameAttachmentType type)? network,
  }) {
    return local?.call(uri, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, SesameAttachmentType type)? local,
    TResult Function(String url, SesameAttachmentType type)? network,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(uri, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_local value) local,
    required TResult Function(_network value) network,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_local value)? local,
    TResult? Function(_network value)? network,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_local value)? local,
    TResult Function(_network value)? network,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _local implements SesameAttachment {
  const factory _local(
      {required final String uri,
      required final SesameAttachmentType type}) = _$localImpl;

  String get uri;
  @override
  SesameAttachmentType get type;
  @override
  @JsonKey(ignore: true)
  _$$localImplCopyWith<_$localImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$networkImplCopyWith<$Res>
    implements $SesameAttachmentCopyWith<$Res> {
  factory _$$networkImplCopyWith(
          _$networkImpl value, $Res Function(_$networkImpl) then) =
      __$$networkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, SesameAttachmentType type});
}

/// @nodoc
class __$$networkImplCopyWithImpl<$Res>
    extends _$SesameAttachmentCopyWithImpl<$Res, _$networkImpl>
    implements _$$networkImplCopyWith<$Res> {
  __$$networkImplCopyWithImpl(
      _$networkImpl _value, $Res Function(_$networkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$networkImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SesameAttachmentType,
    ));
  }
}

/// @nodoc

class _$networkImpl implements _network {
  const _$networkImpl({required this.url, required this.type});

  @override
  final String url;
  @override
  final SesameAttachmentType type;

  @override
  String toString() {
    return 'SesameAttachment.network(url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$networkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$networkImplCopyWith<_$networkImpl> get copyWith =>
      __$$networkImplCopyWithImpl<_$networkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri, SesameAttachmentType type) local,
    required TResult Function(String url, SesameAttachmentType type) network,
  }) {
    return network(url, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri, SesameAttachmentType type)? local,
    TResult? Function(String url, SesameAttachmentType type)? network,
  }) {
    return network?.call(url, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri, SesameAttachmentType type)? local,
    TResult Function(String url, SesameAttachmentType type)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(url, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_local value) local,
    required TResult Function(_network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_local value)? local,
    TResult? Function(_network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_local value)? local,
    TResult Function(_network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _network implements SesameAttachment {
  const factory _network(
      {required final String url,
      required final SesameAttachmentType type}) = _$networkImpl;

  String get url;
  @override
  SesameAttachmentType get type;
  @override
  @JsonKey(ignore: true)
  _$$networkImplCopyWith<_$networkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
