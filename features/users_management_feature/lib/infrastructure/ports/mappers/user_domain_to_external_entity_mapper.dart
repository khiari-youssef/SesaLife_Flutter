import 'package:core/core_domain/abstract_domain_to_external_entity_mapper.dart';
import 'package:core/exports.dart';
import 'package:users_management_feature/domain/entities/sesame_teacher.dart';
import 'package:users_management_feature/domain/entities/sesame_user.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_student_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_teacher_dto.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_user_dto.dart';

import '../../../domain/entities/sesame_student.dart';
import '../../dtos/sesame_professional_student_dto.dart';

class UserDomainToExternalEntityMapper
    implements AbstractDomainToExternalEntityMapper<SesameUser, SesameUserDTO> {
  final AbstractDomainToExternalEntityMapper<SesameTeacher, SesameTeacherDTO>
      teacherUserMapper;
  final AbstractDomainToExternalEntityMapper<SesameStudent, SesameStudentDTO>
      studentUserMapper;
  final AbstractDomainToExternalEntityMapper<SesameProfessionalStudent,
      SesameProfessionalStudentDTO> profStudentUserMapper;
  UserDomainToExternalEntityMapper(
      {required this.teacherUserMapper,
      required this.studentUserMapper,
      required this.profStudentUserMapper});

  @override
  SesameUser toDomain(SesameUserDTO externalData) {
    return switch (externalData) {
      SesameProfessionalStudentDTO() =>
        profStudentUserMapper.toDomain(externalData),
      SesameStudentDTO() => studentUserMapper.toDomain(externalData),
      SesameTeacherDTO() => teacherUserMapper.toDomain(externalData),
      SesameUserDTO() => throw Exception("Unkonw user role")
    };
  }

  @override
  SesameUserDTO toExternal(SesameUser domainData) {
    return switch (domainData) {
      SesameProfessionalStudent() =>
        profStudentUserMapper.toExternal(domainData),
      SesameStudent() => studentUserMapper.toExternal(domainData),
      SesameTeacher() => teacherUserMapper.toExternal(domainData),
      SesameUser() => throw Exception("Unknown role"),
    };
  }
}
