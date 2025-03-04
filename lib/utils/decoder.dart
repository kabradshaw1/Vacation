import 'dart:convert';

String? extractUsernameFromToken(String token) {
  try {
    final parts = token.split('.');
    if (parts.length != 3) return null; // Invalid token

    final payload = utf8.decode(
      base64Url.decode(base64Url.normalize(parts[1])),
    );
    final Map<String, dynamic> decoded = jsonDecode(payload);

    return decoded['username']; // Ensure your JWT contains a `username` claim
  } catch (e) {
    return null;
  }
}
