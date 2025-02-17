import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/presentations/messager_home/messager_home_page.dart';
import 'package:weather_chat_frontend/presentations/weather/weather.dart';
import 'package:weather_chat_frontend/presentations/weather/widgets/search_page.dart';

enum TabItem {
  weather(labelText: 'Weather'),
  search(labelText: 'Search'),
  chat(labelText: 'Chat'),
  setting(labelText: 'Setting');

  const TabItem({
    required this.labelText,
  });

  @override
  String toString() => name;

  final String labelText;
}

extension TabItemEx on TabItem {
  WidgetBuilder pageBuilder(BuildContext context) {
    switch (this) {
      case TabItem.weather:
        return (context) => Weather();
      case TabItem.search:
        return (context) => SearchPage();
      case TabItem.chat:
        return (context) => MessagerHomePage();
      case TabItem.setting:
        return (context) => Center(child: Text('Setting'));
    }
  }

  IconData icon() {
    switch (this) {
      case TabItem.weather:
        return Icons.cloud;
      case TabItem.search:
        return Icons.search;
      case TabItem.chat:
        return Icons.chat;
      case TabItem.setting:
        return Icons.settings;
    }
  }

  double iconSize() {
    switch (this) {
      case TabItem.weather:
        return 27;
      case TabItem.search:
        return 27;
      case TabItem.chat:
        return 27;
      case TabItem.setting:
        return 27;
    }
  }
}
