// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  Coordinates get coord => throw _privateConstructorUsedError;
  List<WeatherCondition> get weather => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  TemperatureData get main => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  Wind get wind => throw _privateConstructorUsedError;
  Clouds get clouds => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;
  SunInfo get sys => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get cod => throw _privateConstructorUsedError;

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call(
      {Coordinates coord,
      List<WeatherCondition> weather,
      String base,
      TemperatureData main,
      int visibility,
      Wind wind,
      Clouds clouds,
      int dt,
      SunInfo sys,
      int timezone,
      int id,
      String name,
      int cod});

  $CoordinatesCopyWith<$Res> get coord;
  $TemperatureDataCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
  $CloudsCopyWith<$Res> get clouds;
  $SunInfoCopyWith<$Res> get sys;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as TemperatureData,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SunInfo,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res> get coord {
    return $CoordinatesCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureDataCopyWith<$Res> get main {
    return $TemperatureDataCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SunInfoCopyWith<$Res> get sys {
    return $SunInfoCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(_$WeatherResponseImpl value,
          $Res Function(_$WeatherResponseImpl) then) =
      __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Coordinates coord,
      List<WeatherCondition> weather,
      String base,
      TemperatureData main,
      int visibility,
      Wind wind,
      Clouds clouds,
      int dt,
      SunInfo sys,
      int timezone,
      int id,
      String name,
      int cod});

  @override
  $CoordinatesCopyWith<$Res> get coord;
  @override
  $TemperatureDataCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $CloudsCopyWith<$Res> get clouds;
  @override
  $SunInfoCopyWith<$Res> get sys;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
      _$WeatherResponseImpl _value, $Res Function(_$WeatherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_$WeatherResponseImpl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherCondition>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as TemperatureData,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SunInfo,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl(
      {required this.coord,
      required final List<WeatherCondition> weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod})
      : _weather = weather;

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final Coordinates coord;
  final List<WeatherCondition> _weather;
  @override
  List<WeatherCondition> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final String base;
  @override
  final TemperatureData main;
  @override
  final int visibility;
  @override
  final Wind wind;
  @override
  final Clouds clouds;
  @override
  final int dt;
  @override
  final SunInfo sys;
  @override
  final int timezone;
  @override
  final int id;
  @override
  final String name;
  @override
  final int cod;

  @override
  String toString() {
    return 'WeatherResponse(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coord,
      const DeepCollectionEquality().hash(_weather),
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
      {required final Coordinates coord,
      required final List<WeatherCondition> weather,
      required final String base,
      required final TemperatureData main,
      required final int visibility,
      required final Wind wind,
      required final Clouds clouds,
      required final int dt,
      required final SunInfo sys,
      required final int timezone,
      required final int id,
      required final String name,
      required final int cod}) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  Coordinates get coord;
  @override
  List<WeatherCondition> get weather;
  @override
  String get base;
  @override
  TemperatureData get main;
  @override
  int get visibility;
  @override
  Wind get wind;
  @override
  Clouds get clouds;
  @override
  int get dt;
  @override
  SunInfo get sys;
  @override
  int get timezone;
  @override
  int get id;
  @override
  String get name;
  @override
  int get cod;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Clouds _$CloudsFromJson(Map<String, dynamic> json) {
  return _Clouds.fromJson(json);
}

/// @nodoc
mixin _$Clouds {
  int get all => throw _privateConstructorUsedError;

  /// Serializes this Clouds to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CloudsCopyWith<Clouds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudsCopyWith<$Res> {
  factory $CloudsCopyWith(Clouds value, $Res Function(Clouds) then) =
      _$CloudsCopyWithImpl<$Res, Clouds>;
  @useResult
  $Res call({int all});
}

/// @nodoc
class _$CloudsCopyWithImpl<$Res, $Val extends Clouds>
    implements $CloudsCopyWith<$Res> {
  _$CloudsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudsImplCopyWith<$Res> implements $CloudsCopyWith<$Res> {
  factory _$$CloudsImplCopyWith(
          _$CloudsImpl value, $Res Function(_$CloudsImpl) then) =
      __$$CloudsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int all});
}

/// @nodoc
class __$$CloudsImplCopyWithImpl<$Res>
    extends _$CloudsCopyWithImpl<$Res, _$CloudsImpl>
    implements _$$CloudsImplCopyWith<$Res> {
  __$$CloudsImplCopyWithImpl(
      _$CloudsImpl _value, $Res Function(_$CloudsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_$CloudsImpl(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudsImpl implements _Clouds {
  const _$CloudsImpl({required this.all});

  factory _$CloudsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudsImplFromJson(json);

  @override
  final int all;

  @override
  String toString() {
    return 'Clouds(all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudsImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudsImplCopyWith<_$CloudsImpl> get copyWith =>
      __$$CloudsImplCopyWithImpl<_$CloudsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudsImplToJson(
      this,
    );
  }
}

abstract class _Clouds implements Clouds {
  const factory _Clouds({required final int all}) = _$CloudsImpl;

  factory _Clouds.fromJson(Map<String, dynamic> json) = _$CloudsImpl.fromJson;

  @override
  int get all;

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CloudsImplCopyWith<_$CloudsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res, Coordinates>;
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res, $Val extends Coordinates>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesImplCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$CoordinatesImplCopyWith(
          _$CoordinatesImpl value, $Res Function(_$CoordinatesImpl) then) =
      __$$CoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class __$$CoordinatesImplCopyWithImpl<$Res>
    extends _$CoordinatesCopyWithImpl<$Res, _$CoordinatesImpl>
    implements _$$CoordinatesImplCopyWith<$Res> {
  __$$CoordinatesImplCopyWithImpl(
      _$CoordinatesImpl _value, $Res Function(_$CoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_$CoordinatesImpl(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesImpl implements _Coordinates {
  const _$CoordinatesImpl({required this.lon, required this.lat});

  factory _$CoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesImplFromJson(json);

  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString() {
    return 'Coordinates(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesImpl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      __$$CoordinatesImplCopyWithImpl<_$CoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesImplToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {required final double lon,
      required final double lat}) = _$CoordinatesImpl;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$CoordinatesImpl.fromJson;

  @override
  double get lon;
  @override
  double get lat;

  /// Create a copy of Coordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemperatureData _$TemperatureDataFromJson(Map<String, dynamic> json) {
  return _TemperatureData.fromJson(json);
}

/// @nodoc
mixin _$TemperatureData {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: "feels_like")
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_min")
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_max")
  double get tempMax => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: "sea_level")
  int? get seaLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "grnd_level")
  int? get grndLevel => throw _privateConstructorUsedError;

  /// Serializes this TemperatureData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureDataCopyWith<TemperatureData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureDataCopyWith<$Res> {
  factory $TemperatureDataCopyWith(
          TemperatureData value, $Res Function(TemperatureData) then) =
      _$TemperatureDataCopyWithImpl<$Res, TemperatureData>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: "feels_like") double feelsLike,
      @JsonKey(name: "temp_min") double tempMin,
      @JsonKey(name: "temp_max") double tempMax,
      int pressure,
      int humidity,
      @JsonKey(name: "sea_level") int? seaLevel,
      @JsonKey(name: "grnd_level") int? grndLevel});
}

/// @nodoc
class _$TemperatureDataCopyWithImpl<$Res, $Val extends TemperatureData>
    implements $TemperatureDataCopyWith<$Res> {
  _$TemperatureDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? seaLevel = freezed,
    Object? grndLevel = freezed,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      grndLevel: freezed == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureDataImplCopyWith<$Res>
    implements $TemperatureDataCopyWith<$Res> {
  factory _$$TemperatureDataImplCopyWith(_$TemperatureDataImpl value,
          $Res Function(_$TemperatureDataImpl) then) =
      __$$TemperatureDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: "feels_like") double feelsLike,
      @JsonKey(name: "temp_min") double tempMin,
      @JsonKey(name: "temp_max") double tempMax,
      int pressure,
      int humidity,
      @JsonKey(name: "sea_level") int? seaLevel,
      @JsonKey(name: "grnd_level") int? grndLevel});
}

/// @nodoc
class __$$TemperatureDataImplCopyWithImpl<$Res>
    extends _$TemperatureDataCopyWithImpl<$Res, _$TemperatureDataImpl>
    implements _$$TemperatureDataImplCopyWith<$Res> {
  __$$TemperatureDataImplCopyWithImpl(
      _$TemperatureDataImpl _value, $Res Function(_$TemperatureDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemperatureData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? seaLevel = freezed,
    Object? grndLevel = freezed,
  }) {
    return _then(_$TemperatureDataImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      grndLevel: freezed == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureDataImpl implements _TemperatureData {
  const _$TemperatureDataImpl(
      {required this.temp,
      @JsonKey(name: "feels_like") required this.feelsLike,
      @JsonKey(name: "temp_min") required this.tempMin,
      @JsonKey(name: "temp_max") required this.tempMax,
      required this.pressure,
      required this.humidity,
      @JsonKey(name: "sea_level") this.seaLevel,
      @JsonKey(name: "grnd_level") this.grndLevel});

  factory _$TemperatureDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureDataImplFromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: "feels_like")
  final double feelsLike;
  @override
  @JsonKey(name: "temp_min")
  final double tempMin;
  @override
  @JsonKey(name: "temp_max")
  final double tempMax;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  @JsonKey(name: "sea_level")
  final int? seaLevel;
  @override
  @JsonKey(name: "grnd_level")
  final int? grndLevel;

  @override
  String toString() {
    return 'TemperatureData(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, grndLevel: $grndLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureDataImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, humidity, seaLevel, grndLevel);

  /// Create a copy of TemperatureData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureDataImplCopyWith<_$TemperatureDataImpl> get copyWith =>
      __$$TemperatureDataImplCopyWithImpl<_$TemperatureDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureDataImplToJson(
      this,
    );
  }
}

abstract class _TemperatureData implements TemperatureData {
  const factory _TemperatureData(
          {required final double temp,
          @JsonKey(name: "feels_like") required final double feelsLike,
          @JsonKey(name: "temp_min") required final double tempMin,
          @JsonKey(name: "temp_max") required final double tempMax,
          required final int pressure,
          required final int humidity,
          @JsonKey(name: "sea_level") final int? seaLevel,
          @JsonKey(name: "grnd_level") final int? grndLevel}) =
      _$TemperatureDataImpl;

  factory _TemperatureData.fromJson(Map<String, dynamic> json) =
      _$TemperatureDataImpl.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: "feels_like")
  double get feelsLike;
  @override
  @JsonKey(name: "temp_min")
  double get tempMin;
  @override
  @JsonKey(name: "temp_max")
  double get tempMax;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  @JsonKey(name: "sea_level")
  int? get seaLevel;
  @override
  @JsonKey(name: "grnd_level")
  int? get grndLevel;

  /// Create a copy of TemperatureData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureDataImplCopyWith<_$TemperatureDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SunInfo _$SunInfoFromJson(Map<String, dynamic> json) {
  return _SunInfo.fromJson(json);
}

/// @nodoc
mixin _$SunInfo {
  String get country => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  /// Serializes this SunInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SunInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SunInfoCopyWith<SunInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SunInfoCopyWith<$Res> {
  factory $SunInfoCopyWith(SunInfo value, $Res Function(SunInfo) then) =
      _$SunInfoCopyWithImpl<$Res, SunInfo>;
  @useResult
  $Res call({String country, int sunrise, int sunset});
}

/// @nodoc
class _$SunInfoCopyWithImpl<$Res, $Val extends SunInfo>
    implements $SunInfoCopyWith<$Res> {
  _$SunInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SunInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SunInfoImplCopyWith<$Res> implements $SunInfoCopyWith<$Res> {
  factory _$$SunInfoImplCopyWith(
          _$SunInfoImpl value, $Res Function(_$SunInfoImpl) then) =
      __$$SunInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, int sunrise, int sunset});
}

/// @nodoc
class __$$SunInfoImplCopyWithImpl<$Res>
    extends _$SunInfoCopyWithImpl<$Res, _$SunInfoImpl>
    implements _$$SunInfoImplCopyWith<$Res> {
  __$$SunInfoImplCopyWithImpl(
      _$SunInfoImpl _value, $Res Function(_$SunInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SunInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$SunInfoImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SunInfoImpl implements _SunInfo {
  const _$SunInfoImpl(
      {required this.country, required this.sunrise, required this.sunset});

  factory _$SunInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SunInfoImplFromJson(json);

  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  @override
  String toString() {
    return 'SunInfo(country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SunInfoImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, sunrise, sunset);

  /// Create a copy of SunInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SunInfoImplCopyWith<_$SunInfoImpl> get copyWith =>
      __$$SunInfoImplCopyWithImpl<_$SunInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SunInfoImplToJson(
      this,
    );
  }
}

abstract class _SunInfo implements SunInfo {
  const factory _SunInfo(
      {required final String country,
      required final int sunrise,
      required final int sunset}) = _$SunInfoImpl;

  factory _SunInfo.fromJson(Map<String, dynamic> json) = _$SunInfoImpl.fromJson;

  @override
  String get country;
  @override
  int get sunrise;
  @override
  int get sunset;

  /// Create a copy of SunInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SunInfoImplCopyWith<_$SunInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
mixin _$WeatherCondition {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res, WeatherCondition>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res, $Val extends WeatherCondition>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionImplCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$$WeatherConditionImplCopyWith(_$WeatherConditionImpl value,
          $Res Function(_$WeatherConditionImpl) then) =
      __$$WeatherConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$WeatherConditionImplCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res, _$WeatherConditionImpl>
    implements _$$WeatherConditionImplCopyWith<$Res> {
  __$$WeatherConditionImplCopyWithImpl(_$WeatherConditionImpl _value,
      $Res Function(_$WeatherConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherConditionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionImpl implements _WeatherCondition {
  const _$WeatherConditionImpl(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$WeatherConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionImplFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherCondition(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      __$$WeatherConditionImplCopyWithImpl<_$WeatherConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionImplToJson(
      this,
    );
  }
}

abstract class _WeatherCondition implements WeatherCondition {
  const factory _WeatherCondition(
      {required final int id,
      required final String main,
      required final String description,
      required final String icon}) = _$WeatherConditionImpl;

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionImpl.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
mixin _$Wind {
  double get speed => throw _privateConstructorUsedError;
  int get deg => throw _privateConstructorUsedError;
  double? get gust => throw _privateConstructorUsedError;

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WindCopyWith<Wind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res, Wind>;
  @useResult
  $Res call({double speed, int deg, double? gust});
}

/// @nodoc
class _$WindCopyWithImpl<$Res, $Val extends Wind>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = freezed,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindImplCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$$WindImplCopyWith(
          _$WindImpl value, $Res Function(_$WindImpl) then) =
      __$$WindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, int deg, double? gust});
}

/// @nodoc
class __$$WindImplCopyWithImpl<$Res>
    extends _$WindCopyWithImpl<$Res, _$WindImpl>
    implements _$$WindImplCopyWith<$Res> {
  __$$WindImplCopyWithImpl(_$WindImpl _value, $Res Function(_$WindImpl) _then)
      : super(_value, _then);

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = freezed,
  }) {
    return _then(_$WindImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindImpl implements _Wind {
  const _$WindImpl({required this.speed, required this.deg, this.gust});

  factory _$WindImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindImplFromJson(json);

  @override
  final double speed;
  @override
  final int deg;
  @override
  final double? gust;

  @override
  String toString() {
    return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      __$$WindImplCopyWithImpl<_$WindImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindImplToJson(
      this,
    );
  }
}

abstract class _Wind implements Wind {
  const factory _Wind(
      {required final double speed,
      required final int deg,
      final double? gust}) = _$WindImpl;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$WindImpl.fromJson;

  @override
  double get speed;
  @override
  int get deg;
  @override
  double? get gust;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
