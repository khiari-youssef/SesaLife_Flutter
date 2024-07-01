part of 'sesame_policy_and_terms_bloc.dart';

@freezed
class SesamePolicyAndTermsState with _$SesamePolicyAndTermsState {
  const factory SesamePolicyAndTermsState.loading() = _loading;
  const factory SesamePolicyAndTermsState.error(DomainErrorType errorType) =
      _error;
  const factory SesamePolicyAndTermsState.success(
      SesamePrivacyPolicyDocument data) = _success;
}
