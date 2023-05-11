import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown/markdown.dart';

import '../../constants/assets.gen.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString(Get.locale == const Locale('en', 'EN')
            ? Assets.privacy.privacyPolicyEn
            : Assets.privacy.privacyPolicyGe),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          return Markdown(
            data: snapshot.data.toString(),
          );
        });
  }
}
