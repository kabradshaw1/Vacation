import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/character.graphql.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: documentNodeQuerygetCharacters, // Use the generated query
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
        final data = Query$getCharacters.fromJson(result.data!);
        final List<Query$getCharacters$characters?>? characters =
            data.characters;

        if (characters == null || characters.isEmpty) {
          return const Center(child: Text("No characters found."));
        }

        return ListView.builder(
          itemCount: characters.length,
          itemBuilder: (context, index) {
            final character = characters[index];

            if (character == null) return const SizedBox.shrink();

            return ListTile(title: Text(character.title));
          },
        );
      },
    );
  }
}
