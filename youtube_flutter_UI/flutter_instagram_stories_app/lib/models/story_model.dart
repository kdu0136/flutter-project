import 'package:flutter/material.dart';
import 'package:flutter_instagram_stories_app/models/user_model.dart';

enum MediaType {
  image,
  video,
}

class Story {
  final String url;
  final MediaType media;
  final Duration duration;
  final User user;

  const Story(
      {@required this.url,
      @required this.media,
      @required this.duration,
      @required this.user});

  // It create an Story from JSON
  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      url: json["url"],
      media: json["media"] == MediaType.image.toString().split(".").last
          ? MediaType.image
          : MediaType.video,
      duration: Duration(seconds: json["duration"]),
      user: User.fromJson(json["user"]),
    );
  }

  @override
  String toString() {
    return "{url: $url, media: $media, duration: $duration, user: $user}";
  }
}
