import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/routes/page_index.dart';
import 'package:phoneto_web/constants/translation_keys.dart';
import 'package:phoneto_web/controllers/navigation_controller.dart';
import 'package:phoneto_web/constants/assets.gen.dart';
import 'logo.dart';

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
    NavigationController controller = Get.put(NavigationController());

    return PreferredSize(
      preferredSize: const Size.fromHeight(120),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration:
              BoxDecoration(color: Theme.of(context).secondaryHeaderColor),
          child: Row(
            children: [
              const LogoHeader(),
              TextButton.icon(
                  onPressed: widget.currentPage != homePageIndex
                      ? () {
                          Get.toNamed('/home');
                        }
                      : null,
                  icon: const Icon(Icons.home),
                  label: Text(trNavHomeButton.tr)),
              const SizedBox(
                width: 20,
              ),
              TextButton.icon(
                  onPressed: widget.currentPage != contactPageIndex
                      ? () {
                          Get.toNamed('/contact_us');
                        }
                      : null,
                  icon: const Icon(Icons.contact_support),
                  label: Text(trNavContactButton.tr)),
              const Expanded(child: Row()), // generate space between buttons
              IconButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ka', 'GE'));
                },
                icon: Assets.icons.flags.georgiaFlag.image(),
                tooltip: 'Georgian',
              ),
              IconButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'EN'));
                },
                icon: Assets.icons.flags.usaFlag.image(),
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
          ),
        ),
      ),
    );
  }
}
