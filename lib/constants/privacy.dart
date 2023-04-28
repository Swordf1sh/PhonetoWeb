import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(children: [
        TextSpan(
            text: 'data_gathering_headline'.tr,
            style: Theme.of(context).textTheme.headlineSmall),
        TextSpan(text: 'colecting data'),
        TextSpan(
            text: 'asd'
                'asd'
                'asd')
      ]),
    );
  }
}
