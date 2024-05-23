import 'package:local_auth/local_auth.dart';

class SesameDeviceAuthManager {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> hasBiometricCapabilities() async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    return canAuthenticateWithBiometrics || await auth.isDeviceSupported();
  }

  Future<bool> hasEnrolledBiometric({bool requireStrongBio = false}) async {
    final List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();
    return requireStrongBio
        ? availableBiometrics.contains(BiometricType.strong) ||
            availableBiometrics.contains(BiometricType.face)
        : availableBiometrics.isNotEmpty;
  }
}
