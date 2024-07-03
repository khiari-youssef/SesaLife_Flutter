import 'package:users_management_feature/domain/entities/my_settings_data.dart';

import '../dataSources/users_settings_local_data_source.dart';

abstract interface class UserSettingsRepositoryContract {
  Future<void> toggleStayLoggedInOption(bool isEnabled);
  Future<void> toggleHideMyWorkDataOption(bool isEnabled);
  Future<void> toggleNotifyMeOption(bool isEnabled);
  Future<MySettingsData> loadSettingsData();
  Future<void> clearSettings();
}

class UserSettingsRepository implements UserSettingsRepositoryContract {
  final UsersSettingsLocalDataSource dataManager;
  UserSettingsRepository(this.dataManager);

  @override
  Future<void> toggleStayLoggedInOption(bool isEnabled) =>
      dataManager.toggleStayLoggedInOption(isEnabled);
  @override
  Future<void> toggleHideMyWorkDataOption(bool isEnabled) =>
      dataManager.toggleHideMyWorkDataOption(isEnabled);
  @override
  Future<void> toggleNotifyMeOption(bool isEnabled) =>
      dataManager.toggleNotifyMeOption(isEnabled);
  @override
  Future<MySettingsData> loadSettingsData() => dataManager.loadSettingsData();
  @override
  Future<void> clearSettings() => dataManager.clearSettings();
}
