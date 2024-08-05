import 'package:designsystem/components/images/custom_clickable_icon.dart';
import 'package:designsystem/designsystem_exports.dart';

class TextFieldIcon {
  final String iconAsset;
  final VoidCallback onIconClicked;
  TextFieldIcon(this.iconAsset, this.onIconClicked);
}

class SesameCustomTextField extends StatelessWidget {
  final ValueChanged<String> onChange;
  final String label;
  final TextEditingController? controller;
  final String? placeHolder;
  final bool isRequired;
  final bool isEnabled;
  final bool isObscure;
  final TextFieldIcon? leftIcon;
  final TextFieldIcon? rightIcon;
  final String? errorMessage;
  final TextInputType keyboardType;
  final int? maxLength;

  const SesameCustomTextField(
      {super.key,
      required this.onChange,
      required this.label,
      this.placeHolder,
      this.controller,
      this.isRequired = false,
      this.errorMessage,
      this.isEnabled = true,
      this.isObscure = false,
      this.leftIcon,
      this.rightIcon,
      this.keyboardType = TextInputType.text,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    TextStyle? textInput = Theme.of(context)
        .typography
        .black
        .labelMedium
        ?.copyWith(color: Theme.of(context).colorScheme.onSurface);
    InputBorder textFieldBorder = Theme.of(context).brightness ==
            Brightness.dark
        ? OutlineInputBorder(
            borderSide: BorderSide(width: 1.r, color: const Color(0xFFCBCBCB)))
        : OutlineInputBorder(
            borderSide: BorderSide(width: 1.r, color: const Color(0xFF79747E)));
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        isRequired
            ? Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LabelMedium(text: label),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: LabelSmall(
                        text: S.of(context).required,
                        textAlign: TextAlign.end,
                        color: Colors.red),
                  ))
                ],
              )
            : LabelMedium(text: label),
        const SizedBox(height: 10),
        TextFormField(
          obscureText: isObscure,
          keyboardType: keyboardType,
          controller: controller,
          maxLength: maxLength,
          decoration: InputDecoration(
              prefixIcon: leftIcon != null
                  ? CustomClickableIcon(
                      iconSVGname: leftIcon!.iconAsset,
                      color: Theme.of(context).colorScheme.primary,
                      clickablePadding: EdgeInsets.all(8.r),
                      onClicked: leftIcon!.onIconClicked)
                  : null,
              suffixIcon: rightIcon != null
                  ? CustomClickableIcon(
                      iconSVGname: rightIcon!.iconAsset,
                      color: Theme.of(context).colorScheme.primary,
                      clickablePadding: EdgeInsets.all(8.r),
                      onClicked: rightIcon!.onIconClicked,
                    )
                  : null,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.r, horizontal: 12.r),
              border: textFieldBorder,
              errorBorder: textFieldBorder.copyWith(
                  borderSide:
                      textFieldBorder.borderSide.copyWith(color: Colors.red)),
              focusedBorder: textFieldBorder.copyWith(
                  borderSide: textFieldBorder.borderSide
                      .copyWith(color: Theme.of(context).colorScheme.primary)),
              hintText: placeHolder,
              errorText: errorMessage,
              hintStyle: Theme.of(context)
                  .typography
                  .black
                  .bodyMedium
                  ?.copyWith(
                      height: 1.2.sp, color: Theme.of(context).hintColor)),
          onChanged: onChange,
          style: textInput,
          maxLines: 1,
          enabled: isEnabled,
          textAlignVertical: TextAlignVertical.center,
        ),
      ],
    );
  }
}
