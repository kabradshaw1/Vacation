import 'package:gql/ast.dart';

class Variables$Mutation$loginMobile {
  factory Variables$Mutation$loginMobile({
    required String email,
    required String password,
  }) =>
      Variables$Mutation$loginMobile._({
        r'email': email,
        r'password': password,
      });

  Variables$Mutation$loginMobile._(this._$data);

  factory Variables$Mutation$loginMobile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$loginMobile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$loginMobile<Variables$Mutation$loginMobile>
      get copyWith => CopyWith$Variables$Mutation$loginMobile(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$loginMobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$loginMobile<TRes> {
  factory CopyWith$Variables$Mutation$loginMobile(
    Variables$Mutation$loginMobile instance,
    TRes Function(Variables$Mutation$loginMobile) then,
  ) = _CopyWithImpl$Variables$Mutation$loginMobile;

  factory CopyWith$Variables$Mutation$loginMobile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$loginMobile;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Variables$Mutation$loginMobile<TRes>
    implements CopyWith$Variables$Mutation$loginMobile<TRes> {
  _CopyWithImpl$Variables$Mutation$loginMobile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$loginMobile _instance;

  final TRes Function(Variables$Mutation$loginMobile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Mutation$loginMobile._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$loginMobile<TRes>
    implements CopyWith$Variables$Mutation$loginMobile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$loginMobile(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Mutation$loginMobile {
  Mutation$loginMobile({
    this.loginMobile,
    this.$__typename = 'Mutation',
  });

  factory Mutation$loginMobile.fromJson(Map<String, dynamic> json) {
    final l$loginMobile = json['loginMobile'];
    final l$$__typename = json['__typename'];
    return Mutation$loginMobile(
      loginMobile: l$loginMobile == null
          ? null
          : Mutation$loginMobile$loginMobile.fromJson(
              (l$loginMobile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$loginMobile$loginMobile? loginMobile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loginMobile = loginMobile;
    _resultData['loginMobile'] = l$loginMobile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loginMobile = loginMobile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$loginMobile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$loginMobile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$loginMobile = loginMobile;
    final lOther$loginMobile = other.loginMobile;
    if (l$loginMobile != lOther$loginMobile) {
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

extension UtilityExtension$Mutation$loginMobile on Mutation$loginMobile {
  CopyWith$Mutation$loginMobile<Mutation$loginMobile> get copyWith =>
      CopyWith$Mutation$loginMobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$loginMobile<TRes> {
  factory CopyWith$Mutation$loginMobile(
    Mutation$loginMobile instance,
    TRes Function(Mutation$loginMobile) then,
  ) = _CopyWithImpl$Mutation$loginMobile;

  factory CopyWith$Mutation$loginMobile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$loginMobile;

  TRes call({
    Mutation$loginMobile$loginMobile? loginMobile,
    String? $__typename,
  });
  CopyWith$Mutation$loginMobile$loginMobile<TRes> get loginMobile;
}

class _CopyWithImpl$Mutation$loginMobile<TRes>
    implements CopyWith$Mutation$loginMobile<TRes> {
  _CopyWithImpl$Mutation$loginMobile(
    this._instance,
    this._then,
  );

  final Mutation$loginMobile _instance;

  final TRes Function(Mutation$loginMobile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loginMobile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$loginMobile(
        loginMobile: loginMobile == _undefined
            ? _instance.loginMobile
            : (loginMobile as Mutation$loginMobile$loginMobile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$loginMobile$loginMobile<TRes> get loginMobile {
    final local$loginMobile = _instance.loginMobile;
    return local$loginMobile == null
        ? CopyWith$Mutation$loginMobile$loginMobile.stub(_then(_instance))
        : CopyWith$Mutation$loginMobile$loginMobile(
            local$loginMobile, (e) => call(loginMobile: e));
  }
}

class _CopyWithStubImpl$Mutation$loginMobile<TRes>
    implements CopyWith$Mutation$loginMobile<TRes> {
  _CopyWithStubImpl$Mutation$loginMobile(this._res);

  TRes _res;

  call({
    Mutation$loginMobile$loginMobile? loginMobile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$loginMobile$loginMobile<TRes> get loginMobile =>
      CopyWith$Mutation$loginMobile$loginMobile.stub(_res);
}

const documentNodeMutationloginMobile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'loginMobile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'loginMobile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'email'),
                value: VariableNode(name: NameNode(value: 'email')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'token'),
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

class Mutation$loginMobile$loginMobile {
  Mutation$loginMobile$loginMobile({
    required this.refreshToken,
    required this.token,
    this.$__typename = 'Auth',
  });

  factory Mutation$loginMobile$loginMobile.fromJson(Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$loginMobile$loginMobile(
      refreshToken: (l$refreshToken as String),
      token: (l$token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String refreshToken;

  final String token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshToken,
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$loginMobile$loginMobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
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

extension UtilityExtension$Mutation$loginMobile$loginMobile
    on Mutation$loginMobile$loginMobile {
  CopyWith$Mutation$loginMobile$loginMobile<Mutation$loginMobile$loginMobile>
      get copyWith => CopyWith$Mutation$loginMobile$loginMobile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$loginMobile$loginMobile<TRes> {
  factory CopyWith$Mutation$loginMobile$loginMobile(
    Mutation$loginMobile$loginMobile instance,
    TRes Function(Mutation$loginMobile$loginMobile) then,
  ) = _CopyWithImpl$Mutation$loginMobile$loginMobile;

  factory CopyWith$Mutation$loginMobile$loginMobile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$loginMobile$loginMobile;

  TRes call({
    String? refreshToken,
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$loginMobile$loginMobile<TRes>
    implements CopyWith$Mutation$loginMobile$loginMobile<TRes> {
  _CopyWithImpl$Mutation$loginMobile$loginMobile(
    this._instance,
    this._then,
  );

  final Mutation$loginMobile$loginMobile _instance;

  final TRes Function(Mutation$loginMobile$loginMobile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$loginMobile$loginMobile(
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$loginMobile$loginMobile<TRes>
    implements CopyWith$Mutation$loginMobile$loginMobile<TRes> {
  _CopyWithStubImpl$Mutation$loginMobile$loginMobile(this._res);

  TRes _res;

  call({
    String? refreshToken,
    String? token,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$registerMobile {
  factory Variables$Mutation$registerMobile({
    required String username,
    required String password,
    required String email,
  }) =>
      Variables$Mutation$registerMobile._({
        r'username': username,
        r'password': password,
        r'email': email,
      });

  Variables$Mutation$registerMobile._(this._$data);

  factory Variables$Mutation$registerMobile.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    return Variables$Mutation$registerMobile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String get password => (_$data['password'] as String);

  String get email => (_$data['email'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    final l$email = email;
    result$data['email'] = l$email;
    return result$data;
  }

  CopyWith$Variables$Mutation$registerMobile<Variables$Mutation$registerMobile>
      get copyWith => CopyWith$Variables$Mutation$registerMobile(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$registerMobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    final l$email = email;
    return Object.hashAll([
      l$username,
      l$password,
      l$email,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$registerMobile<TRes> {
  factory CopyWith$Variables$Mutation$registerMobile(
    Variables$Mutation$registerMobile instance,
    TRes Function(Variables$Mutation$registerMobile) then,
  ) = _CopyWithImpl$Variables$Mutation$registerMobile;

  factory CopyWith$Variables$Mutation$registerMobile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$registerMobile;

  TRes call({
    String? username,
    String? password,
    String? email,
  });
}

class _CopyWithImpl$Variables$Mutation$registerMobile<TRes>
    implements CopyWith$Variables$Mutation$registerMobile<TRes> {
  _CopyWithImpl$Variables$Mutation$registerMobile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$registerMobile _instance;

  final TRes Function(Variables$Mutation$registerMobile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Variables$Mutation$registerMobile._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (email != _undefined && email != null) 'email': (email as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$registerMobile<TRes>
    implements CopyWith$Variables$Mutation$registerMobile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$registerMobile(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
    String? email,
  }) =>
      _res;
}

class Mutation$registerMobile {
  Mutation$registerMobile({
    this.registerMobile,
    this.$__typename = 'Mutation',
  });

  factory Mutation$registerMobile.fromJson(Map<String, dynamic> json) {
    final l$registerMobile = json['registerMobile'];
    final l$$__typename = json['__typename'];
    return Mutation$registerMobile(
      registerMobile: l$registerMobile == null
          ? null
          : Mutation$registerMobile$registerMobile.fromJson(
              (l$registerMobile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$registerMobile$registerMobile? registerMobile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$registerMobile = registerMobile;
    _resultData['registerMobile'] = l$registerMobile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$registerMobile = registerMobile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$registerMobile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$registerMobile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$registerMobile = registerMobile;
    final lOther$registerMobile = other.registerMobile;
    if (l$registerMobile != lOther$registerMobile) {
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

extension UtilityExtension$Mutation$registerMobile on Mutation$registerMobile {
  CopyWith$Mutation$registerMobile<Mutation$registerMobile> get copyWith =>
      CopyWith$Mutation$registerMobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$registerMobile<TRes> {
  factory CopyWith$Mutation$registerMobile(
    Mutation$registerMobile instance,
    TRes Function(Mutation$registerMobile) then,
  ) = _CopyWithImpl$Mutation$registerMobile;

  factory CopyWith$Mutation$registerMobile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$registerMobile;

  TRes call({
    Mutation$registerMobile$registerMobile? registerMobile,
    String? $__typename,
  });
  CopyWith$Mutation$registerMobile$registerMobile<TRes> get registerMobile;
}

class _CopyWithImpl$Mutation$registerMobile<TRes>
    implements CopyWith$Mutation$registerMobile<TRes> {
  _CopyWithImpl$Mutation$registerMobile(
    this._instance,
    this._then,
  );

  final Mutation$registerMobile _instance;

  final TRes Function(Mutation$registerMobile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? registerMobile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$registerMobile(
        registerMobile: registerMobile == _undefined
            ? _instance.registerMobile
            : (registerMobile as Mutation$registerMobile$registerMobile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$registerMobile$registerMobile<TRes> get registerMobile {
    final local$registerMobile = _instance.registerMobile;
    return local$registerMobile == null
        ? CopyWith$Mutation$registerMobile$registerMobile.stub(_then(_instance))
        : CopyWith$Mutation$registerMobile$registerMobile(
            local$registerMobile, (e) => call(registerMobile: e));
  }
}

class _CopyWithStubImpl$Mutation$registerMobile<TRes>
    implements CopyWith$Mutation$registerMobile<TRes> {
  _CopyWithStubImpl$Mutation$registerMobile(this._res);

  TRes _res;

  call({
    Mutation$registerMobile$registerMobile? registerMobile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$registerMobile$registerMobile<TRes> get registerMobile =>
      CopyWith$Mutation$registerMobile$registerMobile.stub(_res);
}

const documentNodeMutationregisterMobile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'registerMobile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'registerMobile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'email'),
                value: VariableNode(name: NameNode(value: 'email')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'token'),
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

class Mutation$registerMobile$registerMobile {
  Mutation$registerMobile$registerMobile({
    required this.refreshToken,
    required this.token,
    this.$__typename = 'Auth',
  });

  factory Mutation$registerMobile$registerMobile.fromJson(
      Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$registerMobile$registerMobile(
      refreshToken: (l$refreshToken as String),
      token: (l$token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String refreshToken;

  final String token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshToken,
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$registerMobile$registerMobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
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

extension UtilityExtension$Mutation$registerMobile$registerMobile
    on Mutation$registerMobile$registerMobile {
  CopyWith$Mutation$registerMobile$registerMobile<
          Mutation$registerMobile$registerMobile>
      get copyWith => CopyWith$Mutation$registerMobile$registerMobile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$registerMobile$registerMobile<TRes> {
  factory CopyWith$Mutation$registerMobile$registerMobile(
    Mutation$registerMobile$registerMobile instance,
    TRes Function(Mutation$registerMobile$registerMobile) then,
  ) = _CopyWithImpl$Mutation$registerMobile$registerMobile;

  factory CopyWith$Mutation$registerMobile$registerMobile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$registerMobile$registerMobile;

  TRes call({
    String? refreshToken,
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$registerMobile$registerMobile<TRes>
    implements CopyWith$Mutation$registerMobile$registerMobile<TRes> {
  _CopyWithImpl$Mutation$registerMobile$registerMobile(
    this._instance,
    this._then,
  );

  final Mutation$registerMobile$registerMobile _instance;

  final TRes Function(Mutation$registerMobile$registerMobile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$registerMobile$registerMobile(
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$registerMobile$registerMobile<TRes>
    implements CopyWith$Mutation$registerMobile$registerMobile<TRes> {
  _CopyWithStubImpl$Mutation$registerMobile$registerMobile(this._res);

  TRes _res;

  call({
    String? refreshToken,
    String? token,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$forgotPassword {
  factory Variables$Mutation$forgotPassword({required String email}) =>
      Variables$Mutation$forgotPassword._({
        r'email': email,
      });

  Variables$Mutation$forgotPassword._(this._$data);

  factory Variables$Mutation$forgotPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    return Variables$Mutation$forgotPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    return result$data;
  }

  CopyWith$Variables$Mutation$forgotPassword<Variables$Mutation$forgotPassword>
      get copyWith => CopyWith$Variables$Mutation$forgotPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$forgotPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    return Object.hashAll([l$email]);
  }
}

abstract class CopyWith$Variables$Mutation$forgotPassword<TRes> {
  factory CopyWith$Variables$Mutation$forgotPassword(
    Variables$Mutation$forgotPassword instance,
    TRes Function(Variables$Mutation$forgotPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$forgotPassword;

  factory CopyWith$Variables$Mutation$forgotPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$forgotPassword;

  TRes call({String? email});
}

class _CopyWithImpl$Variables$Mutation$forgotPassword<TRes>
    implements CopyWith$Variables$Mutation$forgotPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$forgotPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$forgotPassword _instance;

  final TRes Function(Variables$Mutation$forgotPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined}) =>
      _then(Variables$Mutation$forgotPassword._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$forgotPassword<TRes>
    implements CopyWith$Variables$Mutation$forgotPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$forgotPassword(this._res);

  TRes _res;

  call({String? email}) => _res;
}

class Mutation$forgotPassword {
  Mutation$forgotPassword({
    this.forgotPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$forgotPassword.fromJson(Map<String, dynamic> json) {
    final l$forgotPassword = json['forgotPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$forgotPassword(
      forgotPassword: l$forgotPassword == null
          ? null
          : Mutation$forgotPassword$forgotPassword.fromJson(
              (l$forgotPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$forgotPassword$forgotPassword? forgotPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$forgotPassword = forgotPassword;
    _resultData['forgotPassword'] = l$forgotPassword?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$forgotPassword = forgotPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$forgotPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$forgotPassword || runtimeType != other.runtimeType) {
      return false;
    }
    final l$forgotPassword = forgotPassword;
    final lOther$forgotPassword = other.forgotPassword;
    if (l$forgotPassword != lOther$forgotPassword) {
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

extension UtilityExtension$Mutation$forgotPassword on Mutation$forgotPassword {
  CopyWith$Mutation$forgotPassword<Mutation$forgotPassword> get copyWith =>
      CopyWith$Mutation$forgotPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$forgotPassword<TRes> {
  factory CopyWith$Mutation$forgotPassword(
    Mutation$forgotPassword instance,
    TRes Function(Mutation$forgotPassword) then,
  ) = _CopyWithImpl$Mutation$forgotPassword;

  factory CopyWith$Mutation$forgotPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$forgotPassword;

  TRes call({
    Mutation$forgotPassword$forgotPassword? forgotPassword,
    String? $__typename,
  });
  CopyWith$Mutation$forgotPassword$forgotPassword<TRes> get forgotPassword;
}

class _CopyWithImpl$Mutation$forgotPassword<TRes>
    implements CopyWith$Mutation$forgotPassword<TRes> {
  _CopyWithImpl$Mutation$forgotPassword(
    this._instance,
    this._then,
  );

  final Mutation$forgotPassword _instance;

  final TRes Function(Mutation$forgotPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? forgotPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$forgotPassword(
        forgotPassword: forgotPassword == _undefined
            ? _instance.forgotPassword
            : (forgotPassword as Mutation$forgotPassword$forgotPassword?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$forgotPassword$forgotPassword<TRes> get forgotPassword {
    final local$forgotPassword = _instance.forgotPassword;
    return local$forgotPassword == null
        ? CopyWith$Mutation$forgotPassword$forgotPassword.stub(_then(_instance))
        : CopyWith$Mutation$forgotPassword$forgotPassword(
            local$forgotPassword, (e) => call(forgotPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$forgotPassword<TRes>
    implements CopyWith$Mutation$forgotPassword<TRes> {
  _CopyWithStubImpl$Mutation$forgotPassword(this._res);

  TRes _res;

  call({
    Mutation$forgotPassword$forgotPassword? forgotPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$forgotPassword$forgotPassword<TRes> get forgotPassword =>
      CopyWith$Mutation$forgotPassword$forgotPassword.stub(_res);
}

const documentNodeMutationforgotPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'forgotPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'forgotPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'email'),
                value: VariableNode(name: NameNode(value: 'email')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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

class Mutation$forgotPassword$forgotPassword {
  Mutation$forgotPassword$forgotPassword({
    required this.message,
    this.$__typename = 'Forgot',
  });

  factory Mutation$forgotPassword$forgotPassword.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$forgotPassword$forgotPassword(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$forgotPassword$forgotPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$forgotPassword$forgotPassword
    on Mutation$forgotPassword$forgotPassword {
  CopyWith$Mutation$forgotPassword$forgotPassword<
          Mutation$forgotPassword$forgotPassword>
      get copyWith => CopyWith$Mutation$forgotPassword$forgotPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$forgotPassword$forgotPassword<TRes> {
  factory CopyWith$Mutation$forgotPassword$forgotPassword(
    Mutation$forgotPassword$forgotPassword instance,
    TRes Function(Mutation$forgotPassword$forgotPassword) then,
  ) = _CopyWithImpl$Mutation$forgotPassword$forgotPassword;

  factory CopyWith$Mutation$forgotPassword$forgotPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$forgotPassword$forgotPassword;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$forgotPassword$forgotPassword<TRes>
    implements CopyWith$Mutation$forgotPassword$forgotPassword<TRes> {
  _CopyWithImpl$Mutation$forgotPassword$forgotPassword(
    this._instance,
    this._then,
  );

  final Mutation$forgotPassword$forgotPassword _instance;

  final TRes Function(Mutation$forgotPassword$forgotPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$forgotPassword$forgotPassword(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$forgotPassword$forgotPassword<TRes>
    implements CopyWith$Mutation$forgotPassword$forgotPassword<TRes> {
  _CopyWithStubImpl$Mutation$forgotPassword$forgotPassword(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateUser {
  factory Variables$Mutation$updateUser({
    String? email,
    String? password,
    String? username,
  }) =>
      Variables$Mutation$updateUser._({
        if (email != null) r'email': email,
        if (password != null) r'password': password,
        if (username != null) r'username': username,
      });

  Variables$Mutation$updateUser._(this._$data);

  factory Variables$Mutation$updateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    return Variables$Mutation$updateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String? get password => (_$data['password'] as String?);

  String? get username => (_$data['username'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$updateUser<Variables$Mutation$updateUser>
      get copyWith => CopyWith$Variables$Mutation$updateUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('username') ? l$username : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateUser<TRes> {
  factory CopyWith$Variables$Mutation$updateUser(
    Variables$Mutation$updateUser instance,
    TRes Function(Variables$Mutation$updateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$updateUser;

  factory CopyWith$Variables$Mutation$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateUser;

  TRes call({
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Variables$Mutation$updateUser<TRes>
    implements CopyWith$Variables$Mutation$updateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$updateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateUser _instance;

  final TRes Function(Variables$Mutation$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Variables$Mutation$updateUser._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (password != _undefined) 'password': (password as String?),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateUser<TRes>
    implements CopyWith$Variables$Mutation$updateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateUser(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Mutation$updateUser {
  Mutation$updateUser({
    this.updateUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$updateUser(
      updateUser: l$updateUser == null
          ? null
          : Mutation$updateUser$updateUser.fromJson(
              (l$updateUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateUser$updateUser? updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    _resultData['updateUser'] = l$updateUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
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

extension UtilityExtension$Mutation$updateUser on Mutation$updateUser {
  CopyWith$Mutation$updateUser<Mutation$updateUser> get copyWith =>
      CopyWith$Mutation$updateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateUser<TRes> {
  factory CopyWith$Mutation$updateUser(
    Mutation$updateUser instance,
    TRes Function(Mutation$updateUser) then,
  ) = _CopyWithImpl$Mutation$updateUser;

  factory CopyWith$Mutation$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateUser;

  TRes call({
    Mutation$updateUser$updateUser? updateUser,
    String? $__typename,
  });
  CopyWith$Mutation$updateUser$updateUser<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$updateUser<TRes>
    implements CopyWith$Mutation$updateUser<TRes> {
  _CopyWithImpl$Mutation$updateUser(
    this._instance,
    this._then,
  );

  final Mutation$updateUser _instance;

  final TRes Function(Mutation$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateUser(
        updateUser: updateUser == _undefined
            ? _instance.updateUser
            : (updateUser as Mutation$updateUser$updateUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$updateUser$updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return local$updateUser == null
        ? CopyWith$Mutation$updateUser$updateUser.stub(_then(_instance))
        : CopyWith$Mutation$updateUser$updateUser(
            local$updateUser, (e) => call(updateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$updateUser<TRes>
    implements CopyWith$Mutation$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$updateUser(this._res);

  TRes _res;

  call({
    Mutation$updateUser$updateUser? updateUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$updateUser$updateUser<TRes> get updateUser =>
      CopyWith$Mutation$updateUser$updateUser.stub(_res);
}

const documentNodeMutationupdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'email'),
                value: VariableNode(name: NameNode(value: 'email')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
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

class Mutation$updateUser$updateUser {
  Mutation$updateUser$updateUser({
    required this.email,
    required this.username,
    this.$__typename = 'User',
  });

  factory Mutation$updateUser$updateUser.fromJson(Map<String, dynamic> json) {
    final l$email = json['email'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Mutation$updateUser$updateUser(
      email: (l$email as String),
      username: (l$username as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String email;

  final String username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateUser$updateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
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

extension UtilityExtension$Mutation$updateUser$updateUser
    on Mutation$updateUser$updateUser {
  CopyWith$Mutation$updateUser$updateUser<Mutation$updateUser$updateUser>
      get copyWith => CopyWith$Mutation$updateUser$updateUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateUser$updateUser<TRes> {
  factory CopyWith$Mutation$updateUser$updateUser(
    Mutation$updateUser$updateUser instance,
    TRes Function(Mutation$updateUser$updateUser) then,
  ) = _CopyWithImpl$Mutation$updateUser$updateUser;

  factory CopyWith$Mutation$updateUser$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateUser$updateUser;

  TRes call({
    String? email,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateUser$updateUser<TRes>
    implements CopyWith$Mutation$updateUser$updateUser<TRes> {
  _CopyWithImpl$Mutation$updateUser$updateUser(
    this._instance,
    this._then,
  );

  final Mutation$updateUser$updateUser _instance;

  final TRes Function(Mutation$updateUser$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateUser$updateUser(
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateUser$updateUser<TRes>
    implements CopyWith$Mutation$updateUser$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$updateUser$updateUser(this._res);

  TRes _res;

  call({
    String? email,
    String? username,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$refreshToken {
  factory Variables$Mutation$refreshToken({required String refreshToken}) =>
      Variables$Mutation$refreshToken._({
        r'refreshToken': refreshToken,
      });

  Variables$Mutation$refreshToken._(this._$data);

  factory Variables$Mutation$refreshToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$refreshToken = data['refreshToken'];
    result$data['refreshToken'] = (l$refreshToken as String);
    return Variables$Mutation$refreshToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get refreshToken => (_$data['refreshToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    result$data['refreshToken'] = l$refreshToken;
    return result$data;
  }

  CopyWith$Variables$Mutation$refreshToken<Variables$Mutation$refreshToken>
      get copyWith => CopyWith$Variables$Mutation$refreshToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$refreshToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    return Object.hashAll([l$refreshToken]);
  }
}

abstract class CopyWith$Variables$Mutation$refreshToken<TRes> {
  factory CopyWith$Variables$Mutation$refreshToken(
    Variables$Mutation$refreshToken instance,
    TRes Function(Variables$Mutation$refreshToken) then,
  ) = _CopyWithImpl$Variables$Mutation$refreshToken;

  factory CopyWith$Variables$Mutation$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$refreshToken;

  TRes call({String? refreshToken});
}

class _CopyWithImpl$Variables$Mutation$refreshToken<TRes>
    implements CopyWith$Variables$Mutation$refreshToken<TRes> {
  _CopyWithImpl$Variables$Mutation$refreshToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$refreshToken _instance;

  final TRes Function(Variables$Mutation$refreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? refreshToken = _undefined}) =>
      _then(Variables$Mutation$refreshToken._({
        ..._instance._$data,
        if (refreshToken != _undefined && refreshToken != null)
          'refreshToken': (refreshToken as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$refreshToken<TRes>
    implements CopyWith$Variables$Mutation$refreshToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$refreshToken(this._res);

  TRes _res;

  call({String? refreshToken}) => _res;
}

class Mutation$refreshToken {
  Mutation$refreshToken({
    this.refreshMobile,
    this.$__typename = 'Mutation',
  });

  factory Mutation$refreshToken.fromJson(Map<String, dynamic> json) {
    final l$refreshMobile = json['refreshMobile'];
    final l$$__typename = json['__typename'];
    return Mutation$refreshToken(
      refreshMobile: l$refreshMobile == null
          ? null
          : Mutation$refreshToken$refreshMobile.fromJson(
              (l$refreshMobile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$refreshToken$refreshMobile? refreshMobile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshMobile = refreshMobile;
    _resultData['refreshMobile'] = l$refreshMobile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshMobile = refreshMobile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshMobile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$refreshToken || runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshMobile = refreshMobile;
    final lOther$refreshMobile = other.refreshMobile;
    if (l$refreshMobile != lOther$refreshMobile) {
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

extension UtilityExtension$Mutation$refreshToken on Mutation$refreshToken {
  CopyWith$Mutation$refreshToken<Mutation$refreshToken> get copyWith =>
      CopyWith$Mutation$refreshToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$refreshToken<TRes> {
  factory CopyWith$Mutation$refreshToken(
    Mutation$refreshToken instance,
    TRes Function(Mutation$refreshToken) then,
  ) = _CopyWithImpl$Mutation$refreshToken;

  factory CopyWith$Mutation$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$refreshToken;

  TRes call({
    Mutation$refreshToken$refreshMobile? refreshMobile,
    String? $__typename,
  });
  CopyWith$Mutation$refreshToken$refreshMobile<TRes> get refreshMobile;
}

class _CopyWithImpl$Mutation$refreshToken<TRes>
    implements CopyWith$Mutation$refreshToken<TRes> {
  _CopyWithImpl$Mutation$refreshToken(
    this._instance,
    this._then,
  );

  final Mutation$refreshToken _instance;

  final TRes Function(Mutation$refreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshMobile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$refreshToken(
        refreshMobile: refreshMobile == _undefined
            ? _instance.refreshMobile
            : (refreshMobile as Mutation$refreshToken$refreshMobile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$refreshToken$refreshMobile<TRes> get refreshMobile {
    final local$refreshMobile = _instance.refreshMobile;
    return local$refreshMobile == null
        ? CopyWith$Mutation$refreshToken$refreshMobile.stub(_then(_instance))
        : CopyWith$Mutation$refreshToken$refreshMobile(
            local$refreshMobile, (e) => call(refreshMobile: e));
  }
}

class _CopyWithStubImpl$Mutation$refreshToken<TRes>
    implements CopyWith$Mutation$refreshToken<TRes> {
  _CopyWithStubImpl$Mutation$refreshToken(this._res);

  TRes _res;

  call({
    Mutation$refreshToken$refreshMobile? refreshMobile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$refreshToken$refreshMobile<TRes> get refreshMobile =>
      CopyWith$Mutation$refreshToken$refreshMobile.stub(_res);
}

const documentNodeMutationrefreshToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'refreshToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'refreshToken')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'refreshMobile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'refreshToken'),
                value: VariableNode(name: NameNode(value: 'refreshToken')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
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

class Mutation$refreshToken$refreshMobile {
  Mutation$refreshToken$refreshMobile({
    required this.token,
    this.$__typename = 'Refresh',
  });

  factory Mutation$refreshToken$refreshMobile.fromJson(
      Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$refreshToken$refreshMobile(
      token: (l$token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$refreshToken$refreshMobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
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

extension UtilityExtension$Mutation$refreshToken$refreshMobile
    on Mutation$refreshToken$refreshMobile {
  CopyWith$Mutation$refreshToken$refreshMobile<
          Mutation$refreshToken$refreshMobile>
      get copyWith => CopyWith$Mutation$refreshToken$refreshMobile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$refreshToken$refreshMobile<TRes> {
  factory CopyWith$Mutation$refreshToken$refreshMobile(
    Mutation$refreshToken$refreshMobile instance,
    TRes Function(Mutation$refreshToken$refreshMobile) then,
  ) = _CopyWithImpl$Mutation$refreshToken$refreshMobile;

  factory CopyWith$Mutation$refreshToken$refreshMobile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$refreshToken$refreshMobile;

  TRes call({
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$refreshToken$refreshMobile<TRes>
    implements CopyWith$Mutation$refreshToken$refreshMobile<TRes> {
  _CopyWithImpl$Mutation$refreshToken$refreshMobile(
    this._instance,
    this._then,
  );

  final Mutation$refreshToken$refreshMobile _instance;

  final TRes Function(Mutation$refreshToken$refreshMobile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$refreshToken$refreshMobile(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$refreshToken$refreshMobile<TRes>
    implements CopyWith$Mutation$refreshToken$refreshMobile<TRes> {
  _CopyWithStubImpl$Mutation$refreshToken$refreshMobile(this._res);

  TRes _res;

  call({
    String? token,
    String? $__typename,
  }) =>
      _res;
}
