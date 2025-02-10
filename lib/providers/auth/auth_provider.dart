import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/services/auth/auth_service.dart';
import 'package:weather_chat_frontend/core/storage/secure_storage.dart';
import 'package:weather_chat_frontend/models/request/login/login_request.dart';
import 'package:weather_chat_frontend/models/request/register/register_request.dart';
import 'package:weather_chat_frontend/models/user/User.dart';
import 'package:weather_chat_frontend/providers/auth/auth_state.dart';

final authServiceProvider = Provider<AuthService>(
  (ref) => AuthService(ApiService()),
);

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.watch(authServiceProvider));
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService _authService;
  AuthNotifier(this._authService) : super(AuthState()) {
    _loadUser();
  }

  Future<void> _loadUser() async {
    final user = await _authService.getCurrentUser();
    state = state.copyWith(user: user);
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final request = LoginRequest(email: email, password: password);
      final response = await _authService.login(request);
      if (response == null) throw ("Login failed.");

      if (response.success) {
        final user = User.fromJson(response.data["user"]);
        state = state.copyWith(user: user, isLoading: false);
        logger.f("✅ Login Successful: ${response.message}");
      } else {
        logger.e("❌ Login Failed : ${response.message}");
        state =
            state.copyWith(errorMessage: response.message, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
          errorMessage: "An error occurred. Try again.", isLoading: false);
      logger.e('❌ Login error: $e');
    }
  }

  Future<void> register(
      String email, String password, String username, int age) async {
    // Set loading to true when starting the registration process
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final request = RegisterRequest(
        email: email,
        password: password,
        username: username,
        age: age,
      );
      final response = await _authService.register(request);
      if (response == null) throw ("Login failed.");

      if (response.success) {
        // Update the state with the registered user and stop loading
        state = state.copyWith(isLoading: false);
        logger.f("✅ Registration Successful: ${response.message}");
      } else {
        logger.e("❌ Registration Failed");
        // Set the error message and stop loading
        state =
            state.copyWith(errorMessage: response.message, isLoading: false);
      }
    } catch (e) {
      // Handle any errors, set the error message, and stop loading
      state = state.copyWith(
          errorMessage: "An error occurred. Try again.", isLoading: false);
      logger.e('❌ Register error: $e');
    }
  }

  Future<void> logout() async {
    logger.e('logout ${state.user}');
    await SecureStorage.deleteTokens();
    await SecureStorage.deleteUser();
    state = state.copyWith(user: null);
  }
}
