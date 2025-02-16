import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/core/services/socket/socket_service.dart';
import 'package:weather_chat_frontend/models/message/message.dart';
import 'package:weather_chat_frontend/models/user/User.dart';
import 'package:weather_chat_frontend/providers/chat/chat_state.dart';

// final chatServiceProvider = Provider<ChatService>(
//   (ref) => ChatService(ApiService()),
// );

final chatStateProvider = StateNotifierProvider<ChatNotifier, ChatState>(
  (ref) => ChatNotifier(ref.watch(chatServiceProvider)),
);

class ChatNotifier extends StateNotifier<ChatState> {
  final ChatService _chatService;
  final SocketService _socketService;

  ChatNotifier(this._chatService) : super(ChatState()) {
    _loadInitialData();
    _setupSocketListeners();
  }

  Future<void> _loadMessages() async {
    state = state.copyWith(isLoading: true);
    try {
      final users = await _chatService.fetchUsers();
      final messages = await _chatService.fetchMessages();
      state = state.copyWith(
        users: users,
        messages: messages,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
          errorMessage: "Failed to load messages", isLoading: false);
    }
  }

  void _setupSocketListeners() {
    _socketService.socket?.on('updateUserList', (data) {
      // Update active users list
      final activeUsers =
          (data as List).map((user) => User.fromJson(user)).toList();
      state = state.copyWith(activeUsers: activeUsers);
    });

    _socketService.socket?.on('receiveMessage', (data) {
      // Add received message to the state
      final message = Message.fromJson(data);
      state = state.copyWith(messages: [...state.messages, message]);
    });
  }

  Future<void> sendMessage(String text) async {
    try {
      _socketService.sendMessage(
        state.selectedUser!.id,
        state.selectedUser!.id,
        text,
      );
      final message = await _chatService.sendMessage(text);

      state = state.copyWith(messages: [...state.messages, message]);
    } catch (e) {
      state = state.copyWith(errorMessage: "Failed to send message");
    }
  }

  @override
  void dispose() {
    _socketService.disconnect();
    super.dispose();
  }
}
