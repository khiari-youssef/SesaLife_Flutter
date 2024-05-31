class AppPolicySubSection {
  String name;
  List<String> content;
  AppPolicySubSection({required this.name, required this.content});
}

class AppPolicySection {
  String name;
  List<AppPolicySubSection> subSections;
  AppPolicySection({required this.name, required this.subSections});
}
