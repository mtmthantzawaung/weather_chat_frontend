import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/providers/auth/auth_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Home"), actions: [
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () => ref.read(authStateProvider.notifier).logout(),
        )
      ]),
      body: Center(
          child: authState.user == null
              ? Text("Not Logged In")
              : Text("Welcome ${authState.user!.username}")),
    );
  }
}
