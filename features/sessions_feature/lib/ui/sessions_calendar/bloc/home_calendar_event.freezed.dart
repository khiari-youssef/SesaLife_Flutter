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
  SessionTypeFilter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, int month, SessionTypeFilter filter)
        loadAllSessionOfTheMonth,
    required TResult Function(DateTime date, SessionTypeFilter filter)
        loadAllSessionOfTheDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int year, int month, SessionTypeFilter filter)?
        loadAllSessionOfTheMonth,
    TResult? Function(DateTime date, SessionTypeFilter filter)?
        loadAllSessionOfTheDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, int month, SessionTypeFilter filter)?
        loadAllSessionOfTheMonth,
    TResult Function(DateTime date, SessionTypeFilter filter)?
        loadAllSessionOfTheDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadAllSessionOfTheMonth value)
        loadAllSessionOfTheMonth,
    required TResult Function(_loadAllSessionOfTheDate value)
        loadAllSessionOfTheDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadAllSessionOfTheMonth value)?
        loadAllSessionOfTheMonth,
    TResult? Function(_loadAllSessionOfTheDate value)? loadAllSessionOfTheDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadAllSessionOfTheMonth value)? loadAllSessionOfTheMonth,
    TResult Function(_loadAllSessionOfTheDate value)? loadAllSessionOfTheDate,
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
  $Res call({SessionTypeFilter filter});
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
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SessionTypeFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$loadAllSessionOfTheMonthImplCopyWith<$Res>
    implements $HomeCalendarEventCopyWith<$Res> {
  factory _$$loadAllSessionOfTheMonthImplCopyWith(
          _$loadAllSessionOfTheMonthImpl value,
          $Res Function(_$loadAllSessionOfTheMonthImpl) then) =
      __$$loadAllSessionOfTheMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month, SessionTypeFilter filter});
}

/// @nodoc
class __$$loadAllSessionOfTheMonthImplCopyWithImpl<$Res>
    extends _$HomeCalendarEventCopyWithImpl<$Res,
        _$loadAllSessionOfTheMonthImpl>
    implements _$$loadAllSessionOfTheMonthImplCopyWith<$Res> {
  __$$loadAllSessionOfTheMonthImplCopyWithImpl(
      _$loadAllSessionOfTheMonthImpl _value,
      $Res Function(_$loadAllSessionOfTheMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? filter = null,
  }) {
    return _then(_$loadAllSessionOfTheMonthImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SessionTypeFilter,
    ));
  }
}

/// @nodoc

class _$loadAllSessionOfTheMonthImpl implements _loadAllSessionOfTheMonth {
  const _$loadAllSessionOfTheMonthImpl(
      {required this.year, required this.month, required this.filter});

  @override
  final int year;
  @override
  final int month;
  @override
  final SessionTypeFilter filter;

  @override
  String toString() {
    return 'HomeCalendarEvent.loadAllSessionOfTheMonth(year: $year, month: $month, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadAllSessionOfTheMonthImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loadAllSessionOfTheMonthImplCopyWith<_$loadAllSessionOfTheMonthImpl>
      get copyWith => __$$loadAllSessionOfTheMonthImplCopyWithImpl<
          _$loadAllSessionOfTheMonthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, int month, SessionTypeFilter filter)
        loadAllSessionOfTheMonth,
    required TResult Function(DateTime date, SessionTypeFilter filter)
        loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheMonth(year, month, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int year, int month, SessionTypeFilter filter)?
        loadAllSessionOfTheMonth,
    TResult? Function(DateTime date, SessionTypeFilter filter)?
        loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheMonth?.call(year, month, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, int month, SessionTypeFilter filter)?
        loadAllSessionOfTheMonth,
    TResult Function(DateTime date, SessionTypeFilter filter)?
        loadAllSessionOfTheDate,
    required TResult orElse(),
  }) {
    if (loadAllSessionOfTheMonth != null) {
      return loadAllSessionOfTheMonth(year, month, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadAllSessionOfTheMonth value)
        loadAllSessionOfTheMonth,
    required TResult Function(_loadAllSessionOfTheDate value)
        loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadAllSessionOfTheMonth value)?
        loadAllSessionOfTheMonth,
    TResult? Function(_loadAllSessionOfTheDate value)? loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadAllSessionOfTheMonth value)? loadAllSessionOfTheMonth,
    TResult Function(_loadAllSessionOfTheDate value)? loadAllSessionOfTheDate,
    required TResult orElse(),
  }) {
    if (loadAllSessionOfTheMonth != null) {
      return loadAllSessionOfTheMonth(this);
    }
    return orElse();
  }
}

