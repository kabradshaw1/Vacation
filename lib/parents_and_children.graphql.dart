import 'package:gql/ast.dart';

class Fragment$PersonSummary {
  Fragment$PersonSummary({
    required this.full_name,
    this.$__typename = 'Person',
  });

  factory Fragment$PersonSummary.fromJson(Map<String, dynamic> json) {
    final l$full_name = json['full_name'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonSummary(
      full_name: (l$full_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String full_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$full_name = full_name;
    _resultData['full_name'] = l$full_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$full_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PersonSummary || runtimeType != other.runtimeType) {
      return false;
    }
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PersonSummary on Fragment$PersonSummary {
  CopyWith$Fragment$PersonSummary<Fragment$PersonSummary> get copyWith =>
      CopyWith$Fragment$PersonSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PersonSummary<TRes> {
  factory CopyWith$Fragment$PersonSummary(
    Fragment$PersonSummary instance,
    TRes Function(Fragment$PersonSummary) then,
  ) = _CopyWithImpl$Fragment$PersonSummary;

  factory CopyWith$Fragment$PersonSummary.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonSummary;

  TRes call({
    String? full_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PersonSummary<TRes>
    implements CopyWith$Fragment$PersonSummary<TRes> {
  _CopyWithImpl$Fragment$PersonSummary(
    this._instance,
    this._then,
  );

  final Fragment$PersonSummary _instance;

  final TRes Function(Fragment$PersonSummary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PersonSummary(
        full_name: full_name == _undefined || full_name == null
            ? _instance.full_name
            : (full_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PersonSummary<TRes>
    implements CopyWith$Fragment$PersonSummary<TRes> {
  _CopyWithStubImpl$Fragment$PersonSummary(this._res);

  TRes _res;

  call({
    String? full_name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPersonSummary = FragmentDefinitionNode(
  name: NameNode(value: 'PersonSummary'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Person'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'full_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPersonSummary = DocumentNode(definitions: [
  fragmentDefinitionPersonSummary,
]);

class Query$FetchParentsAndChildren {
  Query$FetchParentsAndChildren({
    this.fetch_person,
    this.$__typename = 'Query',
  });

  factory Query$FetchParentsAndChildren.fromJson(Map<String, dynamic> json) {
    final l$fetch_person = json['fetch_person'];
    final l$$__typename = json['__typename'];
    return Query$FetchParentsAndChildren(
      fetch_person: l$fetch_person == null
          ? null
          : Query$FetchParentsAndChildren$fetch_person.fromJson(
              (l$fetch_person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchParentsAndChildren$fetch_person? fetch_person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fetch_person = fetch_person;
    _resultData['fetch_person'] = l$fetch_person?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fetch_person = fetch_person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fetch_person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchParentsAndChildren ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fetch_person = fetch_person;
    final lOther$fetch_person = other.fetch_person;
    if (l$fetch_person != lOther$fetch_person) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchParentsAndChildren
    on Query$FetchParentsAndChildren {
  CopyWith$Query$FetchParentsAndChildren<Query$FetchParentsAndChildren>
      get copyWith => CopyWith$Query$FetchParentsAndChildren(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchParentsAndChildren<TRes> {
  factory CopyWith$Query$FetchParentsAndChildren(
    Query$FetchParentsAndChildren instance,
    TRes Function(Query$FetchParentsAndChildren) then,
  ) = _CopyWithImpl$Query$FetchParentsAndChildren;

  factory CopyWith$Query$FetchParentsAndChildren.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchParentsAndChildren;

  TRes call({
    Query$FetchParentsAndChildren$fetch_person? fetch_person,
    String? $__typename,
  });
  CopyWith$Query$FetchParentsAndChildren$fetch_person<TRes> get fetch_person;
}

class _CopyWithImpl$Query$FetchParentsAndChildren<TRes>
    implements CopyWith$Query$FetchParentsAndChildren<TRes> {
  _CopyWithImpl$Query$FetchParentsAndChildren(
    this._instance,
    this._then,
  );

  final Query$FetchParentsAndChildren _instance;

  final TRes Function(Query$FetchParentsAndChildren) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fetch_person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchParentsAndChildren(
        fetch_person: fetch_person == _undefined
            ? _instance.fetch_person
            : (fetch_person as Query$FetchParentsAndChildren$fetch_person?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchParentsAndChildren$fetch_person<TRes> get fetch_person {
    final local$fetch_person = _instance.fetch_person;
    return local$fetch_person == null
        ? CopyWith$Query$FetchParentsAndChildren$fetch_person.stub(
            _then(_instance))
        : CopyWith$Query$FetchParentsAndChildren$fetch_person(
            local$fetch_person, (e) => call(fetch_person: e));
  }
}

class _CopyWithStubImpl$Query$FetchParentsAndChildren<TRes>
    implements CopyWith$Query$FetchParentsAndChildren<TRes> {
  _CopyWithStubImpl$Query$FetchParentsAndChildren(this._res);

  TRes _res;

  call({
    Query$FetchParentsAndChildren$fetch_person? fetch_person,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchParentsAndChildren$fetch_person<TRes> get fetch_person =>
      CopyWith$Query$FetchParentsAndChildren$fetch_person.stub(_res);
}

const documentNodeQueryFetchParentsAndChildren = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchParentsAndChildren'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetch_person'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'parents'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PersonSummary'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'nickname'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PersonSummary'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPersonSummary,
]);

class Query$FetchParentsAndChildren$fetch_person {
  Query$FetchParentsAndChildren$fetch_person({
    this.parents,
    this.children,
    this.$__typename = 'Person',
  });

  factory Query$FetchParentsAndChildren$fetch_person.fromJson(
      Map<String, dynamic> json) {
    final l$parents = json['parents'];
    final l$children = json['children'];
    final l$$__typename = json['__typename'];
    return Query$FetchParentsAndChildren$fetch_person(
      parents: (l$parents as List<dynamic>?)
          ?.map((e) =>
              Query$FetchParentsAndChildren$fetch_person$parents.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      children: (l$children as List<dynamic>?)
          ?.map((e) =>
              Fragment$PersonSummary.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchParentsAndChildren$fetch_person$parents>? parents;

  final List<Fragment$PersonSummary>? children;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$parents = parents;
    _resultData['parents'] = l$parents?.map((e) => e.toJson()).toList();
    final l$children = children;
    _resultData['children'] = l$children?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$parents = parents;
    final l$children = children;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$parents == null ? null : Object.hashAll(l$parents.map((v) => v)),
      l$children == null ? null : Object.hashAll(l$children.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchParentsAndChildren$fetch_person ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (l$parents != null && lOther$parents != null) {
      if (l$parents.length != lOther$parents.length) {
        return false;
      }
      for (int i = 0; i < l$parents.length; i++) {
        final l$parents$entry = l$parents[i];
        final lOther$parents$entry = lOther$parents[i];
        if (l$parents$entry != lOther$parents$entry) {
          return false;
        }
      }
    } else if (l$parents != lOther$parents) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (l$children != null && lOther$children != null) {
      if (l$children.length != lOther$children.length) {
        return false;
      }
      for (int i = 0; i < l$children.length; i++) {
        final l$children$entry = l$children[i];
        final lOther$children$entry = lOther$children[i];
        if (l$children$entry != lOther$children$entry) {
          return false;
        }
      }
    } else if (l$children != lOther$children) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchParentsAndChildren$fetch_person
    on Query$FetchParentsAndChildren$fetch_person {
  CopyWith$Query$FetchParentsAndChildren$fetch_person<
          Query$FetchParentsAndChildren$fetch_person>
      get copyWith => CopyWith$Query$FetchParentsAndChildren$fetch_person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchParentsAndChildren$fetch_person<TRes> {
  factory CopyWith$Query$FetchParentsAndChildren$fetch_person(
    Query$FetchParentsAndChildren$fetch_person instance,
    TRes Function(Query$FetchParentsAndChildren$fetch_person) then,
  ) = _CopyWithImpl$Query$FetchParentsAndChildren$fetch_person;

  factory CopyWith$Query$FetchParentsAndChildren$fetch_person.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchParentsAndChildren$fetch_person;

  TRes call({
    List<Query$FetchParentsAndChildren$fetch_person$parents>? parents,
    List<Fragment$PersonSummary>? children,
    String? $__typename,
  });
  TRes parents(
      Iterable<Query$FetchParentsAndChildren$fetch_person$parents>? Function(
              Iterable<
                  CopyWith$Query$FetchParentsAndChildren$fetch_person$parents<
                      Query$FetchParentsAndChildren$fetch_person$parents>>?)
          _fn);
  TRes children(
      Iterable<Fragment$PersonSummary>? Function(
              Iterable<
                  CopyWith$Fragment$PersonSummary<Fragment$PersonSummary>>?)
          _fn);
}

class _CopyWithImpl$Query$FetchParentsAndChildren$fetch_person<TRes>
    implements CopyWith$Query$FetchParentsAndChildren$fetch_person<TRes> {
  _CopyWithImpl$Query$FetchParentsAndChildren$fetch_person(
    this._instance,
    this._then,
  );

  final Query$FetchParentsAndChildren$fetch_person _instance;

  final TRes Function(Query$FetchParentsAndChildren$fetch_person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? parents = _undefined,
    Object? children = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchParentsAndChildren$fetch_person(
        parents: parents == _undefined
            ? _instance.parents
            : (parents
                as List<Query$FetchParentsAndChildren$fetch_person$parents>?),
        children: children == _undefined
            ? _instance.children
            : (children as List<Fragment$PersonSummary>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes parents(
          Iterable<Query$FetchParentsAndChildren$fetch_person$parents>? Function(
                  Iterable<
                      CopyWith$Query$FetchParentsAndChildren$fetch_person$parents<
                          Query$FetchParentsAndChildren$fetch_person$parents>>?)
              _fn) =>
      call(
          parents: _fn(_instance.parents?.map((e) =>
              CopyWith$Query$FetchParentsAndChildren$fetch_person$parents(
                e,
                (i) => i,
              )))?.toList());

  TRes children(
          Iterable<Fragment$PersonSummary>? Function(
                  Iterable<
                      CopyWith$Fragment$PersonSummary<Fragment$PersonSummary>>?)
              _fn) =>
      call(
          children: _fn(
              _instance.children?.map((e) => CopyWith$Fragment$PersonSummary(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$FetchParentsAndChildren$fetch_person<TRes>
    implements CopyWith$Query$FetchParentsAndChildren$fetch_person<TRes> {
  _CopyWithStubImpl$Query$FetchParentsAndChildren$fetch_person(this._res);

  TRes _res;

  call({
    List<Query$FetchParentsAndChildren$fetch_person$parents>? parents,
    List<Fragment$PersonSummary>? children,
    String? $__typename,
  }) =>
      _res;

  parents(_fn) => _res;

  children(_fn) => _res;
}

class Query$FetchParentsAndChildren$fetch_person$parents
    implements Fragment$PersonSummary {
  Query$FetchParentsAndChildren$fetch_person$parents({
    required this.full_name,
    this.$__typename = 'Person',
    this.nickname,
  });

  factory Query$FetchParentsAndChildren$fetch_person$parents.fromJson(
      Map<String, dynamic> json) {
    final l$full_name = json['full_name'];
    final l$$__typename = json['__typename'];
    final l$nickname = json['nickname'];
    return Query$FetchParentsAndChildren$fetch_person$parents(
      full_name: (l$full_name as String),
      $__typename: (l$$__typename as String),
      nickname: (l$nickname as String?),
    );
  }

  final String full_name;

  final String $__typename;

  final String? nickname;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$full_name = full_name;
    _resultData['full_name'] = l$full_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$full_name = full_name;
    final l$$__typename = $__typename;
    final l$nickname = nickname;
    return Object.hashAll([
      l$full_name,
      l$$__typename,
      l$nickname,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchParentsAndChildren$fetch_person$parents ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$full_name = full_name;
    final lOther$full_name = other.full_name;
    if (l$full_name != lOther$full_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchParentsAndChildren$fetch_person$parents
    on Query$FetchParentsAndChildren$fetch_person$parents {
  CopyWith$Query$FetchParentsAndChildren$fetch_person$parents<
          Query$FetchParentsAndChildren$fetch_person$parents>
      get copyWith =>
          CopyWith$Query$FetchParentsAndChildren$fetch_person$parents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchParentsAndChildren$fetch_person$parents<
    TRes> {
  factory CopyWith$Query$FetchParentsAndChildren$fetch_person$parents(
    Query$FetchParentsAndChildren$fetch_person$parents instance,
    TRes Function(Query$FetchParentsAndChildren$fetch_person$parents) then,
  ) = _CopyWithImpl$Query$FetchParentsAndChildren$fetch_person$parents;

  factory CopyWith$Query$FetchParentsAndChildren$fetch_person$parents.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchParentsAndChildren$fetch_person$parents;

  TRes call({
    String? full_name,
    String? $__typename,
    String? nickname,
  });
}

class _CopyWithImpl$Query$FetchParentsAndChildren$fetch_person$parents<TRes>
    implements
        CopyWith$Query$FetchParentsAndChildren$fetch_person$parents<TRes> {
  _CopyWithImpl$Query$FetchParentsAndChildren$fetch_person$parents(
    this._instance,
    this._then,
  );

  final Query$FetchParentsAndChildren$fetch_person$parents _instance;

  final TRes Function(Query$FetchParentsAndChildren$fetch_person$parents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full_name = _undefined,
    Object? $__typename = _undefined,
    Object? nickname = _undefined,
  }) =>
      _then(Query$FetchParentsAndChildren$fetch_person$parents(
        full_name: full_name == _undefined || full_name == null
            ? _instance.full_name
            : (full_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nickname:
            nickname == _undefined ? _instance.nickname : (nickname as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchParentsAndChildren$fetch_person$parents<TRes>
    implements
        CopyWith$Query$FetchParentsAndChildren$fetch_person$parents<TRes> {
  _CopyWithStubImpl$Query$FetchParentsAndChildren$fetch_person$parents(
      this._res);

  TRes _res;

  call({
    String? full_name,
    String? $__typename,
    String? nickname,
  }) =>
      _res;
}
