import 'package:flutter/material.dart';
import 'package:phoneto_web/ui/components/navigation_bar.dart';
import 'package:phoneto_web/routes/page_index.dart';
import 'package:phoneto_web/constants/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationBarWidget(currentPage: homePageIndex),
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(child: Assets.images.frontpage.image(height: 700), ),
            Positioned(
              child: Container(
              padding: const EdgeInsets.all(50),
              child: Assets.icons.getGooglePlay.image())
              )
          ],
        ),
      ),
    );
  }
}
