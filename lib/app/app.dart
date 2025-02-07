import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/presentations/auth/login_page.dart';

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: user == null ? LoginPage() : HomeScreen(),
    );
  }
}
