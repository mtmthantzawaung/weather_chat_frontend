import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/core/services/auth/auth_service.dart';
import 'package:weather_chat_frontend/core/storage/secure_storage.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<bool>>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<AsyncValue<bool>> {
  AuthNotifier() : super(const AsyncValue.data(false));

  final AuthService _authService = AuthService();

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      await _authService.login(email, password);
      state = const AsyncValue.data(true);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> logout() async {
    await SecureStorage.deleteTokens();
    state = const AsyncValue.data(false);
  }
}
