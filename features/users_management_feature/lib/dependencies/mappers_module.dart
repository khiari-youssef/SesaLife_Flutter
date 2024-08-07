import 'package:core/core_data/dtos/sesame_privacy_policy_document_dto.dart';
import 'package:core/core_domain/abstract_domain_to_external_entity_mapper.dart';
import 'package:core/core_domain/entities/sesame_privacy_policy_document.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/sesame_student.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_student_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_user_dto.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/prof_student_domain_to_external_entity_mapper.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/student_domain_to_external_entity_mapper.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/teacher_domain_to_external_entity_mapper.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/user_domain_to_external_entity_mapper.dart';

import '../domain/entities/sesame_teacher.dart';
import '../domain/entities/sesame_user.dart';
import '../infrastructure/dtos/sesame_teacher_dto.dart';
import '../infrastructure/dtos/sesame_professional_student_dto.dart';
import '../infrastructure/ports/mappers/app_rules_domain_to_external_entity_mapper.dart';

extension Mappersmodule on GetIt {
  void loadMappersModule() {
    registerSingleton<
            AbstractDomainToExternalEntityMapper<SesameTeacher,
                SesameTeacherDTO>>(TeacherDomainToExternalEntityMapper(),
        instanceName: "TeacherDomainToExternalEntityMapper");
    registerSingleton<
            AbstractDomainToExternalEntityMapper<SesameStudent,
                SesameStudentDTO>>(StudentDomainToExternalEntityMapper(),
        instanceName: "StudentDomainToExternalEntityMapper");
    registerSingleton<
            AbstractDomainToExternalEntityMapper<SesameProfessionalStudent,
                SesameProfessionalStudentDTO>>(
        ProfStudentDomainToExternalEntityMapper(),
        instanceName: "ProfStudentDomainToExternalEntityMapper");
    registerSingleton<
            AbstractDomainToExternalEntityMapper<SesameUser, SesameUserDTO>>(
        UserDomainToExternalEntityMapper(
            teacherUserMapper:
                get(instanceName: "TeacherDomainToExternalEntityMapper"),
            studentUserMapper:
                get(instanceName: "StudentDomainToExternalEntityMapper"),
            profStudentUserMapper:
                get(instanceName: "ProfStudentDomainToExternalEntityMapper")),
        instanceName: "UserDomainToExternalEntityMapper");
    registerSingleton<
            AbstractDomainToExternalEntityMapper<SesamePrivacyPolicyDocument,
                SesamePrivacyPolicyDocumentDTO>>(
        AppRulesDomainToExternalEntityMapper(),
        instanceName: "AppRulesDomainToExternalEntityMapper");
  }
}
