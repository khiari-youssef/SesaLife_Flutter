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
        "badge_click_to_scan":
            MessageLookupByLibrary.simpleMessage("Cliquer pour scanner"),
        "badge_expired": MessageLookupByLibrary.simpleMessage("Expiré"),
        "badge_guideline_question": MessageLookupByLibrary.simpleMessage(
            "Pourquoi utiliser le badge ?"),
        "badge_usage_learn_more": MessageLookupByLibrary.simpleMessage(
            "En savoir plus sur l\'usage de votre badge"),
        "badge_usage_notice": MessageLookupByLibrary.simpleMessage(
            "Pour des raisons de sécurité, votre badge n\'est visible que pour 5s."),
        "birthdate": MessageLookupByLibrary.simpleMessage("Date de naissance"),
        "calendar_title": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "device_auth_action": MessageLookupByLibrary.simpleMessage(
            "Cette action nécessite votre authentification"),
        "device_auth_unsupported": MessageLookupByLibrary.simpleMessage(
            "Votre appareil ne supporte pas une forte authentification biometrique ! ou bien vous ne l\'avez pas encore enregistré"),
        "diploma": MessageLookupByLibrary.simpleMessage("Diplôme"),
        "diploma_choice_title":
            MessageLookupByLibrary.simpleMessage("Choisissez votre diploma :"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enrollment_code_verification_notice": m1,
        "enrollment_notice_step1": MessageLookupByLibrary.simpleMessage(
            "Si l\'email que vous avez entré n\'est pas encore utilisé, on vous enverra un code OTP de ré-authentification pour procéder à l\'étape suivante."),
        "enrollment_submit_result_error_rejected_message":
            MessageLookupByLibrary.simpleMessage(
                "Votre demande de candidature a été rejeté !"),
        "enrollment_submit_result_error_unknown_message":
            MessageLookupByLibrary.simpleMessage(
                "La soumission de votre demande a échoué ! ré-essayer !"),
        "enrollment_submit_result_success_message":
            MessageLookupByLibrary.simpleMessage(
                "Votre demande de candidature a été soumise avec succés ! vous auriez une réponse le plut tot possible!"),
        "error_profile_data_not_available_message":
            MessageLookupByLibrary.simpleMessage("Essayez de vous reconnecter"),
        "error_profile_data_not_available_title":
            MessageLookupByLibrary.simpleMessage(
                "Vos données ne sont pas disponibles !"),
        "firstName": MessageLookupByLibrary.simpleMessage("Prénom"),
        "form_error_message_email_format":
            MessageLookupByLibrary.simpleMessage("Adresse email invalide !"),
        "form_error_message_name_format":
            MessageLookupByLibrary.simpleMessage("Nom invalide !"),
        "form_error_message_phone_format": MessageLookupByLibrary.simpleMessage(
            "Numéro de téléphone invalide !"),
        "form_error_message_required_field":
            MessageLookupByLibrary.simpleMessage("Ce champ est obligatoire !"),
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
        "note": MessageLookupByLibrary.simpleMessage("Remarque"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "phone": MessageLookupByLibrary.simpleMessage("Téléphone"),
        "privacy_policy_desc": MessageLookupByLibrary.simpleMessage(
            "Savoir plus sur la sécurité et l\'usage de mes données personnelles collectés par l\'application."),
        "privacy_policy_label": MessageLookupByLibrary.simpleMessage(
            "Régles & Politique de securité"),
        "profile_badge":
            MessageLookupByLibrary.simpleMessage("Mon badge Sesame"),
        "profile_professional_student":
            MessageLookupByLibrary.simpleMessage("Etudiant Alternant"),
        "profile_student": MessageLookupByLibrary.simpleMessage("Etudiant"),
        "profile_teacher": MessageLookupByLibrary.simpleMessage("Enseignant"),
        "profile_user": MessageLookupByLibrary.simpleMessage("Utilisateur"),
        "programs_desc": MessageLookupByLibrary.simpleMessage(
            "Renseignez-vous sur les différentes formations fournis par l\'université sésame."),
        "programs_label": MessageLookupByLibrary.simpleMessage("Programmes"),
        "quit": MessageLookupByLibrary.simpleMessage("Quitter"),
        "registration_desc": MessageLookupByLibrary.simpleMessage(
            "Remplir le formulaire d\'inscription avec vos données personnelles et votre choix de formation pour la candidature"),
        "registration_label":
            MessageLookupByLibrary.simpleMessage("Inscriptions"),
        "required": MessageLookupByLibrary.simpleMessage("obligatoire"),
        "sessions_all": MessageLookupByLibrary.simpleMessage("Tous"),
        "sessions_any": MessageLookupByLibrary.simpleMessage("Scéance"),
        "sessions_course": MessageLookupByLibrary.simpleMessage("Cours"),
        "sessions_exam": MessageLookupByLibrary.simpleMessage("Examens"),
        "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "settings_hide_my_data": MessageLookupByLibrary.simpleMessage(
            "Cacher mes données professionnelles"),
        "settings_notify_me": MessageLookupByLibrary.simpleMessage(
            "Je veux recevoir les notifications importantes"),
        "settings_stay_logged":
            MessageLookupByLibrary.simpleMessage("Je veux rester connecté"),
        "sex_female": MessageLookupByLibrary.simpleMessage("Femme"),
        "sex_male": MessageLookupByLibrary.simpleMessage("Homme"),
        "welcome_logo_description":
            MessageLookupByLibrary.simpleMessage("Student Life"),
        "welcome_logo_sesame_name":
            MessageLookupByLibrary.simpleMessage("SESAME"),
        "work_opportunity_suggestion_accepted":
            MessageLookupByLibrary.simpleMessage(
                "Oui, je veux en savoir plus."),
        "work_opportunity_suggestion_description":
            MessageLookupByLibrary.simpleMessage(
                "L\'université sésame vous offre la possiblité de travailler dans une entreprise prestigieuse qui prendra en charge les frais de la formation."),
        "work_opportunity_suggestion_rejected":
            MessageLookupByLibrary.simpleMessage(
                "Non, je ne suis pas intéréssé."),
        "work_opportunity_suggestion_title": MessageLookupByLibrary.simpleMessage(
            "Voulez-vous commencer votre carrière professionnelle en poursuivant une formation en alternance ?"),
        "yes": MessageLookupByLibrary.simpleMessage("Oui")
      };
}
