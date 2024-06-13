import 'package:core/exports.dart';
import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/components/textViews/labels/LabelMedium.dart';
import 'package:flutter/cupertino.dart';

enum CreditCardType { visa, masterCard }

class CreditCardPreview extends StatelessWidget {
  final CreditCardType cardType;
  final String cardHolderName;
  final String cardExpirationDate;
  final String cardNumber;
  const CreditCardPreview({
    super.key,
    required this.cardType,
    required this.cardHolderName,
    required this.cardExpirationDate,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/raster/${switch (cardType) {
                      CreditCardType.visa => "visa",
                      CreditCardType.masterCard => "master-card"
                    }}-mask.png",
                    package: "designsystem"),
                fit: BoxFit.fill),
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
                    ])
            }),
        child: SizedBox(
          height: 154.h,
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Expanded(
                        child: LabelMedium(
                      text: "Credit card",
                      textAlign: TextAlign.start,
                      color: Colors.white,
                    )),
                    Expanded(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: CustomIcon(
                                iconSVGname: "${switch (cardType) {
                                  CreditCardType.visa => "visa",
                                  CreditCardType.masterCard => "master-card"
                                }}.svg",
                                sizeScale: 0.9,
                                shouldApplyColorFilter: false)))
                  ],
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: LabelMedium(
                      text: "1234 5678 9357 2350", color: Colors.white),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: LabelMedium(
                            text: "JackLewis",
                            textAlign: TextAlign.start,
                            color: Colors.white)),
                    Expanded(
                        child: LabelMedium(
                            text: "07/24",
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
