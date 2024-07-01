import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:core/exports.dart';

import '../core_data/dtos/sesame_privacy_policy_document_dto.dart';

class ApplicationMetaInfoFacade {
  final AssetBundle bundle;
  final AbstractDomainToExternalEntityMapper<SesamePrivacyPolicyDocument,
      SesamePrivacyPolicyDocumentDTO> mapper;
  ApplicationMetaInfoFacade(this.bundle, this.mapper);

  Future<SesamePrivacyPolicyDocument> getAppPolicy(String local) async {
    return rootBundle
        .loadString("assets/privacy_policy_default.json")
        .then((stringData) {
      Map<String, dynamic> jsonData = jsonDecode(stringData);
      SesamePrivacyPolicyDocumentDTO dto =
          SesamePrivacyPolicyDocumentDTO.fromJson(jsonData);
      return mapper.toDomain(dto);
    });
  }
}
