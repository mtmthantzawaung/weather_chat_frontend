import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  IO.Socket? socket;

  void connect(String userId) {
    socket = IO.io("http://10.0.2.2:3000", {
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket!.connect();
    socket!.emit('userJoined', userId);

    socket!.on('updateUserList', (data) {
      // provider.updateActiveUsers(data); // Update user list state
    });

    socket!.on('receiveMessage', (data) {
      // Handle received message
    });
  }

  void sendMessage(String senderId, String receiverId, String message) {
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
