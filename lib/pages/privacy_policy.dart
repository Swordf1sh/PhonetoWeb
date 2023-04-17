import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:phoneto_web/ui/components/navigation_bar.dart';
import 'package:phoneto_web/routes/page_index.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationBarWidget(currentPage: privacyPolicyPageIndex),
        body: Center(
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
                text: 'test', style: Theme.of(context).textTheme.bodySmall),
          ),
        ));
  }
}
