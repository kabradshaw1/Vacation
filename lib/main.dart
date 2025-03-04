import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'providers/graphql_config.dart';
import 'providers/auth_provider.dart'; // Import auth provider
import 'pages/home.dart';
import 'pages/login.dart';

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
    final authState = ref.watch(authProvider); // Watch auth state

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
        ),
        home:
            authState
                    .isAuthenticated // ✅ Conditionally show login or home page
                ? const MyHomePage(
                  title: 'Is Flutter better than React Native?',
                )
                : const LoginPage(), // We will create a LoginPage next
      ),
    );
  }
}
