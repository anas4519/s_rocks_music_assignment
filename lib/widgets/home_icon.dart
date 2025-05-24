import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeIcon extends StatelessWidget {
  final bool isSelected;
  const HomeIcon({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      SvgPicture.asset(
        'assets/icons/white_ellipse_icon.svg',
        colorFilter: ColorFilter.mode(
            isSelected ? Colors.white : Colors.transparent, BlendMode.srcIn),
      ),
      SizedBox(
        height: 8,
      ),
      Image.asset('assets/icons/home_icon.png'),
      SizedBox(
        height: 4,
      ),
      Text(
        'Home',
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
        ),
      )
    ]);
  }
}
