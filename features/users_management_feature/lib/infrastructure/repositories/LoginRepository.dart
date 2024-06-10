import 'package:core/core_domain/AbstractDomainToExternalEntityMapper.dart';
import 'package:core/core_domain/entities/SesameBadge.dart';
import 'package:core/core_domain/entities/SesameClass.dart';
import 'package:users_management_feature/domain/entities/SesameStudent.dart';

import '../../domain/entities/SesameRole.dart';
import '../../domain/entities/SesameUser.dart';
import '../dataSources/UsersLocalDataSource.dart';
import '../dataSources/UsersRemoteDataSource.dart';
import '../dtos/SesameUserDTO.dart';
import '../ports/repositoryContracts/LoginRepositoryContract.dart';

class LoginRepository implements LoginRepositoryContract {
  final UsersLocalDataSource localDataSource;
  final UsersRemoteDataSource remoteDataSource;
  final AbstractDomainToExternalEntityMapper<SesameUser, SesameUserDTO> mapper;
  LoginRepository(this.localDataSource, this.remoteDataSource, this.mapper);
  @override
  Future<SesameUser> authenticateUserWithCredentials(
      String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    SesameUser user = SesameStudent(
        registrationID: "random",
        candidatureID: "randomcaid",
        firstName: "Youssef",
        registrationDate: DateTime(2021, 1, 1),
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
    Future<void> result =
        localDataSource.saveUserProfile(mapper.toExternal(user));
    return user;
  }

  @override
  Future<SesameUser> authenticateUserWithExistingUserToken() async {
    String? token = await localDataSource.getUserExistingUserToken();
    if (token != null) {
      return remoteDataSource.loginWithToken(token).then((value) {
        return mapper.toDomain(value);
      });
    } else {
      throw Error();
    }
  }
}
