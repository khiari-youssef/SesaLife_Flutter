import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:core/core_domain/domain_error_type.dart';
import 'package:core/core_domain/application_meta_info_facade.dart';
import 'package:core/core_domain/entities/sesame_privacy_policy_document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sesame_policy_and_terms_bloc.freezed.dart';
part 'sesame_policy_and_terms_event.dart';
part 'sesame_policy_and_terms_state.dart';

enum DocumentType { privacyPolicy, termsOfService }

class SesamePolicyAndTermsBloc
    extends Bloc<SesamePolicyAndTermsEvent, SesamePolicyAndTermsState> {
  final Locale currentLocal;
  final ApplicationMetaInfoFacade applicationMetaInfo;
  SesamePolicyAndTermsBloc(this.currentLocal, this.applicationMetaInfo)
      : super(const SesamePolicyAndTermsState.loading()) {
    on<SesamePolicyAndTermsEvent>(_loadAppPolicy);
  }

  void _loadAppPolicy(SesamePolicyAndTermsEvent event,
      Emitter<SesamePolicyAndTermsState> emit) async {
    emit(const SesamePolicyAndTermsState.loading());
    await Future.delayed(const Duration(seconds: 1));

    applicationMetaInfo.getAppPolicy(currentLocal.languageCode);
    if (event.documentType != null) {
      Future<SesamePrivacyPolicyDocument> task = switch (event.documentType!) {
        DocumentType.privacyPolicy =>
          applicationMetaInfo.getAppPolicy(currentLocal.languageCode),
        DocumentType.termsOfService =>
          applicationMetaInfo.getAppTermsOfService(currentLocal.languageCode)
      };
      SesamePolicyAndTermsState resultState = await task.then((data) {
        return SesamePolicyAndTermsState.success(data);
      }, onError: (error) {
        return const SesamePolicyAndTermsState.error(
            DomainErrorType.UnknownError);
      });
      emit(resultState);
    } else {
      emit(const SesamePolicyAndTermsState.error(DomainErrorType.UnknownError));
    }
  }
}
