import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/models/chat/chat_model.dart';
import 'package:weather_chat_frontend/utils/widgets/custom_card.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  List<ChatModel> chats = [
    ChatModel(
      name: 'Mg Mg',
      icon: "mgmg.svg",
      isGroup: false,
      currentMessage: "Hello",
      time: "3:00",
    ),
    ChatModel(
      name: 'Zaw Zaw',
      icon: "zaw.svg",
      isGroup: false,
      currentMessage: "Hello zaw",
      time: "3:00",
    ),
    ChatModel(
      name: 'friend gp',
      icon: "gp.svg",
      isGroup: true,
      currentMessage: "Hello friend from this group",
      time: "9:00",
    ),
    ChatModel(
      name: 'Aung Aung',
      icon: "aung.svg",
      isGroup: false,
      currentMessage: "Hello",
      time: "5:00",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return CustomCard(chats: chats[index]);
        },
      ),
    );
  }
}
