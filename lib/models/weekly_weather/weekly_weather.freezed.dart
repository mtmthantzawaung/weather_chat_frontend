// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyWeather _$WeeklyWeatherFromJson(Map<String, dynamic> json) {
  return _WeeklyWeather.fromJson(json);
}

/// @nodoc
mixin _$WeeklyWeather {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'generationtime_ms')
  double get generationtimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation => throw _privateConstructorUsedError;
  double get elevation => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_units')
  CurrentUnits get currentUnits => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_units')
  DailyUnits get dailyUnits => throw _privateConstructorUsedError;
  Daily get daily => throw _privateConstructorUsedError;

  /// Serializes this WeeklyWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyWeatherCopyWith<WeeklyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyWeatherCopyWith<$Res> {
  factory $WeeklyWeatherCopyWith(
          WeeklyWeather value, $Res Function(WeeklyWeather) then) =
      _$WeeklyWeatherCopyWithImpl<$Res, WeeklyWeather>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(name: 'generationtime_ms') double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      double elevation,
      @JsonKey(name: 'current_units') CurrentUnits currentUnits,
      Current current,
      @JsonKey(name: 'daily_units') DailyUnits dailyUnits,
      Daily daily});

  $CurrentUnitsCopyWith<$Res> get currentUnits;
  $CurrentCopyWith<$Res> get current;
  $DailyUnitsCopyWith<$Res> get dailyUnits;
  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class _$WeeklyWeatherCopyWithImpl<$Res, $Val extends WeeklyWeather>
    implements $WeeklyWeatherCopyWith<$Res> {
  _$WeeklyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentUnits = null,
    Object? current = null,
    Object? dailyUnits = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentUnits: null == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      dailyUnits: null == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ) as $Val);
  }

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<$Res> get currentUnits {
    return $CurrentUnitsCopyWith<$Res>(_value.currentUnits, (value) {
      return _then(_value.copyWith(currentUnits: value) as $Val);
    });
  }

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<$Res> get dailyUnits {
    return $DailyUnitsCopyWith<$Res>(_value.dailyUnits, (value) {
      return _then(_value.copyWith(dailyUnits: value) as $Val);
    });
  }

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res> get daily {
    return $DailyCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyWeatherImplCopyWith<$Res>
    implements $WeeklyWeatherCopyWith<$Res> {
  factory _$$WeeklyWeatherImplCopyWith(
          _$WeeklyWeatherImpl value, $Res Function(_$WeeklyWeatherImpl) then) =
      __$$WeeklyWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(name: 'generationtime_ms') double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      double elevation,
      @JsonKey(name: 'current_units') CurrentUnits currentUnits,
      Current current,
      @JsonKey(name: 'daily_units') DailyUnits dailyUnits,
      Daily daily});

  @override
  $CurrentUnitsCopyWith<$Res> get currentUnits;
  @override
  $CurrentCopyWith<$Res> get current;
  @override
  $DailyUnitsCopyWith<$Res> get dailyUnits;
  @override
  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class __$$WeeklyWeatherImplCopyWithImpl<$Res>
    extends _$WeeklyWeatherCopyWithImpl<$Res, _$WeeklyWeatherImpl>
    implements _$$WeeklyWeatherImplCopyWith<$Res> {
  __$$WeeklyWeatherImplCopyWithImpl(
      _$WeeklyWeatherImpl _value, $Res Function(_$WeeklyWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentUnits = null,
    Object? current = null,
    Object? dailyUnits = null,
    Object? daily = null,
  }) {
    return _then(_$WeeklyWeatherImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentUnits: null == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      dailyUnits: null == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyWeatherImpl implements _WeeklyWeather {
  const _$WeeklyWeatherImpl(
      {required this.latitude,
      required this.longitude,
      @JsonKey(name: 'generationtime_ms') required this.generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') required this.utcOffsetSeconds,
      required this.timezone,
      @JsonKey(name: 'timezone_abbreviation')
      required this.timezoneAbbreviation,
      required this.elevation,
      @JsonKey(name: 'current_units') required this.currentUnits,
      required this.current,
      @JsonKey(name: 'daily_units') required this.dailyUnits,
      required this.daily});

  factory _$WeeklyWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyWeatherImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @JsonKey(name: 'generationtime_ms')
  final double generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  final int utcOffsetSeconds;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  final String timezoneAbbreviation;
  @override
  final double elevation;
  @override
  @JsonKey(name: 'current_units')
  final CurrentUnits currentUnits;
  @override
  final Current current;
  @override
  @JsonKey(name: 'daily_units')
  final DailyUnits dailyUnits;
  @override
  final Daily daily;

  @override
  String toString() {
    return 'WeeklyWeather(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentUnits: $currentUnits, current: $current, dailyUnits: $dailyUnits, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyWeatherImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentUnits, currentUnits) ||
                other.currentUnits == currentUnits) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentUnits,
      current,
      dailyUnits,
      daily);

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyWeatherImplCopyWith<_$WeeklyWeatherImpl> get copyWith =>
      __$$WeeklyWeatherImplCopyWithImpl<_$WeeklyWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyWeatherImplToJson(
      this,
    );
  }
}

abstract class _WeeklyWeather implements WeeklyWeather {
  const factory _WeeklyWeather(
      {required final double latitude,
      required final double longitude,
      @JsonKey(name: 'generationtime_ms')
      required final double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') required final int utcOffsetSeconds,
      required final String timezone,
      @JsonKey(name: 'timezone_abbreviation')
      required final String timezoneAbbreviation,
      required final double elevation,
      @JsonKey(name: 'current_units') required final CurrentUnits currentUnits,
      required final Current current,
      @JsonKey(name: 'daily_units') required final DailyUnits dailyUnits,
      required final Daily daily}) = _$WeeklyWeatherImpl;

  factory _WeeklyWeather.fromJson(Map<String, dynamic> json) =
      _$WeeklyWeatherImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(name: 'generationtime_ms')
  double get generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds;
  @override
  String get timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation;
  @override
  double get elevation;
  @override
  @JsonKey(name: 'current_units')
  CurrentUnits get currentUnits;
  @override
  Current get current;
  @override
  @JsonKey(name: 'daily_units')
  DailyUnits get dailyUnits;
  @override
  Daily get daily;

  /// Create a copy of WeeklyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyWeatherImplCopyWith<_$WeeklyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  String get time => throw _privateConstructorUsedError;
  int get interval => throw _privateConstructorUsedError;

  /// Serializes this Current to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call({String time, int interval});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? interval = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time, int interval});
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? interval = null,
  }) {
    return _then(_$CurrentImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl({required this.time, required this.interval});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  final String time;
  @override
  final int interval;

  @override
  String toString() {
    return 'Current(time: $time, interval: $interval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, interval);

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  const factory _Current(
      {required final String time,
      required final int interval}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  String get time;
  @override
  int get interval;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) {
  return _CurrentUnits.fromJson(json);
}

/// @nodoc
mixin _$CurrentUnits {
  String get time => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;

  /// Serializes this CurrentUnits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentUnitsCopyWith<CurrentUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUnitsCopyWith<$Res> {
  factory $CurrentUnitsCopyWith(
          CurrentUnits value, $Res Function(CurrentUnits) then) =
      _$CurrentUnitsCopyWithImpl<$Res, CurrentUnits>;
  @useResult
  $Res call({String time, String interval});
}

/// @nodoc
class _$CurrentUnitsCopyWithImpl<$Res, $Val extends CurrentUnits>
    implements $CurrentUnitsCopyWith<$Res> {
  _$CurrentUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? interval = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUnitsImplCopyWith<$Res>
    implements $CurrentUnitsCopyWith<$Res> {
  factory _$$CurrentUnitsImplCopyWith(
          _$CurrentUnitsImpl value, $Res Function(_$CurrentUnitsImpl) then) =
      __$$CurrentUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time, String interval});
}

/// @nodoc
class __$$CurrentUnitsImplCopyWithImpl<$Res>
    extends _$CurrentUnitsCopyWithImpl<$Res, _$CurrentUnitsImpl>
    implements _$$CurrentUnitsImplCopyWith<$Res> {
  __$$CurrentUnitsImplCopyWithImpl(
      _$CurrentUnitsImpl _value, $Res Function(_$CurrentUnitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? interval = null,
  }) {
    return _then(_$CurrentUnitsImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUnitsImpl implements _CurrentUnits {
  const _$CurrentUnitsImpl({required this.time, required this.interval});

  factory _$CurrentUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUnitsImplFromJson(json);

  @override
  final String time;
  @override
  final String interval;

  @override
  String toString() {
    return 'CurrentUnits(time: $time, interval: $interval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, interval);

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      __$$CurrentUnitsImplCopyWithImpl<_$CurrentUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUnitsImplToJson(
      this,
    );
  }
}

abstract class _CurrentUnits implements CurrentUnits {
  const factory _CurrentUnits(
      {required final String time,
      required final String interval}) = _$CurrentUnitsImpl;

  factory _CurrentUnits.fromJson(Map<String, dynamic> json) =
      _$CurrentUnitsImpl.fromJson;

  @override
  String get time;
  @override
  String get interval;

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2MMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2MMin => throw _privateConstructorUsedError;

  /// Serializes this Daily to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'weather_code') List<int> weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double> temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double> temperature2MMin});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      temperature2MMax: null == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature2MMin: null == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'weather_code') List<int> weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double> temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double> temperature2MMin});
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
  }) {
    return _then(_$DailyImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      temperature2MMax: null == temperature2MMax
          ? _value._temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature2MMin: null == temperature2MMin
          ? _value._temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl(
      {required final List<String> time,
      @JsonKey(name: 'weather_code') required final List<int> weatherCode,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double> temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double> temperature2MMin})
      : _time = time,
        _weatherCode = weatherCode,
        _temperature2MMax = temperature2MMax,
        _temperature2MMin = temperature2MMin;

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<double> _temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2MMax {
    if (_temperature2MMax is EqualUnmodifiableListView)
      return _temperature2MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2MMax);
  }

  final List<double> _temperature2MMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2MMin {
    if (_temperature2MMin is EqualUnmodifiableListView)
      return _temperature2MMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2MMin);
  }

  @override
  String toString() {
    return 'Daily(time: $time, weatherCode: $weatherCode, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMax, _temperature2MMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMin, _temperature2MMin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_temperature2MMax),
      const DeepCollectionEquality().hash(_temperature2MMin));

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {required final List<String> time,
      @JsonKey(name: 'weather_code') required final List<int> weatherCode,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double> temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double> temperature2MMin}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2MMin;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) {
  return _DailyUnits.fromJson(json);
}

/// @nodoc
mixin _$DailyUnits {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  String get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  String get temperature2MMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  String get temperature2MMin => throw _privateConstructorUsedError;

  /// Serializes this DailyUnits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyUnitsCopyWith<DailyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyUnitsCopyWith<$Res> {
  factory $DailyUnitsCopyWith(
          DailyUnits value, $Res Function(DailyUnits) then) =
      _$DailyUnitsCopyWithImpl<$Res, DailyUnits>;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'weather_code') String weatherCode,
      @JsonKey(name: 'temperature_2m_max') String temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') String temperature2MMin});
}

/// @nodoc
class _$DailyUnitsCopyWithImpl<$Res, $Val extends DailyUnits>
    implements $DailyUnitsCopyWith<$Res> {
  _$DailyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMax: null == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMin: null == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyUnitsImplCopyWith<$Res>
    implements $DailyUnitsCopyWith<$Res> {
  factory _$$DailyUnitsImplCopyWith(
          _$DailyUnitsImpl value, $Res Function(_$DailyUnitsImpl) then) =
      __$$DailyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'weather_code') String weatherCode,
      @JsonKey(name: 'temperature_2m_max') String temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') String temperature2MMin});
}

/// @nodoc
class __$$DailyUnitsImplCopyWithImpl<$Res>
    extends _$DailyUnitsCopyWithImpl<$Res, _$DailyUnitsImpl>
    implements _$$DailyUnitsImplCopyWith<$Res> {
  __$$DailyUnitsImplCopyWithImpl(
      _$DailyUnitsImpl _value, $Res Function(_$DailyUnitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
  }) {
    return _then(_$DailyUnitsImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMax: null == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMin: null == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyUnitsImpl implements _DailyUnits {
  const _$DailyUnitsImpl(
      {required this.time,
      @JsonKey(name: 'weather_code') required this.weatherCode,
      @JsonKey(name: 'temperature_2m_max') required this.temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') required this.temperature2MMin});

  factory _$DailyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyUnitsImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'weather_code')
  final String weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  final String temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  final String temperature2MMin;

  @override
  String toString() {
    return 'DailyUnits(time: $time, weatherCode: $weatherCode, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.temperature2MMax, temperature2MMax) ||
                other.temperature2MMax == temperature2MMax) &&
            (identical(other.temperature2MMin, temperature2MMin) ||
                other.temperature2MMin == temperature2MMin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, weatherCode, temperature2MMax, temperature2MMin);

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      __$$DailyUnitsImplCopyWithImpl<_$DailyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyUnitsImplToJson(
      this,
    );
  }
}

abstract class _DailyUnits implements DailyUnits {
  const factory _DailyUnits(
      {required final String time,
      @JsonKey(name: 'weather_code') required final String weatherCode,
      @JsonKey(name: 'temperature_2m_max')
      required final String temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      required final String temperature2MMin}) = _$DailyUnitsImpl;

  factory _DailyUnits.fromJson(Map<String, dynamic> json) =
      _$DailyUnitsImpl.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'weather_code')
  String get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  String get temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  String get temperature2MMin;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyUnitsImplCopyWith<_$DailyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
