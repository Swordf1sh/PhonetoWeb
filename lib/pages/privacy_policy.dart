import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:phoneto_web/ui/components/navigation_bar.dart';
import 'package:phoneto_web/routes/page_index.dart';
import 'package:phoneto_web/ui/components/privacy.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NavigationBarWidget(currentPage: privacyPolicyPageIndex),
        body: Center(
            child: Row(
          children: [
            Expanded(flex: 1, child: Container()),
            const Expanded(
              flex: 5,
              child: PrivacyPolicy(),
            ),
            Expanded(flex: 1, child: Container()),
          ],
        )));
  }
}
