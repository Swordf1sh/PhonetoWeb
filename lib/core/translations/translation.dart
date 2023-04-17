import 'package:get/get.dart';
import 'package:phoneto_web/core/translations/languages/en.dart';
import 'package:phoneto_web/core/translations/languages/ge.dart';

class PhonetoTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ka_GE': GE().translations,
        'en_EN': EN().translations,
      };
}
