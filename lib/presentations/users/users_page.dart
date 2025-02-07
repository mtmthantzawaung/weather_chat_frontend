import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Home"), actions: [
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () => ref.read(authStateProvider.notifier).logout(),
        )
      ]),
      body: Center(
          child: user == null
              ? Text("Not Logged In")
              : Text("Welcome ${user.username}")),
    );
  }
}
