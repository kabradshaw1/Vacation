class Character {
  final String id;
  final String title;

  Character({
    required this.id,
    required this.title,
  });

  static Character fromMap({required Map map}) {
    return Character(
      id: map['id'],
      title: map['title'],
    );
  }
}