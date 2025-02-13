// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyWeatherImpl _$$WeeklyWeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyWeatherImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
      utcOffsetSeconds: (json['utc_offset_seconds'] as num).toInt(),
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      currentUnits:
          CurrentUnits.fromJson(json['current_units'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      dailyUnits:
          DailyUnits.fromJson(json['daily_units'] as Map<String, dynamic>),
      daily: Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeeklyWeatherImplToJson(_$WeeklyWeatherImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'current_units': instance.currentUnits,
      'current': instance.current,
      'daily_units': instance.dailyUnits,
      'daily': instance.daily,
    };

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      time: json['time'] as String,
      interval: (json['interval'] as num).toInt(),
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
    };

_$CurrentUnitsImpl _$$CurrentUnitsImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUnitsImpl(
      time: json['time'] as String,
      interval: json['interval'] as String,
    );

Map<String, dynamic> _$$CurrentUnitsImplToJson(_$CurrentUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
    };

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weatherCode: (json['weather_code'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      temperature2MMax: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      temperature2MMin: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature2MMax,
      'temperature_2m_min': instance.temperature2MMin,
    };

_$DailyUnitsImpl _$$DailyUnitsImplFromJson(Map<String, dynamic> json) =>
    _$DailyUnitsImpl(
      time: json['time'] as String,
      weatherCode: json['weather_code'] as String,
      temperature2MMax: json['temperature_2m_max'] as String,
      temperature2MMin: json['temperature_2m_min'] as String,
    );

Map<String, dynamic> _$$DailyUnitsImplToJson(_$DailyUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature2MMax,
      'temperature_2m_min': instance.temperature2MMin,
    };
