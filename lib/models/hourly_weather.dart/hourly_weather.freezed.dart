// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) {
  return _HourlyWeather.fromJson(json);
}

/// @nodoc
mixin _$HourlyWeather {
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
  @JsonKey(name: 'hourly_units')
  HourlyUnits get hourlyUnits => throw _privateConstructorUsedError;
  Hourly get hourly => throw _privateConstructorUsedError;

  /// Serializes this HourlyWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
          HourlyWeather value, $Res Function(HourlyWeather) then) =
      _$HourlyWeatherCopyWithImpl<$Res, HourlyWeather>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(name: 'generationtime_ms') double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      double elevation,
      @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
      Hourly hourly});

  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  $HourlyCopyWith<$Res> get hourly;
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res, $Val extends HourlyWeather>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyWeather
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
    Object? hourlyUnits = null,
    Object? hourly = null,
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
      hourlyUnits: null == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
    ) as $Val);
  }

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res> get hourlyUnits {
    return $HourlyUnitsCopyWith<$Res>(_value.hourlyUnits, (value) {
      return _then(_value.copyWith(hourlyUnits: value) as $Val);
    });
  }

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res> get hourly {
    return $HourlyCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HourlyWeatherImplCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$$HourlyWeatherImplCopyWith(
          _$HourlyWeatherImpl value, $Res Function(_$HourlyWeatherImpl) then) =
      __$$HourlyWeatherImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
      Hourly hourly});

  @override
  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  @override
  $HourlyCopyWith<$Res> get hourly;
}

/// @nodoc
class __$$HourlyWeatherImplCopyWithImpl<$Res>
    extends _$HourlyWeatherCopyWithImpl<$Res, _$HourlyWeatherImpl>
    implements _$$HourlyWeatherImplCopyWith<$Res> {
  __$$HourlyWeatherImplCopyWithImpl(
      _$HourlyWeatherImpl _value, $Res Function(_$HourlyWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyWeather
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
    Object? hourlyUnits = null,
    Object? hourly = null,
  }) {
    return _then(_$HourlyWeatherImpl(
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
      hourlyUnits: null == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyWeatherImpl implements _HourlyWeather {
  const _$HourlyWeatherImpl(
      {required this.latitude,
      required this.longitude,
      @JsonKey(name: 'generationtime_ms') required this.generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') required this.utcOffsetSeconds,
      required this.timezone,
      @JsonKey(name: 'timezone_abbreviation')
      required this.timezoneAbbreviation,
      required this.elevation,
      @JsonKey(name: 'hourly_units') required this.hourlyUnits,
      required this.hourly});

  factory _$HourlyWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyWeatherImplFromJson(json);

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
  @JsonKey(name: 'hourly_units')
  final HourlyUnits hourlyUnits;
  @override
  final Hourly hourly;

  @override
  String toString() {
    return 'HourlyWeather(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, hourlyUnits: $hourlyUnits, hourly: $hourly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyWeatherImpl &&
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
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly));
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
      hourlyUnits,
      hourly);

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      __$$HourlyWeatherImplCopyWithImpl<_$HourlyWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyWeatherImplToJson(
      this,
    );
  }
}

abstract class _HourlyWeather implements HourlyWeather {
  const factory _HourlyWeather(
      {required final double latitude,
      required final double longitude,
      @JsonKey(name: 'generationtime_ms')
      required final double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') required final int utcOffsetSeconds,
      required final String timezone,
      @JsonKey(name: 'timezone_abbreviation')
      required final String timezoneAbbreviation,
      required final double elevation,
      @JsonKey(name: 'hourly_units') required final HourlyUnits hourlyUnits,
      required final Hourly hourly}) = _$HourlyWeatherImpl;

  factory _HourlyWeather.fromJson(Map<String, dynamic> json) =
      _$HourlyWeatherImpl.fromJson;

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
  @JsonKey(name: 'hourly_units')
  HourlyUnits get hourlyUnits;
  @override
  Hourly get hourly;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return _Hourly.fromJson(json);
}

/// @nodoc
mixin _$Hourly {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode => throw _privateConstructorUsedError;

  /// Serializes this Hourly to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyCopyWith<Hourly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) then) =
      _$HourlyCopyWithImpl<$Res, Hourly>;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2M,
      @JsonKey(name: 'weather_code') List<int> weatherCode});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res, $Val extends Hourly>
    implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? weatherCode = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2M: null == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyImplCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$$HourlyImplCopyWith(
          _$HourlyImpl value, $Res Function(_$HourlyImpl) then) =
      __$$HourlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2M,
      @JsonKey(name: 'weather_code') List<int> weatherCode});
}

