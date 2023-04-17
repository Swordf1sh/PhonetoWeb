import 'package:phoneto_web/core/translations/translation_keys.dart'
    as translation;

class EN {
  Map<String, String> get translations => {
        translation.title: 'Phoneto - Shared Contacts',
        translation.homeButton: 'Home',
        translation.privacyButton: 'Privacy policy',
        translation.contactButton: 'Contact us',
        'contact_us': 'Contact form',
        'contact_name': 'Name',
        'contact_email': 'Email',
        'contact_subject': 'Subject',
        'contact_text': 'Text',
        'send_message': 'Send message',
        'sent_success_title': 'Message Sent',
        'sent_success_message':
            'Message sent succesfuly! We make action shortly'
      };
}
