import 'package:users_management_feature/domain/entities/my_settings_data.dart';

import '../dataSources/UsersSettingsLocalDataSource.dart';

class UserSettingsRepository {
  final UsersSettingsLocalDataSource dataManager;
  UserSettingsRepository(this.dataManager);

  Future<void> toggleStayLoggedInOption(bool isEnabled) =>
      dataManager.toggleStayLoggedInOption(isEnabled);
  Future<void> toggleHideMyWorkDataOption(bool isEnabled) =>
      dataManager.toggleHideMyWorkDataOption(isEnabled);
  Future<void> toggleNotifyMeOption(bool isEnabled) =>
      dataManager.toggleNotifyMeOption(isEnabled);
  Future<MySettingsData> loadSettingsData() => dataManager.loadSettingsData();
}
