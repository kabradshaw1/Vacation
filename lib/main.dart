import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'pages/home.dart';

void main() async {
  // Initialize Hive for Flutter
  WidgetsFlutterBinding.ensureInitialized();
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
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()), // Enables persistence
    ),
  );

  runApp(MyApp(client: client)); // Remove `const` because `client` is not const
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client; // Define the client field

  const MyApp({
    super.key,
    required this.client,
  }); // Add required client parameter

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client, // Provide the client to GraphQLProvider
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
        ),
        home: const MyHomePage(title: 'Is Flutter better than React Native?'),
      ),
    );
  }
}
