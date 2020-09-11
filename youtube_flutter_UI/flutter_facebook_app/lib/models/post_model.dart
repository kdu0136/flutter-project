import 'package:flutter_facebook_app/models/user_model.dart';
import 'package:meta/meta.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  const Post({
    @required this.user,
    @required this.caption,
    @required this.timeAgo,
    @required this.imageUrl,
    @required this.likes,
    @required this.comments,
    @required this.shares,
  });

  // It create an Post from JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      user: User.fromJson(json["user"]),
      caption: json["caption"],
      imageUrl: json["imageUrl"],
      timeAgo: json["timeAgo"],
      likes: json["likes"],
      comments: json["comments"],
      shares: json["shares"],
    );
  }

  @override
  String toString() =>
      "{\n\tuser: $user,\n\tcaption: $caption\n\timageUrl: $imageUrl\n\ttimeAgo: $timeAgo\n\tlikes: $likes\n\tcomments: $comments\n\tshares: $shares\n}";
}
