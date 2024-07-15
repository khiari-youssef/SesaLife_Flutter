import 'package:core/exports.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("sesame standard display date test cases", () {
    test("When date is empty then test should fail", () {
      expect(" ".hasSesameStdDateFormat(), false);
    });
    test("When date is ISO formatted then test should fail", () {
      expect("13-04-1998".hasSesameStdDateFormat(), false);
    });
    test(
        "When date is dd/MM/YYYY formatted AND days are out of range then test should succeed",
        () {
      expect("12/04/1998".hasSesameStdDateFormat(), true);
    });
  });
  group("sesame email format test cases", () {
    test("When email is blank or empty then test should fail", () {
      expect(" ".hasValidEmailFormat(), false);
    });
    test("When email does not contain character @ then test should fail", () {
      expect("khiari.youssefgmail.com".hasValidEmailFormat(), false);
    });
    test("When email domain is invalid then test should fail", () {
      expect("khiari.youssef@c".hasValidEmailFormat(), false);
    });
    test("When email host is invalid then test should fail", () {
      expect("@gmail.com".hasValidEmailFormat(), false);
    });
    test("When email format is valid then test should succeed", () {
      expect("khiari.youssef@gmail.com".hasValidEmailFormat(), true);
    });
  });
  group("sesame only letters format test cases", () {
    test("when input contains a digit then test should fail", () {
      expect("khiari7 youssef".hasOnlyLetters(), false);
    });
    test("when input contains a special character then test should fail", () {
      expect("khiari.youssef".hasOnlyLetters(), false);
    });
    test("when input contains no letter then test should succeed", () {
      expect("khiari youssef".hasOnlyLetters(), true);
    });
  });
}
