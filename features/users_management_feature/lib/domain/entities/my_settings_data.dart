import 'package:shared_dependencies/shared_dependencies.dart';

part 'my_settings_data.freezed.dart';

@freezed
class MySettingsData with _$MySettingsData {
  const factory MySettingsData(
      {required bool isStayLoggedInOptionEnabled,
      required bool isHideMyWorkDataOptionEnabled,
      required bool isToggleNotifyMeOptionEnabled}) = _MySettingsData;
}
