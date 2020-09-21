import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Content {
  final String name;
  final String imageUrl;
  final String titleImageUrl;
  final String videoUrl;
  final String description;
  final Color color;

  const Content({
    @required this.name,
    @required this.imageUrl,
    this.titleImageUrl,
    this.videoUrl,
    this.description,
    this.color,
  });

  // It create an Content from JSON
  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      name: json["name"],
      imageUrl: json["imageUrl"],
      titleImageUrl: json["titleImageUrl"],
      videoUrl: json["videoUrl"],
      description: json["description"],
      color: json["color"],
    );
  }

  @override
  String toString() =>
      "{\n\tname: $name,\n\timageUrl: $imageUrl\n\ttitleImageUrl: $titleImageUrl\n\tvideoUrl: $videoUrl\n\tdescription: $description\n\tcolor: $color\n}";
}
