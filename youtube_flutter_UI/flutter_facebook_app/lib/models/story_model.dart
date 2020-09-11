import 'package:flutter_facebook_app/models/user_model.dart';
import 'package:meta/meta.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;

  const Story({@required this.user, @required this.imageUrl, this.isViewed});

  // It create an Story from JSON
  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      user: User.fromJson(json["user"]),
      imageUrl: json["imageUrl"],
      isViewed: json["isViewed"] != null ? json["isViewed"] : false,
    );
  }
}
