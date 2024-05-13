class SesameClass {
  final String id;
  final String name;
  final String level;
  final String group;

  SesameClass(
      {required this.id,
      required this.name,
      required this.level,
      required this.group});

  @override
  String toString() => id;
}
