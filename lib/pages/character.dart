import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/character.graphql.dart';
import '../providers/graphql_config.dart';

class CharacterList extends ConsumerWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(
      graphqlClientProvider,
    ); // Get GraphQLClient from Riverpod

    return FutureBuilder<QueryResult>(
      future: client.query(
        QueryOptions(document: documentNodeQuerygetCharacters),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError || snapshot.data?.hasException == true) {
          return Center(
            child: Text(
              'Error: ${snapshot.error ?? snapshot.data?.exception.toString()}',
            ),
          );
        }

        final data = Query$getCharacters.fromJson(snapshot.data!.data!);
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
