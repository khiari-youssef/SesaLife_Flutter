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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "calendar_title": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "guest_space": MessageLookupByLibrary.simpleMessage("Guest space"),
        "identity_verification":
            MessageLookupByLibrary.simpleMessage("Identity verification"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "my_personal_details":
            MessageLookupByLibrary.simpleMessage("My personal details"),
        "next_step": MessageLookupByLibrary.simpleMessage("Next step"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "privacy_policy_desc": MessageLookupByLibrary.simpleMessage(
            "Learn more about how the app uses and protects your personal data."),
        "privacy_policy_label":
            MessageLookupByLibrary.simpleMessage("Security policy"),
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
        "welcome_logo_description":
            MessageLookupByLibrary.simpleMessage("Student Life"),
        "welcome_logo_sesame_name":
            MessageLookupByLibrary.simpleMessage("SESAME"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
