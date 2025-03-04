import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static Future<ValueNotifier<GraphQLClient>> initClient() async {
    // Initialize Hive for Flutter
    await initHiveForFlutter();

    // Define HTTP Link
    final HttpLink httpLink = HttpLink('http://localhost:4000/graphql');

    // Authentication Link
    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    );

    // Combine AuthLink and HttpLink
    final Link link = authLink.concat(httpLink);

    // Create GraphQL Client
    return ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: HiveStore()), // Enables persistence
      ),
    );
  }
}
