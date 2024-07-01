import 'package:core/core_domain/AbstractDomainToExternalEntityMapper.dart';
import 'package:core/core_domain/entities/sesame_badge.dart';
import 'package:core/core_domain/entities/sesame_class.dart';
import 'package:core/core_domain/entities/user_sex.dart';
import 'package:core/core_utils/Logger.dart';
import 'package:users_management_feature/domain/entities/SesameStudent.dart';
import 'package:users_management_feature/domain/entities/SesameTeacher.dart';

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

  List<SesameUser> users = [
    SesameStudent(
        registrationID: "random",
        candidatureID: "randomcaid",
        firstName: "Youssef",
        registrationDate: DateTime(2021, 1, 1),
        lastName: "Khiari",
        email: "khiari.youssef98@gmail.com",
        sex: UserSex.male,
        birthdate: DateTime(1998, 4, 18),
        profilePictureUrl: "",
        role: SesameRole.defaultRole,
        badge: SesameBadge(
            creationDate: DateTime(2024, 1, 1),
            expirationDate: DateTime(2024, 12, 1),
            signature: "aegdsgsd"),
        sesameClass:
            SesameClass(id: 'ingta4c', name: "ingta", group: "C", level: "4")),
    SesameTeacher(
        registrationID: 'random-#',
        candidatureID: 'randomcaid-',
        firstName: 'Ahmed',
        lastName: 'Prof',
        email: 'ahmed.prof@sesame.com.tn',
        sex: UserSex.male,
        registrationDate: DateTime(2021, 1, 1),
        birthdate: DateTime(1998, 4, 18),
        profilePictureUrl: '',
        assignedClasses: [
          SesameClass(id: 'ingta4c', name: "ingta", group: "C", level: "4"),
          SesameClass(id: 'ingta4a', name: "ingta", group: "A", level: "4")
        ],
        role: SesameRole.defaultRole,
        badge: SesameBadge(
            creationDate: DateTime(2024, 1, 1),
            expirationDate: DateTime(2024, 12, 1),
            signature: "aegdsgsd"),
        profBackground: 'R&D professor in Artificial intelligence')
  ];

  @override
  Future<SesameUser> authenticateUserWithCredentials(
      String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    SesameUserDTO? userdata = await remoteDataSource
        .loginWithCredentials(email, password)
        .catchError((error) {
          logger.e("user with email $email does not exist");
          throw Exception();
        })
        .asStream()
        .first;
    return localDataSource.saveUserProfile(userdata, true).then((value) {
      return mapper.toDomain(userdata);
    }, onError: (error) {
      logger.e(error);
      return null;
    });
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

  @override
  Future<void> clearAllUserData() {
    return localDataSource.deleteUserData();
  }
}
