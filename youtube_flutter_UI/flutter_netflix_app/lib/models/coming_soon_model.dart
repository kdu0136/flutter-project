import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ComingSoon {
  final String name;
  final String imageUrl;
  final String titleImageUrl;
  final String videoUrl;
  final String description;
  final String comingSoonDate;

  const ComingSoon({
    @required this.name,
    @required this.imageUrl,
    @required this.titleImageUrl,
    this.videoUrl,
    @required this.description,
    @required this.comingSoonDate,
  });

  // It create an Content from JSON
  factory ComingSoon.fromJson(Map<String, dynamic> json) {
    return ComingSoon(
      name: json["name"],
      imageUrl: json["imageUrl"],
      titleImageUrl: json["titleImageUrl"],
      videoUrl: json["videoUrl"],
      description: json["description"],
      comingSoonDate: json["comingSoonDate"],
    );
  }

  @override
  String toString() =>
      "{\n\tname: $name,\n\timageUrl: $imageUrl\n\ttitleImageUrl: $titleImageUrl\n\tvideoUrl: $videoUrl\n\tdescription: $description\n\tcomingSoonDate: $comingSoonDate\n}";
}
