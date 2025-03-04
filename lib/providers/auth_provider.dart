import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Secure Storage Instance
const _secureStorage = FlutterSecureStorage();

// Model for Auth State
class AuthState {
  final String? refreshToken;
  final String? authToken;
  final bool isGuest;
  final bool isAuthenticated;

  AuthState({
    this.refreshToken,
    this.authToken,
    this.isGuest = false,
    this.isAuthenticated = false,
  });

  AuthState copyWith({
    String? refreshToken,
    String? authToken,
    required isGuest,
    required bool isAuthenticated,
  }) {
    return AuthState(
      refreshToken: refreshToken ?? this.refreshToken,
      authToken: authToken ?? this.authToken,
      isGuest: this.isGuest,
      isAuthenticated: this.isAuthenticated,
    );
  }
}

// Riverpod StateNotifier for Auth
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState());

  // Load stored credentials at app startup
  Future<void> loadAuthState() async {
    final storedToken = await _secureStorage.read(key: 'refreshToken');
    final isGuest = await _secureStorage.read(key: 'guest') == 'true';

    state = AuthState(
      refreshToken: storedToken,
      authToken: null, // Short-lived tokens are generated dynamically
      isGuest: isGuest,
    );
  }

  // Enable guest mode
  Future<void> enableGuestMode() async {
    await _secureStorage.write(key: 'guest', value: 'true');
    state = AuthState(isGuest: true);
  }

  // Disable guest mode and require authentication
  Future<void> disableGuestMode() async {
    await _secureStorage.delete(key: 'guest');
    state = AuthState(isGuest: false);
  }

  // Log out and clear authentication
  Future<void> logout() async {
    await _secureStorage.delete(key: 'refreshToken');
    await _secureStorage.delete(key: 'authToken');
    await _secureStorage.delete(key: 'guest');
    state = AuthState();
  }
}

// Riverpod provider for AuthNotifier
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authNotifier = AuthNotifier();
  authNotifier.loadAuthState(); // Load initial token from storage
  return authNotifier;
});
