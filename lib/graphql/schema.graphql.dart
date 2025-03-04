class Input$AIImageInput {
  factory Input$AIImageInput({
    required String prompt,
    required String callback,
    required List<int?> lora,
    required String $class,
  }) =>
      Input$AIImageInput._({
        r'prompt': prompt,
        r'callback': callback,
        r'lora': lora,
        r'class': $class,
      });

  Input$AIImageInput._(this._$data);

  factory Input$AIImageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$prompt = data['prompt'];
    result$data['prompt'] = (l$prompt as String);
    final l$callback = data['callback'];
    result$data['callback'] = (l$callback as String);
    final l$lora = data['lora'];
    result$data['lora'] =
        (l$lora as List<dynamic>).map((e) => (e as int?)).toList();
    final l$$class = data['class'];
    result$data['class'] = (l$$class as String);
    return Input$AIImageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get prompt => (_$data['prompt'] as String);

  String get callback => (_$data['callback'] as String);

  List<int?> get lora => (_$data['lora'] as List<int?>);

  String get $class => (_$data['class'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$prompt = prompt;
    result$data['prompt'] = l$prompt;
    final l$callback = callback;
    result$data['callback'] = l$callback;
    final l$lora = lora;
    result$data['lora'] = l$lora.map((e) => e).toList();
    final l$$class = $class;
    result$data['class'] = l$$class;
    return result$data;
  }

  CopyWith$Input$AIImageInput<Input$AIImageInput> get copyWith =>
      CopyWith$Input$AIImageInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AIImageInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$prompt = prompt;
    final lOther$prompt = other.prompt;
    if (l$prompt != lOther$prompt) {
      return false;
    }
    final l$callback = callback;
    final lOther$callback = other.callback;
    if (l$callback != lOther$callback) {
      return false;
    }
    final l$lora = lora;
    final lOther$lora = other.lora;
    if (l$lora.length != lOther$lora.length) {
      return false;
    }
    for (int i = 0; i < l$lora.length; i++) {
      final l$lora$entry = l$lora[i];
      final lOther$lora$entry = lOther$lora[i];
      if (l$lora$entry != lOther$lora$entry) {
        return false;
      }
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$prompt = prompt;
    final l$callback = callback;
    final l$lora = lora;
    final l$$class = $class;
    return Object.hashAll([
      l$prompt,
      l$callback,
      Object.hashAll(l$lora.map((v) => v)),
      l$$class,
    ]);
  }
}

abstract class CopyWith$Input$AIImageInput<TRes> {
  factory CopyWith$Input$AIImageInput(
    Input$AIImageInput instance,
    TRes Function(Input$AIImageInput) then,
  ) = _CopyWithImpl$Input$AIImageInput;

  factory CopyWith$Input$AIImageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AIImageInput;

  TRes call({
    String? prompt,
    String? callback,
    List<int?>? lora,
    String? $class,
  });
}

class _CopyWithImpl$Input$AIImageInput<TRes>
    implements CopyWith$Input$AIImageInput<TRes> {
  _CopyWithImpl$Input$AIImageInput(
    this._instance,
    this._then,
  );

  final Input$AIImageInput _instance;

  final TRes Function(Input$AIImageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? prompt = _undefined,
    Object? callback = _undefined,
    Object? lora = _undefined,
    Object? $class = _undefined,
  }) =>
      _then(Input$AIImageInput._({
        ..._instance._$data,
        if (prompt != _undefined && prompt != null)
          'prompt': (prompt as String),
        if (callback != _undefined && callback != null)
          'callback': (callback as String),
        if (lora != _undefined && lora != null) 'lora': (lora as List<int?>),
        if ($class != _undefined && $class != null) 'class': ($class as String),
      }));
}

class _CopyWithStubImpl$Input$AIImageInput<TRes>
    implements CopyWith$Input$AIImageInput<TRes> {
  _CopyWithStubImpl$Input$AIImageInput(this._res);

  TRes _res;

  call({
    String? prompt,
    String? callback,
    List<int?>? lora,
    String? $class,
  }) =>
      _res;
}

