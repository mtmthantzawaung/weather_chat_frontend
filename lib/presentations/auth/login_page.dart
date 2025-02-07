import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/providers/auth_provider.dart';

class LoginPage extends ConsumerWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email")),
            TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password")),
            const SizedBox(height: 20),
            authState.when(
              data: (isLoggedIn) => ElevatedButton(
                onPressed: () => ref
                    .read(authProvider.notifier)
                    .login(emailController.text, passwordController.text),
                child: const Text("Login"),
              ),
              loading: () => const CircularProgressIndicator(),
              error: (err, _) => Text("Error: $err"),
            ),
          ],
        ),
      ),
    );
  }
}
