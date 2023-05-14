import 'package:phoneto_web/constants/translation_keys.dart';

class EN {
  Map<String, String> get translations => {
        trTitle: 'Phoneto - Shared Contacts',
        trNavHomeButton: 'Home',
        trNavPrivacyButton: 'Privacy policy',
        trNavContactButton: 'Contact us',
        trNavUnregisterButton: 'Unregister number',
        trContactHeader: 'Contact form',
        trContactName: 'Name',
        trContactEmail: 'Email',
        trContactSubject: 'Subject',
        trContactText: 'Text',
        trContactSendButton: 'Send message',
        trContactSentSuccessTitle: 'Message Sent',
        trContactSentSuccessMessage:
            'Message sent succesfuly! We make action shortly',
        trContactSentErrorTitle: 'Error occured!',
        trContactSentErrorMessage: 'Error CODE: ',
        trUnregisterHeadline: 'Remove number from the system',
        trUnregisterInfo:
            'To remove a number from the system, you need to specify your phone number, by pressing the button a one-time code will be sent to the indicated number',
        trUnregisterPhoneNumber: 'Phone number',
        trUnregisterSendOtp: 'Send code',
        trUnregisterSubmitOtp: 'Submit code',
        trUnregisterOtpCode: 'code',
        trUnregisterOtpInfo:
            'A one-time code will be sent as a message to the specified number, to confirm the owner of the number, enter the specified code in the field indicated below and press the button',
        trValidateEmptyName: 'Please fill name field',
        trValidateEmptyEmail: 'Please fill email field',
        trValidateInvalidEmail: 'Invalid Email format',
        trValidateEmptySubject: 'Please fill subject field',
        trValidateEmptyText: 'Please fill text field',
      };
}
