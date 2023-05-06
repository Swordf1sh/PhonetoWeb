import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../routes/page_index.dart';
import '../ui/components/navigation_bar.dart';

class UnregisterPage extends StatefulWidget {
  const UnregisterPage({super.key});

  @override
  State<UnregisterPage> createState() => _UnregisterPageState();
}

class _UnregisterPageState extends State<UnregisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavigationBarWidget(currentPage: privacyPolicyPageIndex),
    );
  }
}
