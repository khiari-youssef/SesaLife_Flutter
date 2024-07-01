class AppRulesSubSection {
  String name;
  List<String> content;
  AppRulesSubSection({required this.name, required this.content});
}

class AppRulesSection {
  String name;
  List<AppRulesSubSection> subSections;
  AppRulesSection({required this.name, required this.subSections});
}
