import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/services/auth/auth_service.dart';
import 'package:weather_chat_frontend/core/services/chat/chat_service.dart';
import 'package:weather_chat_frontend/core/services/socket/socket_service.dart';
import 'package:weather_chat_frontend/models/message/message.dart';
import 'package:weather_chat_frontend/providers/message/message_state.dart';
import 'package:weather_chat_frontend/providers/socket/socket_provider.dart';

final messageStateProvider =
    StateNotifierProvider.family<MessageNotifier, MessageState, String>(
  (ref, receiverId) => MessageNotifier(
      ApiService(), ref.read(socketServiceProvider), receiverId),
);

class MessageNotifier extends StateNotifier<MessageState> {
  final ApiService api;
  final SocketService socketService;
  final String receiverId;

  MessageNotifier(this.api, this.socketService, this.receiverId)
      : super(MessageState()) {
    _loadInitialData();
    _listenToSocketMessages(); // ✅ Initialize socket listeners
  }

  Future<void> _loadInitialData() async {
    state = state.copyWith(isLoading: true);
    try {
      // Fetch Current User
      AuthService authService = AuthService(api);
      final currentUser = await authService.getCurrentUser();
      if (currentUser == null) throw Exception("User not found.");

      ChatService chatService = ChatService(api);
      final response =
          await chatService.fetchMessage(currentUser.id!, receiverId);

      if (response == null) throw ("Fetch Recent Message failed.");

      if (response.success) {
        final List<dynamic> dataList = response.data;
        final messages = dataList
            .map((messageData) => Message.fromJson(messageData))
            .toList();
        state = state.copyWith(messages: messages, isLoading: false);
      } else {
        logger.e("❌ Get Message Failed : ${response.message}");
        state =
            state.copyWith(errorMessage: response.message, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
          errorMessage: "Failed to load messages", isLoading: false);
    }
  }

  void _listenToSocketMessages() {
    socketService.messageStreamController.stream.listen((message) {
      if (message.senderId == receiverId || message.receiverId == receiverId) {
        state = state.copyWith(messages: [...state.messages, message]);
      }
    });
  }

  Future<void> sendMessage(
      String senderId, String receiverId, String message) async {
    try {
      // Send message via socket
      socketService.sendMessage(senderId, receiverId, message);

      // Send message via API
      ChatService chatService = ChatService(api);
      final response =
          await chatService.sendMessage(senderId, receiverId, message);

      if (response == null) throw Exception("Send Message failed.");

      if (response.success) {
        final responseMessage = Message.fromJson(response.data);
        state = state.copyWith(
            messages: [...state.messages, responseMessage], isLoading: false);
      } else {
        logger.e("❌ Send Message Failed : ${response.message}");
        state =
            state.copyWith(errorMessage: response.message, isLoading: false);
      }
    } catch (e, stackTrace) {
      logger.e("❌ Failed to send messages: $e",
          error: e, stackTrace: stackTrace);
      state = state.copyWith(
          errorMessage: "Failed to send messages", isLoading: false);
    }
  }

  @override
  void dispose() {
    socketService.socket
        ?.off('receiveMessage'); // ✅ Remove listener when disposed
    super.dispose();
  }
}
