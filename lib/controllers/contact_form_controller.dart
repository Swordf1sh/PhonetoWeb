import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactFormController extends GetxController {
  final formKey = GlobalKey<FormState>().obs;

  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final subjectController = TextEditingController().obs;
  final textController = TextEditingController().obs;

  RxInt statusCode = 0.obs;

  String getName() => nameController.value.text;
  String getEmail() => emailController.value.text;
  String getSubject() => subjectController.value.text;
  String getText() => textController.value.text;

  setStatusCode(int responseCode) {
    statusCode.value = responseCode;
  }
}
