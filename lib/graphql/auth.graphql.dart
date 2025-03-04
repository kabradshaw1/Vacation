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
