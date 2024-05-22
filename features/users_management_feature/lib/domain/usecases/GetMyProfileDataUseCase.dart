import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:users_management_feature/domain/entities/SesameClass.dart';
import 'package:users_management_feature/domain/entities/SesameStudent.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../entities/SesameBadge.dart';
import '../entities/SesameRole.dart';

class GetMyProfileDataUseCase
    implements NoInputDomainUseCaseProtocol<SesameUser> {
  @override
  SesameUser execute() {
    return SesameProfessionalStudent(
        registrationID: "random",
        candidatureID: "randomcaid",
        firstName: "Youssef",
        lastName: "Khiari",
        email: "khiari.youssef98@gmail.com",
        sex: UserSex.male,
        birthdate: DateTime.now(),
        profilePictureUrl:
            "https://cdn.pixabay.com/photo/2024/05/05/19/33/man-8741800_1280.jpg",
        role: SesameRole.defaultRole,
        company: "MintIT",
        contractType: "CDI",
        jobPosition: "Android engineer",
        sesameClass:
            SesameClass(id: "ingta4c", name: "ingta", level: "4", group: "c"),
        badge: SesameBadge(
            creationDate: DateTime(2024, 1, 1),
            expirationDate: DateTime(2024, 12, 1),
            signature: "aegdsgsd"));
  }
}
