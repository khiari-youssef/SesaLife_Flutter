part of 'sesame_classes_bloc.dart';

@freezed
class SesameClassesEvent with _$SesameClassesEvent {
  const factory SesameClassesEvent.loadSesameClasses(
      {String? searchQuery,
      SesameClassSearchFilter? filter}) = _loadSesameClasses;
}
