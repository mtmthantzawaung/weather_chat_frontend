import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/core/services/api_service.dart';
import 'package:weather_chat_frontend/core/services/user/user_service.dart';
import 'package:weather_chat_frontend/models/user/User.dart';
import 'package:weather_chat_frontend/providers/user/user_state.dart';

final userStateProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(UserService(ApiService()));
});

class UserNotifier extends StateNotifier<UserState> {
  final UserService _userService;
  UserNotifier(this._userService) : super(UserState()) {
    // _loadUser();
  }

  Future<void> getAllUser() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final response = await _userService.getAllUser();
      if (response == null) throw ("Get User failed.");

      if (response.success) {
        final List<dynamic> dataList = response.data;
        final userList =
            dataList.map((userData) => User.fromJson(userData)).toList();
        state = state.copyWith(users: userList, isLoading: false);
        logger.f("✅ Get Weather Successful: ${response.message}");
      } else {
        logger.e("❌ Get Weather Failed : ${response.message}");
        state =
            state.copyWith(errorMessage: response.message, isLoading: false);
      }
    } on Exception catch (e) {
      state = state.copyWith(
          errorMessage: "An error occurred. Try again.", isLoading: false);
      logger.e('❌ Get User error: $e');
    }
  }
}
