import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String path;
  const SvgIcon(
      {super.key,
      required this.isSelected,
      required this.title,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/white_ellipse_icon.svg',
          colorFilter: ColorFilter.mode(
              isSelected ? Colors.white : Colors.transparent, BlendMode.srcIn),
        ),
        SizedBox(
          height: 8,
        ),
        SvgPicture.asset(
          path,
          colorFilter: ColorFilter.mode(
              isSelected ? Colors.white : Colors.grey, BlendMode.srcIn),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
          ),
        )
      ],
    );
  }
}
