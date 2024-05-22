import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';

Widget getQrCodeWidgetForData(String data, double size) {
  return QrImageView(
    data: data,
    version: QrVersions.auto,
    size: size,
  );
}
