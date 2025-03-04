import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'auth_provider.dart'; // Import the auth provider

final graphqlClientProvider = Provider<GraphQLClient>((ref) {
  final authState = ref.watch(authProvider); // Watch for auth state updates

  final HttpLink httpLink = HttpLink('http://localhost:4000/graphql');

  final AuthLink authLink = AuthLink(
    getToken:
        () async =>
            authState.authToken != null
                ? 'Bearer ${authState.authToken}'
                : null, // Automatically attach short-lived token
  );

  final Link link = authLink.concat(httpLink);

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(store: HiveStore()), // Enables persistence
  );
});
