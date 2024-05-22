import 'package:users_management_feature/domain/entities/SesameUser.dart';

abstract interface class UserdataRepositoryContract {
  Future<SesameUser?> getCurrentUserProfileData();
  Future<String?> getCurrentUserProfileToken();
  Future<void> clearUserData();
}
