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
      padding: EdgeInsets.all(theme.cardPadding), // ✅ Apply themed padding
      child: Container(
        decoration:
            isAlternate
                ? theme
                    .alternateCardDecoration // ✅ Use alternate color if true
                : theme.cardDecoration, // ✅ Default card
        child: Padding(
          padding: EdgeInsets.all(theme.cardPadding), // ✅ Inner padding
          child: child,
        ),
      ),
    );
  }
}
