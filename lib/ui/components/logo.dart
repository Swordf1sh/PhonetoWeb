import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 100.0, 20.0),
      child: Stack(
        children: [
          Text('Phoneto', style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 26.0,
          ))
          ]
        ),
    );
  }
}