import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../../domain/entities/SesameBadge.dart';
import '../../domain/entities/SesameClass.dart';
import '../../domain/entities/SesameRole.dart';
import '../../domain/entities/SesameStudent.dart';
import '../ports/repositoryContracts/UserDataRepositoryContract.dart';

class UserDataRepository implements UserdataRepositoryContract {
  @override
  Future<void> clearUserData() async {}

  @override
  Future<SesameUser?> getCurrentUserProfileData() async {
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

  @override
  Future<String?> getCurrentUserProfileToken() async {
    return Future.value("tokentest");
  }

  @override
  Future<void> saveCurrentUserProfileDataLocally(SesameUser sesameUser) async {}
}
