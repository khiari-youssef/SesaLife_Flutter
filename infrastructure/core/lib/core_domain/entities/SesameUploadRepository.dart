import 'package:shared_dependencies/shared_dependencies.dart';

part 'SesameUploadRepository.freezed.dart';

@freezed
class SesameUploadRepository with _$SesameUploadRepository {
  const factory SesameUploadRepository(
      {required String baseUrl,
      required String moduleBucket,
      required String subjectBucket,
      required String classBucket,
      required String contentName}) = _SesameUploadRepository;
}
