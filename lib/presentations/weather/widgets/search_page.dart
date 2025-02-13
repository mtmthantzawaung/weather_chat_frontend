import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:weather_chat_frontend/app/logger.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
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
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).padding.top +
                          50), // Adjust for AppBar
                  Text(
                    'Search City',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  CitySearchBar(onCitySelected: (lat, lon, city) {
                    Navigator.pop(
                      context,
                      {
                        'city': city, // Example: "Bangkok"
                        'position': Position(
                          latitude: lat,
                          longitude: lon,
                          timestamp: DateTime.now(),
                          accuracy: 0.0,
                          altitude: 0.0,
                          heading: 0.0,
                          speed: 0.0,
                          speedAccuracy: 0.0,
                          altitudeAccuracy: 0.0,
                          headingAccuracy: 0.0,
                        ), // Instead of Position()
                      },
                    );
                  })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CitySearchBar extends StatefulWidget {
  final Function(double, double, String)
      onCitySelected; // Callback when city is selected
  const CitySearchBar({required this.onCitySelected, super.key});

  @override
  CitySearchBarState createState() => CitySearchBarState();
}

class CitySearchBarState extends State<CitySearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // Added FocusNode

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<Map<String, dynamic>>(
      builder: (context, controller, focusNode) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: "Search City",
            hintText: "Enter a city name",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
            suffixIcon: _controller.text.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      _controller.clear();
                    },
                  )
                : null,
          ),
        );
      },
      suggestionsCallback: (pattern) async {
        try {
          logger.e(pattern);
          if (pattern.isEmpty) return [];
          return await fetchCities(pattern);
        } on Exception catch (e) {
          logger.e(e);
        }
      },
      itemBuilder: (context, suggestion) {
        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
          child: ListTile(
            title: Text("${suggestion['name']}, ${suggestion['country']}"),
            subtitle: Text(
              "Lat: ${suggestion['latitude']}, Lon: ${suggestion['longitude']}",
            ),
          ),
        );
      },
      onSelected: (suggestion) {
        double lat = suggestion['latitude'];
        double lon = suggestion['longitude'];
        widget.onCitySelected(
            lat, lon, suggestion['name']); // Call the callback function
        _controller.text =
            "${suggestion['name']}, ${suggestion['country']}"; // Update text field
        print("Selected City: ${suggestion['name']}, Lat: $lat, Lon: $lon");
      },
    );
  }

  Future<List<Map<String, dynamic>>> fetchCities(String cityName) async {
    final url = Uri.parse(
        "https://geocoding-api.open-meteo.com/v1/search?name=$cityName&count=5");
    final response = await http.get(url);
    logger.e(response);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data['results'] ?? []);
    } else {
      logger.e(response);
      throw Exception("Failed to load cities");
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose(); // Dispose focus node
    super.dispose();
  }
}
