import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/presentations/messager_home/tabs/camera_tab.dart';
import 'package:weather_chat_frontend/presentations/messager_home/tabs/chat/chat_tab.dart';
import 'package:weather_chat_frontend/utils/widgets/input_field.dart';

class MessagerHomePage extends StatefulWidget {
  const MessagerHomePage({super.key});

  @override
  State<MessagerHomePage> createState() => _MessagerHomePageState();
}

class _MessagerHomePageState extends State<MessagerHomePage> {
  bool isSearch = false;
  TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> users = [
    {
      "name": "Alice",
      "country": "USA",
      "latitude": "37.7749",
      "longitude": "-122.4194"
    },
    {
      "name": "Bob",
      "country": "Canada",
      "latitude": "45.4215",
      "longitude": "-75.6972"
    },
    {
      "name": "Charlie",
      "country": "UK",
      "latitude": "51.5074",
      "longitude": "-0.1278"
    },
    {
      "name": "David",
      "country": "Germany",
      "latitude": "52.5200",
      "longitude": "13.4050"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: isSearch
              ? Expanded(
                  child: TypeAheadField<Map<String, dynamic>>(
                    builder: (context, controller, focusNode) {
                      return TextField(
                        controller: controller,
                        onChanged: (value) {
                          setState(() {
                            _controller.text = _controller.text + value;
                          });
                        },
                        focusNode: focusNode,
                        decoration: InputDecoration(
                          labelText: "Search User",
                          hintText: "Enter Username or email",
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
                                    setState(() {
                                      isSearch = !isSearch;
                                      _controller.clear();
                                    });
                                  },
                                )
                              : null,
                        ),
                      );
                    },
                    suggestionsCallback: (pattern) async {
                      if (pattern.isEmpty) return [];
                      return users;
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
                          title: Text(
                              "${suggestion['name']}, ${suggestion['country']}"),
                          subtitle: Text(
                            "Lat: ${suggestion['latitude']}, Lon: ${suggestion['longitude']}",
                          ),
                        ),
                      );
                    },
                    onSelected: (suggestion) {
                      logger.e(_controller.text);
                      setState(() {
                        isSearch = false; // Close search after selecting
                        _controller.clear();
                      });
                    },
                  ),
                )
              : Text('Meta Chat'),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    setState(() {
                      isSearch = !isSearch;
                      if (!isSearch)
                        _controller.clear(); // Clear input on close
                    });
                  });
                }),
            PopupMenuButton(
              onSelected: (value) => debugPrint(value),
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("New group"), value: "New group"),
                PopupMenuItem(
                    child: Text("New broadcast"), value: "New broadcast"),
                PopupMenuItem(child: Text("Meta Web"), value: "Meta Web"),
                PopupMenuItem(
                    child: Text("Starred messages"), value: "Starred messages"),
                PopupMenuItem(child: Text("Settings"), value: "Settings"),
              ],
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraTab(),
            ChatTab(),
            Center(child: Text("Status")),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}
