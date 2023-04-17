import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/routes/page_index.dart';
import 'package:phoneto_web/core/translations/translation_keys.dart' as str;
import 'package:phoneto_web/core/themes/theme.dart';
import 'package:phoneto_web/controllers/navigation_controller.dart';

class NavigationBarWidget extends StatefulWidget
    implements PreferredSizeWidget {
  final int currentPage;
  const NavigationBarWidget({super.key, this.currentPage = 0});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    NavigationController controller = Get.put(NavigationController());

    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Expanded(
            child: Row(
          children: [
            TextButton.icon(
                onPressed: widget.currentPage != homePageIndex
                    ? () {
                        Get.toNamed('/home');
                      }
                    : null,
                icon: Icon(Icons.home),
                label: Text(str.homeButton.tr)),
            const SizedBox(
              width: 20,
            ),
            TextButton.icon(
                onPressed: widget.currentPage != privacyPolicyPageIndex
                    ? () {
                        Get.toNamed('/privacy_policy');
                      }
                    : null,
                icon: Icon(Icons.policy),
                label: Text(str.privacyButton.tr)),
            const SizedBox(
              width: 20,
            ),
            TextButton.icon(
                onPressed: widget.currentPage != contactPageIndex
                    ? () {
                        Get.toNamed('/contact_us');
                      }
                    : null,
                icon: Icon(Icons.contact_support),
                label: Text(str.contactButton.tr)),
            Expanded(child: Row()), // generate space between buttons
            IconButton(
              onPressed: () {
                Get.updateLocale(const Locale('ka', 'GE'));
              },
              icon: Image.asset('icons/flags/georgia-flag.png'),
              tooltip: 'Georgian',
            ),
            IconButton(
              onPressed: () {
                Get.updateLocale(const Locale('en', 'EN'));
              },
              icon: Image.asset('icons/flags/usa-flag.png'),
              tooltip: 'English',
            ),
            const SizedBox(
              width: 10,
            ),
            Obx(() => Switch(
                value: controller.themeModeStatus.value,
                onChanged: (val) {
                  controller.setThemeModeStatus(val);
                  Get.isDarkMode
                      ? Get.changeThemeMode(ThemeMode.light)
                      : Get.changeThemeMode(ThemeMode.dark);
                }))
          ],
        )),
      ),
    );
  }
}