import 'package:core/core_domain/entities/app_policy_section.dart';

class SesamePrivacyPolicyDocument {
  final String local;
  final DateTime lastTimeUpdated;
  final String description;
  final List<String> summary;
  final List<AppRulesSection> sections;
  SesamePrivacyPolicyDocument(
      {required this.local,
      required this.lastTimeUpdated,
      required this.description,
      required this.summary,
      required this.sections});
}
