import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/constants/translation_keys.dart';

import 'copyright.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Copyright(),
            TextButton(
                onPressed: () {
                  Get.toNamed('/privacy_policy');
                },
                child: Text(trNavPrivacyButton.tr)),
            TextButton(
                onPressed: () {
                  Get.toNamed('/unregister');
                },
                child: Text(trNavUnregisterButton.tr)),
          ],
        ),
      ),
    );
  }
}
