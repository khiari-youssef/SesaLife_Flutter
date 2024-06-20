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

  /// `Go back`
  String get go_back {
    return Intl.message(
      'Go back',
      name: 'go_back',
      desc: '',
      args: [],
    );
  }

  /// `Your device either does not have strong biometric authentication or you did not yet enroll one !`
  String get device_auth_unsupported {
    return Intl.message(
      'Your device either does not have strong biometric authentication or you did not yet enroll one !',
      name: 'device_auth_unsupported',
      desc: '',
      args: [],
    );
  }

  /// `This action requires authentication`
  String get device_auth_action {
    return Intl.message(
      'This action requires authentication',
      name: 'device_auth_action',
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

  /// `Birthdate`
  String get birthdate {
    return Intl.message(
      'Birthdate',
      name: 'birthdate',
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

  /// `Male`
  String get sex_male {
    return Intl.message(
      'Male',
      name: 'sex_male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get sex_female {
    return Intl.message(
      'Female',
      name: 'sex_female',
      desc: '',
      args: [],
    );
  }

  /// `Choose your diploma :`
  String get diploma_choice_title {
    return Intl.message(
      'Choose your diploma :',
      name: 'diploma_choice_title',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to start a career in IT along with your education ?`
  String get work_opportunity_suggestion_title {
    return Intl.message(
      'Do you want to start a career in IT along with your education ?',
      name: 'work_opportunity_suggestion_title',
      desc: '',
      args: [],
    );
  }

  /// `Sesame university offers the possibility to get a job in IT company that will also be in charge of paying your yearly tuitions.`
  String get work_opportunity_suggestion_description {
    return Intl.message(
      'Sesame university offers the possibility to get a job in IT company that will also be in charge of paying your yearly tuitions.',
      name: 'work_opportunity_suggestion_description',
      desc: '',
      args: [],
    );
  }

  /// `Yes, i would like to learn more about it.`
  String get work_opportunity_suggestion_accepted {
    return Intl.message(
      'Yes, i would like to learn more about it.',
      name: 'work_opportunity_suggestion_accepted',
      desc: '',
      args: [],
    );
  }

  /// `No , i’m not interested`
  String get work_opportunity_suggestion_rejected {
    return Intl.message(
      'No , i’m not interested',
      name: 'work_opportunity_suggestion_rejected',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been submitted successfully ! you will receive a reply as soon as it gets reviewed !`
  String get enrollment_submit_result_success_message {
    return Intl.message(
      'Your request has been submitted successfully ! you will receive a reply as soon as it gets reviewed !',
      name: 'enrollment_submit_result_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Your request could not be submitted ! try again`
  String get enrollment_submit_result_error_unknown_message {
    return Intl.message(
      'Your request could not be submitted ! try again',
      name: 'enrollment_submit_result_error_unknown_message',
      desc: '',
      args: [],
    );
  }

  /// `Your candidacy has been rejected !`
  String get enrollment_submit_result_error_rejected_message {
    return Intl.message(
      'Your candidacy has been rejected !',
      name: 'enrollment_submit_result_error_rejected_message',
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

  /// `Privacy & Security policy`
  String get privacy_policy_label {
    return Intl.message(
      'Privacy & Security policy',
      name: 'privacy_policy_label',
      desc: '',
      args: [],
    );
  }

  /// `Terms of service`
  String get terms_of_service_label {
    return Intl.message(
      'Terms of service',
      name: 'terms_of_service_label',
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

  /// `required`
  String get required {
    return Intl.message(
      'required',
      name: 'required',
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

  /// `This field is required`
  String get form_error_message_required_field {
    return Intl.message(
      'This field is required',
      name: 'form_error_message_required_field',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get form_error_message_email_format {
    return Intl.message(
      'Invalid email format',
      name: 'form_error_message_email_format',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone format`
  String get form_error_message_phone_format {
    return Intl.message(
      'Invalid phone format',
      name: 'form_error_message_phone_format',
      desc: '',
      args: [],
    );
  }

  /// `Invalid name format`
  String get form_error_message_name_format {
    return Intl.message(
      'Invalid name format',
      name: 'form_error_message_name_format',
      desc: '',
      args: [],
    );
  }

  /// `Profile data not available !`
  String get error_profile_data_not_available_title {
    return Intl.message(
      'Profile data not available !',
      name: 'error_profile_data_not_available_title',
      desc: '',
      args: [],
    );
  }

  /// `Try logging-in again !`
  String get error_profile_data_not_available_message {
    return Intl.message(
      'Try logging-in again !',
      name: 'error_profile_data_not_available_message',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get profile_user {
    return Intl.message(
      'User',
      name: 'profile_user',
      desc: '',
      args: [],
    );
  }

  /// `Teacher`
  String get profile_teacher {
    return Intl.message(
      'Teacher',
      name: 'profile_teacher',
      desc: '',
      args: [],
    );
  }

  /// `Student`
  String get profile_student {
    return Intl.message(
      'Student',
      name: 'profile_student',
      desc: '',
      args: [],
    );
  }

  /// `Student`
  String get profile_professional_student {
    return Intl.message(
      'Student',
      name: 'profile_professional_student',
      desc: '',
      args: [],
    );
  }

  /// `My Sesame badge`
  String get profile_badge {
    return Intl.message(
      'My Sesame badge',
      name: 'profile_badge',
      desc: '',
      args: [],
    );
  }

  /// `Click to scan`
  String get badge_click_to_scan {
    return Intl.message(
      'Click to scan',
      name: 'badge_click_to_scan',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get badge_expired {
    return Intl.message(
      'Expired',
      name: 'badge_expired',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `for security reasons, When you reveal your badge, it will only be visible for 5s.`
  String get badge_usage_notice {
    return Intl.message(
      'for security reasons, When you reveal your badge, it will only be visible for 5s.',
      name: 'badge_usage_notice',
      desc: '',
      args: [],
    );
  }

  /// `Learn more about badge usage`
  String get badge_usage_learn_more {
    return Intl.message(
      'Learn more about badge usage',
      name: 'badge_usage_learn_more',
      desc: '',
      args: [],
    );
  }

  /// `What is the badge used for ?`
  String get badge_guideline_question {
    return Intl.message(
      'What is the badge used for ?',
      name: 'badge_guideline_question',
      desc: '',
      args: [],
    );
  }

  /// `Course`
  String get sessions_course {
    return Intl.message(
      'Course',
      name: 'sessions_course',
      desc: '',
      args: [],
    );
  }

  /// `Exam`
  String get sessions_exam {
    return Intl.message(
      'Exam',
      name: 'sessions_exam',
      desc: '',
      args: [],
    );
  }

  /// `Session`
  String get sessions_any {
    return Intl.message(
      'Session',
      name: 'sessions_any',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get sessions_all {
    return Intl.message(
      'All',
      name: 'sessions_all',
      desc: '',
      args: [],
    );
  }

  /// `Stay logged in`
  String get settings_stay_logged {
    return Intl.message(
      'Stay logged in',
      name: 'settings_stay_logged',
      desc: '',
      args: [],
    );
  }

  /// `Hide my work informations`
  String get settings_hide_my_data {
    return Intl.message(
      'Hide my work informations',
      name: 'settings_hide_my_data',
      desc: '',
      args: [],
    );
  }

  /// `Notify me about incoming events`
  String get settings_notify_me {
    return Intl.message(
      'Notify me about incoming events',
      name: 'settings_notify_me',
      desc: '',
      args: [],
    );
  }

  /// `My subscription`
  String get profile_subscription {
    return Intl.message(
      'My subscription',
      name: 'profile_subscription',
      desc: '',
      args: [],
    );
  }

  /// `My projects`
  String get profile_projects {
    return Intl.message(
      'My projects',
      name: 'profile_projects',
      desc: '',
      args: [],
    );
  }

  /// `My grades`
  String get profile_grades {
    return Intl.message(
      'My grades',
      name: 'profile_grades',
      desc: '',
      args: [],
    );
  }

  /// `My class`
  String get profile_classes {
    return Intl.message(
      'My class',
      name: 'profile_classes',
      desc: '',
      args: [],
    );
  }

  /// `Payment expected before {date}`
  String payment_subscription_expected_date(Object date) {
    return Intl.message(
      'Payment expected before $date',
      name: 'payment_subscription_expected_date',
      desc: '',
      args: [date],
    );
  }

  /// `Payment overdue !`
  String get payment_subscription_overdue {
    return Intl.message(
      'Payment overdue !',
      name: 'payment_subscription_overdue',
      desc: '',
      args: [],
    );
  }

  /// `Payment completed on {date}`
  String payment_subscription_completion_date(Object date) {
    return Intl.message(
      'Payment completed on $date',
      name: 'payment_subscription_completion_date',
      desc: '',
      args: [date],
    );
  }

  /// `Subscription period :`
  String get payment_subscription_period {
    return Intl.message(
      'Subscription period :',
      name: 'payment_subscription_period',
      desc: '',
      args: [],
    );
  }

  /// `Fee :`
  String get payment_fee {
    return Intl.message(
      'Fee :',
      name: 'payment_fee',
      desc: '',
      args: [],
    );
  }

  /// `Download payment receipt`
  String get payment_receipt_download {
    return Intl.message(
      'Download payment receipt',
      name: 'payment_receipt_download',
      desc: '',
      args: [],
    );
  }

  /// `View payment receipt`
  String get payment_receipt_view {
    return Intl.message(
      'View payment receipt',
      name: 'payment_receipt_view',
      desc: '',
      args: [],
    );
  }

  /// `Pay now`
  String get payment_pay_now_action {
    return Intl.message(
      'Pay now',
      name: 'payment_pay_now_action',
      desc: '',
      args: [],
    );
  }

  /// `Contact financial service`
  String get payment_overdue_action {
    return Intl.message(
      'Contact financial service',
      name: 'payment_overdue_action',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Select payment method : `
  String get payment_method_choice_title {
    return Intl.message(
      'Select payment method : ',
      name: 'payment_method_choice_title',
      desc: '',
      args: [],
    );
  }

  /// `ClickToPay`
  String get payment_method_clickToPay {
    return Intl.message(
      'ClickToPay',
      name: 'payment_method_clickToPay',
      desc: '',
      args: [],
    );
  }

  /// `Google/Apple pay`
  String get payment_method_googleOrApplePay {
    return Intl.message(
      'Google/Apple pay',
      name: 'payment_method_googleOrApplePay',
      desc: '',
      args: [],
    );
  }

  /// `Cach / Bank check`
  String get payment_method_cachOrBank {
    return Intl.message(
      'Cach / Bank check',
      name: 'payment_method_cachOrBank',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Card holder name`
  String get payment_card_holder_name {
    return Intl.message(
      'Card holder name',
      name: 'payment_card_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get payment_card_number {
    return Intl.message(
      'Card number',
      name: 'payment_card_number',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get payment_card_cvv {
    return Intl.message(
      'CVV',
      name: 'payment_card_cvv',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get payment_card_expiry_date {
    return Intl.message(
      'Expiry date',
      name: 'payment_card_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `XXX`
  String get payment_card_cvv_placeholder {
    return Intl.message(
      'XXX',
      name: 'payment_card_cvv_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `MM/YY`
  String get payment_card_expiry_date_placeholder {
    return Intl.message(
      'MM/YY',
      name: 'payment_card_expiry_date_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Ex : XXXX XXXX XXXX XXXX`
  String get payment_card_number_placeholder {
    return Intl.message(
      'Ex : XXXX XXXX XXXX XXXX',
      name: 'payment_card_number_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Credit card`
  String get payment_credit_card_label {
    return Intl.message(
      'Credit card',
      name: 'payment_credit_card_label',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card Network Not recognized`
  String get payment_card_invalid_type {
    return Intl.message(
      'Credit Card Network Not recognized',
      name: 'payment_card_invalid_type',
      desc: '',
      args: [],
    );
  }

  /// `required field !`
  String get payment_cc_input_required {
    return Intl.message(
      'required field !',
      name: 'payment_cc_input_required',
      desc: '',
      args: [],
    );
  }

  /// `invalid credit card number !`
  String get payment_cc_number_input_invalid {
    return Intl.message(
      'invalid credit card number !',
      name: 'payment_cc_number_input_invalid',
      desc: '',
      args: [],
    );
  }

  /// `invalid credit card CVV !`
  String get payment_cc_cvv_input_invalid {
    return Intl.message(
      'invalid credit card CVV !',
      name: 'payment_cc_cvv_input_invalid',
      desc: '',
      args: [],
    );
  }

  /// `invalid credit card expiry date !`
  String get payment_cc_expiry_input_invalid {
    return Intl.message(
      'invalid credit card expiry date !',
      name: 'payment_cc_expiry_input_invalid',
      desc: '',
      args: [],
    );
  }

  /// `invalid credit card holder name!`
  String get payment_cc_holder_name_input_invalid {
    return Intl.message(
      'invalid credit card holder name!',
      name: 'payment_cc_holder_name_input_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Payment status updated ! You will need to go to the university financial service office to validate your payment !`
  String get payment_cashOrCheck_result_message {
    return Intl.message(
      'Payment status updated ! You will need to go to the university financial service office to validate your payment !',
      name: 'payment_cashOrCheck_result_message',
      desc: '',
      args: [],
    );
  }

  /// `Payment completed ! your payment receipt will be ready as soon as possible !`
  String get payment_credit_card_result_message_success {
    return Intl.message(
      'Payment completed ! your payment receipt will be ready as soon as possible !',
      name: 'payment_credit_card_result_message_success',
      desc: '',
      args: [],
    );
  }

  /// `Payment failed ! check your credit card informations or contact your bank for more details !`
  String get payment_credit_card_result_message_error {
    return Intl.message(
      'Payment failed ! check your credit card informations or contact your bank for more details !',
      name: 'payment_credit_card_result_message_error',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to securely save or update your credit card details in your device ?`
  String get payment_credit_card_save_data_request {
    return Intl.message(
      'Would you like to securely save or update your credit card details in your device ?',
      name: 'payment_credit_card_save_data_request',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to securely load your credit card details from your device ?`
  String get payment_credit_card_load_data_request {
    return Intl.message(
      'Would you like to securely load your credit card details from your device ?',
      name: 'payment_credit_card_load_data_request',
      desc: '',
      args: [],
    );
  }

  /// `Transaction ID : {transid}`
  String payment_cashOrCheck_result_trans_id(Object transid) {
    return Intl.message(
      'Transaction ID : $transid',
      name: 'payment_cashOrCheck_result_trans_id',
      desc: '',
      args: [transid],
    );
  }

  /// `Transaction occured on {data} at {time}`
  String payment_cashOrCheck_result_datetime(Object data, Object time) {
    return Intl.message(
      'Transaction occured on $data at $time',
      name: 'payment_cashOrCheck_result_datetime',
      desc: '',
      args: [data, time],
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