abstract class _loadAllSessionOfTheMonth implements HomeCalendarEvent {
  const factory _loadAllSessionOfTheMonth(
          {required final int year,
          required final int month,
          required final SessionTypeFilter filter}) =
      _$loadAllSessionOfTheMonthImpl;

  int get year;
  int get month;
  @override
  SessionTypeFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$loadAllSessionOfTheMonthImplCopyWith<_$loadAllSessionOfTheMonthImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loadAllSessionOfTheDateImplCopyWith<$Res>
    implements $HomeCalendarEventCopyWith<$Res> {
  factory _$$loadAllSessionOfTheDateImplCopyWith(
          _$loadAllSessionOfTheDateImpl value,
          $Res Function(_$loadAllSessionOfTheDateImpl) then) =
      __$$loadAllSessionOfTheDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, SessionTypeFilter filter});
}

/// @nodoc
class __$$loadAllSessionOfTheDateImplCopyWithImpl<$Res>
    extends _$HomeCalendarEventCopyWithImpl<$Res, _$loadAllSessionOfTheDateImpl>
    implements _$$loadAllSessionOfTheDateImplCopyWith<$Res> {
  __$$loadAllSessionOfTheDateImplCopyWithImpl(
      _$loadAllSessionOfTheDateImpl _value,
      $Res Function(_$loadAllSessionOfTheDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? filter = null,
  }) {
    return _then(_$loadAllSessionOfTheDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SessionTypeFilter,
    ));
  }
}

/// @nodoc

class _$loadAllSessionOfTheDateImpl implements _loadAllSessionOfTheDate {
  const _$loadAllSessionOfTheDateImpl(
      {required this.date, required this.filter});

  @override
  final DateTime date;
  @override
  final SessionTypeFilter filter;

  @override
  String toString() {
    return 'HomeCalendarEvent.loadAllSessionOfTheDate(date: $date, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadAllSessionOfTheDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loadAllSessionOfTheDateImplCopyWith<_$loadAllSessionOfTheDateImpl>
      get copyWith => __$$loadAllSessionOfTheDateImplCopyWithImpl<
          _$loadAllSessionOfTheDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int year, int month, SessionTypeFilter filter)
        loadAllSessionOfTheMonth,
    required TResult Function(DateTime date, SessionTypeFilter filter)
        loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheDate(date, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int year, int month, SessionTypeFilter filter)?
        loadAllSessionOfTheMonth,
    TResult? Function(DateTime date, SessionTypeFilter filter)?
        loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheDate?.call(date, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int year, int month, SessionTypeFilter filter)?
        loadAllSessionOfTheMonth,
    TResult Function(DateTime date, SessionTypeFilter filter)?
        loadAllSessionOfTheDate,
    required TResult orElse(),
  }) {
    if (loadAllSessionOfTheDate != null) {
      return loadAllSessionOfTheDate(date, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadAllSessionOfTheMonth value)
        loadAllSessionOfTheMonth,
    required TResult Function(_loadAllSessionOfTheDate value)
        loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadAllSessionOfTheMonth value)?
        loadAllSessionOfTheMonth,
    TResult? Function(_loadAllSessionOfTheDate value)? loadAllSessionOfTheDate,
  }) {
    return loadAllSessionOfTheDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadAllSessionOfTheMonth value)? loadAllSessionOfTheMonth,
    TResult Function(_loadAllSessionOfTheDate value)? loadAllSessionOfTheDate,
    required TResult orElse(),
  }) {
    if (loadAllSessionOfTheDate != null) {
      return loadAllSessionOfTheDate(this);
    }
    return orElse();
  }
}

abstract class _loadAllSessionOfTheDate implements HomeCalendarEvent {
  const factory _loadAllSessionOfTheDate(
      {required final DateTime date,
      required final SessionTypeFilter filter}) = _$loadAllSessionOfTheDateImpl;

  DateTime get date;
  @override
  SessionTypeFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$loadAllSessionOfTheDateImplCopyWith<_$loadAllSessionOfTheDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
