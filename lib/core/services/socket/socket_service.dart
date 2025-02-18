import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/models/message/message.dart';
import 'package:weather_chat_frontend/models/user/User.dart';

class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;

  SocketService._internal();

  IO.Socket? socket;
  final messageStreamController = StreamController<Message>.broadcast();
  final updatedUserStreamController =
      StreamController<List<String>>.broadcast();

  void connect(String userId) {
    if (socket != null && socket!.connected) {
      logger.f("🔗 Socket already connected.");
      return;
    }

    socket = IO.io(
      'http://10.0.2.2:3000',
      IO.OptionBuilder()
          .setTransports(['websocket']) // Use WebSocket
          .enableAutoConnect()
          .setQuery({'userId': userId}) // Pass userId for authentication
          .build(),
    );

    socket!.onConnect((_) {
      logger.f("✅ Socket connected!");
    });

    socket!.emit('userJoined', userId);

    socket!.onDisconnect((_) {
      logger.f("❌ Socket disconnected!");
    });

    socket!.on('updateUserList', (data) {
      logger.f("updated user : $data");
      List<String> updatedUsers = List<String>.from(data);
      updatedUserStreamController.add(updatedUsers); // Add to the stream
    });

    socket!.on('receiveMessage', (data) {
      logger.f("📩 New message received: $data");
      final message = Message.fromJson(data);
      messageStreamController.add(message);
    });
  }

  void sendMessage(String senderId, String receiverId, String message) {
    if (socket == null || !socket!.connected) {
      logger.e("❌ Cannot send message, socket is null or disconnected.");
    }
    socket!.emit('sendMessage', {
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
    });
  }

  void disconnect() {
    socket?.disconnect();
    socket?.dispose();
  }
}
