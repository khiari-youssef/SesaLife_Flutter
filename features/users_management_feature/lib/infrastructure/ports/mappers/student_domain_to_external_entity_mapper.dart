import 'package:core/core_data/dtos/sesame_class_dto.dart';
import 'package:core/core_domain/abstract_domain_to_external_entity_mapper.dart';
import 'package:core/core_domain/entities/sesame_badge.dart';
import 'package:core/core_domain/entities/sesame_class.dart';
import 'package:core/core_domain/entities/user_sex.dart';
import 'package:core/core_domain/utilities.dart';
import 'package:users_management_feature/domain/entities/SesameStudent.dart';
import 'package:users_management_feature/infrastructure/dtos/SesameStudentDTO.dart';

import '../../../domain/entities/SesameRole.dart';
import '../../dtos/SesameBadgeDTO.dart';
import '../../dtos/SesameRoleDTO.dart';

class StudentDomainToExternalEntityMapper
    implements
        AbstractDomainToExternalEntityMapper<SesameStudent, SesameStudentDTO> {
  @override
  SesameStudent toDomain(SesameStudentDTO externalData) {
    return SesameStudent(
        registrationID: externalData.registrationID,
        candidatureID: externalData.candidatureID,
        firstName: externalData.firstName,
        lastName: externalData.lastName,
        registrationDate: externalData.registrationDate.parseIsoDateTime()!,
        email: externalData.email,
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
        sesameClass: SesameClass(
            id: externalData.sesameClass.id,
            name: externalData.sesameClass.name,
            group: externalData.sesameClass.group,
            level: externalData.sesameClass.level),
        portfolioId: externalData.portfolioId);
  }

  @override
  SesameStudentDTO toExternal(SesameStudent domainData) {
    return SesameStudentDTO(
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
        sesameClass: SesameClassDTO(
            id: domainData.sesameClass.id,
            name: domainData.sesameClass.name,
            group: domainData.sesameClass.group,
            level: domainData.sesameClass.level),
        portfolioId: domainData.portfolioId);
  }
}
