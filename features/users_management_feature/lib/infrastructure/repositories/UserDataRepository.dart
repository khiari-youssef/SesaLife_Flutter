import 'package:core/core_domain/AbstractDomainToExternalEntityMapper.dart';
import 'package:core/core_domain/entities/SesameBadge.dart';
import 'package:core/core_domain/entities/SesameClass.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../../domain/entities/SesameRole.dart';
import '../../domain/entities/SesameStudent.dart';
import '../dataSources/UsersLocalDataSource.dart';
import '../dtos/SesameUserDTO.dart';
import '../ports/repositoryContracts/UserDataRepositoryContract.dart';

class UserDataRepository implements UserdataRepositoryContract {
  final UsersLocalDataSource localDataSource;
  final AbstractDomainToExternalEntityMapper<SesameUser, SesameUserDTO> mapper;
  UserDataRepository(this.localDataSource, this.mapper);

  @override
  Future<void> clearUserData() async {}

  @override
  Future<SesameUser?> getCurrentUserProfileData() async {
    SesameUserDTO? user = await localDataSource.getLoggedInUserProfile();
    return mapper.toDomain(user!);
  }

  @override
  Future<String?> getCurrentUserProfileToken() async {
    return Future.value("tokentest");
  }

  @override
  Future<void> saveCurrentUserProfileDataLocally(SesameUser sesameUser) async {}
}
