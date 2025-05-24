import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../models/service_tile_model.dart';
import '../../service_detail/service_detail_page.dart';

class ServiceTile extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String iconPath;

  const ServiceTile({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: GestureDetector(
        onTap: () {
          final service = ServiceTileModel(
            title: title,
            subtitle: description,
            bgImagePath: imagePath,
            iconPath: iconPath,
          );

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServiceDetailPage(service: service),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.1), BlendMode.dstATop),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                SvgPicture.asset(iconPath),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                SvgPicture.asset('assets/tile_images/arrow_icon.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
