import 'package:get/get.dart';
import 'package:phoneto_web/constants/translation_keys.dart';

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

String? validateName(String? name) {
  // add some logics for validate name
  if (name == null || name.isEmpty) {
    return trValidateEmptyName.tr;
  }
  return null;
}

String? validateEmail(String? name) {
  // add some logics for validate name
  if (name == null || name.isEmpty) {
    return trValidateEmptyEmail.tr;
  } else if (!name.isEmail) {
    return trValidateInvalidEmail.tr;
  }
  return null;
}

String? validateSubject(String? name) {
  // add some logics for validate name
  if (name == null || name.isEmpty) {
    return trValidateEmptyEmail.tr;
  }
  return null;
}

String? validateText(String? name) {
  // add some logics for validate name
  if (name == null || name.isEmpty) {
    return trValidateEmptyText.tr;
  }
  return null;
}
