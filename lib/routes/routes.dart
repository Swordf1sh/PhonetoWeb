import 'package:get/get.dart';
import 'package:phoneto_web/pages/contact_us.dart';
import 'package:phoneto_web/pages/home.dart';
import 'package:phoneto_web/pages/privacy_policy.dart';

appRoutes() => [
      GetPage(
          name: '/home',
          page: () => const HomeScreen(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(seconds: 1)),
      GetPage(
          name: '/privacy_policy',
          page: () => const PrivacyPolicyScreen(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(seconds: 1)),
      GetPage(
          name: '/contact_us',
          page: () => const ContactUsPage(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(seconds: 1))
    ];
