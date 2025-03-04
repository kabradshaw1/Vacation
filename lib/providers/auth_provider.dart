import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Secure storage instance
const _secureStorage = FlutterSecureStorage();

class AuthState {
  final String? authToken;
  final String? refreshToken;
  final bool isAuthenticated;

  AuthState({this.authToken, this.refreshToken, this.isAuthenticated = false});

  AuthState copyWith({
    String? authToken,
    String? refreshToken,
    bool? isAuthenticated,
  }) {
    return AuthState(
      authToken: authToken ?? this.authToken,
      refreshToken: refreshToken ?? this.refreshToken,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }
}

// StateNotifier for managing authentication state
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState());

  // Load tokens from secure storage at app start
  Future<void> loadAuthState() async {
    final storedToken = await _secureStorage.read(key: 'authToken');
    final storedRefreshToken = await _secureStorage.read(key: 'refreshToken');

    if (storedToken != null) {
      state = AuthState(
        authToken: storedToken,
        refreshToken: storedRefreshToken,
        isAuthenticated: true,
      );
    }
  }

  // Save authentication tokens
  Future<void> saveAuthState(String authToken, String refreshToken) async {
    await _secureStorage.write(key: 'authToken', value: authToken);
    await _secureStorage.write(key: 'refreshToken', value: refreshToken);
    state = AuthState(
      authToken: authToken,
      refreshToken: refreshToken,
      isAuthenticated: true,
    );
  }

  // Clear authentication state on logout
  Future<void> logout() async {
    await _secureStorage.delete(key: 'authToken');
    await _secureStorage.delete(key: 'refreshToken');
    state = AuthState();
  }
}

// Riverpod provider for authentication state
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authNotifier = AuthNotifier();
  authNotifier.loadAuthState(); // Load auth state at startup
  return authNotifier;
});
