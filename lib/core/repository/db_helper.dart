import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:weather_chat_frontend/models/weather/weather_response.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'weather.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      // Add the 'dt' column to the 'weather_response' table
      await db.execute('ALTER TABLE weather_response ADD COLUMN dt INTEGER');
    }
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE weather_response(
      id INTEGET PRIMARY KEY,
      name TEXT,
      timezone INTEGER,
      dt INTEGER,
      cod INTEGER
    )
    ''');

    await db.execute('''
    CREATE TABLE coordinates(
      id INTEGET PRIMARY KEY,
      lon REAL,
      lat REAL,
      weather_response_id INTEGER,
      FOREIGN KEY(weather_response_id) REFERENCES weather_response(id)
    )
    ''');

    await db.execute('''
    CREATE TABLE weather_condition(
      id INTEGET PRIMARY KEY,
      main TEXT,
      description TEXT,
      icon TEXT,
      weather_response_id INTEGER,
      FOREIGN KEY(weather_response_id) REFERENCES weather_response(id)
    )
    ''');

    await db.execute('''
    CREATE TABLE temperature_data(
      id INTEGET PRIMARY KEY,
      temp REAL,
      feels_like REAL,
      temp_min REAL,
      temp_max REAL,
      pressure INTEGER,
      humidity INTEGER,
      sea_level INTEGER,
      grnd_level INTEGER,
      weather_response_id INTEGER,
      FOREIGN KEY(weather_response_id) REFERENCES weather_response(id)
    )
    ''');

    await db.execute('''
    CREATE TABLE wind(
      id INTEGET PRIMARY KEY,
      speed REAL,
      deg INTEGER,
      gust REAL,
      weather_response_id INTEGER,
      FOREIGN KEY(weather_response_id) REFERENCES weather_response(id)
    )
    ''');

    await db.execute('''
    CREATE TABLE clouds(
      id INTEGET PRIMARY KEY,
      "all" INTEGER,
      weather_response_id INTEGER,
      FOREIGN KEY(weather_response_id) REFERENCES weather_response(id)
    )
    ''');

    await db.execute('''
    CREATE TABLE sun_info(
      id INTEGET PRIMARY KEY,
      country TEXT,
      sunrise INTEGER,
      sunset INTEGER,
      weather_response_id INTEGER,
      FOREIGN KEY(weather_response_id) REFERENCES weather_response(id)
    )
    ''');
  }

  Future<void> insertWeatherResponse(WeatherResponse weatherResponse) async {
    final db = await database;

    await db.insert(
      'weather_response',
      {
        'id': weatherResponse.id,
        'name': weatherResponse.name,
        'cod': weatherResponse.cod,
        'timezone': weatherResponse.timezone,
        'dt': weatherResponse.dt.millisecondsSinceEpoch,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    await db.insert(
      'coordinates',
      {
        'lon': weatherResponse.coord.lon,
        'lat': weatherResponse.coord.lat,
        'weather_response_id': weatherResponse.id,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    for (final condition in weatherResponse.weather) {
      await db.insert(
        'weather_condition',
        {
          'id': condition.id,
          'main': condition.main,
          'description': condition.description,
          'icon': condition.icon,
          'weather_response_id': weatherResponse.id,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }

    await db.insert(
      'temperature_data',
      {
        'temp': weatherResponse.main.temp,
        'feels_like': weatherResponse.main.feelsLike,
        'temp_min': weatherResponse.main.tempMin,
        'temp_max': weatherResponse.main.tempMin,
        'pressure': weatherResponse.main.pressure,
        'humidity': weatherResponse.main.humidity,
        'sea_level': weatherResponse.main.seaLevel,
        'grnd_level': weatherResponse.main.grndLevel,
        'weather_response_id': weatherResponse.id,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    await db.insert(
      'wind',
      {
        'speed': weatherResponse.wind.speed,
        'deg': weatherResponse.wind.deg,
        'gust': weatherResponse.wind.gust,
        'weather_response_id': weatherResponse.id,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    await db.insert(
      'clouds',
      {
        'all': weatherResponse.clouds.all,
        'weather_response_id': weatherResponse.id,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    await db.insert(
      'sun_info',
      {
        'country': weatherResponse.sys.country,
        'sunrise': weatherResponse.sys.sunrise.millisecondsSinceEpoch,
        'sunset': weatherResponse.sys.sunset.millisecondsSinceEpoch,
        'weather_response_id': weatherResponse.id,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<WeatherResponse?> getWeatherResponse(int id) async {
    final db = await database;

    final weatherResponseMap = await db.query(
      'weather_response',
    );

    if (weatherResponseMap.isEmpty) return null;

    final coordinatesMap = await db.query(
      'coordinates',
    );

    final weatherConditionMap = await db.query(
      'weather_condition',
    );

    final temperatureDataMap = await db.query(
      'temperature_data',
    );

    final windMap = await db.query(
      'wind',
    );

    final cloudsMap = await db.query(
      'clouds',
    );

    final sunInfoMap = await db.query(
      'sun_info',
    );

    return WeatherResponse(
      coord: Coordinates(
        lon: coordinatesMap.first['lon'] as double,
        lat: coordinatesMap.first['lat'] as double,
      ),
      weather: weatherConditionMap
          .map((map) => WeatherCondition(
                id: map['id'] as int,
                main: map['main'] as String,
                description: map['description'] as String,
                icon: map['icon'] as String,
              ))
          .toList(),
      base: '',
      main: TemperatureData(
        temp: temperatureDataMap.first['temp'] as double,
        feelsLike: temperatureDataMap.first['feels_like'] as double,
        tempMin: temperatureDataMap.first['temp_min'] as double,
        tempMax: temperatureDataMap.first['temp_max'] as double,
        pressure: temperatureDataMap.first['pressure'] as int,
        humidity: temperatureDataMap.first['humidity'] as int,
        seaLevel: temperatureDataMap.first['sea_level'] as int?,
        grndLevel: temperatureDataMap.first['grnd_level'] as int?,
      ),
      visibility: 0,
      wind: Wind(
        speed: windMap.first['speed'] as double,
        deg: windMap.first['deg'] as int,
        gust: windMap.first['gust'] as double?,
      ),
      clouds: Clouds(
        all: cloudsMap.first['all'] as int,
      ),
      dt: DateTime.fromMillisecondsSinceEpoch(
          weatherResponseMap.first['dt'] as int),
      sys: SunInfo(
        country: sunInfoMap.first['country'] as String,
        sunrise: DateTime.fromMillisecondsSinceEpoch(
            sunInfoMap.first['sunrise'] as int),
        sunset: DateTime.fromMillisecondsSinceEpoch(
            sunInfoMap.first['sunset'] as int),
      ),
      timezone: weatherResponseMap.first['timezone'] as int,
      id: weatherResponseMap.first['id'] as int,
      name: weatherResponseMap.first['name'] as String,
      cod: weatherResponseMap.first['cod'] as int,
    );
  }
}
