import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/providers/weather/weather_provider.dart';

class HourlyForecast extends ConsumerWidget {
  const HourlyForecast({super.key, required this.position});

  final Position position;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hourlyWeather = ref.watch(hourlyWeatherProvider(position));

    return hourlyWeather.when(
      data: (weatherData) {
        return SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return HourlyWeatherTile(
                id: 0,
                hour: '3pm',
                temp: 3,
                isActive: index == 0,
              );
            },
          ),
        );
      },
      error: (error, stackTrace) =>
          Center(child: Text('Weather Error: $error')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class HourlyWeatherTile extends StatelessWidget {
  const HourlyWeatherTile(
      {super.key,
      required this.id,
      required this.hour,
      required this.temp,
      required this.isActive});

  final int id;
  final String hour;
  final int temp;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16, top: 12, bottom: 12),
      child: Material(
        color: isActive ? Colors.blue : Colors.lightBlue[300],
        borderRadius: BorderRadius.circular(15),
        elevation: isActive ? 8 : 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cloudy.png',
                width: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    hour,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '12 C',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
