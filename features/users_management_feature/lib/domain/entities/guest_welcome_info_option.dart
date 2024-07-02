import 'package:shared_dependencies/shared_dependencies.dart';

part 'guest_welcome_info_option.freezed.dart';

@freezed
class GuestWelcomeInfoOption with _$GuestWelcomeInfoOption {
  const factory GuestWelcomeInfoOption(
          String headline, String description, String clickDestinationPath) =
      _GuestWelcomeInfoOption;
}
