import 'package:gql/ast.dart';

class Query$getCharacters {
  Query$getCharacters({this.characters, this.$__typename = 'Query'});

  factory Query$getCharacters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$getCharacters(
      characters:
          (l$characters as List<dynamic>?)
              ?.map(
                (e) =>
                    e == null
                        ? null
                        : Query$getCharacters$characters.fromJson(
                          (e as Map<String, dynamic>),
                        ),
              )
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getCharacters$characters?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacters || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$getCharacters on Query$getCharacters {
  CopyWith$Query$getCharacters<Query$getCharacters> get copyWith =>
      CopyWith$Query$getCharacters(this, (i) => i);
}

abstract class CopyWith$Query$getCharacters<TRes> {
  factory CopyWith$Query$getCharacters(
    Query$getCharacters instance,
    TRes Function(Query$getCharacters) then,
  ) = _CopyWithImpl$Query$getCharacters;

  factory CopyWith$Query$getCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacters;

  TRes call({
    List<Query$getCharacters$characters?>? characters,
    String? $__typename,
  });
  TRes characters(
    Iterable<Query$getCharacters$characters?>? Function(
      Iterable<
        CopyWith$Query$getCharacters$characters<Query$getCharacters$characters>?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getCharacters<TRes>
    implements CopyWith$Query$getCharacters<TRes> {
  _CopyWithImpl$Query$getCharacters(this._instance, this._then);

  final Query$getCharacters _instance;

  final TRes Function(Query$getCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getCharacters(
      characters:
          characters == _undefined
              ? _instance.characters
              : (characters as List<Query$getCharacters$characters?>?),
      $__typename:
          $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
    ),
  );

  TRes characters(
    Iterable<Query$getCharacters$characters?>? Function(
      Iterable<
        CopyWith$Query$getCharacters$characters<Query$getCharacters$characters>?
      >?,
    )
    _fn,
  ) => call(
    characters:
        _fn(
          _instance.characters?.map(
            (e) =>
                e == null
                    ? null
                    : CopyWith$Query$getCharacters$characters(e, (i) => i),
          ),
        )?.toList(),
  );
}

class _CopyWithStubImpl$Query$getCharacters<TRes>
    implements CopyWith$Query$getCharacters<TRes> {
  _CopyWithStubImpl$Query$getCharacters(this._res);

  TRes _res;

  call({
    List<Query$getCharacters$characters?>? characters,
    String? $__typename,
  }) => _res;

  characters(_fn) => _res;
}

const documentNodeQuerygetCharacters = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getCharacters'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(fields: []),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'title'),
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
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$getCharacters$characters {
  Query$getCharacters$characters({
    required this.title,
    this.$__typename = 'Character',
  });

  factory Query$getCharacters$characters.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$getCharacters$characters(
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacters$characters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$getCharacters$characters
    on Query$getCharacters$characters {
  CopyWith$Query$getCharacters$characters<Query$getCharacters$characters>
  get copyWith => CopyWith$Query$getCharacters$characters(this, (i) => i);
}

abstract class CopyWith$Query$getCharacters$characters<TRes> {
  factory CopyWith$Query$getCharacters$characters(
    Query$getCharacters$characters instance,
    TRes Function(Query$getCharacters$characters) then,
  ) = _CopyWithImpl$Query$getCharacters$characters;

  factory CopyWith$Query$getCharacters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacters$characters;

  TRes call({String? title, String? $__typename});
}

class _CopyWithImpl$Query$getCharacters$characters<TRes>
    implements CopyWith$Query$getCharacters$characters<TRes> {
  _CopyWithImpl$Query$getCharacters$characters(this._instance, this._then);

  final Query$getCharacters$characters _instance;

  final TRes Function(Query$getCharacters$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? title = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$getCharacters$characters(
          title:
              title == _undefined || title == null
                  ? _instance.title
                  : (title as String),
          $__typename:
              $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$getCharacters$characters<TRes>
    implements CopyWith$Query$getCharacters$characters<TRes> {
  _CopyWithStubImpl$Query$getCharacters$characters(this._res);

  TRes _res;

  call({String? title, String? $__typename}) => _res;
}
