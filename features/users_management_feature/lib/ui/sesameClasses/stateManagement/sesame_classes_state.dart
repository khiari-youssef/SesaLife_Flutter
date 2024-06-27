part of 'sesame_classes_bloc.dart';

@freezed
class SesameClassesState with _$SesameClassesState {
  const factory SesameClassesState.initial({List<SesameClass>? initialData}) =
      _initial;
  const factory SesameClassesState.loading() = _loading;
  const factory SesameClassesState.error(DomainErrorType errorType) = _error;
  const factory SesameClassesState.success(List<SesameClass> data) = _success;
}
