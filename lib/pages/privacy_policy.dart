import 'package:flutter/material.dart';
import 'package:phoneto_web/ui/components/navigation_bar.dart';
import 'package:phoneto_web/constants/page_index.dart';
import 'package:phoneto_web/ui/components/privacy.dart';

import '../ui/components/bottom_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NavigationBarWidget(currentPage: privacyPolicyPageIndex),
        bottomSheet: const BottomMenu(),
        body: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Center(
              child: Row(
            children: [
              Expanded(flex: 1, child: Container()),
              const Expanded(
                flex: 5,
                child: PrivacyPolicy(),
              ),
              Expanded(flex: 1, child: Container()),
            ],
          )),
        ));
  }
}
