// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:http/http.dart' as http;

// class SearchPage extends ConsumerWidget {
//   const SearchPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: CitySearchBar(),
//       ),
//     );
//   }
// }

// class CitySearchBar extends StatefulWidget {
//   final Function(double, double) onCitySelected; // Callback when city is selected
//   const CitySearchBar({required this.onCitySelected, Key? key}) : super(key: key);

//   @override
//   _CitySearchBarState createState() => _CitySearchBarState();
// }

// class _CitySearchBarState extends State<CitySearchBar> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return TypeAheadField<Map<String, dynamic>>(
//       textFieldBuilder: (context, controller, focusNode) {
//         return TextField(
//           controller: controller,
//           focusNode: focusNode,
//           decoration: const InputDecoration(
//             labelText: "Search City",
//             border: OutlineInputBorder(),
//           ),
//         );
//       },
//       suggestionsCallback: (pattern) async {
//         if (pattern.isEmpty) return [];
//         return await fetchCities(pattern);
//       },
//       itemBuilder: (context, suggestion) {
//         return ListTile(
//           title: Text("${suggestion['name']}, ${suggestion['country']}"),
//         );
//       },
//       onSelected: (suggestion) {
//         double lat = suggestion['lat'];
//         double lon = suggestion['lon'];
//         widget.onCitySelected(lat, lon); // Call the callback function
//         print("Selected City: ${suggestion['name']}, Lat: $lat, Lon: $lon");
//       },
//     );
//   }

// Future<List<Map<String, dynamic>>> fetchCities(String cityName) async {
//   final url = Uri.parse(
//       "https://geocoding-api.open-meteo.com/v1/search?name=$cityName&count=5");
//   final response = await http.get(url);

//   if (response.statusCode == 200) {
//     final data = json.decode(response.body);
//     return List<Map<String, dynamic>>.from(data['results'] ?? []);
//   } else {
//     throw Exception("Failed to load cities");
//   }
// }
