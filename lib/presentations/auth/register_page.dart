import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/providers/auth/auth_provider.dart';
import 'package:weather_chat_frontend/utils/helpers/helper_function.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _ageController = TextEditingController();
  final _usernameController = TextEditingController();

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
              message: authState.errorMessage, context: context);
        } else if (authState.user != null) {
          // ✅ Show success message
          HelperFunction.showSnackBar(
            message: "🎉 Welcome, ${authState.user!.username}!",
            context: context,
          );
        }
      }
    }

    void _register() async {
      await authNotifier.register(
          _emailController.text,
          _passwordController.text,
          _usernameController.text,
          int.parse(_ageController.text));
      _handleAuthState();
    }

    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email")),
            TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: "Username")),
            TextFormField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: "age"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a number";
                }
                return null;
              },
            ),
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
                onPressed: authState.isLoading ? null : _register,
                child: Text("Register")),
          ],
        ),
      ),
    );
  }
}
