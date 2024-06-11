import 'package:shared_dependencies/shared_dependencies.dart';

part 'SesameAttachment.freezed.dart';

enum SesameAttachmentType { pdf, word, text, image, any }

@freezed
class SesameAttachment with _$SesameAttachment {
  const factory SesameAttachment.local(
      {required String uri, required SesameAttachmentType type}) = _local;
  const factory SesameAttachment.network(
      {required String url, required SesameAttachmentType type}) = _network;
}
