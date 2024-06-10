import 'package:core/exports.dart';
import 'package:flutter/widgets.dart';
import 'package:qrscan/qrscan.dart' as scanner;

Widget getQrCodeWidgetForData(String data) {
  return FutureBuilder(
    future: scanner.generateBarCode(data),
    builder: (context, future) {
      if (future.hasError) {
        return const Center(
          child: Text("Qr code invalid"),
        );
      } else {
        return Image.memory(future.requireData);
      }
    },
  );
}
