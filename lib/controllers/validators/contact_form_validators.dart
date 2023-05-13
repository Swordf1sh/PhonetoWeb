import 'package:get/get.dart';
import 'package:phoneto_web/constants/translation_keys.dart';

String? validateName(String? name) {
  // add some logics for validate name
  if (name == null || name.isEmpty) {
    return trValidateName.tr;
  }
  return null;
}

String? validateEmail(String? name) {
  // add some logics for validate name
  if (name == null || name.isEmpty) {
    return trValidateEmail.tr;
  }
  return null;
}

String? validateText(String? name) {
  // add some logics for validate name
  if (name == null || name.isEmpty) {
    return trValidateText.tr;
  }
  return null;
}
