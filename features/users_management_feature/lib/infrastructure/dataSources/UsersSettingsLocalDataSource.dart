import 'package:core/core_utils/Logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/my_settings_data.dart';

class UsersSettingsLocalDataSource {
  final String settingsBoxName = "MySettingsDataBox";

  final String toggleStayLoggedInOptionKey = "toggleStayLoggedInOption";
  final String toggleHideMyWorkDataOptionKey = "toggleHideMyWorkDataOption";
  final String toggleNotifyMeOptionKey = "toggleStayLoggedInOption";

  Future<void> toggleStayLoggedInOption(bool isEnabled) async {
    Box settingsBox = await Hive.openBox(settingsBoxName);
    return await settingsBox.put(toggleStayLoggedInOptionKey, isEnabled);
  }

  Future<void> toggleHideMyWorkDataOption(bool isEnabled) async {
    Box settingsBox = await Hive.openBox(settingsBoxName);
    return await settingsBox.put(toggleHideMyWorkDataOptionKey, isEnabled);
  }

  Future<void> toggleNotifyMeOption(bool isEnabled) async {
    Box settingsBox = await Hive.openBox(settingsBoxName);
    logger.i("toggleNotifyMeOptionKey updated");
    return await settingsBox.put(toggleNotifyMeOptionKey, isEnabled);
  }

  Future<MySettingsData> loadSettingsData() async {
    Box settingsBox = await Hive.openBox(settingsBoxName);

    return MySettingsData(
        isHideMyWorkDataOptionEnabled:
            await settingsBox.get(toggleHideMyWorkDataOptionKey) ?? false,
        isStayLoggedInOptionEnabled:
            await settingsBox.get(toggleStayLoggedInOptionKey) ?? false,
        isToggleNotifyMeOptionEnabled:
            await settingsBox.get(toggleNotifyMeOptionKey) ?? false);
  }
}
