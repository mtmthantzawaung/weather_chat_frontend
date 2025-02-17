import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/assets/assets.gen.dart';
import 'package:weather_chat_frontend/models/hourly_weather.dart/hourly_weather.dart';
import 'package:weather_chat_frontend/presentations/weather/widgets/hourly_forecast.dart';
import 'package:weather_chat_frontend/presentations/weather/widgets/search_page.dart';
import 'package:weather_chat_frontend/providers/weather/weather_provider.dart';
import 'package:weather_chat_frontend/utils/helpers/helper_function.dart';

class Weather extends StatefulHookConsumerWidget {
  const Weather({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeatherState();
}

class _WeatherState extends ConsumerState<Weather> {
  late HourlyWeather hourlyWeather;
  late Position position;

  @override
  void initState() {
    super.initState();
    _loadWeather();
  }

  Future<void> _loadWeather({String? selectedCity}) async {
    try {
      if (selectedCity != null) {
        await ref
            .read(weatherStateProvider.notifier)
            .getWeatherByCity(selectedCity);
      } else {
        position = await HelperFunction.getCurrentLocation();
        final userCity = await HelperFunction.getCityFromCoordinates(
            position.latitude, position.longitude);
        if (userCity != null) {
          await ref
              .read(weatherStateProvider.notifier)
              .getWeatherByCity(userCity);
        }
      }
    } catch (e) {
      logger.e("Failed to load weather: $e");
      ElevatedButton(
        onPressed: () => _loadWeather(), // ✅ Fix: Ensure it runs properly
        child: Icon(Icons.restart_alt),
      );
    }
  }

  String _getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return Assets.images.sunny;

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return Assets.images.cloudyJson;
      case 'rain':
      case 'dizzle':
      case 'shower rain':
        return Assets.images.rainny; //r
      case 'thunderstorm':
        return Assets.images.thundar;
      case 'clear':
        return Assets.images.sunny;
      default:
        return Assets.images.sunny;
    }
  }

  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherStateProvider);
    final weatherResponse = weatherState.weatherResponse;

    if (weatherState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (weatherState.errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Failed to load weather data",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            Text(
              weatherState.errorMessage!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loadWeather,
              child: Text("Retry"),
            ),
          ],
        ),
      );
    } else if (weatherResponse == null) {
      return Center(
        child: Text(
          "No weather data available",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/search.png',
              width: 25,
            ),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );

              if (result != null) {
                final selectedCity = result['city']; // City name
                final selectedPosition =
                    result['position']; // Latitude & Longitude

                if (selectedCity != null && selectedPosition != null) {
                  setState(() {
                    position = selectedPosition; // Update the position state
                  });
                  await _loadWeather(selectedCity: selectedCity);
                }
              }
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background Decorations
          Positioned.fill(
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(3, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-3, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -1.2),
                  child: Container(
                    height: 300,
                    width: 600,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFAB40),
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(color: Colors.transparent),
                ),
              ],
            ),
          ),

          // Scrollable Content
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).padding.top +
                          50), // Adjust for AppBar
                  Text(
                    'My Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    weatherResponse.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Lottie.asset(_getWeatherAnimation(
                      "${weatherResponse.weather.first.main}")),
                  Text(
                    "${weatherResponse.main.temp.round()}°C",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 75,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "${weatherResponse.weather.first.main}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    DateFormat('EEEE dd .').add_jm().format(
                          weatherResponse.dt
                              .add(Duration(seconds: weatherResponse.timezone)),
                        ),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Sunrise & Sunset
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildWeatherDetail(
                        icon: 'assets/images/sun.png',
                        title: 'Sunrise',
                        value: DateFormat('').add_jm().format(
                              weatherResponse.sys.sunrise.add(
                                Duration(seconds: weatherResponse.timezone),
                              ),
                            ),
                      ),
                      _buildWeatherDetail(
                        icon: 'assets/images/moon.png',
                        title: 'Sunset',
                        value: DateFormat('').add_jm().format(
                              weatherResponse.sys.sunset.add(
                                Duration(seconds: weatherResponse.timezone),
                              ),
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Divider(color: Colors.grey[700]),
                  ),

                  // Temperature Min & Max
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildWeatherDetail(
                        icon: 'assets/images/hot.png',
                        title: 'Temp Max',
                        value: "${weatherResponse.main.tempMax.round()}°C",
                      ),
                      _buildWeatherDetail(
                        icon: 'assets/images/cold.png',
                        title: 'Temp Min',
                        value: "${weatherResponse.main.tempMin.round()}°C",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Hourly Forecast
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        child: Text('View full forecast'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  HourlyForecast(position: position),
                  SizedBox(height: 90),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// Helper Widget for Reuse
  Widget _buildWeatherDetail(
      {required String icon, required String title, required String value}) {
    return Row(
      children: [
        Image.asset(icon, scale: 8),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
