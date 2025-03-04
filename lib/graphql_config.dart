import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static HttpLink httpLink = HttpLink('http://localhost:4000/graphql');

  GraphQLClient clientToQuery() => GraphQLClient(link: httpLink, cache: GraphQLCache());
}