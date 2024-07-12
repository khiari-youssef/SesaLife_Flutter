import 'package:flutter_test/flutter_test.dart';
import 'package:users_management_feature/domain/services/credit_card_input_validation_service.dart';

void main() {
  CreditCardInputValidationService creditCardInputValidationService =
      CreditCardInputValidationService();
  test("InvalidCreditCardNumberLength", () {
    expect(
        creditCardInputValidationService
            .isCreditCardNumberValid("4526 5674 775"),
        false);
  });
  test("InvalidCreditCardNumberLength", () {
    expect(
        creditCardInputValidationService.isCreditCardNumberValid("  "), false);
  });
  test("InvalidCreditCardNumberFormatWithLetters", () {
    expect(
        creditCardInputValidationService
            .isCreditCardNumberValid("4526 5674 7756 5DX4"),
        false);
  });
  test("InvalidCreditCardNumberNetwork", () {
    expect(
        creditCardInputValidationService
            .isCreditCardNumberValid("2526 5674 7756 7476"),
        false);
  });
  test("ValidCreditCardNumber", () {
    expect(
        creditCardInputValidationService
            .isCreditCardNumberValid("4526 5674 7756 7476"),
        true);
  });

  test("UnValidCCExpiryDateWithBlankValue", () {
    expect(creditCardInputValidationService.isCCExpiryDateValid(" "), false);
  });

  test("UnValidCCExpiryDateWithIsoDateFormat", () {
    expect(creditCardInputValidationService.isCCExpiryDateValid("02-07-2024"),
        false);
  });
  test("UnValidCCExpiryDateWithInvalidDateFormat", () {
    expect(creditCardInputValidationService.isCCExpiryDateValid("02/07/2024"),
        false);
  });
  test("UnValidCCExpiryDateWithLetters", () {
    expect(
        creditCardInputValidationService.isCCExpiryDateValid("ab/5v"), false);
  });
  test("ValidCCExpiryDate", () {
    expect(creditCardInputValidationService.isCCExpiryDateValid("09/29"), true);
  });
  test("UnValidCCholderNameWithBlankValue", () {
    expect(creditCardInputValidationService.isCCHolderNameDValid(" "), false);
  });
  test("UnValidCCholderNameWithDigitLetters", () {
    expect(
        creditCardInputValidationService.isCCHolderNameDValid("AB45"), false);
  });
  test("ValidCCholderName", () {
    expect(
        creditCardInputValidationService.isCCHolderNameDValid("KHIARI YOUSSEF"),
        true);
  });
  test("UnValidCVVcodeWithEmptyValue", () {
    expect(creditCardInputValidationService.isCVValid(" "), false);
  });
  test("UnValidCVVcodeWithInCorrectLengthAndLetterChars", () {
    expect(creditCardInputValidationService.isCVValid("KHIARI YOUSSEF"), false);
  });
  test("UnValidCVVcodeWithInCorrectLengthWithDigitChars", () {
    expect(creditCardInputValidationService.isCVValid("3563"), false);
  });
  test("UnValidCVVcodeWithCorrectLengthAndContainsNonDigitChars", () {
    expect(creditCardInputValidationService.isCVValid("ABC"), false);
  });
  test("ValidCVVcode", () {
    expect(creditCardInputValidationService.isCVValid("353"), true);
  });
}
