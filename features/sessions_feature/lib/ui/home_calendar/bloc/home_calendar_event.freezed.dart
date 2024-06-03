// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_calendar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeCalendarEvent {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, int month) loadAllSessionOfTheMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int year, int month)? loadAllSessionOfTheMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, int month)? loadAllSessionOfTheMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeCalendarEvent value)
        loadAllSessionOfTheMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeCalendarEvent value)? loadAllSessionOfTheMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeCalendarEvent value)? loadAllSessionOfTheMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCalendarEventCopyWith<HomeCalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCalendarEventCopyWith<$Res> {
  factory $HomeCalendarEventCopyWith(
          HomeCalendarEvent value, $Res Function(HomeCalendarEvent) then) =
      _$HomeCalendarEventCopyWithImpl<$Res, HomeCalendarEvent>;
  @useResult
  $Res call({int year, int month});
}

/// @nodoc
class _$HomeCalendarEventCopyWithImpl<$Res, $Val extends HomeCalendarEvent>
    implements $HomeCalendarEventCopyWith<$Res> {
  _$HomeCalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeCalendarEventImplCopyWith<$Res>
    implements $HomeCalendarEventCopyWith<$Res> {
  factory _$$HomeCalendarEventImplCopyWith(_$HomeCalendarEventImpl value,
          $Res Function(_$HomeCalendarEventImpl) then) =
      __$$HomeCalendarEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month});
}

/// @nodoc
class __$$HomeCalendarEventImplCopyWithImpl<$Res>
    extends _$HomeCalendarEventCopyWithImpl<$Res, _$HomeCalendarEventImpl>
    implements _$$HomeCalendarEventImplCopyWith<$Res> {
  __$$HomeCalendarEventImplCopyWithImpl(_$HomeCalendarEventImpl _value,
      $Res Function(_$HomeCalendarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_$HomeCalendarEventImpl(
      null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeCalendarEventImpl implements _HomeCalendarEvent {
  const _$HomeCalendarEventImpl(this.year, this.month);

  @override
  final int year;
  @override
  final int month;

  @override
  String toString() {
    return 'HomeCalendarEvent.loadAllSessionOfTheMonth(year: $year, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeCalendarEventImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeCalendarEventImplCopyWith<_$HomeCalendarEventImpl> get copyWith =>
      __$$HomeCalendarEventImplCopyWithImpl<_$HomeCalendarEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, int month) loadAllSessionOfTheMonth,
  }) {
    return loadAllSessionOfTheMonth(year, month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int year, int month)? loadAllSessionOfTheMonth,
  }) {
    return loadAllSessionOfTheMonth?.call(year, month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, int month)? loadAllSessionOfTheMonth,
    required TResult orElse(),
  }) {
    if (loadAllSessionOfTheMonth != null) {
      return loadAllSessionOfTheMonth(year, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeCalendarEvent value)
        loadAllSessionOfTheMonth,
  }) {
    return loadAllSessionOfTheMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeCalendarEvent value)? loadAllSessionOfTheMonth,
  }) {
    return loadAllSessionOfTheMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeCalendarEvent value)? loadAllSessionOfTheMonth,
    required TResult orElse(),
  }) {
    if (loadAllSessionOfTheMonth != null) {
      return loadAllSessionOfTheMonth(this);
    }
    return orElse();
  }
}

abstract class _HomeCalendarEvent implements HomeCalendarEvent {
  const factory _HomeCalendarEvent(final int year, final int month) =
      _$HomeCalendarEventImpl;

  @override
  int get year;
  @override
  int get month;
  @override
  @JsonKey(ignore: true)
  _$$HomeCalendarEventImplCopyWith<_$HomeCalendarEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
