import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:core/core_domain/AbstractDomainToExternalEntityMapper.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';
import 'package:users_management_feature/infrastructure/repositories/user_settings_repository.dart';

import '../dataSources/users_local_data_source.dart';
import '../dtos/SesameUserDTO.dart';
import '../ports/repositoryContracts/UserDataRepositoryContract.dart';

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
