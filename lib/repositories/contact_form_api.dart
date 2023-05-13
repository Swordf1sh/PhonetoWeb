import 'package:get/get.dart';
import 'package:phoneto_web/constants/api_config.dart';
import 'package:phoneto_web/repositories/data/models/contact_form_model.dart';
import '../controllers/contact_form_controller.dart';
import 'package:http/http.dart' as http;

Future<void> submitMessage() async {
  final controller = Get.put(ContactFormController());

  ContactFormModel contactFormModel = ContactFormModel(
      name: controller.getName(),
      email: controller.getEmail(),
      subject: controller.getSubject(),
      text: controller.getText());

  http.Response response = await http.post(
      Uri.http(apiBaseUrl, apiContactFormEndpoint),
      body: contactFormModel.toJson());

  controller.setStatusCode(response.statusCode);
}
