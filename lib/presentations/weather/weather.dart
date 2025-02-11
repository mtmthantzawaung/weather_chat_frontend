import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_chat_frontend/providers/weather/weather_provider.dart';

class Weather extends StatefulHookConsumerWidget {
  const Weather({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeatherState();
}

class _WeatherState extends ConsumerState<Weather> {
  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherStateProvider);
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
            icon: Icon(Icons.logout),
            onPressed: () => ref
                .read(weatherStateProvider.notifier)
                .getWeatherByCity('london'),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 10),
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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 60, left: 5, right: 5, bottom: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'My Location',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Yangon',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Lottie.asset('assets/images/snow.json'),
                        Text(
                          '32°C',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 95,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Sunny',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
