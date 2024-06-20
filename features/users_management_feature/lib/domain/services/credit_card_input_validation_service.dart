class CreditCardInputValidationService {
  final RegExp onlyNumbersRegExp = RegExp(r"[0-9]*");
  final RegExp ccNumbersRegExp =
      RegExp(r"[0-9]{4}\s[0-9]{4}\s[0-9]{4}\s[0-9]{4}");
  final RegExp ccNameRegExp = RegExp(r"^[a-zA-Z]+$");

  bool isCreditCardNumberValid(String ccNumber) {
    return ccNumber.startsWith(RegExp("[4-5]")) &&
        ccNumbersRegExp.hasMatch(ccNumber);
  }

  bool isCCExpiryDateValid(String expiryDate) {
    List<String> data = expiryDate.split("/");
    if (data.length != 2) {
      return false;
    } else {
      try {
        int month = int.parse(data[0]);
        int year = int.parse(data[1]);
        DateTime current = DateTime.now();
        return month > 0 &&
            month <= 12 &&
            DateTime(2000 + year, month).isAfter(current);
      } catch (e) {
        return false;
      }
    }
  }

  bool isCCHolderNameDValid(String ccHolderName) {
    return ccNameRegExp.hasMatch(ccHolderName);
  }

  bool isCVValid(String cvv) {
    return onlyNumbersRegExp.hasMatch(cvv) && cvv.length == 3;
  }
}
