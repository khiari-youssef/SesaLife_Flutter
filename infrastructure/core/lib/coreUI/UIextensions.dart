import 'package:core/exports.dart';

extension WidgetUtils on Widget {
  Widget buildWhenNullSafe<T>(T? param, Widget Function(T safeParam) builder) {
    if (param != null) {
      return builder(param);
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget buildWhen(bool condition, Widget Function() builder) {
    if (condition) {
      return builder();
    } else {
      return const SizedBox.shrink();
    }
  }
}
