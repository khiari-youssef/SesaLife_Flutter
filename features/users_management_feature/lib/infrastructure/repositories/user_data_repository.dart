import 'package:core/core_domain/abstract_domain_to_external_entity_mapper.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../dataSources/users_local_data_source.dart';
import '../dtos/SesameUserDTO.dart';
import 'package:users_management_feature/domain/ports/repositoryContracts/user_data_repository_contract.dart';

class UserDataRepository implements UserdataRepositoryContract {
  final UsersLocalDataSource localDataSource;
  final AbstractDomainToExternalEntityMapper<SesameUser, SesameUserDTO> mapper;
  UserDataRepository(this.localDataSource, this.mapper);

  @override
  Future<void> clearUserData() async {
    localDataSource.deleteUserData();
  }

  @override
  Future<SesameUser?> getCurrentUserProfileData() async {
    return localDataSource
        .getLoggedInUserProfile()
        .then((data) => mapper.toDomain(data!));
  }

  @override
  Future<String?> getCurrentUserProfileToken() async {
    return Future.value("tokentest");
  }

  @override
  Future<void> saveCurrentUserProfileDataLocally(SesameUser sesameUser) async {}
}
