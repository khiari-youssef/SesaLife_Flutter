import 'package:core/exports.dart';
import 'package:designsystem/theme/dimens.dart';

import 'labeled_display_text.dart';

class SessionScheduleDisplaySection extends StatelessWidget {
  final Map<String, String> entries;
  final ComponentSize size;
  const SessionScheduleDisplaySection(
      {super.key, required this.entries, this.size = ComponentSize.screenSize});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.vertical,
        spacing: 8.h,
        alignment: WrapAlignment.start,
        children: entries.keys.map((key) {
          String? value = entries[key];
          return value != null
              ? LabeledDisplayText(
                  label: key,
                  value: value,
                  size: ComponentSize.screenSize,
                )
              : const SizedBox.shrink();
        }).toList());
  }
}