class Input$CreateCharacterInput {
  factory Input$CreateCharacterInput({
    required String title,
    String? text,
    List<int?>? roleIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateCharacterInput._({
        r'title': title,
        if (text != null) r'text': text,
        if (roleIDs != null) r'roleIDs': roleIDs,
        if (files != null) r'files': files,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateCharacterInput._(this._$data);

  factory Input$CreateCharacterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('roleIDs')) {
      final l$roleIDs = data['roleIDs'];
      result$data['roleIDs'] =
          (l$roleIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateCharacterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String? get text => (_$data['text'] as String?);

  List<int?>? get roleIDs => (_$data['roleIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('roleIDs')) {
      final l$roleIDs = roleIDs;
      result$data['roleIDs'] = l$roleIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateCharacterInput<Input$CreateCharacterInput>
      get copyWith => CopyWith$Input$CreateCharacterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateCharacterInput ||
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
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$roleIDs = roleIDs;
    final lOther$roleIDs = other.roleIDs;
    if (_$data.containsKey('roleIDs') != other._$data.containsKey('roleIDs')) {
      return false;
    }
    if (l$roleIDs != null && lOther$roleIDs != null) {
      if (l$roleIDs.length != lOther$roleIDs.length) {
        return false;
      }
      for (int i = 0; i < l$roleIDs.length; i++) {
        final l$roleIDs$entry = l$roleIDs[i];
        final lOther$roleIDs$entry = lOther$roleIDs[i];
        if (l$roleIDs$entry != lOther$roleIDs$entry) {
          return false;
        }
      }
    } else if (l$roleIDs != lOther$roleIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$roleIDs = roleIDs;
    final l$files = files;
    final l$genImage = genImage;
    return Object.hashAll([
      l$title,
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('roleIDs')
          ? l$roleIDs == null
              ? null
              : Object.hashAll(l$roleIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateCharacterInput<TRes> {
  factory CopyWith$Input$CreateCharacterInput(
    Input$CreateCharacterInput instance,
    TRes Function(Input$CreateCharacterInput) then,
  ) = _CopyWithImpl$Input$CreateCharacterInput;

  factory CopyWith$Input$CreateCharacterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCharacterInput;

  TRes call({
    String? title,
    String? text,
    List<int?>? roleIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateCharacterInput<TRes>
    implements CopyWith$Input$CreateCharacterInput<TRes> {
  _CopyWithImpl$Input$CreateCharacterInput(
    this._instance,
    this._then,
  );

  final Input$CreateCharacterInput _instance;

  final TRes Function(Input$CreateCharacterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? roleIDs = _undefined,
    Object? files = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateCharacterInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (text != _undefined) 'text': (text as String?),
        if (roleIDs != _undefined) 'roleIDs': (roleIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateCharacterInput<TRes>
    implements CopyWith$Input$CreateCharacterInput<TRes> {
  _CopyWithStubImpl$Input$CreateCharacterInput(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    List<int?>? roleIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$CreateCommentInput {
  factory Input$CreateCommentInput({
    required String text,
    required String parentID,
    required String postID,
  }) =>
      Input$CreateCommentInput._({
        r'text': text,
        r'parentID': parentID,
        r'postID': postID,
      });

  Input$CreateCommentInput._(this._$data);

  factory Input$CreateCommentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    final l$parentID = data['parentID'];
    result$data['parentID'] = (l$parentID as String);
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$CreateCommentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get text => (_$data['text'] as String);

  String get parentID => (_$data['parentID'] as String);

  String get postID => (_$data['postID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$text = text;
    result$data['text'] = l$text;
    final l$parentID = parentID;
    result$data['parentID'] = l$parentID;
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$CreateCommentInput<Input$CreateCommentInput> get copyWith =>
      CopyWith$Input$CreateCommentInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateCommentInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$parentID = parentID;
    final lOther$parentID = other.parentID;
    if (l$parentID != lOther$parentID) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$parentID = parentID;
    final l$postID = postID;
    return Object.hashAll([
      l$text,
      l$parentID,
      l$postID,
    ]);
  }
}

abstract class CopyWith$Input$CreateCommentInput<TRes> {
  factory CopyWith$Input$CreateCommentInput(
    Input$CreateCommentInput instance,
    TRes Function(Input$CreateCommentInput) then,
  ) = _CopyWithImpl$Input$CreateCommentInput;

  factory CopyWith$Input$CreateCommentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCommentInput;

  TRes call({
    String? text,
    String? parentID,
    String? postID,
  });
}

class _CopyWithImpl$Input$CreateCommentInput<TRes>
    implements CopyWith$Input$CreateCommentInput<TRes> {
  _CopyWithImpl$Input$CreateCommentInput(
    this._instance,
    this._then,
  );

  final Input$CreateCommentInput _instance;

  final TRes Function(Input$CreateCommentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? parentID = _undefined,
    Object? postID = _undefined,
  }) =>
      _then(Input$CreateCommentInput._({
        ..._instance._$data,
        if (text != _undefined && text != null) 'text': (text as String),
        if (parentID != _undefined && parentID != null)
          'parentID': (parentID as String),
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$CreateCommentInput<TRes>
    implements CopyWith$Input$CreateCommentInput<TRes> {
  _CopyWithStubImpl$Input$CreateCommentInput(this._res);

  TRes _res;

  call({
    String? text,
    String? parentID,
    String? postID,
  }) =>
      _res;
}

class Input$CreateConflictInput {
  factory Input$CreateConflictInput({
    required String title,
    String? text,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateConflictInput._({
        r'title': title,
        if (text != null) r'text': text,
        if (organizationIDs != null) r'organizationIDs': organizationIDs,
        if (files != null) r'files': files,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateConflictInput._(this._$data);

  factory Input$CreateConflictInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('organizationIDs')) {
      final l$organizationIDs = data['organizationIDs'];
      result$data['organizationIDs'] = (l$organizationIDs as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateConflictInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String? get text => (_$data['text'] as String?);

  List<int?>? get organizationIDs => (_$data['organizationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('organizationIDs')) {
      final l$organizationIDs = organizationIDs;
      result$data['organizationIDs'] =
          l$organizationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateConflictInput<Input$CreateConflictInput> get copyWith =>
      CopyWith$Input$CreateConflictInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateConflictInput ||
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
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$organizationIDs = organizationIDs;
    final lOther$organizationIDs = other.organizationIDs;
    if (_$data.containsKey('organizationIDs') !=
        other._$data.containsKey('organizationIDs')) {
      return false;
    }
    if (l$organizationIDs != null && lOther$organizationIDs != null) {
      if (l$organizationIDs.length != lOther$organizationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$organizationIDs.length; i++) {
        final l$organizationIDs$entry = l$organizationIDs[i];
        final lOther$organizationIDs$entry = lOther$organizationIDs[i];
        if (l$organizationIDs$entry != lOther$organizationIDs$entry) {
          return false;
        }
      }
    } else if (l$organizationIDs != lOther$organizationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$organizationIDs = organizationIDs;
    final l$files = files;
    final l$genImage = genImage;
    return Object.hashAll([
      l$title,
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('organizationIDs')
          ? l$organizationIDs == null
              ? null
              : Object.hashAll(l$organizationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateConflictInput<TRes> {
  factory CopyWith$Input$CreateConflictInput(
    Input$CreateConflictInput instance,
    TRes Function(Input$CreateConflictInput) then,
  ) = _CopyWithImpl$Input$CreateConflictInput;

  factory CopyWith$Input$CreateConflictInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateConflictInput;

  TRes call({
    String? title,
    String? text,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateConflictInput<TRes>
    implements CopyWith$Input$CreateConflictInput<TRes> {
  _CopyWithImpl$Input$CreateConflictInput(
    this._instance,
    this._then,
  );

  final Input$CreateConflictInput _instance;

  final TRes Function(Input$CreateConflictInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? organizationIDs = _undefined,
    Object? files = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateConflictInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (text != _undefined) 'text': (text as String?),
        if (organizationIDs != _undefined)
          'organizationIDs': (organizationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateConflictInput<TRes>
    implements CopyWith$Input$CreateConflictInput<TRes> {
  _CopyWithStubImpl$Input$CreateConflictInput(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$CreateImageInput {
  factory Input$CreateImageInput({required String prompt}) =>
      Input$CreateImageInput._({
        r'prompt': prompt,
      });

  Input$CreateImageInput._(this._$data);

  factory Input$CreateImageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$prompt = data['prompt'];
    result$data['prompt'] = (l$prompt as String);
    return Input$CreateImageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get prompt => (_$data['prompt'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$prompt = prompt;
    result$data['prompt'] = l$prompt;
    return result$data;
  }

  CopyWith$Input$CreateImageInput<Input$CreateImageInput> get copyWith =>
      CopyWith$Input$CreateImageInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateImageInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$prompt = prompt;
    final lOther$prompt = other.prompt;
    if (l$prompt != lOther$prompt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$prompt = prompt;
    return Object.hashAll([l$prompt]);
  }
}

abstract class CopyWith$Input$CreateImageInput<TRes> {
  factory CopyWith$Input$CreateImageInput(
    Input$CreateImageInput instance,
    TRes Function(Input$CreateImageInput) then,
  ) = _CopyWithImpl$Input$CreateImageInput;

  factory CopyWith$Input$CreateImageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateImageInput;

  TRes call({String? prompt});
}

class _CopyWithImpl$Input$CreateImageInput<TRes>
    implements CopyWith$Input$CreateImageInput<TRes> {
  _CopyWithImpl$Input$CreateImageInput(
    this._instance,
    this._then,
  );

  final Input$CreateImageInput _instance;

  final TRes Function(Input$CreateImageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? prompt = _undefined}) => _then(Input$CreateImageInput._({
        ..._instance._$data,
        if (prompt != _undefined && prompt != null)
          'prompt': (prompt as String),
      }));
}

class _CopyWithStubImpl$Input$CreateImageInput<TRes>
    implements CopyWith$Input$CreateImageInput<TRes> {
  _CopyWithStubImpl$Input$CreateImageInput(this._res);

  TRes _res;

  call({String? prompt}) => _res;
}

class Input$CreateLocationInput {
  factory Input$CreateLocationInput({
    required String title,
    String? text,
    int? shipID,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateLocationInput._({
        r'title': title,
        if (text != null) r'text': text,
        if (shipID != null) r'shipID': shipID,
        if (organizationIDs != null) r'organizationIDs': organizationIDs,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateLocationInput._(this._$data);

  factory Input$CreateLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('shipID')) {
      final l$shipID = data['shipID'];
      result$data['shipID'] = (l$shipID as int?);
    }
    if (data.containsKey('organizationIDs')) {
      final l$organizationIDs = data['organizationIDs'];
      result$data['organizationIDs'] = (l$organizationIDs as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String? get text => (_$data['text'] as String?);

  int? get shipID => (_$data['shipID'] as int?);

  List<int?>? get organizationIDs => (_$data['organizationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('shipID')) {
      final l$shipID = shipID;
      result$data['shipID'] = l$shipID;
    }
    if (_$data.containsKey('organizationIDs')) {
      final l$organizationIDs = organizationIDs;
      result$data['organizationIDs'] =
          l$organizationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateLocationInput<Input$CreateLocationInput> get copyWith =>
      CopyWith$Input$CreateLocationInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateLocationInput ||
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
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$shipID = shipID;
    final lOther$shipID = other.shipID;
    if (_$data.containsKey('shipID') != other._$data.containsKey('shipID')) {
      return false;
    }
    if (l$shipID != lOther$shipID) {
      return false;
    }
    final l$organizationIDs = organizationIDs;
    final lOther$organizationIDs = other.organizationIDs;
    if (_$data.containsKey('organizationIDs') !=
        other._$data.containsKey('organizationIDs')) {
      return false;
    }
    if (l$organizationIDs != null && lOther$organizationIDs != null) {
      if (l$organizationIDs.length != lOther$organizationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$organizationIDs.length; i++) {
        final l$organizationIDs$entry = l$organizationIDs[i];
        final lOther$organizationIDs$entry = lOther$organizationIDs[i];
        if (l$organizationIDs$entry != lOther$organizationIDs$entry) {
          return false;
        }
      }
    } else if (l$organizationIDs != lOther$organizationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$shipID = shipID;
    final l$organizationIDs = organizationIDs;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$title,
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('shipID') ? l$shipID : const {},
      _$data.containsKey('organizationIDs')
          ? l$organizationIDs == null
              ? null
              : Object.hashAll(l$organizationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateLocationInput<TRes> {
  factory CopyWith$Input$CreateLocationInput(
    Input$CreateLocationInput instance,
    TRes Function(Input$CreateLocationInput) then,
  ) = _CopyWithImpl$Input$CreateLocationInput;

  factory CopyWith$Input$CreateLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateLocationInput;

  TRes call({
    String? title,
    String? text,
    int? shipID,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateLocationInput<TRes>
    implements CopyWith$Input$CreateLocationInput<TRes> {
  _CopyWithImpl$Input$CreateLocationInput(
    this._instance,
    this._then,
  );

  final Input$CreateLocationInput _instance;

  final TRes Function(Input$CreateLocationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? shipID = _undefined,
    Object? organizationIDs = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateLocationInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (text != _undefined) 'text': (text as String?),
        if (shipID != _undefined) 'shipID': (shipID as int?),
        if (organizationIDs != _undefined)
          'organizationIDs': (organizationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateLocationInput<TRes>
    implements CopyWith$Input$CreateLocationInput<TRes> {
  _CopyWithStubImpl$Input$CreateLocationInput(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    int? shipID,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$CreateOrganizationInput {
  factory Input$CreateOrganizationInput({
    required String title,
    String? text,
    List<Input$CreateRoleInput?>? rolesCreate,
    List<int?>? conflictIDs,
    int? headquartersID,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateOrganizationInput._({
        r'title': title,
        if (text != null) r'text': text,
        if (rolesCreate != null) r'rolesCreate': rolesCreate,
        if (conflictIDs != null) r'conflictIDs': conflictIDs,
        if (headquartersID != null) r'headquartersID': headquartersID,
        if (locationIDs != null) r'locationIDs': locationIDs,
        if (files != null) r'files': files,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateOrganizationInput._(this._$data);

  factory Input$CreateOrganizationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('rolesCreate')) {
      final l$rolesCreate = data['rolesCreate'];
      result$data['rolesCreate'] = (l$rolesCreate as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$CreateRoleInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('conflictIDs')) {
      final l$conflictIDs = data['conflictIDs'];
      result$data['conflictIDs'] =
          (l$conflictIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('headquartersID')) {
      final l$headquartersID = data['headquartersID'];
      result$data['headquartersID'] = (l$headquartersID as int?);
    }
    if (data.containsKey('locationIDs')) {
      final l$locationIDs = data['locationIDs'];
      result$data['locationIDs'] =
          (l$locationIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateOrganizationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String? get text => (_$data['text'] as String?);

  List<Input$CreateRoleInput?>? get rolesCreate =>
      (_$data['rolesCreate'] as List<Input$CreateRoleInput?>?);

  List<int?>? get conflictIDs => (_$data['conflictIDs'] as List<int?>?);

  int? get headquartersID => (_$data['headquartersID'] as int?);

  List<int?>? get locationIDs => (_$data['locationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('rolesCreate')) {
      final l$rolesCreate = rolesCreate;
      result$data['rolesCreate'] =
          l$rolesCreate?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('conflictIDs')) {
      final l$conflictIDs = conflictIDs;
      result$data['conflictIDs'] = l$conflictIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('headquartersID')) {
      final l$headquartersID = headquartersID;
      result$data['headquartersID'] = l$headquartersID;
    }
    if (_$data.containsKey('locationIDs')) {
      final l$locationIDs = locationIDs;
      result$data['locationIDs'] = l$locationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateOrganizationInput<Input$CreateOrganizationInput>
      get copyWith => CopyWith$Input$CreateOrganizationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOrganizationInput ||
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
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$rolesCreate = rolesCreate;
    final lOther$rolesCreate = other.rolesCreate;
    if (_$data.containsKey('rolesCreate') !=
        other._$data.containsKey('rolesCreate')) {
      return false;
    }
    if (l$rolesCreate != null && lOther$rolesCreate != null) {
      if (l$rolesCreate.length != lOther$rolesCreate.length) {
        return false;
      }
      for (int i = 0; i < l$rolesCreate.length; i++) {
        final l$rolesCreate$entry = l$rolesCreate[i];
        final lOther$rolesCreate$entry = lOther$rolesCreate[i];
        if (l$rolesCreate$entry != lOther$rolesCreate$entry) {
          return false;
        }
      }
    } else if (l$rolesCreate != lOther$rolesCreate) {
      return false;
    }
    final l$conflictIDs = conflictIDs;
    final lOther$conflictIDs = other.conflictIDs;
    if (_$data.containsKey('conflictIDs') !=
        other._$data.containsKey('conflictIDs')) {
      return false;
    }
    if (l$conflictIDs != null && lOther$conflictIDs != null) {
      if (l$conflictIDs.length != lOther$conflictIDs.length) {
        return false;
      }
      for (int i = 0; i < l$conflictIDs.length; i++) {
        final l$conflictIDs$entry = l$conflictIDs[i];
        final lOther$conflictIDs$entry = lOther$conflictIDs[i];
        if (l$conflictIDs$entry != lOther$conflictIDs$entry) {
          return false;
        }
      }
    } else if (l$conflictIDs != lOther$conflictIDs) {
      return false;
    }
    final l$headquartersID = headquartersID;
    final lOther$headquartersID = other.headquartersID;
    if (_$data.containsKey('headquartersID') !=
        other._$data.containsKey('headquartersID')) {
      return false;
    }
    if (l$headquartersID != lOther$headquartersID) {
      return false;
    }
    final l$locationIDs = locationIDs;
    final lOther$locationIDs = other.locationIDs;
    if (_$data.containsKey('locationIDs') !=
        other._$data.containsKey('locationIDs')) {
      return false;
    }
    if (l$locationIDs != null && lOther$locationIDs != null) {
      if (l$locationIDs.length != lOther$locationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$locationIDs.length; i++) {
        final l$locationIDs$entry = l$locationIDs[i];
        final lOther$locationIDs$entry = lOther$locationIDs[i];
        if (l$locationIDs$entry != lOther$locationIDs$entry) {
          return false;
        }
      }
    } else if (l$locationIDs != lOther$locationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$rolesCreate = rolesCreate;
    final l$conflictIDs = conflictIDs;
    final l$headquartersID = headquartersID;
    final l$locationIDs = locationIDs;
    final l$files = files;
    final l$genImage = genImage;
    return Object.hashAll([
      l$title,
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('rolesCreate')
          ? l$rolesCreate == null
              ? null
              : Object.hashAll(l$rolesCreate.map((v) => v))
          : const {},
      _$data.containsKey('conflictIDs')
          ? l$conflictIDs == null
              ? null
              : Object.hashAll(l$conflictIDs.map((v) => v))
          : const {},
      _$data.containsKey('headquartersID') ? l$headquartersID : const {},
      _$data.containsKey('locationIDs')
          ? l$locationIDs == null
              ? null
              : Object.hashAll(l$locationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateOrganizationInput<TRes> {
  factory CopyWith$Input$CreateOrganizationInput(
    Input$CreateOrganizationInput instance,
    TRes Function(Input$CreateOrganizationInput) then,
  ) = _CopyWithImpl$Input$CreateOrganizationInput;

  factory CopyWith$Input$CreateOrganizationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOrganizationInput;

  TRes call({
    String? title,
    String? text,
    List<Input$CreateRoleInput?>? rolesCreate,
    List<int?>? conflictIDs,
    int? headquartersID,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  });
  TRes rolesCreate(
      Iterable<Input$CreateRoleInput?>? Function(
              Iterable<CopyWith$Input$CreateRoleInput<Input$CreateRoleInput>?>?)
          _fn);
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateOrganizationInput<TRes>
    implements CopyWith$Input$CreateOrganizationInput<TRes> {
  _CopyWithImpl$Input$CreateOrganizationInput(
    this._instance,
    this._then,
  );

  final Input$CreateOrganizationInput _instance;

  final TRes Function(Input$CreateOrganizationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? rolesCreate = _undefined,
    Object? conflictIDs = _undefined,
    Object? headquartersID = _undefined,
    Object? locationIDs = _undefined,
    Object? files = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateOrganizationInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (text != _undefined) 'text': (text as String?),
        if (rolesCreate != _undefined)
          'rolesCreate': (rolesCreate as List<Input$CreateRoleInput?>?),
        if (conflictIDs != _undefined)
          'conflictIDs': (conflictIDs as List<int?>?),
        if (headquartersID != _undefined)
          'headquartersID': (headquartersID as int?),
        if (locationIDs != _undefined)
          'locationIDs': (locationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes rolesCreate(
          Iterable<Input$CreateRoleInput?>? Function(
                  Iterable<
                      CopyWith$Input$CreateRoleInput<Input$CreateRoleInput>?>?)
              _fn) =>
      call(
          rolesCreate: _fn(_instance.rolesCreate?.map((e) => e == null
              ? null
              : CopyWith$Input$CreateRoleInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateOrganizationInput<TRes>
    implements CopyWith$Input$CreateOrganizationInput<TRes> {
  _CopyWithStubImpl$Input$CreateOrganizationInput(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    List<Input$CreateRoleInput?>? rolesCreate,
    List<int?>? conflictIDs,
    int? headquartersID,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  rolesCreate(_fn) => _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$CreatePostInput {
  factory Input$CreatePostInput({
    required String text,
    required String $class,
    required int classID,
  }) =>
      Input$CreatePostInput._({
        r'text': text,
        r'class': $class,
        r'classID': classID,
      });

  Input$CreatePostInput._(this._$data);

  factory Input$CreatePostInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    final l$$class = data['class'];
    result$data['class'] = (l$$class as String);
    final l$classID = data['classID'];
    result$data['classID'] = (l$classID as int);
    return Input$CreatePostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get text => (_$data['text'] as String);

  String get $class => (_$data['class'] as String);

  int get classID => (_$data['classID'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$text = text;
    result$data['text'] = l$text;
    final l$$class = $class;
    result$data['class'] = l$$class;
    final l$classID = classID;
    result$data['classID'] = l$classID;
    return result$data;
  }

  CopyWith$Input$CreatePostInput<Input$CreatePostInput> get copyWith =>
      CopyWith$Input$CreatePostInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreatePostInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$classID = classID;
    final lOther$classID = other.classID;
    if (l$classID != lOther$classID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$$class = $class;
    final l$classID = classID;
    return Object.hashAll([
      l$text,
      l$$class,
      l$classID,
    ]);
  }
}

abstract class CopyWith$Input$CreatePostInput<TRes> {
  factory CopyWith$Input$CreatePostInput(
    Input$CreatePostInput instance,
    TRes Function(Input$CreatePostInput) then,
  ) = _CopyWithImpl$Input$CreatePostInput;

  factory CopyWith$Input$CreatePostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePostInput;

  TRes call({
    String? text,
    String? $class,
    int? classID,
  });
}

class _CopyWithImpl$Input$CreatePostInput<TRes>
    implements CopyWith$Input$CreatePostInput<TRes> {
  _CopyWithImpl$Input$CreatePostInput(
    this._instance,
    this._then,
  );

  final Input$CreatePostInput _instance;

  final TRes Function(Input$CreatePostInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? $class = _undefined,
    Object? classID = _undefined,
  }) =>
      _then(Input$CreatePostInput._({
        ..._instance._$data,
        if (text != _undefined && text != null) 'text': (text as String),
        if ($class != _undefined && $class != null) 'class': ($class as String),
        if (classID != _undefined && classID != null)
          'classID': (classID as int),
      }));
}

class _CopyWithStubImpl$Input$CreatePostInput<TRes>
    implements CopyWith$Input$CreatePostInput<TRes> {
  _CopyWithStubImpl$Input$CreatePostInput(this._res);

  TRes _res;

  call({
    String? text,
    String? $class,
    int? classID,
  }) =>
      _res;
}

class Input$CreateRoleInput {
  factory Input$CreateRoleInput({
    required String title,
    String? text,
    String? superiorTitle,
  }) =>
      Input$CreateRoleInput._({
        r'title': title,
        if (text != null) r'text': text,
        if (superiorTitle != null) r'superiorTitle': superiorTitle,
      });

  Input$CreateRoleInput._(this._$data);

  factory Input$CreateRoleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('superiorTitle')) {
      final l$superiorTitle = data['superiorTitle'];
      result$data['superiorTitle'] = (l$superiorTitle as String?);
    }
    return Input$CreateRoleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String? get text => (_$data['text'] as String?);

  String? get superiorTitle => (_$data['superiorTitle'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('superiorTitle')) {
      final l$superiorTitle = superiorTitle;
      result$data['superiorTitle'] = l$superiorTitle;
    }
    return result$data;
  }

  CopyWith$Input$CreateRoleInput<Input$CreateRoleInput> get copyWith =>
      CopyWith$Input$CreateRoleInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateRoleInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$superiorTitle = superiorTitle;
    final lOther$superiorTitle = other.superiorTitle;
    if (_$data.containsKey('superiorTitle') !=
        other._$data.containsKey('superiorTitle')) {
      return false;
    }
    if (l$superiorTitle != lOther$superiorTitle) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$superiorTitle = superiorTitle;
    return Object.hashAll([
      l$title,
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('superiorTitle') ? l$superiorTitle : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateRoleInput<TRes> {
  factory CopyWith$Input$CreateRoleInput(
    Input$CreateRoleInput instance,
    TRes Function(Input$CreateRoleInput) then,
  ) = _CopyWithImpl$Input$CreateRoleInput;

  factory CopyWith$Input$CreateRoleInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateRoleInput;

  TRes call({
    String? title,
    String? text,
    String? superiorTitle,
  });
}

class _CopyWithImpl$Input$CreateRoleInput<TRes>
    implements CopyWith$Input$CreateRoleInput<TRes> {
  _CopyWithImpl$Input$CreateRoleInput(
    this._instance,
    this._then,
  );

  final Input$CreateRoleInput _instance;

  final TRes Function(Input$CreateRoleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? superiorTitle = _undefined,
  }) =>
      _then(Input$CreateRoleInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (text != _undefined) 'text': (text as String?),
        if (superiorTitle != _undefined)
          'superiorTitle': (superiorTitle as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateRoleInput<TRes>
    implements CopyWith$Input$CreateRoleInput<TRes> {
  _CopyWithStubImpl$Input$CreateRoleInput(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    String? superiorTitle,
  }) =>
      _res;
}

class Input$CreateSceneInput {
  factory Input$CreateSceneInput({
    required String title,
    String? text,
    required int startTimeline,
    required int endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<Input$SceneCasualtiesInput?>? casualties,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateSceneInput._({
        r'title': title,
        if (text != null) r'text': text,
        r'startTimeline': startTimeline,
        r'endTimeline': endTimeline,
        if (characterIDs != null) r'characterIDs': characterIDs,
        if (locationIDs != null) r'locationIDs': locationIDs,
        if (conflictIDs != null) r'conflictIDs': conflictIDs,
        if (casualties != null) r'casualties': casualties,
        if (organizationIDs != null) r'organizationIDs': organizationIDs,
        if (files != null) r'files': files,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateSceneInput._(this._$data);

  factory Input$CreateSceneInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    final l$startTimeline = data['startTimeline'];
    result$data['startTimeline'] = (l$startTimeline as int);
    final l$endTimeline = data['endTimeline'];
    result$data['endTimeline'] = (l$endTimeline as int);
    if (data.containsKey('characterIDs')) {
      final l$characterIDs = data['characterIDs'];
      result$data['characterIDs'] =
          (l$characterIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('locationIDs')) {
      final l$locationIDs = data['locationIDs'];
      result$data['locationIDs'] =
          (l$locationIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('conflictIDs')) {
      final l$conflictIDs = data['conflictIDs'];
      result$data['conflictIDs'] =
          (l$conflictIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('casualties')) {
      final l$casualties = data['casualties'];
      result$data['casualties'] = (l$casualties as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$SceneCasualtiesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('organizationIDs')) {
      final l$organizationIDs = data['organizationIDs'];
      result$data['organizationIDs'] = (l$organizationIDs as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateSceneInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String? get text => (_$data['text'] as String?);

  int get startTimeline => (_$data['startTimeline'] as int);

  int get endTimeline => (_$data['endTimeline'] as int);

  List<int?>? get characterIDs => (_$data['characterIDs'] as List<int?>?);

  List<int?>? get locationIDs => (_$data['locationIDs'] as List<int?>?);

  List<int?>? get conflictIDs => (_$data['conflictIDs'] as List<int?>?);

  List<Input$SceneCasualtiesInput?>? get casualties =>
      (_$data['casualties'] as List<Input$SceneCasualtiesInput?>?);

  List<int?>? get organizationIDs => (_$data['organizationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    final l$startTimeline = startTimeline;
    result$data['startTimeline'] = l$startTimeline;
    final l$endTimeline = endTimeline;
    result$data['endTimeline'] = l$endTimeline;
    if (_$data.containsKey('characterIDs')) {
      final l$characterIDs = characterIDs;
      result$data['characterIDs'] = l$characterIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('locationIDs')) {
      final l$locationIDs = locationIDs;
      result$data['locationIDs'] = l$locationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('conflictIDs')) {
      final l$conflictIDs = conflictIDs;
      result$data['conflictIDs'] = l$conflictIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('casualties')) {
      final l$casualties = casualties;
      result$data['casualties'] =
          l$casualties?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('organizationIDs')) {
      final l$organizationIDs = organizationIDs;
      result$data['organizationIDs'] =
          l$organizationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateSceneInput<Input$CreateSceneInput> get copyWith =>
      CopyWith$Input$CreateSceneInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateSceneInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
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
    final l$characterIDs = characterIDs;
    final lOther$characterIDs = other.characterIDs;
    if (_$data.containsKey('characterIDs') !=
        other._$data.containsKey('characterIDs')) {
      return false;
    }
    if (l$characterIDs != null && lOther$characterIDs != null) {
      if (l$characterIDs.length != lOther$characterIDs.length) {
        return false;
      }
      for (int i = 0; i < l$characterIDs.length; i++) {
        final l$characterIDs$entry = l$characterIDs[i];
        final lOther$characterIDs$entry = lOther$characterIDs[i];
        if (l$characterIDs$entry != lOther$characterIDs$entry) {
          return false;
        }
      }
    } else if (l$characterIDs != lOther$characterIDs) {
      return false;
    }
    final l$locationIDs = locationIDs;
    final lOther$locationIDs = other.locationIDs;
    if (_$data.containsKey('locationIDs') !=
        other._$data.containsKey('locationIDs')) {
      return false;
    }
    if (l$locationIDs != null && lOther$locationIDs != null) {
      if (l$locationIDs.length != lOther$locationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$locationIDs.length; i++) {
        final l$locationIDs$entry = l$locationIDs[i];
        final lOther$locationIDs$entry = lOther$locationIDs[i];
        if (l$locationIDs$entry != lOther$locationIDs$entry) {
          return false;
        }
      }
    } else if (l$locationIDs != lOther$locationIDs) {
      return false;
    }
    final l$conflictIDs = conflictIDs;
    final lOther$conflictIDs = other.conflictIDs;
    if (_$data.containsKey('conflictIDs') !=
        other._$data.containsKey('conflictIDs')) {
      return false;
    }
    if (l$conflictIDs != null && lOther$conflictIDs != null) {
      if (l$conflictIDs.length != lOther$conflictIDs.length) {
        return false;
      }
      for (int i = 0; i < l$conflictIDs.length; i++) {
        final l$conflictIDs$entry = l$conflictIDs[i];
        final lOther$conflictIDs$entry = lOther$conflictIDs[i];
        if (l$conflictIDs$entry != lOther$conflictIDs$entry) {
          return false;
        }
      }
    } else if (l$conflictIDs != lOther$conflictIDs) {
      return false;
    }
    final l$casualties = casualties;
    final lOther$casualties = other.casualties;
    if (_$data.containsKey('casualties') !=
        other._$data.containsKey('casualties')) {
      return false;
    }
    if (l$casualties != null && lOther$casualties != null) {
      if (l$casualties.length != lOther$casualties.length) {
        return false;
      }
      for (int i = 0; i < l$casualties.length; i++) {
        final l$casualties$entry = l$casualties[i];
        final lOther$casualties$entry = lOther$casualties[i];
        if (l$casualties$entry != lOther$casualties$entry) {
          return false;
        }
      }
    } else if (l$casualties != lOther$casualties) {
      return false;
    }
    final l$organizationIDs = organizationIDs;
    final lOther$organizationIDs = other.organizationIDs;
    if (_$data.containsKey('organizationIDs') !=
        other._$data.containsKey('organizationIDs')) {
      return false;
    }
    if (l$organizationIDs != null && lOther$organizationIDs != null) {
      if (l$organizationIDs.length != lOther$organizationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$organizationIDs.length; i++) {
        final l$organizationIDs$entry = l$organizationIDs[i];
        final lOther$organizationIDs$entry = lOther$organizationIDs[i];
        if (l$organizationIDs$entry != lOther$organizationIDs$entry) {
          return false;
        }
      }
    } else if (l$organizationIDs != lOther$organizationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$startTimeline = startTimeline;
    final l$endTimeline = endTimeline;
    final l$characterIDs = characterIDs;
    final l$locationIDs = locationIDs;
    final l$conflictIDs = conflictIDs;
    final l$casualties = casualties;
    final l$organizationIDs = organizationIDs;
    final l$files = files;
    final l$genImage = genImage;
    return Object.hashAll([
      l$title,
      _$data.containsKey('text') ? l$text : const {},
      l$startTimeline,
      l$endTimeline,
      _$data.containsKey('characterIDs')
          ? l$characterIDs == null
              ? null
              : Object.hashAll(l$characterIDs.map((v) => v))
          : const {},
      _$data.containsKey('locationIDs')
          ? l$locationIDs == null
              ? null
              : Object.hashAll(l$locationIDs.map((v) => v))
          : const {},
      _$data.containsKey('conflictIDs')
          ? l$conflictIDs == null
              ? null
              : Object.hashAll(l$conflictIDs.map((v) => v))
          : const {},
      _$data.containsKey('casualties')
          ? l$casualties == null
              ? null
              : Object.hashAll(l$casualties.map((v) => v))
          : const {},
      _$data.containsKey('organizationIDs')
          ? l$organizationIDs == null
              ? null
              : Object.hashAll(l$organizationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateSceneInput<TRes> {
  factory CopyWith$Input$CreateSceneInput(
    Input$CreateSceneInput instance,
    TRes Function(Input$CreateSceneInput) then,
  ) = _CopyWithImpl$Input$CreateSceneInput;

  factory CopyWith$Input$CreateSceneInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateSceneInput;

  TRes call({
    String? title,
    String? text,
    int? startTimeline,
    int? endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<Input$SceneCasualtiesInput?>? casualties,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  });
  TRes casualties(
      Iterable<Input$SceneCasualtiesInput?>? Function(
              Iterable<
                  CopyWith$Input$SceneCasualtiesInput<
                      Input$SceneCasualtiesInput>?>?)
          _fn);
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateSceneInput<TRes>
    implements CopyWith$Input$CreateSceneInput<TRes> {
  _CopyWithImpl$Input$CreateSceneInput(
    this._instance,
    this._then,
  );

  final Input$CreateSceneInput _instance;

  final TRes Function(Input$CreateSceneInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? startTimeline = _undefined,
    Object? endTimeline = _undefined,
    Object? characterIDs = _undefined,
    Object? locationIDs = _undefined,
    Object? conflictIDs = _undefined,
    Object? casualties = _undefined,
    Object? organizationIDs = _undefined,
    Object? files = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateSceneInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (text != _undefined) 'text': (text as String?),
        if (startTimeline != _undefined && startTimeline != null)
          'startTimeline': (startTimeline as int),
        if (endTimeline != _undefined && endTimeline != null)
          'endTimeline': (endTimeline as int),
        if (characterIDs != _undefined)
          'characterIDs': (characterIDs as List<int?>?),
        if (locationIDs != _undefined)
          'locationIDs': (locationIDs as List<int?>?),
        if (conflictIDs != _undefined)
          'conflictIDs': (conflictIDs as List<int?>?),
        if (casualties != _undefined)
          'casualties': (casualties as List<Input$SceneCasualtiesInput?>?),
        if (organizationIDs != _undefined)
          'organizationIDs': (organizationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes casualties(
          Iterable<Input$SceneCasualtiesInput?>? Function(
                  Iterable<
                      CopyWith$Input$SceneCasualtiesInput<
                          Input$SceneCasualtiesInput>?>?)
              _fn) =>
      call(
          casualties: _fn(_instance.casualties?.map((e) => e == null
              ? null
              : CopyWith$Input$SceneCasualtiesInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateSceneInput<TRes>
    implements CopyWith$Input$CreateSceneInput<TRes> {
  _CopyWithStubImpl$Input$CreateSceneInput(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    int? startTimeline,
    int? endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<Input$SceneCasualtiesInput?>? casualties,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  casualties(_fn) => _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$CreateSceneSequenceInput {
  factory Input$CreateSceneSequenceInput({
    required int order,
    required int sceneID,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateSceneSequenceInput._({
        r'order': order,
        r'sceneID': sceneID,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateSceneSequenceInput._(this._$data);

  factory Input$CreateSceneSequenceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$order = data['order'];
    result$data['order'] = (l$order as int);
    final l$sceneID = data['sceneID'];
    result$data['sceneID'] = (l$sceneID as int);
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateSceneSequenceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get order => (_$data['order'] as int);

  int get sceneID => (_$data['sceneID'] as int);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$order = order;
    result$data['order'] = l$order;
    final l$sceneID = sceneID;
    result$data['sceneID'] = l$sceneID;
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateSceneSequenceInput<Input$CreateSceneSequenceInput>
      get copyWith => CopyWith$Input$CreateSceneSequenceInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateSceneSequenceInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$sceneID = sceneID;
    final lOther$sceneID = other.sceneID;
    if (l$sceneID != lOther$sceneID) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$sceneID = sceneID;
    final l$genImage = genImage;
    return Object.hashAll([
      l$order,
      l$sceneID,
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateSceneSequenceInput<TRes> {
  factory CopyWith$Input$CreateSceneSequenceInput(
    Input$CreateSceneSequenceInput instance,
    TRes Function(Input$CreateSceneSequenceInput) then,
  ) = _CopyWithImpl$Input$CreateSceneSequenceInput;

  factory CopyWith$Input$CreateSceneSequenceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateSceneSequenceInput;

  TRes call({
    int? order,
    int? sceneID,
    List<Input$GenImage?>? genImage,
  });
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateSceneSequenceInput<TRes>
    implements CopyWith$Input$CreateSceneSequenceInput<TRes> {
  _CopyWithImpl$Input$CreateSceneSequenceInput(
    this._instance,
    this._then,
  );

  final Input$CreateSceneSequenceInput _instance;

  final TRes Function(Input$CreateSceneSequenceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? sceneID = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateSceneSequenceInput._({
        ..._instance._$data,
        if (order != _undefined && order != null) 'order': (order as int),
        if (sceneID != _undefined && sceneID != null)
          'sceneID': (sceneID as int),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateSceneSequenceInput<TRes>
    implements CopyWith$Input$CreateSceneSequenceInput<TRes> {
  _CopyWithStubImpl$Input$CreateSceneSequenceInput(this._res);

  TRes _res;

  call({
    int? order,
    int? sceneID,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  genImage(_fn) => _res;
}

class Input$CreateSequenceInput {
  factory Input$CreateSequenceInput({
    required List<Input$CreateSceneSequenceInput> scenes,
    String? text,
    required String title,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateSequenceInput._({
        r'scenes': scenes,
        if (text != null) r'text': text,
        r'title': title,
        if (files != null) r'files': files,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateSequenceInput._(this._$data);

  factory Input$CreateSequenceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$scenes = data['scenes'];
    result$data['scenes'] = (l$scenes as List<dynamic>)
        .map((e) => Input$CreateSceneSequenceInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateSequenceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CreateSceneSequenceInput> get scenes =>
      (_$data['scenes'] as List<Input$CreateSceneSequenceInput>);

  String? get text => (_$data['text'] as String?);

  String get title => (_$data['title'] as String);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$scenes = scenes;
    result$data['scenes'] = l$scenes.map((e) => e.toJson()).toList();
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateSequenceInput<Input$CreateSequenceInput> get copyWith =>
      CopyWith$Input$CreateSequenceInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateSequenceInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scenes = scenes;
    final lOther$scenes = other.scenes;
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
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$scenes = scenes;
    final l$text = text;
    final l$title = title;
    final l$files = files;
    final l$genImage = genImage;
    return Object.hashAll([
      Object.hashAll(l$scenes.map((v) => v)),
      _$data.containsKey('text') ? l$text : const {},
      l$title,
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateSequenceInput<TRes> {
  factory CopyWith$Input$CreateSequenceInput(
    Input$CreateSequenceInput instance,
    TRes Function(Input$CreateSequenceInput) then,
  ) = _CopyWithImpl$Input$CreateSequenceInput;

  factory CopyWith$Input$CreateSequenceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateSequenceInput;

  TRes call({
    List<Input$CreateSceneSequenceInput>? scenes,
    String? text,
    String? title,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  });
  TRes scenes(
      Iterable<Input$CreateSceneSequenceInput> Function(
              Iterable<
                  CopyWith$Input$CreateSceneSequenceInput<
                      Input$CreateSceneSequenceInput>>)
          _fn);
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateSequenceInput<TRes>
    implements CopyWith$Input$CreateSequenceInput<TRes> {
  _CopyWithImpl$Input$CreateSequenceInput(
    this._instance,
    this._then,
  );

  final Input$CreateSequenceInput _instance;

  final TRes Function(Input$CreateSequenceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scenes = _undefined,
    Object? text = _undefined,
    Object? title = _undefined,
    Object? files = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateSequenceInput._({
        ..._instance._$data,
        if (scenes != _undefined && scenes != null)
          'scenes': (scenes as List<Input$CreateSceneSequenceInput>),
        if (text != _undefined) 'text': (text as String?),
        if (title != _undefined && title != null) 'title': (title as String),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes scenes(
          Iterable<Input$CreateSceneSequenceInput> Function(
                  Iterable<
                      CopyWith$Input$CreateSceneSequenceInput<
                          Input$CreateSceneSequenceInput>>)
              _fn) =>
      call(
          scenes: _fn(_instance.scenes
              .map((e) => CopyWith$Input$CreateSceneSequenceInput(
                    e,
                    (i) => i,
                  ))).toList());

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateSequenceInput<TRes>
    implements CopyWith$Input$CreateSequenceInput<TRes> {
  _CopyWithStubImpl$Input$CreateSequenceInput(this._res);

  TRes _res;

  call({
    List<Input$CreateSceneSequenceInput>? scenes,
    String? text,
    String? title,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  scenes(_fn) => _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$CreateShipInput {
  factory Input$CreateShipInput({
    required String title,
    String? text,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$CreateShipInput._({
        r'title': title,
        if (text != null) r'text': text,
        if (locationIDs != null) r'locationIDs': locationIDs,
        if (files != null) r'files': files,
        if (genImage != null) r'genImage': genImage,
      });

  Input$CreateShipInput._(this._$data);

  factory Input$CreateShipInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('locationIDs')) {
      final l$locationIDs = data['locationIDs'];
      result$data['locationIDs'] =
          (l$locationIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$CreateShipInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String? get text => (_$data['text'] as String?);

  List<int?>? get locationIDs => (_$data['locationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('locationIDs')) {
      final l$locationIDs = locationIDs;
      result$data['locationIDs'] = l$locationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$CreateShipInput<Input$CreateShipInput> get copyWith =>
      CopyWith$Input$CreateShipInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateShipInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$locationIDs = locationIDs;
    final lOther$locationIDs = other.locationIDs;
    if (_$data.containsKey('locationIDs') !=
        other._$data.containsKey('locationIDs')) {
      return false;
    }
    if (l$locationIDs != null && lOther$locationIDs != null) {
      if (l$locationIDs.length != lOther$locationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$locationIDs.length; i++) {
        final l$locationIDs$entry = l$locationIDs[i];
        final lOther$locationIDs$entry = lOther$locationIDs[i];
        if (l$locationIDs$entry != lOther$locationIDs$entry) {
          return false;
        }
      }
    } else if (l$locationIDs != lOther$locationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$text = text;
    final l$locationIDs = locationIDs;
    final l$files = files;
    final l$genImage = genImage;
    return Object.hashAll([
      l$title,
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('locationIDs')
          ? l$locationIDs == null
              ? null
              : Object.hashAll(l$locationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateShipInput<TRes> {
  factory CopyWith$Input$CreateShipInput(
    Input$CreateShipInput instance,
    TRes Function(Input$CreateShipInput) then,
  ) = _CopyWithImpl$Input$CreateShipInput;

  factory CopyWith$Input$CreateShipInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateShipInput;

  TRes call({
    String? title,
    String? text,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$CreateShipInput<TRes>
    implements CopyWith$Input$CreateShipInput<TRes> {
  _CopyWithImpl$Input$CreateShipInput(
    this._instance,
    this._then,
  );

  final Input$CreateShipInput _instance;

  final TRes Function(Input$CreateShipInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? text = _undefined,
    Object? locationIDs = _undefined,
    Object? files = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$CreateShipInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (text != _undefined) 'text': (text as String?),
        if (locationIDs != _undefined)
          'locationIDs': (locationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$CreateShipInput<TRes>
    implements CopyWith$Input$CreateShipInput<TRes> {
  _CopyWithStubImpl$Input$CreateShipInput(this._res);

  TRes _res;

  call({
    String? title,
    String? text,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$CropImage {
  factory Input$CropImage({
    required int x,
    required int y,
    required int id,
  }) =>
      Input$CropImage._({
        r'x': x,
        r'y': y,
        r'id': id,
      });

  Input$CropImage._(this._$data);

  factory Input$CropImage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$x = data['x'];
    result$data['x'] = (l$x as int);
    final l$y = data['y'];
    result$data['y'] = (l$y as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$CropImage._(result$data);
  }

  Map<String, dynamic> _$data;

  int get x => (_$data['x'] as int);

  int get y => (_$data['y'] as int);

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$x = x;
    result$data['x'] = l$x;
    final l$y = y;
    result$data['y'] = l$y;
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$CropImage<Input$CropImage> get copyWith =>
      CopyWith$Input$CropImage(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CropImage || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$x = x;
    final l$y = y;
    final l$id = id;
    return Object.hashAll([
      l$x,
      l$y,
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$CropImage<TRes> {
  factory CopyWith$Input$CropImage(
    Input$CropImage instance,
    TRes Function(Input$CropImage) then,
  ) = _CopyWithImpl$Input$CropImage;

  factory CopyWith$Input$CropImage.stub(TRes res) =
      _CopyWithStubImpl$Input$CropImage;

  TRes call({
    int? x,
    int? y,
    int? id,
  });
}

class _CopyWithImpl$Input$CropImage<TRes>
    implements CopyWith$Input$CropImage<TRes> {
  _CopyWithImpl$Input$CropImage(
    this._instance,
    this._then,
  );

  final Input$CropImage _instance;

  final TRes Function(Input$CropImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? x = _undefined,
    Object? y = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$CropImage._({
        ..._instance._$data,
        if (x != _undefined && x != null) 'x': (x as int),
        if (y != _undefined && y != null) 'y': (y as int),
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$CropImage<TRes>
    implements CopyWith$Input$CropImage<TRes> {
  _CopyWithStubImpl$Input$CropImage(this._res);

  TRes _res;

  call({
    int? x,
    int? y,
    int? id,
  }) =>
      _res;
}

class Input$DeleteTextInput {
  factory Input$DeleteTextInput({
    required String id,
    required String postID,
  }) =>
      Input$DeleteTextInput._({
        r'id': id,
        r'postID': postID,
      });

  Input$DeleteTextInput._(this._$data);

  factory Input$DeleteTextInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$DeleteTextInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get postID => (_$data['postID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$DeleteTextInput<Input$DeleteTextInput> get copyWith =>
      CopyWith$Input$DeleteTextInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DeleteTextInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$postID = postID;
    return Object.hashAll([
      l$id,
      l$postID,
    ]);
  }
}

abstract class CopyWith$Input$DeleteTextInput<TRes> {
  factory CopyWith$Input$DeleteTextInput(
    Input$DeleteTextInput instance,
    TRes Function(Input$DeleteTextInput) then,
  ) = _CopyWithImpl$Input$DeleteTextInput;

  factory CopyWith$Input$DeleteTextInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteTextInput;

  TRes call({
    String? id,
    String? postID,
  });
}

class _CopyWithImpl$Input$DeleteTextInput<TRes>
    implements CopyWith$Input$DeleteTextInput<TRes> {
  _CopyWithImpl$Input$DeleteTextInput(
    this._instance,
    this._then,
  );

  final Input$DeleteTextInput _instance;

  final TRes Function(Input$DeleteTextInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? postID = _undefined,
  }) =>
      _then(Input$DeleteTextInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteTextInput<TRes>
    implements CopyWith$Input$DeleteTextInput<TRes> {
  _CopyWithStubImpl$Input$DeleteTextInput(this._res);

  TRes _res;

  call({
    String? id,
    String? postID,
  }) =>
      _res;
}

class Input$FileInput {
  factory Input$FileInput({
    required String fileName,
    required String fileType,
  }) =>
      Input$FileInput._({
        r'fileName': fileName,
        r'fileType': fileType,
      });

  Input$FileInput._(this._$data);

  factory Input$FileInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$fileName = data['fileName'];
    result$data['fileName'] = (l$fileName as String);
    final l$fileType = data['fileType'];
    result$data['fileType'] = (l$fileType as String);
    return Input$FileInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get fileName => (_$data['fileName'] as String);

  String get fileType => (_$data['fileType'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$fileName = fileName;
    result$data['fileName'] = l$fileName;
    final l$fileType = fileType;
    result$data['fileType'] = l$fileType;
    return result$data;
  }

  CopyWith$Input$FileInput<Input$FileInput> get copyWith =>
      CopyWith$Input$FileInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FileInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fileName = fileName;
    final lOther$fileName = other.fileName;
    if (l$fileName != lOther$fileName) {
      return false;
    }
    final l$fileType = fileType;
    final lOther$fileType = other.fileType;
    if (l$fileType != lOther$fileType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fileName = fileName;
    final l$fileType = fileType;
    return Object.hashAll([
      l$fileName,
      l$fileType,
    ]);
  }
}

abstract class CopyWith$Input$FileInput<TRes> {
  factory CopyWith$Input$FileInput(
    Input$FileInput instance,
    TRes Function(Input$FileInput) then,
  ) = _CopyWithImpl$Input$FileInput;

  factory CopyWith$Input$FileInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FileInput;

  TRes call({
    String? fileName,
    String? fileType,
  });
}

class _CopyWithImpl$Input$FileInput<TRes>
    implements CopyWith$Input$FileInput<TRes> {
  _CopyWithImpl$Input$FileInput(
    this._instance,
    this._then,
  );

  final Input$FileInput _instance;

  final TRes Function(Input$FileInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fileName = _undefined,
    Object? fileType = _undefined,
  }) =>
      _then(Input$FileInput._({
        ..._instance._$data,
        if (fileName != _undefined && fileName != null)
          'fileName': (fileName as String),
        if (fileType != _undefined && fileType != null)
          'fileType': (fileType as String),
      }));
}

class _CopyWithStubImpl$Input$FileInput<TRes>
    implements CopyWith$Input$FileInput<TRes> {
  _CopyWithStubImpl$Input$FileInput(this._res);

  TRes _res;

  call({
    String? fileName,
    String? fileType,
  }) =>
      _res;
}

class Input$ForgotPasswordInput {
  factory Input$ForgotPasswordInput({required String email}) =>
      Input$ForgotPasswordInput._({
        r'email': email,
      });

  Input$ForgotPasswordInput._(this._$data);

  factory Input$ForgotPasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    return Input$ForgotPasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    return result$data;
  }

  CopyWith$Input$ForgotPasswordInput<Input$ForgotPasswordInput> get copyWith =>
      CopyWith$Input$ForgotPasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ForgotPasswordInput ||
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

abstract class CopyWith$Input$ForgotPasswordInput<TRes> {
  factory CopyWith$Input$ForgotPasswordInput(
    Input$ForgotPasswordInput instance,
    TRes Function(Input$ForgotPasswordInput) then,
  ) = _CopyWithImpl$Input$ForgotPasswordInput;

  factory CopyWith$Input$ForgotPasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ForgotPasswordInput;

  TRes call({String? email});
}

class _CopyWithImpl$Input$ForgotPasswordInput<TRes>
    implements CopyWith$Input$ForgotPasswordInput<TRes> {
  _CopyWithImpl$Input$ForgotPasswordInput(
    this._instance,
    this._then,
  );

  final Input$ForgotPasswordInput _instance;

  final TRes Function(Input$ForgotPasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined}) => _then(Input$ForgotPasswordInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
      }));
}

class _CopyWithStubImpl$Input$ForgotPasswordInput<TRes>
    implements CopyWith$Input$ForgotPasswordInput<TRes> {
  _CopyWithStubImpl$Input$ForgotPasswordInput(this._res);

  TRes _res;

  call({String? email}) => _res;
}

class Input$GenImage {
  factory Input$GenImage({required String fileName}) => Input$GenImage._({
        r'fileName': fileName,
      });

  Input$GenImage._(this._$data);

  factory Input$GenImage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$fileName = data['fileName'];
    result$data['fileName'] = (l$fileName as String);
    return Input$GenImage._(result$data);
  }

  Map<String, dynamic> _$data;

  String get fileName => (_$data['fileName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$fileName = fileName;
    result$data['fileName'] = l$fileName;
    return result$data;
  }

  CopyWith$Input$GenImage<Input$GenImage> get copyWith =>
      CopyWith$Input$GenImage(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GenImage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fileName = fileName;
    final lOther$fileName = other.fileName;
    if (l$fileName != lOther$fileName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fileName = fileName;
    return Object.hashAll([l$fileName]);
  }
}

abstract class CopyWith$Input$GenImage<TRes> {
  factory CopyWith$Input$GenImage(
    Input$GenImage instance,
    TRes Function(Input$GenImage) then,
  ) = _CopyWithImpl$Input$GenImage;

  factory CopyWith$Input$GenImage.stub(TRes res) =
      _CopyWithStubImpl$Input$GenImage;

  TRes call({String? fileName});
}

class _CopyWithImpl$Input$GenImage<TRes>
    implements CopyWith$Input$GenImage<TRes> {
  _CopyWithImpl$Input$GenImage(
    this._instance,
    this._then,
  );

  final Input$GenImage _instance;

  final TRes Function(Input$GenImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fileName = _undefined}) => _then(Input$GenImage._({
        ..._instance._$data,
        if (fileName != _undefined && fileName != null)
          'fileName': (fileName as String),
      }));
}

class _CopyWithStubImpl$Input$GenImage<TRes>
    implements CopyWith$Input$GenImage<TRes> {
  _CopyWithStubImpl$Input$GenImage(this._res);

  TRes _res;

  call({String? fileName}) => _res;
}

class Input$GenImageArg {
  factory Input$GenImageArg({required String entityType}) =>
      Input$GenImageArg._({
        r'entityType': entityType,
      });

  Input$GenImageArg._(this._$data);

  factory Input$GenImageArg.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$entityType = data['entityType'];
    result$data['entityType'] = (l$entityType as String);
    return Input$GenImageArg._(result$data);
  }

  Map<String, dynamic> _$data;

  String get entityType => (_$data['entityType'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$entityType = entityType;
    result$data['entityType'] = l$entityType;
    return result$data;
  }

  CopyWith$Input$GenImageArg<Input$GenImageArg> get copyWith =>
      CopyWith$Input$GenImageArg(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GenImageArg || runtimeType != other.runtimeType) {
      return false;
    }
    final l$entityType = entityType;
    final lOther$entityType = other.entityType;
    if (l$entityType != lOther$entityType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$entityType = entityType;
    return Object.hashAll([l$entityType]);
  }
}

abstract class CopyWith$Input$GenImageArg<TRes> {
  factory CopyWith$Input$GenImageArg(
    Input$GenImageArg instance,
    TRes Function(Input$GenImageArg) then,
  ) = _CopyWithImpl$Input$GenImageArg;

  factory CopyWith$Input$GenImageArg.stub(TRes res) =
      _CopyWithStubImpl$Input$GenImageArg;

  TRes call({String? entityType});
}

class _CopyWithImpl$Input$GenImageArg<TRes>
    implements CopyWith$Input$GenImageArg<TRes> {
  _CopyWithImpl$Input$GenImageArg(
    this._instance,
    this._then,
  );

  final Input$GenImageArg _instance;

  final TRes Function(Input$GenImageArg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? entityType = _undefined}) => _then(Input$GenImageArg._({
        ..._instance._$data,
        if (entityType != _undefined && entityType != null)
          'entityType': (entityType as String),
      }));
}

class _CopyWithStubImpl$Input$GenImageArg<TRes>
    implements CopyWith$Input$GenImageArg<TRes> {
  _CopyWithStubImpl$Input$GenImageArg(this._res);

  TRes _res;

  call({String? entityType}) => _res;
}

class Input$LikeInput {
  factory Input$LikeInput({
    required String postID,
    required String parentID,
  }) =>
      Input$LikeInput._({
        r'postID': postID,
        r'parentID': parentID,
      });

  Input$LikeInput._(this._$data);

  factory Input$LikeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    final l$parentID = data['parentID'];
    result$data['parentID'] = (l$parentID as String);
    return Input$LikeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postID => (_$data['postID'] as String);

  String get parentID => (_$data['parentID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postID = postID;
    result$data['postID'] = l$postID;
    final l$parentID = parentID;
    result$data['parentID'] = l$parentID;
    return result$data;
  }

  CopyWith$Input$LikeInput<Input$LikeInput> get copyWith =>
      CopyWith$Input$LikeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LikeInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    final l$parentID = parentID;
    final lOther$parentID = other.parentID;
    if (l$parentID != lOther$parentID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postID = postID;
    final l$parentID = parentID;
    return Object.hashAll([
      l$postID,
      l$parentID,
    ]);
  }
}

abstract class CopyWith$Input$LikeInput<TRes> {
  factory CopyWith$Input$LikeInput(
    Input$LikeInput instance,
    TRes Function(Input$LikeInput) then,
  ) = _CopyWithImpl$Input$LikeInput;

  factory CopyWith$Input$LikeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LikeInput;

  TRes call({
    String? postID,
    String? parentID,
  });
}

class _CopyWithImpl$Input$LikeInput<TRes>
    implements CopyWith$Input$LikeInput<TRes> {
  _CopyWithImpl$Input$LikeInput(
    this._instance,
    this._then,
  );

  final Input$LikeInput _instance;

  final TRes Function(Input$LikeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postID = _undefined,
    Object? parentID = _undefined,
  }) =>
      _then(Input$LikeInput._({
        ..._instance._$data,
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
        if (parentID != _undefined && parentID != null)
          'parentID': (parentID as String),
      }));
}

class _CopyWithStubImpl$Input$LikeInput<TRes>
    implements CopyWith$Input$LikeInput<TRes> {
  _CopyWithStubImpl$Input$LikeInput(this._res);

  TRes _res;

  call({
    String? postID,
    String? parentID,
  }) =>
      _res;
}

class Input$LoginInput {
  factory Input$LoginInput({
    required String email,
    required String password,
  }) =>
      Input$LoginInput._({
        r'email': email,
        r'password': password,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginInput._(result$data);
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

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$LoRAUploadInput {
  factory Input$LoRAUploadInput({
    required String fileType,
    required String fileName,
  }) =>
      Input$LoRAUploadInput._({
        r'fileType': fileType,
        r'fileName': fileName,
      });

  Input$LoRAUploadInput._(this._$data);

  factory Input$LoRAUploadInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$fileType = data['fileType'];
    result$data['fileType'] = (l$fileType as String);
    final l$fileName = data['fileName'];
    result$data['fileName'] = (l$fileName as String);
    return Input$LoRAUploadInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get fileType => (_$data['fileType'] as String);

  String get fileName => (_$data['fileName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$fileType = fileType;
    result$data['fileType'] = l$fileType;
    final l$fileName = fileName;
    result$data['fileName'] = l$fileName;
    return result$data;
  }

  CopyWith$Input$LoRAUploadInput<Input$LoRAUploadInput> get copyWith =>
      CopyWith$Input$LoRAUploadInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoRAUploadInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fileType = fileType;
    final lOther$fileType = other.fileType;
    if (l$fileType != lOther$fileType) {
      return false;
    }
    final l$fileName = fileName;
    final lOther$fileName = other.fileName;
    if (l$fileName != lOther$fileName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fileType = fileType;
    final l$fileName = fileName;
    return Object.hashAll([
      l$fileType,
      l$fileName,
    ]);
  }
}

abstract class CopyWith$Input$LoRAUploadInput<TRes> {
  factory CopyWith$Input$LoRAUploadInput(
    Input$LoRAUploadInput instance,
    TRes Function(Input$LoRAUploadInput) then,
  ) = _CopyWithImpl$Input$LoRAUploadInput;

  factory CopyWith$Input$LoRAUploadInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoRAUploadInput;

  TRes call({
    String? fileType,
    String? fileName,
  });
}

class _CopyWithImpl$Input$LoRAUploadInput<TRes>
    implements CopyWith$Input$LoRAUploadInput<TRes> {
  _CopyWithImpl$Input$LoRAUploadInput(
    this._instance,
    this._then,
  );

  final Input$LoRAUploadInput _instance;

  final TRes Function(Input$LoRAUploadInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fileType = _undefined,
    Object? fileName = _undefined,
  }) =>
      _then(Input$LoRAUploadInput._({
        ..._instance._$data,
        if (fileType != _undefined && fileType != null)
          'fileType': (fileType as String),
        if (fileName != _undefined && fileName != null)
          'fileName': (fileName as String),
      }));
}

class _CopyWithStubImpl$Input$LoRAUploadInput<TRes>
    implements CopyWith$Input$LoRAUploadInput<TRes> {
  _CopyWithStubImpl$Input$LoRAUploadInput(this._res);

  TRes _res;

  call({
    String? fileType,
    String? fileName,
  }) =>
      _res;
}

class Input$MongoIDInput {
  factory Input$MongoIDInput({required String postID}) => Input$MongoIDInput._({
        r'postID': postID,
      });

  Input$MongoIDInput._(this._$data);

  factory Input$MongoIDInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$MongoIDInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postID => (_$data['postID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$MongoIDInput<Input$MongoIDInput> get copyWith =>
      CopyWith$Input$MongoIDInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MongoIDInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postID = postID;
    return Object.hashAll([l$postID]);
  }
}

abstract class CopyWith$Input$MongoIDInput<TRes> {
  factory CopyWith$Input$MongoIDInput(
    Input$MongoIDInput instance,
    TRes Function(Input$MongoIDInput) then,
  ) = _CopyWithImpl$Input$MongoIDInput;

  factory CopyWith$Input$MongoIDInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MongoIDInput;

  TRes call({String? postID});
}

class _CopyWithImpl$Input$MongoIDInput<TRes>
    implements CopyWith$Input$MongoIDInput<TRes> {
  _CopyWithImpl$Input$MongoIDInput(
    this._instance,
    this._then,
  );

  final Input$MongoIDInput _instance;

  final TRes Function(Input$MongoIDInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postID = _undefined}) => _then(Input$MongoIDInput._({
        ..._instance._$data,
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$MongoIDInput<TRes>
    implements CopyWith$Input$MongoIDInput<TRes> {
  _CopyWithStubImpl$Input$MongoIDInput(this._res);

  TRes _res;

  call({String? postID}) => _res;
}

class Input$ParentInput {
  factory Input$ParentInput({
    required int id,
    required String $class,
  }) =>
      Input$ParentInput._({
        r'id': id,
        r'class': $class,
      });

  Input$ParentInput._(this._$data);

  factory Input$ParentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$$class = data['class'];
    result$data['class'] = (l$$class as String);
    return Input$ParentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get $class => (_$data['class'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$$class = $class;
    result$data['class'] = l$$class;
    return result$data;
  }

  CopyWith$Input$ParentInput<Input$ParentInput> get copyWith =>
      CopyWith$Input$ParentInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ParentInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$class = $class;
    return Object.hashAll([
      l$id,
      l$$class,
    ]);
  }
}

abstract class CopyWith$Input$ParentInput<TRes> {
  factory CopyWith$Input$ParentInput(
    Input$ParentInput instance,
    TRes Function(Input$ParentInput) then,
  ) = _CopyWithImpl$Input$ParentInput;

  factory CopyWith$Input$ParentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ParentInput;

  TRes call({
    int? id,
    String? $class,
  });
}

class _CopyWithImpl$Input$ParentInput<TRes>
    implements CopyWith$Input$ParentInput<TRes> {
  _CopyWithImpl$Input$ParentInput(
    this._instance,
    this._then,
  );

  final Input$ParentInput _instance;

  final TRes Function(Input$ParentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $class = _undefined,
  }) =>
      _then(Input$ParentInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if ($class != _undefined && $class != null) 'class': ($class as String),
      }));
}

class _CopyWithStubImpl$Input$ParentInput<TRes>
    implements CopyWith$Input$ParentInput<TRes> {
  _CopyWithStubImpl$Input$ParentInput(this._res);

  TRes _res;

  call({
    int? id,
    String? $class,
  }) =>
      _res;
}

class Input$PaymentInput {
  factory Input$PaymentInput({
    required int amount,
    required String currency,
  }) =>
      Input$PaymentInput._({
        r'amount': amount,
        r'currency': currency,
      });

  Input$PaymentInput._(this._$data);

  factory Input$PaymentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as int);
    final l$currency = data['currency'];
    result$data['currency'] = (l$currency as String);
    return Input$PaymentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get amount => (_$data['amount'] as int);

  String get currency => (_$data['currency'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$currency = currency;
    result$data['currency'] = l$currency;
    return result$data;
  }

  CopyWith$Input$PaymentInput<Input$PaymentInput> get copyWith =>
      CopyWith$Input$PaymentInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaymentInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$currency = currency;
    return Object.hashAll([
      l$amount,
      l$currency,
    ]);
  }
}

abstract class CopyWith$Input$PaymentInput<TRes> {
  factory CopyWith$Input$PaymentInput(
    Input$PaymentInput instance,
    TRes Function(Input$PaymentInput) then,
  ) = _CopyWithImpl$Input$PaymentInput;

  factory CopyWith$Input$PaymentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentInput;

  TRes call({
    int? amount,
    String? currency,
  });
}

class _CopyWithImpl$Input$PaymentInput<TRes>
    implements CopyWith$Input$PaymentInput<TRes> {
  _CopyWithImpl$Input$PaymentInput(
    this._instance,
    this._then,
  );

  final Input$PaymentInput _instance;

  final TRes Function(Input$PaymentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? currency = _undefined,
  }) =>
      _then(Input$PaymentInput._({
        ..._instance._$data,
        if (amount != _undefined && amount != null) 'amount': (amount as int),
        if (currency != _undefined && currency != null)
          'currency': (currency as String),
      }));
}

class _CopyWithStubImpl$Input$PaymentInput<TRes>
    implements CopyWith$Input$PaymentInput<TRes> {
  _CopyWithStubImpl$Input$PaymentInput(this._res);

  TRes _res;

  call({
    int? amount,
    String? currency,
  }) =>
      _res;
}

class Input$PostGresIDInput {
  factory Input$PostGresIDInput({required int id}) => Input$PostGresIDInput._({
        r'id': id,
      });

  Input$PostGresIDInput._(this._$data);

  factory Input$PostGresIDInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$PostGresIDInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$PostGresIDInput<Input$PostGresIDInput> get copyWith =>
      CopyWith$Input$PostGresIDInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostGresIDInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$PostGresIDInput<TRes> {
  factory CopyWith$Input$PostGresIDInput(
    Input$PostGresIDInput instance,
    TRes Function(Input$PostGresIDInput) then,
  ) = _CopyWithImpl$Input$PostGresIDInput;

  factory CopyWith$Input$PostGresIDInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PostGresIDInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$PostGresIDInput<TRes>
    implements CopyWith$Input$PostGresIDInput<TRes> {
  _CopyWithImpl$Input$PostGresIDInput(
    this._instance,
    this._then,
  );

  final Input$PostGresIDInput _instance;

  final TRes Function(Input$PostGresIDInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$PostGresIDInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$PostGresIDInput<TRes>
    implements CopyWith$Input$PostGresIDInput<TRes> {
  _CopyWithStubImpl$Input$PostGresIDInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$RagCasualties {
  factory Input$RagCasualties({
    required String shipName,
    required int casualties,
  }) =>
      Input$RagCasualties._({
        r'shipName': shipName,
        r'casualties': casualties,
      });

  Input$RagCasualties._(this._$data);

  factory Input$RagCasualties.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$shipName = data['shipName'];
    result$data['shipName'] = (l$shipName as String);
    final l$casualties = data['casualties'];
    result$data['casualties'] = (l$casualties as int);
    return Input$RagCasualties._(result$data);
  }

  Map<String, dynamic> _$data;

  String get shipName => (_$data['shipName'] as String);

  int get casualties => (_$data['casualties'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$shipName = shipName;
    result$data['shipName'] = l$shipName;
    final l$casualties = casualties;
    result$data['casualties'] = l$casualties;
    return result$data;
  }

  CopyWith$Input$RagCasualties<Input$RagCasualties> get copyWith =>
      CopyWith$Input$RagCasualties(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RagCasualties || runtimeType != other.runtimeType) {
      return false;
    }
    final l$shipName = shipName;
    final lOther$shipName = other.shipName;
    if (l$shipName != lOther$shipName) {
      return false;
    }
    final l$casualties = casualties;
    final lOther$casualties = other.casualties;
    if (l$casualties != lOther$casualties) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$shipName = shipName;
    final l$casualties = casualties;
    return Object.hashAll([
      l$shipName,
      l$casualties,
    ]);
  }
}

abstract class CopyWith$Input$RagCasualties<TRes> {
  factory CopyWith$Input$RagCasualties(
    Input$RagCasualties instance,
    TRes Function(Input$RagCasualties) then,
  ) = _CopyWithImpl$Input$RagCasualties;

  factory CopyWith$Input$RagCasualties.stub(TRes res) =
      _CopyWithStubImpl$Input$RagCasualties;

  TRes call({
    String? shipName,
    int? casualties,
  });
}

class _CopyWithImpl$Input$RagCasualties<TRes>
    implements CopyWith$Input$RagCasualties<TRes> {
  _CopyWithImpl$Input$RagCasualties(
    this._instance,
    this._then,
  );

  final Input$RagCasualties _instance;

  final TRes Function(Input$RagCasualties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shipName = _undefined,
    Object? casualties = _undefined,
  }) =>
      _then(Input$RagCasualties._({
        ..._instance._$data,
        if (shipName != _undefined && shipName != null)
          'shipName': (shipName as String),
        if (casualties != _undefined && casualties != null)
          'casualties': (casualties as int),
      }));
}

class _CopyWithStubImpl$Input$RagCasualties<TRes>
    implements CopyWith$Input$RagCasualties<TRes> {
  _CopyWithStubImpl$Input$RagCasualties(this._res);

  TRes _res;

  call({
    String? shipName,
    int? casualties,
  }) =>
      _res;
}

class Input$RagRole {
  factory Input$RagRole({
    required String organizationText,
    required String organizationTitle,
    required String superiorTitle,
    required String superiorText,
    required String text,
  }) =>
      Input$RagRole._({
        r'organizationText': organizationText,
        r'organizationTitle': organizationTitle,
        r'superiorTitle': superiorTitle,
        r'superiorText': superiorText,
        r'text': text,
      });

  Input$RagRole._(this._$data);

  factory Input$RagRole.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$organizationText = data['organizationText'];
    result$data['organizationText'] = (l$organizationText as String);
    final l$organizationTitle = data['organizationTitle'];
    result$data['organizationTitle'] = (l$organizationTitle as String);
    final l$superiorTitle = data['superiorTitle'];
    result$data['superiorTitle'] = (l$superiorTitle as String);
    final l$superiorText = data['superiorText'];
    result$data['superiorText'] = (l$superiorText as String);
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    return Input$RagRole._(result$data);
  }

  Map<String, dynamic> _$data;

  String get organizationText => (_$data['organizationText'] as String);

  String get organizationTitle => (_$data['organizationTitle'] as String);

  String get superiorTitle => (_$data['superiorTitle'] as String);

  String get superiorText => (_$data['superiorText'] as String);

  String get text => (_$data['text'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$organizationText = organizationText;
    result$data['organizationText'] = l$organizationText;
    final l$organizationTitle = organizationTitle;
    result$data['organizationTitle'] = l$organizationTitle;
    final l$superiorTitle = superiorTitle;
    result$data['superiorTitle'] = l$superiorTitle;
    final l$superiorText = superiorText;
    result$data['superiorText'] = l$superiorText;
    final l$text = text;
    result$data['text'] = l$text;
    return result$data;
  }

  CopyWith$Input$RagRole<Input$RagRole> get copyWith => CopyWith$Input$RagRole(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RagRole || runtimeType != other.runtimeType) {
      return false;
    }
    final l$organizationText = organizationText;
    final lOther$organizationText = other.organizationText;
    if (l$organizationText != lOther$organizationText) {
      return false;
    }
    final l$organizationTitle = organizationTitle;
    final lOther$organizationTitle = other.organizationTitle;
    if (l$organizationTitle != lOther$organizationTitle) {
      return false;
    }
    final l$superiorTitle = superiorTitle;
    final lOther$superiorTitle = other.superiorTitle;
    if (l$superiorTitle != lOther$superiorTitle) {
      return false;
    }
    final l$superiorText = superiorText;
    final lOther$superiorText = other.superiorText;
    if (l$superiorText != lOther$superiorText) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$organizationText = organizationText;
    final l$organizationTitle = organizationTitle;
    final l$superiorTitle = superiorTitle;
    final l$superiorText = superiorText;
    final l$text = text;
    return Object.hashAll([
      l$organizationText,
      l$organizationTitle,
      l$superiorTitle,
      l$superiorText,
      l$text,
    ]);
  }
}

abstract class CopyWith$Input$RagRole<TRes> {
  factory CopyWith$Input$RagRole(
    Input$RagRole instance,
    TRes Function(Input$RagRole) then,
  ) = _CopyWithImpl$Input$RagRole;

  factory CopyWith$Input$RagRole.stub(TRes res) =
      _CopyWithStubImpl$Input$RagRole;

  TRes call({
    String? organizationText,
    String? organizationTitle,
    String? superiorTitle,
    String? superiorText,
    String? text,
  });
}

class _CopyWithImpl$Input$RagRole<TRes>
    implements CopyWith$Input$RagRole<TRes> {
  _CopyWithImpl$Input$RagRole(
    this._instance,
    this._then,
  );

  final Input$RagRole _instance;

  final TRes Function(Input$RagRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? organizationText = _undefined,
    Object? organizationTitle = _undefined,
    Object? superiorTitle = _undefined,
    Object? superiorText = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Input$RagRole._({
        ..._instance._$data,
        if (organizationText != _undefined && organizationText != null)
          'organizationText': (organizationText as String),
        if (organizationTitle != _undefined && organizationTitle != null)
          'organizationTitle': (organizationTitle as String),
        if (superiorTitle != _undefined && superiorTitle != null)
          'superiorTitle': (superiorTitle as String),
        if (superiorText != _undefined && superiorText != null)
          'superiorText': (superiorText as String),
        if (text != _undefined && text != null) 'text': (text as String),
      }));
}

class _CopyWithStubImpl$Input$RagRole<TRes>
    implements CopyWith$Input$RagRole<TRes> {
  _CopyWithStubImpl$Input$RagRole(this._res);

  TRes _res;

  call({
    String? organizationText,
    String? organizationTitle,
    String? superiorTitle,
    String? superiorText,
    String? text,
  }) =>
      _res;
}

class Input$RagSceneInput {
  factory Input$RagSceneInput({
    required String text,
    int? startTimeline,
    int? endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<int?>? organizationIDs,
    List<Input$RagCasualties?>? casualties,
  }) =>
      Input$RagSceneInput._({
        r'text': text,
        if (startTimeline != null) r'startTimeline': startTimeline,
        if (endTimeline != null) r'endTimeline': endTimeline,
        if (characterIDs != null) r'characterIDs': characterIDs,
        if (locationIDs != null) r'locationIDs': locationIDs,
        if (conflictIDs != null) r'conflictIDs': conflictIDs,
        if (organizationIDs != null) r'organizationIDs': organizationIDs,
        if (casualties != null) r'casualties': casualties,
      });

  Input$RagSceneInput._(this._$data);

  factory Input$RagSceneInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    if (data.containsKey('startTimeline')) {
      final l$startTimeline = data['startTimeline'];
      result$data['startTimeline'] = (l$startTimeline as int?);
    }
    if (data.containsKey('endTimeline')) {
      final l$endTimeline = data['endTimeline'];
      result$data['endTimeline'] = (l$endTimeline as int?);
    }
    if (data.containsKey('characterIDs')) {
      final l$characterIDs = data['characterIDs'];
      result$data['characterIDs'] =
          (l$characterIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('locationIDs')) {
      final l$locationIDs = data['locationIDs'];
      result$data['locationIDs'] =
          (l$locationIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('conflictIDs')) {
      final l$conflictIDs = data['conflictIDs'];
      result$data['conflictIDs'] =
          (l$conflictIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('organizationIDs')) {
      final l$organizationIDs = data['organizationIDs'];
      result$data['organizationIDs'] = (l$organizationIDs as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('casualties')) {
      final l$casualties = data['casualties'];
      result$data['casualties'] = (l$casualties as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$RagCasualties.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$RagSceneInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get text => (_$data['text'] as String);

  int? get startTimeline => (_$data['startTimeline'] as int?);

  int? get endTimeline => (_$data['endTimeline'] as int?);

  List<int?>? get characterIDs => (_$data['characterIDs'] as List<int?>?);

  List<int?>? get locationIDs => (_$data['locationIDs'] as List<int?>?);

  List<int?>? get conflictIDs => (_$data['conflictIDs'] as List<int?>?);

  List<int?>? get organizationIDs => (_$data['organizationIDs'] as List<int?>?);

  List<Input$RagCasualties?>? get casualties =>
      (_$data['casualties'] as List<Input$RagCasualties?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$text = text;
    result$data['text'] = l$text;
    if (_$data.containsKey('startTimeline')) {
      final l$startTimeline = startTimeline;
      result$data['startTimeline'] = l$startTimeline;
    }
    if (_$data.containsKey('endTimeline')) {
      final l$endTimeline = endTimeline;
      result$data['endTimeline'] = l$endTimeline;
    }
    if (_$data.containsKey('characterIDs')) {
      final l$characterIDs = characterIDs;
      result$data['characterIDs'] = l$characterIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('locationIDs')) {
      final l$locationIDs = locationIDs;
      result$data['locationIDs'] = l$locationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('conflictIDs')) {
      final l$conflictIDs = conflictIDs;
      result$data['conflictIDs'] = l$conflictIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('organizationIDs')) {
      final l$organizationIDs = organizationIDs;
      result$data['organizationIDs'] =
          l$organizationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('casualties')) {
      final l$casualties = casualties;
      result$data['casualties'] =
          l$casualties?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$RagSceneInput<Input$RagSceneInput> get copyWith =>
      CopyWith$Input$RagSceneInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RagSceneInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$startTimeline = startTimeline;
    final lOther$startTimeline = other.startTimeline;
    if (_$data.containsKey('startTimeline') !=
        other._$data.containsKey('startTimeline')) {
      return false;
    }
    if (l$startTimeline != lOther$startTimeline) {
      return false;
    }
    final l$endTimeline = endTimeline;
    final lOther$endTimeline = other.endTimeline;
    if (_$data.containsKey('endTimeline') !=
        other._$data.containsKey('endTimeline')) {
      return false;
    }
    if (l$endTimeline != lOther$endTimeline) {
      return false;
    }
    final l$characterIDs = characterIDs;
    final lOther$characterIDs = other.characterIDs;
    if (_$data.containsKey('characterIDs') !=
        other._$data.containsKey('characterIDs')) {
      return false;
    }
    if (l$characterIDs != null && lOther$characterIDs != null) {
      if (l$characterIDs.length != lOther$characterIDs.length) {
        return false;
      }
      for (int i = 0; i < l$characterIDs.length; i++) {
        final l$characterIDs$entry = l$characterIDs[i];
        final lOther$characterIDs$entry = lOther$characterIDs[i];
        if (l$characterIDs$entry != lOther$characterIDs$entry) {
          return false;
        }
      }
    } else if (l$characterIDs != lOther$characterIDs) {
      return false;
    }
    final l$locationIDs = locationIDs;
    final lOther$locationIDs = other.locationIDs;
    if (_$data.containsKey('locationIDs') !=
        other._$data.containsKey('locationIDs')) {
      return false;
    }
    if (l$locationIDs != null && lOther$locationIDs != null) {
      if (l$locationIDs.length != lOther$locationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$locationIDs.length; i++) {
        final l$locationIDs$entry = l$locationIDs[i];
        final lOther$locationIDs$entry = lOther$locationIDs[i];
        if (l$locationIDs$entry != lOther$locationIDs$entry) {
          return false;
        }
      }
    } else if (l$locationIDs != lOther$locationIDs) {
      return false;
    }
    final l$conflictIDs = conflictIDs;
    final lOther$conflictIDs = other.conflictIDs;
    if (_$data.containsKey('conflictIDs') !=
        other._$data.containsKey('conflictIDs')) {
      return false;
    }
    if (l$conflictIDs != null && lOther$conflictIDs != null) {
      if (l$conflictIDs.length != lOther$conflictIDs.length) {
        return false;
      }
      for (int i = 0; i < l$conflictIDs.length; i++) {
        final l$conflictIDs$entry = l$conflictIDs[i];
        final lOther$conflictIDs$entry = lOther$conflictIDs[i];
        if (l$conflictIDs$entry != lOther$conflictIDs$entry) {
          return false;
        }
      }
    } else if (l$conflictIDs != lOther$conflictIDs) {
      return false;
    }
    final l$organizationIDs = organizationIDs;
    final lOther$organizationIDs = other.organizationIDs;
    if (_$data.containsKey('organizationIDs') !=
        other._$data.containsKey('organizationIDs')) {
      return false;
    }
    if (l$organizationIDs != null && lOther$organizationIDs != null) {
      if (l$organizationIDs.length != lOther$organizationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$organizationIDs.length; i++) {
        final l$organizationIDs$entry = l$organizationIDs[i];
        final lOther$organizationIDs$entry = lOther$organizationIDs[i];
        if (l$organizationIDs$entry != lOther$organizationIDs$entry) {
          return false;
        }
      }
    } else if (l$organizationIDs != lOther$organizationIDs) {
      return false;
    }
    final l$casualties = casualties;
    final lOther$casualties = other.casualties;
    if (_$data.containsKey('casualties') !=
        other._$data.containsKey('casualties')) {
      return false;
    }
    if (l$casualties != null && lOther$casualties != null) {
      if (l$casualties.length != lOther$casualties.length) {
        return false;
      }
      for (int i = 0; i < l$casualties.length; i++) {
        final l$casualties$entry = l$casualties[i];
        final lOther$casualties$entry = lOther$casualties[i];
        if (l$casualties$entry != lOther$casualties$entry) {
          return false;
        }
      }
    } else if (l$casualties != lOther$casualties) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$startTimeline = startTimeline;
    final l$endTimeline = endTimeline;
    final l$characterIDs = characterIDs;
    final l$locationIDs = locationIDs;
    final l$conflictIDs = conflictIDs;
    final l$organizationIDs = organizationIDs;
    final l$casualties = casualties;
    return Object.hashAll([
      l$text,
      _$data.containsKey('startTimeline') ? l$startTimeline : const {},
      _$data.containsKey('endTimeline') ? l$endTimeline : const {},
      _$data.containsKey('characterIDs')
          ? l$characterIDs == null
              ? null
              : Object.hashAll(l$characterIDs.map((v) => v))
          : const {},
      _$data.containsKey('locationIDs')
          ? l$locationIDs == null
              ? null
              : Object.hashAll(l$locationIDs.map((v) => v))
          : const {},
      _$data.containsKey('conflictIDs')
          ? l$conflictIDs == null
              ? null
              : Object.hashAll(l$conflictIDs.map((v) => v))
          : const {},
      _$data.containsKey('organizationIDs')
          ? l$organizationIDs == null
              ? null
              : Object.hashAll(l$organizationIDs.map((v) => v))
          : const {},
      _$data.containsKey('casualties')
          ? l$casualties == null
              ? null
              : Object.hashAll(l$casualties.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$RagSceneInput<TRes> {
  factory CopyWith$Input$RagSceneInput(
    Input$RagSceneInput instance,
    TRes Function(Input$RagSceneInput) then,
  ) = _CopyWithImpl$Input$RagSceneInput;

  factory CopyWith$Input$RagSceneInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RagSceneInput;

  TRes call({
    String? text,
    int? startTimeline,
    int? endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<int?>? organizationIDs,
    List<Input$RagCasualties?>? casualties,
  });
  TRes casualties(
      Iterable<Input$RagCasualties?>? Function(
              Iterable<CopyWith$Input$RagCasualties<Input$RagCasualties>?>?)
          _fn);
}

class _CopyWithImpl$Input$RagSceneInput<TRes>
    implements CopyWith$Input$RagSceneInput<TRes> {
  _CopyWithImpl$Input$RagSceneInput(
    this._instance,
    this._then,
  );

  final Input$RagSceneInput _instance;

  final TRes Function(Input$RagSceneInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? startTimeline = _undefined,
    Object? endTimeline = _undefined,
    Object? characterIDs = _undefined,
    Object? locationIDs = _undefined,
    Object? conflictIDs = _undefined,
    Object? organizationIDs = _undefined,
    Object? casualties = _undefined,
  }) =>
      _then(Input$RagSceneInput._({
        ..._instance._$data,
        if (text != _undefined && text != null) 'text': (text as String),
        if (startTimeline != _undefined)
          'startTimeline': (startTimeline as int?),
        if (endTimeline != _undefined) 'endTimeline': (endTimeline as int?),
        if (characterIDs != _undefined)
          'characterIDs': (characterIDs as List<int?>?),
        if (locationIDs != _undefined)
          'locationIDs': (locationIDs as List<int?>?),
        if (conflictIDs != _undefined)
          'conflictIDs': (conflictIDs as List<int?>?),
        if (organizationIDs != _undefined)
          'organizationIDs': (organizationIDs as List<int?>?),
        if (casualties != _undefined)
          'casualties': (casualties as List<Input$RagCasualties?>?),
      }));

  TRes casualties(
          Iterable<Input$RagCasualties?>? Function(
                  Iterable<CopyWith$Input$RagCasualties<Input$RagCasualties>?>?)
              _fn) =>
      call(
          casualties: _fn(_instance.casualties?.map((e) => e == null
              ? null
              : CopyWith$Input$RagCasualties(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$RagSceneInput<TRes>
    implements CopyWith$Input$RagSceneInput<TRes> {
  _CopyWithStubImpl$Input$RagSceneInput(this._res);

  TRes _res;

  call({
    String? text,
    int? startTimeline,
    int? endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<int?>? organizationIDs,
    List<Input$RagCasualties?>? casualties,
  }) =>
      _res;

  casualties(_fn) => _res;
}

class Input$RefreshInput {
  factory Input$RefreshInput({required String refreshToken}) =>
      Input$RefreshInput._({
        r'refreshToken': refreshToken,
      });

  Input$RefreshInput._(this._$data);

  factory Input$RefreshInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$refreshToken = data['refreshToken'];
    result$data['refreshToken'] = (l$refreshToken as String);
    return Input$RefreshInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get refreshToken => (_$data['refreshToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    result$data['refreshToken'] = l$refreshToken;
    return result$data;
  }

  CopyWith$Input$RefreshInput<Input$RefreshInput> get copyWith =>
      CopyWith$Input$RefreshInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RefreshInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$RefreshInput<TRes> {
  factory CopyWith$Input$RefreshInput(
    Input$RefreshInput instance,
    TRes Function(Input$RefreshInput) then,
  ) = _CopyWithImpl$Input$RefreshInput;

  factory CopyWith$Input$RefreshInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RefreshInput;

  TRes call({String? refreshToken});
}

class _CopyWithImpl$Input$RefreshInput<TRes>
    implements CopyWith$Input$RefreshInput<TRes> {
  _CopyWithImpl$Input$RefreshInput(
    this._instance,
    this._then,
  );

  final Input$RefreshInput _instance;

  final TRes Function(Input$RefreshInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? refreshToken = _undefined}) => _then(Input$RefreshInput._({
        ..._instance._$data,
        if (refreshToken != _undefined && refreshToken != null)
          'refreshToken': (refreshToken as String),
      }));
}

class _CopyWithStubImpl$Input$RefreshInput<TRes>
    implements CopyWith$Input$RefreshInput<TRes> {
  _CopyWithStubImpl$Input$RefreshInput(this._res);

  TRes _res;

  call({String? refreshToken}) => _res;
}

class Input$RegisterInput {
  factory Input$RegisterInput({
    required String email,
    required String password,
    required String username,
  }) =>
      Input$RegisterInput._({
        r'email': email,
        r'password': password,
        r'username': username,
      });

  Input$RegisterInput._(this._$data);

  factory Input$RegisterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Input$RegisterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  String get username => (_$data['username'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Input$RegisterInput<Input$RegisterInput> get copyWith =>
      CopyWith$Input$RegisterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RegisterInput || runtimeType != other.runtimeType) {
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
    final l$username = username;
    final lOther$username = other.username;
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
      l$email,
      l$password,
      l$username,
    ]);
  }
}

abstract class CopyWith$Input$RegisterInput<TRes> {
  factory CopyWith$Input$RegisterInput(
    Input$RegisterInput instance,
    TRes Function(Input$RegisterInput) then,
  ) = _CopyWithImpl$Input$RegisterInput;

  factory CopyWith$Input$RegisterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RegisterInput;

  TRes call({
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Input$RegisterInput<TRes>
    implements CopyWith$Input$RegisterInput<TRes> {
  _CopyWithImpl$Input$RegisterInput(
    this._instance,
    this._then,
  );

  final Input$RegisterInput _instance;

  final TRes Function(Input$RegisterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input$RegisterInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Input$RegisterInput<TRes>
    implements CopyWith$Input$RegisterInput<TRes> {
  _CopyWithStubImpl$Input$RegisterInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Input$RFileInput {
  factory Input$RFileInput({required int id}) => Input$RFileInput._({
        r'id': id,
      });

  Input$RFileInput._(this._$data);

  factory Input$RFileInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$RFileInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$RFileInput<Input$RFileInput> get copyWith =>
      CopyWith$Input$RFileInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RFileInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$RFileInput<TRes> {
  factory CopyWith$Input$RFileInput(
    Input$RFileInput instance,
    TRes Function(Input$RFileInput) then,
  ) = _CopyWithImpl$Input$RFileInput;

  factory CopyWith$Input$RFileInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RFileInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$RFileInput<TRes>
    implements CopyWith$Input$RFileInput<TRes> {
  _CopyWithImpl$Input$RFileInput(
    this._instance,
    this._then,
  );

  final Input$RFileInput _instance;

  final TRes Function(Input$RFileInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$RFileInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$RFileInput<TRes>
    implements CopyWith$Input$RFileInput<TRes> {
  _CopyWithStubImpl$Input$RFileInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$SceneCasualtiesInput {
  factory Input$SceneCasualtiesInput({
    required int casualties,
    required int shipID,
  }) =>
      Input$SceneCasualtiesInput._({
        r'casualties': casualties,
        r'shipID': shipID,
      });

  Input$SceneCasualtiesInput._(this._$data);

  factory Input$SceneCasualtiesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$casualties = data['casualties'];
    result$data['casualties'] = (l$casualties as int);
    final l$shipID = data['shipID'];
    result$data['shipID'] = (l$shipID as int);
    return Input$SceneCasualtiesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get casualties => (_$data['casualties'] as int);

  int get shipID => (_$data['shipID'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$casualties = casualties;
    result$data['casualties'] = l$casualties;
    final l$shipID = shipID;
    result$data['shipID'] = l$shipID;
    return result$data;
  }

  CopyWith$Input$SceneCasualtiesInput<Input$SceneCasualtiesInput>
      get copyWith => CopyWith$Input$SceneCasualtiesInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SceneCasualtiesInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$casualties = casualties;
    final lOther$casualties = other.casualties;
    if (l$casualties != lOther$casualties) {
      return false;
    }
    final l$shipID = shipID;
    final lOther$shipID = other.shipID;
    if (l$shipID != lOther$shipID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$casualties = casualties;
    final l$shipID = shipID;
    return Object.hashAll([
      l$casualties,
      l$shipID,
    ]);
  }
}

abstract class CopyWith$Input$SceneCasualtiesInput<TRes> {
  factory CopyWith$Input$SceneCasualtiesInput(
    Input$SceneCasualtiesInput instance,
    TRes Function(Input$SceneCasualtiesInput) then,
  ) = _CopyWithImpl$Input$SceneCasualtiesInput;

  factory CopyWith$Input$SceneCasualtiesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SceneCasualtiesInput;

  TRes call({
    int? casualties,
    int? shipID,
  });
}

class _CopyWithImpl$Input$SceneCasualtiesInput<TRes>
    implements CopyWith$Input$SceneCasualtiesInput<TRes> {
  _CopyWithImpl$Input$SceneCasualtiesInput(
    this._instance,
    this._then,
  );

  final Input$SceneCasualtiesInput _instance;

  final TRes Function(Input$SceneCasualtiesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? casualties = _undefined,
    Object? shipID = _undefined,
  }) =>
      _then(Input$SceneCasualtiesInput._({
        ..._instance._$data,
        if (casualties != _undefined && casualties != null)
          'casualties': (casualties as int),
        if (shipID != _undefined && shipID != null) 'shipID': (shipID as int),
      }));
}

class _CopyWithStubImpl$Input$SceneCasualtiesInput<TRes>
    implements CopyWith$Input$SceneCasualtiesInput<TRes> {
  _CopyWithStubImpl$Input$SceneCasualtiesInput(this._res);

  TRes _res;

  call({
    int? casualties,
    int? shipID,
  }) =>
      _res;
}

class Input$StoryFilterInput {
  factory Input$StoryFilterInput({
    bool? cannon,
    String? user,
    int? limit,
    int? offset,
  }) =>
      Input$StoryFilterInput._({
        if (cannon != null) r'cannon': cannon,
        if (user != null) r'user': user,
        if (limit != null) r'limit': limit,
        if (offset != null) r'offset': offset,
      });

  Input$StoryFilterInput._(this._$data);

  factory Input$StoryFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cannon')) {
      final l$cannon = data['cannon'];
      result$data['cannon'] = (l$cannon as bool?);
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = (l$user as String?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Input$StoryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get cannon => (_$data['cannon'] as bool?);

  String? get user => (_$data['user'] as String?);

  int? get limit => (_$data['limit'] as int?);

  int? get offset => (_$data['offset'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cannon')) {
      final l$cannon = cannon;
      result$data['cannon'] = l$cannon;
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    return result$data;
  }

  CopyWith$Input$StoryFilterInput<Input$StoryFilterInput> get copyWith =>
      CopyWith$Input$StoryFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$StoryFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cannon = cannon;
    final lOther$cannon = other.cannon;
    if (_$data.containsKey('cannon') != other._$data.containsKey('cannon')) {
      return false;
    }
    if (l$cannon != lOther$cannon) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cannon = cannon;
    final l$user = user;
    final l$limit = limit;
    final l$offset = offset;
    return Object.hashAll([
      _$data.containsKey('cannon') ? l$cannon : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('offset') ? l$offset : const {},
    ]);
  }
}

abstract class CopyWith$Input$StoryFilterInput<TRes> {
  factory CopyWith$Input$StoryFilterInput(
    Input$StoryFilterInput instance,
    TRes Function(Input$StoryFilterInput) then,
  ) = _CopyWithImpl$Input$StoryFilterInput;

  factory CopyWith$Input$StoryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StoryFilterInput;

  TRes call({
    bool? cannon,
    String? user,
    int? limit,
    int? offset,
  });
}

class _CopyWithImpl$Input$StoryFilterInput<TRes>
    implements CopyWith$Input$StoryFilterInput<TRes> {
  _CopyWithImpl$Input$StoryFilterInput(
    this._instance,
    this._then,
  );

  final Input$StoryFilterInput _instance;

  final TRes Function(Input$StoryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cannon = _undefined,
    Object? user = _undefined,
    Object? limit = _undefined,
    Object? offset = _undefined,
  }) =>
      _then(Input$StoryFilterInput._({
        ..._instance._$data,
        if (cannon != _undefined) 'cannon': (cannon as bool?),
        if (user != _undefined) 'user': (user as String?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Input$StoryFilterInput<TRes>
    implements CopyWith$Input$StoryFilterInput<TRes> {
  _CopyWithStubImpl$Input$StoryFilterInput(this._res);

  TRes _res;

  call({
    bool? cannon,
    String? user,
    int? limit,
    int? offset,
  }) =>
      _res;
}

class Input$UpdateCharacterInput {
  factory Input$UpdateCharacterInput({
    required int id,
    String? title,
    String? text,
    List<int?>? roleIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$UpdateCharacterInput._({
        r'id': id,
        if (title != null) r'title': title,
        if (text != null) r'text': text,
        if (roleIDs != null) r'roleIDs': roleIDs,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$UpdateCharacterInput._(this._$data);

  factory Input$UpdateCharacterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('roleIDs')) {
      final l$roleIDs = data['roleIDs'];
      result$data['roleIDs'] =
          (l$roleIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateCharacterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get title => (_$data['title'] as String?);

  String? get text => (_$data['text'] as String?);

  List<int?>? get roleIDs => (_$data['roleIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('roleIDs')) {
      final l$roleIDs = roleIDs;
      result$data['roleIDs'] = l$roleIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateCharacterInput<Input$UpdateCharacterInput>
      get copyWith => CopyWith$Input$UpdateCharacterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateCharacterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$roleIDs = roleIDs;
    final lOther$roleIDs = other.roleIDs;
    if (_$data.containsKey('roleIDs') != other._$data.containsKey('roleIDs')) {
      return false;
    }
    if (l$roleIDs != null && lOther$roleIDs != null) {
      if (l$roleIDs.length != lOther$roleIDs.length) {
        return false;
      }
      for (int i = 0; i < l$roleIDs.length; i++) {
        final l$roleIDs$entry = l$roleIDs[i];
        final lOther$roleIDs$entry = lOther$roleIDs[i];
        if (l$roleIDs$entry != lOther$roleIDs$entry) {
          return false;
        }
      }
    } else if (l$roleIDs != lOther$roleIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$text = text;
    final l$roleIDs = roleIDs;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('roleIDs')
          ? l$roleIDs == null
              ? null
              : Object.hashAll(l$roleIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateCharacterInput<TRes> {
  factory CopyWith$Input$UpdateCharacterInput(
    Input$UpdateCharacterInput instance,
    TRes Function(Input$UpdateCharacterInput) then,
  ) = _CopyWithImpl$Input$UpdateCharacterInput;

  factory CopyWith$Input$UpdateCharacterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateCharacterInput;

  TRes call({
    int? id,
    String? title,
    String? text,
    List<int?>? roleIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateCharacterInput<TRes>
    implements CopyWith$Input$UpdateCharacterInput<TRes> {
  _CopyWithImpl$Input$UpdateCharacterInput(
    this._instance,
    this._then,
  );

  final Input$UpdateCharacterInput _instance;

  final TRes Function(Input$UpdateCharacterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? roleIDs = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$UpdateCharacterInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (title != _undefined) 'title': (title as String?),
        if (text != _undefined) 'text': (text as String?),
        if (roleIDs != _undefined) 'roleIDs': (roleIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateCharacterInput<TRes>
    implements CopyWith$Input$UpdateCharacterInput<TRes> {
  _CopyWithStubImpl$Input$UpdateCharacterInput(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? text,
    List<int?>? roleIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$UpdateConflictInput {
  factory Input$UpdateConflictInput({
    required int id,
    String? title,
    String? text,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$UpdateConflictInput._({
        r'id': id,
        if (title != null) r'title': title,
        if (text != null) r'text': text,
        if (organizationIDs != null) r'organizationIDs': organizationIDs,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$UpdateConflictInput._(this._$data);

  factory Input$UpdateConflictInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('organizationIDs')) {
      final l$organizationIDs = data['organizationIDs'];
      result$data['organizationIDs'] = (l$organizationIDs as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateConflictInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get title => (_$data['title'] as String?);

  String? get text => (_$data['text'] as String?);

  List<int?>? get organizationIDs => (_$data['organizationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('organizationIDs')) {
      final l$organizationIDs = organizationIDs;
      result$data['organizationIDs'] =
          l$organizationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateConflictInput<Input$UpdateConflictInput> get copyWith =>
      CopyWith$Input$UpdateConflictInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateConflictInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$organizationIDs = organizationIDs;
    final lOther$organizationIDs = other.organizationIDs;
    if (_$data.containsKey('organizationIDs') !=
        other._$data.containsKey('organizationIDs')) {
      return false;
    }
    if (l$organizationIDs != null && lOther$organizationIDs != null) {
      if (l$organizationIDs.length != lOther$organizationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$organizationIDs.length; i++) {
        final l$organizationIDs$entry = l$organizationIDs[i];
        final lOther$organizationIDs$entry = lOther$organizationIDs[i];
        if (l$organizationIDs$entry != lOther$organizationIDs$entry) {
          return false;
        }
      }
    } else if (l$organizationIDs != lOther$organizationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$text = text;
    final l$organizationIDs = organizationIDs;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('organizationIDs')
          ? l$organizationIDs == null
              ? null
              : Object.hashAll(l$organizationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateConflictInput<TRes> {
  factory CopyWith$Input$UpdateConflictInput(
    Input$UpdateConflictInput instance,
    TRes Function(Input$UpdateConflictInput) then,
  ) = _CopyWithImpl$Input$UpdateConflictInput;

  factory CopyWith$Input$UpdateConflictInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateConflictInput;

  TRes call({
    int? id,
    String? title,
    String? text,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateConflictInput<TRes>
    implements CopyWith$Input$UpdateConflictInput<TRes> {
  _CopyWithImpl$Input$UpdateConflictInput(
    this._instance,
    this._then,
  );

  final Input$UpdateConflictInput _instance;

  final TRes Function(Input$UpdateConflictInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? organizationIDs = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$UpdateConflictInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (title != _undefined) 'title': (title as String?),
        if (text != _undefined) 'text': (text as String?),
        if (organizationIDs != _undefined)
          'organizationIDs': (organizationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateConflictInput<TRes>
    implements CopyWith$Input$UpdateConflictInput<TRes> {
  _CopyWithStubImpl$Input$UpdateConflictInput(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? text,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$UpdateInput {
  factory Input$UpdateInput({
    String? email,
    String? password,
    String? username,
  }) =>
      Input$UpdateInput._({
        if (email != null) r'email': email,
        if (password != null) r'password': password,
        if (username != null) r'username': username,
      });

  Input$UpdateInput._(this._$data);

  factory Input$UpdateInput.fromJson(Map<String, dynamic> data) {
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
    return Input$UpdateInput._(result$data);
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

  CopyWith$Input$UpdateInput<Input$UpdateInput> get copyWith =>
      CopyWith$Input$UpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$UpdateInput<TRes> {
  factory CopyWith$Input$UpdateInput(
    Input$UpdateInput instance,
    TRes Function(Input$UpdateInput) then,
  ) = _CopyWithImpl$Input$UpdateInput;

  factory CopyWith$Input$UpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateInput;

  TRes call({
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Input$UpdateInput<TRes>
    implements CopyWith$Input$UpdateInput<TRes> {
  _CopyWithImpl$Input$UpdateInput(
    this._instance,
    this._then,
  );

  final Input$UpdateInput _instance;

  final TRes Function(Input$UpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input$UpdateInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (password != _undefined) 'password': (password as String?),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateInput<TRes>
    implements CopyWith$Input$UpdateInput<TRes> {
  _CopyWithStubImpl$Input$UpdateInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Input$UpdateLocationInput {
  factory Input$UpdateLocationInput({
    required int id,
    String? title,
    String? text,
    int? shipID,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$UpdateLocationInput._({
        r'id': id,
        if (title != null) r'title': title,
        if (text != null) r'text': text,
        if (shipID != null) r'shipID': shipID,
        if (organizationIDs != null) r'organizationIDs': organizationIDs,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$UpdateLocationInput._(this._$data);

  factory Input$UpdateLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('shipID')) {
      final l$shipID = data['shipID'];
      result$data['shipID'] = (l$shipID as int?);
    }
    if (data.containsKey('organizationIDs')) {
      final l$organizationIDs = data['organizationIDs'];
      result$data['organizationIDs'] = (l$organizationIDs as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get title => (_$data['title'] as String?);

  String? get text => (_$data['text'] as String?);

  int? get shipID => (_$data['shipID'] as int?);

  List<int?>? get organizationIDs => (_$data['organizationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('shipID')) {
      final l$shipID = shipID;
      result$data['shipID'] = l$shipID;
    }
    if (_$data.containsKey('organizationIDs')) {
      final l$organizationIDs = organizationIDs;
      result$data['organizationIDs'] =
          l$organizationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateLocationInput<Input$UpdateLocationInput> get copyWith =>
      CopyWith$Input$UpdateLocationInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateLocationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$shipID = shipID;
    final lOther$shipID = other.shipID;
    if (_$data.containsKey('shipID') != other._$data.containsKey('shipID')) {
      return false;
    }
    if (l$shipID != lOther$shipID) {
      return false;
    }
    final l$organizationIDs = organizationIDs;
    final lOther$organizationIDs = other.organizationIDs;
    if (_$data.containsKey('organizationIDs') !=
        other._$data.containsKey('organizationIDs')) {
      return false;
    }
    if (l$organizationIDs != null && lOther$organizationIDs != null) {
      if (l$organizationIDs.length != lOther$organizationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$organizationIDs.length; i++) {
        final l$organizationIDs$entry = l$organizationIDs[i];
        final lOther$organizationIDs$entry = lOther$organizationIDs[i];
        if (l$organizationIDs$entry != lOther$organizationIDs$entry) {
          return false;
        }
      }
    } else if (l$organizationIDs != lOther$organizationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$text = text;
    final l$shipID = shipID;
    final l$organizationIDs = organizationIDs;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('shipID') ? l$shipID : const {},
      _$data.containsKey('organizationIDs')
          ? l$organizationIDs == null
              ? null
              : Object.hashAll(l$organizationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateLocationInput<TRes> {
  factory CopyWith$Input$UpdateLocationInput(
    Input$UpdateLocationInput instance,
    TRes Function(Input$UpdateLocationInput) then,
  ) = _CopyWithImpl$Input$UpdateLocationInput;

  factory CopyWith$Input$UpdateLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateLocationInput;

  TRes call({
    int? id,
    String? title,
    String? text,
    int? shipID,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateLocationInput<TRes>
    implements CopyWith$Input$UpdateLocationInput<TRes> {
  _CopyWithImpl$Input$UpdateLocationInput(
    this._instance,
    this._then,
  );

  final Input$UpdateLocationInput _instance;

  final TRes Function(Input$UpdateLocationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? shipID = _undefined,
    Object? organizationIDs = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$UpdateLocationInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (title != _undefined) 'title': (title as String?),
        if (text != _undefined) 'text': (text as String?),
        if (shipID != _undefined) 'shipID': (shipID as int?),
        if (organizationIDs != _undefined)
          'organizationIDs': (organizationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateLocationInput<TRes>
    implements CopyWith$Input$UpdateLocationInput<TRes> {
  _CopyWithStubImpl$Input$UpdateLocationInput(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? text,
    int? shipID,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$UpdateOrganizationInput {
  factory Input$UpdateOrganizationInput({
    required int id,
    String? title,
    String? text,
    List<Input$CreateRoleInput?>? rolesCreate,
    List<int>? rolesDelete,
    List<int?>? conflictIDs,
    int? headquartersID,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$UpdateOrganizationInput._({
        r'id': id,
        if (title != null) r'title': title,
        if (text != null) r'text': text,
        if (rolesCreate != null) r'rolesCreate': rolesCreate,
        if (rolesDelete != null) r'rolesDelete': rolesDelete,
        if (conflictIDs != null) r'conflictIDs': conflictIDs,
        if (headquartersID != null) r'headquartersID': headquartersID,
        if (locationIDs != null) r'locationIDs': locationIDs,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$UpdateOrganizationInput._(this._$data);

  factory Input$UpdateOrganizationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('rolesCreate')) {
      final l$rolesCreate = data['rolesCreate'];
      result$data['rolesCreate'] = (l$rolesCreate as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$CreateRoleInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rolesDelete')) {
      final l$rolesDelete = data['rolesDelete'];
      result$data['rolesDelete'] =
          (l$rolesDelete as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('conflictIDs')) {
      final l$conflictIDs = data['conflictIDs'];
      result$data['conflictIDs'] =
          (l$conflictIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('headquartersID')) {
      final l$headquartersID = data['headquartersID'];
      result$data['headquartersID'] = (l$headquartersID as int?);
    }
    if (data.containsKey('locationIDs')) {
      final l$locationIDs = data['locationIDs'];
      result$data['locationIDs'] =
          (l$locationIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateOrganizationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get title => (_$data['title'] as String?);

  String? get text => (_$data['text'] as String?);

  List<Input$CreateRoleInput?>? get rolesCreate =>
      (_$data['rolesCreate'] as List<Input$CreateRoleInput?>?);

  List<int>? get rolesDelete => (_$data['rolesDelete'] as List<int>?);

  List<int?>? get conflictIDs => (_$data['conflictIDs'] as List<int?>?);

  int? get headquartersID => (_$data['headquartersID'] as int?);

  List<int?>? get locationIDs => (_$data['locationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('rolesCreate')) {
      final l$rolesCreate = rolesCreate;
      result$data['rolesCreate'] =
          l$rolesCreate?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rolesDelete')) {
      final l$rolesDelete = rolesDelete;
      result$data['rolesDelete'] = l$rolesDelete?.map((e) => e).toList();
    }
    if (_$data.containsKey('conflictIDs')) {
      final l$conflictIDs = conflictIDs;
      result$data['conflictIDs'] = l$conflictIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('headquartersID')) {
      final l$headquartersID = headquartersID;
      result$data['headquartersID'] = l$headquartersID;
    }
    if (_$data.containsKey('locationIDs')) {
      final l$locationIDs = locationIDs;
      result$data['locationIDs'] = l$locationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateOrganizationInput<Input$UpdateOrganizationInput>
      get copyWith => CopyWith$Input$UpdateOrganizationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOrganizationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$rolesCreate = rolesCreate;
    final lOther$rolesCreate = other.rolesCreate;
    if (_$data.containsKey('rolesCreate') !=
        other._$data.containsKey('rolesCreate')) {
      return false;
    }
    if (l$rolesCreate != null && lOther$rolesCreate != null) {
      if (l$rolesCreate.length != lOther$rolesCreate.length) {
        return false;
      }
      for (int i = 0; i < l$rolesCreate.length; i++) {
        final l$rolesCreate$entry = l$rolesCreate[i];
        final lOther$rolesCreate$entry = lOther$rolesCreate[i];
        if (l$rolesCreate$entry != lOther$rolesCreate$entry) {
          return false;
        }
      }
    } else if (l$rolesCreate != lOther$rolesCreate) {
      return false;
    }
    final l$rolesDelete = rolesDelete;
    final lOther$rolesDelete = other.rolesDelete;
    if (_$data.containsKey('rolesDelete') !=
        other._$data.containsKey('rolesDelete')) {
      return false;
    }
    if (l$rolesDelete != null && lOther$rolesDelete != null) {
      if (l$rolesDelete.length != lOther$rolesDelete.length) {
        return false;
      }
      for (int i = 0; i < l$rolesDelete.length; i++) {
        final l$rolesDelete$entry = l$rolesDelete[i];
        final lOther$rolesDelete$entry = lOther$rolesDelete[i];
        if (l$rolesDelete$entry != lOther$rolesDelete$entry) {
          return false;
        }
      }
    } else if (l$rolesDelete != lOther$rolesDelete) {
      return false;
    }
    final l$conflictIDs = conflictIDs;
    final lOther$conflictIDs = other.conflictIDs;
    if (_$data.containsKey('conflictIDs') !=
        other._$data.containsKey('conflictIDs')) {
      return false;
    }
    if (l$conflictIDs != null && lOther$conflictIDs != null) {
      if (l$conflictIDs.length != lOther$conflictIDs.length) {
        return false;
      }
      for (int i = 0; i < l$conflictIDs.length; i++) {
        final l$conflictIDs$entry = l$conflictIDs[i];
        final lOther$conflictIDs$entry = lOther$conflictIDs[i];
        if (l$conflictIDs$entry != lOther$conflictIDs$entry) {
          return false;
        }
      }
    } else if (l$conflictIDs != lOther$conflictIDs) {
      return false;
    }
    final l$headquartersID = headquartersID;
    final lOther$headquartersID = other.headquartersID;
    if (_$data.containsKey('headquartersID') !=
        other._$data.containsKey('headquartersID')) {
      return false;
    }
    if (l$headquartersID != lOther$headquartersID) {
      return false;
    }
    final l$locationIDs = locationIDs;
    final lOther$locationIDs = other.locationIDs;
    if (_$data.containsKey('locationIDs') !=
        other._$data.containsKey('locationIDs')) {
      return false;
    }
    if (l$locationIDs != null && lOther$locationIDs != null) {
      if (l$locationIDs.length != lOther$locationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$locationIDs.length; i++) {
        final l$locationIDs$entry = l$locationIDs[i];
        final lOther$locationIDs$entry = lOther$locationIDs[i];
        if (l$locationIDs$entry != lOther$locationIDs$entry) {
          return false;
        }
      }
    } else if (l$locationIDs != lOther$locationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$text = text;
    final l$rolesCreate = rolesCreate;
    final l$rolesDelete = rolesDelete;
    final l$conflictIDs = conflictIDs;
    final l$headquartersID = headquartersID;
    final l$locationIDs = locationIDs;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('rolesCreate')
          ? l$rolesCreate == null
              ? null
              : Object.hashAll(l$rolesCreate.map((v) => v))
          : const {},
      _$data.containsKey('rolesDelete')
          ? l$rolesDelete == null
              ? null
              : Object.hashAll(l$rolesDelete.map((v) => v))
          : const {},
      _$data.containsKey('conflictIDs')
          ? l$conflictIDs == null
              ? null
              : Object.hashAll(l$conflictIDs.map((v) => v))
          : const {},
      _$data.containsKey('headquartersID') ? l$headquartersID : const {},
      _$data.containsKey('locationIDs')
          ? l$locationIDs == null
              ? null
              : Object.hashAll(l$locationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateOrganizationInput<TRes> {
  factory CopyWith$Input$UpdateOrganizationInput(
    Input$UpdateOrganizationInput instance,
    TRes Function(Input$UpdateOrganizationInput) then,
  ) = _CopyWithImpl$Input$UpdateOrganizationInput;

  factory CopyWith$Input$UpdateOrganizationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrganizationInput;

  TRes call({
    int? id,
    String? title,
    String? text,
    List<Input$CreateRoleInput?>? rolesCreate,
    List<int>? rolesDelete,
    List<int?>? conflictIDs,
    int? headquartersID,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes rolesCreate(
      Iterable<Input$CreateRoleInput?>? Function(
              Iterable<CopyWith$Input$CreateRoleInput<Input$CreateRoleInput>?>?)
          _fn);
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateOrganizationInput<TRes>
    implements CopyWith$Input$UpdateOrganizationInput<TRes> {
  _CopyWithImpl$Input$UpdateOrganizationInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOrganizationInput _instance;

  final TRes Function(Input$UpdateOrganizationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? rolesCreate = _undefined,
    Object? rolesDelete = _undefined,
    Object? conflictIDs = _undefined,
    Object? headquartersID = _undefined,
    Object? locationIDs = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$UpdateOrganizationInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (title != _undefined) 'title': (title as String?),
        if (text != _undefined) 'text': (text as String?),
        if (rolesCreate != _undefined)
          'rolesCreate': (rolesCreate as List<Input$CreateRoleInput?>?),
        if (rolesDelete != _undefined)
          'rolesDelete': (rolesDelete as List<int>?),
        if (conflictIDs != _undefined)
          'conflictIDs': (conflictIDs as List<int?>?),
        if (headquartersID != _undefined)
          'headquartersID': (headquartersID as int?),
        if (locationIDs != _undefined)
          'locationIDs': (locationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes rolesCreate(
          Iterable<Input$CreateRoleInput?>? Function(
                  Iterable<
                      CopyWith$Input$CreateRoleInput<Input$CreateRoleInput>?>?)
              _fn) =>
      call(
          rolesCreate: _fn(_instance.rolesCreate?.map((e) => e == null
              ? null
              : CopyWith$Input$CreateRoleInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateOrganizationInput<TRes>
    implements CopyWith$Input$UpdateOrganizationInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrganizationInput(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? text,
    List<Input$CreateRoleInput?>? rolesCreate,
    List<int>? rolesDelete,
    List<int?>? conflictIDs,
    int? headquartersID,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  rolesCreate(_fn) => _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$UpdateSceneInput {
  factory Input$UpdateSceneInput({
    required int id,
    String? title,
    String? text,
    required int startTimeline,
    required int endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<Input$SceneCasualtiesInput?>? casualties,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$UpdateSceneInput._({
        r'id': id,
        if (title != null) r'title': title,
        if (text != null) r'text': text,
        r'startTimeline': startTimeline,
        r'endTimeline': endTimeline,
        if (characterIDs != null) r'characterIDs': characterIDs,
        if (locationIDs != null) r'locationIDs': locationIDs,
        if (conflictIDs != null) r'conflictIDs': conflictIDs,
        if (casualties != null) r'casualties': casualties,
        if (organizationIDs != null) r'organizationIDs': organizationIDs,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$UpdateSceneInput._(this._$data);

  factory Input$UpdateSceneInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    final l$startTimeline = data['startTimeline'];
    result$data['startTimeline'] = (l$startTimeline as int);
    final l$endTimeline = data['endTimeline'];
    result$data['endTimeline'] = (l$endTimeline as int);
    if (data.containsKey('characterIDs')) {
      final l$characterIDs = data['characterIDs'];
      result$data['characterIDs'] =
          (l$characterIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('locationIDs')) {
      final l$locationIDs = data['locationIDs'];
      result$data['locationIDs'] =
          (l$locationIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('conflictIDs')) {
      final l$conflictIDs = data['conflictIDs'];
      result$data['conflictIDs'] =
          (l$conflictIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('casualties')) {
      final l$casualties = data['casualties'];
      result$data['casualties'] = (l$casualties as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$SceneCasualtiesInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('organizationIDs')) {
      final l$organizationIDs = data['organizationIDs'];
      result$data['organizationIDs'] = (l$organizationIDs as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateSceneInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get title => (_$data['title'] as String?);

  String? get text => (_$data['text'] as String?);

  int get startTimeline => (_$data['startTimeline'] as int);

  int get endTimeline => (_$data['endTimeline'] as int);

  List<int?>? get characterIDs => (_$data['characterIDs'] as List<int?>?);

  List<int?>? get locationIDs => (_$data['locationIDs'] as List<int?>?);

  List<int?>? get conflictIDs => (_$data['conflictIDs'] as List<int?>?);

  List<Input$SceneCasualtiesInput?>? get casualties =>
      (_$data['casualties'] as List<Input$SceneCasualtiesInput?>?);

  List<int?>? get organizationIDs => (_$data['organizationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    final l$startTimeline = startTimeline;
    result$data['startTimeline'] = l$startTimeline;
    final l$endTimeline = endTimeline;
    result$data['endTimeline'] = l$endTimeline;
    if (_$data.containsKey('characterIDs')) {
      final l$characterIDs = characterIDs;
      result$data['characterIDs'] = l$characterIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('locationIDs')) {
      final l$locationIDs = locationIDs;
      result$data['locationIDs'] = l$locationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('conflictIDs')) {
      final l$conflictIDs = conflictIDs;
      result$data['conflictIDs'] = l$conflictIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('casualties')) {
      final l$casualties = casualties;
      result$data['casualties'] =
          l$casualties?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('organizationIDs')) {
      final l$organizationIDs = organizationIDs;
      result$data['organizationIDs'] =
          l$organizationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateSceneInput<Input$UpdateSceneInput> get copyWith =>
      CopyWith$Input$UpdateSceneInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateSceneInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
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
    final l$characterIDs = characterIDs;
    final lOther$characterIDs = other.characterIDs;
    if (_$data.containsKey('characterIDs') !=
        other._$data.containsKey('characterIDs')) {
      return false;
    }
    if (l$characterIDs != null && lOther$characterIDs != null) {
      if (l$characterIDs.length != lOther$characterIDs.length) {
        return false;
      }
      for (int i = 0; i < l$characterIDs.length; i++) {
        final l$characterIDs$entry = l$characterIDs[i];
        final lOther$characterIDs$entry = lOther$characterIDs[i];
        if (l$characterIDs$entry != lOther$characterIDs$entry) {
          return false;
        }
      }
    } else if (l$characterIDs != lOther$characterIDs) {
      return false;
    }
    final l$locationIDs = locationIDs;
    final lOther$locationIDs = other.locationIDs;
    if (_$data.containsKey('locationIDs') !=
        other._$data.containsKey('locationIDs')) {
      return false;
    }
    if (l$locationIDs != null && lOther$locationIDs != null) {
      if (l$locationIDs.length != lOther$locationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$locationIDs.length; i++) {
        final l$locationIDs$entry = l$locationIDs[i];
        final lOther$locationIDs$entry = lOther$locationIDs[i];
        if (l$locationIDs$entry != lOther$locationIDs$entry) {
          return false;
        }
      }
    } else if (l$locationIDs != lOther$locationIDs) {
      return false;
    }
    final l$conflictIDs = conflictIDs;
    final lOther$conflictIDs = other.conflictIDs;
    if (_$data.containsKey('conflictIDs') !=
        other._$data.containsKey('conflictIDs')) {
      return false;
    }
    if (l$conflictIDs != null && lOther$conflictIDs != null) {
      if (l$conflictIDs.length != lOther$conflictIDs.length) {
        return false;
      }
      for (int i = 0; i < l$conflictIDs.length; i++) {
        final l$conflictIDs$entry = l$conflictIDs[i];
        final lOther$conflictIDs$entry = lOther$conflictIDs[i];
        if (l$conflictIDs$entry != lOther$conflictIDs$entry) {
          return false;
        }
      }
    } else if (l$conflictIDs != lOther$conflictIDs) {
      return false;
    }
    final l$casualties = casualties;
    final lOther$casualties = other.casualties;
    if (_$data.containsKey('casualties') !=
        other._$data.containsKey('casualties')) {
      return false;
    }
    if (l$casualties != null && lOther$casualties != null) {
      if (l$casualties.length != lOther$casualties.length) {
        return false;
      }
      for (int i = 0; i < l$casualties.length; i++) {
        final l$casualties$entry = l$casualties[i];
        final lOther$casualties$entry = lOther$casualties[i];
        if (l$casualties$entry != lOther$casualties$entry) {
          return false;
        }
      }
    } else if (l$casualties != lOther$casualties) {
      return false;
    }
    final l$organizationIDs = organizationIDs;
    final lOther$organizationIDs = other.organizationIDs;
    if (_$data.containsKey('organizationIDs') !=
        other._$data.containsKey('organizationIDs')) {
      return false;
    }
    if (l$organizationIDs != null && lOther$organizationIDs != null) {
      if (l$organizationIDs.length != lOther$organizationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$organizationIDs.length; i++) {
        final l$organizationIDs$entry = l$organizationIDs[i];
        final lOther$organizationIDs$entry = lOther$organizationIDs[i];
        if (l$organizationIDs$entry != lOther$organizationIDs$entry) {
          return false;
        }
      }
    } else if (l$organizationIDs != lOther$organizationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$text = text;
    final l$startTimeline = startTimeline;
    final l$endTimeline = endTimeline;
    final l$characterIDs = characterIDs;
    final l$locationIDs = locationIDs;
    final l$conflictIDs = conflictIDs;
    final l$casualties = casualties;
    final l$organizationIDs = organizationIDs;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('text') ? l$text : const {},
      l$startTimeline,
      l$endTimeline,
      _$data.containsKey('characterIDs')
          ? l$characterIDs == null
              ? null
              : Object.hashAll(l$characterIDs.map((v) => v))
          : const {},
      _$data.containsKey('locationIDs')
          ? l$locationIDs == null
              ? null
              : Object.hashAll(l$locationIDs.map((v) => v))
          : const {},
      _$data.containsKey('conflictIDs')
          ? l$conflictIDs == null
              ? null
              : Object.hashAll(l$conflictIDs.map((v) => v))
          : const {},
      _$data.containsKey('casualties')
          ? l$casualties == null
              ? null
              : Object.hashAll(l$casualties.map((v) => v))
          : const {},
      _$data.containsKey('organizationIDs')
          ? l$organizationIDs == null
              ? null
              : Object.hashAll(l$organizationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateSceneInput<TRes> {
  factory CopyWith$Input$UpdateSceneInput(
    Input$UpdateSceneInput instance,
    TRes Function(Input$UpdateSceneInput) then,
  ) = _CopyWithImpl$Input$UpdateSceneInput;

  factory CopyWith$Input$UpdateSceneInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateSceneInput;

  TRes call({
    int? id,
    String? title,
    String? text,
    int? startTimeline,
    int? endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<Input$SceneCasualtiesInput?>? casualties,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes casualties(
      Iterable<Input$SceneCasualtiesInput?>? Function(
              Iterable<
                  CopyWith$Input$SceneCasualtiesInput<
                      Input$SceneCasualtiesInput>?>?)
          _fn);
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateSceneInput<TRes>
    implements CopyWith$Input$UpdateSceneInput<TRes> {
  _CopyWithImpl$Input$UpdateSceneInput(
    this._instance,
    this._then,
  );

  final Input$UpdateSceneInput _instance;

  final TRes Function(Input$UpdateSceneInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? startTimeline = _undefined,
    Object? endTimeline = _undefined,
    Object? characterIDs = _undefined,
    Object? locationIDs = _undefined,
    Object? conflictIDs = _undefined,
    Object? casualties = _undefined,
    Object? organizationIDs = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$UpdateSceneInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (title != _undefined) 'title': (title as String?),
        if (text != _undefined) 'text': (text as String?),
        if (startTimeline != _undefined && startTimeline != null)
          'startTimeline': (startTimeline as int),
        if (endTimeline != _undefined && endTimeline != null)
          'endTimeline': (endTimeline as int),
        if (characterIDs != _undefined)
          'characterIDs': (characterIDs as List<int?>?),
        if (locationIDs != _undefined)
          'locationIDs': (locationIDs as List<int?>?),
        if (conflictIDs != _undefined)
          'conflictIDs': (conflictIDs as List<int?>?),
        if (casualties != _undefined)
          'casualties': (casualties as List<Input$SceneCasualtiesInput?>?),
        if (organizationIDs != _undefined)
          'organizationIDs': (organizationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes casualties(
          Iterable<Input$SceneCasualtiesInput?>? Function(
                  Iterable<
                      CopyWith$Input$SceneCasualtiesInput<
                          Input$SceneCasualtiesInput>?>?)
              _fn) =>
      call(
          casualties: _fn(_instance.casualties?.map((e) => e == null
              ? null
              : CopyWith$Input$SceneCasualtiesInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateSceneInput<TRes>
    implements CopyWith$Input$UpdateSceneInput<TRes> {
  _CopyWithStubImpl$Input$UpdateSceneInput(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? text,
    int? startTimeline,
    int? endTimeline,
    List<int?>? characterIDs,
    List<int?>? locationIDs,
    List<int?>? conflictIDs,
    List<Input$SceneCasualtiesInput?>? casualties,
    List<int?>? organizationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  casualties(_fn) => _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$UpdateSequenceInput {
  factory Input$UpdateSequenceInput({
    required int id,
    List<Input$CreateSceneSequenceInput?>? scenes,
    String? title,
    String? text,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$UpdateSequenceInput._({
        r'id': id,
        if (scenes != null) r'scenes': scenes,
        if (title != null) r'title': title,
        if (text != null) r'text': text,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$UpdateSequenceInput._(this._$data);

  factory Input$UpdateSequenceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('scenes')) {
      final l$scenes = data['scenes'];
      result$data['scenes'] = (l$scenes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$CreateSceneSequenceInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateSequenceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  List<Input$CreateSceneSequenceInput?>? get scenes =>
      (_$data['scenes'] as List<Input$CreateSceneSequenceInput?>?);

  String? get title => (_$data['title'] as String?);

  String? get text => (_$data['text'] as String?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('scenes')) {
      final l$scenes = scenes;
      result$data['scenes'] = l$scenes?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateSequenceInput<Input$UpdateSequenceInput> get copyWith =>
      CopyWith$Input$UpdateSequenceInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateSequenceInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$scenes = scenes;
    final lOther$scenes = other.scenes;
    if (_$data.containsKey('scenes') != other._$data.containsKey('scenes')) {
      return false;
    }
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
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$scenes = scenes;
    final l$title = title;
    final l$text = text;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('scenes')
          ? l$scenes == null
              ? null
              : Object.hashAll(l$scenes.map((v) => v))
          : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateSequenceInput<TRes> {
  factory CopyWith$Input$UpdateSequenceInput(
    Input$UpdateSequenceInput instance,
    TRes Function(Input$UpdateSequenceInput) then,
  ) = _CopyWithImpl$Input$UpdateSequenceInput;

  factory CopyWith$Input$UpdateSequenceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateSequenceInput;

  TRes call({
    int? id,
    List<Input$CreateSceneSequenceInput?>? scenes,
    String? title,
    String? text,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes scenes(
      Iterable<Input$CreateSceneSequenceInput?>? Function(
              Iterable<
                  CopyWith$Input$CreateSceneSequenceInput<
                      Input$CreateSceneSequenceInput>?>?)
          _fn);
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateSequenceInput<TRes>
    implements CopyWith$Input$UpdateSequenceInput<TRes> {
  _CopyWithImpl$Input$UpdateSequenceInput(
    this._instance,
    this._then,
  );

  final Input$UpdateSequenceInput _instance;

  final TRes Function(Input$UpdateSequenceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? scenes = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$UpdateSequenceInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (scenes != _undefined)
          'scenes': (scenes as List<Input$CreateSceneSequenceInput?>?),
        if (title != _undefined) 'title': (title as String?),
        if (text != _undefined) 'text': (text as String?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes scenes(
          Iterable<Input$CreateSceneSequenceInput?>? Function(
                  Iterable<
                      CopyWith$Input$CreateSceneSequenceInput<
                          Input$CreateSceneSequenceInput>?>?)
              _fn) =>
      call(
          scenes: _fn(_instance.scenes?.map((e) => e == null
              ? null
              : CopyWith$Input$CreateSceneSequenceInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateSequenceInput<TRes>
    implements CopyWith$Input$UpdateSequenceInput<TRes> {
  _CopyWithStubImpl$Input$UpdateSequenceInput(this._res);

  TRes _res;

  call({
    int? id,
    List<Input$CreateSceneSequenceInput?>? scenes,
    String? title,
    String? text,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  scenes(_fn) => _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$UpdateShipInput {
  factory Input$UpdateShipInput({
    required int id,
    String? title,
    String? text,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      Input$UpdateShipInput._({
        r'id': id,
        if (title != null) r'title': title,
        if (text != null) r'text': text,
        if (locationIDs != null) r'locationIDs': locationIDs,
        if (files != null) r'files': files,
        if (rFiles != null) r'rFiles': rFiles,
        if (genImage != null) r'genImage': genImage,
      });

  Input$UpdateShipInput._(this._$data);

  factory Input$UpdateShipInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('locationIDs')) {
      final l$locationIDs = data['locationIDs'];
      result$data['locationIDs'] =
          (l$locationIDs as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] = (l$files as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$FileInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('rFiles')) {
      final l$rFiles = data['rFiles'];
      result$data['rFiles'] =
          (l$rFiles as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('genImage')) {
      final l$genImage = data['genImage'];
      result$data['genImage'] = (l$genImage as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GenImage.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateShipInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get title => (_$data['title'] as String?);

  String? get text => (_$data['text'] as String?);

  List<int?>? get locationIDs => (_$data['locationIDs'] as List<int?>?);

  List<Input$FileInput?>? get files =>
      (_$data['files'] as List<Input$FileInput?>?);

  List<int>? get rFiles => (_$data['rFiles'] as List<int>?);

  List<Input$GenImage?>? get genImage =>
      (_$data['genImage'] as List<Input$GenImage?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    if (_$data.containsKey('locationIDs')) {
      final l$locationIDs = locationIDs;
      result$data['locationIDs'] = l$locationIDs?.map((e) => e).toList();
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('rFiles')) {
      final l$rFiles = rFiles;
      result$data['rFiles'] = l$rFiles?.map((e) => e).toList();
    }
    if (_$data.containsKey('genImage')) {
      final l$genImage = genImage;
      result$data['genImage'] = l$genImage?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateShipInput<Input$UpdateShipInput> get copyWith =>
      CopyWith$Input$UpdateShipInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateShipInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$locationIDs = locationIDs;
    final lOther$locationIDs = other.locationIDs;
    if (_$data.containsKey('locationIDs') !=
        other._$data.containsKey('locationIDs')) {
      return false;
    }
    if (l$locationIDs != null && lOther$locationIDs != null) {
      if (l$locationIDs.length != lOther$locationIDs.length) {
        return false;
      }
      for (int i = 0; i < l$locationIDs.length; i++) {
        final l$locationIDs$entry = l$locationIDs[i];
        final lOther$locationIDs$entry = lOther$locationIDs[i];
        if (l$locationIDs$entry != lOther$locationIDs$entry) {
          return false;
        }
      }
    } else if (l$locationIDs != lOther$locationIDs) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    final l$rFiles = rFiles;
    final lOther$rFiles = other.rFiles;
    if (_$data.containsKey('rFiles') != other._$data.containsKey('rFiles')) {
      return false;
    }
    if (l$rFiles != null && lOther$rFiles != null) {
      if (l$rFiles.length != lOther$rFiles.length) {
        return false;
      }
      for (int i = 0; i < l$rFiles.length; i++) {
        final l$rFiles$entry = l$rFiles[i];
        final lOther$rFiles$entry = lOther$rFiles[i];
        if (l$rFiles$entry != lOther$rFiles$entry) {
          return false;
        }
      }
    } else if (l$rFiles != lOther$rFiles) {
      return false;
    }
    final l$genImage = genImage;
    final lOther$genImage = other.genImage;
    if (_$data.containsKey('genImage') !=
        other._$data.containsKey('genImage')) {
      return false;
    }
    if (l$genImage != null && lOther$genImage != null) {
      if (l$genImage.length != lOther$genImage.length) {
        return false;
      }
      for (int i = 0; i < l$genImage.length; i++) {
        final l$genImage$entry = l$genImage[i];
        final lOther$genImage$entry = lOther$genImage[i];
        if (l$genImage$entry != lOther$genImage$entry) {
          return false;
        }
      }
    } else if (l$genImage != lOther$genImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$text = text;
    final l$locationIDs = locationIDs;
    final l$files = files;
    final l$rFiles = rFiles;
    final l$genImage = genImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('locationIDs')
          ? l$locationIDs == null
              ? null
              : Object.hashAll(l$locationIDs.map((v) => v))
          : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
      _$data.containsKey('rFiles')
          ? l$rFiles == null
              ? null
              : Object.hashAll(l$rFiles.map((v) => v))
          : const {},
      _$data.containsKey('genImage')
          ? l$genImage == null
              ? null
              : Object.hashAll(l$genImage.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateShipInput<TRes> {
  factory CopyWith$Input$UpdateShipInput(
    Input$UpdateShipInput instance,
    TRes Function(Input$UpdateShipInput) then,
  ) = _CopyWithImpl$Input$UpdateShipInput;

  factory CopyWith$Input$UpdateShipInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateShipInput;

  TRes call({
    int? id,
    String? title,
    String? text,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  });
  TRes files(
      Iterable<Input$FileInput?>? Function(
              Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
          _fn);
  TRes genImage(
      Iterable<Input$GenImage?>? Function(
              Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateShipInput<TRes>
    implements CopyWith$Input$UpdateShipInput<TRes> {
  _CopyWithImpl$Input$UpdateShipInput(
    this._instance,
    this._then,
  );

  final Input$UpdateShipInput _instance;

  final TRes Function(Input$UpdateShipInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? text = _undefined,
    Object? locationIDs = _undefined,
    Object? files = _undefined,
    Object? rFiles = _undefined,
    Object? genImage = _undefined,
  }) =>
      _then(Input$UpdateShipInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (title != _undefined) 'title': (title as String?),
        if (text != _undefined) 'text': (text as String?),
        if (locationIDs != _undefined)
          'locationIDs': (locationIDs as List<int?>?),
        if (files != _undefined) 'files': (files as List<Input$FileInput?>?),
        if (rFiles != _undefined) 'rFiles': (rFiles as List<int>?),
        if (genImage != _undefined)
          'genImage': (genImage as List<Input$GenImage?>?),
      }));

  TRes files(
          Iterable<Input$FileInput?>? Function(
                  Iterable<CopyWith$Input$FileInput<Input$FileInput>?>?)
              _fn) =>
      call(
          files: _fn(_instance.files?.map((e) => e == null
              ? null
              : CopyWith$Input$FileInput(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genImage(
          Iterable<Input$GenImage?>? Function(
                  Iterable<CopyWith$Input$GenImage<Input$GenImage>?>?)
              _fn) =>
      call(
          genImage: _fn(_instance.genImage?.map((e) => e == null
              ? null
              : CopyWith$Input$GenImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateShipInput<TRes>
    implements CopyWith$Input$UpdateShipInput<TRes> {
  _CopyWithStubImpl$Input$UpdateShipInput(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? text,
    List<int?>? locationIDs,
    List<Input$FileInput?>? files,
    List<int>? rFiles,
    List<Input$GenImage?>? genImage,
  }) =>
      _res;

  files(_fn) => _res;

  genImage(_fn) => _res;
}

class Input$UpdateTextInput {
  factory Input$UpdateTextInput({
    required String id,
    required String text,
    required String postID,
  }) =>
      Input$UpdateTextInput._({
        r'id': id,
        r'text': text,
        r'postID': postID,
      });

  Input$UpdateTextInput._(this._$data);

  factory Input$UpdateTextInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    final l$postID = data['postID'];
    result$data['postID'] = (l$postID as String);
    return Input$UpdateTextInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get text => (_$data['text'] as String);

  String get postID => (_$data['postID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$text = text;
    result$data['text'] = l$text;
    final l$postID = postID;
    result$data['postID'] = l$postID;
    return result$data;
  }

  CopyWith$Input$UpdateTextInput<Input$UpdateTextInput> get copyWith =>
      CopyWith$Input$UpdateTextInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateTextInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$postID = postID;
    final lOther$postID = other.postID;
    if (l$postID != lOther$postID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$postID = postID;
    return Object.hashAll([
      l$id,
      l$text,
      l$postID,
    ]);
  }
}

abstract class CopyWith$Input$UpdateTextInput<TRes> {
  factory CopyWith$Input$UpdateTextInput(
    Input$UpdateTextInput instance,
    TRes Function(Input$UpdateTextInput) then,
  ) = _CopyWithImpl$Input$UpdateTextInput;

  factory CopyWith$Input$UpdateTextInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateTextInput;

  TRes call({
    String? id,
    String? text,
    String? postID,
  });
}

class _CopyWithImpl$Input$UpdateTextInput<TRes>
    implements CopyWith$Input$UpdateTextInput<TRes> {
  _CopyWithImpl$Input$UpdateTextInput(
    this._instance,
    this._then,
  );

  final Input$UpdateTextInput _instance;

  final TRes Function(Input$UpdateTextInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? postID = _undefined,
  }) =>
      _then(Input$UpdateTextInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (text != _undefined && text != null) 'text': (text as String),
        if (postID != _undefined && postID != null)
          'postID': (postID as String),
      }));
}

class _CopyWithStubImpl$Input$UpdateTextInput<TRes>
    implements CopyWith$Input$UpdateTextInput<TRes> {
  _CopyWithStubImpl$Input$UpdateTextInput(this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? postID,
  }) =>
      _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
