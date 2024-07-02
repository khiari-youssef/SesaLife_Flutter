import 'package:core/core_data/dtos/sesame_privacy_policy_document_dto.dart';
import 'package:core/exports.dart';

class AppRulesDomainToExternalEntityMapper
    implements
        AbstractDomainToExternalEntityMapper<SesamePrivacyPolicyDocument,
            SesamePrivacyPolicyDocumentDTO> {
  @override
  SesamePrivacyPolicyDocument toDomain(
      SesamePrivacyPolicyDocumentDTO externalData) {
    return SesamePrivacyPolicyDocument(
        local: externalData.local,
        lastTimeUpdated: externalData.lastTimeUpdated!.parseIsoDateTime()!,
        description: externalData.description,
        summary: externalData.summary,
        sections: externalData.sections
            .map((sectiondto) => AppRulesSection(
                name: sectiondto.name,
                subSections: sectiondto.subSections
                    .map((subsectionDRO) => AppRulesSubSection(
                        name: subsectionDRO.name,
                        content: subsectionDRO.content))
                    .toList()))
            .toList());
  }

  @override
  SesamePrivacyPolicyDocumentDTO toExternal(
      SesamePrivacyPolicyDocument domainData) {
    throw UnimplementedError();
  }
}
