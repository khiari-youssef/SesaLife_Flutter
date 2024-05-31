import 'package:core/core_domain/ApplicationMetaInfoFacade.dart';
import 'package:core/core_domain/entities/AppPolicySection.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class SesamePrivacyAndSecurityPolicyCubitStateManager
    extends Cubit<List<AppPolicySection>> {
  final Locale currentLocal;
  final ApplicationMetaInfoFacade applicationMetaInfo;
  SesamePrivacyAndSecurityPolicyCubitStateManager(
      super.initialState, this.currentLocal, this.applicationMetaInfo) {
    loadAppPolicy();
  }

  void loadAppPolicy() {
    applicationMetaInfo.getAppPolicy(currentLocal.languageCode).then((result) {
      emit(result);
    }, onError: (e) {});
  }

  void loadAppMetaData() {}
}
