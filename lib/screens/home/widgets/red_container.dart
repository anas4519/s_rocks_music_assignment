import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:s_rocks_music_assignment/screens/home/widgets/red_container_widgets/book_now_button.dart';
import 'package:s_rocks_music_assignment/screens/home/widgets/red_container_widgets/hero_section.dart';
import 'package:s_rocks_music_assignment/screens/home/widgets/red_container_widgets/search_field.dart';

class RedContainer extends StatelessWidget {
  const RedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFA90140), Color(0xFF550120)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -30,
            top: screenHeight * 0.25,
            child: SvgPicture.asset(
              'assets/graphics/vinyl_disc.svg',
            ),
          ),

          Positioned(
            right: -40,
            top: screenHeight * 0.25,
            child: Transform.rotate(
              angle: 0.01,
              child: SvgPicture.asset(
                'assets/graphics/piano.svg',
              ),
            ),
          ),

          // Main Content
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SearchField(),
                      SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/avatar_icon.svg'),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  HeroSection(),
                  SizedBox(height: screenHeight * 0.025),
                  BookNowButton(),
                  SizedBox(height: screenHeight * 0.05),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
