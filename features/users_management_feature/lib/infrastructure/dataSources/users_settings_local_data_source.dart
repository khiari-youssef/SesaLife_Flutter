import 'package:core/core_utils/Logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/infrastructure/dataSources/users_hive_boxes_init.dart';

import '../../domain/entities/my_settings_data.dart';

class UsersSettingsLocalDataSource {
  final String toggleStayLoggedInOptionKey = "toggleStayLoggedInOption";
  final String toggleHideMyWorkDataOptionKey = "toggleHideMyWorkDataOption";
  final String toggleNotifyMeOptionKey = "toggleNotifyMeOptionKey";

  Future<void> toggleStayLoggedInOption(bool isEnabled) async {
    LazyBox<bool> settingsBox = Hive.lazyBox<bool>(settingsBoxName);
    return await settingsBox.put(toggleStayLoggedInOptionKey, isEnabled);
  }

  Future<void> toggleHideMyWorkDataOption(bool isEnabled) async {
    LazyBox<bool> settingsBox = Hive.lazyBox<bool>(settingsBoxName);
    return await settingsBox.put(toggleHideMyWorkDataOptionKey, isEnabled);
  }

  Future<void> toggleNotifyMeOption(bool isEnabled) async {
    LazyBox<bool> settingsBox = Hive.lazyBox<bool>(settingsBoxName);
    return await settingsBox.put(toggleNotifyMeOptionKey, isEnabled);
  }

  Future<void> clearSettings() async {
    LazyBox<bool> settingsBox = Hive.lazyBox<bool>(settingsBoxName);
    settingsBox.clear();
  }

  Future<MySettingsData> loadSettingsData() async {
    LazyBox<bool> settingsBox = Hive.lazyBox<bool>(settingsBoxName);
    MySettingsData data = MySettingsData(
        isHideMyWorkDataOptionEnabled:
            await settingsBox.get(toggleHideMyWorkDataOptionKey) ?? false,
        isStayLoggedInOptionEnabled:
            await settingsBox.get(toggleStayLoggedInOptionKey) ?? false,
        isToggleNotifyMeOptionEnabled:
            await settingsBox.get(toggleNotifyMeOptionKey) ?? false);
    return data;
  }
}
