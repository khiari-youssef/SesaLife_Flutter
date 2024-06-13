import 'package:designsystem/designsystem_exports.dart';

class SesamePasswordTextField extends StatefulWidget {
  final ValueChanged<String> onChange;
  final String label;
  final String? placeHolder;
  final bool isVisible;
  final bool isRequired;
  final bool isEnabled;
  final String? errorMessage;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final int? maxLength;
  final Function(bool isVisible)? onVisibilityChanged;

  const SesamePasswordTextField(
      {super.key,
      required this.onChange,
      required this.label,
      this.placeHolder,
      this.controller,
      this.isVisible = false,
      this.isRequired = true,
      this.isEnabled = true,
      this.errorMessage,
      this.keyboardType = TextInputType.text,
      this.maxLength,
      this.onVisibilityChanged});

  @override
  State<StatefulWidget> createState() => SesamePasswordTextFieldState();
}

class SesamePasswordTextFieldState extends State<SesamePasswordTextField> {
  late bool isVisibleState;

  @override
  void initState() {
    super.initState();
    isVisibleState = widget.isVisible;
  }

  @override
  void didUpdateWidget(covariant SesamePasswordTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.onVisibilityChanged != null) {
      isVisibleState = widget.isVisible;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SesameCustomTextField(
      isObscure: !isVisibleState,
      rightIcon: TextFieldIcon(
          isVisibleState ? "ic_visible.svg" : "ic_invisible.svg", () {
        if (widget.onVisibilityChanged != null) {
          widget.onVisibilityChanged!(!isVisibleState);
        } else {
          setState(() {
            isVisibleState = !isVisibleState;
          });
        }
      }),
      onChange: widget.onChange,
      label: widget.label,
      isRequired: widget.isRequired,
      isEnabled: widget.isEnabled,
      controller: widget.controller,
      errorMessage: widget.errorMessage,
      placeHolder: widget.placeHolder,
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
    );
  }
}
