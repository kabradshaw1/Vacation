import 'package:graphql_flutter/graphql_flutter.dart';
import 'lib/person.graphql.dart';

Future<Map<String, dynamic>> fetchData() async {
  final HttpLink httpLink = HttpLink('https://your-api-endpoint.com/graphql');

  final GraphQLClient client = GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(),
  );

  const String query = '''
    query Fetch_person {
      fetch_person {
        name
      }
    }
  ''';

  final QueryOptions options = QueryOptions(document: gql(query));
  final QueryResult result = await client.query(options);

  if (result.hasException) {
    print(result.exception.toString());
    return {};
  }

  return result.data ?? {};
}

void main() async {
  final data = await fetchData();
  final parsedData = Query$FetchPerson.fromJson(data);
  final name = parsedData.fetch_person?.name;
  print(name);
}
