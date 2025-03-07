import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/character.graphql.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: documentNodeQueryCharacters, // Use the generated query
        pollInterval: const Duration(seconds: 10), // Auto-refresh every 10s
      ),
      builder: (QueryResult result, {FetchMore? fetchMore, Refetch? refetch}) {
        if (result.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (result.hasException) {
          return Center(child: Text('Error: ${result.exception.toString()}'));
        }

        // Deserialize response using the generated model
        final data = Query$Characters.fromJson(result.data!);
        final List<Query$Characters$characters?>? characters = data.characters;

        if (characters == null || characters.isEmpty) {
          return const Center(child: Text("No characters found."));
        }

        return Container(
          color: Colors.blueAccent,
          child: ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];

              if (character == null) return const SizedBox.shrink();

              return ListTile(title: Text(character.title));
            },
          ),
        );
      },
    );
  }
}
