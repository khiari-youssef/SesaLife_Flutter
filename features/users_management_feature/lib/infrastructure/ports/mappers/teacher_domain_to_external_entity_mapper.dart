import 'package:core/core_data/dtos/sesame_class_dto.dart';
import 'package:core/core_domain/abstract_domain_to_external_entity_mapper.dart';
import 'package:core/core_domain/entities/sesame_badge.dart';
import 'package:core/core_domain/entities/sesame_class.dart';
import 'package:core/core_domain/entities/user_sex.dart';
import 'package:core/core_domain/utilities.dart';
import 'package:users_management_feature/domain/entities/sesame_teacher.dart';
import 'package:users_management_feature/infrastructure/dtos/sesame_teacher_dto.dart';

import '../../../domain/entities/sesame_role.dart';
import '../../dtos/sesame_badge_dto.dart';
import '../../dtos/sesame_role_dto.dart';

class TeacherDomainToExternalEntityMapper
    implements
        AbstractDomainToExternalEntityMapper<SesameTeacher, SesameTeacherDTO> {
  @override
  SesameTeacher toDomain(SesameTeacherDTO externalData) {
    return SesameTeacher(
        registrationID: externalData.registrationID,
        candidatureID: externalData.candidatureID,
        firstName: externalData.firstName,
        lastName: externalData.lastName,
        email: externalData.email,
        registrationDate: externalData.registrationDate.parseIsoDateTime()!,
        sex: externalData.sex.toLowerCase() == "m"
            ? UserSex.male
            : (externalData.sex.toLowerCase() == "f" ? UserSex.female : null)!,
        birthdate: externalData.birthdate.parseIsoDateTime()!,
        profilePictureUrl: externalData.profilePictureUrl,
        role: SesameRole(
            id: externalData.role.id,
            permissions: externalData.role.permissions
                .map((dto) => SesamePermission(
                    dto.id,
                    dto.label,
                    switch (dto.state) {
                      "denied" => SesamePermissionState.denied,
                      "granted" => SesamePermissionState.granted,
                      "req_auth" => SesamePermissionState.reqAuth,
                      _ => null
                    }!))
                .toList()),
        badge: SesameBadge(
            creationDate: externalData.badge.creationDate.parseIsoDateTime()!,
            expirationDate:
                externalData.badge.expirationDate.parseIsoDateTime()!,
            signature: externalData.badge.signature),
        profBackground: externalData.profBackground,
        assignedClasses: externalData.assignedClasses
            .map((sesameClass) => SesameClass(
                id: sesameClass.id,
                name: sesameClass.name,
                level: sesameClass.level,
                group: sesameClass.group))
            .toList());
  }

  @override
  SesameTeacherDTO toExternal(SesameTeacher domainData) {
    return SesameTeacherDTO(
        registrationID: domainData.registrationID,
        candidatureID: domainData.candidatureID,
        firstName: domainData.firstName,
        lastName: domainData.lastName,
        email: domainData.email,
        registrationDate: domainData.registrationDate.toIso8601String(),
        sex: switch (domainData.sex) {
          UserSex.male => "m",
          UserSex.female => "f"
        },
        birthdate: domainData.birthdate.toIso8601String(),
        profilePictureUrl: domainData.profilePictureUrl,
        role: SesameRoleDTO(
            id: domainData.role.id,
            permissions: domainData.role.permissions
                .map((permission) => SesamePermissionDTO(
                    id: permission.id,
                    label: permission.label,
                    state: switch (permission.state) {
                      SesamePermissionState.denied => "denied",
                      SesamePermissionState.granted => "granted",
                      SesamePermissionState.reqAuth => "req_auth",
                    }))
                .toList()),
        badge: SesameBadgeDTO(
            creationDate: domainData.badge.creationDate.toIso8601String(),
            expirationDate: domainData.badge.expirationDate.toIso8601String(),
            signature: domainData.badge.signature),
        profBackground: domainData.profBackground,
        assignedClasses: domainData.assignedClasses
            .map((sesameClass) => SesameClassDTO(
                id: sesameClass.id,
                name: sesameClass.name,
                level: sesameClass.level,
                group: sesameClass.group))
            .toList());
  }
}
