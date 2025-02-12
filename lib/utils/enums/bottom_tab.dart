import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/presentations/weather/weather.dart';

enum TabItem {
  weather(labelText: 'Weather'),
  user(labelText: 'User'),
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
      case TabItem.user:
        return (context) => Center(child: Text('User'));
      case TabItem.chat:
        return (context) => Center(child: Text('Chat'));
      case TabItem.setting:
        return (context) => Center(child: Text('Setting'));
    }
  }

  IconData icon() {
    switch (this) {
      case TabItem.weather:
        return Icons.cloud;
      case TabItem.user:
        return Icons.account_circle_outlined;
      case TabItem.chat:
        return Icons.chat;
      case TabItem.setting:
        return Icons.account_circle_outlined;
    }
  }

  double iconSize() {
    switch (this) {
      case TabItem.weather:
        return 27;
      case TabItem.user:
        return 27;
      case TabItem.chat:
        return 27;
      case TabItem.setting:
        return 27;
    }
  }
}
