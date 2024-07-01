import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:core/core_domain/application_meta_info_facade.dart';
import 'package:core/core_domain/DomainErrorType.dart';
import 'package:core/core_domain/entities/sesame_privacy_policy_document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sesame_policy_and_terms_event.dart';
part 'sesame_policy_and_terms_state.dart';
part 'sesame_policy_and_terms_bloc.freezed.dart';

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
    SesamePolicyAndTermsState resultState = await applicationMetaInfo
        .getAppPolicy(currentLocal.languageCode)
        .then((data) {
      return SesamePolicyAndTermsState.success(data);
    }, onError: (error) {
      return const SesamePolicyAndTermsState.error(
          DomainErrorType.UnknownError);
    });
    emit(resultState);
  }
}
