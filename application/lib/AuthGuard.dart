import 'package:core/core_utils/BioUtils.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/navigation/users_navigation_configuration.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SesameDeviceAuthManager deviceAuthenticator = GetIt.instance.get();
    if (await deviceAuthenticator.hasBiometricCapabilitiesAsync() &&
        await deviceAuthenticator.hasEnrolledBiometricAsync(
            requireStrongBio: true)) {
      resolver.redirect(const LoginRoute());
    } else {
      resolver.next();
    }
  }
}
