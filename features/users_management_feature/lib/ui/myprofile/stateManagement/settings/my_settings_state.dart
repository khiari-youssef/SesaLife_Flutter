import 'package:shared_dependencies/shared_dependencies.dart';

import '../../../../domain/entities/my_settings_data.dart';

part 'my_settings_state.freezed.dart';

@freezed
class MySettingsState with _$MySettingsState {
  const factory MySettingsState.initialState({MySettingsData? data}) =
      _initialState;
}
