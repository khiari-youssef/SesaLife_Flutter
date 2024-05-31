import 'package:core/core_domain/entities/SesameBadge.dart';
import 'package:core/core_domain/entities/SesameClass.dart';
import 'package:users_management_feature/domain/entities/SesameStudent.dart';

import '../../domain/entities/SesameRole.dart';
import '../../domain/entities/SesameUser.dart';
import '../ports/repositoryContracts/LoginRepositoryContract.dart';

class LoginRepository implements LoginRepositoryContract {
  @override
  Future<SesameUser> authenticateUserWithCredentials(
      String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    return SesameStudent(
        registrationID: "random",
        candidatureID: "randomcaid",
        firstName: "Youssef",
        lastName: "Khiari",
        email: "khiari.youssef98@gmail.com",
        sex: UserSex.male,
        birthdate: DateTime.now(),
        profilePictureUrl: "",
        role: SesameRole.defaultRole,
        badge: SesameBadge(
            creationDate: DateTime(2024, 1, 1),
            expirationDate: DateTime(2024, 12, 1),
            signature: "aegdsgsd"),
        sesameClass:
            SesameClass(id: 'ingta4c', name: "ingta", group: "C", level: "4"));
  }

  @override
  Future<SesameUser> authenticateUserWithToken(String token) async {
    // TODO: implement authenticateUserWithToken
    throw UnimplementedError();
  }
}
