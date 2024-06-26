import 'package:core/core_data/dtos/sesame_privacy_policy_document_dto.dart';
import 'package:core/core_domain/AbstractDomainToExternalEntityMapper.dart';
import 'package:core/core_domain/entities/sesame_privacy_policy_document.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameStudent.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameStudentDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/ProfStudentDomainToExternalEntityMapper.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/StudentDomainToExternalEntityMapper.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/TeacherDomainToExternalEntityMapper.dart';
import 'package:users_management_feature/infrastructure/ports/mappers/UserDomainToExternalEntityMapper.dart';

import '../domain/entities/SesameTeacher.dart';
import '../domain/entities/SesameUser.dart';
import '../infrastructure/dtos/SesameTeacherDTO.dart';
import '../infrastructure/dtos/sesame_professional_student_dto.dart';
import '../infrastructure/ports/mappers/AppRulesDomainToExternalEntityMapper.dart';

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
