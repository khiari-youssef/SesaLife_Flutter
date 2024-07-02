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

  static String m2(data, time) =>
      "La transaction a eu lieu le ${data} à ${time}";

  static String m3(transid) => "Numéro de transaction : ${transid}";

  static String m4(date) => "Paiement effectué le ${date}";

  static String m5(date) => "Paiement prévu avant le ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "assigned_classes":
            MessageLookupByLibrary.simpleMessage("Classes assignés"),
        "badge_click_to_scan":
            MessageLookupByLibrary.simpleMessage("Cliquer pour scanner"),
        "badge_expired": MessageLookupByLibrary.simpleMessage("Expiré"),
        "badge_guideline_question": MessageLookupByLibrary.simpleMessage(
            "Pourquoi utiliser le badge ?"),
        "badge_usage_notice": MessageLookupByLibrary.simpleMessage(
            "Ce badge représente votre identité, pour des raisons de sécurité, votre badge n\'est visible que pour 5s."),
        "birthdate": MessageLookupByLibrary.simpleMessage("Date de naissance"),
        "calendar_title": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "company": MessageLookupByLibrary.simpleMessage("entreprise"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "content": MessageLookupByLibrary.simpleMessage("Contenu"),
        "data_not_available":
            MessageLookupByLibrary.simpleMessage("Données indisponibles"),
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
        "go_back": MessageLookupByLibrary.simpleMessage("Retourner"),
        "guest_space": MessageLookupByLibrary.simpleMessage("Espace visiteur"),
        "identity_verification":
            MessageLookupByLibrary.simpleMessage("Vérification d\'identitée"),
        "job_role": MessageLookupByLibrary.simpleMessage("role"),
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
        "pay": MessageLookupByLibrary.simpleMessage("Payer"),
        "payment": MessageLookupByLibrary.simpleMessage("Paiement"),
        "payment_card_cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "payment_card_cvv_placeholder":
            MessageLookupByLibrary.simpleMessage("XXX"),
        "payment_card_expiry_date":
            MessageLookupByLibrary.simpleMessage("Date d\'exipration"),
        "payment_card_expiry_date_placeholder":
            MessageLookupByLibrary.simpleMessage("MM/YY"),
        "payment_card_holder_name":
            MessageLookupByLibrary.simpleMessage("Carte du proprietaire"),
        "payment_card_invalid_type": MessageLookupByLibrary.simpleMessage(
            "Carte de credit non reconnue"),
        "payment_card_number":
            MessageLookupByLibrary.simpleMessage("Numéro de carte"),
        "payment_card_number_placeholder":
            MessageLookupByLibrary.simpleMessage("Ex : XXXX XXXX XXXX XXXX"),
        "payment_cashOrCheck_result_datetime": m2,
        "payment_cashOrCheck_result_message": MessageLookupByLibrary.simpleMessage(
            "Vous devez vous rendre au service financière pour valider le paiement !"),
        "payment_cashOrCheck_result_trans_id": m3,
        "payment_cc_cvv_input_invalid":
            MessageLookupByLibrary.simpleMessage("ce code CVV est invalide !"),
        "payment_cc_expiry_input_invalid": MessageLookupByLibrary.simpleMessage(
            "cette date d\'expiration est invalide"),
        "payment_cc_holder_name_input_invalid":
            MessageLookupByLibrary.simpleMessage("Nom invalide !"),
        "payment_cc_input_required":
            MessageLookupByLibrary.simpleMessage("ce champ est requis!"),
        "payment_cc_number_input_invalid": MessageLookupByLibrary.simpleMessage(
            "ce numéro de carte de crédit est invalide !"),
        "payment_credit_card_label":
            MessageLookupByLibrary.simpleMessage("Carte bancaire"),
        "payment_credit_card_load_data_request":
            MessageLookupByLibrary.simpleMessage(
                "Voulez-vous utiliser les données existantes de votre carte bancaire en toute securité ?"),
        "payment_credit_card_result_message_error":
            MessageLookupByLibrary.simpleMessage(
                "Payment echoué ! vérifier les détails de votre carte de paiment ou bien contacter votre banque  !"),
        "payment_credit_card_result_message_success":
            MessageLookupByLibrary.simpleMessage(
                "Payment effecuté ! vous pouvez récupérer le reçu de paiement dés qu\'il sera  prêt !"),
        "payment_credit_card_save_data_request":
            MessageLookupByLibrary.simpleMessage(
                "Voulez-vous sauvegarder les données de votre carte bancaire localement en toute securité ?"),
        "payment_fee": MessageLookupByLibrary.simpleMessage("Frais :"),
        "payment_method_cachOrBank":
            MessageLookupByLibrary.simpleMessage("Espèce / Chèque bancaire"),
        "payment_method_choice_title": MessageLookupByLibrary.simpleMessage(
            "Choisissez un moyen de paiement : "),
        "payment_method_clickToPay":
            MessageLookupByLibrary.simpleMessage("ClickToPay"),
        "payment_method_googleOrApplePay":
            MessageLookupByLibrary.simpleMessage("Google/Apple pay"),
        "payment_pay_now_action":
            MessageLookupByLibrary.simpleMessage("Payer maintenant"),
        "payment_receipt_download": MessageLookupByLibrary.simpleMessage(
            "Télécharger le récu de paiement"),
        "payment_receipt_view":
            MessageLookupByLibrary.simpleMessage("Voir le reçu de paiement"),
        "payment_subscription_completion_date": m4,
        "payment_subscription_expected_date": m5,
        "payment_subscription_overdue":
            MessageLookupByLibrary.simpleMessage("Paiement en retard !"),
        "payment_subscription_period":
            MessageLookupByLibrary.simpleMessage("Période d\'abonnement :"),
        "phone": MessageLookupByLibrary.simpleMessage("Téléphone"),
        "privacy_policy_desc": MessageLookupByLibrary.simpleMessage(
            "Savoir plus sur la sécurité et l\'usage de mes données personnelles collectés par l\'application."),
        "privacy_policy_label": MessageLookupByLibrary.simpleMessage(
            "Politique de securité & confidentialité"),
        "profile_badge":
            MessageLookupByLibrary.simpleMessage("Mon badge Sesame"),
        "profile_classes": MessageLookupByLibrary.simpleMessage("Mes classes"),
        "profile_grades": MessageLookupByLibrary.simpleMessage("Mes notes"),
        "profile_professional_student":
            MessageLookupByLibrary.simpleMessage("Etudiant Alternant"),
        "profile_projects": MessageLookupByLibrary.simpleMessage("Mes projets"),
        "profile_student": MessageLookupByLibrary.simpleMessage("Etudiant"),
        "profile_subscription":
            MessageLookupByLibrary.simpleMessage("Mon abonnement"),
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
        "sesame_classes_groups":
            MessageLookupByLibrary.simpleMessage("Groupes"),
        "sesame_classes_search_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Rechercher des classes par nom ..."),
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
        "student_class": MessageLookupByLibrary.simpleMessage("classe"),
        "terms_of_service_label":
            MessageLookupByLibrary.simpleMessage("Termes d\'utilisation"),
        "user_profiles":
            MessageLookupByLibrary.simpleMessage("Profiles utilisateurs"),
        "users_search_no_result":
            MessageLookupByLibrary.simpleMessage("Pas de résultat !"),
        "users_search_placeholder": MessageLookupByLibrary.simpleMessage(
            "Rechercher des profiles par nom ..."),
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
