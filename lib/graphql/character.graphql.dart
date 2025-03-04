import 'package:gql/ast.dart';

class Fragment$AllCharacter {
  Fragment$AllCharacter({
    required this.id,
    required this.title,
    this.text,
    required this.createdAt,
    required this.user,
    this.roles,
    this.images,
    this.$__typename = 'Character',
  });

  factory Fragment$AllCharacter.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$text = json['text'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$roles = json['roles'];
    final l$images = json['images'];
    final l$$__typename = json['__typename'];
    return Fragment$AllCharacter(
      id: (l$id as int),
      title: (l$title as String),
      text: (l$text as String?),
      createdAt: (l$createdAt as String),
      user: (l$user as String),
      roles: (l$roles as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$AllCharacter$roles.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      images: (l$images as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$AllCharacter$images.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String? text;

  final String createdAt;

  final String user;

  final List<Fragment$AllCharacter$roles?>? roles;

  final List<Fragment$AllCharacter$images?>? images;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user;
    final l$roles = roles;
    _resultData['roles'] = l$roles?.map((e) => e?.toJson()).toList();
    final l$images = images;
    _resultData['images'] = l$images?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$text = text;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$roles = roles;
    final l$images = images;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$text,
      l$createdAt,
      l$user,
      l$roles == null ? null : Object.hashAll(l$roles.map((v) => v)),
      l$images == null ? null : Object.hashAll(l$images.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AllCharacter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles != null && lOther$roles != null) {
      if (l$roles.length != lOther$roles.length) {
        return false;
      }
      for (int i = 0; i < l$roles.length; i++) {
        final l$roles$entry = l$roles[i];
        final lOther$roles$entry = lOther$roles[i];
        if (l$roles$entry != lOther$roles$entry) {
          return false;
        }
      }
    } else if (l$roles != lOther$roles) {
      return false;
    }
    final l$images = images;
    final lOther$images = other.images;
    if (l$images != null && lOther$images != null) {
      if (l$images.length != lOther$images.length) {
        return false;
      }
      for (int i = 0; i < l$images.length; i++) {
        final l$images$entry = l$images[i];
        final lOther$images$entry = lOther$images[i];
        if (l$images$entry != lOther$images$entry) {
          return false;
        }
      }
    } else if (l$images != lOther$images) {
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

extension UtilityExtension$Fragment$AllCharacter on Fragment$AllCharacter {
  CopyWith$Fragment$AllCharacter<Fragment$AllCharacter> get copyWith =>
      CopyWith$Fragment$AllCharacter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AllCharacter<TRes> {
  factory CopyWith$Fragment$AllCharacter(
    Fragment$AllCharacter instance,
    TRes Function(Fragment$AllCharacter) then,
  ) = _CopyWithImpl$Fragment$AllCharacter;

  factory CopyWith$Fragment$AllCharacter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AllCharacter;

  TRes call({
    int? id,
    String? title,
    String? text,
    String? createdAt,
    String? user,
    List<Fragment$AllCharacter$roles?>? roles,
    List<Fragment$AllCharacter$images?>? images,
    String? $__typename,
  });
  TRes roles(
      Iterable<Fragment$AllCharacter$roles?>? Function(
              Iterable<
                  CopyWith$Fragment$AllCharacter$roles<
                      Fragment$AllCharacter$roles>?>?)
          _fn);
  TRes images(
      Iterable<Fragment$AllCharacter$images?>? Function(
              Iterable<
                  CopyWith$Fragment$AllCharacter$images<
                      Fragment$AllCharacter$images>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$AllCharacter<TRes>
    implements CopyWith$Fragment$AllCharacter<TRes> {
  _CopyWithImpl$Fragment$AllCharacter(
    this._instance,
    this._then,
  );

  final Fragment$AllCharacter _instance;

  final TRes Function(Fragment$AllCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? roles = _undefined,
    Object? images = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AllCharacter(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        text: text == _undefined ? _instance.text : (text as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as String),
        roles: roles == _undefined
            ? _instance.roles
            : (roles as List<Fragment$AllCharacter$roles?>?),
        images: images == _undefined
            ? _instance.images
            : (images as List<Fragment$AllCharacter$images?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes roles(
          Iterable<Fragment$AllCharacter$roles?>? Function(
                  Iterable<
                      CopyWith$Fragment$AllCharacter$roles<
                          Fragment$AllCharacter$roles>?>?)
              _fn) =>
      call(
          roles: _fn(_instance.roles?.map((e) => e == null
              ? null
              : CopyWith$Fragment$AllCharacter$roles(
                  e,
                  (i) => i,
                )))?.toList());

  TRes images(
          Iterable<Fragment$AllCharacter$images?>? Function(
                  Iterable<
                      CopyWith$Fragment$AllCharacter$images<
                          Fragment$AllCharacter$images>?>?)
              _fn) =>
      call(
          images: _fn(_instance.images?.map((e) => e == null
              ? null
              : CopyWith$Fragment$AllCharacter$images(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$AllCharacter<TRes>
    implements CopyWith$Fragment$AllCharacter<TRes> {
  _CopyWithStubImpl$Fragment$AllCharacter(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? text,
    String? createdAt,
    String? user,
    List<Fragment$AllCharacter$roles?>? roles,
    List<Fragment$AllCharacter$images?>? images,
    String? $__typename,
  }) =>
      _res;

  roles(_fn) => _res;

  images(_fn) => _res;
}

const fragmentDefinitionAllCharacter = FragmentDefinitionNode(
  name: NameNode(value: 'AllCharacter'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'text'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'roles'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'organization'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'title'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'id'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'images'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'fileName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'URL'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'x'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'y'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'id'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentAllCharacter = DocumentNode(definitions: [
  fragmentDefinitionAllCharacter,
]);

class Fragment$AllCharacter$roles {
  Fragment$AllCharacter$roles({
    required this.title,
    required this.id,
    required this.organization,
    this.$__typename = 'Role',
  });

  factory Fragment$AllCharacter$roles.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$id = json['id'];
    final l$organization = json['organization'];
    final l$$__typename = json['__typename'];
    return Fragment$AllCharacter$roles(
      title: (l$title as String),
      id: (l$id as int),
      organization: Fragment$AllCharacter$roles$organization.fromJson(
          (l$organization as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final int id;

  final Fragment$AllCharacter$roles$organization organization;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$organization = organization;
    _resultData['organization'] = l$organization.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$id = id;
    final l$organization = organization;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$id,
      l$organization,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AllCharacter$roles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$organization = organization;
    final lOther$organization = other.organization;
    if (l$organization != lOther$organization) {
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

extension UtilityExtension$Fragment$AllCharacter$roles
    on Fragment$AllCharacter$roles {
  CopyWith$Fragment$AllCharacter$roles<Fragment$AllCharacter$roles>
      get copyWith => CopyWith$Fragment$AllCharacter$roles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AllCharacter$roles<TRes> {
  factory CopyWith$Fragment$AllCharacter$roles(
    Fragment$AllCharacter$roles instance,
    TRes Function(Fragment$AllCharacter$roles) then,
  ) = _CopyWithImpl$Fragment$AllCharacter$roles;

  factory CopyWith$Fragment$AllCharacter$roles.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AllCharacter$roles;

  TRes call({
    String? title,
    int? id,
    Fragment$AllCharacter$roles$organization? organization,
    String? $__typename,
  });
  CopyWith$Fragment$AllCharacter$roles$organization<TRes> get organization;
}

class _CopyWithImpl$Fragment$AllCharacter$roles<TRes>
    implements CopyWith$Fragment$AllCharacter$roles<TRes> {
  _CopyWithImpl$Fragment$AllCharacter$roles(
    this._instance,
    this._then,
  );

  final Fragment$AllCharacter$roles _instance;

  final TRes Function(Fragment$AllCharacter$roles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? id = _undefined,
    Object? organization = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AllCharacter$roles(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        organization: organization == _undefined || organization == null
            ? _instance.organization
            : (organization as Fragment$AllCharacter$roles$organization),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$AllCharacter$roles$organization<TRes> get organization {
    final local$organization = _instance.organization;
    return CopyWith$Fragment$AllCharacter$roles$organization(
        local$organization, (e) => call(organization: e));
  }
}

class _CopyWithStubImpl$Fragment$AllCharacter$roles<TRes>
    implements CopyWith$Fragment$AllCharacter$roles<TRes> {
  _CopyWithStubImpl$Fragment$AllCharacter$roles(this._res);

  TRes _res;

  call({
    String? title,
    int? id,
    Fragment$AllCharacter$roles$organization? organization,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$AllCharacter$roles$organization<TRes> get organization =>
      CopyWith$Fragment$AllCharacter$roles$organization.stub(_res);
}

class Fragment$AllCharacter$roles$organization {
  Fragment$AllCharacter$roles$organization({
    required this.title,
    required this.id,
    this.$__typename = 'Organization',
  });

  factory Fragment$AllCharacter$roles$organization.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$AllCharacter$roles$organization(
      title: (l$title as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AllCharacter$roles$organization ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$AllCharacter$roles$organization
    on Fragment$AllCharacter$roles$organization {
  CopyWith$Fragment$AllCharacter$roles$organization<
          Fragment$AllCharacter$roles$organization>
      get copyWith => CopyWith$Fragment$AllCharacter$roles$organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AllCharacter$roles$organization<TRes> {
  factory CopyWith$Fragment$AllCharacter$roles$organization(
    Fragment$AllCharacter$roles$organization instance,
    TRes Function(Fragment$AllCharacter$roles$organization) then,
  ) = _CopyWithImpl$Fragment$AllCharacter$roles$organization;

  factory CopyWith$Fragment$AllCharacter$roles$organization.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AllCharacter$roles$organization;

  TRes call({
    String? title,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AllCharacter$roles$organization<TRes>
    implements CopyWith$Fragment$AllCharacter$roles$organization<TRes> {
  _CopyWithImpl$Fragment$AllCharacter$roles$organization(
    this._instance,
    this._then,
  );

  final Fragment$AllCharacter$roles$organization _instance;

  final TRes Function(Fragment$AllCharacter$roles$organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AllCharacter$roles$organization(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AllCharacter$roles$organization<TRes>
    implements CopyWith$Fragment$AllCharacter$roles$organization<TRes> {
  _CopyWithStubImpl$Fragment$AllCharacter$roles$organization(this._res);

  TRes _res;

  call({
    String? title,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$AllCharacter$images {
  Fragment$AllCharacter$images({
    required this.fileName,
    required this.URL,
    this.x,
    this.y,
    required this.id,
    this.$__typename = 'Image',
  });

  factory Fragment$AllCharacter$images.fromJson(Map<String, dynamic> json) {
    final l$fileName = json['fileName'];
    final l$URL = json['URL'];
    final l$x = json['x'];
    final l$y = json['y'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$AllCharacter$images(
      fileName: (l$fileName as String),
      URL: (l$URL as String),
      x: (l$x as int?),
      y: (l$y as int?),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String fileName;

  final String URL;

  final int? x;

  final int? y;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fileName = fileName;
    _resultData['fileName'] = l$fileName;
    final l$URL = URL;
    _resultData['URL'] = l$URL;
    final l$x = x;
    _resultData['x'] = l$x;
    final l$y = y;
    _resultData['y'] = l$y;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fileName = fileName;
    final l$URL = URL;
    final l$x = x;
    final l$y = y;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fileName,
      l$URL,
      l$x,
      l$y,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AllCharacter$images ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fileName = fileName;
    final lOther$fileName = other.fileName;
    if (l$fileName != lOther$fileName) {
      return false;
    }
    final l$URL = URL;
    final lOther$URL = other.URL;
    if (l$URL != lOther$URL) {
      return false;
    }
    final l$x = x;
    final lOther$x = other.x;
    if (l$x != lOther$x) {
      return false;
    }
    final l$y = y;
    final lOther$y = other.y;
    if (l$y != lOther$y) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$AllCharacter$images
    on Fragment$AllCharacter$images {
  CopyWith$Fragment$AllCharacter$images<Fragment$AllCharacter$images>
      get copyWith => CopyWith$Fragment$AllCharacter$images(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AllCharacter$images<TRes> {
  factory CopyWith$Fragment$AllCharacter$images(
    Fragment$AllCharacter$images instance,
    TRes Function(Fragment$AllCharacter$images) then,
  ) = _CopyWithImpl$Fragment$AllCharacter$images;

  factory CopyWith$Fragment$AllCharacter$images.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AllCharacter$images;

  TRes call({
    String? fileName,
    String? URL,
    int? x,
    int? y,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AllCharacter$images<TRes>
    implements CopyWith$Fragment$AllCharacter$images<TRes> {
  _CopyWithImpl$Fragment$AllCharacter$images(
    this._instance,
    this._then,
  );

  final Fragment$AllCharacter$images _instance;

  final TRes Function(Fragment$AllCharacter$images) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fileName = _undefined,
    Object? URL = _undefined,
    Object? x = _undefined,
    Object? y = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AllCharacter$images(
        fileName: fileName == _undefined || fileName == null
            ? _instance.fileName
            : (fileName as String),
        URL: URL == _undefined || URL == null ? _instance.URL : (URL as String),
        x: x == _undefined ? _instance.x : (x as int?),
        y: y == _undefined ? _instance.y : (y as int?),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AllCharacter$images<TRes>
    implements CopyWith$Fragment$AllCharacter$images<TRes> {
  _CopyWithStubImpl$Fragment$AllCharacter$images(this._res);

  TRes _res;

  call({
    String? fileName,
    String? URL,
    int? x,
    int? y,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ExistingCharacter {
  Fragment$ExistingCharacter({
    this.scenes,
    this.$__typename = 'Character',
  });

  factory Fragment$ExistingCharacter.fromJson(Map<String, dynamic> json) {
    final l$scenes = json['scenes'];
    final l$$__typename = json['__typename'];
    return Fragment$ExistingCharacter(
      scenes: (l$scenes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ExistingCharacter$scenes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ExistingCharacter$scenes?>? scenes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scenes = scenes;
    _resultData['scenes'] = l$scenes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scenes = scenes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scenes == null ? null : Object.hashAll(l$scenes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ExistingCharacter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scenes = scenes;
    final lOther$scenes = other.scenes;
    if (l$scenes != null && lOther$scenes != null) {
      if (l$scenes.length != lOther$scenes.length) {
        return false;
      }
      for (int i = 0; i < l$scenes.length; i++) {
        final l$scenes$entry = l$scenes[i];
        final lOther$scenes$entry = lOther$scenes[i];
        if (l$scenes$entry != lOther$scenes$entry) {
          return false;
        }
      }
    } else if (l$scenes != lOther$scenes) {
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

extension UtilityExtension$Fragment$ExistingCharacter
    on Fragment$ExistingCharacter {
  CopyWith$Fragment$ExistingCharacter<Fragment$ExistingCharacter>
      get copyWith => CopyWith$Fragment$ExistingCharacter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ExistingCharacter<TRes> {
  factory CopyWith$Fragment$ExistingCharacter(
    Fragment$ExistingCharacter instance,
    TRes Function(Fragment$ExistingCharacter) then,
  ) = _CopyWithImpl$Fragment$ExistingCharacter;

  factory CopyWith$Fragment$ExistingCharacter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ExistingCharacter;

  TRes call({
    List<Fragment$ExistingCharacter$scenes?>? scenes,
    String? $__typename,
  });
  TRes scenes(
      Iterable<Fragment$ExistingCharacter$scenes?>? Function(
              Iterable<
                  CopyWith$Fragment$ExistingCharacter$scenes<
                      Fragment$ExistingCharacter$scenes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$ExistingCharacter<TRes>
    implements CopyWith$Fragment$ExistingCharacter<TRes> {
  _CopyWithImpl$Fragment$ExistingCharacter(
    this._instance,
    this._then,
  );

  final Fragment$ExistingCharacter _instance;

  final TRes Function(Fragment$ExistingCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scenes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ExistingCharacter(
        scenes: scenes == _undefined
            ? _instance.scenes
            : (scenes as List<Fragment$ExistingCharacter$scenes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes scenes(
          Iterable<Fragment$ExistingCharacter$scenes?>? Function(
                  Iterable<
                      CopyWith$Fragment$ExistingCharacter$scenes<
                          Fragment$ExistingCharacter$scenes>?>?)
              _fn) =>
      call(
          scenes: _fn(_instance.scenes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ExistingCharacter$scenes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$ExistingCharacter<TRes>
    implements CopyWith$Fragment$ExistingCharacter<TRes> {
  _CopyWithStubImpl$Fragment$ExistingCharacter(this._res);

  TRes _res;

  call({
    List<Fragment$ExistingCharacter$scenes?>? scenes,
    String? $__typename,
  }) =>
      _res;

  scenes(_fn) => _res;
}

const fragmentDefinitionExistingCharacter = FragmentDefinitionNode(
  name: NameNode(value: 'ExistingCharacter'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'scenes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'startTimeline'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'endTimeline'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'id'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentExistingCharacter = DocumentNode(definitions: [
  fragmentDefinitionExistingCharacter,
]);

class Fragment$ExistingCharacter$scenes {
  Fragment$ExistingCharacter$scenes({
    required this.startTimeline,
    required this.endTimeline,
    required this.title,
    required this.id,
    this.$__typename = 'Scene',
  });

  factory Fragment$ExistingCharacter$scenes.fromJson(
      Map<String, dynamic> json) {
    final l$startTimeline = json['startTimeline'];
    final l$endTimeline = json['endTimeline'];
    final l$title = json['title'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$ExistingCharacter$scenes(
      startTimeline: (l$startTimeline as int),
      endTimeline: (l$endTimeline as int),
      title: (l$title as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int startTimeline;

  final int endTimeline;

  final String title;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startTimeline = startTimeline;
    _resultData['startTimeline'] = l$startTimeline;
    final l$endTimeline = endTimeline;
    _resultData['endTimeline'] = l$endTimeline;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startTimeline = startTimeline;
    final l$endTimeline = endTimeline;
    final l$title = title;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startTimeline,
      l$endTimeline,
      l$title,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ExistingCharacter$scenes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startTimeline = startTimeline;
    final lOther$startTimeline = other.startTimeline;
    if (l$startTimeline != lOther$startTimeline) {
      return false;
    }
    final l$endTimeline = endTimeline;
    final lOther$endTimeline = other.endTimeline;
    if (l$endTimeline != lOther$endTimeline) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$ExistingCharacter$scenes
    on Fragment$ExistingCharacter$scenes {
  CopyWith$Fragment$ExistingCharacter$scenes<Fragment$ExistingCharacter$scenes>
      get copyWith => CopyWith$Fragment$ExistingCharacter$scenes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ExistingCharacter$scenes<TRes> {
  factory CopyWith$Fragment$ExistingCharacter$scenes(
    Fragment$ExistingCharacter$scenes instance,
    TRes Function(Fragment$ExistingCharacter$scenes) then,
  ) = _CopyWithImpl$Fragment$ExistingCharacter$scenes;

  factory CopyWith$Fragment$ExistingCharacter$scenes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ExistingCharacter$scenes;

  TRes call({
    int? startTimeline,
    int? endTimeline,
    String? title,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ExistingCharacter$scenes<TRes>
    implements CopyWith$Fragment$ExistingCharacter$scenes<TRes> {
  _CopyWithImpl$Fragment$ExistingCharacter$scenes(
    this._instance,
    this._then,
  );

  final Fragment$ExistingCharacter$scenes _instance;

  final TRes Function(Fragment$ExistingCharacter$scenes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startTimeline = _undefined,
    Object? endTimeline = _undefined,
    Object? title = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ExistingCharacter$scenes(
        startTimeline: startTimeline == _undefined || startTimeline == null
            ? _instance.startTimeline
            : (startTimeline as int),
        endTimeline: endTimeline == _undefined || endTimeline == null
            ? _instance.endTimeline
            : (endTimeline as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ExistingCharacter$scenes<TRes>
    implements CopyWith$Fragment$ExistingCharacter$scenes<TRes> {
  _CopyWithStubImpl$Fragment$ExistingCharacter$scenes(this._res);

  TRes _res;

  call({
    int? startTimeline,
    int? endTimeline,
    String? title,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters {
  Query$Characters({
    this.characters,
    this.$__typename = 'Query',
  });

  factory Query$Characters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$Characters(
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Characters$characters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Characters$characters?>? characters;

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
    if (other is! Query$Characters || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Characters on Query$Characters {
  CopyWith$Query$Characters<Query$Characters> get copyWith =>
      CopyWith$Query$Characters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Characters<TRes> {
  factory CopyWith$Query$Characters(
    Query$Characters instance,
    TRes Function(Query$Characters) then,
  ) = _CopyWithImpl$Query$Characters;

  factory CopyWith$Query$Characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters;

  TRes call({
    List<Query$Characters$characters?>? characters,
    String? $__typename,
  });
  TRes characters(
      Iterable<Query$Characters$characters?>? Function(
              Iterable<
                  CopyWith$Query$Characters$characters<
                      Query$Characters$characters>?>?)
          _fn);
}

class _CopyWithImpl$Query$Characters<TRes>
    implements CopyWith$Query$Characters<TRes> {
  _CopyWithImpl$Query$Characters(
    this._instance,
    this._then,
  );

  final Query$Characters _instance;

  final TRes Function(Query$Characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters(
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Query$Characters$characters?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes characters(
          Iterable<Query$Characters$characters?>? Function(
                  Iterable<
                      CopyWith$Query$Characters$characters<
                          Query$Characters$characters>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Query$Characters$characters(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Characters<TRes>
    implements CopyWith$Query$Characters<TRes> {
  _CopyWithStubImpl$Query$Characters(this._res);

  TRes _res;

  call({
    List<Query$Characters$characters?>? characters,
    String? $__typename,
  }) =>
      _res;

  characters(_fn) => _res;
}

const documentNodeQueryCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Characters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'characters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'text'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$Characters$characters {
  Query$Characters$characters({
    required this.title,
    this.text,
    this.$__typename = 'Character',
  });

  factory Query$Characters$characters.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Query$Characters$characters(
      title: (l$title as String),
      text: (l$text as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String? text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Characters$characters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Query$Characters$characters
    on Query$Characters$characters {
  CopyWith$Query$Characters$characters<Query$Characters$characters>
      get copyWith => CopyWith$Query$Characters$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$characters<TRes> {
  factory CopyWith$Query$Characters$characters(
    Query$Characters$characters instance,
    TRes Function(Query$Characters$characters) then,
  ) = _CopyWithImpl$Query$Characters$characters;

  factory CopyWith$Query$Characters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$characters;

  TRes call({
    String? title,
    String? text,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$characters<TRes>
    implements CopyWith$Query$Characters$characters<TRes> {
  _CopyWithImpl$Query$Characters$characters(
    this._instance,
    this._then,
  );

  final Query$Characters$characters _instance;

  final TRes Function(Query$Characters$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$characters(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        text: text == _undefined ? _instance.text : (text as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$characters<TRes>
    implements CopyWith$Query$Characters$characters<TRes> {
  _CopyWithStubImpl$Query$Characters$characters(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    String? $__typename,
  }) =>
      _res;
}
