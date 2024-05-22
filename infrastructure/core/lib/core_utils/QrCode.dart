import 'package:flutter/widgets.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

Widget getQrCodeWidgetForData(String data) {
  return PrettyQrView.data(
    data: data,
  );
}
