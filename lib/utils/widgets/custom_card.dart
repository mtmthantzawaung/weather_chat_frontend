import 'package:flutter/material.dart';
import 'package:weather_chat_frontend/models/chat/chat_model.dart';
import 'package:weather_chat_frontend/presentations/chat/chat_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.chats,
  });

  final ChatModel chats;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatPage(chatModel: chats),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey,
              // TODO : Change User Profile
              child: chats.isGroup ? Icon(Icons.groups_2) : Icon(Icons.person),
            ),
            title: Text(
              chats.name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(chats.currentMessage, style: TextStyle(fontSize: 13)),
              ],
            ),
            trailing: Text(chats.time),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 20),
            child: Divider(thickness: 1),
          ),
        ],
      ),
    );
  }
}
