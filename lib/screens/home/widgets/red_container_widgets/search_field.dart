import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  static const _iconSize = 20.0;
  static const _dividerWidth = 1.0;
  static const _spacingWidth = 4.0;
  static const _padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xFF2F2F39),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search "Punjabi Lyrics"',
            hintStyle: const TextStyle(color: Color(0xFF61616B), fontSize: 14),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(_padding),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                height: 15,
                width: 15,
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(_padding),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: _iconSize,
                    width: _dividerWidth,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: _spacingWidth),
                  const Icon(
                    Icons.mic,
                    color: Colors.white,
                    size: _iconSize,
                  ),
                ],
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
          ),
        ),
      ),
    );
  }
}
