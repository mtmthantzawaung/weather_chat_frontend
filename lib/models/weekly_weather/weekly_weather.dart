import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'weekly_weather.freezed.dart';
part 'weekly_weather.g.dart';

WeeklyWeather weeklyWeatherFromJson(String str) =>
    WeeklyWeather.fromJson(json.decode(str));

String weeklyWeatherToJson(WeeklyWeather data) => json.encode(data.toJson());

@freezed
class WeeklyWeather with _$WeeklyWeather {
  const factory WeeklyWeather({
    required double latitude,
    required double longitude,
    @JsonKey(name: 'generationtime_ms') required double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    required String timezone,
    @JsonKey(name: 'timezone_abbreviation')
    required String timezoneAbbreviation,
    required double elevation,
    @JsonKey(name: 'current_units') required CurrentUnits currentUnits,
    required Current current,
    @JsonKey(name: 'daily_units') required DailyUnits dailyUnits,
    required Daily daily,
  }) = _WeeklyWeather;

  factory WeeklyWeather.fromJson(Map<String, dynamic> json) =>
      _$WeeklyWeatherFromJson(json);
}

@freezed
class Current with _$Current {
  const factory Current({
    required String time,
    required int interval,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class CurrentUnits with _$CurrentUnits {
  const factory CurrentUnits({
    required String time,
    required String interval,
  }) = _CurrentUnits;

  factory CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);
}

@freezed
class Daily with _$Daily {
  const factory Daily({
    required List<String> time,
    @JsonKey(name: 'weather_code') required List<int> weatherCode,
    @JsonKey(name: 'temperature_2m_max') required List<double> temperature2MMax,
    @JsonKey(name: 'temperature_2m_min') required List<double> temperature2MMin,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}

@freezed
class DailyUnits with _$DailyUnits {
  const factory DailyUnits({
    required String time,
    @JsonKey(name: 'weather_code') required String weatherCode,
    @JsonKey(name: 'temperature_2m_max') required String temperature2MMax,
    @JsonKey(name: 'temperature_2m_min') required String temperature2MMin,
  }) = _DailyUnits;

  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);
}
