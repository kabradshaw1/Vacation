import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/components/cards.dart';
import 'package:mobile/providers/auth_provider.dart';
import '../providers/theme_provider.dart';

class Home extends ConsumerWidget {
  // ✅ Extend ConsumerWidget
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(
      authProvider.notifier,
    ); // ✅ Access Riverpod auth state
    final theme = ref.watch(themeProvider);
    return Center(
      child: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCard(
              child: Text(
                "GALAXY VOYAGERS",
                style: theme.headingStyle,
                textAlign:
                    TextAlign.center, // (Optional) Centers text inside the box
              ),
            ),

            Container(
              width: 150,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("It would appear so"),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: theme.buttonStyle,
                    onPressed: () async {
                      await authNotifier
                          .logout(); // ✅ Clear authentication state
                    },
                    child: const Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
