// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `SESAME`
  String get welcome_logo_sesame_name {
    return Intl.message(
      'SESAME',
      name: 'welcome_logo_sesame_name',
      desc: '',
      args: [],
    );
  }

  /// `Student Life`
  String get welcome_logo_description {
    return Intl.message(
      'Student Life',
      name: 'welcome_logo_description',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Guest space`
  String get guest_space {
    return Intl.message(
      'Guest space',
      name: 'guest_space',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `FirstName`
  String get firstName {
    return Intl.message(
      'FirstName',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `LastName`
  String get lastName {
    return Intl.message(
      'LastName',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Diploma`
  String get diploma {
    return Intl.message(
      'Diploma',
      name: 'diploma',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Programs`
  String get programs_label {
    return Intl.message(
      'Programs',
      name: 'programs_label',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration_label {
    return Intl.message(
      'Registration',
      name: 'registration_label',
      desc: '',
      args: [],
    );
  }

  /// `Rules & Security policy`
  String get privacy_policy_label {
    return Intl.message(
      'Rules & Security policy',
      name: 'privacy_policy_label',
      desc: '',
      args: [],
    );
  }

  /// `Learn more about the different curriculums offered by sesame university and future opportunities.`
  String get programs_desc {
    return Intl.message(
      'Learn more about the different curriculums offered by sesame university and future opportunities.',
      name: 'programs_desc',
      desc: '',
      args: [],
    );
  }

  /// `Fill the registration form with your personal data and your preferred program for candidacy.`
  String get registration_desc {
    return Intl.message(
      'Fill the registration form with your personal data and your preferred program for candidacy.',
      name: 'registration_desc',
      desc: '',
      args: [],
    );
  }

  /// `Learn more about how the app uses and protects your personal data.`
  String get privacy_policy_desc {
    return Intl.message(
      'Learn more about how the app uses and protects your personal data.',
      name: 'privacy_policy_desc',
      desc: '',
      args: [],
    );
  }

  /// `My personal details`
  String get my_personal_details {
    return Intl.message(
      'My personal details',
      name: 'my_personal_details',
      desc: '',
      args: [],
    );
  }

  /// `Identity verification`
  String get identity_verification {
    return Intl.message(
      'Identity verification',
      name: 'identity_verification',
      desc: '',
      args: [],
    );
  }

  /// `Choose your program`
  String get program_selection {
    return Intl.message(
      'Choose your program',
      name: 'program_selection',
      desc: '',
      args: [],
    );
  }

  /// `Next step`
  String get next_step {
    return Intl.message(
      'Next step',
      name: 'next_step',
      desc: '',
      args: [],
    );
  }

  /// `Quit`
  String get quit {
    return Intl.message(
      'Quit',
      name: 'quit',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Semester {semester} timetable`
  String calendar_title(Object semester) {
    return Intl.message(
      'Semester $semester timetable',
      name: 'calendar_title',
      desc: '',
      args: [semester],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get myprofile {
    return Intl.message(
      'My profile',
      name: 'myprofile',
      desc: '',
      args: [],
    );
  }

  /// `My badge`
  String get mybadge {
    return Intl.message(
      'My badge',
      name: 'mybadge',
      desc: '',
      args: [],
    );
  }

  /// `If the email you entered is not already registered, we will you send an OTP code for re-authentication in order to proceed to the next steps.`
  String get enrollment_notice_step1 {
    return Intl.message(
      'If the email you entered is not already registered, we will you send an OTP code for re-authentication in order to proceed to the next steps.',
      name: 'enrollment_notice_step1',
      desc: '',
      args: [],
    );
  }

  /// `An OTP code is sent via email to {email} And will expire in 10 minutes`
  String enrollment_code_verification_notice(Object email) {
    return Intl.message(
      'An OTP code is sent via email to $email And will expire in 10 minutes',
      name: 'enrollment_code_verification_notice',
      desc: '',
      args: [email],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
