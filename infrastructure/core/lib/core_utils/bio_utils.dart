import 'package:core/exports.dart';
import 'package:designsystem/extensions.dart';
import 'package:local_auth/local_auth.dart';

class SesameDeviceAuthManager {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> hasBiometricCapabilitiesAsync() async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    return canAuthenticateWithBiometrics || await auth.isDeviceSupported();
  }

  Future<bool> hasEnrolledBiometricAsync(
      {bool requireStrongBio = false}) async {
    final List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();
    return requireStrongBio
        ? availableBiometrics.contains(BiometricType.strong) ||
            availableBiometrics.contains(BiometricType.face)
        : availableBiometrics.isNotEmpty;
  }

  void requireAuthenticationAsync(BuildContext context,
      {required VoidCallback onActionAuthorized,
      VoidCallback? onActionDenied}) {
    auth
        .authenticate(
            localizedReason: S.of(context).device_auth_action,
            options: const AuthenticationOptions(useErrorDialogs: false))
        .then((isAuthenticated) {
      if (isAuthenticated) {
        onActionAuthorized();
      } else {
        if (onActionDenied != null) {
          onActionDenied();
        }
      }
    }, onError: (e) {
      context.showToast(
          message: S.of(context).device_auth_unsupported,
          toastType: ToastType.error);
    });
  }
}
