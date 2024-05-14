// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(semester) => "Calendrier du semestre ${semester}";

  static String m1(email) =>
      "Un code OTP sera envoyé à ${email} et sera expiré dans 10 minutes";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "calendar_title": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enrollment_code_verification_notice": m1,
        "enrollment_notice_step1": MessageLookupByLibrary.simpleMessage(
            "Si l\'email que vous avez entré n\'est pas encore utilisé, on vous enverra un code OTP de ré-authentification pour procéder à l\'étape suivante."),
        "firstName": MessageLookupByLibrary.simpleMessage("Prénom"),
        "guest_space": MessageLookupByLibrary.simpleMessage("Espace visiteur"),
        "identity_verification":
            MessageLookupByLibrary.simpleMessage("Vérification d\'identitée"),
        "lastName": MessageLookupByLibrary.simpleMessage("Nom"),
        "login": MessageLookupByLibrary.simpleMessage("Se connecter"),
        "logout": MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "my_personal_details":
            MessageLookupByLibrary.simpleMessage("Mes données personnelles"),
        "mybadge": MessageLookupByLibrary.simpleMessage("Mon badge"),
        "myprofile": MessageLookupByLibrary.simpleMessage("Mon profile"),
        "no": MessageLookupByLibrary.simpleMessage("Non"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "phone": MessageLookupByLibrary.simpleMessage("Téléphone"),
        "privacy_policy_desc": MessageLookupByLibrary.simpleMessage(
            "Savoir plus sur la sécurité et l\'usage de mes données personnelles collectés par l\'application."),
        "privacy_policy_label": MessageLookupByLibrary.simpleMessage(
            "Régles & Politique de securité"),
        "programs_desc": MessageLookupByLibrary.simpleMessage(
            "Renseignez-vous sur les différentes formations fournis par l\'université sésame."),
        "programs_label": MessageLookupByLibrary.simpleMessage("Programmes"),
        "quit": MessageLookupByLibrary.simpleMessage("Quitter"),
        "registration_desc": MessageLookupByLibrary.simpleMessage(
            "Remplir le formulaire d\'inscription avec vos données personnelles et votre choix de formation pour la candidature"),
        "registration_label":
            MessageLookupByLibrary.simpleMessage("Inscriptions"),
        "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "welcome_logo_description":
            MessageLookupByLibrary.simpleMessage("Student Life"),
        "welcome_logo_sesame_name":
            MessageLookupByLibrary.simpleMessage("SESAME"),
        "yes": MessageLookupByLibrary.simpleMessage("Oui")
      };
}
