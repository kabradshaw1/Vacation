import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/providers/theme_provider.dart';
import '../providers/auth_provider.dart';
import '../pages/home.dart';
import '../pages/login.dart';

class AppRouter extends ConsumerWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider); // ✅ Watch auth state

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ref.watch(themeProvider).themeData, // ✅ Apply Theme Provider
      home:
          authState.isAuthenticated
              ? const MyHomePage(title: 'Is Flutter better than React Native?')
              : const LoginPage(),
    );
  }
}
