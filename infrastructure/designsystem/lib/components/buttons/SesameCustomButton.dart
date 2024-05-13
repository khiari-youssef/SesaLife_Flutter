import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../images/CustomIcon.dart';

export 'package:designsystem/components/buttons/SesameCustomButton.dart';
export 'package:designsystem/components/input/SesameCustomTextField.dart';

enum SesameButtonVariant { soft, hard, tertiary }

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
    Color variantBackgroundColor = switch (variant) {
      SesameButtonVariant.soft => theme.colorScheme.secondary,
      SesameButtonVariant.hard => theme.colorScheme.primary,
      SesameButtonVariant.tertiary => theme.colorScheme.tertiary
    };
    OutlinedBorder buttonBorder = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.r)));
    return ConstrainedBox(
        constraints: BoxConstraints.loose(Size.fromHeight(48.h)),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(isEnabled
                    ? variantBackgroundColor
                    : Color.alphaBlend(
                        const Color(0xCCF3F3F3), variantBackgroundColor)),
                shape: MaterialStatePropertyAll(buttonBorder)),
            onPressed: isEnabled ? onPressed : null,
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
                        ? Text(buttonText,
                            style: Theme.of(context)
                                .typography
                                .black
                                .labelLarge
                                ?.copyWith(color: Colors.white))
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                CustomIcon(
                                    iconSVGname: leftIconAssetName!,
                                    color: Colors.white),
                                SizedBox(width: 12.w),
                                Text(buttonText,
                                    style: Theme.of(context)
                                        .typography
                                        .black
                                        .labelLarge
                                        ?.copyWith(color: Colors.white))
                              ]),
              ),
            )));
  }
}
