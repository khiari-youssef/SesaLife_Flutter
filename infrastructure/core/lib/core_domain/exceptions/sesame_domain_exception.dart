import 'package:core/core_domain/DomainErrorType.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_domain_exception.freezed.dart';

@freezed
abstract class SesameDomainException
    with _$SesameDomainException
    implements Exception {
  const factory SesameDomainException(
      {DomainErrorType type,
      String? message,
      Map<String, dynamic>? details}) = _SesameDomainException;
}
