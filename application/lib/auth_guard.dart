import 'package:core/core_utils/bio_utils.dart';
import 'package:core/core_utils/logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/my_settings_data.dart';
import 'package:users_management_feature/infrastructure/repositories/user_settings_repository.dart';
import 'package:users_management_feature/ui/navigation/users_navigation_configuration.gr.dart';

class AuthGuard extends AutoRouteGuard {
  final UserSettingsRepositoryContract userSettingsRepositoryContract;
  AuthGuard(this.userSettingsRepositoryContract);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SesameDeviceAuthManager deviceAuthenticator = GetIt.instance.get();
    if (await deviceAuthenticator.hasBiometricCapabilitiesAsync() &&
        await deviceAuthenticator.hasEnrolledBiometricAsync(
            requireStrongBio: true)) {
      MySettingsData settings =
          await userSettingsRepositoryContract.loadSettingsData();
      if (settings.isStayLoggedInOptionEnabled) {
        logger.i("Auto logging in");
        resolver.redirect(const AutoLoginLoadingRoute());
      } else {
        logger.i("Login required");
        resolver.redirect(const LoginRoute());
      }
    } else {
      resolver.next();
    }
  }
}
