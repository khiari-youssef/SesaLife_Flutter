import 'package:core/exports.dart';
import 'package:designsystem/components/images/custom_icon.dart';

enum CreditCardType { visa, masterCard }

class CreditCardPreview extends StatelessWidget {
  final CreditCardType? cardType;
  final TextEditingController cardHolderNameController;
  final TextEditingController cardExpirationDateController;
  final TextEditingController cardNumberController;
  final bool shouldShowCCNumber;
  const CreditCardPreview({
    super.key,
    required this.cardType,
    required this.cardHolderNameController,
    required this.cardExpirationDateController,
    required this.cardNumberController,
    required this.shouldShowCCNumber,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            image: cardType != null
                ? DecorationImage(
                    image: AssetImage(
                        "assets/images/raster/${switch (cardType!) {
                          CreditCardType.visa => "visa",
                          CreditCardType.masterCard => "master-card"
                        }}-mask.png",
                        package: "designsystem"),
                    fit: BoxFit.fill)
                : null,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12.r),
            gradient: switch (cardType) {
              CreditCardType.visa => const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [
                      0.0,
                      0.27,
                      0.5,
                      0.76,
                      1.0
                    ],
                    colors: [
                      Color(0xFF780C67),
                      Color(0xFF940967),
                      Color(0xFFB10667),
                      Color(0xFFCD0366),
                      Color(0xFFE90066)
                    ]),
              CreditCardType.masterCard => const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [
                      0.0,
                      0.49,
                      1.0
                    ],
                    colors: [
                      Color(0xFF0968E5),
                      Color(0xFF0941AB),
                      Color(0xFF091970)
                    ]),
              _ => const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 1.0],
                  colors: [Color(0xFF284C8E), Color(0xFF0378A6)])
            }),
        child: SizedBox(
          height: 154.h,
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: cardType == null
                ? Center(
                    child: HeadlineLarge(
                        text: S.of(context).payment_card_invalid_type,
                        color: Colors.white,
                        textAlign: TextAlign.center),
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: LabelMedium(
                            text: S.of(context).payment_credit_card_label,
                            textAlign: TextAlign.start,
                            color: Colors.white,
                          )),
                          cardType != null
                              ? Expanded(
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: CustomIcon(
                                          iconSVGname: "${switch (cardType!) {
                                            CreditCardType.visa => "visa",
                                            CreditCardType.masterCard =>
                                              "master-card"
                                          }}.svg",
                                          sizeScale: 0.9,
                                          shouldApplyColorFilter: false)))
                              : const SizedBox.shrink()
                        ],
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: LabelMedium(
                            text: shouldShowCCNumber
                                ? cardNumberController.text
                                : cardNumberController.text
                                    .replaceAll(RegExp(r"."), "●"),
                            color: Colors.white),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: LabelMedium(
                                  text: cardHolderNameController.text,
                                  textAlign: TextAlign.start,
                                  color: Colors.white)),
                          Expanded(
                              child: LabelMedium(
                                  text: cardExpirationDateController.text,
                                  textAlign: TextAlign.end,
                                  color: Colors.white))
                        ],
                      )
                    ],
                  ),
          ),
        ));
  }
}
