import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Claim your',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          'Free Demo',
          style: GoogleFonts.lobster(fontSize: 45, color: Colors.white),
        ),
        Text(
          'for custom Music Production',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}
