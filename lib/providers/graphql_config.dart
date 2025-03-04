import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'auth_provider.dart'; // Import the token provider

final graphqlClientProvider = Provider<GraphQLClient>((ref) {
  final authToken = ref.watch(authTokenProvider); // Get the token from Riverpod

  final HttpLink httpLink = HttpLink('http://localhost:4000/graphql');

  final AuthLink authLink = AuthLink(
    getToken: () async => authToken != null ? 'Bearer $authToken' : null,
  );

  final Link link = authLink.concat(httpLink);

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(store: HiveStore()), // Enables persistence
  );
});
