import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/foundation.dart'; // Import ValueNotifier
import 'auth_provider.dart'; // Import the auth provider

class GraphQLConfig {
  static Future<ValueNotifier<GraphQLClient>> initClient(
    String? authToken,
  ) async {
    await initHiveForFlutter();

    final HttpLink httpLink = HttpLink('http://localhost:4000/graphql');

    final AuthLink authLink = AuthLink(
      getToken: () async => authToken != null ? 'Bearer $authToken' : null,
    );

    final Link link = authLink.concat(httpLink);

    return ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: HiveStore()), // Enables persistence
      ),
    );
  }
}

// ✅ Riverpod FutureProvider to get GraphQLClient with updated auth token
final graphqlClientProvider = FutureProvider<ValueNotifier<GraphQLClient>>((
  ref,
) async {
  final authState = ref.watch(authProvider);
  return await GraphQLConfig.initClient(authState.authToken);
});
