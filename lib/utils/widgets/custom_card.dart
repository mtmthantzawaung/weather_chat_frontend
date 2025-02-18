import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_chat_frontend/models/chat/chat.dart';
import 'package:weather_chat_frontend/presentations/messager_home/tabs/chat/chat_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.chat,
    required this.isActive,
  });

  final Chat chat;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatPage(chat: chat, isActive: isActive),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueGrey,
                  child:
                      chat.isGroup ? Icon(Icons.groups_2) : Icon(Icons.person),
                ),
                Positioned(
                  right: 0,
                  bottom: 1,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: isActive ? Colors.green : Colors.grey,
                  ),
                ),
              ],
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
