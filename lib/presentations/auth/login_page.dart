import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/app/logger.dart';
import 'package:weather_chat_frontend/presentations/auth/register_page.dart';
import 'package:weather_chat_frontend/providers/auth/auth_provider.dart';
import 'package:weather_chat_frontend/providers/auth/auth_state.dart';
import 'package:weather_chat_frontend/utils/helpers/helper_function.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);
    final authNotifier = ref.read(authStateProvider.notifier);

    void _handleAuthState() {
      if (authState.isLoading) {
        // Show loading indicator
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => Center(child: CircularProgressIndicator()),
        );
      } else {
        if (authState.errorMessage != null) {
          // ❌ Show error message
          HelperFunction.showSnackBar(
            message: authState.errorMessage,
            context: context,
            isError: true,
          );
        } else if (authState.user != null) {
          // ✅ Show success message
          HelperFunction.showSnackBar(
            message: "🎉 Welcome, ${authState.user!.username}!",
            context: context,
          );
        }
      }
    }

    void _login() async {
      try {
        await authNotifier.login(
            _emailController.text, _passwordController.text);
        _handleAuthState();
      } on Exception catch (e) {
        logger.e("$e");
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: "Email")),
              TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: "Password"),
                  obscureText: true),
              SizedBox(height: 20),
              if (authState.isLoading) CircularProgressIndicator(),
              if (authState.errorMessage != null)
                Text(authState.errorMessage!,
                    style: TextStyle(color: Colors.red)),
              ElevatedButton(
                  onPressed: authState.isLoading ? null : _login,
                  child: Text("Login")),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ));
                  },
                  child: Text("Register")),
            ],
          ),
        ),
      ),
    );
  }
}