/// @nodoc
class __$$HourlyImplCopyWithImpl<$Res>
    extends _$HourlyCopyWithImpl<$Res, _$HourlyImpl>
    implements _$$HourlyImplCopyWith<$Res> {
  __$$HourlyImplCopyWithImpl(
      _$HourlyImpl _value, $Res Function(_$HourlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? weatherCode = null,
  }) {
    return _then(_$HourlyImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2M: null == temperature2M
          ? _value._temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyImpl implements _Hourly {
  const _$HourlyImpl(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature2M,
      @JsonKey(name: 'weather_code') required final List<int> weatherCode})
      : _time = time,
        _temperature2M = temperature2M,
        _weatherCode = weatherCode;

  factory _$HourlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature2M;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M {
    if (_temperature2M is EqualUnmodifiableListView) return _temperature2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2M);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  @override
  String toString() {
    return 'Hourly(time: $time, temperature2M: $temperature2M, weatherCode: $weatherCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2M, _temperature2M) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2M),
      const DeepCollectionEquality().hash(_weatherCode));

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      __$$HourlyImplCopyWithImpl<_$HourlyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyImplToJson(
      this,
    );
  }
}

abstract class _Hourly implements Hourly {
  const factory _Hourly(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature2M,
      @JsonKey(name: 'weather_code')
      required final List<int> weatherCode}) = _$HourlyImpl;

  factory _Hourly.fromJson(Map<String, dynamic> json) = _$HourlyImpl.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) {
  return _HourlyUnits.fromJson(json);
}

/// @nodoc
mixin _$HourlyUnits {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  String get temperature2M => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  String get weatherCode => throw _privateConstructorUsedError;

  /// Serializes this HourlyUnits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyUnitsCopyWith<HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyUnitsCopyWith<$Res> {
  factory $HourlyUnitsCopyWith(
          HourlyUnits value, $Res Function(HourlyUnits) then) =
      _$HourlyUnitsCopyWithImpl<$Res, HourlyUnits>;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      @JsonKey(name: 'weather_code') String weatherCode});
}

/// @nodoc
class _$HourlyUnitsCopyWithImpl<$Res, $Val extends HourlyUnits>
    implements $HourlyUnitsCopyWith<$Res> {
  _$HourlyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? weatherCode = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyUnitsImplCopyWith<$Res>
    implements $HourlyUnitsCopyWith<$Res> {
  factory _$$HourlyUnitsImplCopyWith(
          _$HourlyUnitsImpl value, $Res Function(_$HourlyUnitsImpl) then) =
      __$$HourlyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      @JsonKey(name: 'weather_code') String weatherCode});
}

/// @nodoc
class __$$HourlyUnitsImplCopyWithImpl<$Res>
    extends _$HourlyUnitsCopyWithImpl<$Res, _$HourlyUnitsImpl>
    implements _$$HourlyUnitsImplCopyWith<$Res> {
  __$$HourlyUnitsImplCopyWithImpl(
      _$HourlyUnitsImpl _value, $Res Function(_$HourlyUnitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? weatherCode = null,
  }) {
    return _then(_$HourlyUnitsImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyUnitsImpl implements _HourlyUnits {
  const _$HourlyUnitsImpl(
      {required this.time,
      @JsonKey(name: 'temperature_2m') required this.temperature2M,
      @JsonKey(name: 'weather_code') required this.weatherCode});

  factory _$HourlyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyUnitsImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'temperature_2m')
  final String temperature2M;
  @override
  @JsonKey(name: 'weather_code')
  final String weatherCode;

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature2M: $temperature2M, weatherCode: $weatherCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, temperature2M, weatherCode);

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      __$$HourlyUnitsImplCopyWithImpl<_$HourlyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyUnitsImplToJson(
      this,
    );
  }
}

abstract class _HourlyUnits implements HourlyUnits {
  const factory _HourlyUnits(
          {required final String time,
          @JsonKey(name: 'temperature_2m') required final String temperature2M,
          @JsonKey(name: 'weather_code') required final String weatherCode}) =
      _$HourlyUnitsImpl;

  factory _HourlyUnits.fromJson(Map<String, dynamic> json) =
      _$HourlyUnitsImpl.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'temperature_2m')
  String get temperature2M;
  @override
  @JsonKey(name: 'weather_code')
  String get weatherCode;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
