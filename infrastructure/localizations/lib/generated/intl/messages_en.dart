// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(semester) => "Semester ${semester} timetable";

  static String m1(email) =>
      "An OTP code is sent via email to ${email} And will expire in 10 minutes";

  static String m2(date) => "Payment completed on ${date}";

  static String m3(date) => "Payment expected before ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badge_click_to_scan":
            MessageLookupByLibrary.simpleMessage("Click to scan"),
        "badge_expired": MessageLookupByLibrary.simpleMessage("Expired"),
        "badge_guideline_question": MessageLookupByLibrary.simpleMessage(
            "What is the badge used for ?"),
        "badge_usage_learn_more": MessageLookupByLibrary.simpleMessage(
            "Learn more about badge usage"),
        "badge_usage_notice": MessageLookupByLibrary.simpleMessage(
            "for security reasons, When you reveal your badge, it will only be visible for 5s."),
        "birthdate": MessageLookupByLibrary.simpleMessage("Birthdate"),
        "calendar_title": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "device_auth_action": MessageLookupByLibrary.simpleMessage(
            "This action requires authentication"),
        "device_auth_unsupported": MessageLookupByLibrary.simpleMessage(
            "Your device either does not have strong biometric authentication or you did not yet enroll one !"),
        "diploma": MessageLookupByLibrary.simpleMessage("Diploma"),
        "diploma_choice_title":
            MessageLookupByLibrary.simpleMessage("Choose your diploma :"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enrollment_code_verification_notice": m1,
        "enrollment_notice_step1": MessageLookupByLibrary.simpleMessage(
            "If the email you entered is not already registered, we will you send an OTP code for re-authentication in order to proceed to the next steps."),
        "enrollment_submit_result_error_rejected_message":
            MessageLookupByLibrary.simpleMessage(
                "Your candidacy has been rejected !"),
        "enrollment_submit_result_error_unknown_message":
            MessageLookupByLibrary.simpleMessage(
                "Your request could not be submitted ! try again"),
        "enrollment_submit_result_success_message":
            MessageLookupByLibrary.simpleMessage(
                "Your request has been submitted successfully ! you will receive a reply as soon as it gets reviewed !"),
        "error_profile_data_not_available_message":
            MessageLookupByLibrary.simpleMessage("Try logging-in again !"),
        "error_profile_data_not_available_title":
            MessageLookupByLibrary.simpleMessage(
                "Profile data not available !"),
        "firstName": MessageLookupByLibrary.simpleMessage("FirstName"),
        "form_error_message_email_format":
            MessageLookupByLibrary.simpleMessage("Invalid email format"),
        "form_error_message_name_format":
            MessageLookupByLibrary.simpleMessage("Invalid name format"),
        "form_error_message_phone_format":
            MessageLookupByLibrary.simpleMessage("Invalid phone format"),
        "form_error_message_required_field":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "guest_space": MessageLookupByLibrary.simpleMessage("Guest space"),
        "identity_verification":
            MessageLookupByLibrary.simpleMessage("Identity verification"),
        "lastName": MessageLookupByLibrary.simpleMessage("LastName"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "my_personal_details":
            MessageLookupByLibrary.simpleMessage("My personal details"),
        "mybadge": MessageLookupByLibrary.simpleMessage("My badge"),
        "myprofile": MessageLookupByLibrary.simpleMessage("My profile"),
        "next_step": MessageLookupByLibrary.simpleMessage("Next step"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "note": MessageLookupByLibrary.simpleMessage("Note"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "payment_fee": MessageLookupByLibrary.simpleMessage("Fee :"),
        "payment_method_cachOrBank":
            MessageLookupByLibrary.simpleMessage("Cach / Bank check"),
        "payment_method_choice_title":
            MessageLookupByLibrary.simpleMessage("Select payment method : "),
        "payment_method_clickToPay":
            MessageLookupByLibrary.simpleMessage("ClickToPay"),
        "payment_method_googleOrApplePay":
            MessageLookupByLibrary.simpleMessage("Google/Apple pay"),
        "payment_overdue_action":
            MessageLookupByLibrary.simpleMessage("Contact financial service"),
        "payment_pay_now_action":
            MessageLookupByLibrary.simpleMessage("Pay now"),
        "payment_receipt_download":
            MessageLookupByLibrary.simpleMessage("Download payment receipt"),
        "payment_receipt_view":
            MessageLookupByLibrary.simpleMessage("View payment receipt"),
        "payment_subscription_completion_date": m2,
        "payment_subscription_expected_date": m3,
        "payment_subscription_overdue":
            MessageLookupByLibrary.simpleMessage("Payment overdue !"),
        "payment_subscription_period":
            MessageLookupByLibrary.simpleMessage("Subscription period :"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "privacy_policy_desc": MessageLookupByLibrary.simpleMessage(
            "Learn more about how the app uses and protects your personal data."),
        "privacy_policy_label":
            MessageLookupByLibrary.simpleMessage("Rules & Security policy"),
        "profile_badge":
            MessageLookupByLibrary.simpleMessage("My Sesame badge"),
        "profile_classes": MessageLookupByLibrary.simpleMessage("My class"),
        "profile_grades": MessageLookupByLibrary.simpleMessage("My grades"),
        "profile_professional_student":
            MessageLookupByLibrary.simpleMessage("Student"),
        "profile_projects": MessageLookupByLibrary.simpleMessage("My projects"),
        "profile_student": MessageLookupByLibrary.simpleMessage("Student"),
        "profile_subscription":
            MessageLookupByLibrary.simpleMessage("My subscription"),
        "profile_teacher": MessageLookupByLibrary.simpleMessage("Teacher"),
        "profile_user": MessageLookupByLibrary.simpleMessage("User"),
        "program_selection":
            MessageLookupByLibrary.simpleMessage("Choose your program"),
        "programs_desc": MessageLookupByLibrary.simpleMessage(
            "Learn more about the different curriculums offered by sesame university and future opportunities."),
        "programs_label": MessageLookupByLibrary.simpleMessage("Programs"),
        "quit": MessageLookupByLibrary.simpleMessage("Quit"),
        "registration_desc": MessageLookupByLibrary.simpleMessage(
            "Fill the registration form with your personal data and your preferred program for candidacy."),
        "registration_label":
            MessageLookupByLibrary.simpleMessage("Registration"),
        "required": MessageLookupByLibrary.simpleMessage("required"),
        "sessions_all": MessageLookupByLibrary.simpleMessage("All"),
        "sessions_any": MessageLookupByLibrary.simpleMessage("Session"),
        "sessions_course": MessageLookupByLibrary.simpleMessage("Course"),
        "sessions_exam": MessageLookupByLibrary.simpleMessage("Exam"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "settings_hide_my_data":
            MessageLookupByLibrary.simpleMessage("Hide my work informations"),
        "settings_notify_me": MessageLookupByLibrary.simpleMessage(
            "Notify me about incoming events"),
        "settings_stay_logged":
            MessageLookupByLibrary.simpleMessage("Stay logged in"),
        "sex_female": MessageLookupByLibrary.simpleMessage("Female"),
        "sex_male": MessageLookupByLibrary.simpleMessage("Male"),
        "welcome_logo_description":
            MessageLookupByLibrary.simpleMessage("Student Life"),
        "welcome_logo_sesame_name":
            MessageLookupByLibrary.simpleMessage("SESAME"),
        "work_opportunity_suggestion_accepted":
            MessageLookupByLibrary.simpleMessage(
                "Yes, i would like to learn more about it."),
        "work_opportunity_suggestion_description":
            MessageLookupByLibrary.simpleMessage(
                "Sesame university offers the possibility to get a job in IT company that will also be in charge of paying your yearly tuitions."),
        "work_opportunity_suggestion_rejected":
            MessageLookupByLibrary.simpleMessage("No , i’m not interested"),
        "work_opportunity_suggestion_title": MessageLookupByLibrary.simpleMessage(
            "Do you want to start a career in IT along with your education ?"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
