import 'package:flutter_riverpod/flutter_riverpod.dart';

// State provider to store the authentication token
final authTokenProvider = StateProvider<String?>((ref) => null);

// Function to update the token
void updateAuthToken(WidgetRef ref, String? newToken) {
  ref.read(authTokenProvider.notifier).state = newToken;
}
