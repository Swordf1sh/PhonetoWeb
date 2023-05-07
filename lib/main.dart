import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/constants/firebase_options.dart';
import 'routes/routes.dart';
import 'package:phoneto_web/core/themes/theme.dart';
import 'package:phoneto_web/core/translations/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: PhonetoTranslations(),
      locale: const Locale('en', 'EN'),
      fallbackLocale: const Locale('en', 'EN'),
      title: 'Phoneto - Shared Contacts',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/home',
      getPages: appRoutes(),
    );
  }
}
