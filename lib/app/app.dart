import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/presentations/auth/welcome.dart';
import 'package:weather_chat_frontend/presentations/home/home.dart';
import 'package:weather_chat_frontend/providers/auth/auth_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: authState.user == null ? Welcome() : HomePage(),
    );
  }
}
