import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 100.0, 20.0),
      child: Stack(children: [
        Text('Phoneto',
            style: GoogleFonts.robotoMono(
                fontSize: 28, color: Theme.of(context).colorScheme.primary))
      ]),
    );
  }
}
