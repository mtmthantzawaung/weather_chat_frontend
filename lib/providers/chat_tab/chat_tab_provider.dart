import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/services/auth/auth_service.dart';
import 'package:weather_chat_frontend/core/services/chat/chat_service.dart';
import 'package:weather_chat_frontend/core/services/socket/socket_service.dart';
import 'package:weather_chat_frontend/core/services/user/user_service.dart';
import 'package:weather_chat_frontend/models/chat/chat.dart';
import 'package:weather_chat_frontend/models/message/message.dart';
import 'package:weather_chat_frontend/models/user/User.dart';
import 'package:weather_chat_frontend/providers/chat_tab/chat_tab_state.dart';
import 'package:weather_chat_frontend/providers/socket/socket_provider.dart';

final chatTabStateProvider =
    StateNotifierProvider<ChatTabNotifier, ChatTabState>(
  (ref) => ChatTabNotifier(ApiService(), ref.read(socketServiceProvider)),
);

class ChatTabNotifier extends StateNotifier<ChatTabState> {
  final ApiService api;
  final SocketService socketService;

  ChatTabNotifier(this.api, this.socketService) : super(ChatTabState()) {
    _loadInitialData();
    _listenToActiveUserIds();
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

  void _listenToActiveUserIds() {
    socketService.updatedUserStreamController.stream.listen((userIds) {
      state =
          state.copyWith(activeUserIds: [...state.activeUserIds, ...userIds]);
    });
  }

  @override
  void dispose() {
    socketService.socket
        ?.off('updateUserList'); // ✅ Remove listener when disposed
    super.dispose();
  }
}
