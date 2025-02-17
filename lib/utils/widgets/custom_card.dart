import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_chat_frontend/models/chat/chat.dart';
import 'package:weather_chat_frontend/presentations/chat/chat_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatPage(chat: chat),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey,
              child: chat.isGroup ? Icon(Icons.groups_2) : Icon(Icons.person),
            ),
            title: Text(
              chat.chatName!,
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
                Text(chat.lastMessage, style: TextStyle(fontSize: 13)),
              ],
            ),
            trailing: Text(DateFormat("hh:mm a").format(chat.createdAt)),
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
