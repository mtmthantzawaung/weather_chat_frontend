import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/core/services/socket/socket_service.dart';
import 'package:weather_chat_frontend/providers/auth/auth_provider.dart';

final socketServiceProvider = Provider<SocketService>((ref) {
  return SocketService(); // ✅ Singleton instance
});

final socketProvider = Provider((ref) {
  final authState = ref.watch(authStateProvider);

  if (authState.user != null) {
    ref.read(socketServiceProvider).connect(authState.user!.id!);
  }

  return null;
});
