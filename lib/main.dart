import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/router/app_router.dart';
import 'providers/graphql_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GraphQL client (we will pass authToken from Riverpod)
  final ValueNotifier<GraphQLClient> client = await GraphQLConfig.initClient(
    null,
  );

  runApp(
    ProviderScope(
      // ✅ Wrap app in ProviderScope for Riverpod
      child: MyApp(client: client),
    ),
  );
}

class MyApp extends ConsumerWidget {
  // ✅ Use ConsumerWidget for Riverpod
  final ValueNotifier<GraphQLClient> client;

  const MyApp({super.key, required this.client});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GraphQLProvider(client: client, child: const AppRouter());
  }
}
