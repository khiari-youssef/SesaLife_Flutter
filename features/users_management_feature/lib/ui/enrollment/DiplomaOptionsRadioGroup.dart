import 'package:designsystem/designsystem_exports.dart';

import '../../domain/entities/SesameDiplomaOption.dart';

class DiplomaOptionsRadioGroupState extends State<DiplomaOptionsRadioGroup> {
  String? selectedGroupID;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ...widget.data.map((option) => SesameRadioButton(
              maxWidth: 150.w,
              onChecked: (groupID) {
                setState(() {
                  selectedGroupID = groupID;
                });
                widget.onOptionSelected(option);
              },
              id: option.id,
              groupID: selectedGroupID,
              label: option.label)),
        ]);
  }
}

class DiplomaOptionsRadioGroup extends StatefulWidget {
  final List<SesameDiplomaOption> data;
  final Function(SesameDiplomaOption option) onOptionSelected;
  const DiplomaOptionsRadioGroup(
      {super.key, required this.data, required this.onOptionSelected});

  @override
  State<StatefulWidget> createState() => DiplomaOptionsRadioGroupState();
}
