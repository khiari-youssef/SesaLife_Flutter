import 'package:shared_dependencies/shared_dependencies.dart';

part 'my_settings_event.freezed.dart';

@freezed
sealed class MySettingsEvent with _$MySettingsEvent {
  const factory MySettingsEvent.loadInitialData() = _loadInitialData;
  const factory MySettingsEvent.toggleStayLoggedInOption(bool isEnabled) =
      _toggleStayLoggedInOption;
  const factory MySettingsEvent.toggleHideMyWorkDataOption(bool isEnabled) =
      _toggleHideMyWorkDataOption;
  const factory MySettingsEvent.toggleNotifyMeOption(bool isEnabled) =
      _toggleNotifyMeOption;
}
