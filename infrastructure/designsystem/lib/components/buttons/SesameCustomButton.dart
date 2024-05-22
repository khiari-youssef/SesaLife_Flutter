import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../images/CustomIcon.dart';

export 'package:designsystem/components/buttons/SesameCustomButton.dart';
export 'package:designsystem/components/input/SesameCustomTextField.dart';

enum SesameButtonVariant { soft, hard, tertiary, neutral }

class SesameCustomButton extends StatelessWidget {
  final String buttonText;
  final SesameButtonVariant variant;
  final String? leftIconAssetName;
  final VoidCallback onPressed;
  final bool shouldFillMaxWidth;
  final bool isLoading;
  final bool isEnabled;
  const SesameCustomButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.leftIconAssetName,
      this.variant = SesameButtonVariant.soft,
      this.shouldFillMaxWidth = false,
      this.isLoading = false,
      this.isEnabled = true});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    bool isDarkMode = theme.brightness == Brightness.dark;

    Color variantBackgroundColor = switch (variant) {
      SesameButtonVariant.soft => theme.colorScheme.secondary,
      SesameButtonVariant.hard => theme.colorScheme.primary,
      SesameButtonVariant.tertiary => theme.colorScheme.tertiary,
      SesameButtonVariant.neutral =>
        isDarkMode ? const Color(0xFF9D9999) : const Color(0xFFF3F3F3)
    };
    OutlinedBorder buttonBorder = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.r)));
    TextStyle? buttonTextStyle = theme.typography.black.labelLarge?.copyWith(
        color: variant == SesameButtonVariant.neutral
            ? theme.colorScheme.onBackground
            : Colors.white,
        letterSpacing: 0.12);
    return ConstrainedBox(
        constraints: BoxConstraints.loose(Size.fromHeight(48.h)),
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: const WidgetStatePropertyAll(0.0),
                backgroundColor: WidgetStatePropertyAll(isEnabled
                    ? variantBackgroundColor
                    : Color.alphaBlend(
                        const Color(0xCCF3F3F3), variantBackgroundColor)),
                shape: WidgetStatePropertyAll(buttonBorder)),
            onPressed: isEnabled ? (isLoading ? null : onPressed) : null,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.r),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn,
                child: isLoading
                    ? ConstrainedBox(
                        constraints:
                            BoxConstraints.loose(Size.fromRadius(12.r)),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2.w,
                        ),
                      )
                    : (leftIconAssetName == null ||
                            leftIconAssetName?.isEmpty == true)
                        ? Text(buttonText, style: buttonTextStyle)
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                CustomIcon(
                                    iconSVGname: leftIconAssetName!,
                                    color:
                                        variant == SesameButtonVariant.neutral
                                            ? theme.colorScheme.onBackground
                                            : Colors.white),
                                SizedBox(width: 12.w),
                                Text(buttonText, style: buttonTextStyle)
                              ]),
              ),
            )));
  }
}
