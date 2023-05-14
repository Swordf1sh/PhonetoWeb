import 'package:flutter/material.dart';
import 'package:phoneto_web/controllers/contact_form_controller.dart';
import 'package:phoneto_web/repositories/contact_form_api.dart';
import 'package:phoneto_web/ui/components/bottom_bar.dart';
import 'package:phoneto_web/ui/components/navigation_bar.dart';
import 'package:phoneto_web/routes/page_index.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/ui/components/snackbars.dart';

import '../constants/translation_keys.dart';
import '../controllers/validators/contact_form_validators.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final controller = Get.put(ContactFormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavigationBarWidget(
        currentPage: contactPageIndex,
      ),
      bottomSheet: const BottomMenu(),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Center(
            child: Row(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 3,
              child: Form(
                key: controller.formKey.value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      trContactHeader.tr,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.nameController.value,
                      validator: validateName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          label: Text(trContactName.tr),
                          icon: const Icon(Icons.person),
                          filled: true),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: controller.emailController.value,
                      validator: validateEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          label: Text(trContactEmail.tr),
                          icon: const Icon(Icons.email),
                          filled: true),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: controller.subjectController.value,
                      validator: validateSubject,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        label: Text(trContactSubject.tr),
                        icon: const Icon(Icons.subject),
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      minLines: 5,
                      maxLines: 10,
                      controller: controller.textController.value,
                      validator: validateText,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          label: Text(trContactText.tr),
                          icon: const Icon(Icons.text_fields),
                          filled: true),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton.icon(
                        onPressed: () {
                          if (controller.formKey.value.currentState!
                              .validate()) {
                            submitMessage().then((resp) => {
                                  controller.formKey.value.currentState!
                                      .reset(),
                                  resp.statusCode == 201
                                      ? showSuccessContactFormMessage()
                                      : showErrorContactFormMessage(201)
                                });
                          }
                        },
                        icon: const Icon(Icons.send),
                        label: Text(trContactSendButton.tr))
                  ],
                ),
              ),
            ),
            Expanded(flex: 1, child: Container()),
          ],
        )),
      ),
    );
  }
}
