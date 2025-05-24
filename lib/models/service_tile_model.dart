import 'package:equatable/equatable.dart';

class ServiceTileModel extends Equatable {
  final String title;
  final String subtitle;
  final String bgImagePath;
  final String iconPath;

  const ServiceTileModel({
    required this.title,
    required this.subtitle,
    required this.bgImagePath,
    required this.iconPath,
  });

  factory ServiceTileModel.fromMap(Map<String, dynamic> map) {
    return ServiceTileModel(
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      bgImagePath: map['bg_image_path'] ?? 'assets/tile_images/tile_1.png',
      iconPath: map['icon_path'] ?? 'assets/tile_images/tile_icon_1.svg',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'bg_image_path': bgImagePath,
      'icon_path': iconPath,
    };
  }

  @override
  List<Object> get props => [title, subtitle, bgImagePath, iconPath];
}