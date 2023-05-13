import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phoneto_web/ui/components/bottom_bar.dart';
import 'package:phoneto_web/ui/components/navigation_bar.dart';
import 'package:phoneto_web/routes/page_index.dart';
import 'package:get/get.dart';

import '../constants/translation_keys.dart';
import '../controllers/validators/contact_form_validators.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final _formKey = GlobalKey<FormState>();

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
            Expanded(
              flex: 3,
              child: Form(
                key: _formKey,
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
                          if (_formKey.currentState!.validate()) {
                            Get.snackbar(trContactSentSuccessTitle.tr,
                                trContactSentSuccessMessage.tr,
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.green,
                                icon: const Icon(Icons.check),
                                margin: const EdgeInsets.all(20));
                          }
                        },
                        icon: const Icon(Icons.send),
                        label: Text('send_message'.tr))
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
