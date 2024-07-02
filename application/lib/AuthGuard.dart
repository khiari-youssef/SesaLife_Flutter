import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_utils/BioUtils.dart';
import 'package:core/core_utils/Logger.dart';
import 'package:home_feature/ui/navigation/HomeNavigationConfiguration.gr.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';
import 'package:users_management_feature/domain/entities/login_method.dart';
import 'package:users_management_feature/domain/entities/my_settings_data.dart';
import 'package:users_management_feature/infrastructure/repositories/user_settings_repository.dart';
import 'package:users_management_feature/ui/navigation/users_navigation_configuration.gr.dart';

class AuthGuard extends AutoRouteGuard {
  final DomainUseCaseProtocol<LoginMethod, Future<SesameUser>> loginUseCase;
  final UserSettingsRepositoryContract userSettingsRepositoryContract;
  AuthGuard(this.loginUseCase, this.userSettingsRepositoryContract);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SesameDeviceAuthManager deviceAuthenticator = GetIt.instance.get();
    if (await deviceAuthenticator.hasBiometricCapabilitiesAsync() &&
        await deviceAuthenticator.hasEnrolledBiometricAsync(
            requireStrongBio: true)) {
      try {
        MySettingsData settings =
            await userSettingsRepositoryContract.loadSettingsData();
        logger.i(settings.isStayLoggedInOptionEnabled);
        if (settings.isStayLoggedInOptionEnabled) {
          logger.i("Auto logging in");
          await loginUseCase.execute(const LoginMethod.tokenLogin());
          logger.i("Logged in");
          resolver.redirect(const HomeRootRoute());
        } else {
          logger.i("Login required");
          resolver.redirect(const LoginRoute());
        }
      } catch (e) {
        logger.e(e);
        resolver.redirect(const LoginRoute());
      }
    } else {
      resolver.next();
    }
  }
}
