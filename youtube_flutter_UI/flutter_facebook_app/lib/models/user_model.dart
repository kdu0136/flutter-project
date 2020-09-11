import 'package:meta/meta.dart';

class User {
  final String name;
  final String imageUrl;

  const User({@required this.name, @required this.imageUrl});

  // It create an User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      imageUrl: json["imageUrl"],
    );
  }

  @override
  String toString() => "{\n\tname: $name,\n\timageUrl: $imageUrl\n}";
}
