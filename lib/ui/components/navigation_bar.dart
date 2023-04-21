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

    return AppBar(
      title: Text('test titll'),
    );
  }
}
