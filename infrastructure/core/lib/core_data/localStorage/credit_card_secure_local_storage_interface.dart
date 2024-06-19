import 'dart:isolate';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CreditCardDetails {
  final String? ccHolderName;
  final String? ccNumber;
  final String? cvv;
  final String? ccExpiryDate;
  final String? ccEmail;
  CreditCardDetails(
      {required this.ccHolderName,
      required this.ccNumber,
      required this.cvv,
      required this.ccExpiryDate,
      this.ccEmail});
}

abstract interface class CreditCardSecureLocalStorageInterface {
  Future<void> saveCreditCardData(CreditCardDetails data);

  Future<CreditCardDetails> readCreditCardData();

  Future<bool> hasSavedCreditCardDetails();
}

class CreditCardSecureStorageImpl
    implements CreditCardSecureLocalStorageInterface {
  final FlutterSecureStorage fsStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));

  @override
  Future<void> saveCreditCardData(CreditCardDetails data) async {
    fsStorage.write(key: "ccHolderName", value: data.ccHolderName);
    fsStorage.write(key: "ccNumber", value: data.ccNumber);
    fsStorage.write(key: "cvv", value: data.cvv);
    fsStorage.write(key: "ccExpiryDate", value: data.ccExpiryDate);
    fsStorage.write(key: "ccEmail", value: data.ccEmail);
  }

  @override
  Future<CreditCardDetails> readCreditCardData() async {
    Map<String, String> data =
        await fsStorage.readAll(aOptions: fsStorage.aOptions);
    String? ccHolderName = data["ccHolderName"];
    String? ccNumber = data["ccNumber"];
    String? cvv = data["cvv"];
    String? ccExpiryDate = data["ccExpiryDate"];
    String? ccEmail = data["ccEmail"];
    return CreditCardDetails(
        ccHolderName: ccHolderName,
        ccNumber: ccNumber,
        cvv: cvv,
        ccExpiryDate: ccExpiryDate,
        ccEmail: ccEmail);
  }

  @override
  Future<bool> hasSavedCreditCardDetails() async {
    return await fsStorage.containsKey(key: "ccNumber") ||
        await fsStorage.containsKey(key: "ccHolderName") ||
        await fsStorage.containsKey(key: "cvv") ||
        await fsStorage.containsKey(key: "ccExpiryDate");
  }
}
