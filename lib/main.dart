import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'providers/graphql_config.dart'; // Import the new GraphQL config file
import 'pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the GraphQL client
  final ValueNotifier<GraphQLClient> client = await GraphQLConfig.initClient();

  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  const MyApp({super.key, required this.client});

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
