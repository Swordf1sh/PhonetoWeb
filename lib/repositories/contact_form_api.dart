import 'package:http/http.dart' as http;
import 'package:phoneto_web/constants/api_config.dart';
import 'package:phoneto_web/repositories/data/models/contact_form_model.dart';

class ContactFormApiService {
  static Future<dynamic> submitMessage(ContactFormModel contactModel) {
    return http.post(Uri.parse(apiBaseUrl + apiContactFormEndpoint),
        body: contactModel.toJson());
  }
}
