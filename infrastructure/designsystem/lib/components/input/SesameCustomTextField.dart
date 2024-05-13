import 'package:designsystem/designsystem_exports.dart';

class SesameCustomTextField extends StatelessWidget {
  final ValueChanged<String> onChange;
  final String label;
  final String? placeHolder;

  const SesameCustomTextField(
      {super.key,
      required this.onChange,
      required this.label,
      this.placeHolder});

  @override
  Widget build(BuildContext context) {
    TextStyle? textInput = Theme.of(context)
        .typography
        .black
        .labelMedium
        ?.copyWith(color: Theme.of(context).colorScheme.onBackground);
    InputBorder textFieldBorder =
        OutlineInputBorder(borderSide: BorderSide(width: 1.r));
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .typography
              .black
              .labelMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
              constraints: BoxConstraints(minHeight: 32.h, maxHeight: 48.h),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.r, horizontal: 12.r),
              border: textFieldBorder,
              focusedBorder: textFieldBorder.copyWith(
                  borderSide: textFieldBorder.borderSide
                      .copyWith(color: Theme.of(context).colorScheme.primary)),
              hintText: placeHolder,
              hintStyle: Theme.of(context)
                  .typography
                  .black
                  .bodyMedium
                  ?.copyWith(
                      height: 1.2.sp, color: Theme.of(context).hintColor)),
          onChanged: onChange,
          style: textInput,
          maxLines: 1,
          textAlignVertical: TextAlignVertical.center,
        ),
      ],
    );
  }
}
