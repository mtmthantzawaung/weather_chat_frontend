import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/presentations/messager_home/tabs/camera_tab.dart';
import 'package:weather_chat_frontend/presentations/messager_home/tabs/chat_tab.dart';

class MessagerHomePage extends StatelessWidget {
  const MessagerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Meta Chat'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
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
