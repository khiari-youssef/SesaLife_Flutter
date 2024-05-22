import 'package:core/core_domain/AbstractDomainToExternalEntityMapper.dart';
import 'package:core/exports.dart';
import 'package:users_management_feature/domain/entities/SesameTeacher.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameStudentDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameTeacherDTO.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameUserDTO.dart';

import '../../../domain/entities/SesameStudent.dart';

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
