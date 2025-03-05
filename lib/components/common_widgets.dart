import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/theme_provider.dart';

class CustomCard extends ConsumerWidget {
  final Widget child;
  final bool isAlternate; // ✅ Allows an alternate card color

  const CustomCard({
    super.key,
    required this.child,
    this.isAlternate = false, // Default to regular card
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Padding(
      padding: EdgeInsets.all(8), // ✅ Apply themed padding
      child: Container(
        decoration:
            isAlternate
                ? theme
                    .altCardDecorations // ✅ Use alternate color if true
                : theme.cardDecoration, // ✅ Default card
        child: Padding(
          padding: EdgeInsets.all(8), // ✅ Inner padding
          child: child,
        ),
      ),
    );
  }
}
