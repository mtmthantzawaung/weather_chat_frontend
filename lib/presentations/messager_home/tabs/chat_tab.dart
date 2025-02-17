import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/providers/chat_tab/chat_tab_provider.dart';
import 'package:weather_chat_frontend/utils/widgets/custom_card.dart';

class ChatTab extends ConsumerWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatState = ref.watch(chatTabStateProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: chatState.chats.length,
        itemBuilder: (context, index) {
          return CustomCard(chat: chatState.chats[index]);
        },
      ),
    );
  }
}
