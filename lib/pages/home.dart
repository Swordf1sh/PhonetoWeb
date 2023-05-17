import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phoneto_web/ui/components/navigation_bar.dart';
import 'package:phoneto_web/constants/page_index.dart';
import 'package:phoneto_web/constants/assets.gen.dart';

import '../ui/components/bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavigationBarWidget(currentPage: homePageIndex),
      bottomSheet: BottomMenu(),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: Assets.images.showcase.image(height: 700),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: Theme.of(context).highlightColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0))),
                      padding: const EdgeInsets.all(50),
                      child: Get.locale == const Locale('en', 'EN')
                          ? Assets.icons.googlePlayBadgeEn.image()
                          : Assets.icons.googlePlayBadgeGe.image()))
            ],
          ),
        ),
      ),
    );
  }
}
