import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/services/auth/auth_service.dart';
import 'package:weather_chat_frontend/core/services/chat/chat_service.dart';
import 'package:weather_chat_frontend/core/services/user/user_service.dart';
import 'package:weather_chat_frontend/models/chat/chat.dart';
import 'package:weather_chat_frontend/models/message/message.dart';
import 'package:weather_chat_frontend/models/user/User.dart';
import 'package:weather_chat_frontend/providers/chat_tab/chat_tab_state.dart';

final chatTabStateProvider =
    StateNotifierProvider<ChatTabNotifier, ChatTabState>(
  (ref) => ChatTabNotifier(ApiService()),
);

class ChatTabNotifier extends StateNotifier<ChatTabState> {
  final ApiService api;

  ChatTabNotifier(this.api) : super(ChatTabState()) {
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    state = state.copyWith(isLoading: true);
    try {
      // Fetch Current User
      AuthService authService = AuthService(api);
      final currentUser = await authService.getCurrentUser();
      ChatService chatService = ChatService(api);
      final response = await chatService.fetchRecentMessage(currentUser!.id!);
      if (response == null) throw ("Fetch Recent Message failed.");

      if (response.success) {
        final List<dynamic> dataList = response.data;
        final recentMessages = dataList
            .map((messageData) => Message.fromJson(messageData))
            .toList();

        List<Chat> chatList = [];
        for (final recentMessage in recentMessages) {
          final chatUserId = currentUser.id == recentMessage.senderId
              ? recentMessage.receiverId
              : recentMessage.senderId;

          // fetch Chat User
          UserService userService = UserService(api);
          final userResponse = await userService.getUserById(chatUserId);
          if (userResponse == null) throw ("chat user is undefined.");
          !userResponse.success
              ? throw (userResponse.message.toString())
              : null;

          final chatUser = User.fromJson(userResponse.data);
          Chat chat = Chat(
            chatName: chatUser.username,
            user: chatUser,
            lastMessage: recentMessage.message,
            createdAt: recentMessage.createdAt,
          );
          chatList.add(chat);
        }

        state = state.copyWith(
          chats: chatList,
          isLoading: false,
        );
      } else {
        logger.e("❌ Get Recent Message Failed : ${response.message}");
        state =
            state.copyWith(errorMessage: response.message, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
          errorMessage: "Failed to load messages", isLoading: false);
    }
  }

  // void _setupSocketListeners() {
  //   _socketService.socket?.on('updateUserList', (data) {
  //     // Update active users list
  //     final activeUsers =
  //         (data as List).map((user) => User.fromJson(user)).toList();
  //     state = state.copyWith(activeUsers: activeUsers);
  //   });

  //   _socketService.socket?.on('receiveMessage', (data) {
  //     // Add received message to the state
  //     final message = Message.fromJson(data);
  //     state = state.copyWith(messages: [...state.messages, message]);
  //   });
  // }

  // Future<void> sendMessage(String text) async {
  //   try {
  //     _socketService.sendMessage(
  //       state.selectedUser!.id,
  //       state.selectedUser!.id,
  //       text,
  //     );
  //     final message = await _chatService.sendMessage(text);

  //     state = state.copyWith(messages: [...state.messages, message]);
  //   } catch (e) {
  //     state = state.copyWith(errorMessage: "Failed to send message");
  //   }
  // }

  // @override
  // void dispose() {
  //   _socketService.disconnect();
  //   super.dispose();
  // }
}
